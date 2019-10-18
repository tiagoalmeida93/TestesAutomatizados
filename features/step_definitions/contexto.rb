Dado("que eu tenho {int} laranjas na bolsa") do |qtdLaranjas|
  @laranjas = qtdLaranjas
end

Quando("eu coloco {int} laranjas na bolsa") do |qtdColoquei|
  @coloquei = qtdColoquei
  @resultado = @laranjas + @coloquei
end

Quando("eu tiro {int} laranjas da bolsa") do |qtdTirei|
  @tirei = qtdTirei
  @resultado = @laranjas - @tirei
end

Então("eu verifico se o total de laranjas na bolsa é {int}.") do |total|
  expect(@resultado).to eq total
end