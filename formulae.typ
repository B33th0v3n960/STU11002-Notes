#set page(
  footer: context [
    #h(1fr)
    #counter(page).display(
      "1",
      both: false,
    )
    #h(1fr)
])

= Statistics Formulae

== Summary Statistics
=== Means
==== Arithmetic Mean:
$ dash(x)_a = 1 / n sum_(i=1)^n x_i $
$ dash(x)_a = 1 / n sum_(j=1)^n x_j f_j = sum_(j=1)^n x_j tilde(f)_j   $

==== Weighted Arithmetic Mean:
$ dash(x)_tilde(a) = sum_(i=1)^n x_i w_i $

Arithmetic Means Properties:
$ sum^n_(i=1) x_i = n dash(x)_a $
$ sum^n_(i=1) (x_i - dash(x)_a) = 0 $
$ arg min_c [ sum_(i=1)^n (x_i - c)^2 ] = sum_(i=1)^n (x_i - dash(x)_a)^2 $
$ dash(y)_a = 1/n sum_(i=1)^n (alpha + beta x_i) = alpha + beta dash(x)_a $

==== Geometric Mean:
$ dash(x)_g = root(n, x_1 x_2 ... x_n) $
$ dash(x)_g = root(n, x_1^f_1 x_2^f_2 ... x_n^f_n) $

Geometric Mean Properties:
$ x_1 x_2 ... x_n = product_(i=1)^n x_i = [dash(x)_g]^n $
$ log(dash(x)_g) = 1 / n sum_(i=1)^n log(x_i) $

#pagebreak()

==== Median:
$ M_e = x_((n+1)/2) #h(1em) n in {n | n = 2k + 1, k in ZZ } $
$ M_e = 1/2 (x_(n/2) + x_((n+1)/2) ) #h(1em) n in {n | n = 2k , k in ZZ } $

Median Properties:
$ arg min_c [ sum_(i=1)^n (x_i - c) ] = sum_(i=1)^n (x_i - M_e) $
Median Classes and Frequencies:
$f c_j$ is the *cumulative relative frequency* for a class
$ f c_j = 1/n sum_(k=1)^j f_k #h(1em) j = 1,...,j $
$ M_e = m_M_e + [(0.5 - f c_((M_e - 1)))/(f c_M_e - f c_((M_e - 1)))] Delta M_e $

==== Percentiles:
$ q_k = m_q_k + [(k/100 - f c_((q_k - 1)))/(f c_q_k - f c_((q_k - 1)))] Delta q_k $

Extreme Values: Interquartile Range criterion
$ [q_25 - 1.5 "IQR"; q_75 + 1.5 "IQR"]  $

#pagebreak()
== Probability
=== Conditional probabilites:
$ Pr(B|A)  = Pr(A inter B) / Pr(A) $
$ Pr(A inter B) = Pr(A)Pr(B|A) $

==== Chain Rule:
$ Pr(A inter B) = Pr(A) dot Pr(B|A) = Pr(B) dot Pr(A|B) $
$ Pr(A inter B inter C) = Pr(A) dot Pr(B|A) dot Pr(C|B inter A) $

==== Independence:
$ P(A inter B) = P(A) dot P(B) $

=== Law of Total Probability:
$
"Given" Omega = union.big_(i=1)^n B_i \
"and" B_i inter B_j = emptyset #h(1em) "if" i != j \
P(A) = sum_(i=1)^n P(A|B_i)P(B_i)
$

=== Bayes' Theorem:
$ P(B|A) =  (P(A|B)P(B))/P(A) $
$ P(B|A) =  (P(A|B)P(B))/(P(A|B)P(B) + P(A|dash(B))P(dash(B))) $
$ P(B_j|A) =  (P(A|B_j)P(B_j))/ (sum_(i=1)^n P(A|B_i)P(B_i)) $

#pagebreak()
== Probability Distribution
=== Cumulative distribution:
$ F(X_i) = Pr(X <= x_i) = sum_(w<=x_i) Pr(X<=w) $
$ Pr(x_i <= X <= x_j) = integral_(x_i)^(x_j) f(x) dif x $

=== Expected Value:
$ E(x) = sum_(i=1)^K x_i Pr(x_i) $
$ E(x) = integral_a^b x f(x) dif x $

=== Variance: 
$ V(x) = sum_(i=1)^K [x_i -E(X)]^2 Pr(x_i) $
$ V(x) = integral_a^b [x - E(X)]^2 f(x) dif x $
$ V(X) = E[[X - E(X)]^2] = E[X^2] - E[X]^2 $
$ S d(X) = sqrt(V(x)) $
$ E(Y) = E(d + s X) = d + s E(X) $
$ V(Y) = V(d + s X) = s^2 V(X) $

=== Standardisation:
$ Z = (X - E(X))/(S d(X)) $
$ E(Z) = 0 $
$ V(Z) = 1 $

#pagebreak()
==== Discreet Uniform Distribution: $X tilde "Ud"(a,s) #h(1em) X in (a, a + s - 1)$
$ Pr(X = x) = 1/s $
$ E(X) = a + (s-1)/2 $
$ V(X) = (s^2 -1)/12 $

==== Benoulli Distribution: $X tilde "Bern"(pi)$
$ Pr(X = x) = pi^x (1-pi)^(1-x) $
$ E(X) = pi $
$ V(X) = pi (1 - pi) $

==== Binomial Distribution: $X tilde "Binom"(pi, n)$
$ Pr(X = x) = binom(n, x) pi^x (1-pi)^(1-x) $
$ E(X) = n pi $
$ V(X) = n pi (1 - pi) $

==== Poisson Distribution: $X tilde "Pois"(lambda)$
$ Pr(X = x) = (lambda^x)/x! e^(-lambda) $
$ E(X) = V(x) = lambda $

Sum of Poisson r.vs is a Poisson r.v.
$ sum_(p=1)^P X_p tilde "Pois"(sum_(p=1)^P lambda_p) $

#pagebreak()
==== Coninuous Uniform Distribution: $X tilde "Unif"(a,b)$
$ f(x) = cases(
  1/(b-a) "if" a<= x <= b,
  0 "else"
) $
$ E(X) = 1/2 (a + b) $
$ V(X) = 1/12 (b - a)^2 $

==== Exponential Distribution: $X tilde "Exp"(lambda)$
$ f(x) = cases(
  lambda e^(-lambda x) "if" x >= 0,
  0 "else"
) $
$ E(X) = 1/lambda $
$ V(X) = 1/lambda^2 $

==== Normal Distribution: $X tilde N(mu, sigma^2)$
$ f(x) = 1/(sigma sqrt(2 pi)) e^(-(x- mu)^2/(2 sigma^2)) $
$ E(X) = mu $
$ V(X) = sigma^2 $

linear transformation of Normal r.v.
$ "if" X tilde N(mu, sigma^2) $
$ "and" Y = a + b X $
$ Y tilde N(a + b mu, b^2 sigma^2) "where" a != 0 $

The sum of two normal distribution:
$ X tilde N(mu_x, sigma^2_x) $
$ Y tilde N(mu_y, sigma^2_y) $
$ (X + Y) tilde N(mu_x + mu_y, sigma^2_x + sigma^2_y) $

==== Student's t-distribution: $X tilde T(v), v in ZZ^+$
$ E(X) = 0 $
$ V(X) = v/(v-2) $

#pagebreak()
== Estimators
=== Point Estimators
$ hat(mu) = dash(x)_n $
$ hat(sigma)^2 = 1/n sum_(i=1)^n (x_i - dash(x)_n)^2 $
$ "SE" = hat(sigma)/sqrt(n) $

=== Finite Population Correction (FPC):
$ "SE" = hat(sigma)/sqrt(n) sqrt((N - n)/(N - 1)) $

=== Unbiased Estimators:
Unbiased if $ B(t) = 0$
$ B(T) = E(T) - theta $

=== Mean Square Error (MSE):
how "far off" T is from $theta$
$ "MSE"(T) = E[(T - theta)^2] $
$ "MSE"(T) = V(T) + B(T)^2 $

$T_1$ is more efficient that $T_2$ if:
$ "MSE"(T_1) < "MSE"(T_2) $

=== Unbiased sample variance
$ S^2 = 1/(n - 1) sum_(i=1)^n (X_i - dash(X)_n)^2 $

#pagebreak()
=== Interval Estimators
$ Z = (dash(X)_n - mu)/(sigma/sqrt(n)) $
==== Confidence Interval for Sampel Mean: $(1 - alpha)$ is the *confidence level*
$ [dash(x)_n - z_(alpha/2) sigma/sqrt(n); dash(x)_n + z_(alpha/2) sigma/sqrt(n)] $
$ Pr(dash(x)_n - z_(alpha/2) sigma/sqrt(n) <= theta <= dash(x)_n + z_(alpha/2)
  sigma/sqrt(n)) = 1 - alpha $

==== Confidence Interval with Unknown Variance:
$ [dash(x)_n - t_(alpha/2) S/sqrt(n); dash(x)_n + t_(alpha/2) S/sqrt(n)] $
$ S = sqrt(1/(n-1) sum_(i=1)^n (X_i - dash(X)_n)^2) $

==== Confidence interval for a Proportion:
$ [dash(x)_n - z_(alpha/2) sqrt(dash(x)_n (1 - dash(x)_n))/sqrt(n); dash(x)_n +
z_(alpha/2) sqrt(dash(x)_n (1 - dash(x)_n))/sqrt(n)] $

Determining the Sample Size:

*Maximum width of the confidence interval* $(delta)$
$ delta = 2 z_(alpha/2) sigma/sqrt(n) $
$ n >= (z_(alpha/2) 2 sigma/delta)^2 $

==== Determining Sample Size for Population Proportions:
$ delta = 2 z_(alpha/2) sqrt(hat(pi) (1 - hat(pi)))/sqrt(n) $
$ n >= (z_(alpha/2) 2 sqrt(hat(pi)(1 - hat(pi)))/delta)^2 $

#pagebreak()
== Hypothesis Testing
=== One Population
==== Test Statistics (known variance):
$ Z = (dash(X)_n - mu_0)/(sigma/sqrt(n)) $

==== Test Statistics (unknown variance):
distributed as Student's t distribution with n - 1 degree of freedom
$ T = (dash(X)_n - mu_0)/(S/sqrt(n)) $

==== Test Statistics (Proportion):
$ Z = (dash(X)_n - pi_0)/sqrt((pi_0 (1 - pi_0))/(n)) $

==== Test for Proportions:
$chi^2$ is distributed as a Chi-Squared distribution, with $K - 1$ degree of
freedom
$ chi^2 = sum_(k=1)^K (f_k - n pi_k)^2/(n pi_k) $

==== Rejection region:
$ chi^2 >= chi_a^2 $

==== P-value:
$ Pr(chi^2 >= sum_(k=1)^K (f_k - n pi_k)^2/(n pi_k)) $

#pagebreak()
=== Two Population
==== Difference between two population's mean (known variance)
$ Z = (dash(X)_1 - dash(X)_2 - d_0)/sqrt(sigma_1^2/n_1 + sigma_2^2/n_2) $

==== Difference between two population's mean (unknown variance)
$ T = (dash(X)_1 - dash(X)_2 - d_0)/sqrt(S_p^2(1/n_1 + 1/n_2)) $
$ S_p^2 = ((n_1 - 1)S_1^2 + (n_2 - 1)S_2^2)/(n_1 + n_2 - 2) $

==== Difference between two proportions
$ Z = (dash(X)_1 - dash(X)_2 - d_0)/sqrt(dash(X)_p (1 - dash(X)_p)(1/n_1 + 1/n_2)) $
$ dash(X)_p = (n_1 dash(X)_1 + n_2 dash(X)_2)/(n_1 + n_2)  $

==== Independence Test
$ chi^2 = sum_(k=1)^K sum_(j=1)^J (f_(k j) - (f_k f_j)/n)^2/((f_k f_j)/n) $

=== p-Hacking
==== Bonferroni Correction
$ "adjusted significance level" = alpha/K $

==== Benjamini-Hochberg Procedure (False Discovery Rate)
$ p_k = (k/K)Q $

#pagebreak()
== Linear Regression
=== Simple Linear Regression Model
$ Y = alpha + beta X + epsilon.alt $  

Simple linear regression of Y on X means that for each pair of obsertions 
$(x_i ,y_i)$
$ y_i = alpha + beta x_i + epsilon.alt_i $
assumption:
$ E[epsilon.alt] = 0 $
$ V[epsilon.alt] = sigma^2 $
$ E[Y_i | X = x_i] = hat(Y)_i $
$ V[Y_i | X = x_i] = sigma^2 $
$ epsilon.alt_i tilde N(0, sigma^2) "i.i.d." $
$ Y_i | X = x_i tilde N(alpha + beta x_i, sigma^2) $

==== Model Parameters
*Ordinary Least Squares*
$ L = sum_(i=1)^n epsilon_i^2 = sum_(i=1)^n (y_i - alpha - beta x_i)^2 $
$ hat(alpha) = dash(y)_n - hat(beta) dash(x)_n $
$ hat(beta) = (sum_(i=1)^n (x_i - dash(x))(y_i - dash(y)))/(sum_(i=1)^n (x_i - dash(x))^2) $
$ hat(beta) = (sigma_(X Y))/(sigma_X^2) $
$ sigma_(X Y) = 1/n sum_(i=1)^n (x_i - dash(x))(y_i - dash(y)) $
$ rho = sigma_(X Y)/ (sigma_X sigma_Y) = 
(sum_(i=1)^n (x_i - dash(x))(y_i - dash(y)))/(sqrt(sum_(i=1)^n (x_i - dash(x))^2)sqrt(sum_(i=1)^n (y_i - dash(y))^2)) $
$ tilde(y)_j = hat(alpha) + hat(beta) tilde(x)_j $

#pagebreak()
== Linear Regression Diagnostics
=== Residual
$ hat(epsilon.alt)_i = y_i - hat(y)_i $

=== Total sum of squares
$ "TSS" = sum_(i=1)^n (y_i - dash(y))^2 $
=== Residual sum of squares
$ "RSS" = sum_(i=1)^n (y_i - hat(y)_i)^2 = sum_(i=1)^n hat(epsilon.alt)_i^2 $
=== Explained sum of squares
$ "ESS" = sum_(i=1)^n (hat(y)_i - dash(y))^2 $
$ "TSS" = "ESS" + "RSS" $ 
=== $R^2$ Coefficient
$ R^2 = "ESS"/"RSS" = 1 - "RSS"/"TSS"; 0 <= R^2 <= 1 $
$ R^2 = rho^2 $
$ beta = rho sigma_Y/sigma_X $

=== Hypothesis testing for $beta$
$ (hat(beta) - beta)/S(hat(beta)) tilde t_(n-2) $
