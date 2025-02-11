import UIKit
import Flutter
import FlutterPluginRegistrant

public class RunEngine {
//    lazy var flutterEngine = FlutterEngine(name: "my flutter engine")
    
    public init() {
//        flutterEngine.run()
//        GeneratedPluginRegistrant.register(with: self.flutterEngine);
    }
    
    public func getInitialController() -> UIViewController {
        let flutterEngine = FlutterEngine(name: "my_engine_2")
        flutterEngine.run()
        let viewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        
        return viewController
    }
    
    public func getController(by route: String) -> UIViewController {
        let flutterEngine = FlutterEngine(name: "my_engine")
        flutterEngine.run(withEntrypoint: nil, initialRoute: "/greeting")
        let viewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        viewController.setInitialRoute(route)
        
        return viewController
    }
}
