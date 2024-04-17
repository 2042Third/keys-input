//
// Created by Mike Yang on 2024/4/17.
//

// aboutdialog.h
#ifndef ABOUTDIALOG_H
#define ABOUTDIALOG_H

#include <QDialog>
#include <QLabel>
#include <QPushButton>
#include <QVBoxLayout>

class AboutDialog : public QDialog
{
Q_OBJECT

public:
  explicit AboutDialog(QWidget *parent = nullptr);
};

#endif // ABOUTDIALOG_H
