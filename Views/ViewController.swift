//
//  ViewController.swift
//  Views
//
//  Created by Maestro on 07/02/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var paginaActual = 1
    var vwActual : Pagina?
    //var player : AVAudioPlayer?
    
    //
    //  ViewController.swift
    //  ProyectoMenu
    //
    //  Created by Maestro on 31/08/17.
    //  Copyright © 2017 Maestro. All rights reserved.
    //
    

    

        var player : AVAudioPlayer?
    
    @IBOutlet weak var vwLibro: PaginaUno!
    
    
    
    
    @IBAction func swipe(_ sender: Any) {
        paginaActual += 1
        
        player?.stop()
        
        let url = Bundle.main.url(forResource: "\(paginaActual)", withExtension: "m4a")
        
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            
            player?.play()
            player?.numberOfLoops = 1
            player?.volume = 0.5
            
        }catch let error{
            print(error.localizedDescription)
        }
    
        
        UIView.transition(with: vwLibro, duration: 2.0, options: [.transitionCurlUp], animations: {
            for vista in self.vwLibro.subviews {
                vista.removeFromSuperview()
            }
            
            switch(self.paginaActual) {
            case 1:
                //self.vwLibro.addSubview(PaginaUno(frame: self.vwLibro.bounds))
                self.vwActual = PaginaUno(frame: self.vwLibro.bounds)
            case 2:
                //self.vwLibro.addSubview(PaginaDos(frame: self.vwLibro.bounds))
                self.vwActual = PaginaDos(frame: self.vwLibro.bounds)
            case 3:
                //self.vwLibro.addSubview(PaginaDos(frame: self.vwLibro.bounds))
                self.vwActual = PaginaTres(frame: self.vwLibro.bounds)
            case 4:
                //self.vwLibro.addSubview(PaginaDos(frame: self.vwLibro.bounds))
                self.vwActual = PaginaCuatro(frame: self.vwLibro.bounds)
            case 5:
                //self.vwLibro.addSubview(PaginaDos(frame: self.vwLibro.bounds))
                self.vwActual = PaginaCinco(frame: self.vwLibro.bounds)
            case 6:
                //self.vwLibro.addSubview(PaginaDos(frame: self.vwLibro.bounds))
                self.vwActual = PaginaSeis(frame: self.vwLibro.bounds)
            case 7:
                //self.vwLibro.addSubview(PaginaDos(frame: self.vwLibro.bounds))
                self.vwActual = PaginaSiete(frame: self.vwLibro.bounds)
            case 8:
                //self.vwLibro.addSubview(PaginaDos(frame: self.vwLibro.bounds))
                self.vwActual = PaginaOcho(frame: self.vwLibro.bounds)
            case 9:
                //self.vwLibro.addSubview(PaginaDos(frame: self.vwLibro.bounds))
                self.vwActual = PaginaNueve(frame: self.vwLibro.bounds)
            default:
                break
            }
            
            self.vwLibro.addSubview(self.vwActual!)
        }, completion: {_ in
            self.vwActual?.animar()
    })
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = Bundle.main.url(forResource: "1", withExtension: "m4a")
        
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            
            player?.play()
            player?.numberOfLoops = 1
            player?.volume = 0.5
            
        }catch let error{
            print(error.localizedDescription)
        }
        
        
        
        self.vwActual?.animar()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        UIView.transition(with: vwLibro, duration: 2.0, options: [.transitionCurlUp], animations: {
            for vista in self.vwLibro.subviews {
                vista.removeFromSuperview()
            }
            
                //self.vwLibro.addSubview(PaginaDos(frame: self.vwLibro.bounds))
                self.vwActual = PaginaUno(frame: self.vwLibro.bounds)

            
            self.vwLibro.addSubview(self.vwActual!)
        }, completion: {_ in
            self.vwActual?.animar()
    })
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

