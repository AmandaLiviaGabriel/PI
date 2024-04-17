package model;

public class Produto {

    private int id;
    private String nome;
    private double avaliacao;
    private String descricao;

    private double preco;

    private int qtdEstoque;

    private String status;

    public Produto(String nome, double avaliacao, String descricao, String preco, int qtdEstoque) {
        this.nome= nome;
        this.avaliacao = avaliacao;
        this.descricao= descricao;
        this.preco = Double.parseDouble(preco);
        this.qtdEstoque = qtdEstoque;
    }


    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getAvaliacao() {
        return String.valueOf(avaliacao);
    }

    public void setAvaliacao(double avaliacao) {
        this.avaliacao = avaliacao;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public int getQtdEstoque() {
        return qtdEstoque;
    }

    public void setQtdEstoque(int qtdEstoque) {
        this.qtdEstoque = qtdEstoque;
    }

    public Produto(int userId, String nome, double avaliacao, String descricao, double preco, int qtdEstoque) {
        this.id = id;
        this.nome = this.nome;
        this.avaliacao = this.avaliacao;
        this.descricao = this.descricao;
        this.preco = this.preco;
        this.qtdEstoque = this.qtdEstoque;
        this.status = status;

    }


}
