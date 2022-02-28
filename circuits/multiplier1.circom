pragma circom 2.0.0;

/* 
there’s nothing preventing us from using a = 1 and b = c (or vice-versa)
to satisify the constraints of the circuit, for any c.
We can fix this by adding some extra constraints to our circuit.
*/
template Multiplier() {
    signal input a;
    signal input b;
    signal output c;
    signal inva;
    signal invb;
    
    inva <-- 1/(a-1);
    (a-1)*inva === 1; // if a is eq to 1, don't satisify the constraint
    
    invb <-- 1/(b-1);
    (b-1)*invb === 1;    
    
    c <== a*b;
}

component main = Multiplier();