
set.seed(1)
n <- 200
x <- seq(0, 1, length.out = n)
y <- sin(2*pi*x) + rnorm(n, sd = 0.15)
df <- data.frame(x, y)
write.csv(df, "data/data1.csv", row.names = FALSE)
library(ggplot2)
p <- ggplot(df, aes(x=x, y=y)) +
  geom_point(color="steelblue", alpha=0.6) +
  geom_smooth(method="loess", se=FALSE, color="red") +
  labs(title="Scatterplot with LOESS Fit", x="x", y="y")
ggsave("plots/problem1_plot.png", p, width=6, height=4)

