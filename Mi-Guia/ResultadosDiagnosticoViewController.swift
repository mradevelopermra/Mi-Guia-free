//
//  ResultadosDiagnosticoViewController.swift
//  Mi-Guia
//
//  Created by Mariano Rodriguez Abarca on 2/6/19.
//  Copyright © 2019 Mariano Rodriguez Abarca. All rights reserved.
//

import UIKit

class ResultadosDiagnosticoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var parametroCuestionario:String = ""
    
    @IBOutlet weak var tablaResultados: UITableView!
    
    var tipoHerramienta: [String] = []
    var imagenesHerramienta: [String] = []
    var nombreHerramienta:String = ""
    
    var resultadosPorMateria:[Int] = []
    var arrayDatos:[[String:String]] = []
    var idModulo: [String] = []
    var preguntasExamen: [String] = []
    
    var contador:Int = 0
    var contadorMalas:Int = 0

    
    @IBOutlet weak var leyendaDiagnostico: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leyendaDiagnostico.textColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
        
        UINavigationBar.appearance().barTintColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.0)]
        
        
        
        idModulo = [
            "1",
            "2",
            "3",
            "4",
            "5",
            "6",
            "7",
            "8",
            "9",
            "10",
            "11",
            "12"
            // "Calculadora"
        ]
        
        preguntasExamen = [
            "12",
            "16",
            "6",
            "6",
            "6",
            "6",
            "12",
            "16",
            "12",
            "12",
            "12",
            "12"
        ]
        
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
            "espanol.png",
            "razonamientoverbal.png",
            "historiafinal.png",
            "historiademexico.png",
            "geografiauniversal.png",
            "geografiademexico.png",
            "civismofinal.png",
            "razonamientomatematicofinal.png",
            "matematicasdos.png",
            "fisicafinal.png",
            "quimica.png",
            "biologia.png"
            //    "calc.png"
        ]
        
        DataBase.checkAndCreateDatabase()
        
        let objDao = DataBase()
        
        
        //for i in 0  ..< arrayDatos.count  {
            
            for k in 0  ..< idModulo.count  {
                
                contador = 0
                
                arrayDatos = objDao.ejecutarSelect("SELECT * FROM examenresultados where materia =\(idModulo[k])") as! [[String : String]]
                
                print("arrayDatos \(arrayDatos)")
                
                for i in 0  ..< arrayDatos.count  {
                    if(arrayDatos[i]["aciertos"] == "1"){
                        contador = contador + 1
                    }
                    if(arrayDatos[i]["aciertos"] == "0"){
                        contadorMalas = contadorMalas + 0
                    }
                }
                if(contador>0){
                        resultadosPorMateria.append(contador)
                }
                if(contadorMalas==0 && contador==0){
                    resultadosPorMateria.append(contadorMalas)
                }
             /*   if(idModulo[k]=="1" && contador>6){
                    preguntasExamen.append("25 preguntas")
                }*/
                
            }

        //}
        
        if(arrayDatos.count<=0){
            leyendaDiagnostico.text = "No hay resultados, primero debes realizar tu examen simulacro."
            leyendaDiagnostico.font = UIFont(name: leyendaDiagnostico.font.fontName, size: 12)
            
        }else{
            leyendaDiagnostico.font = UIFont(name: leyendaDiagnostico.font.fontName, size: 17)
            
            }
        
        reloadTabla()

            print("resultadosPorMateria \(resultadosPorMateria)")
        
        
        //materia

        // Do any additional setup after loading the view.
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

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tipoHerramienta.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaResultados", for: indexPath) as! ResultadosDiagnosticoTableViewCell
        
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 5
        let width = CGFloat(2.0)
        cell.layer.borderWidth = 1
        cell.layer.shadowOffset = CGSize(width: -1, height: 1)
        cell.layer.frame = CGRect(x: 0, y: cell.frame.size.height - width, width:  cell.frame.size.width, height: cell.frame.size.height)
        let borderColor: UIColor = UIColor(red:0.70, green:0.45, blue:0.27, alpha:1.0)
        cell.layer.borderColor = borderColor.cgColor
        
        //color a los datos
        cell.textLabel?.textColor = borderColor
        
        let nombreMateria = tipoHerramienta[indexPath.row]
        
        var aciertos = ""
        
        if(resultadosPorMateria.count>0){
            aciertos = "Obtuviste: \(resultadosPorMateria[indexPath.row]) aciertos de \(preguntasExamen[indexPath.row]) preguntas"
        }
        
        
        // Configure the cell...
        let nombreCategoria = nombreMateria
        
        let imagen = imagenesHerramienta[indexPath.row]
        
            cell.imagenMateria?.image = UIImage(named: imagen as String)
            cell.nombreMateria?.numberOfLines = 0
            cell.nombreMateria?.text = nombreCategoria as String?
        
            cell.resultadoMateria?.numberOfLines = 0
            cell.resultadoMateria?.text = aciertos
        
        return cell
    }
    
    func reloadTabla(){
        self.tablaResultados.reloadData()
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
