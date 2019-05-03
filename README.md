# OKeeffeColor
OKeeffeColor is a color package developed for R. Color palettes in the package were extracted by Georgie St Clair from Georgia O'Keeffe's paintings. 

## Installation
```
install.packages("devtools")
library("devtools")
devtools::install_github("RickWeng/OKeeffeColor")
```
## Usage
```
library("OKeeffeColor")

# check information of all available color palettes
okeeffe.col.info

                  name year max_num_colors
1        Black_Iris_II 1926              5
2 Blue_and_Green_Music 1921              4
3      Two_Pink_Shells 1937              3
```
OKeeffeColor
## Palettes

![](https://github.com/RickWeng/OKeeffeColor/blob/master/figures/Two-Pink-Shells.png)
## Examples

## Paintings
Below are Georgia O'Keeffe's paintings modified by Georgie St Clair.      
Georgie St Clair is an amazing designer. More works are available on her [Instagram](https://www.instagram.com/georgiestclair/) and [website](https://georgiestclair.com/).     
![twoshells](https://github.com/RickWeng/OKeeffeColor/blob/master/Two-Shells.jpg)

![blackiris](https://github.com/RickWeng/OKeeffeColor/blob/master/Black-Iris.jpg)

![blueandgreenmusic](https://github.com/RickWeng/OKeeffeColor/blob/master/Blue%20and%20Green%20Music.jpg)
## Acknowledgement
There are many R color palettes availablel, which makes life much easier. This package was inspired by [RColorBrewer](https://github.com/cran/RColorBrewer) and [wesanderson](https://github.com/karthik/wesanderson).
