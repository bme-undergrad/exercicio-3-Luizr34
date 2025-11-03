% Resolvendo a EDO de Primeira Ordem, obtemos a função X = Xo.e^(μ.t), onde Xo é o número de bactérias em t = 0 e μ a taxa de crescimento das bactérias.
% => [ln] => ln(X) = ln(Xo) + μ.t. Seja ln(Xo) = ao, μ = a1, e yi = ln(X), temos que: yi = ao + a1.t. Resolvendo esta linearização, é possível encontrar μ.

function [mu] = exercicio3(t, NC)

% t: vetor de tempo com instâncias das medições
% NC: medida do número de células a cada instante t

%%%%%%%%%%%%%%%%%%%%%%%%%%

t_new = t-t(1);
yi = log(NC);
a = polyfit(t_new, yi, 1);

% mantenha essas duas linhas finais, subtituindo mu pelo valor que você calculou
mu = a(1);

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
