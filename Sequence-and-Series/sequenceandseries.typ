#import "@preview/diatypst:0.1.0": *

#show: slides.with(
  title: "Infinite Sequence & Series", // Required
  subtitle: "",
  date: "27.09.2024",
  authors: ("CAT性能优化中心"),

  // Optional Styling
  ratio: 16/9,
  layout: "large",
  title-color: teal,
  footer: true,
  counter: true,
)

#outline()

= Sequences
== Limits of Sequences
A *Sequence* is a function whose domain is a set of form ${n in ZZ:n>=m}; m$ is usually 1 or 0. It is denoted by symbols ${a_n}$ or $(s_n)$;$(s_n)=(s_1,s_2 dots ,s_n)$.

*Example*

*(a)* Consider  a sequence $(s_(n))_(n in NN)$ where $(s_n)=1/n^2$. This is the sequence $(1,1/4,1/9,1/16, dots)$ which is a function with domain $NN$ whose values at each $n$ is $1/n^2$.

*(b)* If  $a_n=(n)^(1/n),n in NN$ then sequence is $(1,(2)^(1/2),(3)^(1/3),dots)$. It turns out $a_100 approx 1.0471 and a_1000 approx 1.0069$.

/ Definition: A Sequence $(s_n)$ of real numbers is said to be $italic(c o n v e r g e)$  to real number $s$ provided that for each $epsilon>0 $ $exists$ a number $N$                                                                $ n>N => |s_n-s|<epsilon $ 
              If $(s_n)$ convergers to $s$ ($lim_(n -> infinity) s_n=s$).The number $s$ is called limit of sequence($s_n$).
A sequence that does not $italic(c o n v e r g e)$ to some real number is said to *diverge*.

== Discussion about Proofs
*Example* Prove $lim (3n+1)/(7n-4)=3/7.$

$D i s c u s s i o n.$ For each $epsilon>0$ $ |(3n+1)/(7n-4)-3/7| < epsilon =>19/(49epsilon) +4/7<n $
Our steps are reversible, so we'll put $N=19/(49epsilon) +4/7$

*Formal Proof* Let  $epsilon>0$ and $N=19/(49epsilon) +4/7$.Then $n>N=>n>19/(49epsilon) +4/7$  $ therefore (19)/(7(7n-4))<epsilon => |(3n+1)/(7n-4)-3/7| < epsilon  $
This proves $lim (3n+1)/(7n-4)=3/7$.
/ Sandwich Theorem: Let ${a_n},{b_n} and {c_n} $ be sequences of real numbers. If $a_n<=b_n<=c_n forall n>N$ if $lim a_n=lim c_n=L$ then $lim b_n=L$.
*Example* $lim_(n->infinity) cos(n)/n $ 

Sol. As $-1<=cos(n)<=1 => -1/n<=cos(n)/n<=1/n$ $and lim_(n->infinity)1/(|n|)=0=L$. Hence limit converges to 0.
== Johann Bernoulli Rule (L'Hôpital's Rule)
It states that functions $f and g $ which are defined on open interval $I$ and differentiable on ${I-c}$ for a (possibly infinite) accumulation point $c$ of $I$,
$ lim_(x-> c) f(x)/g(x)= lim_(x->c) (f'(x))/(g'(x)) $

/ Definition: A sequence ${a_n}$ is *nondecreasing* if $a_n<=a_(n+1) forall n$. The sequence is *nonincreasing* if $a_n>=a_(n+1) forall n.$ The sequence is said to be *monotonic* if it is either nondecreasing or nonincreasing.

/ Monotonic sequence Theorem:  If a sequence ${a_n}$ is  both bounded and monotonic, then sequence $c o n v e r g e s .$

/ Stirling's Approximation: $n!$ $~ sqrt(2 pi n)(n/e)^n$

== An Infinite Series
/ Definition: Given a sequence of numbers ${a_n}$, an expression of form $ a_1+a_2+a_3+dots+a_n+dots $ is an *infinite series*. $a_n$ is *nth term* of series. The sequence ${s_n} $ is defined by $ s_1=a_1 $ $ s_2=a_1+a_2 $ $ . $ $ . $ $ s_n=a_1+a_2+dots+a_n= sum_(k=0)^(n) a_k $ is the sequence of partial sums of series, the number $s_n$ being nth partial sum. If sequence of partial sum converges to limit *L* $ s_n =L $

== Integral Test
/ Definition: Let ${a_n}$ be a sequence of positive terms. Suppose that $a_n=f(n)$, where $f$ is a continuous, positive, decreasing function of $x forall x >=N$.Then the series $sum_(n=N)^(infinity) a_n$ and the integral $integral_(N)^(infinity) f(x)d x$ both diverge or both converge.
*Example* Show that *p-series* $ sum_(n=1)^(infinity) 1/n^p = 1/1^p+1/2^p+dots+1/n^p+ dots, p in RR $ converges if $p>1$ and diverges if $p<=1$.

*Proof* If $p>1$, then $f(x)=1/x^p$ is nonincreasing function $forall x in RR^+$
$ integral_(1)^(infinity) (dif x )/(x^p)= lim_(epsilon-> infinity) [(x^(-p+1))/(p+1)]_1^epsilon=1/(p-1) $
If $0<p<1$ then $1-p>0 and integral_(1)^(infinity) (dif x )/(x^p)=1/(1-p) lim(b^(1-p)-1)=infinity $

Series diverges by integral test.

== Comparison Test 
/ Definition : Let $sum a_n,sum c_n and sum d_n$ be series with non negative terms. Suppose that for some integer $N$ $ d_n<=a_n<=c_n forall n >N $ 1. If $sum c_n$ converges then $sum a_n$ also converges. 
 2. If $sum d_n$ diverges then $sum a_n$ also diverges.

*Limit Comparison Test*
/ Definition: Suppose that $a_n>0 and b_n >0$  $ forall n>=N, N in ZZ$
 1. If $lim_(n -> infinity) a_n/b_n =c>0,$ then $sum a_n and sum b_n$ both converge or diverge.
 2. If $lim_(n -> infinity ) a_n/b_n=0$ and $sum b_n$ converges, then $sum a_n$ coverges.
 3. If $lim_(n -> infinity ) a_n/b_n=infinity$ and $sum b_n$ diverges, then $sum a_n$ diverges. 
*Absolute Convergence Test*

If $sum_(n=1)^(infinity)|a_n|$ converges, then $sum_(n=1)^(infinity)a_n$.

== The Ratio Test
Let $sum a_n$ be any series and suppose that $ lim_(n -> infinity) |a_(n+1)/a_n| =rho $
Then 
1. Series *converges* absolutely if $rho <1$
2. Series *diverges* if $rho>1$
3. Test is inconclusive if $rho=1$

/ The Root Test: Let $sum a_n$ be any series and suppose that $ lim_(n -> infinity) (|a_n|)^(1/n) = rho $ 
  Then
  1. Series *converges* absolutely if $rho <1$
  2. Series *diverges* if $rho>1$
  3. Test is inconclusive if $rho=1$

== Raabe's Test
Let $sum a_n$ be any series, then
$ rho_n  equiv n(a_n/a_(n+1)-1 ) $
1. Converge if $rho=lim_(n-> infinity) rho_n>1$
2. Diverge if $lim_(n -> infinity) rho_n<1$
3. Test is inconclusive if $rho=1$
/ Betrand Test:
  Let $sum a_n (a_n >0, forall n in NN )$ be any series, then 
  $ rho_n equiv (n(a_n/a_(n+1)-1 )-1)ln(n) $
  1. Converges if $ lim_(n -> infinity)rho_n>1$
  2. Diverges if $lim_(n-> infinity)rho_n<1$


== The Alternating Series Test
  The series  $ sum_(n=1)^(infinity) (-1)^(n+1) u_n=u_1-u_2+u_3-u_4+dots $
  converges if 
  1. The $u_n 's$ are all positive.
  2. The positive $u_n 's$  are nonincreasing $u_n>=u_(n+1) forall n>=N$ for some $N in ZZ$ 
  3. $u_n -> 0$ 

== Exercises
1. Show that if $sum_(n=1)^(infinity) s_n$ converges then 
$ sum_(n=1)^(infinity) ((1+sin(s_n))/2)^n $ converges.
2. Prove that *(The Basel problem)*
$ sum_(n=1)^(infinity) 1/n^2 = pi^2/6 $
(HINT: Use fourier series $f(x)=x^2 and x in [-pi,pi]$)

/ References:
  1. Springer, "Elementary Analysis",$T h e o r y $ $o f $ $ C a l c u l u s$,Kenneth A. Ross, edition 2., pp. 33-46,2013
  2. Pearson, "Early Transcendentals",$T h o m a s's$ $ C a l c u l u s$,George B. Thomas, Jr.,edition 13.,pp. 572-652,2014
