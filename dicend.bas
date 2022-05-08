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
declare sub lance as type integer
declare sub general as type integer
declare sub tokin as type integer
declare sub dragon as type integer
declare sub horse as type integer
declare sub checker as type integer
declare sub draught as type integer
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
Let cd1 = 2: Let cd2 = 15: Let cn = 7: Let cl = 14: Let cf = 15: Let cb1 = 7: Let cb2 = 6: Let cb3 = 3: Let cb4 = 13: Let cb5 = 9

Let cf = 1: Color 14
Print "浜様様様様様様�"; "浜様様様様様様�"; "浜様様様様様様様�"; "浜様様様様様様様様様様様様様様様�"
Print "�             �"; "�             �"; "�               �"; "�                               �"
Print "�  1 - CHESS  �"; "� 2 - MAKRUK  �"; "�  3 - XIANGQI  �"; "�           4 - SHOGI           �"
Print "�             �"; "�             �"; "�               �"; "�                               �"
Print "麺様様様様様様�"; "麺様様様様様様�"; "麺様様様様様様様�"; "麺様様様様様様様様様様様様様様様�"
Print "�             �"; "�             �"; "�               �"; "�                               �"
Print "�             �"; "�             �"; "�               �"; "�                               �"
Print "�             �"; "�             �"; "�               �"; "�                               �"
Print "�             �"; "�             �"; "�               �"; "�                               �"
Print "�             �"; "�             �"; "�               �"; "�                               �"
Print "�             �"; "�             �"; "�               �"; "�                               �"
Print "�             �"; "�             �"; "�               �"; "�                               �"
Print "�             �"; "�             �"; "�               �"; "�                               �"
Print "�             �"; "�             �"; "�               �"; "�                               �"
Print "�             �"; "�             �"; "�               �"; "�                               �"
Print "�             �"; "�             �"; "�               �"; "�                               �"
Print "�             �"; "�             �"; "�               �"; "�                               �"
Print "�             �"; "�             �"; "�               �"; "�                               �"
Print "�             �"; "�             �"; "�               �"; "�                               �"
Print "�             �"; "�             �"; "�               �"; "�                    浜様様様様郵"
Print "�             �"; "�             �"; "�               �"; "�              浜様様�          �"
Print "�             �"; "�             �"; "�               �"; "�              �  5 - DRAUGHTS  �"
Print "�             �"; "�             �"; "�               �"; "�              �                �"
Print "藩様様様様様様�"; "藩様様様様様様�"; "�               �"; "麺様様様様様様擁様様様様様様様様�"
Print "               "; "               "; "�               �"; "�                               �"
Print "               "; "               "; "�               �"; "�                               �"
Print "               "; "               "; "藩様様様様様様様�"; "�                               �"
Print "               "; "               "; "                 "; "藩様様様様様様様様様様様様様様様�"
Color 12: Locate 25, 1
Print " 浜様様様様様様様様様様様様融"
Print " � Press key to select game �"
Print " 藩様様様様様様様様様様様様夕"

Color 11
Let x = 12: For y = 77 To 327 Step 50
    Call cells
Next y
Let x = 12: Let y = 77: Call king
Let x = 12: Let y = 127: Call queen
Let x = 12: Let y = 177: Call bishop
Let x = 12: Let y = 227: Call knight
Let x = 12: Let y = 277: Call rook
Let x = 12: Let y = 327: Call pawn
Locate 7, 9: Print "King": Locate 10, 9: Print "Queen"
Locate 13, 9: Print "Bishop": Locate 16, 9: Print "Knight"
Locate 19, 9: Print "Rook": Locate 22, 9: Print "Pawn"
Let x = 132: For y = 77 To 327 Step 50
    Call cells
Next y
Let x = 132: Let y = 77: Call king
Let x = 132: Let y = 127: Call queen
Let x = 132: Let y = 177: Call bishop
Let x = 132: Let y = 227: Call knight
Let x = 132: Let y = 277: Call rook
Let x = 132: Let y = 327: Call pawn
Locate 7, 24: Print "Lord": Locate 10, 24: Print "Seed"
Locate 13, 24: Print "Noble": Locate 16, 24: Print "Horse"
Locate 19, 24: Print "Boat": Locate 22, 24: Print "Shell"
Let x = 252: For y = 77 To 377 Step 50
    Call cells
Next y
Let x = 252: Let y = 77: Call king
Let x = 252: Let y = 127: Call queen
Let x = 252: Let y = 177: Call bishop
Let x = 252: Let y = 227: Call knight
Let x = 252: Let y = 277: Call rook
Let x = 252: Let y = 327: Call cannon
Let x = 252: Let y = 377: Call pawn
Locate 7, 39: Print "General": Locate 10, 39: Print "Advisor"
Locate 13, 39: Print "Elephant": Locate 16, 39: Print "Horse"
Locate 19, 39: Print "Chariot": Locate 22, 39: Print "Cannon"
Locate 25, 39: Print "Soldier"
Let x = 387: For y = 77 To 327 Step 50
    Call cells
Next y
Let x = 497: For y = 77 To 277 Step 50
    Call cells
Next y
Let x = 387: Let y = 77: Call king
Let x = 387: Let y = 127: Call queen
Let x = 387: Let y = 177: Call general
Let x = 387: Let y = 227: Call bishop
Let x = 387: Let y = 277: Call knight
Let x = 387: Let y = 327: Call rook
Let x = 497: Let y = 77: Call lance
Let x = 497: Let y = 127: Call pawn
Let x = 497: Let y = 177: Call tokin
Let x = 497: Let y = 227: Call dragon
Let x = 497: Let y = 277: Call horse
Locate 7, 56: Print "King": Locate 10, 56: Print "Gold"
Locate 13, 56: Print "Silver": Locate 16, 56: Print "Bishop"
Locate 19, 56: Print "Knight": Locate 22, 56: Print "Rook"
Locate 7, 70: Print "Lance": Locate 10, 70: Print "Pawn"
Locate 13, 70: Print "Tokin": Locate 16, 70: Print "Dragon"
Locate 19, 70: Print "Horse"
Let x = 387: Let y = 387
Call cells: Call draught
Let x = 497: Let y = 387
Call cells: Call checker
Locate 26, 56: Print "King": Locate 26, 70: Print "Checker"

Select Case InKey$
    Case Chr$(49)
        Print " S O B O L "
        Call chessboard
    Case Chr$(50)
        Call makrukboard
    Case Chr$(51)
        Call xiangqiboard
    Case Chr$(52)
        Call shogiboard
    Case Chr$(53)
        Call draughtsboard
        '    Case Chr$(27)
        '       End
        '      Rem Case Else
End Select

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
If dc3 = 8 Then Let fw$ = "White lance"
If dc3 = 9 Then Let fw$ = "White tokin"
If dc3 = 10 Then Let fw$ = "White horse"
If dc3 = 11 Then Let fw$ = "White dragon"

If dc6 = 1 Then Let fb$ = "Black king"
If dc6 = 2 Then Let fb$ = "Black queen"
If dc6 = 3 Then Let fb$ = "Black bishop"
If dc6 = 4 Then Let fb$ = "Black knight"
If dc6 = 5 Then Let fb$ = "Black rook"
If dc6 = 6 Then Let fb$ = "Black pawn"
If dc6 = 7 Then Let fb$ = "Black cannon"
If dc6 = 8 Then Let fb$ = "Black lance"
If dc6 = 9 Then Let fb$ = "Black tokin"
If dc6 = 10 Then Let fb$ = "Black horse"
If dc6 = 11 Then Let fb$ = "Black dragon"

Do: Loop While InKey$ = ""

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
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (12 + x, 31 + y)-(28 + x, 31 + y), cf
    Line (13 + x, 30 + y)-(27 + x, 30 + y), cf
    Line (14 + x, 29 + y)-(26 + x, 29 + y), cf
    Line (15 + x, 28 + y)-(25 + x, 28 + y), cf
    Line (16 + x, 27 + y)-(24 + x, 10 + y), cf, BF
    Line (15 + x, 24 + y)-(25 + x, 24 + y), cf
    Line (14 + x, 23 + y)-(26 + x, 23 + y), cf
    Line (13 + x, 22 + y)-(27 + x, 22 + y), cf
    Line (12 + x, 21 + y)-(28 + x, 21 + y), cf
    Line (11 + x, 20 + y)-(29 + x, 20 + y), cf
    Line (10 + x, 19 + y)-(30 + x, 19 + y), cf
    Line (9 + x, 18 + y)-(31 + x, 18 + y), cf
    Line (8 + x, 17 + y)-(32 + x, 17 + y), cf
    Line (7 + x, 16 + y)-(33 + x, 16 + y), cf
    Line (6 + x, 15 + y)-(34 + x, 15 + y), cf
    Line (5 + x, 14 + y)-(35 + x, 14 + y), cf
    Line (4 + x, 13 + y)-(36 + x, 12 + y), cf, BF
    Line (4 + x, 11 + y)-(14 + x, 10 + y), cf, BF
    Line (5 + x, 9 + y)-(13 + x, 9 + y), cf
    Line (6 + x, 8 + y)-(12 + x, 8 + y), cf
    Line (7 + x, 7 + y)-(11 + x, 7 + y), cf
    Line (26 + x, 11 + y)-(36 + x, 10 + y), cf, BF
    Line (27 + x, 9 + y)-(35 + x, 9 + y), cf
    Line (28 + x, 8 + y)-(34 + x, 8 + y), cf
    Line (29 + x, 7 + y)-(33 + x, 7 + y), cf
    Line (17 + x, 9 + y)-(23 + x, 8 + y), cf, BF
    Line (18 + x, 7 + y)-(22 + x, 6 + y), cf, BF
    Line (19 + x, 5 + y)-(21 + x, 4 + y), cf, BF
End Sub

Sub queen
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (9 + x, 31 + y)-(31 + x, 31 + y), cf
    Line (10 + x, 30 + y)-(30 + x, 30 + y), cf
    Line (11 + x, 29 + y)-(29 + x, 29 + y), cf
    Line (12 + x, 28 + y)-(28 + x, 14 + y), cf, BF
    Line (11 + x, 24 + y)-(29 + x, 24 + y), cf
    Line (10 + x, 23 + y)-(30 + x, 23 + y), cf
    Line (9 + x, 22 + y)-(31 + x, 22 + y), cf
    Line (8 + x, 21 + y)-(32 + x, 21 + y), cf
    Line (7 + x, 20 + y)-(33 + x, 20 + y), cf
    Line (6 + x, 19 + y)-(34 + x, 18 + y), cf, BF
    Line (6 + x, 17 + y)-(7 + x, 10 + y), cf, BF
    Line (5 + x, 11 + y)-(8 + x, 14 + y), cf, BF
    Line (4 + x, 12 + y)-(9 + x, 13 + y), cf, BF
    Line (34 + x, 17 + y)-(33 + x, 10 + y), cf, BF
    Line (35 + x, 11 + y)-(32 + x, 14 + y), cf, BF
    Line (36 + x, 12 + y)-(31 + x, 13 + y), cf, BF
    Line (12 + x, 13 + y)-(13 + x, 6 + y), cf, BF
    Line (11 + x, 7 + y)-(14 + x, 10 + y), cf, BF
    Line (10 + x, 8 + y)-(15 + x, 9 + y), cf, BF
    Line (27 + x, 13 + y)-(28 + x, 6 + y), cf, BF
    Line (26 + x, 7 + y)-(29 + x, 10 + y), cf, BF
    Line (25 + x, 8 + y)-(30 + x, 9 + y), cf, BF
    Line (19 + x, 13 + y)-(21 + x, 4 + y), cf, BF
    Line (18 + x, 5 + y)-(22 + x, 8 + y), cf, BF
    Line (17 + x, 6 + y)-(23 + x, 7 + y), cf, BF
End Sub

Sub bishop
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (18 + x, 31 + y)-(22 + x, 6 + y), cf, BF
    Line (19 + x, 5 + y)-(21 + x, 4 + y), cf, BF
    Line (12 + x, 31 + y)-(28 + x, 31 + y), cf
    Line (13 + x, 30 + y)-(27 + x, 30 + y), cf
    Line (14 + x, 29 + y)-(26 + x, 29 + y), cf
    Line (15 + x, 28 + y)-(25 + x, 28 + y), cf
    Line (16 + x, 27 + y)-(24 + x, 27 + y), cf
    Line (17 + x, 26 + y)-(23 + x, 26 + y), cf
    Line (17 + x, 21 + y)-(23 + x, 8 + y), cf, BF
    Line (16 + x, 19 + y)-(24 + x, 10 + y), cf, BF
    Line (15 + x, 17 + y)-(25 + x, 12 + y), cf, BF
    Line (14 + x, 15 + y)-(26 + x, 14 + y), cf, BF
End Sub

Sub knight
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (12 + x, 31 + y)-(28 + x, 31 + y), cf
    Line (13 + x, 30 + y)-(29 + x, 30 + y), cf
    Line (14 + x, 29 + y)-(30 + x, 29 + y), cf
    Line (15 + x, 28 + y)-(31 + x, 28 + y), cf
    Line (16 + x, 27 + y)-(32 + x, 27 + y), cf
    Line (17 + x, 26 + y)-(33 + x, 26 + y), cf
    Line (18 + x, 25 + y)-(34 + x, 25 + y), cf
    Line (19 + x, 24 + y)-(35 + x, 24 + y), cf
    Line (20 + x, 23 + y)-(36 + x, 18 + y), cf, BF
    Line (4 + x, 17 + y)-(35 + x, 17 + y), cf
    Line (4 + x, 16 + y)-(34 + x, 16 + y), cf
    Line (5 + x, 15 + y)-(33 + x, 15 + y), cf
    Line (6 + x, 14 + y)-(32 + x, 14 + y), cf
    Line (7 + x, 13 + y)-(31 + x, 13 + y), cf
    Line (8 + x, 12 + y)-(30 + x, 12 + y), cf
    Line (9 + x, 11 + y)-(29 + x, 11 + y), cf
    Line (10 + x, 10 + y)-(28 + x, 10 + y), cf
    Line (11 + x, 9 + y)-(27 + x, 9 + y), cf
    Line (12 + x, 8 + y)-(26 + x, 8 + y), cf
    Line (13 + x, 7 + y)-(25 + x, 7 + y), cf
    Line (14 + x, 6 + y)-(24 + x, 6 + y), cf
    Line (15 + x, 5 + y)-(23 + x, 5 + y), cf
    Line (16 + x, 4 + y)-(22 + x, 4 + y), cf
End Sub

Sub rook
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (4 + x, 4 + y)-(8 + x, 12 + y), cf, BF
    Line (13 + x, 4 + y)-(17 + x, 12 + y), cf, BF
    Line (23 + x, 4 + y)-(27 + x, 12 + y), cf, BF
    Line (32 + x, 4 + y)-(36 + x, 12 + y), cf, BF
    Line (4 + x, 12 + y)-(36 + x, 16 + y), cf, BF
    Line (12 + x, 16 + y)-(28 + x, 32 + y), cf, BF
    Line (9 + x, 16 + y)-(11 + x, 16 + y), cf
    Line (29 + x, 16 + y)-(31 + x, 16 + y), cf
    Line (10 + x, 17 + y)-(11 + x, 17 + y), cf
    Line (29 + x, 17 + y)-(30 + x, 17 + y), cf
    PSet (11 + x, 18 + y), cf: PSet (29 + x, 18 + y), cf
    Line (9 + x, 31 + y)-(11 + x, 31 + y), cf
    Line (29 + x, 31 + y)-(31 + x, 31 + y), cf
    Line (10 + x, 30 + y)-(11 + x, 30 + y), cf
    Line (29 + x, 30 + y)-(30 + x, 30 + y), cf
    PSet (11 + x, 29 + y), cf: PSet (29 + x, 29 + y), cf
End Sub

Sub pawn
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (18 + x, 32 + y)-(22 + x, 4 + y), cf, BF
    Line (12 + x, 9 + y)-(28 + x, 14 + y), cf, BF
    Line (9 + x, 31 + y)-(31 + x, 31 + y), cf
    Line (10 + x, 30 + y)-(30 + x, 30 + y), cf
    Line (11 + x, 29 + y)-(29 + x, 29 + y), cf
    Line (12 + x, 28 + y)-(28 + x, 28 + y), cf
    Line (13 + x, 27 + y)-(27 + x, 27 + y), cf
    Line (14 + x, 26 + y)-(26 + x, 26 + y), cf
    Line (15 + x, 25 + y)-(25 + x, 25 + y), cf
    Line (16 + x, 24 + y)-(24 + x, 24 + y), cf
    Line (17 + x, 23 + y)-(23 + x, 23 + y), cf
    Line (17 + x, 19 + y)-(23 + x, 19 + y), cf
    Line (16 + x, 18 + y)-(24 + x, 18 + y), cf
    Line (15 + x, 17 + y)-(25 + x, 17 + y), cf
    Line (14 + x, 16 + y)-(26 + x, 16 + y), cf
    Line (13 + x, 15 + y)-(27 + x, 15 + y), cf
    Line (13 + x, 8 + y)-(27 + x, 8 + y), cf
    Line (14 + x, 7 + y)-(26 + x, 7 + y), cf
    Line (15 + x, 6 + y)-(25 + x, 6 + y), cf
    Line (16 + x, 5 + y)-(24 + x, 5 + y), cf
    Line (17 + x, 4 + y)-(23 + x, 4 + y), cf
End Sub

Sub cannon
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (9 + x, 31 + y)-(31 + x, 31 + y), cf
    Line (10 + x, 30 + y)-(30 + x, 30 + y), cf
    Line (11 + x, 29 + y)-(29 + x, 29 + y), cf
    Line (12 + x, 28 + y)-(28 + x, 28 + y), cf
    Line (13 + x, 27 + y)-(27 + x, 27 + y), cf
    Line (14 + x, 26 + y)-(26 + x, 26 + y), cf
    Line (15 + x, 25 + y)-(25 + x, 25 + y), cf
    Line (16 + x, 24 + y)-(24 + x, 4 + y), cf, BF
    Line (6 + x, 9 + y)-(36 + x, 12 + y), cf, BF
    Line (4 + x, 10 + y)-(6 + x, 11 + y), cf, BF
    Line (14 + x, 16 + y)-(25 + x, 16 + y), cf
    Line (12 + x, 15 + y)-(26 + x, 15 + y), cf
    Line (10 + x, 14 + y)-(27 + x, 14 + y), cf
    Line (8 + x, 13 + y)-(28 + x, 13 + y), cf
    Line (8 + x, 8 + y)-(28 + x, 8 + y), cf
    Line (10 + x, 7 + y)-(27 + x, 7 + y), cf
    Line (12 + x, 6 + y)-(26 + x, 6 + y), cf
    Line (14 + x, 5 + y)-(25 + x, 5 + y), cf
    Line (16 + x, 4 + y)-(24 + x, 4 + y), cf
End Sub

Sub general
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (9 + x, 31 + y)-(31 + x, 31 + y), cf
    Line (10 + x, 30 + y)-(30 + x, 30 + y), cf
    Line (11 + x, 29 + y)-(29 + x, 29 + y), cf
    Line (12 + x, 28 + y)-(28 + x, 28 + y), cf
    Line (13 + x, 27 + y)-(27 + x, 27 + y), cf
    Line (14 + x, 26 + y)-(26 + x, 26 + y), cf
    Line (13 + x, 25 + y)-(27 + x, 22 + y), cf, BF
    Line (16 + x, 21 + y)-(24 + x, 20 + y), cf, BF
    Line (18 + x, 19 + y)-(22 + x, 12 + y), cf, BF
    Line (19 + x, 11 + y)-(21 + x, 4 + y), cf, BF
    Line (18 + x, 10 + y)-(22 + x, 5 + y), cf, BF
    Line (17 + x, 9 + y)-(23 + x, 6 + y), cf, BF
    Line (16 + x, 8 + y)-(24 + x, 7 + y), cf, BF
    Line (15 + x, 20 + y)-(16 + x, 19 + y), cf, BF
    Line (14 + x, 19 + y)-(15 + x, 18 + y), cf, BF
    Line (13 + x, 18 + y)-(14 + x, 17 + y), cf, BF
    Line (24 + x, 20 + y)-(25 + x, 19 + y), cf, BF
    Line (25 + x, 19 + y)-(26 + x, 18 + y), cf, BF
    Line (26 + x, 18 + y)-(27 + x, 17 + y), cf, BF
    Line (11 + x, 18 + y)-(12 + x, 11 + y), cf, BF
    Line (10 + x, 17 + y)-(13 + x, 12 + y), cf, BF
    Line (9 + x, 16 + y)-(14 + x, 13 + y), cf, BF
    Line (8 + x, 15 + y)-(15 + x, 14 + y), cf, BF
    Line (28 + x, 18 + y)-(29 + x, 11 + y), cf, BF
    Line (27 + x, 17 + y)-(30 + x, 12 + y), cf, BF
    Line (26 + x, 16 + y)-(31 + x, 13 + y), cf, BF
    Line (25 + x, 15 + y)-(32 + x, 14 + y), cf, BF
    Line (4 + x, 24 + y)-(36 + x, 23 + y), cf, BF
    Line (29 + x, 25 + y)-(35 + x, 22 + y), cf, BF
    Line (30 + x, 26 + y)-(34 + x, 21 + y), cf, BF
    Line (31 + x, 27 + y)-(33 + x, 20 + y), cf, BF
    Line (5 + x, 25 + y)-(11 + x, 22 + y), cf, BF
    Line (6 + x, 26 + y)-(10 + x, 21 + y), cf, BF
    Line (7 + x, 27 + y)-(9 + x, 20 + y), cf, BF
End Sub

Sub tokin
    Line (10 + x, 10 + y)-(30 + x, 30 + y), cf, BF
    Line (4 + x, 4 + y)-(5 + x, 5 + y), cf, BF
    Line (5 + x, 5 + y)-(7 + x, 7 + y), cf, BF
    Line (6 + x, 6 + y)-(9 + x, 9 + y), cf, BF
    Line (7 + x, 7 + y)-(11 + x, 11 + y), cf, BF
    Line (8 + x, 8 + y)-(12 + x, 12 + y), cf, BF
    Line (36 + x, 4 + y)-(35 + x, 5 + y), cf, BF
    Line (35 + x, 5 + y)-(33 + x, 7 + y), cf, BF
    Line (34 + x, 6 + y)-(31 + x, 9 + y), cf, BF
    Line (33 + x, 7 + y)-(29 + x, 11 + y), cf, BF
    Line (32 + x, 8 + y)-(28 + x, 12 + y), cf, BF
    Line (36 + x, 36 + y)-(35 + x, 35 + y), cf, BF
    Line (35 + x, 35 + y)-(33 + x, 33 + y), cf, BF
    Line (34 + x, 34 + y)-(31 + x, 31 + y), cf, BF
    Line (33 + x, 33 + y)-(29 + x, 29 + y), cf, BF
    Line (32 + x, 32 + y)-(28 + x, 28 + y), cf, BF
    Line (4 + x, 36 + y)-(5 + x, 35 + y), cf, BF
    Line (5 + x, 35 + y)-(7 + x, 33 + y), cf, BF
    Line (6 + x, 34 + y)-(9 + x, 31 + y), cf, BF
    Line (7 + x, 33 + y)-(11 + x, 29 + y), cf, BF
    Line (8 + x, 32 + y)-(12 + x, 28 + y), cf, BF
    Line (17 + x, 9 + y)-(23 + x, 8 + y), cf, BF
    Line (18 + x, 7 + y)-(22 + x, 6 + y), cf, BF
    Line (19 + x, 5 + y)-(21 + x, 4 + y), cf, BF
    Line (17 + x, 31 + y)-(23 + x, 32 + y), cf, BF
    Line (18 + x, 33 + y)-(22 + x, 34 + y), cf, BF
    Line (19 + x, 35 + y)-(21 + x, 36 + y), cf, BF
    Line (8 + x, 17 + y)-(9 + x, 23 + y), cf, BF
    Line (6 + x, 18 + y)-(7 + x, 22 + y), cf, BF
    Line (4 + x, 19 + y)-(5 + x, 21 + y), cf, BF
    Line (32 + x, 17 + y)-(31 + x, 23 + y), cf, BF
    Line (34 + x, 18 + y)-(33 + x, 22 + y), cf, BF
    Line (36 + x, 19 + y)-(35 + x, 21 + y), cf, BF
End Sub

Sub lance
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (9 + x, 31 + y)-(31 + x, 31 + y), cf
    Line (10 + x, 30 + y)-(30 + x, 30 + y), cf
    Line (11 + x, 29 + y)-(29 + x, 29 + y), cf
    Line (12 + x, 28 + y)-(28 + x, 28 + y), cf
    Line (13 + x, 27 + y)-(27 + x, 27 + y), cf
    Line (14 + x, 26 + y)-(26 + x, 24 + y), cf, BF
    Line (15 + x, 23 + y)-(25 + x, 20 + y), cf, BF
    Line (16 + x, 19 + y)-(24 + x, 16 + y), cf, BF
    Line (17 + x, 15 + y)-(23 + x, 12 + y), cf, BF
    Line (18 + x, 11 + y)-(22 + x, 8 + y), cf, BF
    Line (19 + x, 7 + y)-(21 + x, 4 + y), cf, BF
End Sub

Sub dragon
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (9 + x, 31 + y)-(31 + x, 31 + y), cf
    Line (10 + x, 30 + y)-(30 + x, 30 + y), cf
    Line (11 + x, 29 + y)-(29 + x, 29 + y), cf
    Line (12 + x, 28 + y)-(28 + x, 28 + y), cf
    Line (13 + x, 27 + y)-(27 + x, 27 + y), cf
    Line (14 + x, 26 + y)-(26 + x, 26 + y), cf
    Line (15 + x, 25 + y)-(25 + x, 25 + y), cf
    Line (15 + x, 20 + y)-(25 + x, 20 + y), cf
    Line (14 + x, 19 + y)-(26 + x, 19 + y), cf
    Line (13 + x, 18 + y)-(27 + x, 18 + y), cf
    Line (16 + x, 24 + y)-(24 + x, 8 + y), cf, BF
    Line (17 + x, 7 + y)-(23 + x, 6 + y), cf, BF
    Line (18 + x, 5 + y)-(22 + x, 5 + y), cf
    Line (19 + x, 4 + y)-(21 + x, 4 + y), cf
    Line (9 + x, 12 + y)-(31 + x, 17 + y), cf, BF
    Line (10 + x, 11 + y)-(13 + x, 11 + y), cf
    Line (11 + x, 10 + y)-(12 + x, 10 + y), cf
    Line (27 + x, 11 + y)-(30 + x, 11 + y), cf
    Line (28 + x, 10 + y)-(29 + x, 10 + y), cf
    Line (10 + x, 11 + y)-(10 + x, 18 + y), cf
    Line (9 + x, 12 + y)-(9 + x, 19 + y), cf
    Line (8 + x, 13 + y)-(8 + x, 20 + y), cf
    Line (7 + x, 14 + y)-(7 + x, 21 + y), cf
    Line (6 + x, 15 + y)-(6 + x, 22 + y), cf
    Line (5 + x, 16 + y)-(5 + x, 23 + y), cf
    Line (4 + x, 17 + y)-(4 + x, 24 + y), cf
    Line (30 + x, 11 + y)-(30 + x, 18 + y), cf
    Line (31 + x, 12 + y)-(31 + x, 19 + y), cf
    Line (32 + x, 13 + y)-(32 + x, 20 + y), cf
    Line (33 + x, 14 + y)-(33 + x, 21 + y), cf
    Line (34 + x, 15 + y)-(34 + x, 22 + y), cf
    Line (35 + x, 16 + y)-(35 + x, 23 + y), cf
    Line (36 + x, 17 + y)-(36 + x, 24 + y), cf
End Sub

Sub horse
    Line (8 + x, 36 + y)-(32 + x, 32 + y), cf, BF
    Line (10 + x, 31 + y)-(11 + x, 26 + y), cf, BF
    Line (16 + x, 31 + y)-(17 + x, 26 + y), cf, BF
    Line (23 + x, 31 + y)-(24 + x, 26 + y), cf, BF
    Line (29 + x, 31 + y)-(30 + x, 26 + y), cf, BF
    Line (8 + x, 25 + y)-(32 + x, 14 + y), cf, BF
    Line (7 + x, 24 + y)-(7 + x, 15 + y), cf
    Line (6 + x, 23 + y)-(6 + x, 16 + y), cf
    Line (5 + x, 22 + y)-(5 + x, 17 + y), cf
    Line (4 + x, 21 + y)-(4 + x, 18 + y), cf
    Line (33 + x, 24 + y)-(33 + x, 15 + y), cf
    Line (34 + x, 23 + y)-(34 + x, 16 + y), cf
    Line (35 + x, 22 + y)-(35 + x, 17 + y), cf
    Line (36 + x, 21 + y)-(36 + x, 18 + y), cf
    Line (14 + x, 13 + y)-(26 + x, 10 + y), cf, BF
    Line (10 + x, 9 + y)-(30 + x, 7 + y), cf, BF
    Line (10 + x, 6 + y)-(13 + x, 6 + y), cf
    Line (10 + x, 5 + y)-(12 + x, 5 + y), cf
    Line (10 + x, 4 + y)-(11 + x, 4 + y), cf
    Line (30 + x, 6 + y)-(27 + x, 6 + y), cf
    Line (30 + x, 5 + y)-(28 + x, 5 + y), cf
    Line (30 + x, 4 + y)-(29 + x, 4 + y), cf
    Line (16 + x, 6 + y)-(24 + x, 6 + y), cf
    Line (17 + x, 5 + y)-(23 + x, 5 + y), cf
    Line (18 + x, 4 + y)-(22 + x, 4 + y), cf
End Sub

Sub checker
    Line (14 + x, 36 + y)-(26 + x, 32 + y), cf, BF
    Line (14 + x, 4 + y)-(26 + x, 8 + y), cf, BF
    Line (4 + x, 14 + y)-(8 + x, 26 + y), cf, BF
    Line (32 + x, 14 + y)-(36 + x, 26 + y), cf, BF
    Line (13 + x, 35 + y)-(13 + x, 31 + y), cf
    Line (12 + x, 34 + y)-(12 + x, 30 + y), cf
    Line (11 + x, 33 + y)-(11 + x, 29 + y), cf
    Line (10 + x, 32 + y)-(10 + x, 28 + y), cf
    Line (9 + x, 31 + y)-(9 + x, 27 + y), cf
    Line (8 + x, 30 + y)-(8 + x, 26 + y), cf
    Line (27 + x, 35 + y)-(27 + x, 31 + y), cf
    Line (28 + x, 34 + y)-(28 + x, 30 + y), cf
    Line (29 + x, 33 + y)-(29 + x, 29 + y), cf
    Line (30 + x, 32 + y)-(30 + x, 28 + y), cf
    Line (31 + x, 31 + y)-(31 + x, 27 + y), cf
    Line (32 + x, 30 + y)-(32 + x, 26 + y), cf
    Line (13 + x, 5 + y)-(13 + x, 9 + y), cf
    Line (12 + x, 6 + y)-(12 + x, 10 + y), cf
    Line (11 + x, 7 + y)-(11 + x, 11 + y), cf
    Line (10 + x, 8 + y)-(10 + x, 12 + y), cf
    Line (9 + x, 9 + y)-(9 + x, 13 + y), cf
    Line (8 + x, 10 + y)-(8 + x, 14 + y), cf
    Line (27 + x, 5 + y)-(27 + x, 9 + y), cf
    Line (28 + x, 6 + y)-(28 + x, 10 + y), cf
    Line (29 + x, 7 + y)-(29 + x, 11 + y), cf
    Line (30 + x, 8 + y)-(30 + x, 12 + y), cf
    Line (31 + x, 9 + y)-(31 + x, 13 + y), cf
    Line (32 + x, 10 + y)-(32 + x, 14 + y), cf
    Line (5 + x, 13 + y)-(5 + x, 27 + y), cf
    Line (6 + x, 12 + y)-(6 + x, 28 + y), cf
    Line (7 + x, 11 + y)-(7 + x, 29 + y), cf
    Line (35 + x, 13 + y)-(35 + x, 27 + y), cf
    Line (34 + x, 12 + y)-(34 + x, 28 + y), cf
    Line (33 + x, 11 + y)-(33 + x, 29 + y), cf
    Line (17 + x, 28 + y)-(23 + x, 24 + y), cf, BF
    Line (17 + x, 12 + y)-(23 + x, 16 + y), cf, BF
    Line (12 + x, 17 + y)-(16 + x, 23 + y), cf, BF
    Line (24 + x, 17 + y)-(28 + x, 23 + y), cf, BF
    Line (18 + x, 28 + y)-(18 + x, 23 + y), cf
    Line (17 + x, 28 + y)-(17 + x, 22 + y), cf
    Line (16 + x, 27 + y)-(16 + x, 21 + y), cf
    Line (22 + x, 28 + y)-(22 + x, 23 + y), cf
    Line (23 + x, 28 + y)-(23 + x, 22 + y), cf
    Line (24 + x, 27 + y)-(24 + x, 21 + y), cf
    Line (18 + x, 12 + y)-(18 + x, 17 + y), cf
    Line (17 + x, 12 + y)-(17 + x, 18 + y), cf
    Line (16 + x, 13 + y)-(16 + x, 19 + y), cf
    Line (22 + x, 12 + y)-(22 + x, 17 + y), cf
    Line (23 + x, 12 + y)-(23 + x, 18 + y), cf
    Line (24 + x, 13 + y)-(24 + x, 19 + y), cf
    Line (13 + x, 16 + y)-(13 + x, 24 + y), cf
    Line (14 + x, 15 + y)-(14 + x, 25 + y), cf
    Line (15 + x, 14 + y)-(15 + x, 26 + y), cf
    Line (27 + x, 16 + y)-(27 + x, 24 + y), cf
    Line (26 + x, 15 + y)-(26 + x, 25 + y), cf
    Line (25 + x, 14 + y)-(25 + x, 26 + y), cf
End Sub

Sub draught
    Line (14 + x, 36 + y)-(26 + x, 28 + y), cf, BF
    Line (14 + x, 4 + y)-(26 + x, 12 + y), cf, BF
    Line (4 + x, 14 + y)-(12 + x, 26 + y), cf, BF
    Line (28 + x, 14 + y)-(36 + x, 26 + y), cf, BF
    Line (17 + x, 36 + y)-(17 + x, 27 + y), cf
    Line (16 + x, 36 + y)-(16 + x, 26 + y), cf
    Line (15 + x, 36 + y)-(15 + x, 25 + y), cf
    Line (14 + x, 36 + y)-(14 + x, 24 + y), cf
    Line (13 + x, 35 + y)-(13 + x, 23 + y), cf
    Line (12 + x, 34 + y)-(12 + x, 22 + y), cf
    Line (23 + x, 36 + y)-(23 + x, 27 + y), cf
    Line (24 + x, 36 + y)-(24 + x, 26 + y), cf
    Line (25 + x, 36 + y)-(25 + x, 25 + y), cf
    Line (26 + x, 36 + y)-(26 + x, 24 + y), cf
    Line (27 + x, 35 + y)-(27 + x, 23 + y), cf
    Line (28 + x, 34 + y)-(28 + x, 22 + y), cf
    Line (17 + x, 4 + y)-(17 + x, 13 + y), cf
    Line (16 + x, 4 + y)-(16 + x, 14 + y), cf
    Line (15 + x, 4 + y)-(15 + x, 15 + y), cf
    Line (14 + x, 4 + y)-(14 + x, 16 + y), cf
    Line (13 + x, 5 + y)-(13 + x, 17 + y), cf
    Line (12 + x, 6 + y)-(12 + x, 18 + y), cf
    Line (23 + x, 4 + y)-(23 + x, 13 + y), cf
    Line (24 + x, 4 + y)-(24 + x, 14 + y), cf
    Line (25 + x, 4 + y)-(25 + x, 15 + y), cf
    Line (26 + x, 4 + y)-(26 + x, 16 + y), cf
    Line (27 + x, 5 + y)-(27 + x, 17 + y), cf
    Line (28 + x, 6 + y)-(28 + x, 18 + y), cf
    Line (5 + x, 13 + y)-(5 + x, 27 + y), cf
    Line (6 + x, 12 + y)-(6 + x, 28 + y), cf
    Line (7 + x, 11 + y)-(7 + x, 29 + y), cf
    Line (8 + x, 10 + y)-(8 + x, 30 + y), cf
    Line (9 + x, 9 + y)-(9 + x, 31 + y), cf
    Line (10 + x, 8 + y)-(10 + x, 32 + y), cf
    Line (11 + x, 7 + y)-(11 + x, 33 + y), cf
    Line (35 + x, 13 + y)-(35 + x, 27 + y), cf
    Line (34 + x, 12 + y)-(34 + x, 28 + y), cf
    Line (33 + x, 11 + y)-(33 + x, 29 + y), cf
    Line (32 + x, 10 + y)-(32 + x, 30 + y), cf
    Line (31 + x, 9 + y)-(31 + x, 31 + y), cf
    Line (30 + x, 8 + y)-(30 + x, 32 + y), cf
    Line (29 + x, 7 + y)-(29 + x, 33 + y), cf
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
