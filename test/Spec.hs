import Test.Hspec
import Avanzo (CashFlow(CashFlow), presentValue)
import Data.Time
import Data.Decimal

main :: IO ()
main = hspec $ do
  describe "present value" $ do
    it "1100 should be 1000 at 10% discount" $ do
      t0 <- getCurrentTime
      let t1 = UTCTime (addDays 365 (utctDay t0)) (utctDayTime t0)
      let cf = CashFlow t1 (Decimal 2 110000)
      presentValue t0 0.10 cf `shouldBe` Right 1000
