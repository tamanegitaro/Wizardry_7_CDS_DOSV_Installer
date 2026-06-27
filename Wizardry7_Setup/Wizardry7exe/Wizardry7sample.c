#include <windows.h>
#include <string.h>

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow)
{
    char exePath[MAX_PATH];
    char workDir[MAX_PATH];

    GetModuleFileNameA(NULL, exePath, MAX_PATH);

    char *lastSlash = strrchr(exePath, '\\');
    if (lastSlash) {
        *lastSlash = '\0';
        lstrcpyA(workDir, exePath);
    } else {
        lstrcpyA(workDir, ".");
    }

    char command[MAX_PATH * 3];

    wsprintfA(
        command,
        "\"%s\\DOSBox-X\\dosbox-x.exe\" -conf \"%s\\Config\\dosbox-x_wiz7.conf\"",
        workDir,
        workDir
    );

    STARTUPINFOA si;
    PROCESS_INFORMATION pi;

    ZeroMemory(&si, sizeof(si));
    si.cb = sizeof(si);
    ZeroMemory(&pi, sizeof(pi));

    if (!CreateProcessA(
        NULL,
        command,
        NULL,
        NULL,
        FALSE,
        0,
        NULL,
        workDir,
        &si,
        &pi
    )) {
        MessageBoxA(
            NULL,
            "Failed to start DOSBox-X.\nPlease check DosBox-X folder and config files.",
            "Wizardry 7 Launcher",
            MB_ICONERROR
        );
        return 1;
    }

    CloseHandle(pi.hProcess);
    CloseHandle(pi.hThread);

    return 0;
}
