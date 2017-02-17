#include "dialog.h"
#include "ui_dialog.h"

Dialog::Dialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::Dialog)
{
    ui->setupUi(this);

    connect(ui->pushButton_imu_init,SIGNAL(clicked()),this,SLOT(pushButton_imu_init_clicked()));

    mpc_imu = new CIMU;
}

Dialog::~Dialog()
{
    delete ui;
}

void Dialog::pushButton_imu_init_clicked()
{
    string imu_port = ui->lineEdit_port->text().toStdString();

    mpc_imu->IMUInit(imu_port);
}

void Dialog::on_pushButton_angle_query_clicked()
{
    imu_euler = mpc_imu->GetEulerAngles();

    ui->lineEdit_roll->setText(QString::fromStdString(std::to_string(imu_euler.at(0)/3.141592*180.0)));
    ui->lineEdit_pitch->setText(QString::fromStdString(std::to_string(imu_euler.at(1)/3.141592*180.0)));
    ui->lineEdit_yaw->setText(QString::fromStdString(std::to_string(imu_euler.at(2)/3.141592*180.0)));
    Sleep(10);
}
