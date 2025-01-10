//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

extension ___VARIABLE_ModuleName___ {
	final class Presenter {
		weak var view: ViewInput?
		weak var moduleOutput: ModuleOutput?

		private let router: RouterInput
		private let interactor: InteractorInput

		init(router: RouterInput,
			 interactor: InteractorInput) {
			self.router = router
			self.interactor = interactor
		}
	}
}

extension ___VARIABLE_ModuleName___.Presenter: ___VARIABLE_ModuleName___.ModuleInput {}

extension ___VARIABLE_ModuleName___.Presenter: ___VARIABLE_ModuleName___.ViewOutput {}

extension ___VARIABLE_ModuleName___.Presenter: ___VARIABLE_ModuleName___.InteractorOutput {}
