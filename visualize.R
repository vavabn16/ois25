# visualize.R

# Charger la librairie ggplot2
library(ggplot2)

# Générer des données simples mais colorées
set.seed(42)
data <- data.frame(
  x = 1:100,
  y = cumsum(rnorm(100)),  # série cumulative
  group = rep(c("A", "B"), each = 50)
)

# Graphique avec ggplot2
ggplot(data, aes(x = x, y = y, color = group)) +
  geom_line(size = 1.2) +
  geom_point(size = 2, alpha = 0.6) +
  labs(
    title = "Évolution d'une variable simulée",
    x = "Index",
    y = "Valeur cumulée",
    color = "Groupe"
  ) +
  theme_minimal()

