# shakuhachi

動作環境
============
* euslispをインストールしてください。 https://github.com/euslisp/jskeus
* euslisp以外のLispでの動作は保証されません。

randomwalk-miyakobushi.l
============
* 都節音階のランダムウォークで曲を生成します。C, E, D, G, A を基音とする5調があり、ステップ開始時の音に応じて確率で転調します。引数を指定すれば、ランダム音の挿入や、上行の羽の利用が可能です。
* 生成された音列は0~27の整数と、琴古流尺八の音名で表示されます。尺八音名においては以下のように記号を定義します。
```
o：乙音　k：甲音　m：メリ　c：中メリ
```
* リズムの生成や同音反復は未実装です。音列を生成した後に自分で手付をする必要があります。
* 実行方法
```
$ roseus randomwalk-miyakobushi.l
irteusgl> (randomwalk-shaku *maxstep* :randomtone-probability *0~100* :meriprint *t* :ascending-u *t*)
```
maxstep…音列の長さ.  :randomtone-probability…ランダム音の挿入確率(0% ~ 100%).  :meriprint…レの大メリ、ヒの五の大メリ表記のオンオフ（tでオン、nilでオフ）.  :ascending-u…上行の羽の利用オンオフ（tでオン、nilでオフ）

12on.l
============
* Dからオクターブ上のAまでの音列をランダムに生成し、琴古流尺八の音名で表示されます。
