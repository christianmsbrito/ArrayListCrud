/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.ArrayList;

/**
 *
 * @author Mulero
 */
public class DataBase {

    private static ArrayList<Clientes> cliente;
    private static ArrayList<Fornecedores> fornecedor;

    public static ArrayList<Clientes> getClientes() {
        if (cliente == null) {
            cliente = new ArrayList<>();
            Clientes c1 = new Clientes();
            c1.setNome("Marcelo");
            c1.setCpf("412.652.147-30");
            c1.setRg("14.123.369-2");
            c1.setEmail("marcelin@gmail.com");
            c1.setTelefone("+55 (13) 97845-1247");
            c1.setEndereco("Av. Logo Ali, 147, SP");

            cliente.add(c1);
        }
        return cliente;
    }

    public static ArrayList<Fornecedores> getFornecedores() {
        if (fornecedor == null) {
            fornecedor = new ArrayList<>();
            Fornecedores f1 = new Fornecedores();
            f1.setNome("TESTE");
            f1.setCnpj("TESTES");
            f1.setRazaoSocial("TESTE");
            f1.setEmail("TESTE");
            f1.setTelefone("TESTE");
            f1.setEndereco("TESTE");
            
            fornecedor.add(f1);
        }

        return fornecedor;
    }

    public static Clientes getClienteById(int id) {
        Clientes cliente = DataBase.getClientes().get(id);
        return cliente;
    }
    
    public static Fornecedores getFornecedorById(int id) {
        Fornecedores fornecedor = DataBase.getFornecedores().get(id);
        return fornecedor;
    }
}
