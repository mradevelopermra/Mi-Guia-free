//
//  FirstViewController.swift
//  Mi-Guia
//
//  Created by Mariano Rodriguez Abarca on 14/05/18.
//  Copyright © 2018 Mariano Rodriguez Abarca. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tablaMaterias: UITableView!
    var datoRecibido:String?
    
    var tipoHerramienta: [String] = []
    var imagenesHerramienta: [String] = []
    var nombreHerramienta:String = ""
    
    var arrayDatos:[[String:AnyObject]] = []
    
    var asignatura:String?
    var preguntasRealizadas:String?
    var resultadoFinal:String?
    var fecha:String?
    
    var arrayEscuelas:[[String:String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINavigationBar.appearance().barTintColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)]
        
        // Do any additional setup after loading the view, typically from a nib.
        tipoHerramienta = [
            "Español",
            "Razonamiento verbal",
            "Historia universal",
            "Historia de Mexico",
            "Geografía universal",
            "Geografía de Mexico",
            "Civismo",
            "Razonamiento matemático",
            "Matemáticas",
            "Física",
            "Química",
            "Biología"
            // "Calculadora"
        ]
        
        
        imagenesHerramienta = [
                  "espanol_ios.png",
               "razon_verbal_ios.png",
               "historia_universal_ios.png",
               "historia_mex_ios.png",
               "geografia_universal_ios.png",
               "geografiamex_ios.png",
               "civismo_ios.png",
               "razonmatematico_ios.png",
               "matematicas_ios.png",
               "fisica_ios.png",
               "quimica_ios.png",
               "biologia_ios.png"
            //    "calc.png"
        ]
        
       /*  asignatura = "Matematicas"
         preguntasRealizadas = "10"
         resultadoFinal = "3"
         fecha = "2018-05-20"
        
        DataBase.checkAndCreateDatabase()
    
        let objDao = DataBase()
        
        objDao.ejecutarInsert("INSERT INTO materia (nombreModulo, totalPreguntas, fecha, aciertos) VALUES ('\(asignatura!)', '\(preguntasRealizadas!)', '\(fecha!)', '\(resultadoFinal!)')")
        
        arrayDatos = objDao.ejecutarSelect("SELECT * FROM materia") as! [[String : AnyObject]]*/
        
        // arrayDatos = objDao.ejecutarSelect("SELECT * FROM categorias") as! [[String : AnyObject]]
        
        //    concpetoIngreso = arrayDatos.firstObject as! [String]
        //   imagenes = arrayDatos.lastObject as! [String]
        
        print("categoria_platos: \(arrayDatos.count)")
         print("categoria_platos: \(arrayDatos)")
        

        refresh()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        refresh()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tipoHerramienta.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "materia", for: indexPath) as! MateriaTableViewCell
        
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 5
        let width = CGFloat(2.0)
        cell.layer.borderWidth = 1
        cell.layer.shadowOffset = CGSize(width: -1, height: 1)
        cell.layer.frame = CGRect(x: 0, y: cell.frame.size.height - width, width:  cell.frame.size.width, height: cell.frame.size.height)
        let borderColor: UIColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
        cell.layer.borderColor = borderColor.cgColor
        
        //color a los datos
        cell.nombreMateria.textColor = borderColor
        
        // Configure the cell...
        let nombreCategoria = tipoHerramienta[indexPath.row]
        let imagen = imagenesHerramienta[indexPath.row]

        cell.nombreMateria.text = nombreCategoria
        cell.imagenMateria.image = UIImage(named: imagen as String)
        
        
        
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nombreHerramienta = tipoHerramienta[indexPath.row]
        
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Español" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "cuestionario",
                             sender: self)
            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Razonamiento verbal" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "cuestionario",
                             sender: self)
            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Historia universal" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "cuestionario",
                             sender: self)
            }
            
        }
        
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Historia de Mexico" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "cuestionario",
                             sender: self)
            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Geografía universal" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "cuestionario",
                             sender: self)
            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Geografía de Mexico" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "cuestionario",
                             sender: self)
            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Civismo" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "cuestionario",
                             sender: self)
            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Razonamiento matemático" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "cuestionario",
                             sender: self)
            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Matemáticas" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "cuestionario",
                             sender: self)
            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Física" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "cuestionario",
                             sender: self)
            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Química" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "cuestionario",
                             sender: self)
            }
            
        }
        if let _ = tableView.cellForRow(at: indexPath) {
            if nombreHerramienta == "Biología" {
                datoRecibido = nombreHerramienta
                performSegue(withIdentifier: "cuestionario",
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
    
    func refresh(){
        tipoHerramienta = [
            "Español",
            "Razonamiento verbal",
            "Historia universal",
            "Historia de Mexico",
            "Geografía universal",
            "Geografía de Mexico",
            "Civismo",
            "Razonamiento matemático",
            "Matemáticas",
            "Física",
            "Química",
            "Biología"
            // "Calculadora"
        ]
        
        
        imagenesHerramienta = [
            "espanol_ios.png",
             "razon_verbal_ios.png",
             "historia_universal_ios.png",
             "historia_mex_ios.png",
             "geografia_universal_ios.png",
             "geografiamex_ios.png",
             "civismo_ios.png",
             "razonmatematico_ios.png",
             "matematicas_ios.png",
             "fisica_ios.png",
             "quimica_ios.png",
             "biologia_ios.png"
            //    "calc.png"
        ]
        
        
        self.tablaMaterias.reloadData()
        //self.refreshControl.endRefreshing()
        
        let objDaoIngresos = DataBase()
        
        arrayEscuelas = objDaoIngresos.ejecutarSelect("SELECT * FROM opcionesescuelas") as! [[String : String]]
        
    }
    
    

    /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
     
     
     if nombreHerramienta ==   "Ahorrar para Objetivos"{
     
     performSegue(withIdentifier: "muestraAhorros",
     sender: self)
     
     /*     if var indexPath = opcionesHerramientas.indexPathForSelectedRow{
     let objIngreso = self.tipoHerramienta[indexPath.row]
     
     let objDestinoDetalle = segue.destination as! ActIngresosViewController
     
     }*/
     }
     
     
     
     /*     if segue.identifier ==   "actGastos"{
     
     performSegue(withIdentifier: "actGastos",
     sender: self)
     
     /*     if var indexPath = opcionesHerramientas.indexPathForSelectedRow{
     let objIngreso = self.tipoHerramienta[indexPath.row]
     
     let objDestinoDetalle = segue.destination as! GastosActualizaViewController
     
     }*/
     }
     
     
     
     if segue.identifier ==   "actGastos"{
     
     performSegue(withIdentifier: "actGastos",
     sender: self)
     
     /*  if var indexPath = opcionesHerramientas.indexPathForSelectedRow{
     let objIngreso = self.tipoHerramienta[indexPath.row]
     
     let objDestinoDetalle = segue.destination as! GastosActualizaViewController
     
     }*/
     }*/
     
     
     
     
     
     
     /*     if segue.identifier ==   "gastodetallle"{
     
     if var indexPath = movTable.indexPathForSelectedRow{
     let objIngreso = self.arrayMov[indexPath.row]
     
     let objDestinoDetalle = segue.destination as! GastosActualizaViewController
     objDestinoDetalle.paramtro2 = objIngreso
     }
     }*/
     }*/
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    //unwind
    @IBAction func volverVistaMateriasViewController(unwindSegue: UIStoryboardSegue){
        refresh()
        print("Pintando vista escuelas")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        print("arrayEscuelas \(arrayEscuelas)")
        
        if(arrayEscuelas.count>0){
            if segue.identifier ==   "cuestionario"{
                
                if var indexPath = tablaMaterias.indexPathForSelectedRow{
                    let objMateria = self.tipoHerramienta[indexPath.row]
                    print("objMateria: \(objMateria)")
                    
                    let objDestinoDetalle = segue.destination as! CuestionarioViewController
                    objDestinoDetalle.parametroCuestionario = objMateria
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

}

