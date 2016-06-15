MendelFirstLaw <- function(k = 2, m = 2, n = 2) {
  probability <- ((k * k - k) + 2 * (k * m) + 2 * (k * n) +
                 ((3/4) * (m * m - m)) + 2 * ((1/2) * m * n)) / ((k + m + n) * (k + m + n - 1))

  if (probability > 1) {
    print(paste("Wrong probability calculated", probability))
  } else {
    print(paste("Probability:", probability))
  }
  return(probability)
}
