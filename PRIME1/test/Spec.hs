import Test.Hspec
import Lib

main :: IO ()
main = hspec $ do
  describe "getRange" $ do
    it "parses a string into an array on integers" $ do
      getRange "1 2" `shouldBe` (1, 2)

  describe "isPrime" $ do
    it "check 1" $ do
      isPrime 1 `shouldBe` False
    it "check 2" $ do
      isPrime 2 `shouldBe` True
    it "check 3" $ do
      isPrime 3 `shouldBe` True
    it "check 4" $ do
      isPrime 4 `shouldBe` False
    it "check 1001" $ do
      isPrime 1001 `shouldBe` False
    it "check 10001" $ do
      isPrime 10001 `shouldBe` False
    it "check 100001" $ do
      isPrime 100001 `shouldBe` False
    it "check 100003" $ do
      isPrime 100003 `shouldBe` True
    it "check 1000003" $ do
      isPrime 1000003 `shouldBe` True
    it "check 1000000003" $ do
      isPrime 1000000003 `shouldBe` False
    it "check 1000000007" $ do
      isPrime 1000000007 `shouldBe` True
