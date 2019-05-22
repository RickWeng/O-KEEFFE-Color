# OKeeffeColor
OKeeffeColor is a color package developed for R. Color palettes in the package were extracted by Georgie St Clair from Georgia O'Keeffe's paintings. The package is still in development. More color palettes will be added to the package. 

## Installation
```
install.packages("devtools")
library("devtools")
devtools::install_github("RickWeng/OKeeffeColor")
```
## Usage
```
library("OkeeffeColor")
```
```
# check information of available color palettes
okeeffe.col.info
                  name year max_num_colors
1        Black_Iris_II 1926              5
2 Blue_and_Green_Music 1921              4
3      Two_Pink_Shells 1937              3
```
```
# show all selected palettes
okeeffe.all.show(name = NULL, n = NULL)
```
```
# show a specific color palette
okeeffe.col.show(name, n = NULL)
```
```
# get color hex code of a specific plaette
okeeffe.col(name, n = NULL)
```

## Palettes and Color Hex Codes
```
okeeffe.all.show()
```
![](https://github.com/RickWeng/OKeeffeColor/blob/master/figures/All_Show.png)
```
okeeffe.col.show("Black_Iris_II")
```
![](https://github.com/RickWeng/OKeeffeColor/blob/master/figures/Black_Iris_II.png)
```
okeeffe.col("Black_Iris_II")
[1] "#EEDDD6" "#D5B3BA" "#968787" "#E5EDDA" "#0B0A08"
```

```
okeeffe.col.show("Blue_and_Green_Music")
```
![](https://github.com/RickWeng/OKeeffeColor/blob/master/figures/Blue_and_Green_Music.png)
```
okeeffe.col("Blue_and_Green_Music")
[1] "#E3EED1" "#C0D7C7" "#3D4D39" "#282E42"
```

```
okeeffe.col.show("Two_Pink_Shells")
```
![](https://github.com/RickWeng/OKeeffeColor/blob/master/figures/Two_Pink_Shells.png)
```
okeeffe.col("Two_Pink_Shells")
[1] "#E7D2C0" "#BE8271" "#979087"
```
## Examples Using OKeeffeColor
![](https://github.com/RickWeng/OKeeffeColor/blob/master/example%20figures/Blue_and_Green_Music_Example.png)
![](https://github.com/RickWeng/OKeeffeColor/blob/master/example%20figures/Blue_and_Green_Music_Example2.png)

## Paintings
Below are Georgia O'Keeffe's paintings modified by Georgie St Clair.      
Georgie St Clair is an amazing designer. More works are available on her [Instagram](https://www.instagram.com/georgiestclair/) and [website](https://georgiestclair.com/).     
![blackiris](https://github.com/RickWeng/OKeeffeColor/blob/master/Black-Iris.jpg)
![blueandgreenmusic](https://github.com/RickWeng/OKeeffeColor/blob/master/Blue%20and%20Green%20Music.jpg)
![twoshells](https://github.com/RickWeng/OKeeffeColor/blob/master/Two-Shells.jpg)

## Acknowledgement
There are many R color palettes availablel, which makes life much easier. This package was inspired by [RColorBrewer](https://github.com/cran/RColorBrewer) and [wesanderson](https://github.com/karthik/wesanderson). Example figures were modified from [from Data to Viz](https://www.data-to-viz.com).
