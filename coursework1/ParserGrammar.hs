{-# OPTIONS_GHC -w #-}
module ParserGrammar where
import LexerTokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5
	= HappyTerminal (LexerToken)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,74) ([65408,16431,8,1,0,65528,33794,0,0,0,0,0,0,0,0,0,0,0,0,0,0,57344,3071,528,65528,33794,65024,191,32801,12287,2112,65504,4107,63490,767,132,49150,8448,0,16384,57344,3071,528,0,0,0,0,2,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,2,0,0,96,0,8,0,32,0,0,0,0,0,0,0,0,1024,63488,767,132,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","Type","Bool","Int","int","true","false","begin","end","stream","readLine","PREFIX","StrmArith","COPY","ACCUM","FIB","print","'\\n'","let","in","'<'","'>'","if","then","else","'='","':'","'('","')'","'{'","'}'","','","var","';'","%eof"]
        bit_start = st * 38
        bit_end = (st + 1) * 38
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..37]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (8) = happyShift action_4
action_0 (9) = happyShift action_5
action_0 (10) = happyShift action_6
action_0 (11) = happyShift action_2
action_0 (12) = happyShift action_7
action_0 (13) = happyShift action_8
action_0 (14) = happyShift action_9
action_0 (15) = happyShift action_10
action_0 (16) = happyShift action_11
action_0 (17) = happyShift action_12
action_0 (18) = happyShift action_13
action_0 (19) = happyShift action_14
action_0 (20) = happyShift action_15
action_0 (22) = happyShift action_16
action_0 (31) = happyShift action_17
action_0 (36) = happyShift action_18
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (11) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (8) = happyShift action_4
action_2 (9) = happyShift action_5
action_2 (10) = happyShift action_6
action_2 (11) = happyShift action_2
action_2 (12) = happyShift action_7
action_2 (13) = happyShift action_8
action_2 (14) = happyShift action_9
action_2 (15) = happyShift action_10
action_2 (16) = happyShift action_11
action_2 (17) = happyShift action_12
action_2 (18) = happyShift action_13
action_2 (19) = happyShift action_14
action_2 (20) = happyShift action_15
action_2 (22) = happyShift action_16
action_2 (31) = happyShift action_17
action_2 (36) = happyShift action_18
action_2 (4) = happyGoto action_28
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (38) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_3

action_5 _ = happyReduce_5

action_6 _ = happyReduce_6

action_7 _ = happyReduce_15

action_8 _ = happyReduce_2

action_9 (8) = happyShift action_4
action_9 (9) = happyShift action_5
action_9 (10) = happyShift action_6
action_9 (11) = happyShift action_2
action_9 (12) = happyShift action_7
action_9 (13) = happyShift action_8
action_9 (14) = happyShift action_9
action_9 (15) = happyShift action_10
action_9 (16) = happyShift action_11
action_9 (17) = happyShift action_12
action_9 (18) = happyShift action_13
action_9 (19) = happyShift action_14
action_9 (20) = happyShift action_15
action_9 (22) = happyShift action_16
action_9 (31) = happyShift action_17
action_9 (36) = happyShift action_18
action_9 (4) = happyGoto action_27
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (8) = happyShift action_4
action_10 (9) = happyShift action_5
action_10 (10) = happyShift action_6
action_10 (11) = happyShift action_2
action_10 (12) = happyShift action_7
action_10 (13) = happyShift action_8
action_10 (14) = happyShift action_9
action_10 (15) = happyShift action_10
action_10 (16) = happyShift action_11
action_10 (17) = happyShift action_12
action_10 (18) = happyShift action_13
action_10 (19) = happyShift action_14
action_10 (20) = happyShift action_15
action_10 (22) = happyShift action_16
action_10 (31) = happyShift action_17
action_10 (36) = happyShift action_18
action_10 (4) = happyGoto action_26
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (8) = happyShift action_4
action_11 (9) = happyShift action_5
action_11 (10) = happyShift action_6
action_11 (11) = happyShift action_2
action_11 (12) = happyShift action_7
action_11 (13) = happyShift action_8
action_11 (14) = happyShift action_9
action_11 (15) = happyShift action_10
action_11 (16) = happyShift action_11
action_11 (17) = happyShift action_12
action_11 (18) = happyShift action_13
action_11 (19) = happyShift action_14
action_11 (20) = happyShift action_15
action_11 (22) = happyShift action_16
action_11 (31) = happyShift action_17
action_11 (36) = happyShift action_18
action_11 (4) = happyGoto action_25
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (8) = happyShift action_4
action_12 (9) = happyShift action_5
action_12 (10) = happyShift action_6
action_12 (11) = happyShift action_2
action_12 (12) = happyShift action_7
action_12 (13) = happyShift action_8
action_12 (14) = happyShift action_9
action_12 (15) = happyShift action_10
action_12 (16) = happyShift action_11
action_12 (17) = happyShift action_12
action_12 (18) = happyShift action_13
action_12 (19) = happyShift action_14
action_12 (20) = happyShift action_15
action_12 (22) = happyShift action_16
action_12 (31) = happyShift action_17
action_12 (36) = happyShift action_18
action_12 (4) = happyGoto action_24
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (8) = happyShift action_4
action_13 (9) = happyShift action_5
action_13 (10) = happyShift action_6
action_13 (11) = happyShift action_2
action_13 (12) = happyShift action_7
action_13 (13) = happyShift action_8
action_13 (14) = happyShift action_9
action_13 (15) = happyShift action_10
action_13 (16) = happyShift action_11
action_13 (17) = happyShift action_12
action_13 (18) = happyShift action_13
action_13 (19) = happyShift action_14
action_13 (20) = happyShift action_15
action_13 (22) = happyShift action_16
action_13 (31) = happyShift action_17
action_13 (36) = happyShift action_18
action_13 (4) = happyGoto action_23
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (8) = happyShift action_4
action_14 (9) = happyShift action_5
action_14 (10) = happyShift action_6
action_14 (11) = happyShift action_2
action_14 (12) = happyShift action_7
action_14 (13) = happyShift action_8
action_14 (14) = happyShift action_9
action_14 (15) = happyShift action_10
action_14 (16) = happyShift action_11
action_14 (17) = happyShift action_12
action_14 (18) = happyShift action_13
action_14 (19) = happyShift action_14
action_14 (20) = happyShift action_15
action_14 (22) = happyShift action_16
action_14 (31) = happyShift action_17
action_14 (36) = happyShift action_18
action_14 (4) = happyGoto action_22
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (8) = happyShift action_4
action_15 (9) = happyShift action_5
action_15 (10) = happyShift action_6
action_15 (11) = happyShift action_2
action_15 (12) = happyShift action_7
action_15 (13) = happyShift action_8
action_15 (14) = happyShift action_9
action_15 (15) = happyShift action_10
action_15 (16) = happyShift action_11
action_15 (17) = happyShift action_12
action_15 (18) = happyShift action_13
action_15 (19) = happyShift action_14
action_15 (20) = happyShift action_15
action_15 (22) = happyShift action_16
action_15 (31) = happyShift action_17
action_15 (36) = happyShift action_18
action_15 (4) = happyGoto action_21
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (31) = happyShift action_20
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (8) = happyShift action_4
action_17 (9) = happyShift action_5
action_17 (10) = happyShift action_6
action_17 (11) = happyShift action_2
action_17 (12) = happyShift action_7
action_17 (13) = happyShift action_8
action_17 (14) = happyShift action_9
action_17 (15) = happyShift action_10
action_17 (16) = happyShift action_11
action_17 (17) = happyShift action_12
action_17 (18) = happyShift action_13
action_17 (19) = happyShift action_14
action_17 (20) = happyShift action_15
action_17 (22) = happyShift action_16
action_17 (31) = happyShift action_17
action_17 (36) = happyShift action_18
action_17 (4) = happyGoto action_19
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_4

action_19 (32) = happyShift action_31
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (36) = happyShift action_30
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_9

action_22 _ = happyReduce_14

action_23 _ = happyReduce_13

action_24 _ = happyReduce_12

action_25 _ = happyReduce_11

action_26 _ = happyReduce_10

action_27 _ = happyReduce_8

action_28 (12) = happyShift action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_1

action_30 (30) = happyShift action_32
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_16

action_32 (6) = happyShift action_34
action_32 (7) = happyShift action_35
action_32 (36) = happyShift action_36
action_32 (5) = happyGoto action_33
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (32) = happyShift action_37
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_17

action_35 _ = happyReduce_18

action_36 _ = happyReduce_19

action_37 (29) = happyShift action_38
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (8) = happyShift action_4
action_38 (9) = happyShift action_5
action_38 (10) = happyShift action_6
action_38 (11) = happyShift action_2
action_38 (12) = happyShift action_7
action_38 (13) = happyShift action_8
action_38 (14) = happyShift action_9
action_38 (15) = happyShift action_10
action_38 (16) = happyShift action_11
action_38 (17) = happyShift action_12
action_38 (18) = happyShift action_13
action_38 (19) = happyShift action_14
action_38 (20) = happyShift action_15
action_38 (22) = happyShift action_16
action_38 (31) = happyShift action_17
action_38 (36) = happyShift action_18
action_38 (4) = happyGoto action_39
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_7

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmBody happy_var_2
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (TmStream
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmInt happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmVar happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 _
	 =  HappyAbsSyn4
		 (TmTrue
	)

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 _
	 =  HappyAbsSyn4
		 (TmFalse
	)

happyReduce_7 = happyReduce 8 4 happyReduction_7
happyReduction_7 ((HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmLet happy_var_3 happy_var_5 happy_var_8
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_2  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmReadL happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmPrint happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmPrefix happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmStrmArith happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmCopy happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmAccum happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmFib happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  4 happyReduction_15
happyReduction_15 _
	 =  HappyAbsSyn4
		 (TmEnd
	)

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  5 happyReduction_17
happyReduction_17 _
	 =  HappyAbsSyn5
		 (TyBool
	)

happyReduce_18 = happySpecReduce_1  5 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn5
		 (TyInt
	)

happyReduce_19 = happySpecReduce_1  5 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn5
		 (TyVar
	)

happyNewToken action sts stk [] =
	action 38 38 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTypeBool _ -> cont 6;
	TokenTypeInt _ -> cont 7;
	TokenInt _ happy_dollar_dollar -> cont 8;
	TokenTrue _ -> cont 9;
	TokenFalse _ -> cont 10;
	TokenBegin _ -> cont 11;
	TokenEnd _ -> cont 12;
	TokenStream _ -> cont 13;
	TokenReadLine _ -> cont 14;
	TokenPrefix _ -> cont 15;
	TokenStrmArith _ -> cont 16;
	TokenCopy _ -> cont 17;
	TokenAccum _ -> cont 18;
	TokenFIB _ -> cont 19;
	TokenPrint _ -> cont 20;
	TokenEOL _ -> cont 21;
	TokenLet _ -> cont 22;
	TokenIn _ -> cont 23;
	TokenLT _ -> cont 24;
	TokenGT _ -> cont 25;
	TokenIf _ -> cont 26;
	TokenThen _ -> cont 27;
	TokenElse _ -> cont 28;
	TokenEq _ -> cont 29;
	TokenCol _ -> cont 30;
	TokenLParen _ -> cont 31;
	TokenRParen _ -> cont 32;
	TokenLBrckt _ -> cont 33;
	TokenRBrckt _ -> cont 34;
	TokenComma _ -> cont 35;
	TokenVar _ happy_dollar_dollar -> cont 36;
	TokenSemiCol _ -> cont 37;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 38 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(LexerToken)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [LexerToken] -> a
parseError [] = error "Unknown Parse Error"
parse (t:ts) = error ("Parse error at line:column" ++ (tokenPosn t))


data DataType = TyInt | TyBool | TyVar
              deriving(Show, Eq)

data Line = TmLines | TmLine

type Environment = [ (String, Expr) ]

data Expr = TmBody Expr | TmStream | TmInt Int |  TmTrue | TmFalse | TmComma | TmLet String DataType Expr
            | TmPrint Expr | TmEnd | TmVar String
            | TmReadL Expr | TmPrefix Expr | TmStrmArith Expr
            | TmCopy Expr | TmAccum Expr | TmFib Expr
            | Cl Expr Environment

            deriving (Show, Eq)
{-# LINE 1 "templates/GenericTemplate.hs" #-}





































































































































































































-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 











data Happy_IntList = HappyCons Int Happy_IntList




















infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action




indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

