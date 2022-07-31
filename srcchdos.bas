'$INCLUDE: 'GRAFQBS.INC'
DEFINT A-Z

DECLARE SUB dice1 ()
DECLARE SUB dice2 ()
DECLARE SUB dice3 ()
DECLARE SUB dice4 ()
DECLARE SUB dice5 ()
DECLARE SUB dice6 ()
DECLARE SUB dice7 ()
DECLARE SUB dice8 ()
DECLARE SUB dice9 ()
DECLARE SUB king ()
DECLARE SUB queen ()
DECLARE SUB bishop ()
DECLARE SUB knight ()
DECLARE SUB rook ()
DECLARE SUB pawn ()
DECLARE SUB generation ()
DECLARE SUB notation ()

COMMON SHARED vid, v, x, y, z, c, c1, c2, c3, c4, dc1, dc2, dc3, dc4, dc5, dc6, w1, b1, w2, b2, w3, b3, w4, b4, row, col, index, count AS INTEGER
COMMON SHARED fw1, fb1, fw2, fb2, fw3, fb3, fw4, fb4, fw1x, fw1y, fb1x, fb1y, fw2x, fw2y, fb2x, fb2y, fw3x, fw3y, fb3x, fb3y, fw4x, fw4y, fb4x, fb4y AS INTEGER
COMMON SHARED fig1w, fig1b, fig2w, fig2b, fig3w, fig3b, fig4w, fig4b, mas, lin, fen AS STRING

DIM SHARED board(8, 8) AS INTEGER
LET index = 100
FOR row = 1 TO 8: FOR col = 1 TO 8
    LET board(row, col) = index + 1
    LET index = index + 1
NEXT col: NEXT row

begin:
LET z = 26
RANDOMIZE TIMER
IF vid = 4 THEN CALL ExitGraphics
SCREEN 0
WIDTH 80, 25
CLS
COLOR 15
LOCATE 2, z: PRINT "ษอออออออออออออออออออออออออออออป"
LOCATE 3, z: PRINT "บ        Dice endgames        บ"
LOCATE 4, z: PRINT "ศอออออออออออออออออออออออออออออผ"
COLOR 7
LOCATE 5, z: PRINT "ษอออออออออออออออออออออออออออออป"
LOCATE 6, z: PRINT "บ   Select graphics adapter   บ"
LOCATE 7, z: PRINT "ฬอออออหอออออออออออออออออออออออน"
LOCATE 8, z: PRINT "บ  1  บ   CGA, Amstrad, PGC   บ"
LOCATE 9, z: PRINT "ฬอออออฮอออออออออออออออออออออออน"
LOCATE 10, z: PRINT "บ  2  บ        EGA, AX        บ"
LOCATE 11, z: PRINT "ฬอออออฮอออออออออออออออออออออออน"
LOCATE 12, z: PRINT "บ  3  บ    MCGA, VGA, 8514    บ"
LOCATE 13, z: PRINT "ฬอออออฮอออออออออออออออออออออออน"
LOCATE 14, z: PRINT "บ  4  บ          TGA          บ"
LOCATE 15, z: PRINT "ฬอออออฮอออออออออออออออออออออออน"
LOCATE 16, z: PRINT "บ  5  บ  DCGA, Olivetti, GDC  บ"
LOCATE 17, z: PRINT "ฬอออออฮอออออออออออออออออออออออน"
LOCATE 18, z: PRINT "บ  6  บ     OGA, HGC, HICC    บ"
LOCATE 19, z: PRINT "ฬอออออฮอออออออออออออออออออออออน"
LOCATE 20, z: PRINT "บ  7  บ Plantronics Colorplus บ"
LOCATE 21, z: PRINT "ฬอออออฮอออออออออออออออออออออออน"
LOCATE 22, z: PRINT "บ Esc บ         Exit          บ"
LOCATE 23, z: PRINT "ศอออออสอออออออออออออออออออออออผ"
LET z = 6

DO
    SELECT CASE INKEY$
        CASE IS = CHR$(49)
            LET vid = 1
            EXIT DO
        CASE IS = CHR$(50)
            LET vid = 2
            EXIT DO
        CASE IS = CHR$(51)
            LET vid = 3
            EXIT DO
        CASE IS = CHR$(52)
            LET vid = 4
            EXIT DO
        CASE IS = CHR$(53)
            LET vid = 5
            EXIT DO
        CASE IS = CHR$(54)
            LET vid = 6
            EXIT DO
        CASE IS = CHR$(55)
            LET vid = 7
            EXIT DO
        CASE IS = CHR$(27)
            OUT &H64, &HFE
            SYSTEM
    END SELECT
LOOP

chess:
IF vid = 1 THEN
    SCREEN 1
    OUT 984, 46
END IF
IF vid = 2 THEN SCREEN 7
IF vid = 3 THEN SCREEN 13
IF vid = 4 THEN CALL MediumGraphics
IF vid = 5 THEN SCREEN 1
IF vid = 6 THEN SCREEN 1
IF vid = 7 THEN SCREEN 1

IF vid = 1 THEN
    LET c1 = 2
    LET c2 = 0
    LET c3 = 1
    LET c4 = 3
    LET x = 3
    LET y = -1
END IF
IF vid = 2 THEN
    LET c1 = 6
    LET c2 = 0
    LET c3 = 3
    LET c4 = 7
    LET x = 3
    LET y = -1
END IF
IF vid = 3 THEN
    LET c1 = 6
    LET c2 = 0
    LET c3 = 3
    LET c4 = 7
    LET x = 3
    LET y = -1
END IF
IF vid = 4 THEN
    LET c1 = 6
    LET c2 = 0
    LET c3 = 3
    LET c4 = 7
    LET x = 3
    LET y = -1
END IF
IF vid = 5 THEN
    LET c1 = 0
    LET c2 = 0
    LET c3 = 1
    LET c4 = 1
    LET x = 3
    LET y = -1
END IF
IF vid = 6 THEN
    LET c1 = 0
    LET c2 = 0
    LET c3 = 1
    LET c4 = 1
    LET x = 3
    LET y = -1
END IF
IF vid = 7 THEN
    LET c1 = 2
    LET c2 = 0
    LET c3 = 1
    LET c4 = 3
    LET x = 3
    LET y = -1
END IF

IF vid <> 4 THEN
LINE (95 + x, 21 + y)-(231 + x, 157 + y), c1, BF
FOR j = 123 + y TO 21 + y STEP -34
    FOR i = 197 + x TO 95 + x STEP -34
        LINE (i, j)-(i + 17, j + 17), c3, BF
        LINE (i + 17, j + 17)-(i + 34, j + 34), c3, BF
    NEXT i
NEXT j
FOR i = 95 + x TO 231 + x STEP 17
    LINE (i, 21 + y)-(i, 157 + y), c2
NEXT i
FOR j = 21 + y TO 157 + y STEP 17
    LINE (95 + x, j)-(231 + x, j), c2
NEXT j
LINE (94 + x, 20 + y)-(232 + x, 158 + y), c4, B
END IF

IF vid = 4 THEN
CALL FillBox(95 + x, 21 + y, 231 + x, 157 + y, c1)
FOR j = 123 + y TO 21 + y STEP -34
    FOR i = 197 + x TO 95 + x STEP -34
        CALL FillBox(i, j, i + 17, j + 17, c3)
        CALL FillBox(i + 17, j + 17, i + 34, j + 34, c3)
    NEXT i
NEXT j
FOR i = 95 + x TO 231 + x STEP 17
    CALL ExtLineC(i, 21 + y, i, 157 + y, c2)
NEXT i
FOR j = 21 + y TO 157 + y STEP 17
    CALL ExtLineC(95 + x, j, 231 + x, j, c2)
NEXT j
CALL DrawBox(94 + x, 20 + y, 232 + x, 158 + y, c4)
END IF

IF vid = 5 OR vid = 6 THEN
    FOR y = 0 TO 102 STEP 34
        FOR x = 0 TO 102 STEP 34
            LINE (99 + x, 38 + y)-(114 + x, 38 + y), 1
            LINE (99 + x, 41 + y)-(114 + x, 41 + y), 1
            LINE (99 + x, 44 + y)-(114 + x, 44 + y), 1
            LINE (99 + x, 47 + y)-(114 + x, 47 + y), 1
            LINE (99 + x, 50 + y)-(114 + x, 50 + y), 1
            LINE (99 + x, 53 + y)-(114 + x, 53 + y), 1
        NEXT x
    NEXT y
    FOR y = 0 TO 102 STEP 34
        FOR x = 0 TO 102 STEP 34
            LINE (116 + x, 21 + y)-(131 + x, 21 + y), 1
            LINE (116 + x, 24 + y)-(131 + x, 24 + y), 1
            LINE (116 + x, 27 + y)-(131 + x, 27 + y), 1
            LINE (116 + x, 30 + y)-(131 + x, 30 + y), 1
            LINE (116 + x, 33 + y)-(131 + x, 33 + y), 1
            LINE (116 + x, 36 + y)-(131 + x, 36 + y), 1
        NEXT x
    NEXT y
    FOR x = 0 TO 102 STEP 34
        FOR y = 0 TO 102 STEP 34
            LINE (116 + x, 21 + y)-(116 + x, 36 + y), 1
            LINE (119 + x, 21 + y)-(119 + x, 36 + y), 1
            LINE (122 + x, 21 + y)-(122 + x, 36 + y), 1
            LINE (125 + x, 21 + y)-(125 + x, 36 + y), 1
            LINE (128 + x, 21 + y)-(128 + x, 36 + y), 1
            LINE (131 + x, 21 + y)-(131 + x, 36 + y), 1
        NEXT y
    NEXT x
    FOR x = 0 TO 102 STEP 34
        FOR y = 0 TO 102 STEP 34
            LINE (99 + x, 38 + y)-(99 + x, 53 + y), 1
            LINE (102 + x, 38 + y)-(102 + x, 53 + y), 1
            LINE (105 + x, 38 + y)-(105 + x, 53 + y), 1
            LINE (108 + x, 38 + y)-(108 + x, 53 + y), 1
            LINE (111 + x, 38 + y)-(111 + x, 53 + y), 1
            LINE (114 + x, 38 + y)-(114 + x, 53 + y), 1
        NEXT y
    NEXT x
END IF

IF vid <> 4 THEN
LOCATE 21, 14: PRINT "A"
LOCATE 21, 16: PRINT "B"
LOCATE 21, 18: PRINT "C"
LOCATE 21, 20: PRINT "D"
LOCATE 21, 22: PRINT "E"
LOCATE 21, 24: PRINT "F"
LOCATE 21, 26: PRINT "G"
LOCATE 21, 28: PRINT "H"
LOCATE 19, 12: PRINT "1"
LOCATE 17, 12: PRINT "2"
LOCATE 15, 12: PRINT "3"
LOCATE 13, 12: PRINT "4"
LOCATE 11, 12: PRINT "5"
LOCATE 9, 12: PRINT "6"
LOCATE 7, 12: PRINT "7"
LOCATE 5, 12: PRINT "8"
IF vid <> 1 AND vid < 4 THEN COLOR 10
LOCATE 23, 1: PRINT "SPACE - next"; " ENTER - notation"; " ESC - exit"
END IF

IF vid = 4 THEN
CALL SetCursor(21, 14): CALL PrintString("A")
CALL SetCursor(21, 16): CALL PrintString("B")
CALL SetCursor(21, 18): CALL PrintString("C")
CALL SetCursor(21, 20): CALL PrintString("D")
CALL SetCursor(21, 22): CALL PrintString("E")
CALL SetCursor(21, 24): CALL PrintString("F")
CALL SetCursor(21, 26): CALL PrintString("G")
CALL SetCursor(21, 28): CALL PrintString("H")
CALL SetCursor(19, 12): CALL PrintString("1")
CALL SetCursor(17, 12): CALL PrintString("2")
CALL SetCursor(15, 12): CALL PrintString("3")
CALL SetCursor(13, 12): CALL PrintString("4")
CALL SetCursor(11, 12): CALL PrintString("5")
CALL SetCursor(9, 12): CALL PrintString("6")
CALL SetCursor(7, 12): CALL PrintString("7")
CALL SetCursor(5, 12): CALL PrintString("8")
COLOR 10
CALL SetCursor(23, 1): CALL PrintString("SPACE - next ENTER - notation ESC - exit")
END IF

IF vid = 1 OR vid = 4 THEN LET c = 3
IF vid = 2 OR vid = 3 OR vid = 7 THEN LET c = 2
IF vid = 5 OR vid = 6 THEN LET c = 1

IF vid <> 4 THEN
FOR x = 0 TO 115 STEP 23
    LINE (101 + x, 0)-(116 + x, 15), c, B
NEXT x
FOR y = 0 TO 52 STEP 26
    LINE (10, 24 + y)-(27, 41 + y), c, B
NEXT y
FOR y = 0 TO 52 STEP 26
    LINE (291, 24 + y)-(308, 41 + y), c, B
NEXT y
END IF

IF vid = 4 THEN
LET c = 2
FOR x = 0 TO 115 STEP 23
    CALL DrawBox(101 + x, 0, 116 + x, 15, c)
NEXT x
FOR y = 0 TO 52 STEP 26
    CALL DrawBox(10, 24 + y, 27, 41 + y, c)
NEXT y
FOR y = 0 TO 52 STEP 26
    CALL DrawBox(291, 24 + y, 308, 41 + y, c)
NEXT y
END IF

DO
    SELECT CASE INKEY$
        CASE IS = CHR$(32)
            EXIT DO
        CASE IS = CHR$(13)
            CALL notation
        CASE IS = CHR$(27)
            GOTO begin
    END SELECT
LOOP

REM 1st roll
LET count = 0: LET index = 0
LET dc1 = INT(RND * 8 + 1)
LET dc2 = INT(RND * 8 + 1)
LET dc3 = 1
LET dc4 = INT(RND * 8 + 1)
LET dc5 = INT(RND * 8 + 1)
LET dc6 = 1
LET w1 = board(dc2, dc1)
LET b1 = board(dc5, dc4)

CALL generation

LET w1 = w: LET b1 = b
LET fw1x = dc1: LET fw1y = dc2: LET fb1x = dc4: LET fb1y = dc5
LET fw1 = dc3: LET fb1 = dc6

DO
    SELECT CASE INKEY$
        CASE IS = CHR$(32)
            EXIT DO
        CASE IS = CHR$(13)
            CALL notation
        CASE IS = CHR$(27)
            GOTO begin
    END SELECT
LOOP

IF vid <> 4 THEN
FOR x = 0 TO 115 STEP 23
    LINE (103 + x, 2)-(114 + x, 13), 0, BF
NEXT x
FOR y = 0 TO 52 STEP 26
    LINE (12, 26 + y)-(25, 39 + y), 0, BF
NEXT y
FOR y = 0 TO 52 STEP 26
    LINE (293, 26 + y)-(306, 39 + y), 0, BF
NEXT y
END IF
IF vid = 4 THEN
FOR x = 0 TO 115 STEP 23
    CALL FillBox(103 + x, 2, 114 + x, 13, 0)
NEXT x
FOR y = 0 TO 52 STEP 26
    CALL FillBox(12, 26 + y, 25, 39 + y, 0)
NEXT y
FOR y = 0 TO 52 STEP 26
    CALL FillBox(293, 26 + y, 306, 39 + y, 0)
NEXT y
END IF

REM 2nd roll
LET count = 0: LET index = 0
LET dc1 = INT(RND * 8 + 1)
LET dc2 = INT(RND * 8 + 1)
LET dc3 = INT(RND * 5 + 2)
LET dc4 = INT(RND * 8 + 1)
LET dc5 = INT(RND * 8 + 1)
LET dc6 = INT(RND * 5 + 2)
LET w2 = board(dc2, dc1): LET b2 = board(dc5, dc4)

CALL generation

LET w2 = w: LET b2 = b
LET fw2x = dc1: LET fw2y = dc2: LET fb2x = dc4: LET fb2y = dc5
LET fw2 = dc3: LET fb2 = dc6

DO
    SELECT CASE INKEY$
        CASE IS = CHR$(32)
            EXIT DO
        CASE IS = CHR$(13)
            CALL notation
        CASE IS = CHR$(27)
            GOTO begin
    END SELECT
LOOP

IF vid <> 4 THEN
FOR x = 0 TO 115 STEP 23
    LINE (103 + x, 2)-(114 + x, 13), 0, BF
NEXT x
FOR y = 0 TO 52 STEP 26
    LINE (12, 26 + y)-(25, 39 + y), 0, BF
NEXT y
FOR y = 0 TO 52 STEP 26
    LINE (293, 26 + y)-(306, 39 + y), 0, BF
NEXT y
END IF
IF vid = 4 THEN
FOR x = 0 TO 115 STEP 23
    CALL FillBox(103 + x, 2, 114 + x, 13, 0)
NEXT x
FOR y = 0 TO 52 STEP 26
    CALL FillBox(12, 26 + y, 25, 39 + y, 0)
NEXT y
FOR y = 0 TO 52 STEP 26
    CALL FillBox(293, 26 + y, 306, 39 + y, 0)
NEXT y
END IF

REM 3rd roll
LET count = 0: LET index = 0
LET dc1 = INT(RND * 8 + 1)
LET dc2 = INT(RND * 8 + 1)
LET dc3 = INT(RND * 5 + 2)
LET dc4 = INT(RND * 8 + 1)
LET dc5 = INT(RND * 8 + 1)
LET dc6 = INT(RND * 5 + 2)
LET w3 = board(dc2, dc1): LET b3 = board(dc5, dc4)

CALL generation

LET w3 = w: LET b3 = b
LET fw3x = dc1: LET fw3y = dc2: LET fb3x = dc4: LET fb3y = dc5
LET fw3 = dc3: LET fb3 = dc6

DO
    SELECT CASE INKEY$
        CASE IS = CHR$(32)
            EXIT DO
        CASE IS = CHR$(13)
            CALL notation
        CASE IS = CHR$(27)
            GOTO begin
    END SELECT
LOOP

IF vid <> 4 THEN
FOR x = 0 TO 115 STEP 23
    LINE (103 + x, 2)-(114 + x, 13), 0, BF
NEXT x
FOR y = 0 TO 52 STEP 26
    LINE (12, 26 + y)-(25, 39 + y), 0, BF
NEXT y
FOR y = 0 TO 52 STEP 26
    LINE (293, 26 + y)-(306, 39 + y), 0, BF
NEXT y
END IF
IF vid = 4 THEN
FOR x = 0 TO 115 STEP 23
    CALL FillBox(103 + x, 2, 114 + x, 13, 0)
NEXT x
FOR y = 0 TO 52 STEP 26
    CALL FillBox(12, 26 + y, 25, 39 + y, 0)
NEXT y
FOR y = 0 TO 52 STEP 26
    CALL FillBox(293, 26 + y, 306, 39 + y, 0)
NEXT y
END IF

REM 4th roll
LET count = 0: LET index = 0
LET dc1 = INT(RND * 8 + 1)
LET dc2 = INT(RND * 8 + 1)
LET dc3 = INT(RND * 5 + 2)
LET dc4 = INT(RND * 8 + 1)
LET dc5 = INT(RND * 8 + 1)
LET dc6 = INT(RND * 5 + 2)
LET w4 = board(dc2, dc1): LET b4 = board(dc5, dc4)

CALL generation

LET w4 = w: LET b4 = b
LET fw4x = dc1: LET fw4y = dc2: LET fb4x = dc4: LET fb4y = dc5
LET fw4 = dc3: LET fb4 = dc6

DO
    SELECT CASE INKEY$
        CASE IS = CHR$(32)
            REM
        CASE IS = CHR$(13)
            CALL notation
        CASE IS = CHR$(27)
            GOTO begin
    END SELECT
LOOP

IF vid = 4 THEN CALL ExitGraphics
LOCATE 2, 8: PRINT "                                  "
END

SUB dice1
IF vid <> 4 THEN
    LINE (4 + x, 4 + y)-(5 + x, 5 + y), c, BF
ELSE
    CALL FillBox(4 + x, 4 + y, 5 + x, 5 + y, c)
END IF
END SUB

SUB dice2
IF vid <> 4 THEN
    LINE (8 + x, y)-(9 + x, 1 + y), c, BF
    LINE (x, 8 + y)-(1 + x, 9 + y), c, BF
ELSE
    CALL FillBox(8 + x, y, 9 + x, 1 + y, c)
    CALL FillBox(x, 8 + y, 1 + x, 9 + y, c)
END IF
END SUB

SUB dice3
IF vid <> 4 THEN
    LINE (8 + x, y)-(9 + x, 1 + y), c, BF
    LINE (4 + x, 4 + y)-(5 + x, 5 + y), c, BF
    LINE (x, 8 + y)-(1 + x, 9 + y), c, BF
ELSE
    CALL FillBox(8 + x, y, 9 + x, 1 + y, c)
    CALL FillBox(4 + x, 4 + y, 5 + x, 5 + y, c)
    CALL FillBox(x, 8 + y, 1 + x, 9 + y, c)
END IF
END SUB

SUB dice4
IF vid <> 4 THEN
    LINE (x, y)-(1 + x, 1 + y), c, BF
    LINE (8 + x, y)-(9 + x, 1 + y), c, BF
    LINE (x, 8 + y)-(1 + x, 9 + y), c, BF
    LINE (8 + x, 8 + y)-(9 + x, 9 + y), c, BF
ELSE
    CALL FillBox(x, y, 1 + x, 1 + y, c)
    CALL FillBox(8 + x, y, 9 + x, 1 + y, c)
    CALL FillBox(x, 8 + y, 1 + x, 9 + y, c)
    CALL FillBox(8 + x, 8 + y, 9 + x, 9 + y, c)
END IF
END SUB

SUB dice5
IF vid <> 4 THEN
    LINE (x, y)-(1 + x, 1 + y), c, BF
    LINE (8 + x, y)-(9 + x, 1 + y), c, BF
    LINE (4 + x, 4 + y)-(5 + x, 5 + y), c, BF
    LINE (x, 8 + y)-(1 + x, 9 + y), c, BF
    LINE (8 + x, 8 + y)-(9 + x, 9 + y), c, BF
ELSE
    CALL FillBox(x, y, 1 + x, 1 + y, c)
    CALL FillBox(8 + x, y, 9 + x, 1 + y, c)
    CALL FillBox(4 + x, 4 + y, 5 + x, 5 + y, c)
    CALL FillBox(x, 8 + y, 1 + x, 9 + y, c)
    CALL FillBox(8 + x, 8 + y, 9 + x, 9 + y, c)
END IF
END SUB

SUB dice6
IF vid <> 4 THEN
    LINE (x, y)-(1 + x, 1 + y), c, BF
    LINE (8 + x, y)-(9 + x, 1 + y), c, BF
    LINE (x, 4 + y)-(1 + x, 5 + y), c, BF
    LINE (8 + x, 4 + y)-(9 + x, 5 + y), c, BF
    LINE (x, 8 + y)-(1 + x, 9 + y), c, BF
    LINE (8 + x, 8 + y)-(9 + x, 9 + y), c, BF
ELSE
    CALL FillBox(x, y, 1 + x, 1 + y, c)
    CALL FillBox(8 + x, y, 9 + x, 1 + y, c)
    CALL FillBox(x, 4 + y, 1 + x, 5 + y, c)
    CALL FillBox(8 + x, 4 + y, 9 + x, 5 + y, c)
    CALL FillBox(x, 8 + y, 1 + x, 9 + y, c)
    CALL FillBox(8 + x, 8 + y, 9 + x, 9 + y, c)
END IF
END SUB

SUB dice7
IF vid <> 4 THEN
    LINE (x, y)-(1 + x, 1 + y), c, BF
    LINE (8 + x, y)-(9 + x, 1 + y), c, BF
    LINE (x, 4 + y)-(1 + x, 5 + y), c, BF
    LINE (4 + x, 4 + y)-(5 + x, 5 + y), c, BF
    LINE (8 + x, 4 + y)-(9 + x, 5 + y), c, BF
    LINE (x, 8 + y)-(1 + x, 9 + y), c, BF
    LINE (8 + x, 8 + y)-(9 + x, 9 + y), c, BF
ELSE
    CALL FillBox(x, y, 1 + x, 1 + y, c)
    CALL FillBox(8 + x, y, 9 + x, 1 + y, c)
    CALL FillBox(x, 4 + y, 1 + x, 5 + y, c)
    CALL FillBox(4 + x, 4 + y, 5 + x, 5 + y, c)
    CALL FillBox(8 + x, 4 + y, 9 + x, 5 + y, c)
    CALL FillBox(x, 8 + y, 1 + x, 9 + y, c)
    CALL FillBox(8 + x, 8 + y, 9 + x, 9 + y, c)
END IF
END SUB

SUB dice8
IF vid <> 4 THEN
    LINE (x, y)-(1 + x, 1 + y), c, BF
    LINE (4 + x, y)-(5 + x, 1 + y), c, BF
    LINE (8 + x, y)-(9 + x, 1 + y), c, BF
    LINE (x, 4 + y)-(1 + x, 5 + y), c, BF
    LINE (8 + x, 4 + y)-(9 + x, 5 + y), c, BF
    LINE (x, 8 + y)-(1 + x, 9 + y), c, BF
    LINE (4 + x, 8 + y)-(5 + x, 9 + y), c, BF
    LINE (8 + x, 8 + y)-(9 + x, 9 + y), c, BF
ELSE
    CALL FillBox(x, y, 1 + x, 1 + y, c)
    CALL FillBox(4 + x, y, 5 + x, 1 + y, c)
    CALL FillBox(8 + x, y, 9 + x, 1 + y, c)
    CALL FillBox(x, 4 + y, 1 + x, 5 + y, c)
    CALL FillBox(8 + x, 4 + y, 9 + x, 5 + y, c)
    CALL FillBox(x, 8 + y, 1 + x, 9 + y, c)
    CALL FillBox(4 + x, 8 + y, 5 + x, 9 + y, c)
    CALL FillBox(8 + x, 8 + y, 9 + x, 9 + y, c)
END IF
END SUB

SUB dice9
IF vid <> 4 THEN
    LINE (x, y)-(1 + x, 1 + y), c, BF
    LINE (4 + x, y)-(5 + x, 1 + y), c, BF
    LINE (8 + x, y)-(9 + x, 1 + y), c, BF
    LINE (x, 4 + y)-(1 + x, 5 + y), c, BF
    LINE (4 + x, 4 + y)-(5 + x, 5 + y), c, BF
    LINE (8 + x, 4 + y)-(9 + x, 5 + y), c, BF
    LINE (x, 8 + y)-(1 + x, 9 + y), c, BF
    LINE (4 + x, 8 + y)-(5 + x, 9 + y), c, BF
    LINE (8 + x, 8 + y)-(9 + x, 9 + y), c, BF
ELSE
    CALL FillBox(x, y, 1 + x, 1 + y, c)
    CALL FillBox(4 + x, y, 5 + x, 1 + y, c)
    CALL FillBox(8 + x, y, 9 + x, 1 + y, c)
    CALL FillBox(x, 4 + y, 1 + x, 5 + y, c)
    CALL FillBox(4 + x, 4 + y, 5 + x, 5 + y, c)
    CALL FillBox(8 + x, 4 + y, 9 + x, 5 + y, c)
    CALL FillBox(x, 8 + y, 1 + x, 9 + y, c)
    CALL FillBox(4 + x, 8 + y, 5 + x, 9 + y, c)
    CALL FillBox(8 + x, 8 + y, 9 + x, 9 + y, c)
END IF
END SUB

SUB king
IF vid <> 4 THEN
    LINE (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    LINE (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    LINE (4 + x, 6 + y)-(9 + x, 9 + y), c, BF
    LINE (2 + x, 4 + y)-(11 + x, 5 + y), c, BF
    LINE (0 + x, 3 + y)-(13 + x, 3 + y), c, BF
    LINE (0 + x, 2 + y)-(2 + x, 2 + y), c, BF
    LINE (4 + x, 2 + y)-(9 + x, 2 + y), c, BF
    LINE (11 + x, 2 + y)-(13 + x, 2 + y), c, BF
    LINE (0 + x, 1 + y)-(1 + x, 1 + y), c, BF
    LINE (5 + x, 1 + y)-(8 + x, 1 + y), c, BF
    LINE (12 + x, 1 + y)-(13 + x, 1 + y), c, BF
    LINE (6 + x, 0 + y)-(7 + x, 0 + y), c, BF
    PSET (0 + x, 0 + y), c
    PSET (13 + x, 0 + y), c
ELSE
    CALL FillBox(0 + x, 12 + y, 13 + x, 13 + y, c)
    CALL FillBox(2 + x, 10 + y, 11 + x, 11 + y, c)
    CALL FillBox(4 + x, 6 + y, 9 + x, 9 + y, c)
    CALL FillBox(2 + x, 4 + y, 11 + x, 5 + y, c)
    CALL FillBox(0 + x, 3 + y, 13 + x, 3 + y, c)
    CALL FillBox(0 + x, 2 + y, 2 + x, 2 + y, c)
    CALL FillBox(4 + x, 2 + y, 9 + x, 2 + y, c)
    CALL FillBox(11 + x, 2 + y, 13 + x, 2 + y, c)
    CALL FillBox(0 + x, 1 + y, 1 + x, 1 + y, c)
    CALL FillBox(5 + x, 1 + y, 8 + x, 1 + y, c)
    CALL FillBox(12 + x, 1 + y, 13 + x, 1 + y, c)
    CALL FillBox(6 + x, 0 + y, 7 + x, 0 + y, c)
    CALL ExtLineC(0 + x, 0 + y, 0 + x, 0 + y, c)
    CALL ExtLineC(13 + x, 0 + y, 13 + x, 0 + y, c)
END IF
END SUB

SUB queen
IF vid <> 4 THEN
    LINE (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    LINE (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    LINE (4 + x, 8 + y)-(9 + x, 9 + y), c, BF
    LINE (5 + x, 6 + y)-(8 + x, 7 + y), c, BF
    LINE (4 + x, 5 + y)-(9 + x, 5 + y), c, BF
    LINE (3 + x, 4 + y)-(10 + x, 4 + y), c, BF
    LINE (2 + x, 3 + y)-(11 + x, 3 + y), c, BF
    LINE (1 + x, 2 + y)-(12 + x, 2 + y), c, BF
    LINE (0 + x, 1 + y)-(13 + x, 1 + y), c, BF
    LINE (6 + x, 0 + y)-(7 + x, 0 + y), c, BF
    PSET (0 + x, 0 + y), c
    PSET (3 + x, 0 + y), c
    PSET (10 + x, 0 + y), c
    PSET (13 + x, 0 + y), c
ELSE
    CALL FillBox(0 + x, 12 + y, 13 + x, 13 + y, c)
    CALL FillBox(2 + x, 10 + y, 11 + x, 11 + y, c)
    CALL FillBox(4 + x, 8 + y, 9 + x, 9 + y, c)
    CALL FillBox(5 + x, 6 + y, 8 + x, 7 + y, c)
    CALL FillBox(4 + x, 5 + y, 9 + x, 5 + y, c)
    CALL FillBox(3 + x, 4 + y, 10 + x, 4 + y, c)
    CALL FillBox(2 + x, 3 + y, 11 + x, 3 + y, c)
    CALL FillBox(1 + x, 2 + y, 12 + x, 2 + y, c)
    CALL FillBox(0 + x, 1 + y, 13 + x, 1 + y, c)
    CALL FillBox(6 + x, 0 + y, 7 + x, 0 + y, c)
    CALL ExtLineC(0 + x, 0 + y, 0 + x, 0 + y, c)
    CALL ExtLineC(3 + x, 0 + y, 3 + x, 0 + y, c)
    CALL ExtLineC(10 + x, 0 + y, 10 + x, 0 + y, c)
    CALL ExtLineC(13 + x, 0 + y, 13 + x, 0 + y, c)
END IF
END SUB

SUB bishop
IF vid <> 4 THEN
    LINE (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    LINE (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    LINE (4 + x, 2 + y)-(9 + x, 7 + y), c, BF
    LINE (5 + x, 1 + y)-(8 + x, 9 + y), c, BF
    LINE (6 + x, 0 + y)-(7 + x, 0 + y), c, BF
ELSE
    CALL FillBox(0 + x, 12 + y, 13 + x, 13 + y, c)
    CALL FillBox(2 + x, 10 + y, 11 + x, 11 + y, c)
    CALL FillBox(4 + x, 2 + y, 9 + x, 7 + y, c)
    CALL FillBox(5 + x, 1 + y, 8 + x, 9 + y, c)
    CALL FillBox(6 + x, 0 + y, 7 + x, 0 + y, c)
END IF
END SUB

SUB knight
IF vid <> 4 THEN
    LINE (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    LINE (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    LINE (4 + x, 9 + y)-(9 + x, 9 + y), c, BF
    LINE (5 + x, 8 + y)-(10 + x, 8 + y), c, BF
    LINE (6 + x, 7 + y)-(11 + x, 7 + y), c, BF
    LINE (7 + x, 6 + y)-(12 + x, 6 + y), c, BF
    LINE (8 + x, 4 + y)-(13 + x, 5 + y), c, BF
    LINE (1 + x, 3 + y)-(12 + x, 3 + y), c, BF
    LINE (2 + x, 2 + y)-(11 + x, 2 + y), c, BF
    LINE (3 + x, 1 + y)-(10 + x, 1 + y), c, BF
    LINE (4 + x, 0 + y)-(9 + x, 0 + y), c, BF
ELSE
    CALL FillBox(0 + x, 12 + y, 13 + x, 13 + y, c)
    CALL FillBox(2 + x, 10 + y, 11 + x, 11 + y, c)
    CALL FillBox(4 + x, 9 + y, 9 + x, 9 + y, c)
    CALL FillBox(5 + x, 8 + y, 10 + x, 8 + y, c)
    CALL FillBox(6 + x, 7 + y, 11 + x, 7 + y, c)
    CALL FillBox(7 + x, 6 + y, 12 + x, 6 + y, c)
    CALL FillBox(8 + x, 4 + y, 13 + x, 5 + y, c)
    CALL FillBox(1 + x, 3 + y, 12 + x, 3 + y, c)
    CALL FillBox(2 + x, 2 + y, 11 + x, 2 + y, c)
    CALL FillBox(3 + x, 1 + y, 10 + x, 1 + y, c)
    CALL FillBox(4 + x, 0 + y, 9 + x, 0 + y, c)
END IF
END SUB

SUB rook
IF vid <> 4 THEN
    LINE (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    LINE (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    LINE (4 + x, 8 + y)-(9 + x, 9 + y), c, BF
    LINE (2 + x, 6 + y)-(11 + x, 7 + y), c, BF
    LINE (0 + x, 4 + y)-(13 + x, 5 + y), c, BF
    LINE (0 + x, 0 + y)-(1 + x, 3 + y), c, BF
    LINE (4 + x, 0 + y)-(5 + x, 3 + y), c, BF
    LINE (8 + x, 0 + y)-(9 + x, 3 + y), c, BF
    LINE (12 + x, 0 + y)-(13 + x, 3 + y), c, BF
ELSE
    CALL FillBox(0 + x, 12 + y, 13 + x, 13 + y, c)
    CALL FillBox(2 + x, 10 + y, 11 + x, 11 + y, c)
    CALL FillBox(4 + x, 8 + y, 9 + x, 9 + y, c)
    CALL FillBox(2 + x, 6 + y, 11 + x, 7 + y, c)
    CALL FillBox(0 + x, 4 + y, 13 + x, 5 + y, c)
    CALL FillBox(0 + x, 0 + y, 1 + x, 3 + y, c)
    CALL FillBox(4 + x, 0 + y, 5 + x, 3 + y, c)
    CALL FillBox(8 + x, 0 + y, 9 + x, 3 + y, c)
    CALL FillBox(12 + x, 0 + y, 13 + x, 3 + y, c)
END IF
END SUB

SUB pawn
IF vid <> 4 THEN
    LINE (0 + x, 12 + y)-(13 + x, 13 + y), c, BF
    LINE (2 + x, 10 + y)-(11 + x, 11 + y), c, BF
    LINE (5 + x, 8 + y)-(8 + x, 9 + y), c, BF
    LINE (4 + x, 7 + y)-(9 + x, 7 + y), c, BF
    LINE (3 + x, 6 + y)-(10 + x, 6 + y), c, BF
    LINE (2 + x, 4 + y)-(11 + x, 5 + y), c, BF
    LINE (3 + x, 3 + y)-(10 + x, 3 + y), c, BF
    LINE (4 + x, 2 + y)-(9 + x, 2 + y), c, BF
    LINE (5 + x, 1 + y)-(8 + x, 1 + y), c, BF
    LINE (6 + x, 0 + y)-(7 + x, 0 + y), c, BF
ELSE
    CALL FillBox(0 + x, 12 + y, 13 + x, 13 + y, c)
    CALL FillBox(2 + x, 10 + y, 11 + x, 11 + y, c)
    CALL FillBox(5 + x, 8 + y, 8 + x, 9 + y, c)
    CALL FillBox(4 + x, 7 + y, 9 + x, 7 + y, c)
    CALL FillBox(3 + x, 6 + y, 10 + x, 6 + y, c)
    CALL FillBox(2 + x, 4 + y, 11 + x, 5 + y, c)
    CALL FillBox(3 + x, 3 + y, 10 + x, 3 + y, c)
    CALL FillBox(4 + x, 2 + y, 9 + x, 2 + y, c)
    CALL FillBox(5 + x, 1 + y, 8 + x, 1 + y, c)
    CALL FillBox(6 + x, 0 + y, 7 + x, 0 + y, c)
END IF
END SUB

SUB generation
SELECT CASE dc3
    CASE IS = 1
        DO
            LET count = count + 1
            LET dc1 = INT(RND * 8 + 1)
            LET dc2 = INT(RND * 8 + 1)
            LET w = board(dc2, dc1)
            IF count > 8000 THEN EXIT DO
        LOOP WHILE ABS(w - b) < 10
    CASE IS = 2
        DO
            LET count = count + 1
            LET dc1 = INT(RND * 8 + 1)
            LET dc2 = INT(RND * 8 + 1)
            LET w = board(dc2, dc1)
            IF count > 8000 THEN EXIT DO
        LOOP WHILE w = w1 OR w = w2 OR w = w3 OR w = w4 OR w = b1 OR w = b2 OR w = b3 OR w = b4
    CASE IS = 3
        DO
            LET count = count + 1
            LET dc1 = INT(RND * 8 + 1)
            LET dc2 = INT(RND * 8 + 1)
            LET w = board(dc2, dc1)
            IF count > 8000 THEN EXIT DO
        LOOP WHILE w = w1 OR w = w2 OR w = w3 OR w = w4 OR w = b1 OR w = b2 OR w = b3 OR w = b4
    CASE IS = 4
        DO
            LET count = count + 1
            LET dc1 = INT(RND * 8 + 1)
            LET dc2 = INT(RND * 8 + 1)
            LET w = board(dc2, dc1)
            IF count > 8000 THEN EXIT DO
        LOOP WHILE w = w1 OR w = w2 OR w = w3 OR w = w4 OR w = b1 OR w = b2 OR w = b3 OR w = b4
    CASE IS = 5
        DO
            LET count = count + 1
            LET dc1 = INT(RND * 8 + 1)
            LET dc2 = INT(RND * 8 + 1)
            LET w = board(dc2, dc1)
            IF count > 8000 THEN EXIT DO
        LOOP WHILE w = w1 OR w = w2 OR w = w3 OR w = w4 OR w = b1 OR w = b2 OR w = b3 OR w = b4
    CASE IS = 6
        DO
            LET count = count + 1
            LET dc1 = INT(RND * 8 + 1)
            LET dc2 = INT(RND * 8 + 1)
            LET w = board(dc2, dc1)
            IF count > 8000 THEN EXIT DO
        LOOP WHILE w = w1 OR w = w2 OR w = w3 OR w = w4 OR w = b1 OR w = b2 OR w = b3 OR w = b4 OR dc2 = 1 OR dc2 = 8
END SELECT
SELECT CASE dc6
    CASE IS = 1
        DO
            LET count = count + 1
            LET dc4 = INT(RND * 8 + 1)
            LET dc5 = INT(RND * 8 + 1)
            LET b = board(dc5, dc4)
            IF count > 8000 THEN EXIT DO
        LOOP WHILE ABS(w - b) < 10
    CASE IS = 2
        DO
            LET count = count + 1
            LET dc4 = INT(RND * 8 + 1)
            LET dc5 = INT(RND * 8 + 1)
            LET b = board(dc5, dc4)
            IF count > 8000 THEN EXIT DO
        LOOP WHILE b = b1 OR b = b2 OR b = b3 OR b = b4 OR b = w1 OR b = w2 OR b = w3 OR b = w4
    CASE IS = 3
        DO
            LET count = count + 1
            LET dc4 = INT(RND * 8 + 1)
            LET dc5 = INT(RND * 8 + 1)
            LET b = board(dc5, dc4)
            IF count > 8000 THEN EXIT DO
        LOOP WHILE b = b1 OR b = b2 OR b = b3 OR b = b4 OR b = w1 OR b = w2 OR b = w3 OR b = w4
    CASE IS = 4
        DO
            LET count = count + 1
            LET dc4 = INT(RND * 8 + 1)
            LET dc5 = INT(RND * 8 + 1)
            LET b = board(dc5, dc4)
            IF count > 8000 THEN EXIT DO
        LOOP WHILE b = b1 OR b = b2 OR b = b3 OR b = b4 OR b = w1 OR b = w2 OR b = w3 OR b = w4
    CASE IS = 5
        DO
            LET count = count + 1
            LET dc4 = INT(RND * 8 + 1)
            LET dc5 = INT(RND * 8 + 1)
            LET fb4x = dc4: LET fb4y = dc5
            LET b = board(dc5, dc4)
            IF count > 8000 THEN EXIT DO
        LOOP WHILE b = b1 OR b = b2 OR b = b3 OR b = b4 OR b = w1 OR b = w2 OR b = w3 OR b = w4
    CASE IS = 6
        DO
            LET count = count + 1
            LET dc4 = INT(RND * 8 + 1)
            LET dc5 = INT(RND * 8 + 1)
            LET b = board(dc5, dc4)
            IF count > 8000 THEN EXIT DO
        LOOP WHILE b = b1 OR b = b2 OR b = b3 OR b = b4 OR b = w1 OR b = w2 OR b = w3 OR b = w4 OR dc5 = 1 OR dc5 = 8
END SELECT

LET x = 104: LET y = 3: LET c = 10
IF dc1 = 1 THEN CALL dice1
IF dc1 = 2 THEN CALL dice2
IF dc1 = 3 THEN CALL dice3
IF dc1 = 4 THEN CALL dice4
IF dc1 = 5 THEN CALL dice5
IF dc1 = 6 THEN CALL dice6
IF dc1 = 7 THEN CALL dice7
IF dc1 = 8 THEN CALL dice8
LET x = 127: LET y = 3: LET c = 10
IF dc2 = 1 THEN CALL dice1
IF dc2 = 2 THEN CALL dice2
IF dc2 = 3 THEN CALL dice3
IF dc2 = 4 THEN CALL dice4
IF dc2 = 5 THEN CALL dice5
IF dc2 = 6 THEN CALL dice6
IF dc2 = 7 THEN CALL dice7
IF dc2 = 8 THEN CALL dice8
LET x = 150: LET y = 3: LET c = 10
IF dc3 = 1 THEN CALL dice1
IF dc3 = 2 THEN CALL dice2
IF dc3 = 3 THEN CALL dice3
IF dc3 = 4 THEN CALL dice4
IF dc3 = 5 THEN CALL dice5
IF dc3 = 6 THEN CALL dice6
IF dc3 = 7 THEN CALL dice7
IF dc3 = 8 THEN CALL dice8
LET x = 173: LET y = 3: LET c = 10
IF dc4 = 1 THEN CALL dice1
IF dc4 = 2 THEN CALL dice2
IF dc4 = 3 THEN CALL dice3
IF dc4 = 4 THEN CALL dice4
IF dc4 = 5 THEN CALL dice5
IF dc4 = 6 THEN CALL dice6
IF dc4 = 7 THEN CALL dice7
IF dc4 = 8 THEN CALL dice8
LET x = 196: LET y = 3: LET c = 10
IF dc5 = 1 THEN CALL dice1
IF dc5 = 2 THEN CALL dice2
IF dc5 = 3 THEN CALL dice3
IF dc5 = 4 THEN CALL dice4
IF dc5 = 5 THEN CALL dice5
IF dc5 = 6 THEN CALL dice6
IF dc5 = 7 THEN CALL dice7
IF dc5 = 8 THEN CALL dice8
LET x = 219: LET y = 3: LET c = 10
IF dc6 = 1 THEN CALL dice1
IF dc6 = 2 THEN CALL dice2
IF dc6 = 3 THEN CALL dice3
IF dc6 = 4 THEN CALL dice4
IF dc6 = 5 THEN CALL dice5
IF dc6 = 6 THEN CALL dice6
IF dc6 = 7 THEN CALL dice7
IF dc6 = 8 THEN CALL dice8
LET x = 12: LET y = 26: LET c = 10
IF dc3 = 1 THEN CALL king
IF dc3 = 2 THEN CALL queen
IF dc3 = 3 THEN CALL bishop
IF dc3 = 4 THEN CALL knight
IF dc3 = 5 THEN CALL rook
IF dc3 = 6 THEN CALL pawn
LET x = 293: LET y = 26: LET c = 10
IF dc6 = 1 THEN CALL king
IF dc6 = 2 THEN CALL queen
IF dc6 = 3 THEN CALL bishop
IF dc6 = 4 THEN CALL knight
IF dc6 = 5 THEN CALL rook
IF dc6 = 6 THEN CALL pawn
LET x = 3: LET y = 8
IF dc1 = 1 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "A"
END IF
IF dc1 = 1 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("A")
END IF
IF dc1 = 2 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "B"
END IF
IF dc1 = 2 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("B")
END IF
IF dc1 = 3 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "C"
END IF
IF dc1 = 3 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("C")
END IF
IF dc1 = 4 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "D"
END IF
IF dc1 = 4 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("D")
END IF
IF dc1 = 5 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "E"
END IF
IF dc1 = 5 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("E")
END IF
IF dc1 = 6 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "F"
END IF
IF dc1 = 6 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("F")
END IF
IF dc1 = 7 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "G"
END IF
IF dc1 = 7 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("G")
END IF
IF dc1 = 8 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "H"
END IF
IF dc1 = 8 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("H")
END IF
LET x = 3: LET y = 11
IF dc2 = 1 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "1"
END IF
IF dc2 = 1 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("1")
END IF
IF dc2 = 2 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "2"
END IF
IF dc2 = 2 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("2")
END IF
IF dc2 = 3 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "3"
END IF
IF dc2 = 3 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("3")
END IF
IF dc2 = 4 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "4"
END IF
IF dc2 = 4 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("4")
END IF
IF dc2 = 5 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "5"
END IF
IF dc2 = 5 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("5")
END IF
IF dc2 = 6 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "6"
END IF
IF dc2 = 6 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("6")
END IF
IF dc2 = 7 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "7"
END IF
IF dc2 = 7 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("7")
END IF
IF dc2 = 8 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "8"
END IF
IF dc2 = 8 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("8")
END IF
LET x = 38: LET y = 8
IF dc4 = 1 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "A"
END IF
IF dc4 = 1 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("A")
END IF
IF dc4 = 2 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "B"
END IF
IF dc4 = 2 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("B")
END IF
IF dc4 = 3 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "C"
END IF
IF dc4 = 3 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("C")
END IF
IF dc4 = 4 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "D"
END IF
IF dc4 = 4 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("D")
END IF
IF dc4 = 5 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "E"
END IF
IF dc4 = 5 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("E")
END IF
IF dc4 = 6 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "F"
END IF
IF dc4 = 6 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("F")
END IF
IF dc4 = 7 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "G"
END IF
IF dc4 = 7 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("G")
END IF
IF dc4 = 8 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "H"
END IF
IF dc4 = 8 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("H")
END IF
LET x = 38: LET y = 11
IF dc5 = 1 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "1"
END IF
IF dc5 = 1 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("1")
END IF
IF dc5 = 2 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "2"
END IF
IF dc5 = 2 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("2")
END IF
IF dc5 = 3 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "3"
END IF
IF dc5 = 3 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("3")
END IF
IF dc5 = 4 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "4"
END IF
IF dc5 = 4 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("4")
END IF
IF dc5 = 5 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "5"
END IF
IF dc5 = 5 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("5")
END IF
IF dc5 = 6 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "6"
END IF
IF dc5 = 6 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("6")
END IF
IF dc5 = 7 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "7"
END IF
IF dc5 = 7 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("7")
END IF
IF dc5 = 8 AND vid <> 4 THEN
    LOCATE y, x
    PRINT "8"
END IF
IF dc5 = 8 AND vid = 4 THEN
CALL SetCursor(y, x)
CALL PrintString("8")
END IF
LET x = (dc1 * 17) + 83: LET y = ABS((dc2 * 17) - 200) - 42
LET c = 15
IF dc3 = 1 THEN CALL king
IF dc3 = 2 THEN CALL queen
IF dc3 = 3 THEN CALL bishop
IF dc3 = 4 THEN CALL knight
IF dc3 = 5 THEN CALL rook
IF dc3 = 6 THEN CALL pawn
LET x = (dc4 * 17) + 83: LET y = ABS((dc5 * 17) - 200) - 42
LET c = 0
IF dc6 = 1 THEN CALL king
IF dc6 = 2 THEN CALL queen
IF dc6 = 3 THEN CALL bishop
IF dc6 = 4 THEN CALL knight
IF dc6 = 5 THEN CALL rook
IF dc6 = 6 THEN CALL pawn
END SUB

SUB notation
   
    IF vid <> 4 THEN
        FOR x = 0 TO 115 STEP 23
            LINE (103 + x, 2)-(114 + x, 13), 0, BF
        NEXT x
        FOR y = 0 TO 52 STEP 26
            LINE (12, 26 + y)-(25, 39 + y), 0, BF
        NEXT y
        FOR y = 0 TO 52 STEP 26
           LINE (293, 26 + y)-(306, 39 + y), 0, BF
        NEXT y
    ELSE
        FOR x = 0 TO 115 STEP 23
            CALL FillBox(103 + x, 2, 114 + x, 13, 0)
        NEXT x
        FOR y = 0 TO 52 STEP 26
            CALL FillBox(12, 26 + y, 25, 39 + y, 0)
        NEXT y
        FOR y = 0 TO 52 STEP 26
           CALL FillBox(293, 26 + y, 306, 39 + y, 0)
        NEXT y
    END IF

    REM Forsyth-Edwards notation

    IF fw1 = 1 THEN LET fig1w$ = "K"
    IF fw1 = 2 THEN LET fig1w$ = "Q"
    IF fw1 = 3 THEN LET fig1w$ = "B"
    IF fw1 = 4 THEN LET fig1w$ = "N"
    IF fw1 = 5 THEN LET fig1w$ = "R"
    IF fw1 = 6 THEN LET fig1w$ = "P"

    IF fb1 = 1 THEN LET fig1b$ = "k"
    IF fb1 = 2 THEN LET fig1b$ = "q"
    IF fb1 = 3 THEN LET fig1b$ = "b"
    IF fb1 = 4 THEN LET fig1b$ = "n"
    IF fb1 = 5 THEN LET fig1b$ = "r"
    IF fb1 = 6 THEN LET fig1b$ = "p"

    IF fw2 = 1 THEN LET fig2w$ = "K"
    IF fw2 = 2 THEN LET fig2w$ = "Q"
    IF fw2 = 3 THEN LET fig2w$ = "B"
    IF fw2 = 4 THEN LET fig2w$ = "N"
    IF fw2 = 5 THEN LET fig2w$ = "R"
    IF fw2 = 6 THEN LET fig2w$ = "P"

    IF fb2 = 1 THEN LET fig2b$ = "k"
    IF fb2 = 2 THEN LET fig2b$ = "q"
    IF fb2 = 3 THEN LET fig2b$ = "b"
    IF fb2 = 4 THEN LET fig2b$ = "n"
    IF fb2 = 5 THEN LET fig2b$ = "r"
    IF fb2 = 6 THEN LET fig2b$ = "p"

    IF fw3 = 1 THEN LET fig3w$ = "K"
    IF fw3 = 2 THEN LET fig3w$ = "Q"
    IF fw3 = 3 THEN LET fig3w$ = "B"
    IF fw3 = 4 THEN LET fig3w$ = "N"
    IF fw3 = 5 THEN LET fig3w$ = "R"
    IF fw3 = 6 THEN LET fig3w$ = "P"

    IF fb3 = 1 THEN LET fig3b$ = "k"
    IF fb3 = 2 THEN LET fig3b$ = "q"
    IF fb3 = 3 THEN LET fig3b$ = "b"
    IF fb3 = 4 THEN LET fig3b$ = "n"
    IF fb3 = 5 THEN LET fig3b$ = "r"
    IF fb3 = 6 THEN LET fig3b$ = "p"

    IF fw4 = 1 THEN LET fig4w$ = "K"
    IF fw4 = 2 THEN LET fig4w$ = "Q"
    IF fw4 = 3 THEN LET fig4w$ = "B"
    IF fw4 = 4 THEN LET fig4w$ = "N"
    IF fw4 = 5 THEN LET fig4w$ = "R"
    IF fw4 = 6 THEN LET fig4w$ = "P"

    IF fb4 = 1 THEN LET fig4b$ = "k"
    IF fb4 = 2 THEN LET fig4b$ = "q"
    IF fb4 = 3 THEN LET fig4b$ = "b"
    IF fb4 = 4 THEN LET fig4b$ = "n"
    IF fb4 = 5 THEN LET fig4b$ = "r"
    IF fb4 = 6 THEN LET fig4b$ = "p"

    DIM table(8, 8) AS STRING
    LET table(fw1y, fw1x) = fig1w$
    LET table(fb1y, fb1x) = fig1b$
    LET table(fw2y, fw2x) = fig2w$
    LET table(fb2y, fb2x) = fig2b$
    LET table(fw3y, fw3x) = fig3w$
    LET table(fb3y, fb3x) = fig3b$
    LET table(fw4y, fw4x) = fig4w$
    LET table(fb4y, fb4x) = fig4b$
    FOR row = 1 TO 8: FOR col = 1 TO 8
        IF table(row, col) = "" THEN LET table(row, col) = "+"
    NEXT col: NEXT row

    FOR t = 8 TO 1 STEP -1
        LET mas$ = table(t, 1) + table(t, 2) + table(t, 3) + table(t, 4) + table(t, 5) + table(t, 6) + table(t, 7) + table(t, 8)
        LET lin$ = ""
        LET count = 0
        FOR index = 1 TO 8
            IF index = 8 AND MID$(mas$, index, 1) = "+" THEN
                LET count = count + 1
                lin$ = lin$ + LTRIM$(STR$(count))
            END IF
            IF index < 8 AND MID$(mas$, index, 1) = "+" THEN
                LET count = count + 1
            END IF
            IF MID$(mas$, index, 1) <> "+" AND count = 0 THEN
                LET lin$ = lin$ + MID$(mas$, index, 1)
            END IF
            IF MID$(mas$, index, 1) <> "+" AND count > 0 THEN
                LET lin$ = lin$ + LTRIM$(STR$(count))
                LET lin$ = lin$ + MID$(mas$, index, 1)
                LET count = 0
            END IF
        NEXT index
        IF t = 1 THEN fen$ = fen$ + lin$ ELSE fen$ = fen$ + lin$ + "/"
    NEXT t

IF vid <> 4 THEN
    LOCATE 1, 10: PRINT "Press any key to display"
    LOCATE 2, 8: PRINT "the Forsyth-Edwards notation"
    DO
    LOOP UNTIL INKEY$ <> ""
    LOCATE 1, 8: PRINT "                                "
    LOCATE 2, 8: PRINT "                                "
    LOCATE 2, 8: PRINT fen$
ELSE
    CALL SetCursor(1, 10): CALL PrintStringX("Press any key to display")
    CALL SetCursor(2, 8): CALL PrintStringX("the Forsyth-Edwards notation")
    DO
    LOOP UNTIL INKEY$ <> ""
    CALL SetCursor(1, 8): CALL PrintStringX("                                ")
    CALL SetCursor(2, 8): CALL PrintStringX("                                ")
    CALL SetCursor(2, 8): CALL PrintStringX(fen$)
END IF

LET fen$ = ""
    DO
    LOOP UNTIL INKEY$ <> ""
END SUB