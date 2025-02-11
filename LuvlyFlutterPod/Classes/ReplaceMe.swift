import UIKit
import Flutter
import FlutterPluginRegistrant

public class RunEngine {
    lazy var flutterEngine = FlutterEngine(name: "my flutter engine")
    
    public init() {
        flutterEngine.run()
        GeneratedPluginRegistrant.register(with: self.flutterEngine);
    }
    
    public func getInitialController() -> UIViewController {
        FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
    }
    
    public func getController(by route: String) -> UIViewController {
        let viewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        viewController.setInitialRoute(route)
        
        return viewController
    }
}
