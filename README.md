# Método de Newton

Dada uma função contínua $f:I\to \mathbb R$ e derivável em $I$, dizemos que $a\in I$ é uma raíz de $f$ se 

$$f(a)=0.$$

Dado um ponto $x_n$, a equação da reta tangente ao gráfico de $f(x)$ no ponto $(x_n,f(x_n))$ é dada por 

$$y-f(x_n)=f'(x_n)[x-x_n].$$



O ponto $x_{n+1}$ é obtido de modo que $y=0,$ 

isto é, 

$$x_{n+1}=x_n-\dfrac{f(x_n)}{f'(x_{n})}, \qquad f'(x_n)\neq0.$$

Critério de parada 

$$|x_{n+1}-x_n| < \varepsilon $$