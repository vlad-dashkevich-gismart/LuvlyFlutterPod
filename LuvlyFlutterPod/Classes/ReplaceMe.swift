import UIKit
import Flutter
import FlutterPluginRegistrant

public class RunEngine: NSObject {
    private var eventSink: FlutterEventSink?
    
    public override init() {
        super.init()
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
        
        let eventChannel = FlutterEventChannel(name: "com.ios/greetingPage", binaryMessenger: viewController.binaryMessenger)
        eventChannel.setStreamHandler(self)
        
        return viewController
    }
    
    public func sendMessage(_ text: String) {
        eventSink?(text)
    }
}

extension RunEngine: FlutterStreamHandler {
    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        self.eventSink = events
        
        return nil
    }
    
    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        eventSink = nil
        return nil
    }
}
