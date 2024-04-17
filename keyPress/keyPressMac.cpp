//
// Created by Mike Yang on 2024/4/16.
//

#include "keyPressMac.h"
#include <iostream>
#include <ApplicationServices/ApplicationServices.h>
#include <Carbon/Carbon.h>

void KeyPress::simulateKeyPresses(const QString &input)
{
  for (int i = 0; i < input.length(); ++i) {
    UniChar character = input[i].unicode();

    usleep(10);
    CGEventSourceRef source = CGEventSourceCreate(kCGEventSourceStateHIDSystemState);
    CGEventRef event = CGEventCreateKeyboardEvent(source, 0, true);
    CGEventKeyboardSetUnicodeString(event, 1, &character);
    CGEventPost(kCGSessionEventTap, event);
    CFRelease(event);
    CFRelease(source);
    usleep(10);

    source = CGEventSourceCreate(kCGEventSourceStateHIDSystemState);
    event = CGEventCreateKeyboardEvent(source, 0, false);
    CGEventKeyboardSetUnicodeString(event, 1, &character);
    CGEventPost(kCGSessionEventTap, event);
    CFRelease(event);
    CFRelease(source);
    usleep(10);

  }
}
