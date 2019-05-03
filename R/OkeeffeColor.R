paintlist <- c("Black_Iris_II", "Blue_and_Green_Music", "Two_Pink_Shells")
maxcolors <- c(5, 4, 3)
years <- c(1926, 1921, 1937)
#' Color plaettes information
#'
#' Use \code{okeeffe.col.info} to check information of available color plaettes.
#'
#' @export
okeeffe.col.info <- data.frame(name = paintlist, year = years, max_num_colors = maxcolors)

#' Color hex of a specific plaette
#'
#' Get color hex of a specific plaette from Georgia O'Keeffe's painting.
#'
#' @param name Name of a specific plaette. Name can be one of the following: \code{Black_Iris_II}, \code{Blue_and_Green_Music}, \code{Two_Pink_Shells}.
#' @param n Color number of a specific plaette. n should be larger than 1 and smaller than the maximum color number of the specific palette. If omitted, the maximum color number of the specific palette will be used.
#' @return A vector of hex color codes.
#' @examples
#' okeeffe.col("Blue_and_Green_Music")
#' okeeffe.col("Black_Iris_II", 3)
#' okeeffe.col("Two_Pink_Shells", 2)
#' @export
okeeffe.col <- function (name, n = NULL) {
  if (!(name %in% paintlist))
    stop(paste0(name,
                " is not a valid name for okeeffe.col, check okeeffe.col.info for all available painting names"))

  max_num <- maxcolors[which(name == paintlist)]

  if (is.null(n))
    return(okeeffe.col(name, max_num))

  if (n < 2) {
    warning(paste("Minimum n value is 2,",
                  "returning the first 2 color codes of",
                  name))
    return(okeeffe.col(name, 2))
  }

  if (n > max_num) {
    warning(paste0("Maximum n value for ",
                   name,
                   " is ",
                   max_num,
                   "",
                   ", returning ",
                   max_num,
                   " color codes"))
    return(okeeffe.col(name, max_num))
  }

  switch(name,
         Black_Iris_II = switch(n - 1,
                                rgb(c(238, 213),
                                    c(221, 179),
                                    c(214, 186), maxColorValue = 255),
                                rgb(c(238, 213, 150),
                                    c(221, 179, 135),
                                    c(214, 186, 135), maxColorValue = 255),
                                rgb(c(238, 213, 150, 229),
                                    c(221, 179, 135, 237),
                                    c(214, 186, 135, 218), maxColorValue = 255),
                                rgb(c(238, 213, 150, 229, 11),
                                    c(221, 179, 135, 237, 10),
                                    c(214, 186, 135, 218, 8), maxColorValue = 255)
         ),
         Blue_and_Green_Music = switch(n - 1,
                                       rgb(c(227, 192),
                                           c(238, 215),
                                           c(209, 199), maxColorValue = 255),
                                       rgb(c(227, 192, 61),
                                           c(238, 215, 77),
                                           c(209, 199, 57), maxColorValue = 255),
                                       rgb(c(227, 192, 61, 40),
                                           c(238, 215, 77, 46),
                                           c(209, 199, 57, 66), maxColorValue = 255)
         ),
         Two_Pink_Shells = switch(n - 1,
                                  rgb(c(231, 190),
                                      c(210, 130),
                                      c(192, 113), maxColorValue = 255),
                                  rgb(c(231, 190, 151),
                                      c(210, 130, 144),
                                      c(192, 113, 135), maxColorValue = 255)
         )
  )
}

#' Show a specific color palette
#'
#' Visually show a specific color palette from Georgia O'Keeffe's painting.
#'
#' @param name Name of a specific plaette. Name can be one of the following: \code{Black_Iris_II}, \code{Blue_and_Green_Music}, \code{Two_Pink_Shells}.
#' @param n Color number of a specific plaette. n should be larger than 1 and smaller than the maximum color number of the specific palette. If omitted, the maximum color number of the specific palette will be used.
#' @return An image showing a specific plaette.
#' @examples
#' okeeffe.col.show("Blue_and_Green_Music")
#' okeeffe.col.show("Black_Iris_II", 3)
#' okeeffe.col.show("Two_Pink_Shells", 2)
#' @export
okeeffe.col.show <- function (name, n = NULL) {
  if (!(name %in% paintlist)) {
    stop(paste0(name,
                " is not a valid name for okeeffe.col.show, check okeeffe.col.info for all available painting names"))
  }

  max_num <- maxcolors[which(name == paintlist)]

  if (is.null(n))
    return(okeeffe.col.show(name, max_num))
  if (n < 2) {
    warning(paste("Minimum n value is 2,",
                  "showing the first 2 color codes of",
                  name))
    return(okeeffe.col.show(name, 2))
  }
  if (n > max_num) {
    warning(paste0("Maximum n value for ",
                   name,
                   " is ",
                   max_num,
                   "",
                   ", showing ",
                   max_num,
                   " colors"))
    return(okeeffe.col.show(name, max_num))
  }
  old <- par(mar = c(1, 1, 1, 1))
  on.exit(par(old))
  image(1:n, 1, as.matrix(1:n), 
        col = okeeffe.col(name, n),
        ylab = "", xaxt = "n", yaxt = "n", 
        bty = "n", oldstyle = TRUE)
  rect(xleft = 0, ybottom = 0.9, xright = n + 1, ytop = 1.1, 
       col = rgb(1, 1, 1, 0.5), border = NA)
  text((n + 1) / 2, 1, 
       labels = paste0(gsub("_", " ", name), 
                       ", ", 
                       okeeffe.col.info[which(okeeffe.col.info$name == name), 2]), 
       cex = 1, font = 2, family = "serif")
}

#' Show all color palettes
#'
#' Visually show all selected palettes from Georgia O'Keeffe's painting.
#'
#' @param name Name of selected plaettes. Name can be a selected palette name or a vector of selected palette names: \code{Black_Iris_II}, \code{Blue_and_Green_Music}, \code{Two_Pink_Shells}. If omitted, all palette names will be used.
#' @param n Color number of selected plaette. n should be larger than 1 and smaller than the maximum color number of the specific palette. If omitted, the maximum color number of the specific palette will be used.
#' @return An image showing a specific plaette.
#' @examples
#' okeeffe.all.show()
#' okeeffe.all.show("Blue_and_Green_Music", 4)
#' okeeffe.all.show(c("Black_Iris_II", "Two_Pink_Shells"), 3)
#' @export
okeeffe.all.show <- function (name = NULL, n = NULL) {
  if (!is.null(name)) {
    paintlist <- paintlist[match(name, paintlist)]
    if(any(is.na(paintlist)))
      stop(paste(name[is.na(paintlist)],
                 "is not a valid name for okeeffe.all.show, check okeeffe.col.info for all available painting names"))
  }

  num <- okeeffe.col.info$max_num_colors[match(paintlist, okeeffe.col.info$name)]

  if (is.null(n)) n <- num

  if (length(n) == 1) n <- rep(n, length(paintlist))

  if (any(n < 2) | any(n > max(num)) | length(n) != length(paintlist)) {
    warning("n is not valid")
    print(paste(n, sep=","))
  }

  n[n < 2] <- 2
  n[n > num] <- num[n > num]

  old <- par(mar = c(1, 1, 0, 1))
  on.exit(par(old))

  num_row <- length(paintlist)
  num_col <- max(n)
  ylim <- c(0, num_row)

  plot(1, 1, xlim = c(0, num_col), ylim = ylim,
       type = "n", axes = FALSE, bty = "n",
       xlab = "", ylab = "")

  for(i in 1:num_row){
    ni <- n[i]
    if (paintlist[i] == "") next
    okcol <- okeeffe.col(paintlist[i], ni)
    rect(xleft = 0:(ni-1), ybottom = num_row - i, xright = 1:ni, ytop = num_row - i + 0.7,
         col = okcol, border = NA)
  }

  text(rep(0, num_row), -(1:num_row) + num_row + 0.8,
       labels = paste(gsub("_", " ", paintlist)),
       xpd = TRUE, adj = 0, cex = 1, font= 2, family = "serif")
}

