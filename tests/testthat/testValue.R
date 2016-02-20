library(simplemathr)
context("Numbers OK")

test_that("answers are correct",{
  expect_equal(sq(10), 10^2)
  expect_equal(sq(20), 20^2)
  expect_equal(RP(3, 3), 3^3)
  expect_equal(RP(2, 4), 2^4)
  expect_equal(RP(NA, 10), NA_integer_)
  expect_less_than(roll(1:20), 2*20 + 1)
  expect_more_than(roll(), 1)
})
