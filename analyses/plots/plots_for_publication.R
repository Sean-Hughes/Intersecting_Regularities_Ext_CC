# dependencies
library(tidyverse)
library(metafor)

# wd
setwd("~/git/intersecting_regularities_counter_conditioning/analyses")

# get data
fit_basic_effect_ir <- read_rds("models/fit_basic_effect_ir.rds")
fit_moderation_by_extinction_ir <- read_rds("models/fit_moderation_by_extinction_ir.rds")
fit_moderation_by_counterconditioning_ir <- read_rds("models/fit_moderation_by_counterconditioning_ir.rds")

# multivariate metas
## basic
pdf(NULL)
dev.control(displaylist = "enable")

forest(fit_basic_effect_ir, 
       xlab = substitute(paste("Cohen's ", italic('d'))),
       addcred = TRUE,
       refline = 0,
       xlim = c(-2.5, 6),
       at = c(-1, 0, 1, 2, 3, 4))
text(-2.5, 23, "Basic IR effect", pos = 4)
text(6, 23, substitute(paste(italic('d'), " [95% CI]")), pos = 2)

p1 <- recordPlot()
invisible(dev.off())
pdf("plots/forest_plots_basic_effect_ir.pdf",
    width = 8, 
    height = 7.5)
p1
dev.off()

# mod by extinction
pdf(NULL)
dev.control(displaylist = "enable")

forest(fit_moderation_by_extinction_ir, 
       xlab = substitute(paste("Cohen's ", italic('d'))),
       addcred = TRUE,
       refline = 0,
       xlim = c(-1.75, 2),
       at = c(-1, -0.5, 0, 0.5, 1))
text(-1.75, 17, "Moderation of IR effect by extinction", pos = 4)
text(2, 17, substitute(paste(italic('d'), " [95% CI]")), pos = 2)

p1 <- recordPlot()
invisible(dev.off())
pdf("plots/forest_plots_moderation_by_extinction_ir.pdf",
    width = 8, 
    height = 6.1)
p1
dev.off()

## mod by counterconditioning
pdf(NULL)
dev.control(displaylist = "enable")

forest(fit_moderation_by_counterconditioning_ir, 
       xlab = substitute(paste("Cohen's ", italic('d'))),
       addcred = TRUE,
       refline = 0,
       xlim = c(-2.25, 2),
       at = c(-1.5, -1, -0.5, 0, 0.5, 1))
text(-2.25, 11, "Moderation of IR effect by counterconditioning", pos = 4)
text(2, 11, substitute(paste(italic('d'), " [95% CI]")), pos = 2)

p1 <- recordPlot()
invisible(dev.off())
pdf("plots/forest_plots_moderation_by_counterconditioning_ir.pdf",
    width = 8, 
    height = 4.75)
p1
dev.off()


# layout(matrix(c(1, 2, 3), 3, 1, byrow = TRUE),
#        widths = c(1), 
#        heights = c(1.3, 1.2, 1)) 
# 
# size <- 1


