//
//  PaginaDos.swift
//  Views
//
//  Created by Maestro on 07/02/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import Foundation
import UIKit

class PaginaDos: Pagina {
    
    @IBOutlet var vwContenedor: UIView!
    
    @IBOutlet weak var cloud: UIImageView!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        inicializar()
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        inicializar()
    }
    
    
    @IBAction func movecloud(_ sender: Any) {
        UIView.animate(withDuration: 3.0, animations: {
            self.cloud.center.x += 100
        }, completion: nil)
    }
    override func animar(){

    }
    
    private func inicializar(){
        
        Bundle.main.loadNibNamed( "PaginaDos", owner: self, options: nil)
        addSubview(vwContenedor)
        vwContenedor.frame = self.bounds
        vwContenedor.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        
    }
    
}
