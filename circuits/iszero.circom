pragma circom 2.0.0;

template IsZero() {
    signal input in;
    signal output out; // output　inがzeroなら、1 otherwise 0
    signal inv;
    inv <-- in!=0 ? 1/in : 0;
    out <== -in*inv +1; // inが0なら、outは1 otherwise 0
    // A constraint is imposed with the operator ===,
    // which creates the simplified form of the given equality constraint.
    // also implies adding an assert statement in the witness code generation.  
    in*out === 0;
}

component main = IsZero();