//
// Created by Mike Yang on 2024/4/16.
//

#include "keyPressWin.h"
#include <windows.h>

void KeyPress::simulateKeyPresses(const QString &input)
{
  INPUT *events = new INPUT[input.length()];
  for (int i = 0; i < input.length(); ++i) {
    events[i].type = INPUT_KEYBOARD;
    events[i].ki.wVk = 0;
    events[i].ki.wScan = input[i].unicode();
    events[i].ki.dwFlags = KEYEVENTF_UNICODE;
    events[i].ki.time = 0;
    events[i].ki.dwExtraInfo = 0;
  }
  SendInput(input.length(), events, sizeof(INPUT));
  delete[] events;
}