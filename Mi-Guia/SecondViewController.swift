//
//  SecondViewController.swift
//  Mi-Guia
//
//  Created by Mariano Rodriguez Abarca on 14/05/18.
//  Copyright © 2018 Mariano Rodriguez Abarca. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController  {

    
    @IBAction func examenAleatorio(_ sender: Any) {
        
        // create the alert
        let alert = UIAlertController(title: "Atención", message: "¡Para obtener más preguntas para tu examen simulacro es necesario obtener la versión PRO.!", preferredStyle: UIAlertController.Style.alert)
         
         // add an action (button)
         alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
         //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
         
         // show the alert
         self.present(alert, animated: true, completion: nil)
    }
    
    @IBOutlet weak var btncomenzar: UIButton!
    
    var arrayRespuestas:[[String:String]] = []
    var arrayDatosPreguntas:[[String:String]] = []
    var arrayDatos:[[String:String]] = []
    
    var arrayExamenAleatorio:[[String:String]] = []
    
    //consulta por materias
    var ConsultarExamenesRandomEspa:[[String:String]] = []
    var ConsultarExamenesRandomRazVerbal:[[String:String]] = []
    var ConsultarExamenesRandomHisUniv:[[String:String]] = []
    var ConsultarExamenesRandomHisMex:[[String:String]] = []
    var ConsultarExamenesRandomGeoUniv:[[String:String]] = []
    var ConsultarExamenesRandomGeoMex:[[String:String]] = []
    var ConsultarExamenesRandomCivismo:[[String:String]] = []
    var ConsultarExamenesRandomRazMate:[[String:String]] = []
    var ConsultarExamenesRandomMatematicas:[[String:String]] = []
    var ConsultarExamenesRandomFisica:[[String:String]] = []
    var ConsultarExamenesRandomQuimica:[[String:String]] = []
    var ConsultarExamenesRandomBiologia:[[String:String]] = []
    
    var arrayEscuelas:[[String:String]] = []
    
    
    @IBOutlet weak var leyendaUnoExamen: UITextView!
    
    @IBOutlet weak var btnleyendaInicio: UIButton!
    
    
    @IBOutlet weak var leyendaDosExamen: UITextView!
    
    
    @IBOutlet weak var btnleyendaExamenPro: UIButton!
    
    var preguntasRealizadas:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leyendaUnoExamen.textColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
        leyendaDosExamen.textColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
        
        btnleyendaInicio.backgroundColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
        btnleyendaExamenPro.backgroundColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
       
        UINavigationBar.appearance().barTintColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)]

        
      //  refresh()
        
        //parsingWSAndSyncCategorias()
       // examenAleatorio()
        
        
        //self.pregunta()
       
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.refresh()
        self.examenAleatorio()
        
        
    }
    
    // Create the Activity Indicator
    let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
    var boxView = UIView()
    
    func addCuestions() {
        // You only need to adjust this frame to move it anywhere you want
        boxView = UIView(frame: CGRect(x: view.frame.midX - 90, y: view.frame.midY - 25, width: 180, height: 50))
        boxView.backgroundColor = UIColor.white
        boxView.alpha = 0.8
        boxView.layer.cornerRadius = 10
        
        //Here the spinnier is initialized
        let activityView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
        activityView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        activityView.startAnimating()
        
        let textLabel = UILabel(frame: CGRect(x: 60, y: 0, width: 200, height: 50))
        textLabel.textColor = UIColor.gray
        textLabel.text = "Cargando..."
        
        boxView.addSubview(activityView)
        boxView.addSubview(textLabel)
        
        view.addSubview(boxView)
    }

    func refresh(){
        
        let objDaoIngresos = DataBase()
        
        arrayEscuelas = objDaoIngresos.ejecutarSelect("SELECT * FROM opcionesescuelas") as! [[String : String]]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    
    func examenAleatorio(){
        
        let objDaoIngresos = DataBase()
        
        self.arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
        
        if(arrayDatos.count>0){
            self.ConsultarExamenesRandomEspa = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 1 ORDER BY RANDOM() LIMIT 12") as! [[String : String]]
            
            self.ConsultarExamenesRandomRazVerbal = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 2 ORDER BY RANDOM() LIMIT 16") as! [[String : String]]
            
            self.ConsultarExamenesRandomHisUniv = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 3 ORDER BY RANDOM() LIMIT 6") as! [[String : String]]
            
            self.ConsultarExamenesRandomHisMex = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 4 ORDER BY RANDOM() LIMIT 6") as! [[String : String]]
            
            self.ConsultarExamenesRandomGeoUniv = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 5 ORDER BY RANDOM() LIMIT 6") as! [[String : String]]
            
            self.ConsultarExamenesRandomGeoMex = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 6 ORDER BY RANDOM() LIMIT 6") as! [[String : String]]
            
            self.ConsultarExamenesRandomCivismo = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 7 ORDER BY RANDOM() LIMIT 12") as! [[String : String]]
            
            self.ConsultarExamenesRandomRazMate = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 8 ORDER BY RANDOM() LIMIT 16") as! [[String : String]]
            
            self.ConsultarExamenesRandomMatematicas = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 9 ORDER BY RANDOM() LIMIT 12") as! [[String : String]]
            
            self.ConsultarExamenesRandomFisica = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 10 ORDER BY RANDOM() LIMIT 12") as! [[String : String]]
            
            self.ConsultarExamenesRandomQuimica = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 11 ORDER BY RANDOM() LIMIT 12") as! [[String : String]]
            
            self.ConsultarExamenesRandomBiologia = objDaoIngresos.ejecutarSelect("select * from tblpreguntasmodulo where idmodulo = 12 ORDER BY RANDOM() LIMIT 12") as! [[String : String]]
            
            
            arrayExamenAleatorio = ConsultarExamenesRandomEspa + ConsultarExamenesRandomRazVerbal + ConsultarExamenesRandomHisUniv + ConsultarExamenesRandomHisMex + ConsultarExamenesRandomGeoUniv
                + ConsultarExamenesRandomGeoMex + ConsultarExamenesRandomCivismo + ConsultarExamenesRandomRazMate
                + ConsultarExamenesRandomMatematicas + ConsultarExamenesRandomFisica + ConsultarExamenesRandomQuimica
                + ConsultarExamenesRandomBiologia
            
            print("arrayExamenAleatorio: \(self.arrayExamenAleatorio.count)")
            
            print("arrayDatos: \(self.arrayDatos.count)")
            
        }
        

        
        
    }
    
    func parsingWSAndSyncCategorias(){


        let objDaoIngresos = DataBase()
        
        
        //objDaoIngresos.ejecutarDelete("DELETE FROM tblpreguntasmodulo")
        
        self.arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
        
        print("arrayDatos: \(self.arrayDatos.count)")
        
        if(self.arrayDatos.count<=0){
            
            OperationQueue().addOperation {
                
                //let rutaJson = "http://www.pypsolucionesintegrales.com/ventas/get_examen_free.php"
                
                let rutaJson = "http://www.pypsolucionesintegrales.com/ventas/get_modulos.php"
                
                let urlJson = URL(string: rutaJson)
                // variable metodo post inicia
                
                var request = URLRequest(url: urlJson!)
                request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
                request.httpMethod = "POST"
                let idMateria = "1"
                
                let postString = "mail=\(idMateria)"
                request.httpBody = postString.data(using: .utf8)
                
                // fin variable metodo post
                
                let task = URLSession.shared.dataTask(with: request) { data, response, error in
                    guard let data = data, error == nil else {                                                 // check for fundamental networking error
                        print("error=\(error!)")
                        return
                    }
                    
                    if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {           // check for http errors
                        print("statusCode should be 200, but is \(httpStatus.statusCode)")
                        print("response = \(response!)")
                    }
                    
                    //let responseString = String(data: data, encoding: .utf8)
                    
                    do{
                        if NSString(data:data, encoding: String.Encoding.utf8.rawValue) != nil {
                            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as! [String: AnyObject];
                            
                            for case let result in json["products"] as! [AnyObject] {
                                self.arrayDatosPreguntas.append(result as! [String : String])
                            }
                            
                           // print("arrayDatosPreguntas: \(self.arrayDatosPreguntas)")
                           
                            self.arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM tblpreguntasmodulo") as! [[String : String]]
                            
                            print("arrayDatosOLD: \(self.arrayDatos.count)")
                            
                            print("arrayDatosPreguntas: \(self.arrayDatosPreguntas.count)")
                            
                            if(self.arrayDatos.count<634){
                             
                                for k in 0 ..< self.arrayDatosPreguntas.count{
                                    
                                    print("imaPREG: \(self.arrayDatosPreguntas[k]["imagenpregunta"]!)")
                                    
                                    objDaoIngresos.ejecutarInsert("INSERT INTO tblpreguntasmodulo (idmodulo, pregunta, respuestauno, respuestados, respuestatres, respuestacuatro, imagenpregunta, correcta, tooltip, imagentooltip) VALUES ('\(self.arrayDatosPreguntas[k]["idmodulo"]!)', '\(self.arrayDatosPreguntas[k]["pregunta"]!)', '\(self.arrayDatosPreguntas[k]["respuestauno"]!)', '\(self.arrayDatosPreguntas[k]["respuestados"]!)', '\(self.arrayDatosPreguntas[k]["respuestatres"]!)', '\(self.arrayDatosPreguntas[k]["respuestacuatro"]! )', '\(self.arrayDatosPreguntas[k]["imagenpregunta"]!)', '\(self.arrayDatosPreguntas[k]["correcta"]!)', '\(self.arrayDatosPreguntas[k]["tooltip"]!)', '\(self.arrayDatosPreguntas[k]["imagentooltip"]!)')")
                                    
                                    
                                }
                                
                            }
                            

                            


                            /*  for i in 0  ..< self.arrayCategoriaFormaPago.count  {
                             
                             let tooltip = self.arrayCategoriaFormaPago[i]["tooltip"]!
                             let respuestauno = self.arrayCategoriaFormaPago[i]["respuestauno"]!
                             let imagen = self.arrayCategoriaFormaPago[i]["strImagen"]!
                             
                             
                             print("tipoCate \(tipoCate)")
                             print("nombreCate \(nombreCate)")
                             print("imagen \(imagen)")
                             
                             }*/
                            
                            
                            
                        }
                    }catch{
                        print("Parse JSON failed")
                    }
                    
                    
                    
                }
                

                task.resume()
                
                
            }
            
            
        }
        

    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //clasificacionExamen()
        DispatchQueue.main.async {
            
            do {
                self.refresh()
                OperationQueue.main.addOperation {
                    self.boxView.removeFromSuperview()
                }
            } catch {
                print("error in Concurrent Queue)")
            }
        }
        
        //refresh()
        print("arrayEscuelas \(arrayEscuelas)")
        
        if(arrayEscuelas.count>0){
            
            if(arrayExamenAleatorio.count>0){

                if segue.identifier == "verExamen"{
                    
                    let objVista2 = segue.destination as! ExamenViewController
                    
                    objVista2.arrayPreguntas = arrayExamenAleatorio

                }
                
            }else{
                examenAleatorio()
                
                if segue.identifier == "verExamen"{
                    
                    let objVista2 = segue.destination as! ExamenViewController
                    
                    objVista2.arrayPreguntas = arrayExamenAleatorio
                    
                }
            }
            
        }else{
            
            // create the alert
            let alert = UIAlertController(title: "Atención", message: "¡Antes de comenzar debes seleecionar tus escuelas!", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
            

        }
        
        
    }
    
    //unwind
    @IBAction func volverVistaInfoExamen(unwindSegue: UIStoryboardSegue){
        print("Pintando vista escuelas")
    }


}

