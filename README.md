# Wizardry 7 CDS DOS/V版 DOSBox-X環境セットアップ手順

## ■はじめに
Wizardry 7 CDS DOS/V版をDOSBox-X環境で動作させる手順を説明します。
最終的には、Wizardry7.exeをダブルクリックするだけでゲームが起動できるようになります。


本手順では、DOSBox-Xの内蔵DOS環境を利用してWizardry 7 CDS DOS/V版を起動します。
IBM DOSなどの外部DOS、Pentium対応パッチは不要で、正規のゲームフロッピーディスク2枚だけで環境を構築できます。

また、HDDイメージではなくGameフォルダをCドライブとして直接マウントするため、セーブデータ管理、Wizardry 6/8との連携も簡単です。
最終的には、Windows 11対応ゲームのようにWizardry7.exeをダブルクリックするだけで起動できる環境を目指します。


メニュー画面です。
また、ゲーム内でQUIT GAMEを選択すると、DOSBox-X自体も終了するようにしています。



## ■用意するもの
### ●Wizardry 7 CDS DOS/V版 フロッピーディスク2枚
あらかじめ以下のファイル名でイメージ化しておきます。
wiz7A.img
wiz7B.img



### ●USBフロッピーディスクドライブ
古いものでも、メーカー製のドライブがおすすめです。
新品の中国製ドライブでは、イメージ化や書き込みの途中でエラーが出るものが多かったため、筆者は返品しました。

### ●Rawwritewin 0.9.0
https://github.com/emeric-martineau/rawwritewin
フロッピーディスクをイメージ化したり、書き込んだりするソフトウェアです。
要するに、フロッピーディスクを丸ごと読み出して、1つのimgファイルとして保存してくれます。
右側のRelease 0.9.0をクリックして、rawwritewin-0.9.exeをダウンロードします。
パソコンにUSBフロッピーディスクドライブを接続し、ディスクを入れます。
その後、rawwritewinを右クリックして「管理者として実行」で起動します。
Driveの項目でフロッピードライブを選びます。
Createタブを開き、Image fileを指定します。
Createボタンを押すと、フロッピーが読み出され、imgファイルとして保存されます。


### ●DOSBox-X 2026.05.02
https://github.com/joncampbell123/dosbox-x/releases/tag/dosbox-x-v2026.05.02
下の方にあるAssetsから、以下のファイルをダウンロードします。
dosbox-x-mingw64-2026.05.02-portable.zip


解凍すると「mingw」と「mingw-sdl2」のフォルダが入っています。
そのうち「mingw-sdl2」フォルダの名前を「DOSBox-X」に変更して利用します。

### ●その他環境構築キット
Wizardry7_Setup_kit.zip
ここからダウンロードできます。

## ■セットアップ手順
Wizardry7_Setup_kit.zipを解凍します。
その中に、各ファイルを以下のように配置します。

### ●配置するもの
DOSBox-Xフォルダ
wiz7A.img
wiz7B.img

DOSBox-Xフォルダは、先ほど準備した「mingw-sdl2」をリネームしたものです。

これで準備は完了です。


DOSBox-Xの中身はこのようになっています。


## ■Wizardry 7のインストール

1_Install_Wizardry7.batを実行します


DOSBox-Xが起動し、インストールが開始されます。


インストール先のフォルダ構成は、デフォルトのままで問題ありません。
確認画面が表示されたら、Yを押して続行してください。


インストール中に、フロッピーディスクの入れ替えを求められます。
この環境では、あらかじめディスクAとディスクBのイメージがDOSBox-Xに登録されています。
画面上部のメニューから以下を選択すると、ディスクを切り替えられます。
DOS → Swap floppy drive
ディスクを切り替えたら、Enterキーを押して続行します。


インストールが完了したら、そのままEnterキーを押して続行します。


その後、何度かEnterキーを押して以下の画面になるまで進めます。
Wizardry CDS ユーティリティ画面ですが、
この画面で「7」を押して、シナリオヘッダーの書き換えを行います。


Enterキーを押すとシナリオヘッダーの書き換えが終了します。


シナリオヘッダーの書き換えが終わり、ユーティリティ画面に戻ったら、
「5」を押してDOSへ戻るとDOSBox-Xが自動で終了します。


次に、2_Patch_Wizardry7.batを実行します。


自動でWIZARDRY.BATにパッチが当たります。
処理が終わったら、何かキーを押して終了します。
このパッチでは、以下のような調整を行っています。

●起動時の余計な表示を減らす
●ゲーム終了時にDOSBox-Xも終了するように調整
以上でインストールは完了です。

## ■DOSBox-Xの操作について
今回のDOSBox-X環境では、操作を少し変更しています。

●ゲーム中にALT + F4でDOSBox-Xを終了します。
●ゲーム中にALT + ENTERでフルスクリーン切り替えができます。
●マウスが画面内にロックされた場合は、Ctrlを押しながらAltを押すと解除できます。

この3つは覚えておくと便利です。

## ■初回起動と音源設定
Start_Wizardry7.batを実行すると、ゲームが起動します。
ただし、初回起動時点では音が鳴らない場合があります。
まずはEscキーを押して、メニュー画面まで進みます。


メニューからCONFIGURATIONを開きます。


CONFIGURATION画面で、EFFECTSとMUSICを何度か押して、両方ともSOUND BLASTERに切り替えます。
INPUT DEVICEは、お好みに合わせてKEYBOARDまたはMOUSEに切り替えてください。


設定が終わったら、SAVEを押して保存するとDOSBox-Xが終了します。

これでセットアップは終了です。
その後、Start_Wizardry7.batを再度実行します。
ここまでのセットアップが順調なら、ゲームが起動し、BGMが鳴るはずです。
お疲れさまでした。

## ■Wizardry7.exeで起動する場合
Start_Wizardry7.batと同じような動作をするWizardry7.exeを作成すると、まるで製品のように起動できます。
Wizardry7.exeの作り方は、Wizardry7exeフォルダ内のReadme.txtを参照してください。
筆者の環境では、Start_Wizardry7.batをWizardry7.exeに置き換えています。

## ■不要になったファイル
インストールと設定が完了した後は、以下のファイルやフォルダは削除できます。
Wizardry7exeフォルダ
Config_Installフォルダ
Install_Wizardry7.bat
1_Install_Wizardry7.bat
2_Patch_Wizardry7.bat
wiz7A.img
wiz7B.img
最終的には、以下のような最小構成になります。


最後に、フォルダ全体をZIPなどで圧縮してバックアップを作成しておきましょう。





## ■日本語入力方法
テキストボックスに文字を入力する場面では、日本語入力も利用できます。
まず、文字入力画面を開きます。


そのまま文字を入力すると、英数字で入力されます。


日本語入力をONにするには、半角／全角キーを押します。
日本語入力がONの状態で、たとえば「じるべーる」と入力すると、画面左上に入力中の文字が表示されます。


ここでF8キーを押すと、半角カタカナに変換されます。
じるべーる
↓ F8キー
ｼﾞﾙﾍﾞｰﾙ


この状態でEnterキーを押すと、ゲーム内に反映されます。


日本語入力がONのままだと、ゲーム操作に支障が出る場合があります。
入力が終わったら、再度半角／全角キーを押して日本語入力をOFFにしてください。

## ■Wizardry 7のセーブデータ
デフォルトでは、セーブデータは以下のフォルダに保存されます。
Game\DSAVANTV
Wizardry 8との連携に必要なデータも、このフォルダの中に生成されます。

## ■Wizardry 6との連携
Wizardry 6のセーブデータを引き継ぐ場合は、
セーブデータをゲーム内の指定フォルダに配置する必要があります。
SAVEGAME.BCFを以下のフォルダに配置します。
Game\DSAVANTV
その後、ゲーム内でImportを選択してください。

## ■参考情報
### ●【Wizardry #7】DOSBoxでDOS/V版CDS日本語版を起動させる動画！ 【Crusaders of the Dark Savant】
https://sp.nicovideo.jp/watch/sm40167252
DOS/V版CDS日本語版をDOSBoxで起動させる手順が紹介されています。
神動画です。

### ●きよくら ならみ氏のブログ
https://kiyokura.hateblo.jp/entry/2024/03/10/171349
DOSBox-XでWizardry 7 CDS DOS/V版を動作させる方法がまとめられています。
本手順では、DOSバージョン設定、仮想HDDの空き容量を50MBに見せる設定、EFFECTSをSOUND BLASTERに設定する点などを参考にさせていただきました。
