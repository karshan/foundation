module Main where

import Test.DocTest

main :: IO ()
main = doctest (extensions ++ flags ++ files)

extensions :: [String]
extensions =
  [ "-XBangPatterns"
  , "-XDeriveDataTypeable"
  , "-XNoImplicitPrelude"
  , "-XOverloadedStrings"
  , "-XTypeFamilies"
  ]

flags :: [String]
flags = ["-fobject-code"]

-- Would be nice to just use "src" here, but both Foundation.String.UTF8 and
-- Foundation.String.UTF8LL share the same module name, and doctest breaks.
files :: [String]
files =
  [ "Foundation/Collection/Buildable.hs"
  , "Foundation/VFS/FilePath.hs"
  , "Foundation/VFS/Path.hs"
  ]
