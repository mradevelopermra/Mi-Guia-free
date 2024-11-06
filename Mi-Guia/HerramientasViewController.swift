//
//  HerramientasViewController.swift
//  Mi-Guia
//
//  Created by Mariano Rodriguez Abarca on 1/28/19.
//  Copyright © 2019 Mariano Rodriguez Abarca. All rights reserved.
//

import UIKit

class HerramientasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tipoHerramienta: [String] = []
    var imagenesHerramienta: [String] = []
    
    var nombreHerramienta:String = ""
    
    var datoRecibido:String = ""
    
    var arrayEscuelas:[[String:String]] = []
    
    var arrayDatos:[[String:String]] = []
    
    var arrayHistoricos:[[String:String]] = []
    
    @IBOutlet weak var tablaHerramientas: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tipoHerramienta.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "herramienta", for: indexPath) as! HerramientasTableViewCell
        
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 5
        let width = CGFloat(2.0)
        cell.layer.borderWidth = 1
        cell.layer.shadowOffset = CGSize(width: -1, height: 1)
        cell.layer.frame = CGRect(x: 0, y: cell.frame.size.height - width, width:  cell.frame.size.width, height: cell.frame.size.height)
        let borderColor: UIColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
        cell.layer.borderColor = borderColor.cgColor
        
        cell.sizeToFit()
        cell.layoutIfNeeded()
        
        //color a los datos
        cell.nomHerramienta.textColor = borderColor
        
        // Configure the cell...
        let nombreCategoria = tipoHerramienta[indexPath.row]
        let imagen = imagenesHerramienta[indexPath.row]
        
        cell.nomHerramienta.text = nombreCategoria
        cell.imaHerramienta.image = UIImage(named: imagen as String)
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nombreHerramienta = tipoHerramienta[indexPath.row]
        
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "1.- Clases conceptuales" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "classesConceptuales",
                             sender: self)
            }
            
        }
        
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "2.- Estudia por materia" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "materiasEstudiar",
                             sender: self)
            }
            
        }
        
        
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "3.- Examen simulacro" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "ressexamensim",
                             sender: self)
            }
            
        }
        
        
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Resultado Examen Simulacro" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "resexamsimu",
                             sender: self)
                
                //alertaVersionPro()
            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Mi Diagnostico" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "midiagnostico",
                             sender: self)
                
                //alertaVersionPro()
            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Calificaciòn escuela" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "califEscuelas",
                             sender: self)
            }
            
        }
        
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Resultados Históricos" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "reshistoricosExamnen",
                             sender: self)
            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Reportar un problema" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "reportar",
                             sender: self)
            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Resultados por Materia" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "resMateria",
                             sender: self)
            }
            
        }
        

        /*  if let _ = tableView.cellForRow(at: indexPath) {
         if nombreHerramienta == "Calculadora" {
         performSegue(withIdentifier: "",
         sender: self)
         }
         
         }*/
    }
    
    func alertaVersionPro(){
        
        let alert = UIAlertController(title: "Atención", message: "¡Para ver esta herramienta es necesario obtener la versión PRO!", preferredStyle: UIAlertController.Style.alert)

                         alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

                         self.present(alert, animated: true, completion: nil)
        
    }
    

    
    var preguntasRealizadas:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        UINavigationBar.appearance().barTintColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)]
        
        tablaHerramientas.reloadData()
        
        tipoHerramienta = [
                "1.- Clases conceptuales",
                "2.- Estudia por materia",
                 "3.- Examen simulacro",
                 "Herramientas",
                // "Calificaciòn escuela",
                 "Resultados Históricos",
                 "Resultados por Materia",
                 "Resultado Examen Simulacro",
                 "Mi Diagnostico",
                 "Reportar un problema"
                 // "Calculadora"
             ]
             
             
             imagenesHerramienta = [
                "play.png",
                "quimica_ios.png",
                 "examen_simulacro_ios.png",
                 "",
                 //"mi_puntaje_ios.png",
                 "resultados_historicos_ios.png",
                 "resultados_materia_ios.png",
                 "resultado_es_ios.png",
                 "mi_diagnostico_ios.png",
                 "reportar_problema_ios.png"
                 //    "calc.png"
             ]
        
        
        let objDaoIngresos = DataBase()
        
        arrayEscuelas = objDaoIngresos.ejecutarSelect("SELECT * FROM opcionesescuelas") as! [[String : String]]
        
        arrayDatos = objDaoIngresos.ejecutarSelect("SELECT * FROM examenresultados") as! [[String : String]]
        
        arrayHistoricos = objDaoIngresos.ejecutarSelect("SELECT * FROM examen") as! [[String : String]]
        
        print("arrayDatos \(arrayDatos)")

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        refresh()
        
    }
    
    func refresh(){
        
        
        self.tablaHerramientas.reloadData()
        //self.refreshControl.endRefreshing()
        
        let objDaoIngresos = DataBase()
        
        arrayEscuelas = objDaoIngresos.ejecutarSelect("SELECT * FROM opcionesescuelas") as! [[String : String]]
        
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print("arrayEscuelas \(arrayEscuelas.count)")
        
        if segue.identifier == "ressexamensim"{
            
            if var indexPath = tablaHerramientas.indexPathForSelectedRow{
                
                let objMateria = self.tipoHerramienta[indexPath.row]
                print("objMateria: \(objMateria)")
                
                let numPreguntas = "120"
                let objVista2 = segue.destination as! SecondViewController
                
                objVista2.preguntasRealizadas = numPreguntas
                
            }

        }
        
        if segue.identifier == "resMateria"{
            
            if var indexPath = tablaHerramientas.indexPathForSelectedRow{
                
                let objMateria = self.tipoHerramienta[indexPath.row]
                print("objMateria: \(objMateria)")
                
                let numPreguntas = "120"
                let objVista2 = segue.destination as! ResMateriaViewController
                
                objVista2.preguntasRealizadas = numPreguntas
                
            }
            
            
        }
        
        
        if segue.identifier == "reportar"{
            
            if var indexPath = tablaHerramientas.indexPathForSelectedRow{
                let objMateria = self.tipoHerramienta[indexPath.row]
                print("objMateria: \(objMateria)")
                
                let numPreguntas = "128"
                let objVista2 = segue.destination as! ReportarProblemaViewController
                
                objVista2.preguntasRealizadas = numPreguntas
                
            }
            
            
        }

                
                if segue.identifier == "resexamsimu"{
                    
                 //   if(arrayEscuelas.count>0){
                        
                     //  if(arrayDatos.count==128){
                    
                    if var indexPath = tablaHerramientas.indexPathForSelectedRow{
                        let objMateria = self.tipoHerramienta[indexPath.row]
                        print("objMateria: \(objMateria)")
                        
                        let objDestinoDetalle = segue.destination as! DiagnosticoExamenViewController
                        objDestinoDetalle.parametroCuestionario = objMateria
                    }
                            
                       /* }else{
                            
                            // create the alert
                            let alert = UIAlertController(title: "Atención", message: "¡Para ver tu resultado del examen simulacro, primero realiza el examen simulacro!", preferredStyle: UIAlertController.Style.alert)
                            
                            // add an action (button)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                            
                            // show the alert
                            self.present(alert, animated: true, completion: nil)
                            tablaHerramientas.reloadData()
                        }*/
                        
                        
                        
                   /* }else{
                        
                        // create the alert
                        let alert = UIAlertController(title: "Atención", message: "¡Antes de comenzar debes seleecionar tus escuelas!", preferredStyle: UIAlertController.Style.alert)
                        
                        // add an action (button)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                        
                        // show the alert
                        self.present(alert, animated: true, completion: nil)
                        tablaHerramientas.reloadData()
                    }*/
                            
                }
                
                if segue.identifier == "midiagnostico"{
                    
                   // if(arrayEscuelas.count>0){
                        
                    //    if(arrayDatos.count==128){
                    
                    if var indexPath = tablaHerramientas.indexPathForSelectedRow{
                        let objMateria = self.tipoHerramienta[indexPath.row]
                        print("objMateria: \(objMateria)")
                        
                        let objDestinoDetalle = segue.destination as! ResultadosDiagnosticoViewController
                        objDestinoDetalle.parametroCuestionario = objMateria
                    }
                            
                       /* }else{
                            
                            // create the alert
                            let alert = UIAlertController(title: "Atención", message: "¡Para ver tu diagnóstico, primero realiza el examen simulacro!", preferredStyle: UIAlertController.Style.alert)
                            
                            // add an action (button)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                            
                            // show the alert
                            self.present(alert, animated: true, completion: nil)
                            tablaHerramientas.reloadData()
                        }*/
                        
                        
                        
                   /* }else{
                        
                        // create the alert
                        let alert = UIAlertController(title: "Atención", message: "¡Antes de comenzar debes seleecionar tus escuelas!", preferredStyle: UIAlertController.Style.alert)
                        
                        // add an action (button)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                        
                        // show the alert
                        self.present(alert, animated: true, completion: nil)
                        tablaHerramientas.reloadData()
                    }*/
                }
                
                if segue.identifier == "califEscuelas"{
                    
                   // if(arrayEscuelas.count>0){
                        
                        //if(arrayDatos.count==128){
                    
                    if var indexPath = tablaHerramientas.indexPathForSelectedRow{
                        let objMateria = self.tipoHerramienta[indexPath.row]
                        print("objMateria: \(objMateria)")
                        
                        let objDestinoDetalle = segue.destination as! CalificacionEscuelaViewController
                        objDestinoDetalle.parametroCuestionario = objMateria
                    }
                            
                      /*  }else{
                            
                            // create the alert
                            let alert = UIAlertController(title: "Atención", message: "¡Para ver tu calificación escuela, primero realiza el examen simulacro!", preferredStyle: UIAlertController.Style.alert)
                            
                            // add an action (button)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                            
                            // show the alert
                            self.present(alert, animated: true, completion: nil)
                            tablaHerramientas.reloadData()
                        }*/
                        
                        
                        
                   /* }else{
                        
                        // create the alert
                        let alert = UIAlertController(title: "Atención", message: "¡Antes de comenzar debes seleecionar tus escuelas!", preferredStyle: UIAlertController.Style.alert)
                        
                        // add an action (button)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                        
                        // show the alert
                        self.present(alert, animated: true, completion: nil)
                        tablaHerramientas.reloadData()
                    }*/
                }
                
                if segue.identifier == "reshistoricosExamnen"{
                    
                   // if(arrayEscuelas.count>0){
                        
                       //  if(arrayHistoricos.count>0){
                    
                    if var indexPath = tablaHerramientas.indexPathForSelectedRow{
                        let objMateria = self.tipoHerramienta[indexPath.row]
                        print("objMateria: \(objMateria)")
                        
                        let correctasFinalTotal = "999"
                        let numPreguntas = "999"
                        let objVista2 = segue.destination as! ResulExamenViewController
                       
                        objVista2.preguntasRealizadas = numPreguntas
                        objVista2.resultadoFinal = correctasFinalTotal
                    }
                            
                       /* }else{
                            
                            // create the alert
                            let alert = UIAlertController(title: "Atención", message: "¡Para ver tus resultados históricos, primero realiza el examen simulacro!", preferredStyle: UIAlertController.Style.alert)
                            
                            // add an action (button)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                            
                            // show the alert
                            self.present(alert, animated: true, completion: nil)
                            tablaHerramientas.reloadData()
                        }*/
                        
                        
                        
                  /*  }else{
                        
                        // create the alert
                        let alert = UIAlertController(title: "Atención", message: "¡Antes de comenzar debes seleecionar tus escuelas!", preferredStyle: UIAlertController.Style.alert)
                        
                        // add an action (button)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                        //     alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                        
                        // show the alert
                        self.present(alert, animated: true, completion: nil)
                        tablaHerramientas.reloadData()
                    }*/
                    

                }
                

        
        

        
        
    }
    
    //unwind
    @IBAction func volverVistaHerramientasViewController(unwindSegue: UIStoryboardSegue){
        refresh()
        tablaHerramientas.reloadData()
        print("Pintando vista escuelas")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        refresh()
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
