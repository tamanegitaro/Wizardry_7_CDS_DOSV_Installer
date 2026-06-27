■Wizardry7sample.exeを自作する方法について
MSYS2 MINGW64をインストールします。
https://www.msys2.org/
英語ですが頑張ってください。

以下のコマンドをMSYS2 MINGW64で実行してビルド
例えばフォルダパスがC:\DOSBox-X\Wizardry7_Setup\Wizardry7exeの場合
cd "/C/DOSBox-X/Wizardry7_Setup/Wizardry7exe"
windres Wizardry7sample.rc -O coff -o Wizardry7sample.res
gcc Wizardry7sample.c Wizardry7sample.res -o Wizardry7sample.exe -mwindows
Wizardry7sample.exeができるのでStart_Wizardry7.batと置き換えて利用できます。

■.icoファイルの置き換えについて
筆者はSteam版のWizardry7を購入済みなので、
Steam用Wizardry7のアイコンを利用しました。
ゲームをインストールすると以下のフォルダに
Wizardry7のアイコンが格納されています。
C:\Program Files (x86)\Steam\steam\games
これをwizardry7sample.icoに名前を変更して利用しています。

■Wizardry7.ico について
本ソフトウェアではサンプル用に、Red Orb Alphabet Icons の「Number 7」アイコンを使用しています。
作者: IconArchive
配布元: https://icon-icons.com/ja/icon/number-7/34776
ライセンス: Creative Commons Attribution 4.0 International (CC BY 4.0)
ライセンスURL: https://creativecommons.org/licenses/by/4.0/

変更点:
アイコンファイル名を「Wizardry7sample.ico」に変更し、「Wizardry7sample.exe」のアプリケーションアイコンとして埋め込みました。

本ソフトウェアは、元作者による公認・推奨を受けたものではありません。

This is an unofficial icon file and is not affiliated with or endorsed by the
rights holders of Wizardry VII.

■Windows 11のアイコンキャッシュについて
Windows 11では、表示を高速化するためにアイコンがキャッシュされます。
そのため、Wizardry7.exeのアイコンを変更しても、エクスプローラー上では古いアイコンが表示され続ける場合があります。
プロパティ画面では新しいアイコンが表示されているのに、
フォルダ上では古いアイコンのまま見える場合は、Windows 11のアイコンキャッシュが原因の可能性があり、
キャッシュを消去する必要があります。
また、Wizardry7sample.exeを別名でコピーすると、正しいアイコンで表示される場合があります。
その場合、EXEのアイコン変更は成功しており、表示だけが古いキャッシュの影響を受けています。
