module Main where

import Test.Tasty(defaultMain)
import Test.Tasty.ExpectedFailure(expectFail)
import Test.Tasty.Golden(goldenVsString)

main :: IO ()
main = defaultMain (expectFail (goldenVsString "" "" (error "hello")))

