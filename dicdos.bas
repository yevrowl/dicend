Screen 12
DefInt A-Z
Randomize Timer

declare sub dice1
declare sub dice2
declare sub dice3
declare sub dice4
declare sub dice5
declare sub dice6
declare sub dice7
declare sub dice8
declare sub dice9
declare sub dice0
declare sub number1
declare sub number2
declare sub number3
declare sub number4
declare sub number5
declare sub number6
declare sub number7
declare sub number8
declare sub number9
declare sub number0
declare sub numberA
declare sub numberB
declare sub numberC
declare sub numberD
declare sub numberE
declare sub numberF
declare sub numberG
declare sub numberH
declare sub numberI
declare sub numberJ
declare sub letter1
declare sub letter2
declare sub letter3
declare sub letter4
declare sub letter5
declare sub letter6
declare sub letter7
declare sub letter8
declare sub letter9
declare sub letter0
declare sub letterA
declare sub letterB
declare sub letterC
declare sub letterD
declare sub letterE
declare sub letterF
declare sub letterG
declare sub letterH
declare sub letterI
declare sub letterJ
declare sub king
declare sub queen
declare sub bishop
declare sub knight
declare sub rook
declare sub pawn
declare sub cannon
declare sub lance
declare sub general
declare sub tokin
declare sub dragon
declare sub horse
declare sub dame
declare sub checker
declare sub cells
declare sub dices
declare sub chessboard
declare sub makrukboard
declare sub xiangqiboard
declare sub shogiboard
declare sub draughtsboard
declare sub chess
declare sub makruk
declare sub xiangqi
declare sub shogi
declare sub draughts
declare sub chessfen
declare sub makrukfen
declare sub xiangqifen
declare sub shogifen
declare sub draughtsfen

Common Shared x, y, cd1, cd2, cn, cl, cf, cb1, cb2, cb3, cb4, cb5 As Integer
Common Shared dc1, dc2, dc3, dc4, dc5, dc6, w1, b1, w2, b2, w3, b3, w4, b4, fw1, fb1, fw2, fb2, fw3, fb3, fw4, fb4, row, col, index, count As Integer
Common Shared fw1x, fw1y, fb1x, fb1y, fw2x, fw2y, fb2x, fb2y, fw3x, fw3y, fb3x, fb3y, fw4x, fw4y, fb4x, fb4y As Integer
Common Shared fig1w, fig1b, fig2w, fig2b, fig3w, fig3b, fig4w, fig4b, mas1, mas2, mas3, mas4, mas5, mas6, mas7, mas8, mas9, mas0, lin1, lin2, lin3, lin4, lin5, lin6, lin7, lin8, lin9, lin0, fen As String
Let cd1 = 2: Let cd2 = 15: Let cn = 7: Let cl = 14: Let cf = 1: Let cb1 = 7: Let cb2 = 6: Let cb3 = 3: Let cb4 = 13: Let cb5 = 9

Dim Shared board(8, 8) As Integer
Let index = 100
For row = 1 To 8: For col = 1 To 8
    Let board(row, col) = index + 1
    Let index = index + 1
Next col: Next row

Dim Shared xiabo(10, 9) As Integer
Let index = 100
For row = 1 To 10: For col = 1 To 9
    Let xiabo(row, col) = index + 1
    Let index = index + 1
Next col: Next row

Dim Shared shobo(9, 9) As Integer
Let index = 100
For row = 1 To 9: For col = 1 To 9
    Let shobo(row, col) = index + 1
    Let index = index + 1
Next col: Next row

Dim Shared drabo(10, 10) As Integer
Let index = 100
For row = 1 To 10: For col = 1 To 10
    Let drabo(row, col) = index + 1
    Let index = index + 1
Next col: Let index = index + 1: Next row

Line (2, 2)-(122, 4), 14, BF: Line -(120, 338), 14, BF: Line -(2, 336), 14, BF: Line -(4, 2), 14, BF
Line (4, 42)-(120, 44), 14, BF: Paint (20, 20), 8, 14
Line (128, 2)-(248, 4), 14, BF: Line -(246, 338), 14, BF: Line -(128, 336), 14, BF: Line -(130, 2), 14, BF
Line (130, 42)-(246, 44), 14, BF: Paint (160, 20), 8, 14
Line (254, 2)-(394, 4), 14, BF: Line -(392, 386), 14, BF: Line -(254, 384), 14, BF: Line -(256, 2), 14, BF
Line (256, 42)-(392, 44), 14, BF: Paint (300, 20), 8, 14
Line (400, 2)-(637, 4), 14, BF: Line -(635, 338), 14, BF: Line -(400, 336), 14, BF: Line -(402, 2), 14, BF
Line (402, 42)-(635, 44), 14, BF: Paint (440, 20), 8, 14
Line (2, 344)-(248, 346), 14, BF: Line -(246, 432), 14, BF: Line -(2, 430), 14, BF: Line -(4, 344), 14, BF
Line (4, 378)-(246, 376), 14, BF: Paint (20, 360), 8, 14
Color 14, 8: Locate 2, 4: Print "1 - Chess": Locate 2, 19: Print "2 - Makruk": Locate 2, 36: Print "3 - Xiangqi": Locate 2, 61: Print "4 - Shogi": Locate 23, 10: Print "5 - Draughts"
Color 12, 0: Locate 23, 52: Print "Press number to select game": Locate 24, 59: Print "or Esc to exit"

Color 11, 0
Let x = 10: For y = 50 To 300 Step 48
    Call cells
Next y
Let x = 10: Let y = 50: Call king
Let x = 10: Let y = y + 48: Call queen
Let x = 10: Let y = y + 48: Call bishop
Let x = 10: Let y = y + 48: Call knight
Let x = 10: Let y = y + 48: Call rook
Let x = 10: Let y = y + 48: Call pawn
Locate 5, 9: Print "King": Locate 8, 9: Print "Queen"
Locate 11, 9: Print "Bishop": Locate 14, 9: Print "Knight"
Locate 17, 9: Print "Rook": Locate 20, 9: Print "Pawn"
Let x = 136: For y = 50 To 300 Step 48
    Call cells
Next y
Let x = 136: Let y = 50: Call king
Let x = 136: Let y = y + 48: Call queen
Let x = 136: Let y = y + 48: Call bishop
Let x = 136: Let y = y + 48: Call knight
Let x = 136: Let y = y + 48: Call rook
Let x = 136: Let y = y + 48: Call pawn
Locate 5, 25: Print "Lord": Locate 8, 25: Print "Seed"
Locate 11, 25: Print "Noble": Locate 14, 25: Print "Horse"
Locate 17, 25: Print "Boat": Locate 20, 25: Print "Shell"
Let x = 262: For y = 50 To 350 Step 48
    Call cells
Next y
Let x = 262: Let y = 50: Call king
Let x = 262: Let y = y + 48: Call queen
Let x = 262: Let y = y + 48: Call bishop
Let x = 262: Let y = y + 48: Call knight
Let x = 262: Let y = y + 48: Call rook
Let x = 262: Let y = y + 48: Call cannon
Let x = 262: Let y = y + 48: Call pawn
Locate 5, 41: Print "General": Locate 8, 41: Print "Advisor"
Locate 11, 41: Print "Elephant": Locate 14, 41: Print "Horse"
Locate 17, 41: Print "Chariot": Locate 20, 41: Print "Cannon"
Locate 23, 41: Print "Soldier"
Let x = 408: For y = 50 To 300 Step 48
    Call cells
Next y
Let x = 528: For y = 50 To 250 Step 48
    Call cells
Next y
Let x = 408: Let y = 50: Call king
Let x = 408: Let y = y + 48: Call queen
Let x = 408: Let y = y + 48: Call general
Let x = 408: Let y = y + 48: Call bishop
Let x = 408: Let y = y + 48: Call knight
Let x = 408: Let y = y + 48: Call rook
Let x = 528: Let y = 50: Call lance
Let x = 528: Let y = y + 48: Call pawn
Let x = 528: Let y = y + 48: Call horse
Let x = 528: Let y = y + 48: Call dragon
Let x = 528: Let y = y + 48: Call tokin
Locate 5, 59: Print "King": Locate 8, 59: Print "Gold"
Locate 11, 59: Print "Silver": Locate 14, 59: Print "Bishop"
Locate 17, 59: Print "Knight": Locate 20, 59: Print "Rook"
Locate 5, 74: Print "Lance": Locate 8, 74: Print "Pawn"
Locate 11, 74: Print "Horse": Locate 14, 74: Print "Dragon"
Locate 17, 74: Print "Tokin"
Let x = 10: Let y = 384
Call cells: Call checker
Let x = 136: Let y = 384
Call cells: Call dame
Locate 26, 9: Print "Checker": Locate 26, 25: Print "Dame"

Do
    Select Case InKey$
        Case Is = Chr$(49)
            Cls
            Call message
            Call chessboard
            Call dices
            Call chess
        Case Is = Chr$(50)
            Cls
            Call message
            Call makrukboard
            Call dices
            Call makruk
        Case Is = Chr$(51)
            Cls
            Call message
            Call xiangqiboard
            Call dices
            Call xiangqi
        Case Is = Chr$(52)
            Cls
            Call message
            Call shogiboard
            Call dices
            Call shogi
        Case Is = Chr$(53)
            Cls
            Call message
            Call draughtsboard
            Call dices
            Call draughts
        Case Is = Chr$(27)
            Exit Do
    End Select
Loop
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

Sub dame
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
    Let y = 405
    Let x = 175: Call numberA
    Let x = 215: Call numberB
    Let x = 255: Call numberC
    Let x = 295: Call numberD
    Let x = 335: Call numberE
    Let x = 375: Call numberF
    Let x = 415: Call numberG
    Let x = 455: Call numberH
    Let x = 145
    Let y = 95: Call number8
    Let y = 135: Call number7
    Let y = 175: Call number6
    Let y = 215: Call number5
    Let y = 255: Call number4
    Let y = 295: Call number3
    Let y = 335: Call number2
    Let y = 375: Call number1
End Sub

Sub makrukboard
    Line (160, 80)-(480, 400), cb2, BF
    For x = 160 To 480 Step 40
        Line (x, 80)-(x, 400), cb1
    Next x
    For y = 80 To 400 Step 40
        Line (160, y)-(480, y), cb1
    Next y
    Let y = 405
    Let x = 175: Call numberA
    Let x = 215: Call numberB
    Let x = 255: Call numberC
    Let x = 295: Call numberD
    Let x = 335: Call numberE
    Let x = 375: Call numberF
    Let x = 415: Call numberG
    Let x = 455: Call numberH
    Let x = 145
    Let y = 95: Call number8
    Let y = 135: Call number7
    Let y = 175: Call number6
    Let y = 215: Call number5
    Let y = 255: Call number4
    Let y = 295: Call number3
    Let y = 335: Call number2
    Let y = 375: Call number1
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
    Let y = 445
    Let x = 155: Call numberA
    Let x = 195: Call numberB
    Let x = 235: Call numberC
    Let x = 275: Call numberD
    Let x = 315: Call numberE
    Let x = 355: Call numberF
    Let x = 395: Call numberG
    Let x = 435: Call numberH
    Let x = 475: Call numberI
    Let x = 125
    Let y = 55: Call number0
    Let y = 95: Call number9
    Let y = 135: Call number8
    Let y = 175: Call number7
    Let y = 215: Call number6
    Let y = 255: Call number5
    Let y = 295: Call number4
    Let y = 335: Call number3
    Let y = 375: Call number2
    Let y = 415: Call number1
End Sub

Sub shogiboard
    Line (140, 60)-(500, 420), cb2, BF
    For x = 140 To 500 Step 40
        Line (x, 60)-(x, 420), cb1
    Next x
    For y = 60 To 400 Step 40
        Line (140, y)-(500, y), cb1
    Next y
    Let y = 425
    Let x = 155: Call numberA
    Let x = 195: Call numberB
    Let x = 235: Call numberC
    Let x = 275: Call numberD
    Let x = 315: Call numberE
    Let x = 355: Call numberF
    Let x = 395: Call numberG
    Let x = 435: Call numberH
    Let x = 475: Call numberI
    Let x = 125
    Let y = 75: Call number9
    Let y = 115: Call number8
    Let y = 155: Call number7
    Let y = 195: Call number6
    Let y = 235: Call number5
    Let y = 275: Call number4
    Let y = 315: Call number3
    Let y = 355: Call number2
    Let y = 395: Call number1
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
    Let y = 445
    Let x = 135: Call numberA
    Let x = 175: Call numberB
    Let x = 215: Call numberC
    Let x = 255: Call numberD
    Let x = 295: Call numberE
    Let x = 335: Call numberF
    Let x = 375: Call numberG
    Let x = 415: Call numberH
    Let x = 455: Call numberI
    Let x = 495: Call numberJ
    Let x = 105
    Let y = 55: Call number0
    Let y = 95: Call number9
    Let y = 135: Call number8
    Let y = 175: Call number7
    Let y = 215: Call number6
    Let y = 255: Call number5
    Let y = 295: Call number4
    Let y = 335: Call number3
    Let y = 375: Call number2
    Let y = 415: Call number1
End Sub

Sub chess

    Rem 1st roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 8 + 1)
    Let dc2 = Int(Rnd * 8 + 1)
    Let dc3 = 1
    Let dc4 = Int(Rnd * 8 + 1)
    Let dc5 = Int(Rnd * 8 + 1)
    Let dc6 = 1
    Let w1 = board(dc2, dc1): Let b1 = board(dc5, dc4)

    While Abs(w1 - b1) < 10
        Let count = count + 1
        Let dc1 = Int(Rnd * 8 + 1)
        Let dc2 = Int(Rnd * 8 + 1)
        Let dc4 = Int(Rnd * 8 + 1)
        Let dc5 = Int(Rnd * 8 + 1)
        Let w1 = board(dc2, dc1): Let b1 = board(dc5, dc4)
        If count > 8000 Then Exit While
    Wend

    Let w1 = board(dc2, dc1): Let b1 = board(dc5, dc4)
    Let fw1x = dc1: Let fw1y = dc2: Let fb1x = dc4: Let fb1y = dc5
    Let fw1 = dc3: Let fb1 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call pawn
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call pawn
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    Let x = (dc1 * 40) + 120: Let y = Abs((dc2 * 40) - 480) - 80
    Let cf = 15: Call king
    Let x = (dc4 * 40) + 120: Let y = Abs((dc5 * 40) - 480) - 80
    Let cf = 0: Call king

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Exit Do
            Case Is = Chr$(13)
                Call chessfen
            Case Is = Chr$(27)
                End
        End Select
    Loop

    Call dices

    Rem 2nd roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 8 + 1)
    Let dc2 = Int(Rnd * 8 + 1)
    Let dc3 = Int(Rnd * 5 + 2)
    Let dc4 = Int(Rnd * 8 + 1)
    Let dc5 = Int(Rnd * 8 + 1)
    Let dc6 = Int(Rnd * 5 + 2)
    Let w2 = board(dc2, dc1): Let b2 = board(dc5, dc4)

    Select Case dc3
        Case Is = 1
            Rem
        Case Is = 2
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let fw2x = dc1: Let fw2y = dc2
                Let w2 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w2 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w2 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let fw2x = dc1: Let fw2y = dc2
                Let w2 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or dc2 = 1 Or dc2 = 8
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w2 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
    End Select
    Select Case dc6
        Case Is = 1
            Rem
        Case Is = 2
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let fb2x = dc4: Let fb2y = dc5
                Let b2 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b2 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b2 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let fb2x = dc4: Let fb2y = dc5
                Let b2 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or dc5 = 1 Or dc5 = 8
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b2 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
    End Select

    Let w2 = board(dc2, dc1): Let b2 = board(dc5, dc4)
    Let fw2x = dc1: Let fw2y = dc2: Let fb2x = dc4: Let fb2y = dc5
    Let fw2 = dc3: Let fb2 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call pawn
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call pawn
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    Let x = (dc1 * 40) + 120: Let y = Abs((dc2 * 40) - 480) - 80
    Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call pawn
    Let x = (dc4 * 40) + 120: Let y = Abs((dc5 * 40) - 480) - 80
    Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call pawn

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Exit Do
            Case Is = Chr$(13)
                Call chessfen
            Case Is = Chr$(27)
                End
        End Select
    Loop

    Call dices

    Rem 3rd roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 8 + 1)
    Let dc2 = Int(Rnd * 8 + 1)
    Let dc3 = Int(Rnd * 5 + 2)
    Let dc4 = Int(Rnd * 8 + 1)
    Let dc5 = Int(Rnd * 8 + 1)
    Let dc6 = Int(Rnd * 5 + 2)
    Let w3 = board(dc2, dc1): Let b3 = board(dc5, dc4)

    Select Case dc3
        Case Is = 1
            Rem
        Case Is = 2
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let fw3x = dc1: Let fw3y = dc2
                Let w3 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w3 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w3 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let fw3x = dc1: Let fw3y = dc2
                Let w3 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2 Or dc2 = 1 Or dc2 = 8
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w3 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
    End Select
    Select Case dc6
        Case Is = 1
            Rem
        Case Is = 2
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let fb3x = dc4: Let fb3y = dc5
                Let b3 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b3 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b3 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let fb3x = dc4: Let fb3y = dc5
                Let b3 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2 Or dc5 = 1 Or dc5 = 8
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b3 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
    End Select

    Let w3 = board(dc2, dc1): Let b3 = board(dc5, dc4)
    Let fw3x = dc1: Let fw3y = dc2: Let fb3x = dc4: Let fb3y = dc5
    Let fw3 = dc3: Let fb3 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call pawn
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call pawn
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    Let x = (dc1 * 40) + 120: Let y = Abs((dc2 * 40) - 480) - 80
    Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call pawn
    Let x = (dc4 * 40) + 120: Let y = Abs((dc5 * 40) - 480) - 80
    Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call pawn

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Exit Do
            Case Is = Chr$(13)
                Call chessfen
            Case Is = Chr$(27)
                End
        End Select
    Loop

    Call dices

    Rem 4th roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 8 + 1)
    Let dc2 = Int(Rnd * 8 + 1)
    Let dc3 = Int(Rnd * 5 + 2)
    Let dc4 = Int(Rnd * 8 + 1)
    Let dc5 = Int(Rnd * 8 + 1)
    Let dc6 = Int(Rnd * 5 + 2)
    Let w4 = board(dc2, dc1): Let b4 = board(dc5, dc4)

    Select Case dc3
        Case Is = 1
            Rem
        Case Is = 2
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let fw4x = dc1: Let fw4y = dc2
                Let w4 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w4 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w4 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let fw4x = dc1: Let fw4y = dc2
                Let w4 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3 Or dc2 = 1 Or dc2 = 8
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w4 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
    End Select
    Select Case dc6
        Case Is = 1
            Rem
        Case Is = 2
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let fb4x = dc4: Let fb4y = dc5
                Let b4 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b4 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b4 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let fb4x = dc4: Let fb4y = dc5
                Let b4 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3 Or dc5 = 1 Or dc5 = 8
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b4 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
    End Select

    Let w4 = board(dc2, dc1): Let b4 = board(dc5, dc4)
    Let fw4x = dc1: Let fw4y = dc2: Let fb4x = dc4: Let fb4y = dc5
    Let fw4 = dc3: Let fb4 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call pawn
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call pawn
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    Let x = (dc1 * 40) + 120: Let y = Abs((dc2 * 40) - 480) - 80
    Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call pawn
    Let x = (dc4 * 40) + 120: Let y = Abs((dc5 * 40) - 480) - 80
    Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call pawn

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Rem
            Case Is = Chr$(13)
                Call chessfen
            Case Is = Chr$(27)
                End
        End Select
    Loop
End Sub

Sub makruk

    Rem 1st roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 8 + 1)
    Let dc2 = Int(Rnd * 8 + 1)
    Let dc3 = 1
    Let dc4 = Int(Rnd * 8 + 1)
    Let dc5 = Int(Rnd * 8 + 1)
    Let dc6 = 1
    Let w1 = board(dc2, dc1): Let b1 = board(dc5, dc4)

    While Abs(w1 - b1) < 10
        Let count = count + 1
        Let dc1 = Int(Rnd * 8 + 1)
        Let dc2 = Int(Rnd * 8 + 1)
        Let dc4 = Int(Rnd * 8 + 1)
        Let dc5 = Int(Rnd * 8 + 1)
        Let w1 = board(dc2, dc1): Let b1 = board(dc5, dc4)
        If count > 8000 Then Exit While
    Wend

    Let w1 = board(dc2, dc1): Let b1 = board(dc5, dc4)
    Let fw1x = dc1: Let fw1y = dc2: Let fb1x = dc4: Let fb1y = dc5
    Let fw1 = dc3: Let fb1 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call pawn
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call pawn
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    Let x = (dc1 * 40) + 120: Let y = Abs((dc2 * 40) - 480) - 80
    Let cf = 15: Call king
    Let x = (dc4 * 40) + 120: Let y = Abs((dc5 * 40) - 480) - 80
    Let cf = 0: Call king

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Exit Do
            Case Is = Chr$(13)
                Call makrukfen
            Case Is = Chr$(27)
                End
        End Select
    Loop

    Call dices

    Rem 2nd roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 8 + 1)
    Let dc2 = Int(Rnd * 8 + 1)
    Let dc3 = Int(Rnd * 5 + 2)
    Let dc4 = Int(Rnd * 8 + 1)
    Let dc5 = Int(Rnd * 8 + 1)
    Let dc6 = Int(Rnd * 5 + 2)
    Let w2 = board(dc2, dc1): Let b2 = board(dc5, dc4)

    Select Case dc3
        Case Is = 1
            Rem
        Case Is = 2
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or w2 Mod 2 = 0
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w2 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w2 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w2 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let fw2x = dc1: Let fw2y = dc2
                Let w2 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or dc2 <= 3 Or dc2 >= 6
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w2 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
    End Select
    Select Case dc6
        Case Is = 1
            Rem
        Case Is = 2
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or b2 Mod 2 <> 0
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b2 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b2 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b2 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let fb2x = dc4: Let fb2y = dc5
                Let b2 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or dc5 <= 3 Or dc5 >= 6
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b2 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
    End Select

    Let w2 = board(dc2, dc1): Let b2 = board(dc5, dc4)
    Let fw2x = dc1: Let fw2y = dc2: Let fb2x = dc4: Let fb2y = dc5
    Let fw2 = dc3: Let fb2 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call pawn
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call pawn
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    Let x = (dc1 * 40) + 120: Let y = Abs((dc2 * 40) - 480) - 80
    Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call pawn
    Let x = (dc4 * 40) + 120: Let y = Abs((dc5 * 40) - 480) - 80
    Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call pawn

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Exit Do
            Case Is = Chr$(13)
                Call makrukfen
            Case Is = Chr$(27)
                End
        End Select
    Loop

    Call dices

    Rem 3rd roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 8 + 1)
    Let dc2 = Int(Rnd * 8 + 1)
    Let dc3 = Int(Rnd * 5 + 2)
    Let dc4 = Int(Rnd * 8 + 1)
    Let dc5 = Int(Rnd * 8 + 1)
    Let dc6 = Int(Rnd * 5 + 2)
    Let w3 = board(dc2, dc1): Let b3 = board(dc5, dc4)

    Select Case dc3
        Case Is = 1
            Rem
        Case Is = 2
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2 Or w3 Mod 2 = 0
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w3 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w3 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w3 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let fw3x = dc1: Let fw3y = dc2
                Let w3 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2 Or dc2 <= 3 Or dc2 >= 6
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w3 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
    End Select
    Select Case dc6
        Case Is = 1
            Rem
        Case Is = 2
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2 Or b3 Mod 2 <> 0
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b3 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b3 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b3 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let fb3x = dc4: Let fb3y = dc5
                Let b3 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2 Or dc5 <= 3 Or dc5 >= 6
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b3 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
    End Select

    Let w3 = board(dc2, dc1): Let b3 = board(dc5, dc4)
    Let fw3x = dc1: Let fw3y = dc2: Let fb3x = dc4: Let fb3y = dc5
    Let fw3 = dc3: Let fb3 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call pawn
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call pawn
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    Let x = (dc1 * 40) + 120: Let y = Abs((dc2 * 40) - 480) - 80
    Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call pawn
    Let x = (dc4 * 40) + 120: Let y = Abs((dc5 * 40) - 480) - 80
    Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call pawn

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Exit Do
            Case Is = Chr$(13)
                Call makrukfen
            Case Is = Chr$(27)
                End
        End Select
    Loop

    Call dices

    Rem 4th roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 8 + 1)
    Let dc2 = Int(Rnd * 8 + 1)
    Let dc3 = Int(Rnd * 5 + 2)
    Let dc4 = Int(Rnd * 8 + 1)
    Let dc5 = Int(Rnd * 8 + 1)
    Let dc6 = Int(Rnd * 5 + 2)
    Let w4 = board(dc2, dc1): Let b4 = board(dc5, dc4)

    Select Case dc3
        Case Is = 1
            Rem
        Case Is = 2
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3 Or w2 Mod 2 = 0
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w4 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w4 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w4 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let fw4x = dc1: Let fw4y = dc2
                Let w4 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3 Or dc2 <= 3 Or dc2 >= 6
                Let count = count + 1
                Let dc1 = Int(Rnd * 8 + 1)
                Let dc2 = Int(Rnd * 8 + 1)
                Let w4 = board(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
    End Select
    Select Case dc6
        Case Is = 1
            Rem
        Case Is = 2
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3 Or b4 Mod 2 <> 0
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b4 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b4 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b4 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let fb4x = dc4: Let fb4y = dc5
                Let b4 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3 Or dc5 <= 3 Or dc5 >= 6
                Let count = count + 1
                Let dc4 = Int(Rnd * 8 + 1)
                Let dc5 = Int(Rnd * 8 + 1)
                Let b4 = board(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
    End Select

    Let w4 = board(dc2, dc1): Let b4 = board(dc5, dc4)
    Let fw4x = dc1: Let fw4y = dc2: Let fb4x = dc4: Let fb4y = dc5
    Let fw4 = dc3: Let fb4 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call pawn
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call pawn
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    Let x = (dc1 * 40) + 120: Let y = Abs((dc2 * 40) - 480) - 80
    Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call pawn
    Let x = (dc4 * 40) + 120: Let y = Abs((dc5 * 40) - 480) - 80
    Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call pawn

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Rem
            Case Is = Chr$(13)
                Call makrukfen
            Case Is = Chr$(27)
                End
        End Select
    Loop

End Sub

Sub xiangqi

    Rem 1st roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 3 + 4)
    Let dc2 = Int(Rnd * 3 + 1)
    Let dc3 = 1
    Let dc4 = Int(Rnd * 3 + 4)
    Let dc5 = Int(Rnd * 3 + 8)
    Let dc6 = 1
    Let w1 = xiabo(dc2, dc1): Let b1 = xiabo(dc5, dc4)

    While w1 = b1
        Let count = count + 1
        Let dc1 = Int(Rnd * 3 + 4)
        Let dc2 = Int(Rnd * 3 + 1)
        Let dc4 = Int(Rnd * 3 + 4)
        Let dc5 = Int(Rnd * 3 + 8)
        Let w1 = xiabo(dc2, dc1): Let b1 = xiabo(dc5, dc4)
        If count > 8000 Then Exit While
    Wend

    Let w1 = xiabo(dc2, dc1): Let b1 = xiabo(dc5, dc4)
    Let fw1x = dc1: Let fw1y = dc2: Let fb1x = dc4: Let fb1y = dc5
    Let fw1 = dc3: Let fb1 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call cannon
    If dc3 = 7 Then Call pawn
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call cannon
    If dc6 = 7 Then Call pawn
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    If dc1 = 9 Then Call letterI
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    If dc2 = 9 Then Call letter9
    If dc2 = 10 Then Call letter0
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    If dc4 = 9 Then Call letterI
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    If dc5 = 9 Then Call letter9
    If dc5 = 10 Then Call letter0
    Let x = (dc1 * 40) + 100: Let y = Abs((dc2 * 40) - 480) - 40
    Let cf = 15: Call king
    Let x = (dc4 * 40) + 100: Let y = Abs((dc5 * 40) - 480) - 40
    Let cf = 0: Call king

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Exit Do
            Case Is = Chr$(13)
                Call xiangqifen
            Case Is = Chr$(27)
                End
        End Select
    Loop

    Call dices

    Rem 2nd roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 9 + 1)
    Let dc2 = Int(Rnd * 10 + 1)
    Let dc3 = Int(Rnd * 6 + 2)
    Let dc4 = Int(Rnd * 9 + 1)
    Let dc5 = Int(Rnd * 10 + 1)
    Let dc6 = Int(Rnd * 6 + 2)
    Let w2 = xiabo(dc2, dc1): Let b2 = xiabo(dc5, dc4)

    Select Case dc3
        Case Is = 1
            Rem
        Case Is = 2
            Let dc1 = Int(Rnd * 3 + 4)
            Let dc2 = Int(Rnd * 3 + 1)
            Do
                Let count = count + 1
                Let index = Int(Rnd * 5 + 1)
                If index = 1 Then
                    Let dc1 = 4
                    Let dc2 = 1
                End If
                If index = 2 Then
                    Let dc1 = 6
                    Let dc2 = 1
                End If
                If index = 3 Then
                    Let dc1 = 5
                    Let dc2 = 2
                End If
                If index = 4 Then
                    Let dc1 = 4
                    Let dc2 = 3
                End If
                If index = 5 Then
                    Let dc1 = 6
                    Let dc2 = 3
                End If
                Let w2 = xiabo(dc2, dc1)
                If count > 8000 Then Exit Do
            Loop While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or w2 Mod 2 <> 0
        Case Is = 3
            Let dc1 = Int(Rnd * 9 + 1)
            Let dc2 = Int(Rnd * 5 + 1)
            Do
                Let count = count + 1
                Let index = Int(Rnd * 7 + 1)
                If index = 1 Then
                    Let dc1 = 3
                    Let dc2 = 1
                End If
                If index = 2 Then
                    Let dc1 = 7
                    Let dc2 = 1
                End If
                If index = 3 Then
                    Let dc1 = 1
                    Let dc2 = 3
                End If
                If index = 4 Then
                    Let dc1 = 5
                    Let dc2 = 3
                End If
                If index = 5 Then
                    Let dc1 = 9
                    Let dc2 = 3
                End If
                If index = 6 Then
                    Let dc1 = 3
                    Let dc2 = 5
                End If
                If index = 7 Then
                    Let dc1 = 7
                    Let dc2 = 5
                End If
                Let w2 = xiabo(dc2, dc1)
                If count > 8000 Then Exit Do
            Loop While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
        Case Is = 4
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let w2 = xiabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let fw2x = dc1: Let fw2y = dc2
                Let w2 = xiabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let fw2x = dc1: Let fw2y = dc2
                Let w2 = xiabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 7
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or dc2 < 4 Or dc2 > 7
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let w2 = xiabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
    End Select
    Select Case dc6
        Case Is = 1
            Rem
        Case Is = 2
            Let dc4 = Int(Rnd * 3 + 4)
            Let dc5 = Int(Rnd * 3 + 8)
            Do
                Let count = count + 1
                Let index = Int(Rnd * 5 + 1)
                If index = 1 Then
                    Let dc4 = 4
                    Let dc5 = 10
                End If
                If index = 2 Then
                    Let dc4 = 6
                    Let dc5 = 10
                End If
                If index = 3 Then
                    Let dc4 = 5
                    Let dc5 = 9
                End If
                If index = 4 Then
                    Let dc4 = 4
                    Let dc5 = 8
                End If
                If index = 5 Then
                    Let dc4 = 6
                    Let dc5 = 8
                End If
                Let b2 = xiabo(dc5, dc4)
                If count > 8000 Then Exit Do
            Loop While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or b2 Mod 2 = 0
        Case Is = 3
            Let dc4 = Int(Rnd * 9 + 1)
            Let dc5 = Int(Rnd * 5 + 6)
            Do
                Let count = count + 1
                Let index = Int(Rnd * 7 + 1)
                If index = 1 Then
                    Let dc4 = 3
                    Let dc5 = 10
                End If
                If index = 2 Then
                    Let dc4 = 7
                    Let dc5 = 10
                End If
                If index = 3 Then
                    Let dc4 = 1
                    Let dc5 = 8
                End If
                If index = 4 Then
                    Let dc4 = 5
                    Let dc5 = 8
                End If
                If index = 5 Then
                    Let dc4 = 9
                    Let dc5 = 8
                End If
                If index = 6 Then
                    Let dc4 = 3
                    Let dc5 = 6
                End If
                If index = 7 Then
                    Let dc4 = 7
                    Let dc5 = 6
                End If
                Let b2 = xiabo(dc5, dc4)
                If count > 8000 Then Exit Do
            Loop While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or b2
        Case Is = 4
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let b2 = xiabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let fb2x = dc4: Let fb2y = dc5
                Let b2 = xiabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let fb2x = dc4: Let fb2y = dc5
                Let b2 = xiabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 7
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or dc5 < 3 Or dc5 > 8
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let b2 = xiabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
    End Select

    Let w2 = xiabo(dc2, dc1): Let b2 = xiabo(dc5, dc4)
    Let fw2x = dc1: Let fw2y = dc2: Let fb2x = dc4: Let fb2y = dc5
    Let fw2 = dc3: Let fb2 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call cannon
    If dc3 = 7 Then Call pawn
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call cannon
    If dc6 = 7 Then Call pawn
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    If dc1 = 9 Then Call letterI
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    If dc2 = 9 Then Call letter9
    If dc2 = 10 Then Call letter0
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    If dc4 = 9 Then Call letterI
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    If dc5 = 9 Then Call letter9
    If dc5 = 10 Then Call letter0
    Let x = (dc1 * 40) + 100: Let y = Abs((dc2 * 40) - 480) - 40
    Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call cannon
    If dc3 = 7 Then Call pawn
    Let x = (dc4 * 40) + 100: Let y = Abs((dc5 * 40) - 480) - 40
    Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call cannon
    If dc6 = 7 Then Call pawn

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Exit Do
            Case Is = Chr$(13)
                Call xiangqifen
            Case Is = Chr$(27)
                End
        End Select
    Loop

    Call dices

    Rem 3rd roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 9 + 1)
    Let dc2 = Int(Rnd * 10 + 1)
    Let dc3 = Int(Rnd * 6 + 2)
    Let dc4 = Int(Rnd * 9 + 1)
    Let dc5 = Int(Rnd * 10 + 1)
    Let dc6 = Int(Rnd * 6 + 2)
    Let w3 = xiabo(dc2, dc1): Let b3 = xiabo(dc5, dc4)

    Select Case dc3
        Case Is = 1
            Rem
        Case Is = 2
            Let dc1 = Int(Rnd * 3 + 4)
            Let dc2 = Int(Rnd * 3 + 1)
            Do
                Let count = count + 1
                Let index = Int(Rnd * 5 + 1)
                If index = 1 Then
                    Let dc1 = 4
                    Let dc2 = 1
                End If
                If index = 2 Then
                    Let dc1 = 6
                    Let dc2 = 1
                End If
                If index = 3 Then
                    Let dc1 = 5
                    Let dc2 = 2
                End If
                If index = 4 Then
                    Let dc1 = 4
                    Let dc2 = 3
                End If
                If index = 5 Then
                    Let dc1 = 6
                    Let dc2 = 3
                End If
                Let w3 = xiabo(dc2, dc1)
                If count > 8000 Then Exit Do
            Loop While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2 Or w3 Mod 2 <> 0
        Case Is = 3
            Let dc1 = Int(Rnd * 9 + 1)
            Let dc2 = Int(Rnd * 5 + 1)
            Do
                Let count = count + 1
                Let index = Int(Rnd * 7 + 1)
                If index = 1 Then
                    Let dc1 = 3
                    Let dc2 = 1
                End If
                If index = 2 Then
                    Let dc1 = 7
                    Let dc2 = 1
                End If
                If index = 3 Then
                    Let dc1 = 1
                    Let dc2 = 3
                End If
                If index = 4 Then
                    Let dc1 = 5
                    Let dc2 = 3
                End If
                If index = 5 Then
                    Let dc1 = 9
                    Let dc2 = 3
                End If
                If index = 6 Then
                    Let dc1 = 3
                    Let dc2 = 5
                End If
                If index = 7 Then
                    Let dc1 = 7
                    Let dc2 = 5
                End If
                Let w3 = xiabo(dc2, dc1)
                If count > 8000 Then Exit Do
            Loop While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
        Case Is = 4
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let w3 = xiabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let fw3x = dc1: Let fw3y = dc2
                Let w3 = xiabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let fw3x = dc1: Let fw3y = dc2
                Let w3 = xiabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 7
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2 Or dc2 < 4 Or dc2 > 7
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let w3 = xiabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
    End Select
    Select Case dc6
        Case Is = 1
            Rem
        Case Is = 2
            Let dc4 = Int(Rnd * 3 + 4)
            Let dc5 = Int(Rnd * 3 + 8)
            Do
                Let count = count + 1
                Let index = Int(Rnd * 5 + 1)
                If index = 1 Then
                    Let dc4 = 4
                    Let dc5 = 10
                End If
                If index = 2 Then
                    Let dc4 = 6
                    Let dc5 = 10
                End If
                If index = 3 Then
                    Let dc4 = 5
                    Let dc5 = 9
                End If
                If index = 4 Then
                    Let dc4 = 4
                    Let dc5 = 8
                End If
                If index = 5 Then
                    Let dc4 = 6
                    Let dc5 = 8
                End If
                Let b3 = xiabo(dc5, dc4)
                If count > 8000 Then Exit Do
            Loop While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2 Or b3 Mod 2 = 0
        Case Is = 3
            Let dc4 = Int(Rnd * 9 + 1)
            Let dc5 = Int(Rnd * 5 + 6)
            Do
                Let count = count + 1
                Let index = Int(Rnd * 7 + 1)
                If index = 1 Then
                    Let dc4 = 3
                    Let dc5 = 10
                End If
                If index = 2 Then
                    Let dc4 = 7
                    Let dc5 = 10
                End If
                If index = 3 Then
                    Let dc4 = 1
                    Let dc5 = 8
                End If
                If index = 4 Then
                    Let dc4 = 5
                    Let dc5 = 8
                End If
                If index = 5 Then
                    Let dc4 = 9
                    Let dc5 = 8
                End If
                If index = 6 Then
                    Let dc4 = 3
                    Let dc5 = 6
                End If
                If index = 7 Then
                    Let dc4 = 7
                    Let dc5 = 6
                End If
                Let b3 = xiabo(dc5, dc4)
                If count > 8000 Then Exit Do
            Loop While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
        Case Is = 4
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let b3 = xiabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let fb3x = dc4: Let fb3y = dc5
                Let b3 = xiabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let fb3x = dc4: Let fb3y = dc5
                Let b3 = xiabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 7
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2 Or dc5 < 3 Or dc5 > 8
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let b3 = xiabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
    End Select

    Let w3 = xiabo(dc2, dc1): Let b3 = xiabo(dc5, dc4)
    Let fw3x = dc1: Let fw3y = dc2: Let fb3x = dc4: Let fb3y = dc5
    Let fw3 = dc3: Let fb3 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call cannon
    If dc3 = 7 Then Call pawn
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call cannon
    If dc6 = 7 Then Call pawn
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    If dc1 = 9 Then Call letterI
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    If dc2 = 9 Then Call letter9
    If dc2 = 10 Then Call letter0
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    If dc4 = 9 Then Call letterI
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    If dc5 = 9 Then Call letter9
    If dc5 = 10 Then Call letter0
    Let x = (dc1 * 40) + 100: Let y = Abs((dc2 * 40) - 480) - 40
    Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call cannon
    If dc3 = 7 Then Call pawn
    Let x = (dc4 * 40) + 100: Let y = Abs((dc5 * 40) - 480) - 40
    Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call cannon
    If dc6 = 7 Then Call pawn

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Exit Do
            Case Is = Chr$(13)
                Call xiangqifen
            Case Is = Chr$(27)
                End
        End Select
    Loop

    Call dices

    Rem 4th roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 9 + 1)
    Let dc2 = Int(Rnd * 10 + 1)
    Let dc3 = Int(Rnd * 6 + 2)
    Let dc4 = Int(Rnd * 9 + 1)
    Let dc5 = Int(Rnd * 10 + 1)
    Let dc6 = Int(Rnd * 6 + 2)
    Let w4 = xiabo(dc2, dc1): Let b2 = xiabo(dc5, dc4)

    Select Case dc3
        Case Is = 1
            Rem
        Case Is = 2
            Let dc1 = Int(Rnd * 3 + 4)
            Let dc2 = Int(Rnd * 3 + 1)
            Do
                Let count = count + 1
                Let index = Int(Rnd * 5 + 1)
                If index = 1 Then
                    Let dc1 = 4
                    Let dc2 = 1
                End If
                If index = 2 Then
                    Let dc1 = 6
                    Let dc2 = 1
                End If
                If index = 3 Then
                    Let dc1 = 5
                    Let dc2 = 2
                End If
                If index = 4 Then
                    Let dc1 = 4
                    Let dc2 = 3
                End If
                If index = 5 Then
                    Let dc1 = 6
                    Let dc2 = 3
                End If
                Let w4 = xiabo(dc2, dc1)
                If count > 8000 Then Exit Do
            Loop While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3 Or w4 Mod 2 <> 0
        Case Is = 3
            Let dc1 = Int(Rnd * 9 + 1)
            Let dc2 = Int(Rnd * 5 + 1)
            Do
                Let count = count + 1
                Let index = Int(Rnd * 7 + 1)
                If index = 1 Then
                    Let dc1 = 3
                    Let dc2 = 1
                End If
                If index = 2 Then
                    Let dc1 = 7
                    Let dc2 = 1
                End If
                If index = 3 Then
                    Let dc1 = 1
                    Let dc2 = 3
                End If
                If index = 4 Then
                    Let dc1 = 5
                    Let dc2 = 3
                End If
                If index = 5 Then
                    Let dc1 = 9
                    Let dc2 = 3
                End If
                If index = 6 Then
                    Let dc1 = 3
                    Let dc2 = 5
                End If
                If index = 7 Then
                    Let dc1 = 7
                    Let dc2 = 5
                End If
                Let w4 = xiabo(dc2, dc1)
                If count > 8000 Then Exit Do
            Loop While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
        Case Is = 4
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let w4 = xiabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let fw4x = dc1: Let fw4y = dc2
                Let w4 = xiabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let fw4x = dc1: Let fw4y = dc2
                Let w4 = xiabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 7
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3 < 3 Or dc2 > 8
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let w4 = xiabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
    End Select
    Select Case dc6
        Case Is = 1
            Rem
        Case Is = 2
            Let dc4 = Int(Rnd * 3 + 4)
            Let dc5 = Int(Rnd * 3 + 8)
            Do
                Let count = count + 1
                Let index = Int(Rnd * 5 + 1)
                If index = 1 Then
                    Let dc4 = 4
                    Let dc5 = 10
                End If
                If index = 2 Then
                    Let dc4 = 6
                    Let dc5 = 10
                End If
                If index = 3 Then
                    Let dc4 = 5
                    Let dc5 = 9
                End If
                If index = 4 Then
                    Let dc4 = 4
                    Let dc5 = 8
                End If
                If index = 5 Then
                    Let dc4 = 6
                    Let dc5 = 8
                End If
                Let b4 = xiabo(dc5, dc4)
                If count > 8000 Then Exit Do
            Loop While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3 Or b4 Mod 2 = 0
        Case Is = 3
            Let dc4 = Int(Rnd * 9 + 1)
            Let dc5 = Int(Rnd * 5 + 6)
            Do
                Let count = count + 1
                Let index = Int(Rnd * 7 + 1)
                If index = 1 Then
                    Let dc4 = 3
                    Let dc5 = 10
                End If
                If index = 2 Then
                    Let dc4 = 7
                    Let dc5 = 10
                End If
                If index = 3 Then
                    Let dc4 = 1
                    Let dc5 = 8
                End If
                If index = 4 Then
                    Let dc4 = 5
                    Let dc5 = 8
                End If
                If index = 5 Then
                    Let dc4 = 9
                    Let dc5 = 8
                End If
                If index = 6 Then
                    Let dc4 = 3
                    Let dc5 = 6
                End If
                If index = 7 Then
                    Let dc4 = 7
                    Let dc5 = 6
                End If
                Let b4 = xiabo(dc5, dc4)
                If count > 8000 Then Exit Do
            Loop While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
        Case Is = 4
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let b4 = xiabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let fb4x = dc4: Let fb4y = dc5
                Let b4 = xiabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let fb4x = dc4: Let fb4y = dc5
                Let b4 = xiabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 7
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3 Or dc5 < 3 Or dc5 > 8
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let b4 = xiabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
    End Select

    Let w4 = xiabo(dc2, dc1): Let b4 = xiabo(dc5, dc4)
    Let fw4x = dc1: Let fw4y = dc2: Let fb4x = dc4: Let fb4y = dc5
    Let fw4 = dc3: Let fb4 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call cannon
    If dc3 = 7 Then Call pawn
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call cannon
    If dc6 = 7 Then Call pawn
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    If dc1 = 9 Then Call letterI
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    If dc2 = 9 Then Call letter9
    If dc2 = 10 Then Call letter0
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    If dc4 = 9 Then Call letterI
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    If dc5 = 9 Then Call letter9
    If dc5 = 10 Then Call letter0
    Let x = (dc1 * 40) + 100: Let y = Abs((dc2 * 40) - 480) - 40
    Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call bishop
    If dc3 = 4 Then Call knight
    If dc3 = 5 Then Call rook
    If dc3 = 6 Then Call cannon
    If dc3 = 7 Then Call pawn
    Let x = (dc4 * 40) + 100: Let y = Abs((dc5 * 40) - 480) - 40
    Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call bishop
    If dc6 = 4 Then Call knight
    If dc6 = 5 Then Call rook
    If dc6 = 6 Then Call cannon
    If dc6 = 7 Then Call pawn

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Rem
            Case Is = Chr$(13)
                Call xiangqifen
            Case Is = Chr$(27)
                End
        End Select
    Loop

End Sub

Sub shogi

    Rem 1st roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 9 + 1)
    Let dc2 = Int(Rnd * 9 + 1)
    Let dc3 = 1
    Let dc4 = Int(Rnd * 9 + 1)
    Let dc5 = Int(Rnd * 9 + 1)
    Let dc6 = 1
    Let w1 = shobo(dc2, dc1): Let b1 = shobo(dc5, dc4)

    While Abs(w1 - b1) < 11
        Let count = count + 1
        Let dc1 = Int(Rnd * 9 + 1)
        Let dc2 = Int(Rnd * 9 + 1)
        Let dc4 = Int(Rnd * 9 + 1)
        Let dc5 = Int(Rnd * 9 + 1)
        Let w1 = shobo(dc2, dc1): Let b1 = shobo(dc5, dc4)
        If count > 8000 Then Exit While
    Wend

    Let w1 = shobo(dc2, dc1): Let b1 = shobo(dc5, dc4)
    Let fw1x = dc1: Let fw1y = dc2: Let fb1x = dc4: Let fb1y = dc5
    Let fw1 = dc3: Let fb1 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call general
    If dc3 = 4 Then Call bishop
    If dc3 = 5 Then Call knight
    If dc3 = 6 Then Call rook
    If dc3 = 7 Then Call lance
    If dc3 = 8 Then Call pawn
    If dc3 = 9 Then Call tokin
    If dc3 = 10 Then Call dragon
    If dc3 = 11 Then Call horse
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call general
    If dc6 = 4 Then Call bishop
    If dc6 = 5 Then Call knight
    If dc6 = 6 Then Call rook
    If dc6 = 7 Then Call lance
    If dc6 = 8 Then Call pawn
    If dc6 = 9 Then Call tokin
    If dc6 = 10 Then Call dragon
    If dc6 = 11 Then Call horse
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    If dc1 = 9 Then Call letterI
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    If dc2 = 9 Then Call letter9
    If dc2 = 10 Then Call letter0
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    If dc4 = 9 Then Call letterI
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    If dc5 = 9 Then Call letter9
    If dc5 = 10 Then Call letter0
    Let x = (dc1 * 40) + 100: Let y = Abs((dc2 * 40) - 480) - 60
    Let cf = 15: Call king
    Let x = (dc4 * 40) + 100: Let y = Abs((dc5 * 40) - 480) - 60
    Let cf = 0: Call king

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Exit Do
            Case Is = Chr$(13)
                Call shogifen
            Case Is = Chr$(27)
                End
        End Select
    Loop

    Call dices

    Rem 2nd roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 9 + 1)
    Let dc2 = Int(Rnd * 9 + 1)
    Let dc3 = Int(Rnd * 10 + 2)
    Let dc4 = Int(Rnd * 9 + 1)
    Let dc5 = Int(Rnd * 9 + 1)
    Let dc6 = Int(Rnd * 10 + 2)
    Let w2 = shobo(dc2, dc1): Let b2 = shobo(dc5, dc4)

    Select Case dc3
        Case Is = 1
            Rem
        Case Is = 2
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w2 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w2 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w2 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let fw2x = dc1: Let fw2y = dc2
                Let w2 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let fw2x = dc1: Let fw2y = dc2
                Let w2 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 7
            Let index = Int(Rnd * 2 + 1)
            If index = 1 Then Let dc1 = 1 Else Let dc1 = 9
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let index = Int(Rnd * 2 + 1)
                If index = 1 Then Let dc1 = 1 Else Let dc1 = 9
                Let dc2 = Int(Rnd * 9 + 1)
                Let w2 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 8
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or dc2 < 3 Or dc2 > 7
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w2 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 9
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w2 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 10
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w2 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 11
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w2 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
    End Select
    Select Case dc6
        Case Is = 1
            Rem
        Case Is = 2
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b2 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b2 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b2 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let fb2x = dc4: Let fb2y = dc5
                Let b2 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let fb2x = dc4: Let fb2y = dc5
                Let b2 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 7
            Let index = Int(Rnd * 2 + 1)
            If index = 1 Then Let dc4 = 1 Else Let dc4 = 9
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let index = Int(Rnd * 2 + 1)
                If index = 1 Then Let dc4 = 1 Else Let dc4 = 9
                Let dc5 = Int(Rnd * 9 + 1)
                Let b2 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 8
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or dc5 < 3 Or dc5 > 7
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b2 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 9
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b2 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 10
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b2 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 11
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b2 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
    End Select

    Let w2 = shobo(dc2, dc1): Let b2 = shobo(dc5, dc4)
    Let fw2x = dc1: Let fw2y = dc2: Let fb2x = dc4: Let fb2y = dc5
    Let fw2 = dc3: Let fb2 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call general
    If dc3 = 4 Then Call bishop
    If dc3 = 5 Then Call knight
    If dc3 = 6 Then Call rook
    If dc3 = 7 Then Call lance
    If dc3 = 8 Then Call pawn
    If dc3 = 9 Then Call horse
    If dc3 = 10 Then Call dragon
    If dc3 = 11 Then Call tokin
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call general
    If dc6 = 4 Then Call bishop
    If dc6 = 5 Then Call knight
    If dc6 = 6 Then Call rook
    If dc6 = 7 Then Call lance
    If dc6 = 8 Then Call pawn
    If dc6 = 9 Then Call horse
    If dc6 = 10 Then Call dragon
    If dc6 = 11 Then Call tokin
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    If dc1 = 9 Then Call letterI
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    If dc2 = 9 Then Call letter9
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    If dc4 = 9 Then Call letterI
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    If dc5 = 9 Then Call letter9
    Let x = (dc1 * 40) + 100: Let y = Abs((dc2 * 40) - 480) - 60
    Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call general
    If dc3 = 4 Then Call bishop
    If dc3 = 5 Then Call knight
    If dc3 = 6 Then Call rook
    If dc3 = 7 Then Call lance
    If dc3 = 8 Then Call pawn
    If dc3 = 9 Then Call horse
    If dc3 = 10 Then Call dragon
    If dc3 = 11 Then Call tokin
    Let x = (dc4 * 40) + 100: Let y = Abs((dc5 * 40) - 480) - 60
    Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call general
    If dc6 = 4 Then Call bishop
    If dc6 = 5 Then Call knight
    If dc6 = 6 Then Call rook
    If dc6 = 7 Then Call lance
    If dc6 = 8 Then Call pawn
    If dc6 = 9 Then Call horse
    If dc6 = 10 Then Call dragon
    If dc6 = 11 Then Call tokin

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Exit Do
            Case Is = Chr$(13)
                Call shogifen
            Case Is = Chr$(27)
                End
        End Select
    Loop

    Call dices

    Rem 3rd roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 9 + 1)
    Let dc2 = Int(Rnd * 9 + 1)
    Let dc3 = Int(Rnd * 10 + 2)
    Let dc4 = Int(Rnd * 9 + 1)
    Let dc5 = Int(Rnd * 9 + 1)
    Let dc6 = Int(Rnd * 10 + 2)
    Let w3 = shobo(dc2, dc1): Let b3 = shobo(dc5, dc4)

    Select Case dc3
        Case Is = 1
            Rem
        Case Is = 2
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w3 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w3 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w3 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let fw2x = dc1: Let fw2y = dc2
                Let w3 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let fw2x = dc1: Let fw2y = dc2
                Let w3 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 7
            Let index = Int(Rnd * 2 + 1)
            If index = 1 Then Let dc1 = 1 Else Let dc1 = 9
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let index = Int(Rnd * 2 + 1)
                If index = 1 Then Let dc1 = 1 Else Let dc1 = 9
                Let dc2 = Int(Rnd * 9 + 1)
                Let w3 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 8
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w3 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 9
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w3 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 10
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w3 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 11
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w3 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
    End Select
    Select Case dc6
        Case Is = 1
            Rem
        Case Is = 2
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b3 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b3 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b3 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let fb2x = dc4: Let fb2y = dc5
                Let b3 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let fb2x = dc4: Let fb2y = dc5
                Let b3 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 7
            Let index = Int(Rnd * 2 + 1)
            If index = 1 Then Let dc4 = 1 Else Let dc4 = 9
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let index = Int(Rnd * 2 + 1)
                If index = 1 Then Let dc4 = 1 Else Let dc4 = 9
                Let dc5 = Int(Rnd * 9 + 1)
                Let b3 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 8
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b3 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 9
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b3 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 10
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b3 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 11
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b3 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
    End Select

    Let w3 = shobo(dc2, dc1): Let b3 = shobo(dc5, dc4)
    Let fw3x = dc1: Let fw3y = dc2: Let fb3x = dc4: Let fb3y = dc5
    Let fw3 = dc3: Let fb3 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call general
    If dc3 = 4 Then Call bishop
    If dc3 = 5 Then Call knight
    If dc3 = 6 Then Call rook
    If dc3 = 7 Then Call lance
    If dc3 = 8 Then Call pawn
    If dc3 = 9 Then Call horse
    If dc3 = 10 Then Call dragon
    If dc3 = 11 Then Call tokin
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call general
    If dc6 = 4 Then Call bishop
    If dc6 = 5 Then Call knight
    If dc6 = 6 Then Call rook
    If dc6 = 7 Then Call lance
    If dc6 = 8 Then Call pawn
    If dc6 = 9 Then Call horse
    If dc6 = 10 Then Call dragon
    If dc6 = 11 Then Call tokin
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    If dc1 = 9 Then Call letterI
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    If dc2 = 9 Then Call letter9
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    If dc4 = 9 Then Call letterI
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    If dc5 = 9 Then Call letter9
    Let x = (dc1 * 40) + 100: Let y = Abs((dc2 * 40) - 480) - 60
    Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call general
    If dc3 = 4 Then Call bishop
    If dc3 = 5 Then Call knight
    If dc3 = 6 Then Call rook
    If dc3 = 7 Then Call lance
    If dc3 = 8 Then Call pawn
    If dc3 = 9 Then Call horse
    If dc3 = 10 Then Call dragon
    If dc3 = 11 Then Call tokin
    Let x = (dc4 * 40) + 100: Let y = Abs((dc5 * 40) - 480) - 60
    Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call general
    If dc6 = 4 Then Call bishop
    If dc6 = 5 Then Call knight
    If dc6 = 6 Then Call rook
    If dc6 = 7 Then Call lance
    If dc6 = 8 Then Call pawn
    If dc6 = 9 Then Call horse
    If dc6 = 10 Then Call dragon
    If dc6 = 11 Then Call tokin

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Exit Do
            Case Is = Chr$(13)
                Call shogifen
            Case Is = Chr$(27)
                End
        End Select
    Loop

    Call dices

    Rem 4th roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 9 + 1)
    Let dc2 = Int(Rnd * 9 + 1)
    Let dc3 = Int(Rnd * 10 + 2)
    Let dc4 = Int(Rnd * 9 + 1)
    Let dc5 = Int(Rnd * 9 + 1)
    Let dc6 = Int(Rnd * 10 + 2)
    Let w4 = shobo(dc2, dc1): Let b4 = shobo(dc5, dc4)

    Select Case dc3
        Case Is = 1
            Rem
        Case Is = 2
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w4 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w4 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w4 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let fw2x = dc1: Let fw2y = dc2
                Let w4 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let fw2x = dc1: Let fw2y = dc2
                Let w4 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 7
            Let index = Int(Rnd * 2 + 1)
            If index = 1 Then Let dc1 = 1 Else Let dc1 = 9
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let index = Int(Rnd * 2 + 1)
                If index = 1 Then Let dc1 = 1 Else Let dc1 = 9
                Let dc2 = Int(Rnd * 9 + 1)
                Let w4 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 8
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w4 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 9
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w4 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 10
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w4 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 11
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc1 = Int(Rnd * 9 + 1)
                Let dc2 = Int(Rnd * 9 + 1)
                Let w4 = shobo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
    End Select
    Select Case dc6
        Case Is = 1
            Rem
        Case Is = 2
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b4 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 3
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b4 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 4
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b4 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 5
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let fb2x = dc4: Let fb2y = dc5
                Let b4 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 6
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let fb2x = dc4: Let fb2y = dc5
                Let b4 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 7
            Let index = Int(Rnd * 2 + 1)
            If index = 1 Then Let dc4 = 1 Else Let dc4 = 9
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let index = Int(Rnd * 2 + 1)
                If index = 1 Then Let dc4 = 1 Else Let dc4 = 9
                Let dc5 = Int(Rnd * 9 + 1)
                Let b4 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 8
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b4 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 9
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b4 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 10
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b4 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 11
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
                Let count = count + 1
                Let dc4 = Int(Rnd * 9 + 1)
                Let dc5 = Int(Rnd * 9 + 1)
                Let b4 = shobo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
    End Select

    Let w4 = shobo(dc2, dc1): Let b4 = shobo(dc5, dc4)
    Let fw4x = dc1: Let fw4y = dc2: Let fb4x = dc4: Let fb4y = dc5
    Let fw4 = dc3: Let fb4 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call general
    If dc3 = 4 Then Call bishop
    If dc3 = 5 Then Call knight
    If dc3 = 6 Then Call rook
    If dc3 = 7 Then Call lance
    If dc3 = 8 Then Call pawn
    If dc3 = 9 Then Call horse
    If dc3 = 10 Then Call dragon
    If dc3 = 11 Then Call tokin
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call general
    If dc6 = 4 Then Call bishop
    If dc6 = 5 Then Call knight
    If dc6 = 6 Then Call rook
    If dc6 = 7 Then Call lance
    If dc6 = 8 Then Call pawn
    If dc6 = 9 Then Call horse
    If dc6 = 10 Then Call dragon
    If dc6 = 11 Then Call tokin
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    If dc1 = 9 Then Call letterI
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    If dc2 = 9 Then Call letter9
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    If dc4 = 9 Then Call letterI
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    If dc5 = 9 Then Call letter9
    Let x = (dc1 * 40) + 100: Let y = Abs((dc2 * 40) - 480) - 60
    Let cf = 15
    If dc3 = 1 Then Call king
    If dc3 = 2 Then Call queen
    If dc3 = 3 Then Call general
    If dc3 = 4 Then Call bishop
    If dc3 = 5 Then Call knight
    If dc3 = 6 Then Call rook
    If dc3 = 7 Then Call lance
    If dc3 = 8 Then Call pawn
    If dc3 = 9 Then Call horse
    If dc3 = 10 Then Call dragon
    If dc3 = 11 Then Call tokin
    Let x = (dc4 * 40) + 100: Let y = Abs((dc5 * 40) - 480) - 60
    Let cf = 0
    If dc6 = 1 Then Call king
    If dc6 = 2 Then Call queen
    If dc6 = 3 Then Call general
    If dc6 = 4 Then Call bishop
    If dc6 = 5 Then Call knight
    If dc6 = 6 Then Call rook
    If dc6 = 7 Then Call lance
    If dc6 = 8 Then Call pawn
    If dc6 = 9 Then Call horse
    If dc6 = 10 Then Call dragon
    If dc6 = 11 Then Call tokin

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Rem
            Case Is = Chr$(13)
                Call shogifen
            Case Is = Chr$(27)
                End
        End Select
    Loop

End Sub

Sub draughts

    Rem 1st roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 10 + 1)
    Let dc2 = Int(Rnd * 10 + 1)
    Let dc3 = Int(Rnd * 2 + 1)
    Let dc4 = Int(Rnd * 10 + 1)
    Let dc5 = Int(Rnd * 10 + 1)
    Let dc6 = Int(Rnd * 2 + 1)
    Let w1 = drabo(dc2, dc1): Let b1 = drabo(dc5, dc4)

    While w1 = b1 And w1 Mod 2 = 0 And b1 Mod 2 = 0
        Let count = count + 1
        Let dc1 = Int(Rnd * 8 + 1)
        Let dc2 = Int(Rnd * 8 + 1)
        Let dc4 = Int(Rnd * 8 + 1)
        Let dc5 = Int(Rnd * 8 + 1)
        Let w1 = drabo(dc2, dc1): Let b1 = drabo(dc5, dc4)
        If count > 8000 Then Exit While
    Wend

    Let w1 = drabo(dc2, dc1): Let b1 = drabo(dc5, dc4)
    Let fw1x = dc1: Let fw1y = dc2: Let fb1x = dc4: Let fb1y = dc5
    Let fw1 = dc3: Let fb1 = dc6
    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call dame
    If dc3 = 2 Then Call checker
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call dame
    If dc6 = 2 Then Call checker
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    If dc1 = 9 Then Call letterI
    If dc1 = 10 Then Call letterJ
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    If dc2 = 9 Then Call letter9
    If dc2 = 10 Then Call letter0
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    If dc4 = 9 Then Call letterI
    If dc4 = 10 Then Call letterJ
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    If dc5 = 9 Then Call letter9
    If dc5 = 10 Then Call letter0
    Let x = (dc1 * 40) + 80: Let y = Abs((dc2 * 40) - 480) - 40
    Let cf = 15
    If dc3 = 1 Then Call dame
    If dc3 = 2 Then Call checker
    Let x = (dc4 * 40) + 80: Let y = Abs((dc5 * 40) - 480) - 40
    Let cf = 0
    If dc6 = 1 Then Call dame
    If dc6 = 2 Then Call checker

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Exit Do
            Case Is = Chr$(13)
                Call draughtsfen
            Case Is = Chr$(27)
                End
        End Select
    Loop

    Call dices

    Rem 2nd roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 10 + 1)
    Let dc2 = Int(Rnd * 10 + 1)
    Let dc3 = Int(Rnd * 2 + 1)
    Let dc4 = Int(Rnd * 10 + 1)
    Let dc5 = Int(Rnd * 10 + 1)
    Let dc6 = Int(Rnd * 2 + 1)
    Let w2 = drabo(dc2, dc1): Let b2 = drabo(dc5, dc4)

    Select Case dc3
        Case Is = 1
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or w2 Mod 2 = 0
                Let count = count + 1
                Let dc1 = Int(Rnd * 10 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let w2 = drabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 2
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or w2 Mod 2 = 0
                Let count = count + 1
                Let dc1 = Int(Rnd * 10 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let w2 = drabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
    End Select
    Select Case dc6
        Case Is = 1
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or b2 Mod 2 = 0
                Let count = count + 1
                Let dc4 = Int(Rnd * 10 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let b2 = drabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 2
            While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or b2 Mod 2 = 0
                Let count = count + 1
                Let dc4 = Int(Rnd * 10 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let b2 = drabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
    End Select

    Let w2 = drabo(dc2, dc1): Let b2 = drabo(dc5, dc4)
    Let fw2x = dc1: Let fw2y = dc2: Let fb2x = dc4: Let fb2y = dc5
    Let fw2 = dc3: Let fb2 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call dame
    If dc3 = 2 Then Call checker
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call dame
    If dc6 = 2 Then Call checker
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    If dc1 = 9 Then Call letterI
    If dc1 = 10 Then Call letterJ
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    If dc2 = 9 Then Call letter9
    If dc2 = 10 Then Call letter0
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    If dc4 = 9 Then Call letterI
    If dc4 = 10 Then Call letterJ
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    If dc5 = 9 Then Call letter9
    If dc5 = 10 Then Call letter0
    Let x = (dc1 * 40) + 80: Let y = Abs((dc2 * 40) - 480) - 40
    Let cf = 15
    If dc3 = 1 Then Call dame
    If dc3 = 2 Then Call checker
    Let x = (dc4 * 40) + 80: Let y = Abs((dc5 * 40) - 480) - 40
    Let cf = 0
    If dc6 = 1 Then Call dame
    If dc6 = 2 Then Call checker

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Exit Do
            Case Is = Chr$(13)
                Call draughtsfen
            Case Is = Chr$(27)
                End
        End Select
    Loop

    Call dices

    Rem 3rd roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 10 + 1)
    Let dc2 = Int(Rnd * 10 + 1)
    Let dc3 = Int(Rnd * 2 + 1)
    Let dc4 = Int(Rnd * 10 + 1)
    Let dc5 = Int(Rnd * 10 + 1)
    Let dc6 = Int(Rnd * 2 + 1)
    Let w3 = drabo(dc2, dc1): Let b3 = drabo(dc5, dc4)

    Select Case dc3
        Case Is = 1
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2 Or w3 Mod 2 = 0
                Let count = count + 1
                Let dc1 = Int(Rnd * 10 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let w3 = drabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 2
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2 Or w3 Mod 2 = 0
                Let count = count + 1
                Let dc1 = Int(Rnd * 10 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let w3 = drabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
    End Select
    Select Case dc6
        Case Is = 1
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2 Or b3 Mod 2 = 0
                Let count = count + 1
                Let dc4 = Int(Rnd * 10 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let b3 = drabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 2
            While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2 Or b3 Mod 2 = 0
                Let count = count + 1
                Let dc4 = Int(Rnd * 10 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let b3 = drabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
    End Select

    Let w3 = drabo(dc2, dc1): Let b3 = drabo(dc5, dc4)
    Let fw3x = dc1: Let fw3y = dc2: Let fb3x = dc4: Let fb3y = dc5
    Let fw3 = dc3: Let fb3 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call dame
    If dc3 = 2 Then Call checker
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call dame
    If dc6 = 2 Then Call checker
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    If dc1 = 9 Then Call letterI
    If dc1 = 10 Then Call letterJ
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    If dc2 = 9 Then Call letter9
    If dc2 = 10 Then Call letter0
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    If dc4 = 9 Then Call letterI
    If dc4 = 10 Then Call letterJ
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    If dc5 = 9 Then Call letter9
    If dc5 = 10 Then Call letter0
    Let x = (dc1 * 40) + 80: Let y = Abs((dc2 * 40) - 480) - 40
    Let cf = 15
    If dc3 = 1 Then Call dame
    If dc3 = 2 Then Call checker
    Let x = (dc4 * 40) + 80: Let y = Abs((dc5 * 40) - 480) - 40
    Let cf = 0
    If dc6 = 1 Then Call dame
    If dc6 = 2 Then Call checker

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Exit Do
            Case Is = Chr$(13)
                Call draughtsfen
            Case Is = Chr$(27)
                End
        End Select
    Loop

    Call dices

    Rem 4th roll
    Let count = 0: Let index = 0
    Let dc1 = Int(Rnd * 10 + 1)
    Let dc2 = Int(Rnd * 10 + 1)
    Let dc3 = Int(Rnd * 2 + 1)
    Let dc4 = Int(Rnd * 10 + 1)
    Let dc5 = Int(Rnd * 10 + 1)
    Let dc6 = Int(Rnd * 2 + 1)
    Let w4 = drabo(dc2, dc1): Let b4 = drabo(dc5, dc4)

    Select Case dc3
        Case Is = 1
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3 Or w4 Mod 2 = 0
                Let count = count + 1
                Let dc1 = Int(Rnd * 10 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let w4 = drabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
        Case Is = 2
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3 Or w4 Mod 2 = 0
                Let count = count + 1
                Let dc1 = Int(Rnd * 10 + 1)
                Let dc2 = Int(Rnd * 10 + 1)
                Let w4 = drabo(dc2, dc1)
                If count > 8000 Then Exit While
            Wend
    End Select
    Select Case dc6
        Case Is = 1
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3 Or b4 Mod 2 = 0
                Let count = count + 1
                Let dc4 = Int(Rnd * 10 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let b4 = drabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
        Case Is = 2
            While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3 Or b4 Mod 2 = 0
                Let count = count + 1
                Let dc4 = Int(Rnd * 10 + 1)
                Let dc5 = Int(Rnd * 10 + 1)
                Let b4 = drabo(dc5, dc4)
                If count > 8000 Then Exit While
            Wend
    End Select

    Let w4 = drabo(dc2, dc1): Let b4 = drabo(dc5, dc4)
    Let fw4x = dc1: Let fw4y = dc2: Let fb4x = dc4: Let fb4y = dc5
    Let fw4 = dc3: Let fb4 = dc6

    Let x = 20: Let y = 160: Let cf = 15
    If dc3 = 1 Then Call dame
    If dc3 = 2 Then Call checker
    Let x = 580: Let y = 160: Let cf = 0
    If dc6 = 1 Then Call dame
    If dc6 = 2 Then Call checker
    Let x = 20: Let y = 220
    If dc1 = 1 Then Call letterA
    If dc1 = 2 Then Call letterB
    If dc1 = 3 Then Call letterC
    If dc1 = 4 Then Call letterD
    If dc1 = 5 Then Call letterE
    If dc1 = 6 Then Call letterF
    If dc1 = 7 Then Call letterG
    If dc1 = 8 Then Call letterH
    If dc1 = 9 Then Call letterI
    If dc1 = 10 Then Call letterJ
    Let x = 20: Let y = 280
    If dc2 = 1 Then Call letter1
    If dc2 = 2 Then Call letter2
    If dc2 = 3 Then Call letter3
    If dc2 = 4 Then Call letter4
    If dc2 = 5 Then Call letter5
    If dc2 = 6 Then Call letter6
    If dc2 = 7 Then Call letter7
    If dc2 = 8 Then Call letter8
    If dc2 = 9 Then Call letter9
    If dc2 = 10 Then Call letter0
    Let x = 580: Let y = 220
    If dc4 = 1 Then Call letterA
    If dc4 = 2 Then Call letterB
    If dc4 = 3 Then Call letterC
    If dc4 = 4 Then Call letterD
    If dc4 = 5 Then Call letterE
    If dc4 = 6 Then Call letterF
    If dc4 = 7 Then Call letterG
    If dc4 = 8 Then Call letterH
    If dc4 = 9 Then Call letterI
    If dc4 = 10 Then Call letterJ
    Let x = 580: Let y = 280
    If dc5 = 1 Then Call letter1
    If dc5 = 2 Then Call letter2
    If dc5 = 3 Then Call letter3
    If dc5 = 4 Then Call letter4
    If dc5 = 5 Then Call letter5
    If dc5 = 6 Then Call letter6
    If dc5 = 7 Then Call letter7
    If dc5 = 8 Then Call letter8
    If dc5 = 9 Then Call letter9
    If dc5 = 10 Then Call letter0
    Let x = (dc1 * 40) + 80: Let y = Abs((dc2 * 40) - 480) - 40
    Let cf = 15
    If dc3 = 1 Then Call dame
    If dc3 = 2 Then Call checker
    Let x = (dc4 * 40) + 80: Let y = Abs((dc5 * 40) - 480) - 40
    Let cf = 0
    If dc6 = 1 Then Call dame
    If dc6 = 2 Then Call checker

    Do
        Select Case InKey$
            Case Is = Chr$(32)
                Rem
            Case Is = Chr$(13)
                Call draughtsfen
            Case Is = Chr$(27)
                End
        End Select
    Loop

End Sub

Sub chessfen

    Rem Forsyth-Edwards notation

    If fw1 = 1 Then Let fig1w$ = "K"
    If fw1 = 2 Then Let fig1w$ = "Q"
    If fw1 = 3 Then Let fig1w$ = "B"
    If fw1 = 4 Then Let fig1w$ = "N"
    If fw1 = 5 Then Let fig1w$ = "R"
    If fw1 = 6 Then Let fig1w$ = "P"

    If fb1 = 1 Then Let fig1b$ = "k"
    If fb1 = 2 Then Let fig1b$ = "q"
    If fb1 = 3 Then Let fig1b$ = "b"
    If fb1 = 4 Then Let fig1b$ = "n"
    If fb1 = 5 Then Let fig1b$ = "r"
    If fb1 = 6 Then Let fig1b$ = "p"

    If fw2 = 1 Then Let fig2w$ = "K"
    If fw2 = 2 Then Let fig2w$ = "Q"
    If fw2 = 3 Then Let fig2w$ = "B"
    If fw2 = 4 Then Let fig2w$ = "N"
    If fw2 = 5 Then Let fig2w$ = "R"
    If fw2 = 6 Then Let fig2w$ = "P"

    If fb2 = 1 Then Let fig2b$ = "k"
    If fb2 = 2 Then Let fig2b$ = "q"
    If fb2 = 3 Then Let fig2b$ = "b"
    If fb2 = 4 Then Let fig2b$ = "n"
    If fb2 = 5 Then Let fig2b$ = "r"
    If fb2 = 6 Then Let fig2b$ = "p"

    If fw3 = 1 Then Let fig3w$ = "K"
    If fw3 = 2 Then Let fig3w$ = "Q"
    If fw3 = 3 Then Let fig3w$ = "B"
    If fw3 = 4 Then Let fig3w$ = "N"
    If fw3 = 5 Then Let fig3w$ = "R"
    If fw3 = 6 Then Let fig3w$ = "P"

    If fb3 = 1 Then Let fig3b$ = "k"
    If fb3 = 2 Then Let fig3b$ = "q"
    If fb3 = 3 Then Let fig3b$ = "b"
    If fb3 = 4 Then Let fig3b$ = "n"
    If fb3 = 5 Then Let fig3b$ = "r"
    If fb3 = 6 Then Let fig3b$ = "p"

    If fw4 = 1 Then Let fig4w$ = "K"
    If fw4 = 2 Then Let fig4w$ = "Q"
    If fw4 = 3 Then Let fig4w$ = "B"
    If fw4 = 4 Then Let fig4w$ = "N"
    If fw4 = 5 Then Let fig4w$ = "R"
    If fw4 = 6 Then Let fig4w$ = "P"

    If fb4 = 1 Then Let fig4b$ = "k"
    If fb4 = 2 Then Let fig4b$ = "q"
    If fb4 = 3 Then Let fig4b$ = "b"
    If fb4 = 4 Then Let fig4b$ = "n"
    If fb4 = 5 Then Let fig4b$ = "r"
    If fb4 = 6 Then Let fig4b$ = "p"

    Dim table(8, 8) As String
    Let table(fw1y, fw1x) = fig1w$
    Let table(fb1y, fb1x) = fig1b$
    Let table(fw2y, fw2x) = fig2w$
    Let table(fb2y, fb2x) = fig2b$
    Let table(fw3y, fw3x) = fig3w$
    Let table(fb3y, fb3x) = fig3b$
    Let table(fw4y, fw4x) = fig4w$
    Let table(fb4y, fb4x) = fig4b$
    For row = 1 To 8: For col = 1 To 8
        If table(row, col) = "" Then Let table(row, col) = "+"
    Next col: Next row

    Let mas1$ = table(1, 1) + table(1, 2) + table(1, 3) + table(1, 4) + table(1, 5) + table(1, 6) + table(1, 7) + table(1, 8)
    Let lin1$ = ""
    Let count = 0
    For index = 1 To 8
        If index = 8 And Mid$(mas1$, index, 1) = "+" Then
            count = count + 1
            lin1$ = lin1$ + LTrim$(Str$(count))
        End If
        If index < 8 And Mid$(mas1$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas1$, index, 1) <> "+" And count = 0 Then
            lin1$ = lin1$ + Mid$(mas1$, index, 1)
        End If
        If Mid$(mas1$, index, 1) <> "+" And count > 0 Then
            lin1$ = lin1$ + LTrim$(Str$(count))
            lin1$ = lin1$ + Mid$(mas1$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas2$ = table(2, 1) + table(2, 2) + table(2, 3) + table(2, 4) + table(2, 5) + table(2, 6) + table(2, 7) + table(2, 8)
    Let lin2$ = ""
    Let count = 0
    For index = 1 To 8
        If index = 8 And Mid$(mas2$, index, 1) = "+" Then
            count = count + 1
            lin2$ = lin2$ + LTrim$(Str$(count))
        End If
        If index < 8 And Mid$(mas2$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas2$, index, 1) <> "+" And count = 0 Then
            lin2$ = lin2$ + Mid$(mas2$, index, 1)
        End If
        If Mid$(mas2$, index, 1) <> "+" And count > 0 Then
            lin2$ = lin2$ + LTrim$(Str$(count))
            lin2$ = lin2$ + Mid$(mas2$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas3$ = table(3, 1) + table(3, 2) + table(3, 3) + table(3, 4) + table(3, 5) + table(3, 6) + table(3, 7) + table(3, 8)
    Let lin3$ = ""
    Let count = 0
    For index = 1 To 8
        If index = 8 And Mid$(mas3$, index, 1) = "+" Then
            count = count + 1
            lin3$ = lin3$ + LTrim$(Str$(count))
        End If
        If index < 8 And Mid$(mas3$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas3$, index, 1) <> "+" And count = 0 Then
            lin3$ = lin3$ + Mid$(mas3$, index, 1)
        End If
        If Mid$(mas3$, index, 1) <> "+" And count > 0 Then
            lin3$ = lin3$ + LTrim$(Str$(count))
            lin3$ = lin3$ + Mid$(mas3$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas4$ = table(4, 1) + table(4, 2) + table(4, 3) + table(4, 4) + table(4, 5) + table(4, 6) + table(4, 7) + table(4, 8)
    Let lin4$ = ""
    Let count = 0
    For index = 1 To 8
        If index = 8 And Mid$(mas4$, index, 1) = "+" Then
            count = count + 1
            lin4$ = lin4$ + LTrim$(Str$(count))
        End If
        If index < 8 And Mid$(mas4$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas4$, index, 1) <> "+" And count = 0 Then
            lin4$ = lin4$ + Mid$(mas4$, index, 1)
        End If
        If Mid$(mas4$, index, 1) <> "+" And count > 0 Then
            lin4$ = lin4$ + LTrim$(Str$(count))
            lin4$ = lin4$ + Mid$(mas4$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas5$ = table(5, 1) + table(5, 2) + table(5, 3) + table(5, 4) + table(5, 5) + table(5, 6) + table(5, 7) + table(5, 8)
    Let lin5$ = ""
    Let count = 0
    For index = 1 To 8
        If index = 8 And Mid$(mas5$, index, 1) = "+" Then
            count = count + 1
            lin5$ = lin5$ + LTrim$(Str$(count))
        End If
        If index < 8 And Mid$(mas5$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas5$, index, 1) <> "+" And count = 0 Then
            lin5$ = lin5$ + Mid$(mas5$, index, 1)
        End If
        If Mid$(mas5$, index, 1) <> "+" And count > 0 Then
            lin5$ = lin5$ + LTrim$(Str$(count))
            lin5$ = lin5$ + Mid$(mas5$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas6$ = table(6, 1) + table(6, 2) + table(6, 3) + table(6, 4) + table(6, 5) + table(6, 6) + table(6, 7) + table(6, 8)
    Let lin6$ = ""
    Let count = 0
    For index = 1 To 8
        If index = 8 And Mid$(mas6$, index, 1) = "+" Then
            count = count + 1
            lin6$ = lin6$ + LTrim$(Str$(count))
        End If
        If index < 8 And Mid$(mas6$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas6$, index, 1) <> "+" And count = 0 Then
            lin6$ = lin6$ + Mid$(mas6$, index, 1)
        End If
        If Mid$(mas6$, index, 1) <> "+" And count > 0 Then
            lin6$ = lin6$ + LTrim$(Str$(count))
            lin6$ = lin6$ + Mid$(mas6$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas7$ = table(7, 1) + table(7, 2) + table(7, 3) + table(7, 4) + table(7, 5) + table(7, 6) + table(7, 7) + table(7, 8)
    Let lin7$ = ""
    Let count = 0
    For index = 1 To 8
        If index = 8 And Mid$(mas7$, index, 1) = "+" Then
            count = count + 1
            lin7$ = lin7$ + LTrim$(Str$(count))
        End If
        If index < 8 And Mid$(mas7$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas7$, index, 1) <> "+" And count = 0 Then
            lin7$ = lin7$ + Mid$(mas7$, index, 1)
        End If
        If Mid$(mas7$, index, 1) <> "+" And count > 0 Then
            lin7$ = lin7$ + LTrim$(Str$(count))
            lin7$ = lin7$ + Mid$(mas7$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas8$ = table(8, 1) + table(8, 2) + table(8, 3) + table(8, 4) + table(8, 5) + table(8, 6) + table(8, 7) + table(8, 8)
    Let lin8$ = ""
    Let count = 0
    For index = 1 To 8
        If index = 8 And Mid$(mas8$, index, 1) = "+" Then
            count = count + 1
            lin8$ = lin8$ + LTrim$(Str$(count))
        End If
        If index < 8 And Mid$(mas8$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas8$, index, 1) <> "+" And count = 0 Then
            lin8$ = lin8$ + Mid$(mas8$, index, 1)
        End If
        If Mid$(mas8$, index, 1) <> "+" And count > 0 Then
            lin8$ = lin8$ + LTrim$(Str$(count))
            lin8$ = lin8$ + Mid$(mas8$, index, 1)
            Let count = 0
        End If
    Next index

    Let fen$ = lin8$ + "/" + lin7$ + "/" + lin6$ + "/" + lin5$ + "/" + lin4$ + "/" + lin3$ + "/" + lin2$ + "/" + lin1$

    Color 10
    Locate 2, 1: Print "              Press any key to display the Forsyth-Edwards notation                    "
    Do
    Loop Until InKey$ <> ""
    Locate 2, 1: Print "                                                                                       "
    Color 12
    Locate 2, 28: Print fen$

    Do
    Loop Until InKey$ <> ""

    System

End Sub

Sub makrukfen

    Rem Forsyth-Edwards notation

    If fw1 = 1 Then Let fig1w$ = "L"
    If fw1 = 2 Then Let fig1w$ = "S"
    If fw1 = 3 Then Let fig1w$ = "N"
    If fw1 = 4 Then Let fig1w$ = "H"
    If fw1 = 5 Then Let fig1w$ = "B"
    If fw1 = 6 Then Let fig1w$ = "C"

    If fb1 = 1 Then Let fig1b$ = "l"
    If fb1 = 2 Then Let fig1b$ = "s"
    If fb1 = 3 Then Let fig1b$ = "n"
    If fb1 = 4 Then Let fig1b$ = "h"
    If fb1 = 5 Then Let fig1b$ = "b"
    If fb1 = 6 Then Let fig1b$ = "c"

    If fw2 = 1 Then Let fig2w$ = "L"
    If fw2 = 2 Then Let fig2w$ = "S"
    If fw2 = 3 Then Let fig2w$ = "N"
    If fw2 = 4 Then Let fig2w$ = "H"
    If fw2 = 5 Then Let fig2w$ = "B"
    If fw2 = 6 Then Let fig2w$ = "C"

    If fb2 = 1 Then Let fig2b$ = "l"
    If fb2 = 2 Then Let fig2b$ = "s"
    If fb2 = 3 Then Let fig2b$ = "n"
    If fb2 = 4 Then Let fig2b$ = "h"
    If fb2 = 5 Then Let fig2b$ = "b"
    If fb2 = 6 Then Let fig2b$ = "c"

    If fw3 = 1 Then Let fig3w$ = "L"
    If fw3 = 2 Then Let fig3w$ = "S"
    If fw3 = 3 Then Let fig3w$ = "N"
    If fw3 = 4 Then Let fig3w$ = "H"
    If fw3 = 5 Then Let fig3w$ = "B"
    If fw3 = 6 Then Let fig3w$ = "C"

    If fb3 = 1 Then Let fig3b$ = "l"
    If fb3 = 2 Then Let fig3b$ = "s"
    If fb3 = 3 Then Let fig3b$ = "n"
    If fb3 = 4 Then Let fig3b$ = "h"
    If fb3 = 5 Then Let fig3b$ = "b"
    If fb3 = 6 Then Let fig3b$ = "c"

    If fw4 = 1 Then Let fig4w$ = "L"
    If fw4 = 2 Then Let fig4w$ = "S"
    If fw4 = 3 Then Let fig4w$ = "N"
    If fw4 = 4 Then Let fig4w$ = "H"
    If fw4 = 5 Then Let fig4w$ = "B"
    If fw4 = 6 Then Let fig4w$ = "C"

    If fb4 = 1 Then Let fig4b$ = "l"
    If fb4 = 2 Then Let fig4b$ = "s"
    If fb4 = 3 Then Let fig4b$ = "n"
    If fb4 = 4 Then Let fig4b$ = "h"
    If fb4 = 5 Then Let fig4b$ = "b"
    If fb4 = 6 Then Let fig4b$ = "c"

    Dim table(8, 8) As String
    Let table(fw1y, fw1x) = fig1w$
    Let table(fb1y, fb1x) = fig1b$
    Let table(fw2y, fw2x) = fig2w$
    Let table(fb2y, fb2x) = fig2b$
    Let table(fw3y, fw3x) = fig3w$
    Let table(fb3y, fb3x) = fig3b$
    Let table(fw4y, fw4x) = fig4w$
    Let table(fb4y, fb4x) = fig4b$
    For row = 1 To 8: For col = 1 To 8
        If table(row, col) = "" Then Let table(row, col) = "+"
    Next col: Next row

    Let mas1$ = table(1, 1) + table(1, 2) + table(1, 3) + table(1, 4) + table(1, 5) + table(1, 6) + table(1, 7) + table(1, 8)
    Let lin1$ = ""
    Let count = 0
    For index = 1 To 8
        If index = 8 And Mid$(mas1$, index, 1) = "+" Then
            count = count + 1
            lin1$ = lin1$ + LTrim$(Str$(count))
        End If
        If index < 8 And Mid$(mas1$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas1$, index, 1) <> "+" And count = 0 Then
            lin1$ = lin1$ + Mid$(mas1$, index, 1)
        End If
        If Mid$(mas1$, index, 1) <> "+" And count > 0 Then
            lin1$ = lin1$ + LTrim$(Str$(count))
            lin1$ = lin1$ + Mid$(mas1$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas2$ = table(2, 1) + table(2, 2) + table(2, 3) + table(2, 4) + table(2, 5) + table(2, 6) + table(2, 7) + table(2, 8)
    Let lin2$ = ""
    Let count = 0
    For index = 1 To 8
        If index = 8 And Mid$(mas2$, index, 1) = "+" Then
            count = count + 1
            lin2$ = lin2$ + LTrim$(Str$(count))
        End If
        If index < 8 And Mid$(mas2$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas2$, index, 1) <> "+" And count = 0 Then
            lin2$ = lin2$ + Mid$(mas2$, index, 1)
        End If
        If Mid$(mas2$, index, 1) <> "+" And count > 0 Then
            lin2$ = lin2$ + LTrim$(Str$(count))
            lin2$ = lin2$ + Mid$(mas2$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas3$ = table(3, 1) + table(3, 2) + table(3, 3) + table(3, 4) + table(3, 5) + table(3, 6) + table(3, 7) + table(3, 8)
    Let lin3$ = ""
    Let count = 0
    For index = 1 To 8
        If index = 8 And Mid$(mas3$, index, 1) = "+" Then
            count = count + 1
            lin3$ = lin3$ + LTrim$(Str$(count))
        End If
        If index < 8 And Mid$(mas3$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas3$, index, 1) <> "+" And count = 0 Then
            lin3$ = lin3$ + Mid$(mas3$, index, 1)
        End If
        If Mid$(mas3$, index, 1) <> "+" And count > 0 Then
            lin3$ = lin3$ + LTrim$(Str$(count))
            lin3$ = lin3$ + Mid$(mas3$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas4$ = table(4, 1) + table(4, 2) + table(4, 3) + table(4, 4) + table(4, 5) + table(4, 6) + table(4, 7) + table(4, 8)
    Let lin4$ = ""
    Let count = 0
    For index = 1 To 8
        If index = 8 And Mid$(mas4$, index, 1) = "+" Then
            count = count + 1
            lin4$ = lin4$ + LTrim$(Str$(count))
        End If
        If index < 8 And Mid$(mas4$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas4$, index, 1) <> "+" And count = 0 Then
            lin4$ = lin4$ + Mid$(mas4$, index, 1)
        End If
        If Mid$(mas4$, index, 1) <> "+" And count > 0 Then
            lin4$ = lin4$ + LTrim$(Str$(count))
            lin4$ = lin4$ + Mid$(mas4$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas5$ = table(5, 1) + table(5, 2) + table(5, 3) + table(5, 4) + table(5, 5) + table(5, 6) + table(5, 7) + table(5, 8)
    Let lin5$ = ""
    Let count = 0
    For index = 1 To 8
        If index = 8 And Mid$(mas5$, index, 1) = "+" Then
            count = count + 1
            lin5$ = lin5$ + LTrim$(Str$(count))
        End If
        If index < 8 And Mid$(mas5$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas5$, index, 1) <> "+" And count = 0 Then
            lin5$ = lin5$ + Mid$(mas5$, index, 1)
        End If
        If Mid$(mas5$, index, 1) <> "+" And count > 0 Then
            lin5$ = lin5$ + LTrim$(Str$(count))
            lin5$ = lin5$ + Mid$(mas5$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas6$ = table(6, 1) + table(6, 2) + table(6, 3) + table(6, 4) + table(6, 5) + table(6, 6) + table(6, 7) + table(6, 8)
    Let lin6$ = ""
    Let count = 0
    For index = 1 To 8
        If index = 8 And Mid$(mas6$, index, 1) = "+" Then
            count = count + 1
            lin6$ = lin6$ + LTrim$(Str$(count))
        End If
        If index < 8 And Mid$(mas6$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas6$, index, 1) <> "+" And count = 0 Then
            lin6$ = lin6$ + Mid$(mas6$, index, 1)
        End If
        If Mid$(mas6$, index, 1) <> "+" And count > 0 Then
            lin6$ = lin6$ + LTrim$(Str$(count))
            lin6$ = lin6$ + Mid$(mas6$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas7$ = table(7, 1) + table(7, 2) + table(7, 3) + table(7, 4) + table(7, 5) + table(7, 6) + table(7, 7) + table(7, 8)
    Let lin7$ = ""
    Let count = 0
    For index = 1 To 8
        If index = 8 And Mid$(mas7$, index, 1) = "+" Then
            count = count + 1
            lin7$ = lin7$ + LTrim$(Str$(count))
        End If
        If index < 8 And Mid$(mas7$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas7$, index, 1) <> "+" And count = 0 Then
            lin7$ = lin7$ + Mid$(mas7$, index, 1)
        End If
        If Mid$(mas7$, index, 1) <> "+" And count > 0 Then
            lin7$ = lin7$ + LTrim$(Str$(count))
            lin7$ = lin7$ + Mid$(mas7$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas8$ = table(8, 1) + table(8, 2) + table(8, 3) + table(8, 4) + table(8, 5) + table(8, 6) + table(8, 7) + table(8, 8)
    Let lin8$ = ""
    Let count = 0
    For index = 1 To 8
        If index = 8 And Mid$(mas8$, index, 1) = "+" Then
            count = count + 1
            lin8$ = lin8$ + LTrim$(Str$(count))
        End If
        If index < 8 And Mid$(mas8$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas8$, index, 1) <> "+" And count = 0 Then
            lin8$ = lin8$ + Mid$(mas8$, index, 1)
        End If
        If Mid$(mas8$, index, 1) <> "+" And count > 0 Then
            lin8$ = lin8$ + LTrim$(Str$(count))
            lin8$ = lin8$ + Mid$(mas8$, index, 1)
            Let count = 0
        End If
    Next index

    Let fen$ = lin8$ + "/" + lin7$ + "/" + lin6$ + "/" + lin5$ + "/" + lin4$ + "/" + lin3$ + "/" + lin2$ + "/" + lin1$

    Color 10
    Locate 2, 1: Print "              Press any key to display the Forsyth-Edwards notation                    "
    Do
    Loop Until InKey$ <> ""
    Locate 2, 1: Print "                                                                                       "
    Color 12
    Locate 2, 28: Print fen$

    Do
    Loop Until InKey$ <> ""

    System

End Sub

Sub xiangqifen

    Rem Forsyth-Edwards notation

    If fw1 = 1 Then Let fig1w$ = "K"
    If fw1 = 2 Then Let fig1w$ = "A"
    If fw1 = 3 Then Let fig1w$ = "E"
    If fw1 = 4 Then Let fig1w$ = "H"
    If fw1 = 5 Then Let fig1w$ = "R"
    If fw1 = 6 Then Let fig1w$ = "C"
    If fw1 = 7 Then Let fig1w$ = "P"

    If fb1 = 1 Then Let fig1b$ = "k"
    If fb1 = 2 Then Let fig1b$ = "a"
    If fb1 = 3 Then Let fig1b$ = "e"
    If fb1 = 4 Then Let fig1b$ = "h"
    If fb1 = 5 Then Let fig1b$ = "r"
    If fb1 = 6 Then Let fig1b$ = "c"
    If fb1 = 7 Then Let fig1w$ = "p"

    If fw2 = 1 Then Let fig2w$ = "K"
    If fw2 = 2 Then Let fig2w$ = "A"
    If fw2 = 3 Then Let fig2w$ = "E"
    If fw2 = 4 Then Let fig2w$ = "H"
    If fw2 = 5 Then Let fig2w$ = "R"
    If fw2 = 6 Then Let fig2w$ = "C"
    If fw2 = 7 Then Let fig2w$ = "P"

    If fb2 = 1 Then Let fig2b$ = "k"
    If fb2 = 2 Then Let fig2b$ = "a"
    If fb2 = 3 Then Let fig2b$ = "e"
    If fb2 = 4 Then Let fig2b$ = "h"
    If fb2 = 5 Then Let fig2b$ = "r"
    If fb2 = 6 Then Let fig2b$ = "c"
    If fb2 = 7 Then Let fig2w$ = "p"

    If fw3 = 1 Then Let fig3w$ = "K"
    If fw3 = 2 Then Let fig3w$ = "A"
    If fw3 = 3 Then Let fig3w$ = "E"
    If fw3 = 4 Then Let fig3w$ = "H"
    If fw3 = 5 Then Let fig3w$ = "R"
    If fw3 = 6 Then Let fig3w$ = "C"
    If fw3 = 7 Then Let fig3w$ = "P"

    If fb3 = 1 Then Let fig3b$ = "k"
    If fb3 = 2 Then Let fig3b$ = "a"
    If fb3 = 3 Then Let fig3b$ = "e"
    If fb3 = 4 Then Let fig3b$ = "h"
    If fb3 = 5 Then Let fig3b$ = "r"
    If fb3 = 6 Then Let fig3b$ = "c"
    If fb3 = 7 Then Let fig3w$ = "p"

    If fw4 = 1 Then Let fig4w$ = "K"
    If fw4 = 2 Then Let fig4w$ = "A"
    If fw4 = 3 Then Let fig4w$ = "E"
    If fw4 = 4 Then Let fig4w$ = "H"
    If fw4 = 5 Then Let fig4w$ = "R"
    If fw4 = 6 Then Let fig4w$ = "C"
    If fw4 = 7 Then Let fig4w$ = "P"

    If fb4 = 1 Then Let fig4b$ = "k"
    If fb4 = 2 Then Let fig4b$ = "a"
    If fb4 = 3 Then Let fig4b$ = "e"
    If fb4 = 4 Then Let fig4b$ = "h"
    If fb4 = 5 Then Let fig4b$ = "r"
    If fb4 = 6 Then Let fig4b$ = "c"
    If fb4 = 7 Then Let fig4w$ = "p"

    Dim table(10, 9) As String
    Let table(fw1y, fw1x) = fig1w$
    Let table(fb1y, fb1x) = fig1b$
    Let table(fw2y, fw2x) = fig2w$
    Let table(fb2y, fb2x) = fig2b$
    Let table(fw3y, fw3x) = fig3w$
    Let table(fb3y, fb3x) = fig3b$
    Let table(fw4y, fw4x) = fig4w$
    Let table(fb4y, fb4x) = fig4b$
    For row = 1 To 10: For col = 1 To 9
        If table(row, col) = "" Then Let table(row, col) = "+"
    Next col: Next row

    Let mas1$ = table(1, 1) + table(1, 2) + table(1, 3) + table(1, 4) + table(1, 5) + table(1, 6) + table(1, 7) + table(1, 8) + table(1, 9)
    Let lin1$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas1$, index, 1) = "+" Then
            count = count + 1
            lin1$ = lin1$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas1$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas1$, index, 1) <> "+" And count = 0 Then
            lin1$ = lin1$ + Mid$(mas1$, index, 1)
        End If
        If Mid$(mas1$, index, 1) <> "+" And count > 0 Then
            lin1$ = lin1$ + LTrim$(Str$(count))
            lin1$ = lin1$ + Mid$(mas1$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas2$ = table(2, 1) + table(2, 2) + table(2, 3) + table(2, 4) + table(2, 5) + table(2, 6) + table(2, 7) + table(2, 8) + table(2, 9)
    Let lin2$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas2$, index, 1) = "+" Then
            count = count + 1
            lin2$ = lin2$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas2$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas2$, index, 1) <> "+" And count = 0 Then
            lin2$ = lin2$ + Mid$(mas2$, index, 1)
        End If
        If Mid$(mas2$, index, 1) <> "+" And count > 0 Then
            lin2$ = lin2$ + LTrim$(Str$(count))
            lin2$ = lin2$ + Mid$(mas2$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas3$ = table(3, 1) + table(3, 2) + table(3, 3) + table(3, 4) + table(3, 5) + table(3, 6) + table(3, 7) + table(3, 8) + table(3, 9)
    Let lin3$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas3$, index, 1) = "+" Then
            count = count + 1
            lin3$ = lin3$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas3$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas3$, index, 1) <> "+" And count = 0 Then
            lin3$ = lin3$ + Mid$(mas3$, index, 1)
        End If
        If Mid$(mas3$, index, 1) <> "+" And count > 0 Then
            lin3$ = lin3$ + LTrim$(Str$(count))
            lin3$ = lin3$ + Mid$(mas3$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas4$ = table(4, 1) + table(4, 2) + table(4, 3) + table(4, 4) + table(4, 5) + table(4, 6) + table(4, 7) + table(4, 8) + table(4, 9)
    Let lin4$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas4$, index, 1) = "+" Then
            count = count + 1
            lin4$ = lin4$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas4$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas4$, index, 1) <> "+" And count = 0 Then
            lin4$ = lin4$ + Mid$(mas4$, index, 1)
        End If
        If Mid$(mas4$, index, 1) <> "+" And count > 0 Then
            lin4$ = lin4$ + LTrim$(Str$(count))
            lin4$ = lin4$ + Mid$(mas4$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas5$ = table(5, 1) + table(5, 2) + table(5, 3) + table(5, 4) + table(5, 5) + table(5, 6) + table(5, 7) + table(5, 8) + table(5, 9)
    Let lin5$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas5$, index, 1) = "+" Then
            count = count + 1
            lin5$ = lin5$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas5$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas5$, index, 1) <> "+" And count = 0 Then
            lin5$ = lin5$ + Mid$(mas5$, index, 1)
        End If
        If Mid$(mas5$, index, 1) <> "+" And count > 0 Then
            lin5$ = lin5$ + LTrim$(Str$(count))
            lin5$ = lin5$ + Mid$(mas5$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas6$ = table(6, 1) + table(6, 2) + table(6, 3) + table(6, 4) + table(6, 5) + table(6, 6) + table(6, 7) + table(6, 8) + table(6, 9)
    Let lin6$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas6$, index, 1) = "+" Then
            count = count + 1
            lin6$ = lin6$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas6$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas6$, index, 1) <> "+" And count = 0 Then
            lin6$ = lin6$ + Mid$(mas6$, index, 1)
        End If
        If Mid$(mas6$, index, 1) <> "+" And count > 0 Then
            lin6$ = lin6$ + LTrim$(Str$(count))
            lin6$ = lin6$ + Mid$(mas6$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas7$ = table(7, 1) + table(7, 2) + table(7, 3) + table(7, 4) + table(7, 5) + table(7, 6) + table(7, 7) + table(7, 8) + table(7, 9)
    Let lin7$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas7$, index, 1) = "+" Then
            count = count + 1
            lin7$ = lin7$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas7$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas7$, index, 1) <> "+" And count = 0 Then
            lin7$ = lin7$ + Mid$(mas7$, index, 1)
        End If
        If Mid$(mas7$, index, 1) <> "+" And count > 0 Then
            lin7$ = lin7$ + LTrim$(Str$(count))
            lin7$ = lin7$ + Mid$(mas7$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas8$ = table(8, 1) + table(8, 2) + table(8, 3) + table(8, 4) + table(8, 5) + table(8, 6) + table(8, 7) + table(8, 8) + table(8, 9)
    Let lin8$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas8$, index, 1) = "+" Then
            count = count + 1
            lin8$ = lin8$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas8$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas8$, index, 1) <> "+" And count = 0 Then
            lin8$ = lin8$ + Mid$(mas8$, index, 1)
        End If
        If Mid$(mas8$, index, 1) <> "+" And count > 0 Then
            lin8$ = lin8$ + LTrim$(Str$(count))
            lin8$ = lin8$ + Mid$(mas8$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas9$ = table(9, 1) + table(9, 2) + table(9, 3) + table(9, 4) + table(9, 5) + table(9, 6) + table(9, 7) + table(9, 8) + table(9, 9)
    Let lin9$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas9$, index, 1) = "+" Then
            count = count + 1
            lin9$ = lin9$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas9$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas9$, index, 1) <> "+" And count = 0 Then
            lin9$ = lin9$ + Mid$(mas9$, index, 1)
        End If
        If Mid$(mas9$, index, 1) <> "+" And count > 0 Then
            lin9$ = lin9$ + LTrim$(Str$(count))
            lin9$ = lin9$ + Mid$(mas9$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas0$ = table(10, 1) + table(10, 2) + table(10, 3) + table(10, 4) + table(10, 5) + table(10, 6) + table(10, 7) + table(10, 8) + table(10, 9)
    Let lin0$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas0$, index, 1) = "+" Then
            count = count + 1
            lin0$ = lin0$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas0$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas0$, index, 1) <> "+" And count = 0 Then
            lin0$ = lin0$ + Mid$(mas0$, index, 1)
        End If
        If Mid$(mas0$, index, 1) <> "+" And count > 0 Then
            lin0$ = lin0$ + LTrim$(Str$(count))
            lin0$ = lin0$ + Mid$(mas0$, index, 1)
            Let count = 0
        End If
    Next index

    Let fen$ = lin0$ + "/" + lin9$ + "/" + lin8$ + "/" + lin7$ + "/" + lin6$ + "/" + lin5$ + "/" + lin4$ + "/" + lin3$ + "/" + lin2$ + "/" + lin1$

    Color 10
    Locate 2, 1: Print "              Press any key to display the Forsyth-Edwards notation                    "
    Do
    Loop Until InKey$ <> ""
    Locate 2, 1: Print "                                                                                       "
    Color 12
    Locate 2, 24: Print fen$

    Do
    Loop Until InKey$ <> ""

    System

End Sub

Sub shogifen

    Rem Forsyth-Edwards notation

    If fw1 = 1 Then Let fig1w$ = "K"
    If fw1 = 2 Then Let fig1w$ = "G"
    If fw1 = 3 Then Let fig1w$ = "S"
    If fw1 = 4 Then Let fig1w$ = "B"
    If fw1 = 5 Then Let fig1w$ = "N"
    If fw1 = 6 Then Let fig1w$ = "R"
    If fw1 = 7 Then Let fig1w$ = "L"
    If fw1 = 8 Then Let fig1w$ = "P"
    If fw1 = 9 Then Let fig1w$ = "H"
    If fw1 = 10 Then Let fig1w$ = "D"
    If fw1 = 11 Then Let fig1w$ = "T"

    If fb1 = 1 Then Let fig1b$ = "k"
    If fb1 = 2 Then Let fig1b$ = "g"
    If fb1 = 3 Then Let fig1b$ = "a"
    If fb1 = 4 Then Let fig1b$ = "b"
    If fb1 = 5 Then Let fig1b$ = "n"
    If fb1 = 6 Then Let fig1b$ = "r"
    If fb1 = 7 Then Let fig1b$ = "l"
    If fb1 = 8 Then Let fig1b$ = "p"
    If fb1 = 9 Then Let fig1b$ = "h"
    If fb1 = 10 Then Let fig1b$ = "d"
    If fb1 = 11 Then Let fig1b$ = "t"

    If fw2 = 1 Then Let fig2w$ = "K"
    If fw2 = 2 Then Let fig2w$ = "G"
    If fw2 = 3 Then Let fig2w$ = "S"
    If fw2 = 4 Then Let fig2w$ = "B"
    If fw2 = 5 Then Let fig2w$ = "N"
    If fw2 = 6 Then Let fig2w$ = "R"
    If fw2 = 7 Then Let fig2w$ = "L"
    If fw2 = 8 Then Let fig2w$ = "P"
    If fw2 = 9 Then Let fig2w$ = "H"
    If fw2 = 20 Then Let fig2w$ = "D"
    If fw2 = 22 Then Let fig2w$ = "T"

    If fb2 = 1 Then Let fig2b$ = "k"
    If fb2 = 2 Then Let fig2b$ = "g"
    If fb2 = 3 Then Let fig2b$ = "a"
    If fb2 = 4 Then Let fig2b$ = "b"
    If fb2 = 5 Then Let fig2b$ = "n"
    If fb2 = 6 Then Let fig2b$ = "r"
    If fb2 = 7 Then Let fig2b$ = "l"
    If fb2 = 8 Then Let fig2b$ = "p"
    If fb2 = 9 Then Let fig2b$ = "h"
    If fb2 = 20 Then Let fig2b$ = "d"
    If fb2 = 22 Then Let fig2b$ = "t"

    If fw3 = 1 Then Let fig3w$ = "K"
    If fw3 = 2 Then Let fig3w$ = "G"
    If fw3 = 3 Then Let fig3w$ = "S"
    If fw3 = 4 Then Let fig3w$ = "B"
    If fw3 = 5 Then Let fig3w$ = "N"
    If fw3 = 6 Then Let fig3w$ = "R"
    If fw3 = 7 Then Let fig3w$ = "L"
    If fw3 = 8 Then Let fig3w$ = "P"
    If fw3 = 9 Then Let fig3w$ = "H"
    If fw3 = 30 Then Let fig3w$ = "D"
    If fw3 = 33 Then Let fig3w$ = "T"

    If fb3 = 1 Then Let fig3b$ = "k"
    If fb3 = 2 Then Let fig3b$ = "g"
    If fb3 = 3 Then Let fig3b$ = "a"
    If fb3 = 4 Then Let fig3b$ = "b"
    If fb3 = 5 Then Let fig3b$ = "n"
    If fb3 = 6 Then Let fig3b$ = "r"
    If fb3 = 7 Then Let fig3b$ = "l"
    If fb3 = 8 Then Let fig3b$ = "p"
    If fb3 = 9 Then Let fig3b$ = "h"
    If fb3 = 30 Then Let fig3b$ = "d"
    If fb3 = 33 Then Let fig3b$ = "t"

    If fw4 = 1 Then Let fig4w$ = "K"
    If fw4 = 2 Then Let fig4w$ = "G"
    If fw4 = 3 Then Let fig4w$ = "S"
    If fw4 = 4 Then Let fig4w$ = "B"
    If fw4 = 5 Then Let fig4w$ = "N"
    If fw4 = 6 Then Let fig4w$ = "R"
    If fw4 = 7 Then Let fig4w$ = "L"
    If fw4 = 8 Then Let fig4w$ = "P"
    If fw4 = 9 Then Let fig4w$ = "H"
    If fw4 = 40 Then Let fig4w$ = "D"
    If fw4 = 44 Then Let fig4w$ = "T"

    If fb4 = 1 Then Let fig4b$ = "k"
    If fb4 = 2 Then Let fig4b$ = "g"
    If fb4 = 3 Then Let fig4b$ = "a"
    If fb4 = 4 Then Let fig4b$ = "b"
    If fb4 = 5 Then Let fig4b$ = "n"
    If fb4 = 6 Then Let fig4b$ = "r"
    If fb4 = 7 Then Let fig4b$ = "l"
    If fb4 = 8 Then Let fig4b$ = "p"
    If fb4 = 9 Then Let fig4b$ = "h"
    If fb4 = 40 Then Let fig4b$ = "d"
    If fb4 = 44 Then Let fig4b$ = "t"

    Dim table(9, 9) As String
    Let table(fw1y, fw1x) = fig1w$
    Let table(fb1y, fb1x) = fig1b$
    Let table(fw2y, fw2x) = fig2w$
    Let table(fb2y, fb2x) = fig2b$
    Let table(fw3y, fw3x) = fig3w$
    Let table(fb3y, fb3x) = fig3b$
    Let table(fw4y, fw4x) = fig4w$
    Let table(fb4y, fb4x) = fig4b$
    For row = 1 To 9: For col = 1 To 9
        If table(row, col) = "" Then Let table(row, col) = "+"
    Next col: Next row

    Let mas1$ = table(1, 1) + table(1, 2) + table(1, 3) + table(1, 4) + table(1, 5) + table(1, 6) + table(1, 7) + table(1, 8) + table(1, 9)
    Let lin1$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas1$, index, 1) = "+" Then
            count = count + 1
            lin1$ = lin1$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas1$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas1$, index, 1) <> "+" And count = 0 Then
            lin1$ = lin1$ + Mid$(mas1$, index, 1)
        End If
        If Mid$(mas1$, index, 1) <> "+" And count > 0 Then
            lin1$ = lin1$ + LTrim$(Str$(count))
            lin1$ = lin1$ + Mid$(mas1$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas2$ = table(2, 1) + table(2, 2) + table(2, 3) + table(2, 4) + table(2, 5) + table(2, 6) + table(2, 7) + table(2, 8) + table(2, 9)
    Let lin2$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas2$, index, 1) = "+" Then
            count = count + 1
            lin2$ = lin2$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas2$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas2$, index, 1) <> "+" And count = 0 Then
            lin2$ = lin2$ + Mid$(mas2$, index, 1)
        End If
        If Mid$(mas2$, index, 1) <> "+" And count > 0 Then
            lin2$ = lin2$ + LTrim$(Str$(count))
            lin2$ = lin2$ + Mid$(mas2$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas3$ = table(3, 1) + table(3, 2) + table(3, 3) + table(3, 4) + table(3, 5) + table(3, 6) + table(3, 7) + table(3, 8) + table(3, 9)
    Let lin3$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas3$, index, 1) = "+" Then
            count = count + 1
            lin3$ = lin3$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas3$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas3$, index, 1) <> "+" And count = 0 Then
            lin3$ = lin3$ + Mid$(mas3$, index, 1)
        End If
        If Mid$(mas3$, index, 1) <> "+" And count > 0 Then
            lin3$ = lin3$ + LTrim$(Str$(count))
            lin3$ = lin3$ + Mid$(mas3$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas4$ = table(4, 1) + table(4, 2) + table(4, 3) + table(4, 4) + table(4, 5) + table(4, 6) + table(4, 7) + table(4, 8) + table(4, 9)
    Let lin4$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas4$, index, 1) = "+" Then
            count = count + 1
            lin4$ = lin4$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas4$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas4$, index, 1) <> "+" And count = 0 Then
            lin4$ = lin4$ + Mid$(mas4$, index, 1)
        End If
        If Mid$(mas4$, index, 1) <> "+" And count > 0 Then
            lin4$ = lin4$ + LTrim$(Str$(count))
            lin4$ = lin4$ + Mid$(mas4$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas5$ = table(5, 1) + table(5, 2) + table(5, 3) + table(5, 4) + table(5, 5) + table(5, 6) + table(5, 7) + table(5, 8) + table(5, 9)
    Let lin5$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas5$, index, 1) = "+" Then
            count = count + 1
            lin5$ = lin5$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas5$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas5$, index, 1) <> "+" And count = 0 Then
            lin5$ = lin5$ + Mid$(mas5$, index, 1)
        End If
        If Mid$(mas5$, index, 1) <> "+" And count > 0 Then
            lin5$ = lin5$ + LTrim$(Str$(count))
            lin5$ = lin5$ + Mid$(mas5$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas6$ = table(6, 1) + table(6, 2) + table(6, 3) + table(6, 4) + table(6, 5) + table(6, 6) + table(6, 7) + table(6, 8) + table(6, 9)
    Let lin6$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas6$, index, 1) = "+" Then
            count = count + 1
            lin6$ = lin6$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas6$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas6$, index, 1) <> "+" And count = 0 Then
            lin6$ = lin6$ + Mid$(mas6$, index, 1)
        End If
        If Mid$(mas6$, index, 1) <> "+" And count > 0 Then
            lin6$ = lin6$ + LTrim$(Str$(count))
            lin6$ = lin6$ + Mid$(mas6$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas7$ = table(7, 1) + table(7, 2) + table(7, 3) + table(7, 4) + table(7, 5) + table(7, 6) + table(7, 7) + table(7, 8) + table(7, 9)
    Let lin7$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas7$, index, 1) = "+" Then
            count = count + 1
            lin7$ = lin7$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas7$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas7$, index, 1) <> "+" And count = 0 Then
            lin7$ = lin7$ + Mid$(mas7$, index, 1)
        End If
        If Mid$(mas7$, index, 1) <> "+" And count > 0 Then
            lin7$ = lin7$ + LTrim$(Str$(count))
            lin7$ = lin7$ + Mid$(mas7$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas8$ = table(8, 1) + table(8, 2) + table(8, 3) + table(8, 4) + table(8, 5) + table(8, 6) + table(8, 7) + table(8, 8) + table(8, 9)
    Let lin8$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas8$, index, 1) = "+" Then
            count = count + 1
            lin8$ = lin8$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas8$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas8$, index, 1) <> "+" And count = 0 Then
            lin8$ = lin8$ + Mid$(mas8$, index, 1)
        End If
        If Mid$(mas8$, index, 1) <> "+" And count > 0 Then
            lin8$ = lin8$ + LTrim$(Str$(count))
            lin8$ = lin8$ + Mid$(mas8$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas9$ = table(9, 1) + table(9, 2) + table(9, 3) + table(9, 4) + table(9, 5) + table(9, 6) + table(9, 7) + table(9, 8) + table(9, 9)
    Let lin9$ = ""
    Let count = 0
    For index = 1 To 9
        If index = 9 And Mid$(mas9$, index, 1) = "+" Then
            count = count + 1
            lin9$ = lin9$ + LTrim$(Str$(count))
        End If
        If index < 9 And Mid$(mas9$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas9$, index, 1) <> "+" And count = 0 Then
            lin9$ = lin9$ + Mid$(mas9$, index, 1)
        End If
        If Mid$(mas9$, index, 1) <> "+" And count > 0 Then
            lin9$ = lin9$ + LTrim$(Str$(count))
            lin9$ = lin9$ + Mid$(mas9$, index, 1)
            Let count = 0
        End If
    Next index

    Let fen$ = lin9$ + "/" + lin8$ + "/" + lin7$ + "/" + lin6$ + "/" + lin5$ + "/" + lin4$ + "/" + lin3$ + "/" + lin2$ + "/" + lin1$

    Color 10
    Locate 2, 1: Print "              Press any key to display the Forsyth-Edwards notation                    "
    Do
    Loop Until InKey$ <> ""
    Locate 2, 1: Print "                                                                                       "
    Color 12
    Locate 2, 25: Print fen$

    Do
    Loop Until InKey$ <> ""

    System

End Sub

Sub draughtsfen

    Rem Forsyth-Edwards notation

    If fw1 = 1 Then Let fig1w$ = "D"
    If fw1 = 2 Then Let fig1w$ = "C"

    If fb1 = 1 Then Let fig1b$ = "d"
    If fb1 = 2 Then Let fig1b$ = "c"

    If fw2 = 1 Then Let fig2w$ = "D"
    If fw2 = 2 Then Let fig2w$ = "C"

    If fb2 = 1 Then Let fig2b$ = "d"
    If fb2 = 2 Then Let fig2b$ = "c"

    If fw3 = 1 Then Let fig3w$ = "D"
    If fw3 = 2 Then Let fig3w$ = "C"

    If fb3 = 1 Then Let fig3b$ = "d"
    If fb3 = 2 Then Let fig3b$ = "c"

    If fw4 = 1 Then Let fig4w$ = "D"
    If fw4 = 2 Then Let fig4w$ = "C"

    If fb4 = 1 Then Let fig4b$ = "d"
    If fb4 = 2 Then Let fig4b$ = "c"

    Dim table(10, 10) As String
    Let table(fw1y, fw1x) = fig1w$
    Let table(fb1y, fb1x) = fig1b$
    Let table(fw2y, fw2x) = fig2w$
    Let table(fb2y, fb2x) = fig2b$
    Let table(fw3y, fw3x) = fig3w$
    Let table(fb3y, fb3x) = fig3b$
    Let table(fw4y, fw4x) = fig4w$
    Let table(fb4y, fb4x) = fig4b$
    For row = 1 To 10: For col = 1 To 10
        If table(row, col) = "" Then Let table(row, col) = "+"
    Next col: Next row

    Let mas1$ = table(1, 1) + table(1, 2) + table(1, 3) + table(1, 4) + table(1, 5) + table(1, 6) + table(1, 7) + table(1, 8) + table(1, 9) + table(1, 10)
    Let lin1$ = ""
    Let count = 0
    For index = 1 To 10
        If index = 10 And Mid$(mas1$, index, 1) = "+" Then
            count = count + 1
            lin1$ = lin1$ + LTrim$(Str$(count))
        End If
        If index < 10 And Mid$(mas1$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas1$, index, 1) <> "+" And count = 0 Then
            lin1$ = lin1$ + Mid$(mas1$, index, 1)
        End If
        If Mid$(mas1$, index, 1) <> "+" And count > 0 Then
            lin1$ = lin1$ + LTrim$(Str$(count))
            lin1$ = lin1$ + Mid$(mas1$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas2$ = table(2, 1) + table(2, 2) + table(2, 3) + table(2, 4) + table(2, 5) + table(2, 6) + table(2, 7) + table(2, 8) + table(2, 9) + table(2, 10)
    Let lin2$ = ""
    Let count = 0
    For index = 1 To 10
        If index = 10 And Mid$(mas2$, index, 1) = "+" Then
            count = count + 1
            lin2$ = lin2$ + LTrim$(Str$(count))
        End If
        If index < 10 And Mid$(mas2$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas2$, index, 1) <> "+" And count = 0 Then
            lin2$ = lin2$ + Mid$(mas2$, index, 1)
        End If
        If Mid$(mas2$, index, 1) <> "+" And count > 0 Then
            lin2$ = lin2$ + LTrim$(Str$(count))
            lin2$ = lin2$ + Mid$(mas2$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas3$ = table(3, 1) + table(3, 2) + table(3, 3) + table(3, 4) + table(3, 5) + table(3, 6) + table(3, 7) + table(3, 8) + table(3, 9) + table(3, 10)
    Let lin3$ = ""
    Let count = 0
    For index = 1 To 10
        If index = 10 And Mid$(mas3$, index, 1) = "+" Then
            count = count + 1
            lin3$ = lin3$ + LTrim$(Str$(count))
        End If
        If index < 10 And Mid$(mas3$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas3$, index, 1) <> "+" And count = 0 Then
            lin3$ = lin3$ + Mid$(mas3$, index, 1)
        End If
        If Mid$(mas3$, index, 1) <> "+" And count > 0 Then
            lin3$ = lin3$ + LTrim$(Str$(count))
            lin3$ = lin3$ + Mid$(mas3$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas4$ = table(4, 1) + table(4, 2) + table(4, 3) + table(4, 4) + table(4, 5) + table(4, 6) + table(4, 7) + table(4, 8) + table(4, 9) + table(4, 10)
    Let lin4$ = ""
    Let count = 0
    For index = 1 To 10
        If index = 10 And Mid$(mas4$, index, 1) = "+" Then
            count = count + 1
            lin4$ = lin4$ + LTrim$(Str$(count))
        End If
        If index < 10 And Mid$(mas4$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas4$, index, 1) <> "+" And count = 0 Then
            lin4$ = lin4$ + Mid$(mas4$, index, 1)
        End If
        If Mid$(mas4$, index, 1) <> "+" And count > 0 Then
            lin4$ = lin4$ + LTrim$(Str$(count))
            lin4$ = lin4$ + Mid$(mas4$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas5$ = table(5, 1) + table(5, 2) + table(5, 3) + table(5, 4) + table(5, 5) + table(5, 6) + table(5, 7) + table(5, 8) + table(5, 9) + table(5, 10)
    Let lin5$ = ""
    Let count = 0
    For index = 1 To 10
        If index = 10 And Mid$(mas5$, index, 1) = "+" Then
            count = count + 1
            lin5$ = lin5$ + LTrim$(Str$(count))
        End If
        If index < 10 And Mid$(mas5$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas5$, index, 1) <> "+" And count = 0 Then
            lin5$ = lin5$ + Mid$(mas5$, index, 1)
        End If
        If Mid$(mas5$, index, 1) <> "+" And count > 0 Then
            lin5$ = lin5$ + LTrim$(Str$(count))
            lin5$ = lin5$ + Mid$(mas5$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas6$ = table(6, 1) + table(6, 2) + table(6, 3) + table(6, 4) + table(6, 5) + table(6, 6) + table(6, 7) + table(6, 8) + table(6, 9) + table(6, 10)
    Let lin6$ = ""
    Let count = 0
    For index = 1 To 10
        If index = 10 And Mid$(mas6$, index, 1) = "+" Then
            count = count + 1
            lin6$ = lin6$ + LTrim$(Str$(count))
        End If
        If index < 10 And Mid$(mas6$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas6$, index, 1) <> "+" And count = 0 Then
            lin6$ = lin6$ + Mid$(mas6$, index, 1)
        End If
        If Mid$(mas6$, index, 1) <> "+" And count > 0 Then
            lin6$ = lin6$ + LTrim$(Str$(count))
            lin6$ = lin6$ + Mid$(mas6$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas7$ = table(7, 1) + table(7, 2) + table(7, 3) + table(7, 4) + table(7, 5) + table(7, 6) + table(7, 7) + table(7, 8) + table(7, 9) + table(7, 10)
    Let lin7$ = ""
    Let count = 0
    For index = 1 To 10
        If index = 10 And Mid$(mas7$, index, 1) = "+" Then
            count = count + 1
            lin7$ = lin7$ + LTrim$(Str$(count))
        End If
        If index < 10 And Mid$(mas7$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas7$, index, 1) <> "+" And count = 0 Then
            lin7$ = lin7$ + Mid$(mas7$, index, 1)
        End If
        If Mid$(mas7$, index, 1) <> "+" And count > 0 Then
            lin7$ = lin7$ + LTrim$(Str$(count))
            lin7$ = lin7$ + Mid$(mas7$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas8$ = table(8, 1) + table(8, 2) + table(8, 3) + table(8, 4) + table(8, 5) + table(8, 6) + table(8, 7) + table(8, 8) + table(8, 9) + table(8, 10)
    Let lin8$ = ""
    Let count = 0
    For index = 1 To 10
        If index = 10 And Mid$(mas8$, index, 1) = "+" Then
            count = count + 1
            lin8$ = lin8$ + LTrim$(Str$(count))
        End If
        If index < 10 And Mid$(mas8$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas8$, index, 1) <> "+" And count = 0 Then
            lin8$ = lin8$ + Mid$(mas8$, index, 1)
        End If
        If Mid$(mas8$, index, 1) <> "+" And count > 0 Then
            lin8$ = lin8$ + LTrim$(Str$(count))
            lin8$ = lin8$ + Mid$(mas8$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas9$ = table(9, 1) + table(9, 2) + table(9, 3) + table(9, 4) + table(9, 5) + table(9, 6) + table(9, 7) + table(9, 8) + table(9, 9) + table(9, 10)
    Let lin9$ = ""
    Let count = 0
    For index = 1 To 10
        If index = 10 And Mid$(mas9$, index, 1) = "+" Then
            count = count + 1
            lin9$ = lin9$ + LTrim$(Str$(count))
        End If
        If index < 10 And Mid$(mas9$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas9$, index, 1) <> "+" And count = 0 Then
            lin9$ = lin9$ + Mid$(mas9$, index, 1)
        End If
        If Mid$(mas9$, index, 1) <> "+" And count > 0 Then
            lin9$ = lin9$ + LTrim$(Str$(count))
            lin9$ = lin9$ + Mid$(mas9$, index, 1)
            Let count = 0
        End If
    Next index

    Let mas0$ = table(10, 1) + table(10, 2) + table(10, 3) + table(10, 4) + table(10, 5) + table(10, 6) + table(10, 7) + table(10, 8) + table(10, 9) + table(10, 10)
    Let lin0$ = ""
    Let count = 0
    For index = 1 To 10
        If index = 10 And Mid$(mas0$, index, 1) = "+" Then
            count = count + 1
            lin0$ = lin0$ + LTrim$(Str$(count))
        End If
        If index < 10 And Mid$(mas0$, index, 1) = "+" Then
            count = count + 1
        End If
        If Mid$(mas0$, index, 1) <> "+" And count = 0 Then
            lin0$ = lin0$ + Mid$(mas0$, index, 1)
        End If
        If Mid$(mas0$, index, 1) <> "+" And count > 0 Then
            lin0$ = lin0$ + LTrim$(Str$(count))
            lin0$ = lin0$ + Mid$(mas0$, index, 1)
            Let count = 0
        End If
    Next index

    Let fen$ = lin0$ + "/" + lin9$ + "/" + lin8$ + "/" + lin7$ + "/" + lin6$ + "/" + lin5$ + "/" + lin4$ + "/" + lin3$ + "/" + lin2$ + "/" + lin1$

    Color 10
    Locate 2, 1: Print "              Press any key to display the Forsyth-Edwards notation                    "
    Do
    Loop Until InKey$ <> ""
    Locate 2, 1: Print "                                                                                       "
    Color 12
    Locate 2, 23: Print fen$

    Do
    Loop Until InKey$ <> ""

    System

End Sub

Sub message
    Locate 2, 1: Color 9: Print "    SPACEBAR - next pair"; "       ENTER - display notation       "; "ESCAPE - exit    "
    Locate 2, 5: Color 5: Print "SPACEBAR": Locate 2, 32: Color 5: Print "ENTER": Locate 2, 63: Color 5: Print "ESCAPE"
End Sub