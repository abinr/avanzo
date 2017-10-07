module Avanzo where

import Data.Decimal
import Data.Time
import Prelude hiding (head)
import Data.List.NonEmpty

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
    if t0 <= (date cf) then
      Right (roundTo 2 pv)
    else
      Left ("Time0 must be < the Cash Flow date")

annualize :: NominalDiffTime -> Years
annualize n =
  realToFrac n / (365 * 24 * 60 * 60)

npv :: DiscountRate -> NonEmpty CashFlow -> Either String Decimal
npv rate flows =
      let
        sortedFlows = sortBy orderCashFlowsByDate flows
        t0 = date $ head sortedFlows
        ps = traverse (presentValue t0 rate) sortedFlows
      in
        case ps of
          Right ps' ->
           Right $ sum ps'
          Left t ->
            Left t

orderCashFlowsByDate :: CashFlow -> CashFlow -> Ordering
orderCashFlowsByDate a b =
  compare (date a) (date b)


testData =
  [ CashFlow (UTCTime (fromGregorian 2017 06 17) 45000) (Decimal 2 $ -200000)
  , CashFlow (UTCTime (fromGregorian 2018 06 17) 45000) (Decimal 2 10000)
  , CashFlow (UTCTime (fromGregorian 2019 06 17) 45000) (Decimal 2 10000)
  , CashFlow (UTCTime (fromGregorian 2020 06 17) 45000) (Decimal 2 10000)
  , CashFlow (UTCTime (fromGregorian 2020 06 17) 45000) (Decimal 2 250000)
  ]

