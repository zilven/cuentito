//
//  PaginaUno.swift
//  Views
//
//  Created by Maestro on 07/02/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import Foundation
import UIKit

class PaginaUno: Pagina {
    
    
    @IBOutlet weak var pig1: UIImageView!
    @IBOutlet weak var pig2: UIImageView!
    @IBOutlet weak var pig3: UIImageView!
    
    var imagenesanimacion : [UIImage] = []
    
    @IBAction func dotap(_ sender: Any) {
        
        UIView.animate(withDuration: 2.0, animations: {
            self.pig2.center.y -= 80
        }, completion: nil)
        
        if pig2.isAnimating
        {
            pig2.stopAnimating()
            
        }
        else {
            
            pig2.startAnimating()
            
            
        }
        
    }
    @IBOutlet var vwContenedor: UIView!
    @IBOutlet weak var pig: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        inicializar()
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        inicializar()
        
        let imagen1 = UIImage(named: "a0")
        let imagen2 = UIImage(named: "a1")
        let imagen3 = UIImage(named: "a2")
        let imagen4 = UIImage(named: "a3")
        let imagen5 = UIImage(named: "a4")
        let imagen6 = UIImage(named: "a5")
        let imagen7 = UIImage(named: "a6")
        let imagen8 = UIImage(named: "a7")
        let imagen9 = UIImage(named: "a8")
        
        
        imagenesanimacion.append(imagen1!)
        imagenesanimacion.append(imagen2!)
        imagenesanimacion.append(imagen3!)
        imagenesanimacion.append(imagen4!)
        imagenesanimacion.append(imagen5!)
        imagenesanimacion.append(imagen6!)
        imagenesanimacion.append(imagen7!)
        imagenesanimacion.append(imagen8!)
        imagenesanimacion.append(imagen9!)
        pig2.image = imagenesanimacion[0]
        
        pig2.animationImages = imagenesanimacion
        pig2.animationDuration = 0.5
    }
    
    override func animar(){
    }
    
    
    private func inicializar(){
        
        Bundle.main.loadNibNamed( "PaginaUno", owner: self, options: nil)
        addSubview(vwContenedor)
        vwContenedor.frame = self.bounds
        vwContenedor.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        
    }
    
}
