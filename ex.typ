#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 2cm),
)

// --- 样式设置 ---
#set text(
  font: ("New Computer Modern", "Source Han Serif SC"), // 衬线字体组合
  size: 10pt,
  lang: "zh",
  region: "cn",
)

// 设置数学公式样式
#show math.equation: set text(weight: 400)
#set math.equation(numbering: none)

// 定义紧凑的题目样式
#let prob(num, body) = {
  grid(
    columns: (2.5em, 1fr),
    gutter: 0.5em,
    [*(#num)*], body
  )
}
 
// 标题设计
#align(center)[
  #text(size: 18pt, weight: "bold")[微积分题集] \
  #v(0.5em)
  #text(size: 10pt, fill: gray)[整理自求真数学分析讲义]
  #line(length: 100%, stroke: 0.5pt + gray)
]

// --- 正文开始：双栏紧凑布局 ---
#show: columns.with(2, gutter: 15pt)

== 不定积分计算
#v(0.5em)
#prob("22")[$ integral 1 / (a cos x + b sin x) dif x $]
#prob("23")[$ integral (sin 2x) / (a^2 cos^2 x + b^2 sin^2 x) dif x $]
#prob("27")[$ integral (sin x+cos x)/(sin x-cos x)^(1/3) dif x $]
#prob("31")[$ integral 1 / (x^2 + a^2)^(3/2) dif x $]
#prob("32")[$ integral 1/(cos^4x)dif x $]
#prob("43")[$ integral (x ln(x + sqrt(1 + x^2))) / sqrt(1 + x^2) dif x $]
#prob("48")[$ integral sqrt(2 + tan^2 x) dif x $]
#prob("51")[$ integral (2x^2 + 1) / ((x + 3)(x - 1)(x - 4)) dif x $]
#prob("52")[$ integral (1 + x^2) / (1 + x^4) dif x $]

#colbreak()

== 定积分计算
#v(0.5em)
#prob("11")[$ integral_0^(pi/2) (cos x sin x) / (a^2 sin^2 x + b^2 cos^2 x) dif x $]
#prob("14")[$ integral_0^(pi/4) log(1 + tan x) dif x $]
#prob("17")[$ integral_0^(pi/4) (sin x) / (sin x + cos x) dif x $]
#prob("18")[$ integral_0^(pi/2) (sin 2019x) / (sin x) dif x $]
#prob("19")[$ integral_2^4 (log sqrt(9 - x)) / (log sqrt(9 - x) + log sqrt(x + 3)) dif x $]
#prob("20")[$ integral_0^1 1 / (sqrt(1 + x^2) + sqrt(1 - x^2)) dif x $]
#prob("21")[$ integral_0^1 sqrt(x + sqrt(1 + x)) dif x $]

== 反常积分数值计算
#v(0.5em)
#prob("3")[$ integral_0^(+oo) 1 / (1 + x^4) dif x $]
#prob("9")[$ integral_(-oo)^(+oo) 1 / (x^2 + x + 1)^2 dif x $]
#prob("12")[$ integral_(-1)^1 1 / ((2 - x)^2 sqrt(1 - x^2)) dif x $]
#prob("13")[$ integral_0^1 (arcsin sqrt(x)) / (x (1 - x)) dif x $]
#prob("18")[$ integral_0^(+oo) (log x) / (x^2 + a^2) dif x $]
#prob("20")[$ integral_(-oo)^(+oo) 1 / (a x^2 + 2 b x + c)^n dif x, quad a c - b^2 > 0 $]
#prob("25")[$ integral_0^(+oo) 1 / ((x + 1) dots.h (x + n)) dif x $]
#prob("26")[$ integral_0^(2 pi) log sin x dif x $]

#v(1em)
#line(length: 100%, stroke: 0.5pt + gray)
== 反常积分收敛性判断
#text(size: 9pt, style: "italic")[（绝对收敛、条件收敛、发散）]
#v(0.5em)

#prob("1")[$ integral_0^(+oo) (log(1 + x)) / x^p dif x $]
#prob("2")[$ integral_1^(+oo) (sin x) / x^p dif x $]
#prob("3")[$ integral_1^(+oo) sin x^2 dif x $]
#prob("4")[$ integral_0^(+oo) (sin^2 x) / x dif x $]
#prob("5")[$ integral_0^(2 pi) 1 / (cos^p x cos^q x) dif x, quad p, q > 0 $]
#prob("6")[$ integral_0^(+oo) x^p sin(x^q) dif x $]
#prob("7")[$ integral_0^(+oo) (x^p sin x) / (1 + x^q) dif x, quad q >= 0 $]
#prob("8")[$ integral_0^(pi/2) (log sin x) / sqrt(x) dif x $]
#prob("9")[$ integral_e^(+oo) (log log x) / (log x) sin x dif x $]