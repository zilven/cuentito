//
//  PaginaOcho.swift
//  Views
//
//  Created by Maestro on 12/02/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import Foundation
import UIKit

class PaginaOcho: Pagina {
    
    @IBOutlet weak var cloud: UIImageView!
    @IBOutlet var vwContenedor: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        inicializar()
    }
    
    @IBAction func dotap(_ sender: Any) {
        UIView.animate(withDuration: 3.5, animations: {
            self.cloud.center.x += 200
        }, completion: nil)
    }
    override init(frame: CGRect){
        super.init(frame: frame)
        inicializar()
    }
    
    
    override func animar(){
        
    }
    
    private func inicializar(){
        
        Bundle.main.loadNibNamed( "PaginaOcho", owner: self, options: nil)
        addSubview(vwContenedor)
        vwContenedor.frame = self.bounds
        vwContenedor.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        
    }
    
}
