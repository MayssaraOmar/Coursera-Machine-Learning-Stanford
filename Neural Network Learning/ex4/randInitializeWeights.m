function W = randInitializeWeights(L_in, L_out)
%   W = RANDINITIALIZEWEIGHTS(L_in, L_out) randomly initializes the weights 
%   of a layer with L_in incoming connections and L_out outgoing 
%   connections. 
%   Note that W should be set to a matrix of size(L_out, 1 + L_in) as
%   the first column of W handles the "bias" terms
%   Initialize W randomly so that we break the symmetry while training the neural network.
epislon_init = 0.12;
W = rand(L_out, 1 + L_in) * 2 * epislon_init - epislon_init; % random values in range [-epislon_init, +epislon_init]
end
