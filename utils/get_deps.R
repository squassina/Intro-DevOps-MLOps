sI <- sessionInfo()
oP <- sI$otherPkgs

deps <- data.frame()

for (i in 1:length(oP)) {
  deps <- rbind(deps, paste0("\"",names(oP[i]), "\",\"", oP[[names(oP[i])]]$Version, "\""))
}

write_lines(deps, "install_deps")
