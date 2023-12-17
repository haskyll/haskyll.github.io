--------------------------------------------------------------------------------
-- MIT License
--
-- Copyright (C) 2023 Duck McSouls <quacksouls [AT] gmail [DOT] com>
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.
--------------------------------------------------------------------------------

import Text.Printf

-- | The dot product of vectors of two elements.
vprod :: (Num a) => (a, a) -> (a, a) -> a
vprod (s, t) (x, y) = (s * x) + (t * y)

main = do
    let a = 2 :: Double
    let b = 3 :: Double
    let x = 4 :: Double
    let y = 5 :: Double
    printf "(%f, %f) dot (%f, %f) -> %f\n" a b x y $ vprod (a, b) (x, y)
    printf "(%f, %f) dot (%f, %f) -> %f\n" (-a) b x y $ vprod (-a, b) (x, y)
    printf "(%f, %f) dot (%f, %f) -> %f\n" a b (-x) (-y) $ vprod (a, b) (-x, -y)
