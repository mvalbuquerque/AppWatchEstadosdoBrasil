//
//  DetalhesInterfaceController.swift
//  EstadosBrasileiros
//
//  Created by Marcos Vinicius Albuquerque on 1/18/16.
//  Copyright © 2016 Marcos Vinicius Albuquerque. All rights reserved.
//

import WatchKit
import Foundation


class DetalhesInterfaceController: WKInterfaceController {
    
    //Definindo os objetos da tela
    @IBOutlet var estadoNome: WKInterfaceLabel!
    @IBOutlet var bandeira: WKInterfaceImage!
    @IBOutlet var capital: WKInterfaceLabel!
    
    //Define chave e valor quando o usuário seleciona o index na tela (Alagoas = Maceío)
    let capitais = [
    "Acre":"Rio Branco",
    "Alagoas":"Maceió",
    "Amapá":"Macapá",
    "Amazonas":"Manaus",
    "Bahia":"Salvador",
    "Ceará":"Fortaleza",
    "Distrito Federal":"Brasília",
    "Espírito Santo":"Vitória",
    "Goiás":"Goiânia",
    "Maranhão":"São Luís",
    "Mato Grosso":"Cuiabá",
    "Mato G. do Sul":"Campo Grande",
    "Minas Gerais":"Belo Horizonte",
    "Pará":"Belém",
    "Paraíba":"João Pessoa",
    "Paraná":"Curitiba",
    "Pernambuco":"Recife",
    "Piauí":"Teresina",
    "Rio de Janeiro":"Rio de Janeiro",
    "Rio G. do Norte":"Natal",
    "Rio G. do Sul":"Porto Alegre",
    "Rondônia":"Porto Velho",
    "Roraima":"Boa Vista",
    "Santa Catarina":"Florianópolis",
    "São Paulo":"São Paulo",
    "Sergipe":"Aracaju",
    "Tocantins":"Palmas"]

    //Com base na key mostra a bandeira na próxima tela
    let bandeiras = [
        "Acre":"ac",
        "Alagoas":"al",
        "Amapá":"ap",
        "Amazonas":"am",
        "Bahia":"ba",
        "Ceará":"ce",
        "Distrito Federal":"df",
        "Espírito Santo":"es",
        "Goiás":"go",
        "Maranhão":"ma",
        "Mato Grosso":"mt",
        "Mato G. do Sul":"ms",
        "Minas Gerais":"mg",
        "Pará":"pa",
        "Paraíba":"pb",
        "Paraná":"pr",
        "Pernambuco":"pe",
        "Piauí":"pi",
        "Rio de Janeiro":"rj",
        "Rio G. do Norte":"rn",
        "Rio G. do Sul":"rs",
        "Rondônia":"ro",
        "Roraima":"rr",
        "Santa Catarina":"sc",
        "São Paulo":"sp",
        "Sergipe":"se",
        "Tocantins":"to"]
        
    
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        //Configura os valores que serão recebidos pelos objetos label na detalhesinterface
        let name = context as! String
        estadoNome.setText(name)
        bandeira.setImage(UIImage(named: bandeiras[name]!))
        capital.setText(capitais[name]!)
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
