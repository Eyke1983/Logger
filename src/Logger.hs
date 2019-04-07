module Logger (printDebug, printWarning, printError, Level (..)) where

data Level = Error
               | Warning
               | Debug
               deriving
               (Eq, Ord, Show)
    
createLog:: Level -> Level -> String ->String
createLog lvlLogger lvlMsg msgText 
            | lvlLogger >= lvlMsg  = show lvlMsg ++" " ++ msgText ++ " \n"
            | otherwise            = ""
    
    
printDebug   = createLog Debug
printWarning = createLog Warning
printError   = createLog Error