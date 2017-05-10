# shakuhachi

動作環境
============
* euslispをインストールしてください。 https://github.com/euslisp/jskeus
* euslisp以外のLispでの動作は保証されません。

randomwalk-miyakobushi.l
============
* 都節音階のランダムウォークで曲を生成します。C, E, D, G, A を基音とする5調があり、ステップ開始時の音に応じて確率で転調します。また確率でランダム音程が挿入されます。
* 生成された音列は0~27の整数と、琴古流尺八の音名で表示されます。尺八音名においては以下のように記号を定義します。
```
o：乙音　k：甲音　m：メリ　c：中メリ
```
12on.l
============
* Dからオクターブ上のAまでの音列をランダムに生成し、琴古流尺八の音名で表示されます。
