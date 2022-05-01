#encoding: utf-8

Dado("que a tela principal do google é exibida:") do
    visit "/"
end

Quando("pesquisar por {string}") do |texto_pesquisa|
    find("input[name=q]").set texto_pesquisa
    find("input[name=q]").send_keys :enter
end

Então("deverá ser exibida pesquisa relacionada") do
    expect(page).to have_text "Tubarão"
end
