//---------------------------------------------------------------------------
#ifndef startdlgH
#define startdlgH
//---------------------------------------------------------------------------
#include <QDialog>
#include "ui_startdlg.h"

#include "rtklib.h"
class QShowEvent;
//---------------------------------------------------------------------------
class StartDialog : public QDialog, private Ui::StartDialog
{
    Q_OBJECT
protected:
    void showEvent(QShowEvent*);
public slots:
    void BtnOkClick();
private:
public:
	gtime_t Time;
    StartDialog(QWidget *parent=0);
};
//---------------------------------------------------------------------------
#endif
