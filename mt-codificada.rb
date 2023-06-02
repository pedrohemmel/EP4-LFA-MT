## estados não finais 
## a^{2(i+1)}
q0 = "aa"
q1 = "aaaa"

## estados finais
## a^{2i + 1}
#q2 = "a" 
q2 = "a"

# símbolo branco
@b = "ba"

## elementos do alfabeto
## sigma = {s0, s1, ..., sn }
## b^{m*3}a
@x  = "bbba"
@y  = "bbbbbba"

## movimentacao do cursor
esq = "c"
dir = "cc"

#MT que reconhece uma Linguagem Regular: $a^+b^*$
@d1 = "#{q0}#{@x}#{q1}#{@x}#{dir}"
@d2 = "#{q1}#{@x}#{q1}#{@x}#{dir}"
@d3 = "#{q1}#{@y}#{q2}#{@y}#{dir}"
@d4 = "#{q1}#{@y}#{q2}#{@y}#{dir}"
@d5 = "#{q3}#{@b}#{q2}#{@b}#{dir}"
@d6 = "#{q3}#{@b}#{q2}#{@b}#{esq}"

def linker # software
  "#{@d1}#{@d2}#{@d3}#{@d4}#{@d5}"
end

def codificacao_cadeia # input
  "#{@x}#{@x}#{@y}#{@y}"
end