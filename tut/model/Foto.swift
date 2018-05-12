//
//  Foto.swift
//  tut
//
//  Created by Marvel Alvarez on 11/8/16.
//  Copyright (c) 2016 Marvel Alvarez. All rights reserved.
//

import UIKit


class Foto {
    
    var nombre: String
    var foto : UIImage?
    var valoracion: Int
    
    init?(nombre:String,foto:UIImage?,valoracion:Int){
        
        self.nombre = nombre
        self.foto = foto
        self.valoracion = valoracion
        if nombre.isEmpty || valoracion<0{
        
        return nil
        }
    }
}