# Wizardry 7 CDS DOS/V版 DOSBox-X環境セットアップ手順

## ■はじめに
Wizardry 7 CDS DOS/V版をDOSBox-X環境で動作させる手順を説明します。<br>
最終的には、Wizardry7.exeをダブルクリックするだけでゲームが起動できるようになります。<br>
<img width="432" height="207" alt="image" src="https://github.com/user-attachments/assets/ce7b2687-1c99-468a-aa38-fda6d61fb3a1" />

本手順では、DOSBox-Xの内蔵DOS環境を利用してWizardry 7 CDS DOS/V版を起動します。<br>
IBM DOSなどの外部DOS、Pentium対応パッチは不要で、正規のゲームフロッピーディスク2枚だけで環境を構築できます。<br>

また、HDDイメージではなくGameフォルダをCドライブとして直接マウントするため、セーブデータ管理、Wizardry 6/8との連携も簡単です。<br>
最終的には、Windows 11対応ゲームのようにWizardry7.exeをダブルクリックするだけで起動できる環境を目指します。<br>
<img width="480" height="300" alt="image" src="https://github.com/user-attachments/assets/249d8e17-3066-4200-af02-08c56dd94492" />


メニュー画面です。<br>
また、ゲーム内でQUIT GAMEを選択すると、DOSBox-X自体も終了するようにしています。<br>
<img width="480" height="300" alt="image" src="https://github.com/user-attachments/assets/3fb7103d-e1d8-42d2-ae90-998e07d6aa37" />



## ■用意するもの
### ●Wizardry 7 CDS DOS/V版 フロッピーディスク2枚
あらかじめ以下のファイル名でイメージ化しておきます。<br>
wiz7A.img<br>
wiz7B.img<br>
<img width="518" height="244" alt="image" src="https://github.com/user-attachments/assets/f7b2d61d-7cdc-4c8f-a27f-7c6a09c3c58d" />



### ●USBフロッピーディスクドライブ
古いものでも、メーカー製のドライブがおすすめです。<br>
am〇zonなどで売っている新品の無メーカー／聞かないメーカーのドライブでは、<br>
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


### ●DOSBox-X 2026.05.02
https://github.com/joncampbell123/dosbox-x/releases/tag/dosbox-x-v2026.05.02<br>
下の方にあるAssetsから、以下のファイルをダウンロードします。<br>
dosbox-x-mingw64-2026.05.02-portable.zip<br>
<img width="683" height="358" alt="image" src="https://github.com/user-attachments/assets/873660d2-9c82-48ee-8cb6-3532d540fb19" />


解凍すると「mingw」と「mingw-sdl2」のフォルダが入っています。<br>
そのうち「mingw-sdl2」フォルダの名前を「DOSBox-X」に変更して利用します。<br>

### ●その他環境構築キット
Wizardry7_Setup_kit.zip<br>
ここからダウンロードできます。<br>

## ■セットアップ手順
Wizardry7_Setup_kit.zipを解凍します。<br>
その中に、各ファイルを以下のように配置します。<br>

### ●配置するもの
DOSBox-Xフォルダ<br>
wiz7A.img<br>
wiz7B.img<br>

DOSBox-Xフォルダは、先ほど準備した「mingw-sdl2」をリネームしたものです。<br>

これで準備は完了です。<br>
<img width="521" height="347" alt="image" src="https://github.com/user-attachments/assets/06696996-01c7-4ca4-a26f-37eb6a9eb6d2" />


DOSBox-Xの中身はこのようになっています。<br>
<img width="516" height="473" alt="image" src="https://github.com/user-attachments/assets/cd4750ad-8085-4e23-afd4-293d3c5f3d9d" />


## ■Wizardry 7のインストール

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
以上でインストールは完了です。<br>

## ■DOSBox-Xの操作について
今回のDOSBox-X環境では、操作を少し変更しています。<br>

●ゲーム中にALT + F4でDOSBox-Xを終了します。<br>
●ゲーム中にALT + ENTERでフルスクリーン切り替えができます。<br>
●マウスが画面内にロックされた場合は、Ctrlを押しながらAltを押すと解除できます。<br>

この3つは覚えておくと便利です。<br>

## ■初回起動と音源設定
Start_Wizardry7.batを実行すると、ゲームが起動します。<br>
ただし、初回起動時点では音が鳴らない場合があります。<br>
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


## ■お願い
当時アスキーから配布されていた「Wizardry 7 CDS DOS/V版 Pentium対応ディスク」を<br>
お持ちの方がいらっしゃいましたら、ディスク内のDS.EXEのSHA256をご連絡いただけると大変助かります。<br>

本手順では、DOSBox-Xの設定によりPentium対応パッチなしでも<br>
起動できるようにしています。<br>
ですが、正規ディスクからPentium対応DS.EXEを自作する方法を発見しました。<br>
そこで当時公式に配布されていたPentium対応DS.EXEとは違うものが<br>
生成されているのかが知りたいのです。<br>

もし該当ディスクをお持ちの場合は、以下の手順でSHA256を確認できます。<br>

●SHA256の確認方法
1. 例としてPentium対応ディスク内のDS.EXEを、Windows上の以下の場所にコピーします。<br>
C:\TEMP\DS.EXE<br>

3. スタートボタンから「コマンド プロンプト」を検索して立ち上げます。<br>

4. 以下のコマンドを実行します。<br>
certutil -hashfile C:\TEMP\DS.EXE SHA256<br>

5. 表示された64文字の英数字がSHA256です。<br>

例：<br>
C:\Users\taro>certutil -hashfile C:\TEMP\DS.EXE SHA256<br>
SHA256 ハッシュ (対象 C:\TEMP\DS.EXE):<br>
0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef<br>
CertUtil: -hashfile コマンドは正常に完了しました。<br>

確認できた方は、以下のXアカウントまでハッシュ値をご連絡いただけると幸いです。<br>

https://x.com/taro_tamanegi<br>

報告いただいた方にはPentium対応ディスクの自作方法を伝授します。<br>

よろしくお願いいたします。<br>
