//
//  PaginaTres.swift
//  Views
//
//  Created by Maestro on 12/02/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import Foundation
import UIKit

class PaginaTres: Pagina {
    
    @IBOutlet weak var cloud: UIImageView!
    @IBAction func dotap(_ sender: Any) {
        UIView.animate(withDuration: 3.0, animations: {
            self.cloud.center.x += 100
        }, completion: nil)
    }
    @IBOutlet var vwContenedor: UIView!
    
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
        
        Bundle.main.loadNibNamed( "PaginaTres", owner: self, options: nil)
        addSubview(vwContenedor)
        vwContenedor.frame = self.bounds
        vwContenedor.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        
    }
    
}
