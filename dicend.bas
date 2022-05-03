$ExeIcon:'dicend.ico'
_Icon
Rem Let scr& = _NewImage(800, 600, 256)
Rem Screen scr&
Rem _FullScreen
Screen 12
DefInt A-Z
Randomize Timer

declare sub dice1 as type integer
declare sub dice2 as type integer
declare sub dice3 as type integer
declare sub dice4 as type integer
declare sub dice5 as type integer
declare sub dice6 as type integer
declare sub dice7 as type integer
declare sub dice8 as type integer
declare sub dice9 as type integer
declare sub dice0 as type integer
declare sub number1 as type integer
declare sub number2 as type integer
declare sub number3 as type integer
declare sub number4 as type integer
declare sub number5 as type integer
declare sub number6 as type integer
declare sub number7 as type integer
declare sub number8 as type integer
declare sub number9 as type integer
declare sub number0 as type integer
declare sub numberA as type integer
declare sub numberB as type integer
declare sub numberC as type integer
declare sub numberD as type integer
declare sub numberE as type integer
declare sub numberF as type integer
declare sub numberG as type integer
declare sub numberH as type integer
declare sub numberI as type integer
declare sub numberJ as type integer
declare sub letter1 as type integer
declare sub letter2 as type integer
declare sub letter3 as type integer
declare sub letter4 as type integer
declare sub letter5 as type integer
declare sub letter6 as type integer
declare sub letter7 as type integer
declare sub letter8 as type integer
declare sub letter9 as type integer
declare sub letter0 as type integer
declare sub letterA as type integer
declare sub letterB as type integer
declare sub letterC as type integer
declare sub letterD as type integer
declare sub letterE as type integer
declare sub letterF as type integer
declare sub letterG as type integer
declare sub letterH as type integer
declare sub letterI as type integer
declare sub letterJ as type integer
declare sub king as type integer
declare sub queen as type integer
declare sub bishop as type integer
declare sub knight as type integer
declare sub rook as type integer
declare sub pawn as type integer
declare sub cannon as type integer
declare sub arrow as type integer
declare sub general as type integer
declare sub tokin as type integer
declare sub dragon as type integer
declare sub horse as type integer
declare sub cells as type integer
declare sub dices as type integer
declare sub chessboard as type integer
declare sub makrukboard as type integer
declare sub xiangqiboard as type integer
declare sub shogiboard as type integer
declare sub draughtsboard as type integer

Common Shared x, y, cd1, cd2, cn, cl, cf, cb1, cb2, cb3, cb4, cb5 As Integer
Dim Shared board(8, 8) As Integer
Let cell = 100
For row = 1 To 8: For col = 1 To 8
    Let board(row, col) = cell + 1
    Let cell = cell + 1
Next col: Next row
Let cd1 = 2: Let cd2 = 15: Let cn = 7: Let cl = 14: Let cf = 9: Let cb1 = 7: Let cb2 = 6: Let cb3 = 3: Let cb4 = 13: Let cb5 = 9

'Let x = 20: For y = 20 To 420 Step 50
'Call cells
'Next y
'Let x = 20: Let y = 20: Call dice5

Let dc1 = Int(Rnd * 8 + 1)
Let dc2 = Int(Rnd * 8 + 1)
Let dc3 = Int(Rnd * 10 + 1)
Let dc4 = Int(Rnd * 8 + 1)
Let dc5 = Int(Rnd * 8 + 1)
Let dc6 = Int(Rnd * 10 + 1)

If dc3 = 1 Then Let fw$ = "White king"
If dc3 = 2 Then Let fw$ = "White queen"
If dc3 = 3 Then Let fw$ = "White bishop"
If dc3 = 4 Then Let fw$ = "White knight"
If dc3 = 5 Then Let fw$ = "White rook"
If dc3 = 6 Then Let fw$ = "White pawn"
If dc3 = 7 Then Let fw$ = "White cannon"
If dc3 = 8 Then Let fw$ = "White arrow"
If dc3 = 9 Then Let fw$ = "White horse"
If dc3 = 10 Then Let fw$ = "White dragon"

If dc6 = 1 Then Let fb$ = "Black king"
If dc6 = 2 Then Let fb$ = "Black queen"
If dc6 = 3 Then Let fb$ = "Black bishop"
If dc6 = 4 Then Let fb$ = "Black knight"
If dc6 = 5 Then Let fb$ = "Black rook"
If dc6 = 6 Then Let fb$ = "Black pawn"
If dc6 = 7 Then Let fb$ = "Black cannon"
If dc6 = 8 Then Let fb$ = "Black arrow"
If dc6 = 9 Then Let fb$ = "Black horse"
If dc6 = 10 Then Let fb$ = "Black dragon"









Rem Do: Loop While InKey$ = ""

End

Sub dice1
    Line (x, y)-(40 + x, 40 + y), cd1, BF
    Line (16 + x, 16 + y)-(24 + x, 24 + y), cd2, BF
End Sub

Sub dice2
    Line (x, y)-(40 + x, 40 + y), cd1, BF
    Line (28 + x, 4 + y)-(36 + x, 12 + y), cd2, BF
    Line (4 + x, 28 + y)-(12 + x, 36 + y), cd2, BF
End Sub

Sub dice3
    Line (x, y)-(40 + x, 40 + y), cd1, BF
    Line (28 + x, 4 + y)-(36 + x, 12 + y), cd2, BF
    Line (16 + x, 16 + y)-(24 + x, 24 + y), cd2, BF
    Line (4 + x, 28 + y)-(12 + x, 36 + y), cd2, BF
End Sub

Sub dice4
    Line (x, y)-(40 + x, 40 + y), cd1, BF
    Line (4 + x, 4 + y)-(12 + x, 12 + y), cd2, BF
    Line (28 + x, 4 + y)-(36 + x, 12 + y), cd2, BF
    Line (4 + x, 28 + y)-(12 + x, 36 + y), cd2, BF
    Line (28 + x, 28 + y)-(36 + x, 36 + y), cd2, BF
End Sub

Sub dice5
    Line (x, y)-(40 + x, 40 + y), cd1, BF
    Line (4 + x, 4 + y)-(12 + x, 12 + y), cd2, BF
    Line (28 + x, 4 + y)-(36 + x, 12 + y), cd2, BF
    Line (16 + x, 16 + y)-(24 + x, 24 + y), cd2, BF
    Line (4 + x, 28 + y)-(12 + x, 36 + y), cd2, BF
    Line (28 + x, 28 + y)-(36 + x, 36 + y), cd2, BF
End Sub

Sub dice6
    Line (x, y)-(40 + x, 40 + y), cd1, BF
    Line (4 + x, 4 + y)-(12 + x, 12 + y), cd2, BF
    Line (28 + x, 4 + y)-(36 + x, 12 + y), cd2, BF
    Line (4 + x, 16 + y)-(12 + x, 24 + y), cd2, BF
    Line (28 + x, 16 + y)-(36 + x, 24 + y), cd2, BF
    Line (4 + x, 28 + y)-(12 + x, 36 + y), cd2, BF
    Line (28 + x, 28 + y)-(36 + x, 36 + y), cd2, BF
End Sub

Sub dice7
    Line (x, y)-(40 + x, 40 + y), cd1, BF
    Line (4 + x, 4 + y)-(12 + x, 12 + y), cd2, BF
    Line (28 + x, 4 + y)-(36 + x, 12 + y), cd2, BF
    Line (4 + x, 16 + y)-(12 + x, 24 + y), cd2, BF
    Line (16 + x, 16 + y)-(24 + x, 24 + y), cd2, BF
    Line (28 + x, 16 + y)-(36 + x, 24 + y), cd2, BF
    Line (4 + x, 28 + y)-(12 + x, 36 + y), cd2, BF
    Line (28 + x, 28 + y)-(36 + x, 36 + y), cd2, BF
End Sub

Sub dice8
    Line (x, y)-(40 + x, 40 + y), cd1, BF
    Line (4 + x, 4 + y)-(12 + x, 12 + y), cd2, BF
    Line (16 + x, 4 + y)-(24 + x, 12 + y), cd2, BF
    Line (28 + x, 4 + y)-(36 + x, 12 + y), cd2, BF
    Line (4 + x, 16 + y)-(12 + x, 24 + y), cd2, BF
    Line (28 + x, 16 + y)-(36 + x, 24 + y), cd2, BF
    Line (4 + x, 28 + y)-(12 + x, 36 + y), cd2, BF
    Line (16 + x, 28 + y)-(24 + x, 36 + y), cd2, BF
    Line (28 + x, 28 + y)-(36 + x, 36 + y), cd2, BF
End Sub

Sub dice9
    Line (x, y)-(40 + x, 40 + y), cd1, BF
    Line (4 + x, 4 + y)-(12 + x, 12 + y), cd2, BF
    Line (16 + x, 4 + y)-(24 + x, 12 + y), cd2, BF
    Line (28 + x, 4 + y)-(36 + x, 12 + y), cd2, BF
    Line (4 + x, 16 + y)-(12 + x, 24 + y), cd2, BF
    Line (16 + x, 16 + y)-(24 + x, 24 + y), cd2, BF
    Line (28 + x, 16 + y)-(36 + x, 24 + y), cd2, BF
    Line (4 + x, 28 + y)-(12 + x, 36 + y), cd2, BF
    Line (16 + x, 28 + y)-(24 + x, 36 + y), cd2, BF
    Line (28 + x, 28 + y)-(36 + x, 36 + y), cd2, BF
End Sub

Sub dice0
    Line (x, y)-(40 + x, 40 + y), cd1, BF
    Line (4 + x, 4 + y)-(12 + x, 12 + y), cd2, BF
    Line (28 + x, 4 + y)-(36 + x, 12 + y), cd2, BF
    Line (4 + x, 16 + y)-(12 + x, 24 + y), cd2, BF
    Line (28 + x, 16 + y)-(36 + x, 24 + y), cd2, BF
    Line (4 + x, 28 + y)-(12 + x, 36 + y), cd2, BF
    Line (28 + x, 28 + y)-(36 + x, 36 + y), cd2, BF
    Line (16 + x, 1 + y)-(24 + x, 9 + y), cd2, BF
    Line (16 + x, 11 + y)-(24 + x, 19 + y), cd2, BF
    Line (16 + x, 21 + y)-(24 + x, 29 + y), cd2, BF
    Line (16 + x, 31 + y)-(24 + x, 39 + y), cd2, BF
End Sub

Sub number1
    Line (1 + x, 10 + y)-(10 + x, 9 + y), cn, BF
    Line (5 + x, 8 + y)-(6 + x, 1 + y), cn, BF
    Line (4 + x, 2 + y)-(1 + x, 5 + y), cn
    Line (4 + x, 3 + y)-(1 + x, 6 + y), cn
End Sub

Sub number2
    Line (1 + x, 10 + y)-(10 + x, 9 + y), cn, BF
    Line (1 + x, 6 + y)-(10 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(10 + x, 1 + y), cn, BF
    Line (1 + x, 8 + y)-(2 + x, 7 + y), cn, BF
    Line (10 + x, 4 + y)-(9 + x, 3 + y), cn, BF
End Sub

Sub number3
    Line (2 + x, 2 + y)-(9 + x, 1 + y), cn, BF
    Line (2 + x, 10 + y)-(9 + x, 9 + y), cn, BF
    Line (5 + x, 5 + y)-(9 + x, 6 + y), cn, BF
    Line (9 + x, 2 + y)-(10 + x, 4 + y), cn, BF
    Line (9 + x, 7 + y)-(10 + x, 9 + y), cn, BF
End Sub

Sub number4
    Line (1 + x, 6 + y)-(10 + x, 5 + y), cn, BF
    Line (1 + x, 1 + y)-(2 + x, 4 + y), cn, BF
    Line (9 + x, 1 + y)-(10 + x, 10 + y), cn, BF
End Sub

Sub number5
    Line (1 + x, 10 + y)-(10 + x, 9 + y), cn, BF
    Line (1 + x, 6 + y)-(10 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(10 + x, 1 + y), cn, BF
    Line (10 + x, 8 + y)-(9 + x, 7 + y), cn, BF
    Line (2 + x, 4 + y)-(1 + x, 3 + y), cn, BF
End Sub

Sub number6
    Line (1 + x, 10 + y)-(10 + x, 9 + y), cn, BF
    Line (1 + x, 6 + y)-(10 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(10 + x, 1 + y), cn, BF
    Line (10 + x, 8 + y)-(9 + x, 7 + y), cn, BF
    Line (1 + x, 8 + y)-(2 + x, 3 + y), cn, BF
End Sub

Sub number7
    Line (1 + x, 2 + y)-(10 + x, 1 + y), cn, BF
    Line (10 + x, 3 + y)-(3 + x, 10 + y), cn
    Line (9 + x, 3 + y)-(2 + x, 10 + y), cn
    Line (8 + x, 3 + y)-(1 + x, 10 + y), cn
End Sub

Sub number8
    Line (2 + x, 2 + y)-(9 + x, 1 + y), cn, BF
    Line (2 + x, 10 + y)-(9 + x, 9 + y), cn, BF
    Line (2 + x, 6 + y)-(9 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(2 + x, 4 + y), cn, BF
    Line (1 + x, 7 + y)-(2 + x, 9 + y), cn, BF
    Line (9 + x, 2 + y)-(10 + x, 4 + y), cn, BF
    Line (9 + x, 7 + y)-(10 + x, 9 + y), cn, BF
End Sub

Sub number9
    Line (1 + x, 10 + y)-(10 + x, 9 + y), cn, BF
    Line (1 + x, 6 + y)-(10 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(10 + x, 1 + y), cn, BF
    Line (10 + x, 8 + y)-(9 + x, 3 + y), cn, BF
    Line (2 + x, 4 + y)-(1 + x, 3 + y), cn, BF
End Sub

Sub number0
    Line (2 + x, 2 + y)-(9 + x, 1 + y), cn, BF
    Line (2 + x, 10 + y)-(9 + x, 9 + y), cn, BF
    Line (1 + x, 2 + y)-(2 + x, 9 + y), cn, BF
    Line (9 + x, 2 + y)-(10 + x, 9 + y), cn, BF
End Sub

Sub numberA
    Line (1 + x, 6 + y)-(10 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(2 + x, 10 + y), cn, BF
    Line (9 + x, 2 + y)-(10 + x, 10 + y), cn, BF
    Line (2 + x, 2 + y)-(9 + x, 1 + y), cn, BF
End Sub

Sub numberB
    Line (1 + x, 1 + y)-(2 + x, 10 + y), cn, BF
    Line (1 + x, 10 + y)-(9 + x, 9 + y), cn, BF
    Line (1 + x, 6 + y)-(9 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(9 + x, 1 + y), cn, BF
    Line (9 + x, 2 + y)-(10 + x, 4 + y), cn, BF
    Line (9 + x, 7 + y)-(10 + x, 9 + y), cn, BF
End Sub

Sub numberC
    Line (1 + x, 1 + y)-(2 + x, 10 + y), cn, BF
    Line (1 + x, 1 + y)-(10 + x, 2 + y), cn, BF
    Line (1 + x, 10 + y)-(10 + x, 9 + y), cn, BF
End Sub

Sub numberD
    Line (2 + x, 2 + y)-(9 + x, 1 + y), cn, BF
    Line (2 + x, 10 + y)-(9 + x, 9 + y), cn, BF
    Line (1 + x, 1 + y)-(2 + x, 10 + y), cn, BF
    Line (9 + x, 2 + y)-(10 + x, 9 + y), cn, BF
End Sub

Sub numberE
    Line (1 + x, 1 + y)-(2 + x, 10 + y), cn, BF
    Line (1 + x, 10 + y)-(10 + x, 9 + y), cn, BF
    Line (1 + x, 6 + y)-(10 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(10 + x, 1 + y), cn, BF
End Sub

Sub numberF
    Line (1 + x, 1 + y)-(2 + x, 10 + y), cn, BF
    Line (1 + x, 6 + y)-(10 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(10 + x, 1 + y), cn, BF
End Sub

Sub numberG
    Line (1 + x, 10 + y)-(10 + x, 9 + y), cn, BF
    Line (8 + x, 6 + y)-(6 + x, 5 + y), cn, BF
    Line (1 + x, 2 + y)-(10 + x, 1 + y), cn, BF
    Line (10 + x, 8 + y)-(9 + x, 5 + y), cn, BF
    Line (1 + x, 8 + y)-(2 + x, 3 + y), cn, BF
End Sub

Sub numberH
    Line (1 + x, 6 + y)-(10 + x, 5 + y), cn, BF
    Line (1 + x, 1 + y)-(2 + x, 10 + y), cn, BF
    Line (9 + x, 1 + y)-(10 + x, 10 + y), cn, BF
End Sub

Sub numberI
    Line (3 + x, 2 + y)-(8 + x, 1 + y), cn, BF
    Line (3 + x, 10 + y)-(8 + x, 9 + y), cn, BF
    Line (5 + x, 3 + y)-(6 + x, 8 + y), cn, BF
End Sub

Sub numberJ
    Line (1 + x, 6 + y)-(2 + x, 9 + y), cn, BF
    Line (9 + x, 1 + y)-(10 + x, 9 + y), cn, BF
    Line (2 + x, 9 + y)-(9 + x, 10 + y), cn, BF
End Sub

Sub letter1
    Line (4 + x, 36 + y)-(36 + x, 32 + y), cl, BF
    Line (18 + x, 31 + y)-(22 + x, 4 + y), cl, BF
    Line (17 + x, 4 + y)-(4 + x, 17 + y), cl
    Line (17 + x, 5 + y)-(5 + x, 17 + y), cl
    Line (17 + x, 6 + y)-(6 + x, 17 + y), cl
    Line (17 + x, 7 + y)-(7 + x, 17 + y), cl
End Sub

Sub letter2
    Line (4 + x, 4 + y)-(36 + x, 8 + y), cl, BF
    Line (4 + x, 18 + y)-(36 + x, 22 + y), cl, BF
    Line (4 + x, 36 + y)-(36 + x, 32 + y), cl, BF
    Line (32 + x, 9 + y)-(36 + x, 17 + y), cl, BF
    Line (4 + x, 23 + y)-(8 + x, 31 + y), cl, BF
End Sub

Sub letter3
    Line (4 + x, 4 + y)-(34 + x, 8 + y), cl, BF
    Line (4 + x, 36 + y)-(34 + x, 32 + y), cl, BF
    Line (36 + x, 23 + y)-(32 + x, 34 + y), cl, BF
    Line (32 + x, 6 + y)-(36 + x, 17 + y), cl, BF
    Line (18 + x, 18 + y)-(34 + x, 22 + y), cl, BF
    Line (30 + x, 17 + y)-(31 + x, 17 + y), cl
    Line (30 + x, 23 + y)-(31 + x, 23 + y), cl
    Line (30 + x, 9 + y)-(31 + x, 9 + y), cl
    Line (30 + x, 31 + y)-(31 + x, 31 + y), cl
    PSet (31 + x, 10 + y), cl: PSet (31 + x, 30 + y), cl
    PSet (31 + x, 16 + y), cl: PSet (31 + x, 24 + y), cl
    PSet (35 + x, 18 + y), cl: PSet (35 + x, 22 + y), cl
    PSet (35 + x, 5 + y), cl: PSet (35 + x, 35 + y), cl
End Sub

Sub letter4
    Line (4 + x, 4 + y)-(8 + x, 17 + y), cl, BF
    Line (32 + x, 4 + y)-(36 + x, 36 + y), cl, BF
    Line (4 + x, 18 + y)-(34 + x, 22 + y), cl, BF
End Sub

Sub letter5
    Line (4 + x, 4 + y)-(36 + x, 8 + y), cl, BF
    Line (4 + x, 18 + y)-(36 + x, 22 + y), cl, BF
    Line (4 + x, 36 + y)-(36 + x, 32 + y), cl, BF
    Line (4 + x, 9 + y)-(8 + x, 17 + y), cl, BF
    Line (32 + x, 23 + y)-(36 + x, 31 + y), cl, BF
End Sub

Sub letter6
    Line (4 + x, 4 + y)-(36 + x, 8 + y), cl, BF
    Line (4 + x, 18 + y)-(36 + x, 22 + y), cl, BF
    Line (4 + x, 36 + y)-(36 + x, 32 + y), cl, BF
    Line (4 + x, 9 + y)-(8 + x, 31 + y), cl, BF
    Line (32 + x, 23 + y)-(36 + x, 31 + y), cl, BF
End Sub

Sub letter7
    Line (4 + x, 4 + y)-(36 + x, 8 + y), cl, BF
    Line (8 + x, 36 + y)-(35 + x, 9 + y), cl
    Line (7 + x, 36 + y)-(34 + x, 9 + y), cl
    Line (6 + x, 36 + y)-(33 + x, 9 + y), cl
    Line (5 + x, 36 + y)-(32 + x, 9 + y), cl
End Sub

Sub letter8
    Line (8 + x, 23 + y)-(4 + x, 34 + y), cl, BF
    Line (4 + x, 6 + y)-(8 + x, 17 + y), cl, BF
    Line (6 + x, 4 + y)-(34 + x, 8 + y), cl, BF
    Line (6 + x, 36 + y)-(34 + x, 32 + y), cl, BF
    Line (36 + x, 23 + y)-(32 + x, 34 + y), cl, BF
    Line (32 + x, 6 + y)-(36 + x, 17 + y), cl, BF
    Line (6 + x, 18 + y)-(34 + x, 22 + y), cl, BF
    Line (30 + x, 17 + y)-(31 + x, 17 + y), cl
    Line (30 + x, 23 + y)-(31 + x, 23 + y), cl
    Line (10 + x, 17 + y)-(9 + x, 17 + y), cl
    Line (10 + x, 23 + y)-(9 + x, 23 + y), cl
    Line (9 + x, 31 + y)-(10 + x, 31 + y), cl
    Line (30 + x, 31 + y)-(31 + x, 31 + y), cl
    Line (9 + x, 9 + y)-(10 + x, 9 + y), cl
    Line (30 + x, 9 + y)-(31 + x, 9 + y), cl
    PSet (35 + x, 5 + y), cl: PSet (35 + x, 35 + y), cl
    PSet (5 + x, 5 + y), cl: PSet (5 + x, 35 + y), cl
    PSet (9 + x, 30 + y), cl: PSet (31 + x, 30 + y), cl
    PSet (9 + x, 10 + y), cl: PSet (31 + x, 10 + y), cl
    PSet (5 + x, 18 + y), cl: PSet (5 + x, 22 + y), cl
    PSet (9 + x, 16 + y), cl: PSet (9 + x, 24 + y), cl
    PSet (31 + x, 16 + y), cl: PSet (31 + x, 24 + y), cl
    PSet (35 + x, 18 + y), cl: PSet (35 + x, 22 + y), cl
End Sub

Sub letter9
    Line (4 + x, 4 + y)-(36 + x, 8 + y), cl, BF
    Line (4 + x, 18 + y)-(36 + x, 22 + y), cl, BF
    Line (4 + x, 36 + y)-(36 + x, 32 + y), cl, BF
    Line (32 + x, 9 + y)-(36 + x, 31 + y), cl, BF
End Sub

Sub letter0
    Line (6 + x, 4 + y)-(34 + x, 8 + y), cl, BF
    Line (6 + x, 36 + y)-(34 + x, 32 + y), cl, BF
    Line (4 + x, 6 + y)-(8 + x, 34 + y), cl, BF
    Line (36 + x, 6 + y)-(32 + x, 34 + y), cl, BF
    Line (9 + x, 9 + y)-(10 + x, 9 + y), cl
    Line (30 + x, 9 + y)-(31 + x, 9 + y), cl
    Line (9 + x, 31 + y)-(10 + x, 31 + y), cl
    Line (30 + x, 31 + y)-(31 + x, 31 + y), cl
    Line (9 + x, 9 + y)-(10 + x, 9 + y), cl
    Line (30 + x, 9 + y)-(31 + x, 9 + y), cl
    PSet (35 + x, 5 + y), cl: PSet (35 + x, 35 + y), cl
    PSet (5 + x, 5 + y), cl: PSet (5 + x, 35 + y), cl
    PSet (9 + x, 30 + y), cl: PSet (31 + x, 30 + y), cl
    PSet (9 + x, 10 + y), cl: PSet (31 + x, 10 + y), cl
End Sub

Sub letterA
    Line (4 + x, 6 + y)-(8 + x, 36 + y), cl, BF
    Line (32 + x, 6 + y)-(36 + x, 36 + y), cl, BF
    Line (4 + x, 18 + y)-(34 + x, 22 + y), cl, BF
    Line (6 + x, 4 + y)-(34 + x, 8 + y), cl, BF
    Line (30 + x, 9 + y)-(31 + x, 9 + y), cl
    Line (9 + x, 9 + y)-(10 + x, 9 + y), cl
    PSet (9 + x, 10 + y), cl: PSet (31 + x, 10 + y), cl
    PSet (5 + x, 5 + y), cl: PSet (35 + x, 5 + y), cl
End Sub

Sub letterB
    Line (4 + x, 9 + y)-(8 + x, 31 + y), cl, BF
    Line (4 + x, 4 + y)-(34 + x, 8 + y), cl, BF
    Line (4 + x, 36 + y)-(34 + x, 32 + y), cl, BF
    Line (36 + x, 23 + y)-(32 + x, 34 + y), cl, BF
    Line (32 + x, 6 + y)-(36 + x, 17 + y), cl, BF
    Line (9 + x, 18 + y)-(34 + x, 22 + y), cl, BF
    Line (30 + x, 17 + y)-(31 + x, 17 + y), cl
    Line (30 + x, 23 + y)-(31 + x, 23 + y), cl
    Line (30 + x, 9 + y)-(31 + x, 9 + y), cl
    Line (30 + x, 31 + y)-(31 + x, 31 + y), cl
    PSet (31 + x, 10 + y), cl: PSet (31 + x, 30 + y), cl
    PSet (31 + x, 16 + y), cl: PSet (31 + x, 24 + y), cl
    PSet (35 + x, 18 + y), cl: PSet (35 + x, 22 + y), cl
    PSet (35 + x, 5 + y), cl: PSet (35 + x, 35 + y), cl
End Sub

Sub letterC
    Line (6 + x, 4 + y)-(36 + x, 8 + y), cl, BF
    Line (6 + x, 36 + y)-(36 + x, 32 + y), cl, BF
    Line (4 + x, 6 + y)-(8 + x, 34 + y), cl, BF
    Line (9 + x, 9 + y)-(10 + x, 9 + y), cl
    Line (9 + x, 31 + y)-(10 + x, 31 + y), cl
    PSet (9 + x, 10 + y), cl: PSet (9 + x, 30 + y), cl
    PSet (5 + x, 5 + y), cl: PSet (5 + x, 35 + y), cl
End Sub

Sub letterD
    Line (4 + x, 4 + y)-(34 + x, 8 + y), cl, BF
    Line (4 + x, 36 + y)-(34 + x, 32 + y), cl, BF
    Line (4 + x, 4 + y)-(8 + x, 36 + y), cl, BF
    Line (32 + x, 6 + y)-(36 + x, 34 + y), cl, BF
    Line (30 + x, 9 + y)-(31 + x, 9 + y), cl
    Line (30 + x, 31 + y)-(31 + x, 31 + y), cl
    PSet (31 + x, 10 + y), cl: PSet (31 + x, 30 + y), cl
    PSet (35 + x, 5 + y), cl: PSet (35 + x, 35 + y), cl
End Sub

Sub letterE
    Line (4 + x, 4 + y)-(36 + x, 8 + y), cl, BF
    Line (4 + x, 18 + y)-(36 + x, 22 + y), cl, BF
    Line (4 + x, 36 + y)-(36 + x, 32 + y), cl, BF
    Line (4 + x, 4 + y)-(8 + x, 36 + y), cl, BF
End Sub

Sub letterF
    Line (4 + x, 4 + y)-(36 + x, 8 + y), cl, BF
    Line (4 + x, 18 + y)-(36 + x, 22 + y), cl, BF
    Line (4 + x, 4 + y)-(8 + x, 36 + y), cl, BF
End Sub

Sub letterG
    Line (4 + x, 4 + y)-(36 + x, 8 + y), cl, BF
    Line (20 + x, 18 + y)-(36 + x, 22 + y), cl, BF
    Line (4 + x, 36 + y)-(36 + x, 32 + y), cl, BF
    Line (4 + x, 9 + y)-(8 + x, 31 + y), cl, BF
    Line (32 + x, 23 + y)-(36 + x, 31 + y), cl, BF
End Sub

Sub letterH
    Line (4 + x, 4 + y)-(8 + x, 36 + y), cl, BF
    Line (32 + x, 4 + y)-(36 + x, 36 + y), cl, BF
    Line (4 + x, 18 + y)-(34 + x, 22 + y), cl, BF
End Sub

Sub letterI
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cl, BF
    Line (18 + x, 31 + y)-(22 + x, 9 + y), cl, BF
    Line (8 + x, 8 + y)-(32 + x, 3 + y), cl, BF
End Sub

Sub letterJ
    Line (6 + x, 36 + y)-(34 + x, 32 + y), cl, BF
    Line (32 + x, 4 + y)-(36 + x, 34 + y), cl, BF
    Line (4 + x, 18 + y)-(8 + x, 34 + y), cl, BF
    Line (9 + x, 31 + y)-(10 + x, 31 + y), cl
    Line (30 + x, 31 + y)-(31 + x, 31 + y), cl
    PSet (9 + x, 30 + y), cl: PSet (31 + x, 30 + y), cl
    PSet (5 + x, 35 + y), cl: PSet (35 + x, 35 + y), cl
End Sub

Sub king
End Sub

Sub queen
End Sub

Sub bishop
End Sub

Sub knight
End Sub

Sub rook
End Sub

Sub pawn
End Sub

Sub cannon
End Sub

Sub general
End Sub

Sub tokin
End Sub

Sub arrow
End Sub

Sub dragon
End Sub

Sub horse
End Sub

Sub cells
    Line (x, y)-(x + 40, y + 40), cd1, BF
    Line (x - 1, y - 1)-(x + 41, y + 41), cb1, B
End Sub

Sub dices
    Line (20, 160)-(60, 200), cd1, BF
    Line (20, 220)-(60, 260), cd1, BF
    Line (20, 280)-(60, 320), cd1, BF
    Line (580, 160)-(620, 200), cd1, BF
    Line (580, 220)-(620, 260), cd1, BF
    Line (580, 280)-(620, 320), cd1, BF
    Line (19, 159)-(61, 201), cb1, B
    Line (19, 219)-(61, 261), cb1, B
    Line (19, 279)-(61, 321), cb1, B
    Line (579, 159)-(621, 201), cb1, B
    Line (579, 219)-(621, 261), cb1, B
    Line (579, 279)-(621, 321), cb1, B
End Sub

Sub chessboard
    Line (160, 80)-(480, 400), cb2, BF
    For x = 160 To 480 Step 40
        Line (x, 80)-(x, 400), cb1
    Next x
    For y = 80 To 400 Step 40
        Line (160, y)-(480, y), cb1
    Next y
    For y = 320 To 80 Step -80: For x = 400 To 160 Step -80
        Line (x + 1, y + 1)-(x + 39, y + 39), cb3, BF
        Line (x + 41, y + 41)-(x + 79, y + 79), cb3, BF
    Next x: Next y
End Sub

Sub makrukboard
    Line (160, 80)-(480, 400), cb2, BF
    For x = 160 To 480 Step 40
        Line (x, 80)-(x, 400), cb1
    Next x
    For y = 80 To 400 Step 40
        Line (160, y)-(480, y), cb1
    Next y
End Sub

Sub shogiboard
    Line (140, 60)-(500, 420), cb2, BF
    For x = 140 To 500 Step 40
        Line (x, 60)-(x, 420), cb1
    Next x
    For y = 60 To 400 Step 40
        Line (140, y)-(500, y), cb1
    Next y
End Sub

Sub xiangqiboard
    Line (140, 40)-(500, 440), cb2, BF
    For x = 140 To 500 Step 40
        Line (x, 40)-(x, 440), cb1
    Next x
    For y = 40 To 440 Step 40
        Line (140, y)-(500, y), cb1
    Next y
    Line (259, 161)-(381, 159), cb4, BF
    Line (259, 41)-(261, 159), cb4, BF
    Line (379, 41)-(381, 159), cb4, BF
    Line (259, 321)-(381, 319), cb4, BF
    Line (259, 439)-(261, 319), cb4, BF
    Line (379, 439)-(381, 319), cb4, BF
    Line (141, 238)-(499, 242), cb5, BF
End Sub

Sub draughtsboard
    Line (120, 40)-(520, 440), cb2, BF
    For x = 120 To 520 Step 40
        Line (x, 40)-(x, 440), cb1
    Next x
    For y = 40 To 440 Step 40
        Line (120, y)-(520, y), cb1
    Next y
    For y = 360 To 40 Step -80: For x = 440 To 120 Step -80
        Line (x + 1, y + 1)-(x + 39, y + 39), cb3, BF
        Line (x + 41, y + 41)-(x + 79, y + 79), cb3, BF
    Next x: Next y
End Sub
