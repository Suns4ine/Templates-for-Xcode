//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

extension ___VARIABLE_ModuleName___ {
	final class ViewController: UIViewController {
		private let output: ViewOutput

		init(output: ViewOutput) {
			self.output = output

			super.init(nibName: nil, bundle: nil)
		}

		@available(*, unavailable)
		required init?(coder aDecoder: NSCoder) {
			return nil
		}
	}
}

extension ___VARIABLE_ModuleName___.ViewController: ___VARIABLE_ModuleName___.ViewInput {}
