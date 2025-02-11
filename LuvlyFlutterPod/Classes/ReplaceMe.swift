import UIKit
import Flutter
import FlutterPluginRegistrant

public class RunEngine {
    lazy var flutterEngine = FlutterEngine(name: "my flutter engine")
    
    public init() {
        flutterEngine.run()
        GeneratedPluginRegistrant.register(with: self.flutterEngine);
    }
    
    public func present() -> UIViewController {
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        return flutterViewController
    }
}
