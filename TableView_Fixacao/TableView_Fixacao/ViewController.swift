//
//  ViewController.swift
//  TableView_Fixacao
//
//  Created by Usuário Convidado on 19/08/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var nomeJogos = ["Horizon Zero Dawn", "Uncharted 4"]
    var imgsJogos = ["hor.jpeg", "unc.jpeg"]
    var estudioJogos = ["Estudio 1", "Estudio 2"]
    @IBOutlet weak var minhaTabelaView: UITableView! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nomeJogos.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        celula.textLabel?.text = nomeJogos[indexPath.row]
        celula.imageView?.image = UIImage(named: imgsJogos[indexPath.row])
        celula.detailTextLabel?.text = estudioJogos[indexPath.row]
        return celula
    }

}

