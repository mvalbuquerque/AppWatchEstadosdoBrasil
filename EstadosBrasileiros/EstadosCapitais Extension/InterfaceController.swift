//
//  InterfaceController.swift
//  EstadosCapitais Extension
//
//  Created by Marcos Vinicius Albuquerque on 1/18/16.
//  Copyright © 2016 Marcos Vinicius Albuquerque. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    // Monta uma array com todos os estados do brasil.
    var estados  =     [
    "Acre",
    "Alagoas",
    "Amapá",
    "Amazonas",
    "Bahia",
    "Ceará",
    "Distrito Federal",
    "Espírito Santo",
    "Goiás",
    "Maranhão",
    "Mato Grosso",
    "Mato G. do Sul",
    "Minas Gerais",
    "Pará",
    "Paraíba",
    "Paraná",
    "Pernambuco",
    "Piauí",
    "Rio de Janeiro",
    "Rio G. do Norte",
    "Rio G. do Sul",
    "Rondônia",
    "Roraima",
    "Santa Catarina",
    "São Paulo",
    "Sergipe",
    "Tocantins"]

    
    
    
    //Define o objeto da tableview
    @IBOutlet var tableView: WKInterfaceTable!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    //Carrega a função setupTable
    setupTable()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    //Função responsável para popular as linhas da tableview
    func setupTable()  {
    tableView.setNumberOfRows(estados.count, withRowType: "EstadosRow")
        
        for var i  = 0; i < estados.count; ++i  {
            if let row = tableView.rowControllerAtIndex(i) as? EstadosRow {
            row.estadoNome.setText(estados[i])
            
            }
        }
        
    }
    //Função responsável por pegar o index e enviar para outra storybord trazendo o conteúdo
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        self.pushControllerWithName("showDetails", context: estados[rowIndex])
    }
}


