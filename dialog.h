#ifndef DIALOG_H
#define DIALOG_H

#include <QDialog>
#include "imu.h"
namespace Ui {
class Dialog;
}

class Dialog : public QDialog
{
    Q_OBJECT

public:
    CIMU *mpc_imu;

    explicit Dialog(QWidget *parent = 0);
    ~Dialog();


private slots:
    void pushButton_imu_init_clicked();

    void on_pushButton_angle_query_clicked();

private:
    vector<double> imu_euler;
    Ui::Dialog *ui;
};

#endif // DIALOG_H
