/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import interfaces.Manageble;
import java.io.InvalidClassException;

/**
 *
 * @author Christian
 */
public class Clientes implements Manageble {

    private String nome, cpf, rg, email, telefone, endereco;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
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
        Clientes c = (Clientes) data;
        DataBase.getClientes().add(c);
    }

    @Override
    public Object Read() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void Update(Object obj, Object data) {
       Clientes cliente = (Clientes) obj;
       DataBase.getClientes().set((Integer) data, cliente);
    }

    /**
     *
     * @param cliente
     * @return boolean
     * @throws InvalidClassException
     */
    @Override
    public boolean Delete() throws InvalidClassException{
        return false;
    }
}
