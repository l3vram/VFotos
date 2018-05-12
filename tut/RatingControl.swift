//
//  RatingControl.swift
//  tut
//
//  Created by Marvel Alvarez on 10/28/16.
//  Copyright (c) 2016 Marvel Alvarez. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    
    
    var valoracion = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    var  listabotones = [UIButton]()
    var button1 = UIButton()
    
    
    // Set the button's width and height to a square the size of the frame's height.
    
    
    required init?(coder aDecoder: NSCoder) {
        
        let eBlanca = UIImage(named: "WitheStar")
        let eNegra = UIImage(named: "BlackStar")
        
        super.init(coder: aDecoder)
        var i = 0
        // pa cojerlo del frame donde esta contenido asi es dinamico
        let tamannoBoton = Int(frame.size.height-5)
        
        for i in 0...4{
            
            button1 = UIButton(frame: CGRect(x: i*(tamannoBoton+5), y: 0, width: tamannoBoton, height: tamannoBoton))
            
            button1.setImage(eBlanca, forState: .Normal)
            button1.setImage(eNegra, forState: .Selected)
            button1.setImage(eNegra, forState: .Highlighted)
            
            button1.adjustsImageWhenHighlighted = false
            // button1.backgroundColor = UIColor.redColor()
            
            
            button1.addTarget(self, action: "tocarBoton:", forControlEvents: .TouchDown)
            
            listabotones += [button1]
            
            addSubview(button1 as UIButton)
        }
    }
    
    
       override func layoutSubviews() {
    // Set the button's width and height to a square the size of the frame's height.
    //    let buttonSize = Int(frame.size.height)
    //    var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
    //
    //    // Offset each button's origin by the length of the button plus some spacing.
    //    for (index, button) in ratingButtons.enumerate() {
    //    buttonFrame.origin.x = CGFloat(index * (buttonSize + 5))
    //    button.frame = buttonFrame
    //    }
        updateViewBotones()
    }
    func indexOFValor(Lista: [AnyObject],valor: AnyObject)->NSInteger{
        
        var pos = 0
        
        for v in Lista{
            
            if v.isEqual(valor){
                return pos
                
            }
            pos++
        }
        return -1
    }
    
    func tocarBoton(button1: UIButton){
        
        
        var pos = 0
        
        valoracion = indexOFValor(listabotones,valor: button1)+1
        
        updateViewBotones()
        //print("Tocaste el boton \(valoracion) 👍")
        
    }
    
    func updateViewBotones(){
        
        for b in listabotones{
            
            b.selected = indexOFValor(listabotones, valor: b) < valoracion
            
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
}