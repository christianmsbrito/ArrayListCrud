/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

/**
 *
 * @author Christian
 */
public interface Manageble {
    abstract void Create(Object data);
    abstract Object Read();
    abstract void Update(Object obj, Object data);
    abstract void Delete(Object query);
}
