# HQHud
Swift Hud 最简菊花转 

```Swift
extension UIView {
    
    func showHud(isCovered: Bool = false) {
        
        self.hideHud()
        let frame = CGRect(x: 0, y: 0, width: 78, height: 78)
        
        let backVFrame = isCovered == false ? frame : self.frame
        let backV = UIView(frame: backVFrame)
        backV.center = self.center
        backV.tag = 8421
        self.addSubview(backV)
        
        let hudV = UIView(frame: frame)
        hudV.center = CGPoint(x: backV.frame.width/2, y: backV.frame.height/2)
        hudV.layer.cornerRadius = 12
        hudV.backgroundColor = UIColor(red:0, green:0, blue:0, alpha: 0.8)
        backV.addSubview(hudV)
        
        let indicatorView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.whiteLarge)
        indicatorView.frame = CGRect(x: 21, y: 21, width: 36, height: 36)
        indicatorView.startAnimating()
        hudV.addSubview(indicatorView)
        
        hudV.alpha = 0.0
        UIView.animate(withDuration: 0.2, animations: {
            hudV.alpha = 1
        })
    }
    
    func hideHud() {
        
        let backV = self.viewWithTag(8421)
        guard let backv = backV else { return }
        backv.removeFromSuperview()
    }
    
}
```

![](https://github.com/kHeQing/HQHud/blob/master/01.png)
![](https://github.com/kHeQing/HQHud/blob/master/02.png)