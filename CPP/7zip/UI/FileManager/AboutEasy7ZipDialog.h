// AboutEasy7ZipDialog.h
 
#ifndef __ABOUT_EASY7ZIP_DIALOG_H
#define __ABOUT_EASY7ZIP_DIALOG_H

#include "AboutEasy7ZipDialogRes.h"
#include "../../../Windows/Control/Dialog.h"

class CAboutEasy7ZipDialog: public NWindows::NControl::CModalDialog
{
public:
  virtual bool OnInit() Z7_override;
  virtual void OnHelp() Z7_override;
  virtual bool OnButtonClicked(unsigned buttonID, HWND buttonHWND) Z7_override;
  INT_PTR Create(HWND wndParent = 0) { return CModalDialog::Create(IDD_ABOUT_EASY_7ZIP, wndParent); }
};

#endif
