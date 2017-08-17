import Control.Monad
-- Must meet test input conditions for 0<= N <= 50
hello_worlds 1 = putStrLn "Hello World"
hello_worlds n = do
        putStrLn "Hello World" 
        hello_worlds (n - 1)

main = do
   n <- readLn :: IO Int
   hello_worlds n

{- How we'd write code if we knew we wanted to print something
	50 times in the real world (we'd use monads like civilised
	people).

module HelloWorld where



main2 :: IO()
main2 = do
    replicateM_ 50 $ putStrLn ("Hello, world!")

-}
