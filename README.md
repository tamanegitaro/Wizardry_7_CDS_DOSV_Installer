# Windows 11でWizardry 7: Crusaders of the Dark Savant DOS/V版(256色)が遊べるキット

## ■はじめに

このキットは、**Wizardry 7: Crusaders of the Dark Savant DOS/V版**を、<br>
Windows 11の環境で簡単にインストールして遊べるようにするためのセットアップキットです。<br>

本キットには<br>
・ゲーム本体は含まれません。<br>

Wizardry 7 CDS DOS/V版のフロッピーディスクA・フロッピーディスクBをイメージ化し、<br>
キットの中に配置するだけで、インストールから起動環境の作成まで簡単に行えます。<br>
IBM DOS、MS-DOSなどの外部DOSは不要です。Pentium対応パッチも必要ありません。<br>
DOSBox-X 2026.06.02もキットの中に含まれています。<br>

最終的には、以下の動画の通り、<br>
Windows 11対応ゲームのようにWizardry7.exeを<br>
ダブルクリックするだけで起動できる環境を目指します。<br>
※動画では、利便性向上のためクイズ入力を簡略化した環境を使用していますが、<br>
その方法はキットには含まれないのでご注意ください。<br>

https://github.com/user-attachments/assets/7a45c42f-b920-4728-86e0-26e29420ff9f


ゲームはフルスクリーンで起動します。<br>
ゲーム内で **QUIT GAME** を選択すると、DOSBox-X自体も終了するようにしています。<br>
動画内で早送りしていますが、早送りも自由に行えるのでテンポよくゲームで遊べます。<br>

本キットでは、Gameフォルダ内にWizardry7 CDSのファイル全てが保存されます。<br>
そのため、セーブデータのバックアップやWizardry 6/8との連携が簡単です。<br>

## ■用意するもの
### ●Wizardry 7 CDS DOS/V版 フロッピーディスク2枚
あらかじめ以下のファイル名でイメージ化しておきます。<br>
wiz7A.img<br>
wiz7B.img<br>
<img width="518" height="244" alt="image" src="https://github.com/user-attachments/assets/f7b2d61d-7cdc-4c8f-a27f-7c6a09c3c58d" />

### ●USBフロッピーディスクドライブ
古いものでも、メーカー製のドライブがおすすめです。<br>
am〇zonなどで売っている新品の無メーカーのドライブでは、<br>
イメージ化や書き込みの途中でエラーが出るものが多いです。<br>

### ●Rawwritewin 0.9.0
https://github.com/emeric-martineau/rawwritewin<br>
フロッピーディスクをイメージ化したり、書き込んだりするソフトウェアです。<br>
要するに、フロッピーディスクを丸ごと読み出して、1つのimgファイルとして保存してくれます。<br>
右側のRelease 0.9.0をクリックして、rawwritewin-0.9.exeをダウンロードします。<br>
パソコンにUSBフロッピーディスクドライブを接続し、ディスクを入れます。<br>
その後、rawwritewinを右クリックして「管理者として実行」で起動します。<br>
Driveの項目でフロッピードライブを選びます。<br>
Createタブを開き、Image fileを指定します。<br>
Createボタンを押すと、フロッピーが読み出され、imgファイルとして保存されます。<br>
<img width="271" height="321" alt="image" src="https://github.com/user-attachments/assets/22f256da-f957-4d6b-8c13-ca0e520ea9dd" />

### ●環境構築キット
Wizardry7_Setup_kit.zip<br>
ここからダウンロードできます。<br>

https://github.com/user-attachments/files/29434227/Wizardry_7_CDS_DOSV_Installer-main.zip

## ■セットアップ手順
Wizardry7_Setup_kit.zipを解凍します。<br>
その中に、各ファイルを以下のように配置します。<br>

### ●配置するもの
wiz7A.img<br>
wiz7B.img<br>

これで準備は完了です。<br>
<img width="521" height="347" alt="image" src="https://github.com/user-attachments/assets/06696996-01c7-4ca4-a26f-37eb6a9eb6d2" />

## ■Wizardry 7: CDSのインストール
この動画の流れでインストールを行います。<br>
1:15の時点でインストールが完了して、そのあとはオープニングを流しています。<br>
あと、動画内ではStart_Wizardry7.batを自作したWizardry7.exeに置き換えています。<br>
その作り方もあとで説明します。<br>

https://github.com/user-attachments/assets/e28eb8b2-b2f0-4755-b153-d11bc2c1483c


1_Install_Wizardry7.batを実行します<br>
<img width="526" height="368" alt="image" src="https://github.com/user-attachments/assets/1521ac84-e602-4262-9f9b-15535037d3bb" />


DOSBox-Xが起動し、インストールが開始されます。<br>
<img width="322" height="279" alt="image" src="https://github.com/user-attachments/assets/fe80ac84-4de6-45b8-8e13-05eeec905017" />


インストール先のフォルダ構成は、デフォルトのままで問題ありません。<br>
確認画面が表示されたら、Yを押して続行してください。<br>
<img width="322" height="279" alt="image" src="https://github.com/user-attachments/assets/3d493bc7-ef68-45b2-83a7-fca6fa5a6035" />


インストール中に、フロッピーディスクの入れ替えを求められます。<br>
この環境では、あらかじめディスクAとディスクBのイメージがDOSBox-Xに登録されています。<br>
画面上部のメニューから以下を選択すると、ディスクを切り替えられます。<br>
DOS → Swap floppy drive<br>
ディスクを切り替えたら、Enterキーを押して続行します。<br>
<img width="322" height="279" alt="image" src="https://github.com/user-attachments/assets/26361007-5100-44b0-97fe-5c7a82ab276a" />


インストールが完了したら、そのままEnterキーを押して続行します。<br>
<img width="322" height="279" alt="image" src="https://github.com/user-attachments/assets/35a4a98b-dcb9-403d-9ca9-cbe186dfc564" />


その後、何度かEnterキーを押して以下の画面になるまで進めます。<br>
Wizardry CDS ユーティリティ画面ですが、<br>
この画面で「7」を押して、シナリオヘッダーの書き換えを行います。<br>
<img width="322" height="279" alt="image" src="https://github.com/user-attachments/assets/01a81563-2bb2-486d-b384-6a9184408f49" />


Enterキーを押すとシナリオヘッダーが書き換えられて終了します。<br>
<img width="322" height="279" alt="image" src="https://github.com/user-attachments/assets/d70c1eaa-d5a2-49b4-aabc-78411019d8e0" />


シナリオヘッダーの書き換えが終わり、ユーティリティ画面に戻ったら、<br>
「5」を押してDOSへ戻るとDOSBox-Xが自動で終了します。<br>
<img width="322" height="279" alt="image" src="https://github.com/user-attachments/assets/b1a695ca-adaf-4954-83b3-aef1e378d275" />


次に、2_Patch_Wizardry7.batを実行します。<br>
<img width="570" height="367" alt="image" src="https://github.com/user-attachments/assets/f2eb8c94-42ef-4299-9eae-6687f3ff43c6" />


自動でWIZARDRY.BATにパッチが当たります。<br>
処理が終わったら、何かキーを押して終了します。<br>
このパッチでは、以下のような調整を行っています。<br>

●起動時の余計な表示を減らす<br>
●ゲーム終了時にDOSBox-Xも終了するように調整<br>

以上でインストールは完了したので<br>
続いてゲームの設定を行います。<br>

## ■DOSBox-Xの操作について
今回のDOSBox-X環境では、操作を少し変更しています。<br>

●ゲーム中にALT + F4でDOSBox-Xを終了します。<br>
●ゲーム中にALT + ENTERでフルスクリーン・ウィンドウの切り替えができます。<br>
●マウスが画面内にロックされた場合は、Ctrlを押しながらAltを押すと解除できます。<br>
●ゲーム中にALT + tで早送りの開始・終了ができます。<br>
●ゲーム中にALT + Sでステートセーブができます。(どこでもセーブ)<br>
●ゲーム中にALT + zでステートロードができます。(どこでもロード)<br>

この6つは覚えておくと便利です。<br>

## ■初回起動と音源設定
Start_Wizardry7.batを実行すると、ゲームが起動します。<br>
ただし、初回起動時点では音が鳴りません。<br>
まずはEscキーを押して、メニュー画面まで進みます。<br>
<img width="322" height="279" alt="image" src="https://github.com/user-attachments/assets/3ee01861-a224-44b2-844c-1a1b7d7de724" />


メニューからCONFIGURATIONを開きます。<br>
<img width="322" height="279" alt="image" src="https://github.com/user-attachments/assets/ad29c680-aba3-4336-b0ed-0431aece0e8c" />


CONFIGURATION画面で、EFFECTSとMUSICを何度か押して、両方ともSOUND BLASTERに切り替えます。<br>
INPUT DEVICEは、お好みに合わせてKEYBOARDまたはMOUSEに切り替えてください。<br>
<img width="322" height="279" alt="image" src="https://github.com/user-attachments/assets/cbe12a49-7274-4bb5-824d-9302c0ed86e0" />


設定が終わったら、SAVEを押して保存するとDOSBox-Xが終了します。<br>

これでセットアップは終了です。<br>
その後、Start_Wizardry7.batを再度実行します。<br>
ここまでのセットアップが順調なら、ゲームが起動し、BGMが鳴るはずです。<br>
これで完成です。お疲れさまでした。<br>

## ■Wizardry7.exeで起動する場合
Start_Wizardry7.batと同じような動作をするWizardry7.exeを作成すると、まるで製品のように起動できます。<br>
Wizardry7.exeの作り方は、Wizardry7exeフォルダ内のReadme.txtを参照してください。<br>
筆者の環境では、Start_Wizardry7.batをWizardry7.exeに置き換えています。<br>

## ■不要になったファイル
インストールと設定が完了した後は、以下のファイルやフォルダは削除できます。<br>
Wizardry7exeフォルダ<br>
Config_Installフォルダ<br>
Install_Wizardry7.bat<br>
1_Install_Wizardry7.bat<br>
2_Patch_Wizardry7.bat<br>
wiz7A.img<br>
wiz7B.img<br>
最終的には、以下のような最小構成になります。<br>
<img width="305" height="202" alt="image" src="https://github.com/user-attachments/assets/9c089fa9-31e4-4213-9a2d-6df35f9cbff1" />


最後に、フォルダ全体をZIPなどで圧縮してバックアップを作成しておきましょう。<br>
<img width="322" height="279" alt="image" src="https://github.com/user-attachments/assets/60ff7021-4992-43a2-9777-504175b894e5" />

<img width="322" height="279" alt="image" src="https://github.com/user-attachments/assets/ec8f56d5-7100-454d-b3ea-a8893d9e0258" />




## ■日本語入力方法
テキストボックスに文字を入力する場面では、日本語入力も利用できます。<br>
まず、文字入力画面を開きます。<br>
<img width="325" height="277" alt="image" src="https://github.com/user-attachments/assets/2b2de3eb-f86f-4585-818e-4e1c0d0954f6" />


そのまま文字を入力すると、英数字で入力されます。<br>
<img width="322" height="279" alt="image" src="https://github.com/user-attachments/assets/bd6f233f-a37d-438c-80db-9ee2f2fb5a6e" />


日本語入力をONにするには、半角／全角キーを押します。<br>
日本語入力がONの状態で、たとえば「じるべーる」と入力すると、画面左上に入力中の文字が表示されます。<br>
<img width="325" height="276" alt="image" src="https://github.com/user-attachments/assets/588491e0-5d9b-42b5-9afe-06adf1b965e0" />


ここでF8キーを押すと、半角カタカナに変換されます。<br>
じるべーる<br>
↓ F8キー<br>
ｼﾞﾙﾍﾞｰﾙ<br>
<img width="322" height="279" alt="image" src="https://github.com/user-attachments/assets/0a70d2cc-8290-4a05-b15e-45403631ab74" />


この状態でEnterキーを押すと、ゲーム内に反映されます。<br>
<img width="322" height="279" alt="image" src="https://github.com/user-attachments/assets/bca73999-f801-4fdd-af28-d3ce9b0d006a" />


日本語入力がONのままだと、ゲーム操作に支障が出る場合があります。<br>
入力が終わったら、再度半角／全角キーを押して日本語入力をOFFにしてください。<br>

## ■Wizardry 7のセーブデータ
デフォルトでは、セーブデータは以下のフォルダに保存されます。<br>
Game\DSAVANTV<br>
Wizardry 8との連携に必要なデータも、このフォルダの中に生成されます。<br>

## ■Wizardry 6との連携
Wizardry 6のセーブデータを引き継ぐ場合は、<br>
セーブデータをゲーム内の指定フォルダに配置する必要があります。<br>
SAVEGAME.BCFを以下のフォルダに配置します。<br>
Game\DSAVANTV<br>
その後、ゲーム内でImportを選択してください。<br>

## ■参考情報
### ●【Wizardry #7】DOSBoxでDOS/V版CDS日本語版を起動させる動画！ 【Crusaders of the Dark Savant】
https://sp.nicovideo.jp/watch/sm40167252<br>
DOS/V版CDS日本語版をDOSBoxで起動させる手順が紹介されています。<br>
神動画です。

### ●きよくら ならみ氏のブログ
https://kiyokura.hateblo.jp/entry/2024/03/10/171349<br>
DOSBox-XでWizardry 7 CDS DOS/V版を動作させる方法がまとめられています。<br>
本手順では、DOSバージョン設定、仮想HDDの空き容量を50MBに見せる設定、EFFECTSをSOUND BLASTERに設定する点などを参考にさせていただきました。<br>

## ■備考
実機上のDOSなどで遊ぶ場合はPentium以降のCPUだと<br>
ゲーム起動と同時にエラーでOS自体が再起動してしまいます。<br>
その場合は、以下のWizardry 7 DOS/V版 DS Unpackerで<br>
DS.EXEのパッチを作成して当ててください。<br>
https://github.com/tamanegitaro/Wizardry_7_CDS_DOSV_DS_Unpacker
また、当時アスキーから配布されていた<br>
「Wizardry Pentium対応ディスク」を使用することでも
遊べるようになります。<br>

DOSBox-X 2026.06.02 2026-06-02 09:05のSource codeはこちらです：<br>
https://github.com/joncampbell123/dosbox-x/releases/tag/dosbox-x-v2026.06.02
