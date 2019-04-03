/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import interfaces.Manageble;

/**
 *
 * @author Christian
 */
public class Fornecedores implements Manageble {

    private String nome, razaoSocial, cnpj, email, telefone, endereco;

    public Fornecedores() {
        this.nome = "";
        this.razaoSocial = "";
        this.cnpj = "";
        this.email = "";
        this.telefone = "";
        this.endereco = "";
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRazaoSocial() {
        return razaoSocial;
    }

    public void setRazaoSocial(String razaoSocial) {
        this.razaoSocial = razaoSocial;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    @Override
    public void Create(Object data) {
        Fornecedores fornecedor = (Fornecedores) data; 
        DataBase.getFornecedores().add(fornecedor);
    }

    @Override
    public Object Read() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void Update(Object obj, Object data) {
        Fornecedores fornecedor = (Fornecedores) obj;
        DataBase.getFornecedores().set((Integer) data, fornecedor);
    }

    @Override
    public boolean Delete() {
        return DataBase.getFornecedores().remove(this);
    }

}
