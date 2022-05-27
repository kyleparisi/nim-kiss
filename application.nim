{.passL: "-framework Cocoa".}
{.compile: "o_application.m", passc: "-x objective-c"}
{.compile: "o_window.m", passc: "-x objective-c"}

const
  app_header = "o_application.h"
  window_header = "o_window.h"

proc sharedApplication(): pointer {.header: app_header, importc: "SharedApplication", nodecl.}
proc run(app: pointer): void {.header: app_header, importc: "Run", nodecl.}
proc newWindow(x, y, width, height: int): pointer {.header: window_header, importc: "NewWindow", nodecl.}
proc setTitle(window: pointer, title: cstring): void {.header: window_header, importc: "SetTitle", nodecl.}
proc makeKeyAndOrderFront(window: pointer): void {.header: window_header, importc: "MakeKeyAndOrderFront", nodecl.}


when isMainModule:
  let app = sharedApplication()
  let window = newWindow(0, 0, 200, 200)
  setTitle(window, "test")
  makeKeyAndOrderFront(window)
  run(app)
