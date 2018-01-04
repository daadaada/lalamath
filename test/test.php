<!DOCTYPE html>
<html>
<head>
<title>Intelligent Teaching System</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/x-mathjax-config">
  MathJax.Hub.Config({
    tex2jax: {inlineMath: [["$","$"],["\\(","\\)"]]}
  });
</script>
<script type="text/javascript" src="/MathJax/MathJax.js?config=TeX-AMS_HTML-full"></script>

</head>
<body>
<H1>Intelligent Teaching System</H1>
<form method=post action=submit.php>
Question 1
<p>
When $a \ne 0$, there are two solutions to \(ax^2 + bx + c = 0\) and they are
<br><br>
a <input type=radio name=q1 value=a>
$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$
b <input type=radio name=q1 value=b>
$$x = {-a \pm \sqrt{b^2-4ac} \over 2b}$$
</p>
Question 2
<p>
What is the volume of a sphere with radius \(r\) and height \(h\)?
<br><br>
a <input type=radio name=q2 value=a>
$$V = \frac{{\pi r^2 h}}{3}$$
b <input type=radio name=q2 value=b>
$$V = \frac{{4\pi r^3 }}{3}$$
</p>
<input type=submit value=Submit>
</form>
</body>
</html>
