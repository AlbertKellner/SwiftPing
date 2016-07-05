import UIKit
import SwiftPing

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor.white()
  }

	func verifyPing() {

		let config:PingConfiguration = PingConfiguration(interval: 1)

		SwiftPing.ping(host: "google.com",
		               configuration: config, queue: DispatchQueue.main) { (ping, error) in
										print(ping)
										print(error)
		}
	}
	
}

