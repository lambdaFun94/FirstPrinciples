data Fiction = Fiction deriving Show
data Nonfiction = Nonfiction deriving Show

data BookType = FictionBook Fiction
              | NonfictionBook Nonfiction 
              deriving Show 
              
type AuthorName = String

data Author = Author (AuthorName, BookType)

-- Authorname is distributed over book typek
{- data Author = 
    Fiction AuthorName
  | Nonfiction AuthorName 
  deriving (Eq, Show) 
-}
