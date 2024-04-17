#include "mainwindow.h"
#include "./ui_mainwindow.h"
#include <QVBoxLayout>
#include <QApplication>
#include <QKeyEvent>

#ifdef Q_OS_WIN
#include "keyPress/keyPressWin.h"
#elif defined(Q_OS_MAC)
#include "keyPress/keyPressMac.h"
#include "other/aboutDialog.h"

#endif

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
  ui->setupUi(this);

  this->setWindowTitle("Key Input Tool - github.com/2042Third/keys-input");

  QMenu *helpMenu = menuBar()->addMenu(tr("&Help"));
  QAction *aboutAction = helpMenu->addAction(tr("&About"));
  connect(aboutAction, &QAction::triggered, this, &MainWindow::showAboutDialog);

  // Create and configure the input field
  inputField = new QLineEdit(this);

  // Create and configure the button
  button = new QPushButton("Simulate Input", this);
  button->setStyleSheet("background-color: green");
  connect(button, &QPushButton::clicked, this, &MainWindow::onButtonClicked);

  // Create and configure the input list
  inputList = new QListWidget(this);

  // Create and configure the countdown timer
  countdownTimer = new QTimer(this);
  countdownTimer->setInterval(1000);
  connect(countdownTimer, &QTimer::timeout, this, &MainWindow::onCountdownTimeout);

  // Create a layout and add the widgets
  QVBoxLayout *layout = new QVBoxLayout;
  layout->addWidget(inputField);
  layout->addWidget(button);
  layout->addWidget(inputList);

  // Set the layout as the central widget
  QWidget *centralWidget = new QWidget(this);
  centralWidget->setLayout(layout);
  setCentralWidget(centralWidget);
}

MainWindow::~MainWindow()
{
  delete ui;
}

void MainWindow::onButtonClicked()
{
  QString input = inputField->text();
  if (!input.isEmpty()) {
    button->setEnabled(false);
    button->setStyleSheet("background-color: gray");
    inputField->clear();
    inputList->addItem(input);
    countdownValue = 5;
    button->setText(QString("Simulating in %1s").arg(countdownValue));
    countdownTimer->start();
  }
}

void MainWindow::onCountdownTimeout()
{
  countdownValue--;
  button->setText(QString("Simulating in %1s").arg(countdownValue));
  if (countdownValue == 0) {
    countdownTimer->stop();
    button->setEnabled(true);
    button->setStyleSheet("background-color: green");
    button->setText("Simulate Input");
    QString input = inputList->item(inputList->count() - 1)->text();
    KeyPress::simulateKeyPresses(input);
  }
}

void MainWindow::showAboutDialog() {
  AboutDialog dialog(this);
  dialog.exec();  // Use exec() for modal dialogs
}
