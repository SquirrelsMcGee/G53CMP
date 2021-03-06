{-
******************************************************************************
*                                  H M T C                                   *
*                                                                            *
*       Module:         Token                                                *
*       Purpose:        Representation of tokens (lexical symbols)           *
*       Authors:        Henrik Nilsson                                       *
*                                                                            *
*                 Copyright (c) Henrik Nilsson, 2006 - 2012                  *
*                                                                            *
******************************************************************************
-}

-- | Representation of tokens (lexical symbols).

module Token where

-- HMTC module imports
import Name


-- | Token type.

data Token
    -- Graphical tokens
    = LPar      -- ^ \"(\"
    | RPar      -- ^ \")\"
    | Comma     -- ^ \",\"
    | Semicol   -- ^ \";\"
    | Colon     -- ^ \":\"
    | ColEq     -- ^ \":=\"
    | Equals    -- ^ \"=\"
    | Question  -- ^ \"?\"

    -- Keywords
    | Begin     -- ^ \"begin\"
    | Const     -- ^ \"const\"
    | Do        -- ^ \"do\"
    | Else      -- ^ \"else\"
    | End       -- ^ \"end\"
    | If        -- ^ \"if\"
    | In        -- ^ \"in\"
    | Let       -- ^ \"let\"
    | Then      -- ^ \"then\"
    | Var       -- ^ \"var\"
    | While     -- ^ \"while\"
    | Repeat    -- ^ \"repeat\"
    | Until     -- ^ \"until\"
    | Elsif     -- ^ \"elsif\"

    -- Tokens with variable spellings
    | LitInt {liVal :: Integer}         -- ^ Integer literals
    | Id     {idName :: Name}           -- ^ Identifiers
    | Op     {opName :: Name}           -- ^ Operators
    | LitChar{liChar :: Char}           -- ^ Character literals

    -- End Of File marker
    | EOF                               -- ^ End of file (input) marker.
    deriving (Eq, Show)