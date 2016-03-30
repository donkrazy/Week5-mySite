package com.estsoft.mysite.web.action.guestbook;

import com.estsoft.web.action.Action;
import com.estsoft.web.action.ActionFactory;

public class GuestbookActionFactory extends ActionFactory {

	@Override
	public Action getAction(String actionName) {
		Action action = null;
		if ("addform".equals(actionName)) {
//			action = new AddFormAction();
		} else if ("add".equals(actionName)) {
//			action = new AddAction();
		} else if ("addsuccess".equals(actionName)) {
//			action = new AddSuccessAction();
		} else if ("deleteform".equals(actionName)) {
			action = new DeleteFormAction();
		} else if ("delete".equals(actionName)) {
//			action = new DeleteAction();
		} else if ("addsuccess".equals(actionName)) {
//			action = new DeleteSuccessAction();
		} else {
			action = new DefaultAction();
		}
		return action;
	}

}
