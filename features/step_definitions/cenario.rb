Dado("eu tenha {int} bolachas.") do |qtdBolacha|
  @bolachas = qtdBolacha
end

Quando("eu como {int} bolachas.") do |qtdBolacha|
  @qtdComi = qtdBolacha
  @resultado = @bolachas - @qtdComi
end

Quando("eu ganho {int} bolachas.") do |qtdGanha|
  @qtdGanhei = qtdGanha
  @resultado = @bolachas + @qtdGanhei
end

Então("eu vejo quantas bolachas sobraram.") do
  expect(@resultado).to eql 8
end

Então("eu vejo quantas bolachas eu tenho.") do
  expect(@resultado).to eql 16
end