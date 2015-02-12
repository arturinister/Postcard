//
//  ViewController.swift
//  tarjetaPostal
//
//  Created by Arturo De Leon on 2/4/15.
//  Copyright (c) 2015 Arturo De Leon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enviarMensajeBotonPresionado(sender: UIButton) {
        //Comentario para prueba de Commits
        
        if (enterNameTextField.text=="")
        {
            messageLabel.text="Coloque su nombre por favor 😰";
            messageLabel.hidden=false;
            
            messageLabel.textColor=UIColor.redColor();
        }
        else
        {
            if(enterMessageTextField.text=="")
            {
                messageLabel.text="Coloque su mensaje por favor 😨";
                messageLabel.hidden=false;
                
                messageLabel.textColor=UIColor.redColor();
            }
            else
            {
                messageLabel.text=enterNameTextField.text + " - " + enterMessageTextField.text;
                messageLabel.hidden=false;
            
                messageLabel.textColor=UIColor.blueColor();
            
                enterMessageTextField.text="";
                enterNameTextField.text="";
                enterMessageTextField.resignFirstResponder()
                enterNameTextField.resignFirstResponder()
                mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
            }
        }
    }

}

