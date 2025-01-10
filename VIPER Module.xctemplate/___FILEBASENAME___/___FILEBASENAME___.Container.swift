//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

extension ___VARIABLE_ModuleName___ {
	final class Container {
		let input: ModuleInput
		let viewController: UIViewController
		private(set) weak var router: RouterInput?

		@MainActor
		class func assemble(with context: Context? = nil) -> Container {
			let router = Router()
			let interactor = Interactor()
			let presenter = Presenter(router: router, interactor: interactor)
			let viewController = ViewController(output: presenter)

			presenter.view = viewController
			presenter.moduleOutput = context?.moduleOutput

			interactor.output = presenter

			router.controller = viewController

			return Container(view: viewController, input: presenter, router: router)
		}

		private init(view: UIViewController,
					 input: ModuleInput,
					 router: RouterInput) {
			self.viewController = view
			self.input = input
			self.router = router
		}
	}
}

extension ___VARIABLE_ModuleName___ {
	struct Context {
		weak var moduleOutput: ModuleOutput?
	}
}
