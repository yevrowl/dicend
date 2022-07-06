DefInt A-Z

declare sub dice1 ()
declare sub dice2 ()
declare sub dice3 ()
declare sub dice4 ()
declare sub dice5 ()
declare sub dice6 ()
declare sub dice7 ()
declare sub dice8 ()
declare sub dice9 ()
declare sub king ()
declare sub queen ()
declare sub bishop ()
declare sub knight ()
declare sub rook ()
declare sub pawn ()
declare sub notation ()

Common Shared vid, v, x, y, z, c, c1, c2, c3, c4, dc1, dc2, dc3, dc4, dc5, dc6, w1, b1, w2, b2, w3, b3, w4, b4, row, col, index, count As Integer
Common Shared fw1, fb1, fw2, fb2, fw3, fb3, fw4, fb4, fw1x, fw1y, fb1x, fb1y, fw2x, fw2y, fb2x, fb2y, fw3x, fw3y, fb3x, fb3y, fw4x, fw4y, fb4x, fb4y As Integer
Common Shared fig1w, fig1b, fig2w, fig2b, fig3w, fig3b, fig4w, fig4b, mas1, mas2, mas3, mas4, mas5, mas6, mas7, mas8, mas9, mas0, lin1, lin2, lin3, lin4, lin5, lin6, lin7, lin8, lin9, lin0, fen As String

Dim Shared board(8, 8) As Integer
Let index = 100
For row = 1 To 8: For col = 1 To 8
    Let board(row, col) = index + 1
    Let index = index + 1
Next col: Next row
Let z = 26

begin:
Randomize Timer
Cls
Screen 0
Color 15
Locate 2, z: Print "ษอออออออออออออออออออออออออออออป"
Locate 3, z: Print "บ        Dice endgames        บ"
Locate 4, z: Print "ศอออออออออออออออออออออออออออออผ"
Color 7
Locate 5, z: Print "ษอออออออออออออออออออออออออออออป"
Locate 6, z: Print "บ   Select graphics adapter   บ"
Locate 7, z: Print "ฬอออออหอออออออออออออออออออออออน"
Locate 8, z: Print "บ  1  บ   CGA, Amstrad, PGC   บ"
Locate 9, z: Print "ฬอออออฮอออออออออออออออออออออออน"
Locate 10, z: Print "บ  2  บ        EGA, AX        บ"
Locate 11, z: Print "ฬอออออฮอออออออออออออออออออออออน"
Locate 12, z: Print "บ  3  บ    MCGA, VGA, 8514    บ"
Locate 13, z: Print "ฬอออออฮอออออออออออออออออออออออน"
Locate 14, z: Print "บ  4  บ          TGA          บ"
Locate 15, z: Print "ฬอออออฮอออออออออออออออออออออออน"
Locate 16, z: Print "บ  5  บ  DCGA, Olivetti, GDC  บ"
Locate 17, z: Print "ฬอออออฮอออออออออออออออออออออออน"
Locate 18, z: Print "บ  6  บ     OGA, HGC, HICC    บ"
Locate 19, z: Print "ฬอออออฮอออออออออออออออออออออออน"
Locate 20, z: Print "บ  7  บ Plantronics Colorplus บ"
Locate 21, z: Print "ฬอออออฮอออออออออออออออออออออออน"
Locate 22, z: Print "บ Esc บ         Exit          บ"
Locate 23, z: Print "ศอออออสอออออออออออออออออออออออผ"
Let z = 6

Do
    Select Case InKey$
        Case Is = Chr$(49)
            Let vid = 1
            Exit Do
        Case Is = Chr$(50)
            Let vid = 2
            Exit Do
        Case Is = Chr$(51)
            Let vid = 3
            Exit Do
        Case Is = Chr$(52)
            Let vid = 4
            Exit Do
        Case Is = Chr$(53)
            Let vid = 5
            Exit Do
        Case Is = Chr$(54)
            Let vid = 6
            Exit Do
        Case Is = Chr$(55)
            Let vid = 7
            Exit Do
        Case Is = Chr$(27)
            System
            Out &H64, &HFE
            End
    End Select
Loop

chess:
If vid = 1 Then
    Screen 1
    Out 984, 46
End If
If vid = 2 Then Screen 7
If vid = 3 Then Screen 13
If vid = 4 Then Screen 7
If vid = 5 Then Screen 1
If vid = 6 Then Screen 1
If vid = 7 Then Screen 7

If vid = 1 Then
    Let c1 = 2
    Let c2 = 0
    Let c3 = 1
    Let c4 = 3
    Let x = 3
    Let y = -1
End If
If vid = 2 Then
    Let c1 = 6
    Let c2 = 0
    Let c3 = 3
    Let c4 = 7
    Let x = 3
    Let y = -1
End If
If vid = 3 Then
    Let c1 = 6
    Let c2 = 0
    Let c3 = 3
    Let c4 = 7
    Let x = 3
    Let y = -1
End If
If vid = 4 Then
    Let c1 = 2
    Let c2 = 0
    Let c3 = 1
    Let c4 = 3
    Let x = 3
    Let y = -1
End If
If vid = 5 Then
    Let c1 = 0
    Let c2 = 0
    Let c3 = 1
    Let c4 = 1
    Let x = 3
    Let y = -1
End If
If vid = 6 Then
    Let c1 = 0
    Let c2 = 0
    Let c3 = 1
    Let c4 = 1
    Let x = 3
    Let y = -1
End If
If vid = 7 Then
    Let c1 = 2
    Let c2 = 0
    Let c3 = 1
    Let c4 = 3
    Let x = 3
    Let y = -1
End If

Line (95 + x, 21 + y)-(231 + x, 157 + y), c1, BF
For j = 123 + y To 21 + y Step -34
    For i = 197 + x To 95 + x Step -34
        Line (i, j)-(i + 17, j + 17), c3, BF
        Line (i + 17, j + 17)-(i + 34, j + 34), c3, BF
    Next i
Next j
For i = 95 + x To 231 + x Step 17
    Line (i, 21 + y)-(i, 157 + y), c2
Next i
For j = 21 + y To 157 + y Step 17
    Line (95 + x, j)-(231 + x, j), c2
Next j
Line (94 + x, 20 + y)-(232 + x, 158 + y), c4, B

If vid = 5 Or vid = 6 Then
    For y = 0 To 102 Step 34
        For x = 0 To 102 Step 34
            Line (99 + x, 38 + y)-(114 + x, 38 + y), 1
            Line (99 + x, 41 + y)-(114 + x, 41 + y), 1
            Line (99 + x, 44 + y)-(114 + x, 44 + y), 1
            Line (99 + x, 47 + y)-(114 + x, 47 + y), 1
            Line (99 + x, 50 + y)-(114 + x, 50 + y), 1
            Line (99 + x, 53 + y)-(114 + x, 53 + y), 1
        Next x
    Next y
    For y = 0 To 102 Step 34
        For x = 0 To 102 Step 34
            Line (116 + x, 21 + y)-(131 + x, 21 + y), 1
            Line (116 + x, 24 + y)-(131 + x, 24 + y), 1
            Line (116 + x, 27 + y)-(131 + x, 27 + y), 1
            Line (116 + x, 30 + y)-(131 + x, 30 + y), 1
            Line (116 + x, 33 + y)-(131 + x, 33 + y), 1
            Line (116 + x, 36 + y)-(131 + x, 36 + y), 1
        Next x
    Next y
    For x = 0 To 102 Step 34
        For y = 0 To 102 Step 34
            Line (116 + x, 21 + y)-(116 + x, 36 + y), 1
            Line (119 + x, 21 + y)-(119 + x, 36 + y), 1
            Line (122 + x, 21 + y)-(122 + x, 36 + y), 1
            Line (125 + x, 21 + y)-(125 + x, 36 + y), 1
            Line (128 + x, 21 + y)-(128 + x, 36 + y), 1
            Line (131 + x, 21 + y)-(131 + x, 36 + y), 1
        Next y
    Next x
    For x = 0 To 102 Step 34
        For y = 0 To 102 Step 34
            Line (99 + x, 38 + y)-(99 + x, 53 + y), 1
            Line (102 + x, 38 + y)-(102 + x, 53 + y), 1
            Line (105 + x, 38 + y)-(105 + x, 53 + y), 1
            Line (108 + x, 38 + y)-(108 + x, 53 + y), 1
            Line (111 + x, 38 + y)-(111 + x, 53 + y), 1
            Line (114 + x, 38 + y)-(114 + x, 53 + y), 1
        Next y
    Next x
End If

Locate 21, 14: Print "A"
Locate 21, 16: Print "B"
Locate 21, 18: Print "C"
Locate 21, 20: Print "D"
Locate 21, 22: Print "E"
Locate 21, 24: Print "F"
Locate 21, 26: Print "G"
Locate 21, 28: Print "H"
Locate 19, 12: Print "1"
Locate 17, 12: Print "2"
Locate 15, 12: Print "3"
Locate 13, 12: Print "4"
Locate 11, 12: Print "5"
Locate 9, 12: Print "6"
Locate 7, 12: Print "7"
Locate 5, 12: Print "8"
If vid <> 1 And vid < 4 Then Color 10
Locate 23, 1: Print "SPACE - next"; " ENTER - notation"; " ESC - exit"

If vid = 1 Or vid = 4 Then Let c = 3
If vid = 2 Or vid = 3 Or vid = 7 Then Let c = 2
If vid = 5 Or vid = 6 Then Let c = 1

For x = 0 To 115 Step 23
    Line (101 + x, 0)-(116 + x, 15), c, B
Next x
For y = 0 To 52 Step 26
    Line (10, 24 + y)-(27, 41 + y), c, B
Next y
For y = 0 To 52 Step 26
    Line (291, 24 + y)-(308, 41 + y), c, B
Next y

Do
    Select Case InKey$
        Case Is = Chr$(32)
            Exit Do
        Case Is = Chr$(13)
            Call notation
        Case Is = Chr$(27)
            GoTo begin
    End Select
Loop

Rem 1st roll
Let count = 0: Let index = 0
Let dc1 = Int(Rnd * 8 + 1)
Let dc2 = Int(Rnd * 8 + 1)
Let dc3 = 1
Let dc4 = Int(Rnd * 8 + 1)
Let dc5 = Int(Rnd * 8 + 1)
Let dc6 = 1
Let w1 = board(dc2, dc1)
Let b1 = board(dc5, dc4)

Do
    Let count = count + 1
    Let dc1 = Int(Rnd * 8 + 1)
    Let dc2 = Int(Rnd * 8 + 1)
    Let dc4 = Int(Rnd * 8 + 1)
    Let dc5 = Int(Rnd * 8 + 1)
    Let w1 = board(dc2, dc1): Let b1 = board(dc5, dc4)
    If count > 8000 Then Exit Do
Loop While Abs(w1 - b1) < 10

Let w1 = board(dc2, dc1): Let b1 = board(dc5, dc4)
Let fw1x = dc1: Let fw1y = dc2: Let fb1x = dc4: Let fb1y = dc5
Let fw1 = dc3: Let fb1 = dc6

Let x = 104: Let y = 3: Let c = 10
If dc1 = 1 Then Call dice1
If dc1 = 2 Then Call dice2
If dc1 = 3 Then Call dice3
If dc1 = 4 Then Call dice4
If dc1 = 5 Then Call dice5
If dc1 = 6 Then Call dice6
If dc1 = 7 Then Call dice7
If dc1 = 8 Then Call dice8
Let x = 127: Let y = 3: Let c = 10
If dc2 = 1 Then Call dice1
If dc2 = 2 Then Call dice2
If dc2 = 3 Then Call dice3
If dc2 = 4 Then Call dice4
If dc2 = 5 Then Call dice5
If dc2 = 6 Then Call dice6
If dc2 = 7 Then Call dice7
If dc2 = 8 Then Call dice8
Let x = 150: Let y = 3: Let c = 10
If dc3 = 1 Then Call dice1
If dc3 = 2 Then Call dice2
If dc3 = 3 Then Call dice3
If dc3 = 4 Then Call dice4
If dc3 = 5 Then Call dice5
If dc3 = 6 Then Call dice6
If dc3 = 7 Then Call dice7
If dc3 = 8 Then Call dice8
Let x = 173: Let y = 3: Let c = 10
If dc4 = 1 Then Call dice1
If dc4 = 2 Then Call dice2
If dc4 = 3 Then Call dice3
If dc4 = 4 Then Call dice4
If dc4 = 5 Then Call dice5
If dc4 = 6 Then Call dice6
If dc4 = 7 Then Call dice7
If dc4 = 8 Then Call dice8
Let x = 196: Let y = 3: Let c = 10
If dc5 = 1 Then Call dice1
If dc5 = 2 Then Call dice2
If dc5 = 3 Then Call dice3
If dc5 = 4 Then Call dice4
If dc5 = 5 Then Call dice5
If dc5 = 6 Then Call dice6
If dc5 = 7 Then Call dice7
If dc5 = 8 Then Call dice8
Let x = 219: Let y = 3: Let c = 10
If dc6 = 1 Then Call dice1
If dc6 = 2 Then Call dice2
If dc6 = 3 Then Call dice3
If dc6 = 4 Then Call dice4
If dc6 = 5 Then Call dice5
If dc6 = 6 Then Call dice6
If dc6 = 7 Then Call dice7
If dc6 = 8 Then Call dice8
Let x = 12: Let y = 26: Let c = 10
If dc3 = 1 Then Call king
If dc3 = 2 Then Call queen
If dc3 = 3 Then Call bishop
If dc3 = 4 Then Call knight
If dc3 = 5 Then Call rook
If dc3 = 6 Then Call pawn
Let x = 293: Let y = 26: Let c = 10
If dc6 = 1 Then Call king
If dc6 = 2 Then Call queen
If dc6 = 3 Then Call bishop
If dc6 = 4 Then Call knight
If dc6 = 5 Then Call rook
If dc6 = 6 Then Call pawn
Let x = 3: Let y = 8
If dc1 = 1 Then
    Locate y, x
    Print "A"
End If
If dc1 = 2 Then
    Locate y, x
    Print "B"
End If
If dc1 = 3 Then
    Locate y, x
    Print "C"
End If
If dc1 = 4 Then
    Locate y, x
    Print "D"
End If
If dc1 = 5 Then
    Locate y, x
    Print "E"
End If
If dc1 = 6 Then
    Locate y, x
    Print "F"
End If
If dc1 = 7 Then
    Locate y, x
    Print "G"
End If
If dc1 = 8 Then
    Locate y, x
    Print "H"
End If
Let x = 3: Let y = 11
If dc2 = 1 Then
    Locate y, x
    Print "1"
End If
If dc2 = 2 Then
    Locate y, x
    Print "2"
End If
If dc2 = 3 Then
    Locate y, x
    Print "3"
End If
If dc2 = 4 Then
    Locate y, x
    Print "4"
End If
If dc2 = 5 Then
    Locate y, x
    Print "5"
End If
If dc2 = 6 Then
    Locate y, x
    Print "6"
End If
If dc2 = 7 Then
    Locate y, x
    Print "7"
End If
If dc2 = 8 Then
    Locate y, x
    Print "8"
End If
Let x = 38: Let y = 8
If dc4 = 1 Then
    Locate y, x
    Print "A"
End If
If dc4 = 2 Then
    Locate y, x
    Print "B"
End If
If dc4 = 3 Then
    Locate y, x
    Print "C"
End If
If dc4 = 4 Then
    Locate y, x
    Print "D"
End If
If dc4 = 5 Then
    Locate y, x
    Print "E"
End If
If dc4 = 6 Then
    Locate y, x
    Print "F"
End If
If dc4 = 7 Then
    Locate y, x
    Print "G"
End If
If dc4 = 8 Then
    Locate y, x
    Print "H"
End If
Let x = 38: Let y = 11
If dc5 = 1 Then
    Locate y, x
    Print "1"
End If
If dc5 = 2 Then
    Locate y, x
    Print "2"
End If
If dc5 = 3 Then
    Locate y, x
    Print "3"
End If
If dc5 = 4 Then
    Locate y, x
    Print "4"
End If
If dc5 = 5 Then
    Locate y, x
    Print "5"
End If
If dc5 = 6 Then
    Locate y, x
    Print "6"
End If
If dc5 = 7 Then
    Locate y, x
    Print "7"
End If
If dc5 = 8 Then
    Locate y, x
    Print "8"
End If
Let x = (dc1 * 17) + 83: Let y = Abs((dc2 * 17) - 200) - 42
Let c = 15: Call king
Let x = (dc4 * 17) + 83: Let y = Abs((dc5 * 17) - 200) - 42
Let c = 0: Call king

Do
    Select Case InKey$
        Case Is = Chr$(32)
            Exit Do
        Case Is = Chr$(13)
            Call notation
        Case Is = Chr$(27)
            GoTo begin
    End Select
Loop

For x = 0 To 115 Step 23
    Line (103 + x, 2)-(114 + x, 13), 0, BF
Next x
For y = 0 To 52 Step 26
    Line (12, 26 + y)-(25, 39 + y), 0, BF
Next y
For y = 0 To 52 Step 26
    Line (293, 26 + y)-(306, 39 + y), 0, BF
Next y

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
        Do
            Let count = count + 1
            Let dc1 = Int(Rnd * 8 + 1)
            Let dc2 = Int(Rnd * 8 + 1)
            Let fw2x = dc1: Let fw2y = dc2
            Let w2 = board(dc2, dc1)
            If count > 8000 Then Exit Do
        Loop While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
    Case Is = 3
        Do
            Let count = count + 1
            Let dc1 = Int(Rnd * 8 + 1)
            Let dc2 = Int(Rnd * 8 + 1)
            Let w2 = board(dc2, dc1)
            If count > 8000 Then Exit Do
        Loop While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
    Case Is = 4
        Do
            Let count = count + 1
            Let dc1 = Int(Rnd * 8 + 1)
            Let dc2 = Int(Rnd * 8 + 1)
            Let w2 = board(dc2, dc1)
            If count > 8000 Then Exit Do
        Loop While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
    Case Is = 5
        Do
            Let count = count + 1
            Let dc1 = Int(Rnd * 8 + 1)
            Let dc2 = Int(Rnd * 8 + 1)
            Let fw2x = dc1: Let fw2y = dc2
            Let w2 = board(dc2, dc1)
            If count > 8000 Then Exit Do
        Loop While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
    Case Is = 6
        Do
            Let count = count + 1
            Let dc1 = Int(Rnd * 8 + 1)
            Let dc2 = Int(Rnd * 8 + 1)
            Let w2 = board(dc2, dc1)
            If count > 8000 Then Exit Do
        Loop While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or dc2 = 1 Or dc2 = 8
End Select
Select Case dc6
    Case Is = 1
        Rem
    Case Is = 2
        Do
            Let count = count + 1
            Let dc4 = Int(Rnd * 8 + 1)
            Let dc5 = Int(Rnd * 8 + 1)
            Let fb2x = dc4: Let fb2y = dc5
            Let b2 = board(dc5, dc4)
            If count > 8000 Then Exit Do
        Loop While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
    Case Is = 3
        Do
            Let count = count + 1
            Let dc4 = Int(Rnd * 8 + 1)
            Let dc5 = Int(Rnd * 8 + 1)
            Let b2 = board(dc5, dc4)
            If count > 8000 Then Exit Do
        Loop While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
    Case Is = 4
        Do
            Let count = count + 1
            Let dc4 = Int(Rnd * 8 + 1)
            Let dc5 = Int(Rnd * 8 + 1)
            Let b2 = board(dc5, dc4)
            If count > 8000 Then Exit Do
        Loop While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
    Case Is = 5
        Do
            Let count = count + 1
            Let dc4 = Int(Rnd * 8 + 1)
            Let dc5 = Int(Rnd * 8 + 1)
            Let fb2x = dc4: Let fb2y = dc5
            Let b2 = board(dc5, dc4)
            If count > 8000 Then Exit Do
        Loop While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1
    Case Is = 6
        Do
            Let count = count + 1
            Let dc4 = Int(Rnd * 8 + 1)
            Let dc5 = Int(Rnd * 8 + 1)
            Let b2 = board(dc5, dc4)
            If count > 8000 Then Exit Do
        Loop While w2 = w1 Or w2 = b1 Or w2 = b2 Or b2 = w1 Or b2 = b1 Or dc5 = 1 Or dc5 = 8
End Select

Let w2 = board(dc2, dc1): Let b2 = board(dc5, dc4)
Let fw2x = dc1: Let fw2y = dc2: Let fb2x = dc4: Let fb2y = dc5
Let fw2 = dc3: Let fb2 = dc6

Let x = 104: Let y = 3: Let c = 10
If dc1 = 1 Then Call dice1
If dc1 = 2 Then Call dice2
If dc1 = 3 Then Call dice3
If dc1 = 4 Then Call dice4
If dc1 = 5 Then Call dice5
If dc1 = 6 Then Call dice6
If dc1 = 7 Then Call dice7
If dc1 = 8 Then Call dice8
Let x = 127: Let y = 3: Let c = 10
If dc2 = 1 Then Call dice1
If dc2 = 2 Then Call dice2
If dc2 = 3 Then Call dice3
If dc2 = 4 Then Call dice4
If dc2 = 5 Then Call dice5
If dc2 = 6 Then Call dice6
If dc2 = 7 Then Call dice7
If dc2 = 8 Then Call dice8
Let x = 150: Let y = 3: Let c = 10
If dc3 = 1 Then Call dice1
If dc3 = 2 Then Call dice2
If dc3 = 3 Then Call dice3
If dc3 = 4 Then Call dice4
If dc3 = 5 Then Call dice5
If dc3 = 6 Then Call dice6
If dc3 = 7 Then Call dice7
If dc3 = 8 Then Call dice8
Let x = 173: Let y = 3: Let c = 10
If dc4 = 1 Then Call dice1
If dc4 = 2 Then Call dice2
If dc4 = 3 Then Call dice3
If dc4 = 4 Then Call dice4
If dc4 = 5 Then Call dice5
If dc4 = 6 Then Call dice6
If dc4 = 7 Then Call dice7
If dc4 = 8 Then Call dice8
Let x = 196: Let y = 3: Let c = 10
If dc5 = 1 Then Call dice1
If dc5 = 2 Then Call dice2
If dc5 = 3 Then Call dice3
If dc5 = 4 Then Call dice4
If dc5 = 5 Then Call dice5
If dc5 = 6 Then Call dice6
If dc5 = 7 Then Call dice7
If dc5 = 8 Then Call dice8
Let x = 219: Let y = 3: Let c = 10
If dc6 = 1 Then Call dice1
If dc6 = 2 Then Call dice2
If dc6 = 3 Then Call dice3
If dc6 = 4 Then Call dice4
If dc6 = 5 Then Call dice5
If dc6 = 6 Then Call dice6
If dc6 = 7 Then Call dice7
If dc6 = 8 Then Call dice8
Let x = 12: Let y = 26: Let c = 10
If dc3 = 1 Then Call king
If dc3 = 2 Then Call queen
If dc3 = 3 Then Call bishop
If dc3 = 4 Then Call knight
If dc3 = 5 Then Call rook
If dc3 = 6 Then Call pawn
Let x = 293: Let y = 26: Let c = 10
If dc6 = 1 Then Call king
If dc6 = 2 Then Call queen
If dc6 = 3 Then Call bishop
If dc6 = 4 Then Call knight
If dc6 = 5 Then Call rook
If dc6 = 6 Then Call pawn
Let x = 3: Let y = 8
If dc1 = 1 Then
    Locate y, x
    Print "A"
End If
If dc1 = 2 Then
    Locate y, x
    Print "B"
End If
If dc1 = 3 Then
    Locate y, x
    Print "C"
End If
If dc1 = 4 Then
    Locate y, x
    Print "D"
End If
If dc1 = 5 Then
    Locate y, x
    Print "E"
End If
If dc1 = 6 Then
    Locate y, x
    Print "F"
End If
If dc1 = 7 Then
    Locate y, x
    Print "G"
End If
If dc1 = 8 Then
    Locate y, x
    Print "H"
End If
Let x = 3: Let y = 11
If dc2 = 1 Then
    Locate y, x
    Print "1"
End If
If dc2 = 2 Then
    Locate y, x
    Print "2"
End If
If dc2 = 3 Then
    Locate y, x
    Print "3"
End If
If dc2 = 4 Then
    Locate y, x
    Print "4"
End If
If dc2 = 5 Then
    Locate y, x
    Print "5"
End If
If dc2 = 6 Then
    Locate y, x
    Print "6"
End If
If dc2 = 7 Then
    Locate y, x
    Print "7"
End If
If dc2 = 8 Then
    Locate y, x
    Print "8"
End If
Let x = 38: Let y = 8
If dc4 = 1 Then
    Locate y, x
    Print "A"
End If
If dc4 = 2 Then
    Locate y, x
    Print "B"
End If
If dc4 = 3 Then
    Locate y, x
    Print "C"
End If
If dc4 = 4 Then
    Locate y, x
    Print "D"
End If
If dc4 = 5 Then
    Locate y, x
    Print "E"
End If
If dc4 = 6 Then
    Locate y, x
    Print "F"
End If
If dc4 = 7 Then
    Locate y, x
    Print "G"
End If
If dc4 = 8 Then
    Locate y, x
    Print "H"
End If
Let x = 38: Let y = 11
If dc5 = 1 Then
    Locate y, x
    Print "1"
End If
If dc5 = 2 Then
    Locate y, x
    Print "2"
End If
If dc5 = 3 Then
    Locate y, x
    Print "3"
End If
If dc5 = 4 Then
    Locate y, x
    Print "4"
End If
If dc5 = 5 Then
    Locate y, x
    Print "5"
End If
If dc5 = 6 Then
    Locate y, x
    Print "6"
End If
If dc5 = 7 Then
    Locate y, x
    Print "7"
End If
If dc5 = 8 Then
    Locate y, x
    Print "8"
End If
Let x = (dc1 * 17) + 83: Let y = Abs((dc2 * 17) - 200) - 42
Let c = 15
If dc3 = 1 Then Call king
If dc3 = 2 Then Call queen
If dc3 = 3 Then Call bishop
If dc3 = 4 Then Call knight
If dc3 = 5 Then Call rook
If dc3 = 6 Then Call pawn
Let x = (dc4 * 17) + 83: Let y = Abs((dc5 * 17) - 200) - 42
Let c = 0
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
            Call notation
        Case Is = Chr$(27)
            GoTo begin
    End Select
Loop

For x = 0 To 115 Step 23
    Line (103 + x, 2)-(114 + x, 13), 0, BF
Next x
For y = 0 To 52 Step 26
    Line (12, 26 + y)-(25, 39 + y), 0, BF
Next y
For y = 0 To 52 Step 26
    Line (293, 26 + y)-(306, 39 + y), 0, BF
Next y

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
        Do
            Let count = count + 1
            Let dc1 = Int(Rnd * 8 + 1)
            Let dc2 = Int(Rnd * 8 + 1)
            Let fw3x = dc1: Let fw3y = dc2
            Let w3 = board(dc2, dc1)
            If count > 8000 Then Exit Do
        Loop While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
    Case Is = 3
        Do
            Let count = count + 1
            Let dc1 = Int(Rnd * 8 + 1)
            Let dc2 = Int(Rnd * 8 + 1)
            Let w3 = board(dc2, dc1)
            If count > 8000 Then Exit Do
        Loop While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
    Case Is = 4
        Do
            Let count = count + 1
            Let dc1 = Int(Rnd * 8 + 1)
            Let dc2 = Int(Rnd * 8 + 1)
            Let w3 = board(dc2, dc1)
            If count > 8000 Then Exit Do
        Loop While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
    Case Is = 5
        Do
            Let count = count + 1
            Let dc1 = Int(Rnd * 8 + 1)
            Let dc2 = Int(Rnd * 8 + 1)
            Let fw3x = dc1: Let fw3y = dc2
            Let w3 = board(dc2, dc1)
            If count > 8000 Then Exit Do
        Loop While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
    Case Is = 6
        Do
            Let count = count + 1
            Let dc1 = Int(Rnd * 8 + 1)
            Let dc2 = Int(Rnd * 8 + 1)
            Let w3 = board(dc2, dc1)
            If count > 8000 Then Exit Do
        Loop While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2 Or dc2 = 1 Or dc2 = 8
End Select
Select Case dc6
    Case Is = 1
        Rem
    Case Is = 2
        Do
            Let count = count + 1
            Let dc4 = Int(Rnd * 8 + 1)
            Let dc5 = Int(Rnd * 8 + 1)
            Let fb3x = dc4: Let fb3y = dc5
            Let b3 = board(dc5, dc4)
            If count > 8000 Then Exit Do
        Loop While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
    Case Is = 3
        Do
            Let count = count + 1
            Let dc4 = Int(Rnd * 8 + 1)
            Let dc5 = Int(Rnd * 8 + 1)
            Let b3 = board(dc5, dc4)
            If count > 8000 Then Exit Do
        Loop While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
    Case Is = 4
        Do
            Let count = count + 1
            Let dc4 = Int(Rnd * 8 + 1)
            Let dc5 = Int(Rnd * 8 + 1)
            Let b3 = board(dc5, dc4)
            If count > 8000 Then Exit Do
        Loop While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
    Case Is = 5
        Do
            Let count = count + 1
            Let dc4 = Int(Rnd * 8 + 1)
            Let dc5 = Int(Rnd * 8 + 1)
            Let fb3x = dc4: Let fb3y = dc5
            Let b3 = board(dc5, dc4)
            If count > 8000 Then Exit Do
        Loop While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2
    Case Is = 6
        Do
            Let count = count + 1
            Let dc4 = Int(Rnd * 8 + 1)
            Let dc5 = Int(Rnd * 8 + 1)
            Let b3 = board(dc5, dc4)
            If count > 8000 Then Exit Do
        Loop While w3 = w1 Or w3 = w2 Or w3 = b1 Or w3 = b2 Or w3 = b3 Or b3 = w1 Or b3 = w2 Or b3 = b1 Or b3 = b2 Or dc5 = 1 Or dc5 = 8
End Select

Let w3 = board(dc2, dc1): Let b3 = board(dc5, dc4)
Let fw3x = dc1: Let fw3y = dc2: Let fb3x = dc4: Let fb3y = dc5
Let fw3 = dc3: Let fb3 = dc6

Let x = 104: Let y = 3: Let c = 10
If dc1 = 1 Then Call dice1
If dc1 = 2 Then Call dice2
If dc1 = 3 Then Call dice3
If dc1 = 4 Then Call dice4
If dc1 = 5 Then Call dice5
If dc1 = 6 Then Call dice6
If dc1 = 7 Then Call dice7
If dc1 = 8 Then Call dice8
Let x = 127: Let y = 3: Let c = 10
If dc2 = 1 Then Call dice1
If dc2 = 2 Then Call dice2
If dc2 = 3 Then Call dice3
If dc2 = 4 Then Call dice4
If dc2 = 5 Then Call dice5
If dc2 = 6 Then Call dice6
If dc2 = 7 Then Call dice7
If dc2 = 8 Then Call dice8
Let x = 150: Let y = 3: Let c = 10
If dc3 = 1 Then Call dice1
If dc3 = 2 Then Call dice2
If dc3 = 3 Then Call dice3
If dc3 = 4 Then Call dice4
If dc3 = 5 Then Call dice5
If dc3 = 6 Then Call dice6
If dc3 = 7 Then Call dice7
If dc3 = 8 Then Call dice8
Let x = 173: Let y = 3: Let c = 10
If dc4 = 1 Then Call dice1
If dc4 = 2 Then Call dice2
If dc4 = 3 Then Call dice3
If dc4 = 4 Then Call dice4
If dc4 = 5 Then Call dice5
If dc4 = 6 Then Call dice6
If dc4 = 7 Then Call dice7
If dc4 = 8 Then Call dice8
Let x = 196: Let y = 3: Let c = 10
If dc5 = 1 Then Call dice1
If dc5 = 2 Then Call dice2
If dc5 = 3 Then Call dice3
If dc5 = 4 Then Call dice4
If dc5 = 5 Then Call dice5
If dc5 = 6 Then Call dice6
If dc5 = 7 Then Call dice7
If dc5 = 8 Then Call dice8
Let x = 219: Let y = 3: Let c = 10
If dc6 = 1 Then Call dice1
If dc6 = 2 Then Call dice2
If dc6 = 3 Then Call dice3
If dc6 = 4 Then Call dice4
If dc6 = 5 Then Call dice5
If dc6 = 6 Then Call dice6
If dc6 = 7 Then Call dice7
If dc6 = 8 Then Call dice8
Let x = 12: Let y = 26: Let c = 10
If dc3 = 1 Then Call king
If dc3 = 2 Then Call queen
If dc3 = 3 Then Call bishop
If dc3 = 4 Then Call knight
If dc3 = 5 Then Call rook
If dc3 = 6 Then Call pawn
Let x = 293: Let y = 26: Let c = 10
If dc6 = 1 Then Call king
If dc6 = 2 Then Call queen
If dc6 = 3 Then Call bishop
If dc6 = 4 Then Call knight
If dc6 = 5 Then Call rook
If dc6 = 6 Then Call pawn
Let x = 3: Let y = 8
If dc1 = 1 Then
    Locate y, x
    Print "A"
End If
If dc1 = 2 Then
    Locate y, x
    Print "B"
End If
If dc1 = 3 Then
    Locate y, x
    Print "C"
End If
If dc1 = 4 Then
    Locate y, x
    Print "D"
End If
If dc1 = 5 Then
    Locate y, x
    Print "E"
End If
If dc1 = 6 Then
    Locate y, x
    Print "F"
End If
If dc1 = 7 Then
    Locate y, x
    Print "G"
End If
If dc1 = 8 Then
    Locate y, x
    Print "H"
End If
Let x = 3: Let y = 11
If dc2 = 1 Then
    Locate y, x
    Print "1"
End If
If dc2 = 2 Then
    Locate y, x
    Print "2"
End If
If dc2 = 3 Then
    Locate y, x
    Print "3"
End If
If dc2 = 4 Then
    Locate y, x
    Print "4"
End If
If dc2 = 5 Then
    Locate y, x
    Print "5"
End If
If dc2 = 6 Then
    Locate y, x
    Print "6"
End If
If dc2 = 7 Then
    Locate y, x
    Print "7"
End If
If dc2 = 8 Then
    Locate y, x
    Print "8"
End If
Let x = 38: Let y = 8
If dc4 = 1 Then
    Locate y, x
    Print "A"
End If
If dc4 = 2 Then
    Locate y, x
    Print "B"
End If
If dc4 = 3 Then
    Locate y, x
    Print "C"
End If
If dc4 = 4 Then
    Locate y, x
    Print "D"
End If
If dc4 = 5 Then
    Locate y, x
    Print "E"
End If
If dc4 = 6 Then
    Locate y, x
    Print "F"
End If
If dc4 = 7 Then
    Locate y, x
    Print "G"
End If
If dc4 = 8 Then
    Locate y, x
    Print "H"
End If
Let x = 38: Let y = 11
If dc5 = 1 Then
    Locate y, x
    Print "1"
End If
If dc5 = 2 Then
    Locate y, x
    Print "2"
End If
If dc5 = 3 Then
    Locate y, x
    Print "3"
End If
If dc5 = 4 Then
    Locate y, x
    Print "4"
End If
If dc5 = 5 Then
    Locate y, x
    Print "5"
End If
If dc5 = 6 Then
    Locate y, x
    Print "6"
End If
If dc5 = 7 Then
    Locate y, x
    Print "7"
End If
If dc5 = 8 Then
    Locate y, x
    Print "8"
End If
Let x = (dc1 * 17) + 83: Let y = Abs((dc2 * 17) - 200) - 42
Let c = 15
If dc3 = 1 Then Call king
If dc3 = 2 Then Call queen
If dc3 = 3 Then Call bishop
If dc3 = 4 Then Call knight
If dc3 = 5 Then Call rook
If dc3 = 6 Then Call pawn
Let x = (dc4 * 17) + 83: Let y = Abs((dc5 * 17) - 200) - 42
Let c = 0
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
            Call notation
        Case Is = Chr$(27)
            GoTo begin
    End Select
Loop

For x = 0 To 115 Step 23
    Line (103 + x, 2)-(114 + x, 13), 0, BF
Next x
For y = 0 To 52 Step 26
    Line (12, 26 + y)-(25, 39 + y), 0, BF
Next y
For y = 0 To 52 Step 26
    Line (293, 26 + y)-(306, 39 + y), 0, BF
Next y

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
        Do
            Let count = count + 1
            Let dc1 = Int(Rnd * 8 + 1)
            Let dc2 = Int(Rnd * 8 + 1)
            Let fw4x = dc1: Let fw4y = dc2
            Let w4 = board(dc2, dc1)
            If count > 8000 Then Exit Do
        Loop While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
    Case Is = 3
        Do
            Let count = count + 1
            Let dc1 = Int(Rnd * 8 + 1)
            Let dc2 = Int(Rnd * 8 + 1)
            Let w4 = board(dc2, dc1)
            If count > 8000 Then Exit Do
        Loop While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
    Case Is = 4
        Do
            Let count = count + 1
            Let dc1 = Int(Rnd * 8 + 1)
            Let dc2 = Int(Rnd * 8 + 1)
            Let w4 = board(dc2, dc1)
            If count > 8000 Then Exit Do
        Loop While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
    Case Is = 5
        Do
            Let count = count + 1
            Let dc1 = Int(Rnd * 8 + 1)
            Let dc2 = Int(Rnd * 8 + 1)
            Let fw4x = dc1: Let fw4y = dc2
            Let w4 = board(dc2, dc1)
            If count > 8000 Then Exit Do
        Loop While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
    Case Is = 6
        Do
            Let count = count + 1
            Let dc1 = Int(Rnd * 8 + 1)
            Let dc2 = Int(Rnd * 8 + 1)
            Let w4 = board(dc2, dc1)
            If count > 8000 Then Exit Do
        Loop While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3 Or dc2 = 1 Or dc2 = 8
End Select
Select Case dc6
    Case Is = 1
        Rem
    Case Is = 2
        Do
            Let count = count + 1
            Let dc4 = Int(Rnd * 8 + 1)
            Let dc5 = Int(Rnd * 8 + 1)
            Let fb4x = dc4: Let fb4y = dc5
            Let b4 = board(dc5, dc4)
            If count > 8000 Then Exit Do
        Loop While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
    Case Is = 3
        Do
            Let count = count + 1
            Let dc4 = Int(Rnd * 8 + 1)
            Let dc5 = Int(Rnd * 8 + 1)
            Let b4 = board(dc5, dc4)
            If count > 8000 Then Exit Do
        Loop While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
    Case Is = 4
        Do
            Let count = count + 1
            Let dc4 = Int(Rnd * 8 + 1)
            Let dc5 = Int(Rnd * 8 + 1)
            Let b4 = board(dc5, dc4)
            If count > 8000 Then Exit Do
        Loop While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
    Case Is = 5
        Do
            Let count = count + 1
            Let dc4 = Int(Rnd * 8 + 1)
            Let dc5 = Int(Rnd * 8 + 1)
            Let fb4x = dc4: Let fb4y = dc5
            Let b4 = board(dc5, dc4)
            If count > 8000 Then Exit Do
        Loop While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3
    Case Is = 6
        Do
            Let count = count + 1
            Let dc4 = Int(Rnd * 8 + 1)
            Let dc5 = Int(Rnd * 8 + 1)
            Let b4 = board(dc5, dc4)
            If count > 8000 Then Exit Do
        Loop While w4 = w1 Or w4 = w2 Or w4 = w3 Or w4 = b1 Or w4 = b2 Or w4 = b3 Or w4 = b4 Or b4 = w1 Or b4 = w2 Or b4 = w3 Or b4 = b1 Or b4 = b2 Or b4 = b3 Or dc5 = 1 Or dc5 = 8
End Select

Let w4 = board(dc2, dc1): Let b4 = board(dc5, dc4)
Let fw4x = dc1: Let fw4y = dc2: Let fb4x = dc4: Let fb4y = dc5
Let fw4 = dc3: Let fb4 = dc6

Let x = 104: Let y = 3: Let c = 10
If dc1 = 1 Then Call dice1
If dc1 = 2 Then Call dice2
If dc1 = 3 Then Call dice3
If dc1 = 4 Then Call dice4
If dc1 = 5 Then Call dice5
If dc1 = 6 Then Call dice6
If dc1 = 7 Then Call dice7
If dc1 = 8 Then Call dice8
Let x = 127: Let y = 3: Let c = 10
If dc2 = 1 Then Call dice1
If dc2 = 2 Then Call dice2
If dc2 = 3 Then Call dice3
If dc2 = 4 Then Call dice4
If dc2 = 5 Then Call dice5
If dc2 = 6 Then Call dice6
If dc2 = 7 Then Call dice7
If dc2 = 8 Then Call dice8
Let x = 150: Let y = 3: Let c = 10
If dc3 = 1 Then Call dice1
If dc3 = 2 Then Call dice2
If dc3 = 3 Then Call dice3
If dc3 = 4 Then Call dice4
If dc3 = 5 Then Call dice5
If dc3 = 6 Then Call dice6
If dc3 = 7 Then Call dice7
If dc3 = 8 Then Call dice8
Let x = 173: Let y = 3: Let c = 10
If dc4 = 1 Then Call dice1
If dc4 = 2 Then Call dice2
If dc4 = 3 Then Call dice3
If dc4 = 4 Then Call dice4
If dc4 = 5 Then Call dice5
If dc4 = 6 Then Call dice6
If dc4 = 7 Then Call dice7
If dc4 = 8 Then Call dice8
Let x = 196: Let y = 3: Let c = 10
If dc5 = 1 Then Call dice1
If dc5 = 2 Then Call dice2
If dc5 = 3 Then Call dice3
If dc5 = 4 Then Call dice4
If dc5 = 5 Then Call dice5
If dc5 = 6 Then Call dice6
If dc5 = 7 Then Call dice7
If dc5 = 8 Then Call dice8
Let x = 219: Let y = 3: Let c = 10
If dc6 = 1 Then Call dice1
If dc6 = 2 Then Call dice2
If dc6 = 3 Then Call dice3
If dc6 = 4 Then Call dice4
If dc6 = 5 Then Call dice5
If dc6 = 6 Then Call dice6
If dc6 = 7 Then Call dice7
If dc6 = 8 Then Call dice8
Let x = 12: Let y = 26: Let c = 10
If dc3 = 1 Then Call king
If dc3 = 2 Then Call queen
If dc3 = 3 Then Call bishop
If dc3 = 4 Then Call knight
If dc3 = 5 Then Call rook
If dc3 = 6 Then Call pawn
Let x = 293: Let y = 26: Let c = 10
If dc6 = 1 Then Call king
If dc6 = 2 Then Call queen
If dc6 = 3 Then Call bishop
If dc6 = 4 Then Call knight
If dc6 = 5 Then Call rook
If dc6 = 6 Then Call pawn
Let x = 3: Let y = 8
If dc1 = 1 Then
    Locate y, x
    Print "A"
End If
If dc1 = 2 Then
    Locate y, x
    Print "B"
End If
If dc1 = 3 Then
    Locate y, x
    Print "C"
End If
If dc1 = 4 Then
    Locate y, x
    Print "D"
End If
If dc1 = 5 Then
    Locate y, x
    Print "E"
End If
If dc1 = 6 Then
    Locate y, x
    Print "F"
End If
If dc1 = 7 Then
    Locate y, x
    Print "G"
End If
If dc1 = 8 Then
    Locate y, x
    Print "H"
End If
Let x = 3: Let y = 11
If dc2 = 1 Then
    Locate y, x
    Print "1"
End If
If dc2 = 2 Then
    Locate y, x
    Print "2"
End If
If dc2 = 3 Then
    Locate y, x
    Print "3"
End If
If dc2 = 4 Then
    Locate y, x
    Print "4"
End If
If dc2 = 5 Then
    Locate y, x
    Print "5"
End If
If dc2 = 6 Then
    Locate y, x
    Print "6"
End If
If dc2 = 7 Then
    Locate y, x
    Print "7"
End If
If dc2 = 8 Then
    Locate y, x
    Print "8"
End If
Let x = 38: Let y = 8
If dc4 = 1 Then
    Locate y, x
    Print "A"
End If
If dc4 = 2 Then
    Locate y, x
    Print "B"
End If
If dc4 = 3 Then
    Locate y, x
    Print "C"
End If
If dc4 = 4 Then
    Locate y, x
    Print "D"
End If
If dc4 = 5 Then
    Locate y, x
    Print "E"
End If
If dc4 = 6 Then
    Locate y, x
    Print "F"
End If
If dc4 = 7 Then
    Locate y, x
    Print "G"
End If
If dc4 = 8 Then
    Locate y, x
    Print "H"
End If
Let x = 38: Let y = 11
If dc5 = 1 Then
    Locate y, x
    Print "1"
End If
If dc5 = 2 Then
    Locate y, x
    Print "2"
End If
If dc5 = 3 Then
    Locate y, x
    Print "3"
End If
If dc5 = 4 Then
    Locate y, x
    Print "4"
End If
If dc5 = 5 Then
    Locate y, x
    Print "5"
End If
If dc5 = 6 Then
    Locate y, x
    Print "6"
End If
If dc5 = 7 Then
    Locate y, x
    Print "7"
End If
If dc5 = 8 Then
    Locate y, x
    Print "8"
End If
Let x = (dc1 * 17) + 83: Let y = Abs((dc2 * 17) - 200) - 42
Let c = 15
If dc3 = 1 Then Call king
If dc3 = 2 Then Call queen
If dc3 = 3 Then Call bishop
If dc3 = 4 Then Call knight
If dc3 = 5 Then Call rook
If dc3 = 6 Then Call pawn
Let x = (dc4 * 17) + 83: Let y = Abs((dc5 * 17) - 200) - 42
Let c = 0
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
            Call notation
        Case Is = Chr$(27)
            GoTo begin
    End Select
Loop

Locate 2, 8: Print "                                  "
End

Sub king
    Line (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    Line (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    Line (4 + x, 6 + y)-(9 + x, 9 + y), c, BF
    Line (2 + x, 4 + y)-(11 + x, 5 + y), c, BF
    Line (0 + x, 3 + y)-(13 + x, 3 + y), c, BF
    Line (0 + x, 2 + y)-(2 + x, 2 + y), c, BF
    Line (4 + x, 2 + y)-(9 + x, 2 + y), c, BF
    Line (11 + x, 2 + y)-(13 + x, 2 + y), c, BF
    Line (0 + x, 1 + y)-(1 + x, 1 + y), c, BF
    Line (5 + x, 1 + y)-(8 + x, 1 + y), c, BF
    Line (12 + x, 1 + y)-(13 + x, 1 + y), c, BF
    Line (6 + x, 0 + y)-(7 + x, 0 + y), c, BF
    PSet (0 + x, 0 + y), c
    PSet (13 + x, 0 + y), c
End Sub

Sub queen
    Line (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    Line (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    Line (4 + x, 8 + y)-(9 + x, 9 + y), c, BF
    Line (5 + x, 6 + y)-(8 + x, 7 + y), c, BF
    Line (4 + x, 5 + y)-(9 + x, 5 + y), c, BF
    Line (3 + x, 4 + y)-(10 + x, 4 + y), c, BF
    Line (2 + x, 3 + y)-(11 + x, 3 + y), c, BF
    Line (1 + x, 2 + y)-(12 + x, 2 + y), c, BF
    Line (0 + x, 1 + y)-(13 + x, 1 + y), c, BF
    Line (6 + x, 0 + y)-(7 + x, 0 + y), c, BF
    PSet (0 + x, 0 + y), c
    PSet (3 + x, 0 + y), c
    PSet (10 + x, 0 + y), c
    PSet (13 + x, 0 + y), c
End Sub

Sub bishop
    Line (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    Line (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    Line (4 + x, 2 + y)-(9 + x, 7 + y), c, BF
    Line (5 + x, 1 + y)-(8 + x, 9 + y), c, BF
    Line (6 + x, 0 + y)-(7 + x, 0 + y), c, BF
End Sub

Sub knight
    Line (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    Line (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    Line (4 + x, 9 + y)-(9 + x, 9 + y), c, BF
    Line (5 + x, 8 + y)-(10 + x, 8 + y), c, BF
    Line (6 + x, 7 + y)-(11 + x, 7 + y), c, BF
    Line (7 + x, 6 + y)-(12 + x, 6 + y), c, BF
    Line (8 + x, 4 + y)-(13 + x, 5 + y), c, BF
    Line (1 + x, 3 + y)-(12 + x, 3 + y), c, BF
    Line (2 + x, 2 + y)-(11 + x, 2 + y), c, BF
    Line (3 + x, 1 + y)-(10 + x, 1 + y), c, BF
    Line (4 + x, 0 + y)-(9 + x, 0 + y), c, BF
End Sub

Sub rook
    Line (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    Line (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    Line (4 + x, 8 + y)-(9 + x, 9 + y), c, BF
    Line (2 + x, 6 + y)-(11 + x, 7 + y), c, BF
    Line (0 + x, 4 + y)-(13 + x, 5 + y), c, BF
    Line (0 + x, 0 + y)-(1 + x, 3 + y), c, BF
    Line (4 + x, 0 + y)-(5 + x, 3 + y), c, BF
    Line (8 + x, 0 + y)-(9 + x, 3 + y), c, BF
    Line (12 + x, 0 + y)-(13 + x, 3 + y), c, BF
End Sub

Sub pawn
    Line (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    Line (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    Line (5 + x, 8 + y)-(8 + x, 9 + y), c, BF
    Line (4 + x, 7 + y)-(9 + x, 7 + y), c, BF
    Line (3 + x, 6 + y)-(10 + x, 6 + y), c, BF
    Line (2 + x, 4 + y)-(11 + x, 5 + y), c, BF
    Line (3 + x, 3 + y)-(10 + x, 3 + y), c, BF
    Line (4 + x, 2 + y)-(9 + x, 2 + y), c, BF
    Line (5 + x, 1 + y)-(8 + x, 1 + y), c, BF
    Line (6 + x, 0 + y)-(7 + x, 0 + y), c, BF
End Sub

Sub dice1
    Line (4 + x, 4 + y)-(5 + x, 5 + y), c, BF
End Sub

Sub dice2
    Line (8 + x, y)-(9 + x, 1 + y), c, BF
    Line (x, 8 + y)-(1 + x, 9 + y), c, BF
End Sub

Sub dice3
    Line (8 + x, y)-(9 + x, 1 + y), c, BF
    Line (4 + x, 4 + y)-(5 + x, 5 + y), c, BF
    Line (x, 8 + y)-(1 + x, 9 + y), c, BF
End Sub

Sub dice4
    Line (x, y)-(1 + x, 1 + y), c, BF
    Line (8 + x, y)-(9 + x, 1 + y), c, BF
    Line (x, 8 + y)-(1 + x, 9 + y), c, BF
    Line (8 + x, 8 + y)-(9 + x, 9 + y), c, BF
End Sub

Sub dice5
    Line (x, y)-(1 + x, 1 + y), c, BF
    Line (8 + x, y)-(9 + x, 1 + y), c, BF
    Line (4 + x, 4 + y)-(5 + x, 5 + y), c, BF
    Line (x, 8 + y)-(1 + x, 9 + y), c, BF
    Line (8 + x, 8 + y)-(9 + x, 9 + y), c, BF
End Sub

Sub dice6
    Line (x, y)-(1 + x, 1 + y), c, BF
    Line (8 + x, y)-(9 + x, 1 + y), c, BF
    Line (x, 4 + y)-(1 + x, 5 + y), c, BF
    Line (8 + x, 4 + y)-(9 + x, 5 + y), c, BF
    Line (x, 8 + y)-(1 + x, 9 + y), c, BF
    Line (8 + x, 8 + y)-(9 + x, 9 + y), c, BF
End Sub

Sub dice7
    Line (x, y)-(1 + x, 1 + y), c, BF
    Line (8 + x, y)-(9 + x, 1 + y), c, BF
    Line (x, 4 + y)-(1 + x, 5 + y), c, BF
    Line (4 + x, 4 + y)-(5 + x, 5 + y), c, BF
    Line (8 + x, 4 + y)-(9 + x, 5 + y), c, BF
    Line (x, 8 + y)-(1 + x, 9 + y), c, BF
    Line (8 + x, 8 + y)-(9 + x, 9 + y), c, BF
End Sub

Sub dice8
    Line (x, y)-(1 + x, 1 + y), c, BF
    Line (4 + x, y)-(5 + x, 1 + y), c, BF
    Line (8 + x, y)-(9 + x, 1 + y), c, BF
    Line (x, 4 + y)-(1 + x, 5 + y), c, BF
    Line (8 + x, 4 + y)-(9 + x, 5 + y), c, BF
    Line (x, 8 + y)-(1 + x, 9 + y), c, BF
    Line (4 + x, 8 + y)-(5 + x, 9 + y), c, BF
    Line (8 + x, 8 + y)-(9 + x, 9 + y), c, BF
End Sub

Sub dice9
    Line (x, y)-(1 + x, 1 + y), c, BF
    Line (4 + x, y)-(5 + x, 1 + y), c, BF
    Line (8 + x, y)-(9 + x, 1 + y), c, BF
    Line (x, 4 + y)-(1 + x, 5 + y), c, BF
    Line (4 + x, 4 + y)-(5 + x, 5 + y), c, BF
    Line (8 + x, 4 + y)-(9 + x, 5 + y), c, BF
    Line (x, 8 + y)-(1 + x, 9 + y), c, BF
    Line (4 + x, 8 + y)-(5 + x, 9 + y), c, BF
    Line (8 + x, 8 + y)-(9 + x, 9 + y), c, BF
End Sub

Sub notation
    For x = 0 To 115 Step 23
        Line (103 + x, 2)-(114 + x, 13), 0, BF
    Next x
    For y = 0 To 52 Step 26
        Line (12, 26 + y)-(25, 39 + y), 0, BF
    Next y
    For y = 0 To 52 Step 26
        Line (293, 26 + y)-(306, 39 + y), 0, BF
    Next y

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

    Locate 1, 10: Print "Press any key to display"
    Locate 2, 8: Print "the Forsyth-Edwards notation"
    Do
    Loop Until InKey$ <> ""
    Locate 1, 8: Print "                            "
    Locate 2, 8: Print "                            "
    Locate 2, 8: Print fen$

    Do
    Loop Until InKey$ <> ""
    Rem Locate 2, 8: Print "                                  "
End Sub