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
        }
        return cliente;
    }

    public static ArrayList<Fornecedores> getFornecedores() {
        if (fornecedor == null) {
            fornecedor = new ArrayList<>();
            Fornecedores f1 = new Fornecedores();

        }

        return fornecedor;
    }

}
