
f :: Int -> [Int] -> [Int]

f n arr = arr >>= replicate n

 
main :: IO()
main = getContents >>= 
    mapM_ print. (\(n:arr) -> f n arr) . map read. words


{- In GHCi, load the file, then type
f 2 [1,2,3]

[1,2,3] is your test input list but you can chose another
-}