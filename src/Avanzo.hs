module Avanzo where

import Data.Decimal
import Data.Time

data CashFlow = CashFlow
  { date :: UTCTime
  , amount :: Decimal
  } deriving (Eq, Show)

type DiscountRate = Float
type Time0 = UTCTime
type Years = Float

presentValue :: Time0 -> DiscountRate -> CashFlow -> Either String Decimal
presentValue t0 r cf =
  let
    discount = (1 + r) ** (annualize $ diffUTCTime (date cf) t0)
    pv = (amount cf) / realFracToDecimal 5 discount
  in
    if t0 < (date cf) then
      Right (roundTo 2 pv)
    else
      Left ("Time0 must be < the Cash Flow date")

annualize :: NominalDiffTime -> Years
annualize n =
  realToFrac n / (365 * 24 * 60 * 60)


