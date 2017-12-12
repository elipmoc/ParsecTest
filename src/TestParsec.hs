module TestParsec where

import           Control.Applicative
import           Control.Monad
import           Text.Parsec.Char
import           Text.Parsec.Prim
import           Text.Parsec.String

hello::IO()
hello = print "hello world"

--パーサの簡易実行と出力をする関数
run::Show a => Parser a -> String -> IO ()
run p input =
    case parse p "hoge" input of
        Left err -> putStr "parse error at" >> print err
        Right x  -> print x

--以下簡単なパーサ集

--"()"をパースする
openClose :: Parser String
openClose =do
    a <- char '('
    b <- char ')'
    return [a,b]
