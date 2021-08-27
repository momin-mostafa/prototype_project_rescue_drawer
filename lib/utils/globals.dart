library prototype_project_rescue_drawer.globals;

import 'dart:io';

bool isDrawerOpen = false;

var file = File('file.txt');
var sink = file.openWrite();

var file2 = File('file.txt');
var sink2 = file.openWrite();
