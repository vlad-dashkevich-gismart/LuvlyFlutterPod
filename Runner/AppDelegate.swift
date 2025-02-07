import Flutter
import UIKit
import Eureka

public class RunFlutterViewController {
    private let flutterEngine = FlutterEngine(name: "test")
    
    public init() {}
    
    public func get() -> UIViewController {
        flutterEngine.run()
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        
        return flutterViewController
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var viewController: UIViewController?
    var window: UIWindow?
    
    lazy var flutterEngine = FlutterEngine(name: "test")
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        window = UIWindow()
        
        window?.rootViewController = RunFlutterViewController().get()
        window?.makeKeyAndVisible()
        
//        GeneratedPluginRegistrant.register(with: self)
        
//        GLCombineCocoa.shared.configure()
//        
//        viewController = UIViewController()
//        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
//            self.window.rootViewController?.present(self.viewController!, animated: true)
//        }
//        
//        viewController?.viewDidLoadPublisher
//            .sink {
//                print("Super puper")
//            }.store(untilDeallocating: viewController!)
        
        return true
    }
}
