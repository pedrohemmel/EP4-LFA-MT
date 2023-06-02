## estados não finais 
## a^{2(i+1)}
q0 = "a"
q1 = "aa"
q2 = "aaaa"
q3 = "aaaaaaaa"

## estados finais
## a^{2i + 1}
#q2 = "a" 
q4 = "aaaaaaaaaa"

# símbolo branco
@b = "ba"

## elementos do alfabeto
## sigma = {s0, s1, ..., sn }
## b^{m*3}a
@x = "bbba"
@y = "bbbbbba"
@z = "bbbbbbbbba"

##movimentação do cursor
esq = "c"
dir = "cc"

#MT que reconhece uma Linguagem Recursiva:a^n^2
@d1 = "#{q0}#{@x}#{q1}#{@b}#{dir}"
@d2 = "#{q1}#{@x}#{q1}#{@x}#{dir}"
@d3 = "#{q1}#{@y}#{q1}#{@y}#{dir}"
@d4 = "#{q1}#{@z}#{q2}#{@z}#{esq}"
@d5 = "#{q2}#{@y}#{q2}#{@y}#{esq}"
@d6 = "#{q2}#{@z}#{q3}#{@z}#{esq}"
@d7 = "#{q3}#{@y}#{q3}#{@y}#{esq}"
@d8 = "#{q3}#{@z}#{q4}#{@z}#{esq}"
@d9 = "#{q4}#{@z}#{q4}#{@z}#{esq}"
@d10 = "#{q4}#{@b}#{q0}#{@b}#{dir}"

def linker # software
  "#{@d1}#{@d2}#{@d3}#{@d4}#{@d5}#{@d6}#{@d7}#{@d8}#{@d9}#{@d10}"
end

def codificacao_cadeia # input
  "#{@x}#{@y}#{@z}#{@z}"
end