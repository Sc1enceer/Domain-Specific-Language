module FuncorTypes where
    import FuncorGrammar
    import FuncorEval
    
    -- type TyEnvironment = [ (String, Expr) ]
    -- type Environment = [ (String, Expr) ]
    
    
    -- data DataType =TyBool | TyInt | TyFun DataType DataType
    --               deriving(Show, Eq)
    
    
    -- data Expr =  TmInts Int Expr | TmGt Expr Expr | TmLt Expr Expr | TmAdd Expr Expr | TmSub Expr Expr | TmMult Expr Expr | TmDiv Expr Expr              
    --             | TmGetStream | TmReverse Expr | TmLength Expr | TmInt Int | TmTrue | TmFalse | TmPush Int Int Expr | TmHead Expr | TmLast Expr 
    --             | TmSum Expr | TmTake Expr Expr| TmPrint Expr | TmEnd | TmVar String | TmMerge Expr Expr | TmSplitAt Expr Expr | TmDuplicate Expr 
    --             | TmTakeRepeat Expr Expr | TmSumLists Expr | TmFibSequence Expr |TmLine Expr Expr | TmLambda String DataType Expr |  TmApp Expr Expr 
    --             | Cl String DataType Expr Environment | TmBody Expr  | TmIf Expr Expr Expr | TmWhile Expr Expr | TmLet String Expr | TmZipLines Expr Expr 
    --             | TmMap Expr Expr | TmListsArith Expr Expr | TmReverseLists Expr | Negate Expr 
    --             deriving (Show, Eq)
    type TypeEnvironment = [(String, DataType)]
    getBinding :: String -> TypeEnvironment -> DataType
    getBinding x [] = error "Variable binding not found"
    getBinding x ((y,t):tenv) | x == y = t
                              | otherwise = getBinding x tenv
    
    addBinding :: String -> DataType -> TypeEnvironment -> TypeEnvironment
    addBinding x t tenv = (x,t):tenv
    
    typeOf :: TypeEnvironment -> Expr -> DataType
    typeOf tenv (TmLambda _ _ _) = TyLam
    typeOf tenv (TmInt _) = TyInt
    typeOf tenv (TmTrue) = TyBool
    typeOf tenv (TmFalse) = TyBool
    typeOf tenv (TmInts _ _) = TyInts
    typeOf tenv (TmLine _ _) = TyLine
    
    typeOf tenv (Negate e) = TyInt
    
    
    typeOf tenv (TmAdd e1 e2) = TyInt
        where (TyInt, TyInt) = (typeOf tenv e1, typeOf tenv e2)
    
    
    typeOf tenv (TmSub e1 e2) = TyInt
        where (TyInt, TyInt) = (typeOf tenv e1, typeOf tenv e2)
    
    
    typeOf tenv (TmMult e1 e2) = TyInt
        where (TyInt, TyInt) = (typeOf tenv e1, typeOf tenv e2)
    
    typeOf tenv (TmDiv e1 e2) = TyInt
        where (TyInt, TyInt) = (typeOf tenv e1, typeOf tenv e2)
    
    typeOf tenv (TmLt e1 e2) = TyBool
        where (TyInt,TyInt) = (typeOf tenv e1, typeOf tenv e2)
    
    
    typeOf tenv (TmVar x) = getBinding x tenv
    
    typeOf tenv (TmIf e1 e2 e3) | t2 == t3 = t2
        where (TyBool,t2,t3) = (typeOf tenv e1, typeOf tenv e2, typeOf tenv e3)
    
    typeOf tenv (TmGt e1 e2) = TyBool
        where (TyInt,TyInt) = (typeOf tenv e1, typeOf tenv e2)
    
    -- typeOf tenv (TmLambda x t e) = TyFun t u 
    --     where u = typeOf (addBinding x t tenv) e
      
    typeOf tenv (TmApp e1 e2) | t1 == t3 = t2
        where ((TyFun t1 t2),t3) = (typeOf tenv e1, typeOf tenv e2)
    
    typeOf tenv (TmLet x t e1 e2) | t == t1 = typeOf (addBinding x t tenv) e2
        where t1 = typeOf tenv e1
    
    typeOf tenv (TmPush element index e3) = TyInts
        where (TyInt, TyInt, TyInts) = (typeOf tenv (TmInt element), typeOf tenv (TmInt index), typeOf tenv e3)
    
    typeOf tenv (TmDuplicate e1) 
                            | (typeOf tenv e1) == TyInts    = TyInts     
                            | (typeOf tenv e1) == TyInt     = TyInts
    
    typeOf tenv (TmLength e) 
                            | (typeOf tenv e) == TyInts        = TyInts
                            | (typeOf tenv e) == TyInt         = TyInts
    
    typeOf tenv (TmSplitAt index e) = TyLine
                where (TyInt, TyInts) = (typeOf tenv index, typeOf tenv e)
    
    typeOf tenv (TmHead e) | (typeOf tenv e) == TyInts  = TyInt
    
    typeOf tenv (TmLast e) | (typeOf tenv e) == TyInts = TyInt
    
    typeOf tenv (TmTake index e)
                           | evalLoop index [] == TmInt 1 = TyInt
                           | otherwise = TyInts
                    where (TyInt, TyInts) = (typeOf tenv index, typeOf tenv e)
    
    typeOf tenv (TmTakeRepeat n e) 
                           | evalLoop n [] == TmInt 1 = TyInt
                           | otherwise = TyLine
                    where (TyInt, TyInts) = (typeOf tenv n, typeOf tenv e)
    
    typeOf tenv (TmMap e1 e2) = TyInts
                    where (TyLam, TyInts) = (typeOf tenv e1, typeOf tenv e2)
    
    typeOf tenv (TmReverse e1) = TyInts
                    where (TyInts) = (typeOf tenv e1)
    
    typeOf tenv (TmReverseLists e1) = TyLine
                    where (TyLine) = (typeOf tenv e1)
    
    typeOf tenv (TmListsArith e1 e2) = TyInts
                    where (TyLam, TyLine) = (typeOf tenv e1, typeOf tenv e2)
    
    typeOf tenv (TmSumLists e) = TyInts
                    where (TyLine) = (typeOf tenv e)
    
    typeOf tenv (TmSum e) = TyInt
                    where (TyInt) = (typeOf tenv e)
    
    typeOf tenv (TmFibSequence e) 
                        | evalLoop e [] == TmInt 1     = TyInt
                        | otherwise = TyInts
                        
    typeOf tenv (TmZipLines e1 e2) = TyLine
                    where (TyLam, TyLine) = (typeOf tenv e1, typeOf tenv e2)
    
    typeOf tenv _ = error "Type Error"
    
    -- Function for printing the results of the TypeCheck
    unparseType :: DataType -> String
    unparseType TyBool = "Bool"
    unparseType TyInt = "Int"
    unparseType TyInts = "Ints"
    unparseType TyLine = "Line"
    unparseType TyLam = "Lam"
    unparseType (TyFun t1 t2) = (unparseType t1) ++ " -> " ++ (unparseType t2)