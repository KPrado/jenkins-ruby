#language: pt

Funcionalidade: Adicionar ao carrinho
    Sendo um visitante que acessou um produto no catálogo
    Posso adicionar item no carrinho
    Para que eu possa ver os itens que desejo comprar

    @google
    Cenario: Produtos disponíveis no meu carrinho
        Dado que a tela principal do google é exibida:
        Quando pesquisar por "tubarão"
        Então deverá ser exibida pesquisa relacionada