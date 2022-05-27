{.passL: "-framework Cocoa".}
{.compile: "o_window.h", passc: "-x objective-c"}

proc newWindow(x, y, width, height: cint): pointer {.importobjc: "NewWindow", nodecl.}
