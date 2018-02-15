//
//  PaginaCuatro.swift
//  Views
//
//  Created by Maestro on 12/02/18.
//  Copyright © 2018 Maestro. All rights reserved.
//
import Foundation
import UIKit

class PaginaCuatro: Pagina {
    
    @IBOutlet weak var lobo: UIImageView!
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
        UIView.animate(withDuration: 2.0, animations: {
            self.lobo.center.x += 60
        }, completion: nil)
    }
    
    private func inicializar(){
        
        Bundle.main.loadNibNamed( "PaginaCuatro", owner: self, options: nil)
        addSubview(vwContenedor)
        vwContenedor.frame = self.bounds
        vwContenedor.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        
    }
    
}
