# dependencies
library(tidyverse)
library(metafor)

# wd
setwd("~/git/intersecting_regularities_counter_conditioning/analyses")

# get data
fit_basic_effect_iat                             <- read_rds("models/fit_basic_effect_iat.rds")
fit_basic_effect_intentions_ir                   <- read_rds("models/fit_basic_effect_intentions_ir.rds")
fit_basic_effect_ir                              <- read_rds("models/fit_basic_effect_ir.rds")
fit_basic_effect_oec                             <- read_rds("models/fit_basic_effect_oec.rds")

fit_moderation_extinction_iat                    <- read_rds("models/fit_moderation_extinction_iat.rds")
fit_moderation_extinction_intentions_ir          <- read_rds("models/fit_moderation_extinction_intentions_ir.rds")
fit_moderation_extinction_ir                     <- read_rds("models/fit_moderation_extinction_ir.rds")
fit_moderation_extinction_oec                    <- read_rds("models/fit_moderation_extinction_oec.rds")

fit_moderation_counterconditioning_iat           <- read_rds("models/fit_moderation_counterconditioning_iat.rds")
fit_moderation_counterconditioning_intentions_ir <- read_rds("models/fit_moderation_counterconditioning_intentions_ir.rds")
fit_moderation_counterconditioning_ir            <- read_rds("models/fit_moderation_counterconditioning_ir.rds")
fit_moderation_counterconditioning_oec           <- read_rds("models/fit_moderation_counterconditioning_oec.rds")

# basic effect
pdf(NULL)
dev.control(displaylist = "enable")

par(mfrow = c(2, 2))

size <- 0.5

# IAT
metafor::forest(fit_basic_effect_iat,
                xlab = substitute(paste("Cohen's ", italic('d'))),
                addcred = TRUE,
                refline = 0,
                xlim = c(-1.5, 4),
                at = c(-0.5, 0, 0.5, 1.0, 1.5, 2.0, 2.5))
text(-1.5, 9, "IR effect: IAT", pos = 4)
text(4, 9, substitute(paste(italic('d'), " [95% CI]")), pos = 2)

# intentions
metafor::forest(fit_basic_effect_intentions_ir,
                addcred = TRUE,
                refline = 0,
                xlim = c(-6, 14),
                at = c(-2, 0, 2, 4, 6, 8))
text(-6, 9, "IR effect: behavioral intentions", pos = 4)
text(14, 9, "Log-odds [95% CI]", pos = 2)

# IR
metafor::forest(fit_basic_effect_ir,
                xlab = substitute(paste("Cohen's ", italic('d'))),
                addcred = TRUE,
                refline = 0,
                xlim = c(-1.5, 4),
                at = c(-0.5, 0, 0.5, 1.0, 1.5, 2.0, 2.5))
text(-1.5, 9, "IR effect: self-reported evaluations", pos = 4)
text(4, 9, substitute(paste(italic('d'), " [95% CI]")), pos = 2)

# OEC
metafor::forest(fit_basic_effect_oec,
                xlab = substitute(paste("Cohen's ", italic('d'))),
                addcred = TRUE,
                refline = 0,
                xlim = c(-1.5, 4),
                at = c(-0.5, 0, 0.5, 1.0, 1.5, 2.0, 2.5))
text(-1.5, 9, "OEC effect: self-reported evaluations", pos = 4)
text(4, 9, substitute(paste(italic('d'), " [95% CI]")), pos = 2)

p1 <- recordPlot()
invisible(dev.off())
pdf("plots/forest_plots_basic_effect.pdf",
    width = 8, 
    height = 7)
p1
dev.off()


# moderation by extinction
pdf(NULL)
dev.control(displaylist = "enable")

par(mfrow = c(2, 2))

size <- 0.5

# IAT
metafor::forest(fit_moderation_extinction_iat,
                xlab = substitute(paste("Cohen's ", italic('d'))),
                addcred = TRUE,
                refline = 0,
                xlim = c(-2, 3.25),
                at = c(-1.0, -0.5, 0, 0.5, 1.0, 1.5))
text(-2, 7, "IR effect: IAT", pos = 4)
text(3.25, 7, substitute(paste(italic('d'), " [95% CI]")), pos = 2)

# intentions
metafor::forest(fit_moderation_extinction_ir,
                addcred = TRUE,
                refline = 0,
                xlim = c(-3.5, 4.5),
                at = c(-2, -1, 0, 1, 2))
text(-3.5, 7, "IR effect: behavioral intentions", pos = 4)
text(4.5, 7, "Log-odds [95% CI]", pos = 2)

# IR
metafor::forest(fit_moderation_extinction_ir,
                xlab = substitute(paste("Cohen's ", italic('d'))),
                addcred = TRUE,
                refline = 0,
                xlim = c(-2, 3.25),
                at = c(-1.0, -0.5, 0, 0.5, 1.0, 1.5))
text(-2, 7, "IR effect: self-reported evaluations", pos = 4)
text(3.25, 7, substitute(paste(italic('d'), " [95% CI]")), pos = 2)

# OEC
metafor::forest(fit_moderation_extinction_oec,
                xlab = substitute(paste("Cohen's ", italic('d'))),
                addcred = TRUE,
                refline = 0,
                xlim = c(-2, 3.25),
                at = c(-1.0, -0.5, 0, 0.5, 1.0, 1.5))
text(-2, 7, "OEC effect: self-reported evaluations", pos = 4)
text(3.25, 7, substitute(paste(italic('d'), " [95% CI]")), pos = 2)

p1 <- recordPlot()
invisible(dev.off())
pdf("plots/forest_plots_moderation_by_extinction.pdf",
    width = 8, 
    height = 6.5)
p1
dev.off()


# moderation by counterconditioning
pdf(NULL)
dev.control(displaylist = "enable")

par(mfrow = c(2, 2))

size <- 0.5

# IAT
metafor::forest(fit_moderation_counterconditioning_iat,
                xlab = substitute(paste("Cohen's ", italic('d'))),
                addcred = TRUE,
                refline = 0,
                xlim = c(-3.5, 4.75),
                at = c(-2.0, -1.0, 0, 1.0, 2.0))
text(-3.5, 5, "IR effect: IAT", pos = 4)
text(4.75, 5, substitute(paste(italic('d'), " [95% CI]")), pos = 2)

# intentions
metafor::forest(fit_moderation_counterconditioning_ir,
                addcred = TRUE,
                refline = 0,
                xlim = c(-3.75, 4.75),
                at = c(-2, -1, 0, 1, 2))
text(-3.75, 5, "IR effect: behavioral intentions", pos = 4)
text(4.75, 5, "Log-odds [95% CI]", pos = 2)

# IR
metafor::forest(fit_moderation_counterconditioning_ir,
                xlab = substitute(paste("Cohen's ", italic('d'))),
                addcred = TRUE,
                refline = 0,
                xlim = c(-3.5, 4.75),
                at = c(-2.0, -1.0, 0, 1.0, 2.0))
text(-3.5, 5, "IR effect: self-reported evaluations", pos = 4)
text(4.75, 5, substitute(paste(italic('d'), " [95% CI]")), pos = 2)

# OEC
metafor::forest(fit_moderation_counterconditioning_oec,
                xlab = substitute(paste("Cohen's ", italic('d'))),
                addcred = TRUE,
                refline = 0,
                xlim = c(-3.5, 4.75),
                at = c(-2.0, -1.0, 0, 1.0, 2.0))
text(-3.5, 5, "OEC effect: self-reported evaluations", pos = 4)
text(4.75, 5, substitute(paste(italic('d'), " [95% CI]")), pos = 2)

p1 <- recordPlot()
invisible(dev.off())
pdf("plots/forest_plots_moderation_by_counterconditioning.pdf",
    width = 8, 
    height = 6)
p1
dev.off()



