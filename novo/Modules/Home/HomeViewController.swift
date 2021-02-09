//
//  InitViewController.swift
//  novo
//
//  Created by Olimpio Junior on 26/01/21.
//

import UIKit


//{} Referred a closure - Title
let titleText: UITextView = {
    let textView = UITextView()
    textView.text = "Formula 1 - Champions"
    textView.font = UIFont.boldSystemFont(ofSize: 20)
    textView.textAlignment = .center
    textView.textColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
    return textView
}()



//{} Referred a closure - Description
let descriptionText: UITextView = {
    let description = UITextView()
    description.text = """
    Since its beginnig in 1950, Fromula 1 has been exhibiting big names in motorsport, here we select all of
    you, come in and check it out!!!
    """
    description.font = UIFont.italicSystemFont(ofSize: 14)
    description.textAlignment = .center
    description.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    return description
}()


let startButton: UIButton = {
    let startButton = UIButton(frame:  CGRect(x: 20, y: 20, width: 30, height: 20))
    startButton.setTitle("Start", for: .normal)
    startButton.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    startButton.titleLabel!.font = UIFont.boldSystemFont(ofSize: 22)
    startButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
    startButton.radius(5)
//    startButton.addTarget(self, action: #selector(self.clickButton(sender:)), for: .touchUpInside)

    return startButton
}()



func clickButton(sender: UIButton){
    
    print("Button Clickado")
    
    
    
}
class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Define color by the box beside  - ColorLiteral
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        

       
        view.addSubview(titleText)
        view.addSubview(descriptionText)
        view.addSubview(startButton)
        setupLogo()
      
        
    }
    
    
    private func   setupLogo(){
        

        
        //add img main
        let imageView = "LogoF1"
        let image = UIImage(named: imageView)
        let imageNew = UIImageView(image: image!)
        imageNew.shadow(radius: 5, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), offset: CGSize(width: 15, height: 15), opacity: 0.5)
       
        view.addSubview(imageNew)
        
     

        //add constraint
        imageNew.translatesAutoresizingMaskIntoConstraints = false
        imageNew.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageNew.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
        imageNew.widthAnchor.constraint(equalToConstant:300).isActive = true
        imageNew.heightAnchor.constraint(equalToConstant: 300).isActive = true
        

        
        //add constraint TextView - Title
        titleText.translatesAutoresizingMaskIntoConstraints = false
        titleText.topAnchor.constraint(equalTo: imageNew.bottomAnchor, constant: 50).isActive = true
        titleText.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        titleText.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        titleText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        //add constraint TextView - Description
        descriptionText.translatesAutoresizingMaskIntoConstraints = false
        descriptionText.topAnchor.constraint(equalTo: imageNew.bottomAnchor, constant: 100).isActive = true
        descriptionText.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionText.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        
        //add constraint UIButton
        startButton.translatesAutoresizingMaskIntoConstraints = false
        startButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 650).isActive = true
        startButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        startButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        startButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -120).isActive = true
        
    
    
    }
}

