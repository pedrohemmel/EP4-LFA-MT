## estados não finais 
## a^{2(i+1)}
q0 = "aa"
q1 = "aaaa"
q2 = "aaaaaa"
q3 = "aaaaaaaa"

## estados finais
## a^{2i + 1}
#q2 = "a" 
q4 = "a"

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

#MT que reconhece uma Linguagem Livre de Contexto:a^n b^n
@d1 = "#{q0}#{@x}#{q1}#{@b}#{dir}"
@d2 = "#{q1}#{@x}#{q1}#{@x}#{dir}"
@d3 = "#{q1}#{@y}#{q1}#{@y}#{dir}"
@d4 = "#{q1}#{@b}#{q2}#{@b}#{esq}"
@d5 = "#{q2}#{@y}#{q3}#{@b}#{esq}"
@d6 = "#{q3}#{@x}#{q3}#{@x}#{esq}"
@d7 = "#{q3}#{@y}#{q3}#{@y}#{esq}"
@d8 = "#{q3}#{@b}#{q0}#{@b}#{dir}"
@d9 = "#{q2}#{@b}#{q4}#{@b}#{dir}"
@d10 = "#{q0}#{@b}#{q4}#{@b}#{dir}"

def linker # software
  "#{@d1}#{@d2}#{@d3}#{@d4}#{@d5}#{@d6}#{@d7}#{@d8}#{@d9}#{@d10}"
end

def codificacao_cadeia # input
  "#{@x}#{@y}#{@y}#{@y}#{@y}"
end