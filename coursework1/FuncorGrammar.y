{
module FuncorGrammar where
import FuncorTokens
}

%name parseCalc
%tokentype {LexerToken}
%error {parseError}
%token
    Bool          {TokenTypeBool _}
    Int           {TokenTypeInt _}
    Ints          {TokenTypeInts _}
    Line          {TokenTypeLine _}
    Lam           {TokenTypeLam _} 
    int           {TokenInt _ $$}
    true          {TokenTrue _}
    false         {TokenFalse _}
    begin         {TokenBegin _}
    end           {TokenEnd _}
    getSequence   {TokenGetSequence _}
    getDfSequence {TokenGetDfSequence _}
    print         {TokenPrint _}
    '\n'          {TokenEOL _}
    let           {TokenLet _}
    in            {TokenIn _}
    '<'           {TokenLT _}
    '>'           {TokenGT _}
    '='           {TokenEq _}
    ':'           {TokenCol _}
    '('           {TokenLParen _}
    ')'           {TokenRParen _}
    '{'           {TokenLBrckt _}
    '}'           {TokenRBrckt _}
    ','           {TokenComma _}
    var           {TokenVar _ $$}
    ';'           {TokenSemiCol _}
    if            {TokenIf _}
    else          {TokenElse _}
    then          {TokenThen _}
    fi            {TokenFi _}
    reverse       {TokenReverse _}
    '+'           {TokenAdd _}
    '*'           {TokenMult _}
    '-'           {TokenSub _}
    '/'           {TokenDiv _}
    length        {TokenLength _}
    lam           {TokenLambda _}
    arr           {TokenArr _}
    push          {TokenPush _}
    '++'          {TokenMerge _}
    splitAt       {TokenSplitAt _}
    duplicate     {TokenDuplicate _}
    head          {TokenHead _}
    last          {TokenLast _}
    take          {TokenTake _}
    sum           {TokenSum _}
    map           {TokenMap _}
    takeRepeat    {TokenTakeRepeat _}
    listsArith    {TokenListsArith _}
    sumLists      {TokenSumLists _}
    fibSequence   {TokenFibSequence _}
    Sequence      {TokenSequence _}
    zipLines      {TokenZipLines _}
    reverseLists  {TokenReverseLists _}
    while         {TokenWhile _}


%right begin
%right end
%left getSequence
%right print
%right zipLines
%right listsArith
%left map
%left head
%right last
%left sum
%left sumLists
%left take
%left takeRepeat
%left fibSequence
%left reverseLists
%left NEG 
%left splitAt
%right length
%left while
%right duplicate
%left reverse
%right let
%left push
%left arr
%nonassoc if
%nonassoc then
%nonassoc else
%nonassoc '(' ')' '{' '}' int true false var
%left '++'
%left '+' '-'
%left '/' '*'
%left '<' '>'
%right ';'
%right ','
%left APP






%%

Exp :: {Expr}
Exp     : begin Exp end                               {TmBody $2}
        | map Exp Exp                                 {TmMap $2 $3}
        | if Exp then Exp else Exp fi                 {TmIf $2 $4 $6}    
        | while Exp Exp                               {TmWhile $2 $3}   
        | let '(' var ':' DataType ')' '=' Exp in Exp {TmLet $3 $5 $8 $10}
        | zipLines Exp Exp                            {TmZipLines $2 $3}
        | listsArith Exp Exp                          {TmListsArith $2 $3}
        | length Exp                                  {TmLength $2}
        | Exp ';' Exp                                 {TmLine $1 $3}
        | '-' Exp %prec NEG                           { Negate $2 } 
        | print Exp                                   {TmPrint $2}
        | Exp Exp %prec APP                           {TmApp $1 $2}
        | lam '(' var ':' DataType ')' Exp            {TmLambda $3 $5 $7}
        | reverse Exp                                 {TmReverse $2}
        | reverseLists Exp                            {TmReverseLists $2}
        | push int int Exp                            {TmPush $2 $3 $4}
        | head Exp                                    {TmHead $2}
        | last Exp                                    {TmLast $2}
        | take Exp Exp                                {TmTake $2 $3}
        | sumLists Exp                                {TmSumLists $2}
        | takeRepeat Exp Exp                          {TmTakeRepeat $2 $3}
        | fibSequence Exp                             {TmFibSequence $2}
        | Sequence Exp                                {TmSequence $2}
        | getDfSequence Exp                           {TmGetDfSequence $2}
        | splitAt Exp Exp                             {TmSplitAt $2 $3}
        | getSequence int                             {TmGetSequence $2}
        | duplicate Exp                               {TmDuplicate $2}
        | sum Exp                                     {TmSum $2}
        | Exp '++' Exp                                {TmMerge $1 $3}
        | Exp '+' Exp                                 {TmAdd $1 $3}
        | Exp '-' Exp                                 {TmSub $1 $3}
        | Exp '*' Exp                                 {TmMult $1 $3}
        | Exp '/' Exp                                 {TmDiv $1 $3}
        | Exp '<' Exp                                 {TmLt $1 $3}
        | Exp '>' Exp                                 {TmGt $1 $3}
        | int ',' Exp                                 {TmInts $1 $3}
        | int                                         {TmInt $1}
        | var                                         {TmVar $1}
        | true                                        {TmTrue}
        | false                                       {TmFalse}
        | '(' Exp ')'                                 { $2 }


-- Text : 
DataType :: {DataType}
DataType : Bool                     { TyBool }
         | Int                      { TyInt }
         | DataType arr DataType    {TyFun $1 $3 }
         | Ints                     {TyInts}
         | Line                     {TyLine}
         | Lam                      {TyLam}




{
parseError :: [LexerToken] -> a
parseError [] = error "Unknown Parse Error"
parse (t:ts) = error ("Parse error at line:column" ++ (tokenPosn t))

type TyEnvironment = [ (String, Expr) ]
type Environment = [ (String, Expr) ]


data DataType =TyBool | TyInt | TyFun DataType DataType | TyInts | TyLine | TyLam
              deriving(Show, Eq)


data Expr =  TmInts Int Expr | TmGt Expr Expr | TmLt Expr Expr | TmAdd Expr Expr | TmSub Expr Expr | TmMult Expr Expr | TmDiv Expr Expr              
            | TmGetSequence Int | TmReverse Expr | TmLength Expr | TmInt Int | TmTrue | TmFalse | TmPush Int Int Expr | TmHead Expr | TmLast Expr 
            | TmSum Expr | TmTake Expr Expr| TmPrint Expr | TmEnd | TmVar String | TmMerge Expr Expr | TmSplitAt Expr Expr | TmDuplicate Expr 
            | TmTakeRepeat Expr Expr | TmSumLists Expr | TmFibSequence Expr |TmGetDfSequence Expr| TmSequence Expr |TmLine Expr Expr | TmLambda String DataType Expr |  TmApp Expr Expr 
            | Cl String DataType Expr Environment | TmBody Expr  | TmIf Expr Expr Expr | TmWhile Expr Expr | TmLet String DataType Expr Expr | TmZipLines Expr Expr 
            | TmMap Expr Expr | TmListsArith Expr Expr | TmReverseLists Expr | Negate Expr  
            deriving (Show, Eq)






}
