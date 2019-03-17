{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-missing-signatures #-}
{-# LANGUAGE CPP #-}
{-# LINE 1 "LexerTokens.x" #-}

  module LexerTokens where

#if __GLASGOW_HASKELL__ >= 603
#include "ghcconfig.h"
#elif defined(__GLASGOW_HASKELL__)
#include "config.h"
#endif
#if __GLASGOW_HASKELL__ >= 503
import Data.Array
import Data.Array.Base (unsafeAt)
#else
import Array
#endif
{-# LINE 1 "templates/wrappers.hs" #-}
-- -----------------------------------------------------------------------------
-- Alex wrapper code.
--
-- This code is in the PUBLIC DOMAIN; you may copy it freely and use
-- it for any purpose whatsoever.






import Data.Word (Word8)
















import Data.Char (ord)
import qualified Data.Bits

-- | Encode a Haskell String to a list of Word8 values, in UTF8 format.
utf8Encode :: Char -> [Word8]
utf8Encode = map fromIntegral . go . ord
 where
  go oc
   | oc <= 0x7f       = [oc]

   | oc <= 0x7ff      = [ 0xc0 + (oc `Data.Bits.shiftR` 6)
                        , 0x80 + oc Data.Bits..&. 0x3f
                        ]

   | oc <= 0xffff     = [ 0xe0 + (oc `Data.Bits.shiftR` 12)
                        , 0x80 + ((oc `Data.Bits.shiftR` 6) Data.Bits..&. 0x3f)
                        , 0x80 + oc Data.Bits..&. 0x3f
                        ]
   | otherwise        = [ 0xf0 + (oc `Data.Bits.shiftR` 18)
                        , 0x80 + ((oc `Data.Bits.shiftR` 12) Data.Bits..&. 0x3f)
                        , 0x80 + ((oc `Data.Bits.shiftR` 6) Data.Bits..&. 0x3f)
                        , 0x80 + oc Data.Bits..&. 0x3f
                        ]



type Byte = Word8

-- -----------------------------------------------------------------------------
-- The input type


type AlexInput = (AlexPosn,     -- current position,
                  Char,         -- previous char
                  [Byte],       -- pending bytes on current char
                  String)       -- current input string

ignorePendingBytes :: AlexInput -> AlexInput
ignorePendingBytes (p,c,_ps,s) = (p,c,[],s)

alexInputPrevChar :: AlexInput -> Char
alexInputPrevChar (_p,c,_bs,_s) = c

alexGetByte :: AlexInput -> Maybe (Byte,AlexInput)
alexGetByte (p,c,(b:bs),s) = Just (b,(p,c,bs,s))
alexGetByte (_,_,[],[]) = Nothing
alexGetByte (p,_,[],(c:s))  = let p' = alexMove p c
                                  (b:bs) = utf8Encode c
                              in p' `seq`  Just (b, (p', c, bs, s))





























































-- -----------------------------------------------------------------------------
-- Token positions

-- `Posn' records the location of a token in the input text.  It has three
-- fields: the address (number of chacaters preceding the token), line number
-- and column of a token within the file. `start_pos' gives the position of the
-- start of the file and `eof_pos' a standard encoding for the end of file.
-- `move_pos' calculates the new position after traversing a given character,
-- assuming the usual eight character tab stops.


data AlexPosn = AlexPn !Int !Int !Int
        deriving (Eq,Show)

alexStartPos :: AlexPosn
alexStartPos = AlexPn 0 1 1

alexMove :: AlexPosn -> Char -> AlexPosn
alexMove (AlexPn a l c) '\t' = AlexPn (a+1)  l     (((c+alex_tab_size-1) `div` alex_tab_size)*alex_tab_size+1)
alexMove (AlexPn a l _) '\n' = AlexPn (a+1) (l+1)   1
alexMove (AlexPn a l c) _    = AlexPn (a+1)  l     (c+1)


-- -----------------------------------------------------------------------------
-- Default monad
















































































































-- -----------------------------------------------------------------------------
-- Monad (with ByteString input)







































































































-- -----------------------------------------------------------------------------
-- Basic wrapper

























-- -----------------------------------------------------------------------------
-- Basic wrapper, ByteString version
































-- -----------------------------------------------------------------------------
-- Posn wrapper

-- Adds text positions to the basic model.


--alexScanTokens :: String -> [token]
alexScanTokens str0 = go (alexStartPos,'\n',[],str0)
  where go inp__@(pos,_,_,str) =
          case alexScan inp__ 0 of
                AlexEOF -> []
                AlexError ((AlexPn _ line column),_,_,_) -> error $ "lexical error at line " ++ (show line) ++ ", column " ++ (show column)
                AlexSkip  inp__' _ln     -> go inp__'
                AlexToken inp__' len act -> act pos (take len str) : go inp__'



-- -----------------------------------------------------------------------------
-- Posn wrapper, ByteString version














-- -----------------------------------------------------------------------------
-- GScan wrapper

-- For compatibility with previous versions of Alex, and because we can.














alex_tab_size :: Int
alex_tab_size = 8
alex_base :: Array Int Int
alex_base = listArray (0 :: Int, 121)
  [ -8
  , -95
  , -94
  , -101
  , -80
  , -67
  , -28
  , -89
  , -84
  , -87
  , -82
  , -137
  , -93
  , -100
  , -96
  , -85
  , -75
  , -50
  , -60
  , -47
  , -74
  , -86
  , -71
  , -77
  , -59
  , -56
  , -43
  , -40
  , -42
  , -15
  , -1
  , -38
  , -35
  , -44
  , -32
  , 2
  , 7
  , -25
  , 12
  , -19
  , -4
  , -29
  , -20
  , -18
  , -34
  , -27
  , -31
  , -30
  , 4
  , -24
  , -17
  , -16
  , -13
  , -23
  , -12
  , 26
  , -9
  , 5
  , -21
  , 1
  , -6
  , 93
  , 3
  , 31
  , -2
  , 8
  , 10
  , 17
  , 18
  , 13
  , 22
  , 15
  , 11
  , 46
  , 24
  , 38
  , 29
  , 20
  , 19
  , 25
  , 127
  , 0
  , 0
  , 94
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 72
  , 0
  , 0
  , 0
  , 0
  , 0
  , 112
  ]

alex_table :: Array Int Int
alex_table = listArray (0 :: Int, 382)
  [ 0
  , 80
  , 80
  , 80
  , 80
  , 80
  , 84
  , 85
  , 88
  , 91
  , 92
  , 95
  , 109
  , 56
  , 112
  , 121
  , 121
  , 1
  , 79
  , 2
  , 77
  , 111
  , 3
  , 75
  , 80
  , 5
  , 73
  , 71
  , 39
  , 7
  , 69
  , 61
  , 102
  , 103
  , 114
  , 113
  , 106
  , 115
  , 9
  , 116
  , 83
  , 83
  , 83
  , 83
  , 83
  , 83
  , 83
  , 83
  , 83
  , 83
  , 100
  , 107
  , 98
  , 101
  , 99
  , 12
  , 67
  , 36
  , 25
  , 29
  , 15
  , 16
  , 19
  , 64
  , 63
  , 66
  , 18
  , 62
  , 60
  , 26
  , 31
  , 55
  , 48
  , 24
  , 30
  , 44
  , 54
  , 51
  , 50
  , 49
  , 38
  , 47
  , 45
  , 46
  , 118
  , 40
  , 35
  , 41
  , 37
  , 59
  , 34
  , 53
  , 52
  , 65
  , 8
  , 43
  , 17
  , 70
  , 28
  , 14
  , 20
  , 27
  , 23
  , 6
  , 33
  , 10
  , 42
  , 11
  , 57
  , 22
  , 68
  , 4
  , 93
  , 72
  , 74
  , 104
  , 21
  , 105
  , 76
  , 13
  , 78
  , 120
  , 117
  , 110
  , 108
  , 32
  , 89
  , 94
  , 90
  , 87
  , 86
  , 96
  , 97
  , 81
  , 119
  , 82
  , 80
  , 80
  , 80
  , 80
  , 80
  , 0
  , 83
  , 83
  , 83
  , 83
  , 83
  , 83
  , 83
  , 83
  , 83
  , 83
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 80
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 0
  , 0
  , 0
  , 0
  , 121
  , 0
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 121
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 58
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  , 0
  ]

alex_check :: Array Int Int
alex_check = listArray (0 :: Int, 382)
  [ -1
  , 9
  , 10
  , 11
  , 12
  , 13
  , 101
  , 101
  , 109
  , 89
  , 77
  , 39
  , 101
  , 97
  , 101
  , 97
  , 153
  , 117
  , 111
  , 115
  , 105
  , 105
  , 97
  , 73
  , 32
  , 85
  , 73
  , 101
  , 36
  , 115
  , 101
  , 39
  , 40
  , 41
  , 42
  , 43
  , 44
  , 45
  , 115
  , 47
  , 48
  , 49
  , 50
  , 51
  , 52
  , 53
  , 54
  , 55
  , 56
  , 57
  , 58
  , 59
  , 60
  , 61
  , 62
  , 111
  , 115
  , 65
  , 66
  , 67
  , 103
  , 101
  , 70
  , 105
  , 79
  , 73
  , 67
  , 105
  , 103
  , 101
  , 114
  , 69
  , 80
  , 117
  , 67
  , 83
  , 101
  , 65
  , 97
  , 83
  , 109
  , 101
  , 116
  , 101
  , 92
  , 116
  , 82
  , 114
  , 118
  , 112
  , 98
  , 108
  , 116
  , 101
  , 102
  , 103
  , 70
  , 105
  , 114
  , 108
  , 108
  , 114
  , 114
  , 10
  , 112
  , 104
  , 114
  , 128
  , 116
  , 104
  , 116
  , 80
  , 66
  , 110
  , 116
  , 123
  , 108
  , 125
  , 110
  , 114
  , 110
  , 104
  , 104
  , 110
  , 102
  , 110
  , 88
  , 116
  , 104
  , 100
  , 110
  , 116
  , 110
  , 108
  , 62
  , 116
  , 9
  , 10
  , 11
  , 12
  , 13
  , -1
  , 48
  , 49
  , 50
  , 51
  , 52
  , 53
  , 54
  , 55
  , 56
  , 57
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , 32
  , 48
  , 49
  , 50
  , 51
  , 52
  , 53
  , 54
  , 55
  , 56
  , 57
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , 65
  , 66
  , 67
  , 68
  , 69
  , 70
  , 71
  , 72
  , 73
  , 74
  , 75
  , 76
  , 77
  , 78
  , 79
  , 80
  , 81
  , 82
  , 83
  , 84
  , 85
  , 86
  , 87
  , 88
  , 89
  , 90
  , -1
  , -1
  , -1
  , -1
  , 95
  , -1
  , 97
  , 98
  , 99
  , 100
  , 101
  , 102
  , 103
  , 104
  , 105
  , 106
  , 107
  , 108
  , 109
  , 110
  , 111
  , 112
  , 113
  , 114
  , 115
  , 116
  , 117
  , 118
  , 119
  , 120
  , 121
  , 122
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , 226
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  ]

alex_deflt :: Array Int Int
alex_deflt = listArray (0 :: Int, 121)
  [ -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  , -1
  ]

alex_accept = listArray (0 :: Int, 121)
  [ AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccNone
  , AlexAccSkip
  , AlexAcc 40
  , AlexAcc 39
  , AlexAcc 38
  , AlexAcc 37
  , AlexAcc 36
  , AlexAcc 35
  , AlexAcc 34
  , AlexAcc 33
  , AlexAcc 32
  , AlexAcc 31
  , AlexAcc 30
  , AlexAcc 29
  , AlexAcc 28
  , AlexAcc 27
  , AlexAcc 26
  , AlexAcc 25
  , AlexAcc 24
  , AlexAcc 23
  , AlexAcc 22
  , AlexAcc 21
  , AlexAcc 20
  , AlexAcc 19
  , AlexAcc 18
  , AlexAcc 17
  , AlexAcc 16
  , AlexAcc 15
  , AlexAcc 14
  , AlexAcc 13
  , AlexAcc 12
  , AlexAcc 11
  , AlexAcc 10
  , AlexAcc 9
  , AlexAcc 8
  , AlexAcc 7
  , AlexAcc 6
  , AlexAcc 5
  , AlexAcc 4
  , AlexAcc 3
  , AlexAcc 2
  , AlexAcc 1
  , AlexAcc 0
  ]

alex_actions = array (0 :: Int, 41)
  [ (40,alex_action_1)
  , (39,alex_action_2)
  , (38,alex_action_3)
  , (37,alex_action_4)
  , (36,alex_action_5)
  , (35,alex_action_6)
  , (34,alex_action_7)
  , (33,alex_action_8)
  , (32,alex_action_9)
  , (31,alex_action_10)
  , (30,alex_action_11)
  , (29,alex_action_12)
  , (28,alex_action_13)
  , (27,alex_action_14)
  , (26,alex_action_15)
  , (25,alex_action_16)
  , (24,alex_action_17)
  , (23,alex_action_18)
  , (22,alex_action_19)
  , (21,alex_action_20)
  , (20,alex_action_22)
  , (19,alex_action_23)
  , (18,alex_action_24)
  , (17,alex_action_25)
  , (16,alex_action_26)
  , (15,alex_action_27)
  , (14,alex_action_28)
  , (13,alex_action_29)
  , (12,alex_action_30)
  , (11,alex_action_31)
  , (10,alex_action_32)
  , (9,alex_action_33)
  , (8,alex_action_34)
  , (7,alex_action_35)
  , (6,alex_action_36)
  , (5,alex_action_37)
  , (4,alex_action_38)
  , (3,alex_action_39)
  , (2,alex_action_40)
  , (1,alex_action_41)
  , (0,alex_action_42)
  ]

{-# LINE 62 "LexerTokens.x" #-}

tok f p s = f p s

-- the token type
data LexerToken =
  TokenTypeBool       AlexPosn          |
  TokenTypeInt        AlexPosn          |
  TokenInt            AlexPosn Int      |
  TokenTrue           AlexPosn          |
  TokenFalse          AlexPosn          |
  TokenBegin          AlexPosn          |
  TokenEnd            AlexPosn          |
  TokenGetStream      AlexPosn          |
  TokenPrefix         AlexPosn          |
  TokenStrmArith      AlexPosn          |
  TokenCopy           AlexPosn          |
  TokenAccum          AlexPosn          |
  TokenFIB            AlexPosn          |
  TokenPrint          AlexPosn          |
  TokenEOL            AlexPosn          |
  TokenLet            AlexPosn          |
  TokenIn             AlexPosn          |
  TokenLT             AlexPosn          |
  TokenGT             AlexPosn          |
  TokenVar            AlexPosn String   |
  TokenCol            AlexPosn          |
  TokenIf             AlexPosn          |
  TokenThen           AlexPosn          |
  TokenElse           AlexPosn          |
  TokenEq             AlexPosn          |
  TokenLParen         AlexPosn          |
  TokenRParen         AlexPosn          |
  TokenLBrckt         AlexPosn          |
  TokenRBrckt         AlexPosn          |
  TokenComma          AlexPosn          |
  TokenSemiCol        AlexPosn          |
  TokenFi             AlexPosn          |
  TokenReverse        AlexPosn          |
  TokenAdd            AlexPosn          |
  TokenMult           AlexPosn          |
  TokenSub            AlexPosn          |
  TokenDiv            AlexPosn          |
  TokenLength         AlexPosn          |
  TokenLambda         AlexPosn          |
  TokenArr            AlexPosn          |
  TokenPush           AlexPosn







  deriving (Eq,Show)

tokenPosn :: LexerToken -> String
tokenPosn (TokenTypeBool (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeInt  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenInt  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTrue  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFalse  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenBegin  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEnd  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGetStream  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPrefix  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenStrmArith (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenCopy (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAccum (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFIB  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPrint  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEOL (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIn (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLT (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenGT (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenCol (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenThen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLBrckt  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRBrckt  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenComma (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSemiCol (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFi (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenReverse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAdd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMult (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSub  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDiv  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLength (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLambda (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenArr (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPush (AlexPn a l c)) = show(l) ++ ":" ++ show(c)


alex_action_1 =  tok (\p s -> TokenTypeBool p)
alex_action_2 =  tok (\p s -> TokenTypeInt p)
alex_action_3 =  tok (\p s -> TokenInt p (read s)) 
alex_action_4 =  tok (\p s -> TokenTrue p)
alex_action_5 =  tok (\p s -> TokenFalse p)
alex_action_6 =  tok (\p s -> TokenBegin p) 
alex_action_7 =  tok (\p s -> TokenEnd p)
alex_action_8 =  tok (\p s -> TokenGetStream p)
alex_action_9 =  tok (\p s -> TokenPrefix p)
alex_action_10 =  tok (\p s -> TokenStrmArith p)
alex_action_11 =  tok (\p s -> TokenCopy p)
alex_action_12 =  tok (\p s -> TokenAccum p)
alex_action_13 =  tok (\p s -> TokenFIB p)
alex_action_14 =  tok (\p s -> TokenPrint p)
alex_action_15 =  tok (\p s -> TokenEOL p)
alex_action_16 =  tok (\p s -> TokenLet p)
alex_action_17 =  tok (\p s -> TokenIn p)
alex_action_18 =  tok (\p s -> TokenLT p)
alex_action_19 =  tok (\p s -> TokenGT p)
alex_action_20 =  tok (\p s -> TokenCol p)
alex_action_21 =  tok (\p s -> TokenLet p )
alex_action_22 =  tok (\p s -> TokenEq p )
alex_action_23 =  tok (\p s -> TokenLParen p) 
alex_action_24 =  tok (\p s -> TokenRParen p) 
alex_action_25 =  tok (\p s -> TokenLBrckt p)
alex_action_26 =  tok (\p s -> TokenRBrckt p)
alex_action_27 =  tok (\p s -> TokenComma p)
alex_action_28 =  tok (\p s -> TokenSemiCol p)
alex_action_29 =  tok (\p s -> TokenIf p)
alex_action_30 =  tok (\p s -> TokenElse p)
alex_action_31 =  tok (\p s -> TokenThen p)
alex_action_32 =  tok (\p s -> TokenFi p)
alex_action_33 =  tok (\p s -> TokenReverse p)
alex_action_34 =  tok (\p s -> TokenAdd p)
alex_action_35 =  tok (\p s -> TokenMult p)
alex_action_36 =  tok (\p s -> TokenSub p)
alex_action_37 =  tok (\p s -> TokenDiv p)
alex_action_38 =  tok (\p s -> TokenLength p)
alex_action_39 =  tok (\p s -> TokenLambda p) 
alex_action_40 =  tok (\p s -> TokenArr p) 
alex_action_41 =  tok (\p s -> TokenPush p) 
alex_action_42 =  tok (\p s -> TokenVar p s) 
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- -----------------------------------------------------------------------------
-- ALEX TEMPLATE
--
-- This code is in the PUBLIC DOMAIN; you may copy it freely and use
-- it for any purpose whatsoever.

-- -----------------------------------------------------------------------------
-- INTERNALS and main scanner engine































































alexIndexInt16OffAddr arr off = arr ! off




















alexIndexInt32OffAddr arr off = arr ! off











quickIndex arr i = arr ! i


-- -----------------------------------------------------------------------------
-- Main lexing routines

data AlexReturn a
  = AlexEOF
  | AlexError  !AlexInput
  | AlexSkip   !AlexInput !Int
  | AlexToken  !AlexInput !Int a

-- alexScan :: AlexInput -> StartCode -> AlexReturn a
alexScan input__ (sc)
  = alexScanUser undefined input__ (sc)

alexScanUser user__ input__ (sc)
  = case alex_scan_tkn user__ input__ (0) input__ sc AlexNone of
  (AlexNone, input__') ->
    case alexGetByte input__ of
      Nothing ->



                                   AlexEOF
      Just _ ->



                                   AlexError input__'

  (AlexLastSkip input__'' len, _) ->



    AlexSkip input__'' len

  (AlexLastAcc k input__''' len, _) ->



    AlexToken input__''' len (alex_actions ! k)


-- Push the input through the DFA, remembering the most recent accepting
-- state it encountered.

alex_scan_tkn user__ orig_input len input__ s last_acc =
  input__ `seq` -- strict in the input
  let
  new_acc = (check_accs (alex_accept `quickIndex` (s)))
  in
  new_acc `seq`
  case alexGetByte input__ of
     Nothing -> (new_acc, input__)
     Just (c, new_input) ->



      case fromIntegral c of { (ord_c) ->
        let
                base   = alexIndexInt32OffAddr alex_base s
                offset = (base + ord_c)
                check  = alexIndexInt16OffAddr alex_check offset

                new_s = if (offset >= (0)) && (check == ord_c)
                          then alexIndexInt16OffAddr alex_table offset
                          else alexIndexInt16OffAddr alex_deflt s
        in
        case new_s of
            (-1) -> (new_acc, input__)
                -- on an error, we want to keep the input *before* the
                -- character that failed, not after.
            _ -> alex_scan_tkn user__ orig_input (if c < 0x80 || c >= 0xC0 then (len + (1)) else len)
                                                -- note that the length is increased ONLY if this is the 1st byte in a char encoding)
                        new_input new_s new_acc
      }
  where
        check_accs (AlexAccNone) = last_acc
        check_accs (AlexAcc a  ) = AlexLastAcc a input__ (len)
        check_accs (AlexAccSkip) = AlexLastSkip  input__ (len)

        check_accs (AlexAccPred a predx rest)
           | predx user__ orig_input (len) input__
           = AlexLastAcc a input__ (len)
           | otherwise
           = check_accs rest
        check_accs (AlexAccSkipPred predx rest)
           | predx user__ orig_input (len) input__
           = AlexLastSkip input__ (len)
           | otherwise
           = check_accs rest


data AlexLastAcc
  = AlexNone
  | AlexLastAcc !Int !AlexInput !Int
  | AlexLastSkip     !AlexInput !Int

data AlexAcc user
  = AlexAccNone
  | AlexAcc Int
  | AlexAccSkip

  | AlexAccPred Int (AlexAccPred user) (AlexAcc user)
  | AlexAccSkipPred (AlexAccPred user) (AlexAcc user)

type AlexAccPred user = user -> AlexInput -> Int -> AlexInput -> Bool

-- -----------------------------------------------------------------------------
-- Predicates on a rule

alexAndPred p1 p2 user__ in1 len in2
  = p1 user__ in1 len in2 && p2 user__ in1 len in2

--alexPrevCharIsPred :: Char -> AlexAccPred _
alexPrevCharIs c _ input__ _ _ = c == alexInputPrevChar input__

alexPrevCharMatches f _ input__ _ _ = f (alexInputPrevChar input__)

--alexPrevCharIsOneOfPred :: Array Char Bool -> AlexAccPred _
alexPrevCharIsOneOf arr _ input__ _ _ = arr ! alexInputPrevChar input__

--alexRightContext :: Int -> AlexAccPred _
alexRightContext (sc) user__ _ _ input__ =
     case alex_scan_tkn user__ input__ (0) input__ sc AlexNone of
          (AlexNone, _) -> False
          _ -> True
        -- TODO: there's no need to find the longest
        -- match when checking the right context, just
        -- the first match will do.

