test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("Translator works", {
  expect_equal(nchar(translator(c("UUU", "UCU", "UAU"))), 3)
})
