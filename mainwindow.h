#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QLineEdit>
#include <QPushButton>
#include <QListWidget>
#include <QTimer>

QT_BEGIN_NAMESPACE
namespace Ui {
class MainWindow;
}
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
  MainWindow(QWidget *parent = nullptr);
  ~MainWindow();

private:
  Ui::MainWindow *ui;
  QLineEdit *inputField;
  QPushButton *button;
  QListWidget *inputList;
  QTimer *countdownTimer;
  int countdownValue;

private slots:
  void onButtonClicked();
  void onCountdownTimeout();
  void showAboutDialog();

};
#endif // MAINWINDOW_H
