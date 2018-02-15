//
//  PaginaNueve.swift
//  Views
//
//  Created by Maestro on 12/02/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import Foundation
import UIKit

class PaginaNueve: Pagina {
    
    @IBOutlet weak var lobito: UIImageView!
    @IBOutlet var vwContenedor: UIView!
    
    @IBAction func dotap(_ sender: Any) {
        UIView.animate(withDuration: 3.5, animations: {
            self.lobito.center.x += 800
        }, completion: nil)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        inicializar()
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        inicializar()
    }
    
    
    override func animar(){
        
    }
    
    private func inicializar(){
        
        Bundle.main.loadNibNamed( "PaginaNueve", owner: self, options: nil)
        addSubview(vwContenedor)
        vwContenedor.frame = self.bounds
        vwContenedor.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        
    }
    
}
