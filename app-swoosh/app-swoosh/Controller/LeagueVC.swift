//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Mohamed Elmowafy on 24/04/2021.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player : Player!
    var desiredLeague = " "

    @IBOutlet var nextButton: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
   
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "Mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
      selectLeague(leagueType: "Womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
       selectLeague(leagueType: "Co-ed")

    }
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
    
}
