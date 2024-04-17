//
// Created by Mike Yang on 2024/4/17.
//

#include "aboutDialog.h"

AboutDialog::AboutDialog(QWidget *parent) : QDialog(parent)
{
  setWindowTitle("About");

  QLabel *label = new QLabel("About Key Input Tool \n https://github.com/2042Third/keys-input \nVersion 1.0\n© 2024 Yi Yang", this);
  QPushButton *closeButton = new QPushButton("Close", this);

  QVBoxLayout *layout = new QVBoxLayout(this);
  layout->addWidget(label);
  layout->addWidget(closeButton);

  setLayout(layout);

  // Connect the close button to close the dialog
  connect(closeButton, &QPushButton::clicked, this, &AboutDialog::accept);
}