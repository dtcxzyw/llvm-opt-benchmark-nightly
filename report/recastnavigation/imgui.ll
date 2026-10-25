Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui?download=true
inline.NumInlined: 3240
inline.NumDeleted: 627
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 90
begin_hunk_0
@.str.585 = private unnamed_addr constant [8 x i8] c"(Popup)\00", align 1
@.str.586 = private unnamed_addr constant [11 x i8] c"(Untitled)\00", align 1
@.str.587 = private unnamed_addr constant [10 x i8] c"Open '%s'\00", align 1
@.str.588 = private unnamed_addr constant [21 x i8] c"Copy Link###CopyLink\00", align 1
@_ZL15resize_grip_def = internal unnamed_addr constant [4 x %struct.ImGuiResizeGripDef] [%struct.ImGuiResizeGripDef { %struct.ImVec2 { float 1.000000e+00, float 1.000000e+00 }, %struct.ImVec2 { float -1.000000e+00, float -1.000000e+00 }, i32 0, i32 3 }, %struct.ImGuiResizeGripDef { %struct.ImVec2 { float 0.000000e+00, float 1.000000e+00 }, %struct.ImVec2 { float 1.000000e+00, float -1.000000e+00 }, i32 3, i32 6 }, %struct.ImGuiResizeGripDef { %struct.ImVec2 zeroinitializer, %struct.ImVec2 { float 1.000000e+00, float 1.000000e+00 }, i32 6, i32 9 }, %struct.ImGuiResizeGripDef { %struct.ImVec2 { float 1.000000e+00, float 0.000000e+00 }, %struct.ImVec2 { float -1.000000e+00, float 1.000000e+00 }, i32 9, i32 12 }], align 16
@_ZL17resize_border_def = internal unnamed_addr constant [4 x %struct.ImGuiResizeBorderDef] [%struct.ImGuiResizeBorderDef { %struct.ImVec2 { float 1.000000e+00, float 0.000000e+00 }, %struct.ImVec2 { float 0.000000e+00, float 1.000000e+00 }, %struct.ImVec2 zeroinitializer, float f0x40490FDB }, %struct.ImGuiResizeBorderDef { %struct.ImVec2 { float -1.000000e+00, float 0.000000e+00 }, %struct.ImVec2 { float 1.000000e+00, float 0.000000e+00 }, %struct.ImVec2 { float 1.000000e+00, float 1.000000e+00 }, float 0.000000e+00 }, %struct.ImGuiResizeBorderDef { %struct.ImVec2 { float 0.000000e+00, float 1.000000e+00 }, %struct.ImVec2 zeroinitializer, %struct.ImVec2 { float 1.000000e+00, float 0.000000e+00 }, float f0x4096CBE4 }, %struct.ImGuiResizeBorderDef { %struct.ImVec2 { float 0.000000e+00, float -1.000000e+00 }, %struct.ImVec2 { float 1.000000e+00, float 1.000000e+00 }, %struct.ImVec2 { float 0.000000e+00, float 1.000000e+00 }, float f0x3FC90FDB }], align 16
@.str.589 = private unnamed_addr constant [10 x i8] c"#COLLAPSE\00", align 1
@.str.590 = private unnamed_addr constant [7 x i8] c"#CLOSE\00", align 1
@.str.591 = private unnamed_addr constant [10 x i8] c"LeftArrow\00", align 1
@.str.592 = private unnamed_addr constant [11 x i8] c"RightArrow\00", align 1
@.str.593 = private unnamed_addr constant [8 x i8] c"UpArrow\00", align 1
@.str.594 = private unnamed_addr constant [10 x i8] c"DownArrow\00", align 1
@.str.595 = private unnamed_addr constant [7 x i8] c"PageUp\00", align 1
@.str.596 = private unnamed_addr constant [9 x i8] c"PageDown\00", align 1
@.str.597 = private unnamed_addr constant [5 x i8] c"Home\00", align 1
@.str.598 = private unnamed_addr constant [4 x i8] c"End\00", align 1
@.str.599 = private unnamed_addr constant [7 x i8] c"Insert\00", align 1
@.str.600 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.601 = private unnamed_addr constant [10 x i8] c"Backspace\00", align 1
@.str.602 = private unnamed_addr constant [6 x i8] c"Space\00", align 1
@.str.603 = private unnamed_addr constant [6 x i8] c"Enter\00", align 1
@.str.604 = private unnamed_addr constant [7 x i8] c"Escape\00", align 1
@.str.605 = private unnamed_addr constant [9 x i8] c"LeftCtrl\00", align 1
@.str.606 = private unnamed_addr constant [10 x i8] c"LeftShift\00", align 1
@.str.607 = private unnamed_addr constant [8 x i8] c"LeftAlt\00", align 1
@.str.608 = private unnamed_addr constant [10 x i8] c"LeftSuper\00", align 1
@.str.609 = private unnamed_addr constant [10 x i8] c"RightCtrl\00", align 1
@.str.610 = private unnamed_addr constant [11 x i8] c"RightShift\00", align 1
@.str.611 = private unnamed_addr constant [9 x i8] c"RightAlt\00", align 1
@.str.612 = private unnamed_addr constant [11 x i8] c"RightSuper\00", align 1
@.str.613 = private unnamed_addr constant [5 x i8] c"Menu\00", align 1
@.str.614 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.615 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.616 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.617 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.618 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.619 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.620 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.621 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.622 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.623 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.624 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.625 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.626 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.627 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.628 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.629 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.630 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.631 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.632 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.633 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.634 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.635 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.636 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.637 = private unnamed_addr constant [3 x i8] c"F1\00", align 1
@.str.638 = private unnamed_addr constant [3 x i8] c"F2\00", align 1
@.str.639 = private unnamed_addr constant [3 x i8] c"F3\00", align 1
@.str.640 = private unnamed_addr constant [3 x i8] c"F4\00", align 1
@.str.641 = private unnamed_addr constant [3 x i8] c"F5\00", align 1
@.str.642 = private unnamed_addr constant [3 x i8] c"F6\00", align 1
@.str.643 = private unnamed_addr constant [3 x i8] c"F7\00", align 1
@.str.644 = private unnamed_addr constant [3 x i8] c"F8\00", align 1
@.str.645 = private unnamed_addr constant [3 x i8] c"F9\00", align 1
@.str.646 = private unnamed_addr constant [4 x i8] c"F10\00", align 1
@.str.647 = private unnamed_addr constant [4 x i8] c"F11\00", align 1
@.str.648 = private unnamed_addr constant [4 x i8] c"F12\00", align 1
@.str.649 = private unnamed_addr constant [4 x i8] c"F13\00", align 1
@.str.650 = private unnamed_addr constant [4 x i8] c"F14\00", align 1
@.str.651 = private unnamed_addr constant [4 x i8] c"F15\00", align 1
@.str.652 = private unnamed_addr constant [4 x i8] c"F16\00", align 1
@.str.653 = private unnamed_addr constant [4 x i8] c"F17\00", align 1
@.str.654 = private unnamed_addr constant [4 x i8] c"F18\00", align 1
@.str.655 = private unnamed_addr constant [4 x i8] c"F19\00", align 1
@.str.656 = private unnamed_addr constant [4 x i8] c"F20\00", align 1
@.str.657 = private unnamed_addr constant [4 x i8] c"F21\00", align 1
@.str.658 = private unnamed_addr constant [4 x i8] c"F22\00", align 1
@.str.659 = private unnamed_addr constant [4 x i8] c"F23\00", align 1
@.str.660 = private unnamed_addr constant [4 x i8] c"F24\00", align 1
@.str.661 = private unnamed_addr constant [11 x i8] c"Apostrophe\00", align 1
@.str.662 = private unnamed_addr constant [6 x i8] c"Comma\00", align 1
@.str.663 = private unnamed_addr constant [6 x i8] c"Minus\00", align 1
@.str.664 = private unnamed_addr constant [7 x i8] c"Period\00", align 1
@.str.665 = private unnamed_addr constant [6 x i8] c"Slash\00", align 1
@.str.666 = private unnamed_addr constant [10 x i8] c"Semicolon\00", align 1
@.str.667 = private unnamed_addr constant [6 x i8] c"Equal\00", align 1
@.str.668 = private unnamed_addr constant [12 x i8] c"LeftBracket\00", align 1
@.str.669 = private unnamed_addr constant [10 x i8] c"Backslash\00", align 1
@.str.670 = private unnamed_addr constant [13 x i8] c"RightBracket\00", align 1
@.str.671 = private unnamed_addr constant [12 x i8] c"GraveAccent\00", align 1
@.str.672 = private unnamed_addr constant [9 x i8] c"CapsLock\00", align 1
@.str.673 = private unnamed_addr constant [11 x i8] c"ScrollLock\00", align 1
@.str.674 = private unnamed_addr constant [8 x i8] c"NumLock\00", align 1
@.str.675 = private unnamed_addr constant [12 x i8] c"PrintScreen\00", align 1
@.str.676 = private unnamed_addr constant [6 x i8] c"Pause\00", align 1
@.str.677 = private unnamed_addr constant [8 x i8] c"Keypad0\00", align 1
@.str.678 = private unnamed_addr constant [8 x i8] c"Keypad1\00", align 1
@.str.679 = private unnamed_addr constant [8 x i8] c"Keypad2\00", align 1
@.str.680 = private unnamed_addr constant [8 x i8] c"Keypad3\00", align 1
@.str.681 = private unnamed_addr constant [8 x i8] c"Keypad4\00", align 1
@.str.682 = private unnamed_addr constant [8 x i8] c"Keypad5\00", align 1
@.str.683 = private unnamed_addr constant [8 x i8] c"Keypad6\00", align 1
@.str.684 = private unnamed_addr constant [8 x i8] c"Keypad7\00", align 1
@.str.685 = private unnamed_addr constant [8 x i8] c"Keypad8\00", align 1
@.str.686 = private unnamed_addr constant [8 x i8] c"Keypad9\00", align 1
@.str.687 = private unnamed_addr constant [14 x i8] c"KeypadDecimal\00", align 1
@.str.688 = private unnamed_addr constant [13 x i8] c"KeypadDivide\00", align 1
@.str.689 = private unnamed_addr constant [15 x i8] c"KeypadMultiply\00", align 1
@.str.690 = private unnamed_addr constant [15 x i8] c"KeypadSubtract\00", align 1
@.str.691 = private unnamed_addr constant [10 x i8] c"KeypadAdd\00", align 1
@.str.692 = private unnamed_addr constant [12 x i8] c"KeypadEnter\00", align 1
@.str.693 = private unnamed_addr constant [12 x i8] c"KeypadEqual\00", align 1
@.str.694 = private unnamed_addr constant [8 x i8] c"AppBack\00", align 1
@.str.695 = private unnamed_addr constant [11 x i8] c"AppForward\00", align 1
@.str.696 = private unnamed_addr constant [7 x i8] c"Oem102\00", align 1
@.str.697 = private unnamed_addr constant [13 x i8] c"GamepadStart\00", align 1
@.str.698 = private unnamed_addr constant [12 x i8] c"GamepadBack\00", align 1
@.str.699 = private unnamed_addr constant [16 x i8] c"GamepadFaceLeft\00", align 1
@.str.700 = private unnamed_addr constant [17 x i8] c"GamepadFaceRight\00", align 1
@.str.701 = private unnamed_addr constant [14 x i8] c"GamepadFaceUp\00", align 1
@.str.702 = private unnamed_addr constant [16 x i8] c"GamepadFaceDown\00", align 1
@.str.703 = private unnamed_addr constant [16 x i8] c"GamepadDpadLeft\00", align 1
@.str.704 = private unnamed_addr constant [17 x i8] c"GamepadDpadRight\00", align 1
@.str.705 = private unnamed_addr constant [14 x i8] c"GamepadDpadUp\00", align 1
@.str.706 = private unnamed_addr constant [16 x i8] c"GamepadDpadDown\00", align 1
@.str.707 = private unnamed_addr constant [10 x i8] c"GamepadL1\00", align 1
@.str.708 = private unnamed_addr constant [10 x i8] c"GamepadR1\00", align 1
@.str.709 = private unnamed_addr constant [10 x i8] c"GamepadL2\00", align 1
@.str.710 = private unnamed_addr constant [10 x i8] c"GamepadR2\00", align 1
@.str.711 = private unnamed_addr constant [10 x i8] c"GamepadL3\00", align 1
@.str.712 = private unnamed_addr constant [10 x i8] c"GamepadR3\00", align 1
@.str.713 = private unnamed_addr constant [18 x i8] c"GamepadLStickLeft\00", align 1
@.str.714 = private unnamed_addr constant [19 x i8] c"GamepadLStickRight\00", align 1
@.str.715 = private unnamed_addr constant [16 x i8] c"GamepadLStickUp\00", align 1
@.str.716 = private unnamed_addr constant [18 x i8] c"GamepadLStickDown\00", align 1
@.str.717 = private unnamed_addr constant [18 x i8] c"GamepadRStickLeft\00", align 1
@.str.718 = private unnamed_addr constant [19 x i8] c"GamepadRStickRight\00", align 1
@.str.719 = private unnamed_addr constant [16 x i8] c"GamepadRStickUp\00", align 1
@.str.720 = private unnamed_addr constant [18 x i8] c"GamepadRStickDown\00", align 1
@.str.721 = private unnamed_addr constant [10 x i8] c"MouseLeft\00", align 1
@.str.722 = private unnamed_addr constant [11 x i8] c"MouseRight\00", align 1
@.str.723 = private unnamed_addr constant [12 x i8] c"MouseMiddle\00", align 1
@.str.724 = private unnamed_addr constant [8 x i8] c"MouseX1\00", align 1
@.str.725 = private unnamed_addr constant [8 x i8] c"MouseX2\00", align 1
@.str.726 = private unnamed_addr constant [12 x i8] c"MouseWheelX\00", align 1
@.str.727 = private unnamed_addr constant [12 x i8] c"MouseWheelY\00", align 1
@.str.728 = private unnamed_addr constant [8 x i8] c"ModCtrl\00", align 1
@.str.729 = private unnamed_addr constant [9 x i8] c"ModShift\00", align 1
@.str.730 = private unnamed_addr constant [7 x i8] c"ModAlt\00", align 1
@.str.731 = private unnamed_addr constant [9 x i8] c"ModSuper\00", align 1
@.str.732 = private unnamed_addr constant [32 x i8] c"[io] LockWheelingWindow() \22%s\22\0A\00", align 1
@.str.733 = private unnamed_addr constant [40 x i8] c"[io] %s: MousePos (-FLT_MAX, -FLT_MAX)\0A\00", align 1
@.str.734 = private unnamed_addr constant [37 x i8] c"[io] %s: MousePos (%.1f, %.1f) (%s)\0A\00", align 1
@.str.735 = private unnamed_addr constant [33 x i8] c"[io] %s: MouseButton %d %s (%s)\0A\00", align 1
@.str.736 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.737 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.738 = private unnamed_addr constant [39 x i8] c"[io] %s: MouseWheel (%.3f, %.3f) (%s)\0A\00", align 1
@.str.739 = private unnamed_addr constant [22 x i8] c"[io] %s: Key \22%s\22 %s\0A\00", align 1
@.str.740 = private unnamed_addr constant [28 x i8] c"[io] %s: Text: %c (U+%08X)\0A\00", align 1
@.str.741 = private unnamed_addr constant [24 x i8] c"[io] %s: AppFocused %d\0A\00", align 1
@.str.743 = private unnamed_addr constant [58 x i8] c"[focus] NavRestoreLayer: from \22%s\22 to SetNavWindow(\22%s\22)\0A\00", align 1
@.str.744 = private unnamed_addr constant [32 x i8] c"[nav] NavUpdateCancelRequest()\0A\00", align 1
@.str.745 = private unnamed_addr constant [32 x i8] c"[nav] NavMoveRequestForward %d\0A\00", align 1
@.str.746 = private unnamed_addr constant [56 x i8] c"[nav] NavInitRequest: from move, window \22%s\22, layer=%d\0A\00", align 1
@.str.747 = private unnamed_addr constant [57 x i8] c"[nav] NavMoveRequest: clamp NavRectRel for gamepad move\0A\00", align 1
@.str.748 = private unnamed_addr constant [22 x i8] c"##NavWindowingOverlay\00", align 1
@.str.749 = private unnamed_addr constant [14 x i8] c"##MainMenuBar\00", align 1
@.str.750 = private unnamed_addr constant [15 x i8] c"*Missing Text*\00", align 1
@.str.751 = private unnamed_addr constant [10 x i8] c"Pos=%i,%i\00", align 1
@.str.752 = private unnamed_addr constant [11 x i8] c"Size=%i,%i\00", align 1
@.str.753 = private unnamed_addr constant [13 x i8] c"Collapsed=%d\00", align 1
@.str.754 = private unnamed_addr constant [11 x i8] c"IsChild=%d\00", align 1
@.str.755 = private unnamed_addr constant [10 x i8] c"[%s][%s]\0A\00", align 1
@.str.756 = private unnamed_addr constant [11 x i8] c"IsChild=1\0A\00", align 1
@.str.757 = private unnamed_addr constant [12 x i8] c"Size=%d,%d\0A\00", align 1
@.str.758 = private unnamed_addr constant [11 x i8] c"Pos=%d,%d\0A\00", align 1
@.str.759 = private unnamed_addr constant [13 x i8] c"Collapsed=1\0A\00", align 1
@.str.760 = private unnamed_addr constant [9 x i8] c"xdg-open\00", align 1
@.str.761 = private unnamed_addr constant [5 x i8] c"0x%p\00", align 1
@.str.762 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.763 = private unnamed_addr constant [12 x i8] c"TouchScreen\00", align 1
@.str.764 = private unnamed_addr constant [4 x i8] c"Pen\00", align 1
@__const._ZL18GetMouseSourceName16ImGuiMouseSource.mouse_source_names = private unnamed_addr constant [3 x ptr] [ptr @.str.762, ptr @.str.763, ptr @.str.764], align 16
@.str.765 = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.str.766 = private unnamed_addr constant [8 x i8] c"Gamepad\00", align 1
@__const._ZL18GetInputSourceName16ImGuiInputSource.input_source_names = private unnamed_addr constant [4 x ptr] [ptr @.str.107, ptr @.str.762, ptr @.str.765, ptr @.str.766], align 16
@.str.767 = private unnamed_addr constant [8 x i8] c"#%03d: \00", align 1
@.str.768 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.769 = private unnamed_addr constant [24 x i8] c"%d past errors skipped.\00", align 1
@.str.770 = private unnamed_addr constant [85 x i8] c"Hold SHIFT when clicking to enable for 2 frames only (useful for spammy log entries)\00", align 1
@.str.771 = private unnamed_addr constant [18 x i8] c"HoveredId: 0x%08X\00", align 1
@.str.772 = private unnamed_addr constant [28 x i8] c"Press ESC to abort picking.\00", align 1
@.str.773 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.774 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.775 = private unnamed_addr constant [7 x i8] c"Middle\00", align 1
@__const._ZN5ImGuiL25UpdateDebugToolItemPickerEv.mouse_button_names = private unnamed_addr constant [3 x ptr] [ptr @.str.773, ptr @.str.774, ptr @.str.775], align 16
@.str.776 = private unnamed_addr constant [64 x i8] c"Remap w/ Ctrl+Shift: click anywhere to select new mouse button.\00", align 1
@.str.777 = private unnamed_addr constant [60 x i8] c"Click %s Button to break in debugger! (remap w/ Ctrl+Shift)\00", align 1
@.str.778 = private unnamed_addr constant [14 x i8] c"\22%s\22 [window]\00", align 1
@.str.779 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@switch.table._ZN5ImGui17GetStyleColorNameEi = private unnamed_addr constant [58 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], align 8
@switch.table._ZN5ImGui15GetKeyChordNameEi = private unnamed_addr constant [3 x i32] [i32 -8193, i32 -16385, i32 -32769], align 4
@switch.table._ZN5ImGui8ShortcutEiij = private unnamed_addr constant [3 x i16] [i16 8192, i16 16384, i16 -32768], align 4
@switch.table._ZN5ImGui17ShowMetricsWindowEPb = private unnamed_addr constant [3 x i16] [i16 -8193, i16 -16385, i16 32767], align 4
@switch.table._ZN5ImGui17ShowMetricsWindowEPb.21 = private unnamed_addr constant [6 x i16] [i16 240, i16 256, i16 272, i16 352, i16 288, i16 304], align 8
@switch.table._ZN5ImGui17ShowMetricsWindowEPb.22 = private unnamed_addr constant [6 x i16] [i16 248, i16 264, i16 280, i16 360, i16 296, i16 312], align 8

@_ZN10ImGuiStyleC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN10ImGuiStyleC2Ev
@_ZN7ImGuiIOC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7ImGuiIOC2Ev
@_ZN15ImGuiPlatformIOC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN15ImGuiPlatformIOC2Ev
@_ZN15ImGuiTextFilterC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN15ImGuiTextFilterC2EPKc
@_ZN16ImGuiListClipperC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN16ImGuiListClipperC2Ev
@_ZN16ImGuiListClipperD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN16ImGuiListClipperD2Ev
@_ZN12ImGuiContextC1EP11ImFontAtlas = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN12ImGuiContextC2EP11ImFontAtlas
@_ZN11ImGuiWindowC1EP12ImGuiContextPKc = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11ImGuiWindowC2EP12ImGuiContextPKc
@_ZN11ImGuiWindowD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11ImGuiWindowD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN10ImGuiStyleC2Ev(ptr noundef nonnull align 4 dereferenceable(1232) initializes((0, 267), (268, 1232)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 244
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(928) %scevgep, i8 0, i64 928, i1 false)
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %0, align 4, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float 6.000000e-01, ptr %i.m, align 4, !tbaa !1106
  store i32 1090519040, ptr %i.a, align 4, !tbaa !86
  store i32 1090519040, ptr %i.b, align 4, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.n, align 4, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 4.000000e+00, ptr %i.o, align 4, !tbaa !91
  store <4 x i32> <i32 1107296256, i32 1107296256, i32 0, i32 1056964608>, ptr %i.c, align 4, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.p, align 4, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.q, align 4, !tbaa !86
  store i32 1082130432, ptr %i.d, align 4, !tbaa !86
  store i32 1077936128, ptr %i.e, align 4, !tbaa !86
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 84
  store <2 x float> zeroinitializer, ptr %i.r, align 4, !tbaa !86
  store <4 x i32> <i32 1090519040, i32 1082130432, i32 1082130432, i32 1082130432>, ptr %i.f, align 4, !tbaa !86
  store <4 x i32> <i32 1082130432, i32 1073741824, i32 0, i32 0>, ptr %i.g, align 4, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 124
  store <4 x float> <float 2.100000e+01, float 6.000000e+00, float 1.400000e+01, float 9.000000e+00>, ptr %i.s, align 4, !tbaa !86
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 140
  store <4 x float> <float 1.200000e+01, float 0.000000e+00, float 4.000000e+00, float 0.000000e+00>, ptr %i.t, align 4, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 156
  store <4 x float> <float 5.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.u, align 4, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 172
  store <2 x float> splat (float 1.000000e+00), ptr %i.v, align 4, !tbaa !86
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 180
  store float f0x3F1C61AA, ptr %i.w, align 4, !tbaa !1107
  store i32 1056964608, ptr %i.h, align 4, !tbaa !86
  store i32 0, ptr %i.i, align 4, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 262144, ptr %i.x, align 4, !tbaa !1108
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 196
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.y, align 4, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 204
  store <4 x i32> <i32 1, i32 1056964608, i32 1056964608, i32 0>, ptr %i.z, align 4, !tbaa !93
  store i32 0, ptr %i.j, align 4, !tbaa !86
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224
  store float 3.000000e+00, ptr %i.aa, align 4, !tbaa !1109
  store <4 x i32> <i32 0, i32 1056964608, i32 1101004800, i32 1077936128>, ptr %i.k, align 4, !tbaa !86
  store <4 x i32> <i32 1100480512, i32 1100480512, i32 1077936128, i32 1077936128>, ptr %i.l, align 4, !tbaa !86
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 260
  store float 1.000000e+00, ptr %i.ab, align 4, !tbaa !94
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 1, ptr %i.ac, align 4, !tbaa !1110
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 265
  store i8 1, ptr %i.ad, align 1, !tbaa !1111
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 266
  store i8 1, ptr %i.ae, align 2, !tbaa !1112
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 268
  store <2 x float> <float 1.250000e+00, float 3.000000e-01>, ptr %i.af, align 4, !tbaa !86
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1204
  store <2 x float> splat (float 1.500000e-01), ptr %i.ag, align 4, !tbaa !86
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1212
  store float 4.000000e-01, ptr %i.ah, align 4, !tbaa !1113
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1216
  store i32 41984, ptr %i.ai, align 4, !tbaa !1114
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1220
  store i32 197632, ptr %i.aj, align 4, !tbaa !1115
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ak, align 4, !tbaa !86
  tail call void @_ZN5ImGui15StyleColorsDarkEP10ImGuiStyle(ptr noundef nonnull %0) #35
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN5ImGui15StyleColorsDarkEP10ImGuiStyle(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10ImGuiStyle13ScaleAllSizesEf(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(1232) %0, float noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !1116
  %i.c = fmul float %1, %i.b
  store float %i.c, ptr %i.a, align 4, !tbaa !1116
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !86
  %i.f = insertelement <2 x float> poison, float %1, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer ; 11 uses
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = fptosi <2 x float> %i.h to <2 x i32>
  %i.j = sitofp <2 x i32> %i.i to <2 x float>
  store <2 x float> %i.j, ptr %i.d, align 4, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.l = load <4 x float>, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load <2 x float>, ptr %i.m, align 4, !tbaa !86
  %i.o = fmul <2 x float> %i.g, %i.n
  %i.p = fptosi <2 x float> %i.o to <2 x i32>
  %i.q = sitofp <2 x i32> %i.p to <2 x float>
  store <2 x float> %i.q, ptr %i.m, align 4, !tbaa !86
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !91
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !1117
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !1118
  %i.x = insertelement <4 x float> poison, float %1, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.z = insertelement <4 x float> %i.l, float %i.s, i64 1
  %i.aa = insertelement <4 x float> %i.z, float %i.u, i64 2
  %i.ab = insertelement <4 x float> %i.aa, float %i.w, i64 3
  %i.ac = fmul <4 x float> %i.y, %i.ab
  %i.ad = fptosi <4 x float> %i.ac to <4 x i32>
  %i.ae = sitofp <4 x i32> %i.ad to <4 x float>   ; 4 uses
  %i.af = extractelement <4 x float> %i.ae, i64 0
  store float %i.af, ptr %i.k, align 4, !tbaa !1119
  %i.ag = extractelement <4 x float> %i.ae, i64 1
  store float %i.ag, ptr %i.r, align 4, !tbaa !91
  %i.ah = extractelement <4 x float> %i.ae, i64 2
  store float %i.ah, ptr %i.t, align 4, !tbaa !1117
  %i.ai = extractelement <4 x float> %i.ae, i64 3
  store float %i.ai, ptr %i.v, align 4, !tbaa !1118
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !86
  %i.al = fmul <2 x float> %i.g, %i.ak
  %i.am = fptosi <2 x float> %i.al to <2 x i32>
  %i.an = sitofp <2 x i32> %i.am to <2 x float>
  store <2 x float> %i.an, ptr %i.aj, align 4, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ap = load <4 x float>, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ar = load <2 x float>, ptr %i.aq, align 4, !tbaa !86
  %i.as = fmul <2 x float> %i.g, %i.ar
  %i.at = fptosi <2 x float> %i.as to <2 x i32>
  %i.au = sitofp <2 x i32> %i.at to <2 x float>
  store <2 x float> %i.au, ptr %i.aq, align 4, !tbaa !86
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.aw = load <2 x float>, ptr %i.av, align 4, !tbaa !86
  %i.ax = fmul <2 x float> %i.g, %i.aw
  %i.ay = fptosi <2 x float> %i.ax to <2 x i32>
  %i.az = sitofp <2 x i32> %i.ay to <2 x float>
  store <2 x float> %i.az, ptr %i.av, align 4, !tbaa !86
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.bb = load <2 x float>, ptr %i.ba, align 4, !tbaa !86
  %i.bc = fmul <2 x float> %i.g, %i.bb
  %i.bd = fptosi <2 x float> %i.bc to <2 x i32>
  %i.be = sitofp <2 x i32> %i.bd to <2 x float>
  store <2 x float> %i.be, ptr %i.ba, align 4, !tbaa !86
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.bg = load <2 x float>, ptr %i.bf, align 4, !tbaa !86
  %i.bh = fmul <2 x float> %i.g, %i.bg
  %i.bi = fptosi <2 x float> %i.bh to <2 x i32>
  %i.bj = sitofp <2 x i32> %i.bi to <2 x float>
  store <2 x float> %i.bj, ptr %i.bf, align 4, !tbaa !86
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.bl = load <4 x float>, ptr %i.bk, align 4, !tbaa !86
  %i.bm = fmul <4 x float> %i.y, %i.bl
  %i.bn = fptosi <4 x float> %i.bm to <4 x i32>
  %i.bo = sitofp <4 x i32> %i.bn to <4 x float>
  store <4 x float> %i.bo, ptr %i.bk, align 4, !tbaa !86
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.bq = load <4 x float>, ptr %i.bp, align 4, !tbaa !86
  %i.br = fmul <4 x float> %i.y, %i.bq
  %i.bs = fptosi <4 x float> %i.br to <4 x i32>
  %i.bt = sitofp <4 x i32> %i.bs to <4 x float>
  store <4 x float> %i.bt, ptr %i.bp, align 4, !tbaa !86
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !1120
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5ImGui13ItemHoverableERK6ImRectji:bb.a
  br i1 %.not69, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN5ImGui12SetHoveredIDEj.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 5296
  store i8 1, ptr %i.cz, align 8, !tbaa !678
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 5280
  %i.db = load i32, ptr %i.da, align 8, !tbaa !679
  %.not70 = icmp eq i32 %i.db, %1
  br i1 %.not70, label %bb.aa, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

bb.aa:                                            ; preds = %bb.z, %_ZN5ImGui12SetHoveredIDEj.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 7704
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !441
  %i.de = icmp eq i32 %1, %i.dd
  br i1 %i.de, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 7712
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !682
  %i.dh = and i32 %i.dg, 1024
  %.not71 = icmp eq i32 %i.dh, 0
  %brmerge = or i1 %.not66, %.not71
  br i1 %brmerge, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 69632)
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 7780
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !698
  %i.dl = call noundef ptr @_ZN5ImGui15GetKeyChordNameEi(i32 noundef %i.dk)
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.80, ptr noundef nonnull %i.dl)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.aa, %bb.ad, %bb.ac
  %i.dm = and i32 %2, 1024
  %.not73 = icmp eq i32 %i.dm, 0
  br i1 %.not73, label %bb.ah, label %bb.af

.thread:                                          ; preds = %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.thread
  %i.dn = and i32 %2, 1024
  %.not7387 = icmp eq i32 %i.dn, 0
  br i1 %.not7387, label %.thread88, label %.thread89

bb.af:                                            ; preds = %bb.ae
  %i.do = load i32, ptr %i.bi, align 4, !tbaa !665
  %i.dp = icmp eq i32 %i.do, %1
  br i1 %i.dp, label %bb.ag, label %.thread89

bb.ag:                                            ; preds = %bb.af
  call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  br label %.thread89

.thread89:                                        ; preds = %.thread, %bb.ag, %bb.af
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 5297
  store i8 1, ptr %i.dq, align 1, !tbaa !695
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

bb.ah:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 10217
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !584, !range !120, !noundef !254
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 5280
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !679
  %i.dw = icmp eq i32 %i.dv, %1
  br i1 %i.dw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dx = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8064
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !415
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !416
  %i.eb = call fastcc noundef ptr @_ZL23GetViewportBgFgDrawListP14ImGuiViewportPmPKc(ptr noundef %i.ea, i64 noundef 1, ptr noundef nonnull @.str.83)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.eb, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.x, i32 noundef -16711681, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 10220
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !586
  %i.ee = icmp eq i32 %i.ed, %1
  br i1 %i.ee, label %bb.al, label %.thread88

bb.al:                                            ; preds = %bb.ak
  call void @llvm.debugtrap()
  br label %.thread88

.thread88:                                        ; preds = %.thread, %bb.ak, %bb.al
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 8073
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !685, !range !120, !noundef !254
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = and i32 %2, 32768
  %i.ej = icmp eq i32 %i.ei, 0
  %or.cond79 = and i1 %i.ej, %i.eh
  %not.or.cond79 = xor i1 %or.cond79, true
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread: ; preds = %bb.f, %bb.g, %.thread88, %bb.z, %bb.w, %bb.l, %bb.i, %bb.e, %.thread89, %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.w ], [ false, %.thread89 ], [ false, %bb.z ], [ %not.or.cond79, %.thread88 ], [ false, %bb.l ], [ false, %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #34 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 5 uses
  %i.b = load <2 x float>, ptr %0, align 4, !tbaa !86 ; 3 uses
  %i.c = load <2 x float>, ptr %1, align 4, !tbaa !86 ; 3 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !309  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 608
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !86 ; 2 uses
  %i.h = fcmp oge <2 x float> %i.b, %i.g
  %i.i = select <2 x i1> %i.h, <2 x float> %i.b, <2 x float> %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 616
  %i.k = load <2 x float>, ptr %i.j, align 4, !tbaa !86 ; 2 uses
  %i.l = fcmp olt <2 x float> %i.c, %i.k
  %i.m = select <2 x i1> %i.l, <2 x float> %i.c, <2 x float> %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.8.0 = phi <2 x float> [ %i.m, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi <2 x float> [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3252
  %i.p = load float, ptr %i.n, align 4, !tbaa !269 ; 2 uses
  %.sroa.0.0.vec.extract8 = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.q = load float, ptr %i.o, align 4, !tbaa !269 ; 2 uses
  %i.r = fsub float %.sroa.0.0.vec.extract8, %i.q
  %i.s = fcmp ult float %i.p, %i.r
  br i1 %i.s, label %_ZNK6ImRect15ContainsWithPadERK6ImVec2S2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.u = load float, ptr %i.t, align 4, !tbaa !270 ; 2 uses
  %.sroa.0.4.vec.extract10 = extractelement <2 x float> %.sroa.0.0, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 3256
  %i.w = load float, ptr %i.v, align 4, !tbaa !270 ; 2 uses
  %i.x = fsub float %.sroa.0.4.vec.extract10, %i.w
  %i.y = fcmp oge float %i.u, %i.x
  %.sroa.8.8.vec.extract13 = extractelement <2 x float> %.sroa.8.0, i64 0
  %i.z = fadd float %.sroa.8.8.vec.extract13, %i.q
  %i.aa = fcmp olt float %i.p, %i.z
  %or.cond = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.e, label %_ZNK6ImRect15ContainsWithPadERK6ImVec2S2_.exit

bb.e:                                             ; preds = %bb.d
  %.sroa.8.12.vec.extract15 = extractelement <2 x float> %.sroa.8.0, i64 1
  %i.ab = fadd float %.sroa.8.12.vec.extract15, %i.w
  %i.ac = fcmp olt float %i.u, %i.ab
  br label %_ZNK6ImRect15ContainsWithPadERK6ImVec2S2_.exit

_ZNK6ImRect15ContainsWithPadERK6ImVec2S2_.exit:   ; preds = %bb.c, %bb.d, %bb.e
  %i.ad = phi i1 [ %i.ac, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %i.ad
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui10SetTooltipEPKcz(ptr noundef %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef 2, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui5TextVEPKcP13__va_list_tag(ptr noundef %0, ptr noundef nonnull %1) #35
  call void @_ZN5ImGui3EndEv()
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef nonnull ptr @_ZN5ImGui15GetKeyChordNameEi(i32 noundef %0) local_unnamed_addr #20 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.b = and i32 %0, -61441                       ; 5 uses
  %i.c = add i32 %i.b, -527
  %i.d = icmp ult i32 %i.c, 8
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.c [
    i32 531, label %_ZL17GetModForLRModKey8ImGuiKey.exit
    i32 527, label %_ZL17GetModForLRModKey8ImGuiKey.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %0, -61445
  %switch.tableidx = add i32 %i.e, -528           ; 2 uses
  %i.f = icmp ult i32 %switch.tableidx, 3
  br i1 %i.f, label %switch.lookup, label %_ZL17GetModForLRModKey8ImGuiKey.exit

switch.lookup:                                    ; preds = %bb.c
  %i.g = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5ImGui15GetKeyChordNameEi, i64 %i.g
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZL17GetModForLRModKey8ImGuiKey.exit

_ZL17GetModForLRModKey8ImGuiKey.exit:             ; preds = %bb.c, %switch.lookup, %bb.b, %bb.b
  %i.h = phi i32 [ -4097, %bb.b ], [ -4097, %bb.b ], [ %switch.load, %switch.lookup ], [ -1, %bb.c ]
  %i.i = and i32 %i.h, %0
  br label %bb.d

bb.d:                                             ; preds = %_ZL17GetModForLRModKey8ImGuiKey.exit, %bb.a
  %.0 = phi i32 [ %i.i, %_ZL17GetModForLRModKey8ImGuiKey.exit ], [ %0, %bb.a ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 10680 ; 5 uses
  %i.k = and i32 %.0, 4096
  %.not = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not, ptr @.str.4, ptr @.str.109 ; 2 uses
  %i.m = and i32 %.0, 8192
  %.not21 = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not21, ptr @.str.4, ptr @.str.110 ; 2 uses
  %i.o = and i32 %.0, 16384
  %.not22 = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not22, ptr @.str.4, ptr @.str.111 ; 2 uses
  %i.q = and i32 %.0, 32768
  %.not23 = icmp eq i32 %i.q, 0
  %i.r = select i1 %.not23, ptr @.str.4, ptr @.str.112 ; 2 uses
  %i.s = icmp eq i32 %i.b, 0
  br i1 %i.s, label %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add i32 %i.b, -512
  %i.u = icmp ult i32 %i.t, 155
  br i1 %i.u, label %bb.f, label %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.v = zext nneg i32 %i.b to i64
  %i.w = getelementptr [8 x i8], ptr @_ZL9GKeyNames, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -4096
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !276
  br label %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.thread

_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.thread:      ; preds = %bb.f, %bb.e
  %.ph = phi ptr [ @.str.72, %bb.e ], [ %i.y, %bb.f ]
  %i.z = tail call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.j, i64 noundef 64, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r, ptr noundef %.ph) ; 0 uses
  br label %bb.i

_ZN5ImGui10GetKeyNameE8ImGuiKey.exit:             ; preds = %bb.d
  %.not36 = icmp eq i32 %.0, 0                    ; 2 uses
  %.str.4.mux = select i1 %.not36, ptr @.str.107, ptr @.str.4
  %i.aa = tail call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.j, i64 noundef 64, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r, ptr noundef nonnull %.str.4.mux) ; 0 uses
  br i1 %.not36, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #52 ; 2 uses
  %.not24 = icmp eq i64 %i.ab, 0
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.j, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  store i8 0, ptr %i.ad, align 1, !tbaa !93
  br label %bb.i

bb.i:                                             ; preds = %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.thread, %bb.g, %bb.h, %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8064
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !415
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.e = tail call fastcc noundef ptr @_ZL23GetViewportBgFgDrawListP14ImGuiViewportPmPKc(ptr noundef %i.d, i64 noundef 1, ptr noundef nonnull @.str.83)
  ret ptr %i.e
}

; Function Attrs: nounwind
declare void @llvm.debugtrap() #35

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui11IsClippedExERK6ImRectj(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !309  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 612
  %i.f = load float, ptr %i.e, align 4, !tbaa !392
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !393
  %i.j = fcmp olt float %i.f, %i.i
  br i1 %i.j, label %bb.b, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  %i.m = load float, ptr %i.l, align 4, !tbaa !393
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !392
  %i.p = fcmp ogt float %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.q = load float, ptr %i.d, align 4, !tbaa !699
  %i.r = load float, ptr %i.g, align 4, !tbaa !700
  %i.s = fcmp olt float %i.q, %i.r
  br i1 %i.s, label %_ZNK6ImRect8OverlapsERKS_.exit, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit:                   ; preds = %bb.c
  %i.t = load float, ptr %i.k, align 4, !tbaa !700
  %i.u = load float, ptr %0, align 4, !tbaa !699
  %i.v = fcmp ogt float %i.t, %i.u
  br i1 %i.v, label %bb.i, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.a, %bb.b, %bb.c, %_ZNK6ImRect8OverlapsERKS_.exit
  %i.w = icmp eq i32 %1, 0
  br i1 %i.w, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNK6ImRect8OverlapsERKS_.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 5300
  %i.y = load i32, ptr %i.x, align 4, !tbaa !665
  %.not = icmp eq i32 %1, %i.y
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 5340
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !701
  %.not14 = icmp eq i32 %1, %i.aa
  br i1 %.not14, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8076
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !394
  %.not15 = icmp eq i32 %1, %i.ac
  br i1 %.not15, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8096
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !675
  %.not16 = icmp eq i32 %1, %i.ae
  br i1 %.not16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK6ImRect8OverlapsERKS_.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 5298
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !702, !range !120, !noundef !254
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %_ZNK6ImRect8OverlapsERKS_.exit
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui15SetLastItemDataEjiiRK6ImRect(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7704
  store i32 %0, ptr %i.b, align 8, !tbaa !441
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7708
  store i32 %1, ptr %i.c, align 4, !tbaa !442
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7712
  store i32 %2, ptr %i.d, align 8, !tbaa !682
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7732
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !402
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7716
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZN5ImGui19CalcWrapWidthForPosERK6ImVec2f(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, float noundef %1) local_unnamed_addr #24 {
bb.a:
  %i.a = fcmp olt float %1, 0.000000e+00
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !309  ; 3 uses
  %i.e = fcmp oeq float %1, 0.000000e+00
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 584
  %i.g = load float, ptr %i.f, align 8, !tbaa !703
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = fcmp ogt float %1, 0.000000e+00
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.j = load float, ptr %i.i, align 8, !tbaa !704
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.l = load float, ptr %i.k, align 8, !tbaa !705
end_hunk_1
begin_hunk_2_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.bav = load float, ptr %i.bau, align 4, !tbaa !778
  %i.baw = fsub float %i.bar, %i.bat
  %i.bax = getelementptr i8, ptr %i.bap, i64 %.sink1213
  %i.bay = load float, ptr %i.bax, align 4, !tbaa !778
  %i.baz = fsub float %i.bav, %i.bay
  %.sroa.0.0.vec.insert.i705 = insertelement <2 x float> poison, float %i.baw, i64 0
  %.sroa.0.4.vec.insert.i706 = insertelement <2 x float> %.sroa.0.0.vec.insert.i705, float %i.baz, i64 1
  br label %.thread970

.thread970:                                       ; preds = %.thread970.sink.split, %bb.jg, %bb.jh
  %.sroa.0870.1 = phi <2 x float> [ zeroinitializer, %bb.jh ], [ zeroinitializer, %bb.jg ], [ %.sroa.0.4.vec.insert.i706, %.thread970.sink.split ] ; 3 uses
  %.sroa.0870.0.vec.extract = extractelement <2 x float> %.sroa.0870.1, i64 0
  %i.bba = fcmp une float %.sroa.0870.0.vec.extract, 0.000000e+00
  %.sroa.0870.4.vec.extract = extractelement <2 x float> %.sroa.0870.1, i64 1
  %i.bbb = fcmp une float %.sroa.0870.4.vec.extract, 0.000000e+00
  %or.cond18.i = select i1 %i.bba, i1 true, i1 %i.bbb
  br i1 %or.cond18.i, label %bb.ji, label %bb.jk

bb.ji:                                            ; preds = %.thread970
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.aml, i64 32
  %i.bbd = load float, ptr %i.bbc, align 8, !tbaa !750
  %i.bbe = fmul float %i.bbd, 6.000000e+02
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.aml, i64 24
  %i.bbg = load float, ptr %i.bbf, align 8, !tbaa !922 ; 2 uses
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.aml, i64 28
  %i.bbi = load float, ptr %i.bbh, align 4, !tbaa !1417 ; 2 uses
  %i.bbj = fcmp olt float %i.bbg, %i.bbi
  %i.bbk = select i1 %i.bbj, float %i.bbg, float %i.bbi
  %i.bbl = fmul float %i.bbe, %i.bbk
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.aml, i64 8604 ; 5 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.aml, i64 8588
  store i8 0, ptr %i.bbn, align 4, !tbaa !809
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.aml, i64 8073
  store i8 1, ptr %i.bbo, align 1, !tbaa !685
  %i.bbp = insertelement <2 x float> poison, float %i.bbl, i64 0
  %i.bbq = shufflevector <2 x float> %i.bbp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bbr = fmul <2 x float> %.sroa.0870.1, %i.bbq
  %i.bbs = load <2 x float>, ptr %i.bbm, align 4, !tbaa !86
  %i.bbt = fadd <2 x float> %i.bbs, %i.bbr        ; 3 uses
  store <2 x float> %i.bbt, ptr %i.bbm, align 4, !tbaa !86
  %i.bbu = load <2 x float>, ptr %i.all, align 8, !tbaa !86
  %i.bbv = fsub <2 x float> %i.atu, %i.bbu
  %i.bbw = load <2 x float>, ptr %i.atd, align 8, !tbaa !86
  %i.bbx = fsub <2 x float> %i.bbv, %i.bbw        ; 2 uses
  %i.bby = fcmp oge <2 x float> %i.bbt, %i.bbx
  %i.bbz = select <2 x i1> %i.bby, <2 x float> %i.bbt, <2 x float> %i.bbx ; 2 uses
  store <2 x float> %i.bbz, ptr %i.bbm, align 4, !tbaa !86
  %i.bca = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 32, float noundef 1.000000e+00), !inline_history !1397
  store i32 %i.bca, ptr %i.i, align 16, !tbaa !255
  %i.bcb = fptosi <2 x float> %i.bbz to <2 x i32> ; 2 uses
  %i.bcc = icmp ne <2 x i32> %i.bcb, zeroinitializer ; 2 uses
  %i.bcd = extractelement <2 x i1> %i.bcc, i64 0
  %i.bce = extractelement <2 x i1> %i.bcc, i64 1
  %or.cond21.i = select i1 %i.bcd, i1 true, i1 %i.bce
  br i1 %or.cond21.i, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.bcf = sitofp <2 x i32> %i.bcb to <2 x float> ; 2 uses
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.ajp, i64 56
  %i.bch = load <2 x float>, ptr %i.bcg, align 8, !tbaa !86
  %i.bci = fadd <2 x float> %i.bch, %i.bcf
  %i.bcj = bitcast <2 x float> %i.bci to i64
  %i.bck = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %i.ajp, i64 %i.bcj), !inline_history !1397
  store <2 x float> %i.bck, ptr %28, align 8, !tbaa !86
  %i.bcl = load <2 x float>, ptr %i.bbm, align 4, !tbaa !86
  %i.bcm = fsub <2 x float> %i.bcl, %i.bcf
  store <2 x float> %i.bcm, ptr %i.bbm, align 4, !tbaa !86
  br label %bb.jk

bb.jk:                                            ; preds = %.thread970, %bb.jj, %bb.ji, %bb.jf, %_ZN5ImGui5PopIDEv.exit
  %.sroa.024.0.copyload.i = load float, ptr %i.all, align 8, !tbaa !86 ; 4 uses
  %.sroa.425.0.copyload.i = load float, ptr %i.alm, align 4, !tbaa !86 ; 4 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.ajp, i64 56 ; 2 uses
  %.sroa.022.0.copyload.i = load float, ptr %i.bcn, align 8, !tbaa !86 ; 4 uses
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ajp, i64 60 ; 2 uses
  %.sroa.423.0.copyload.i = load float, ptr %.sroa.423.0..sroa_idx.i, align 4, !tbaa !86 ; 4 uses
  %i.bco = load float, ptr %28, align 8, !tbaa !269 ; 6 uses
  %i.bcp = fcmp une float %i.bco, f0x7F7FFFFF
  br i1 %i.bcp, label %bb.jl, label %bb.jn

bb.jl:                                            ; preds = %bb.jk
  %i.bcq = load float, ptr %i.atd, align 8, !tbaa !916
  %i.bcr = fcmp une float %i.bcq, %i.bco
  %i.bcs = fcmp une float %.sroa.022.0.copyload.i, %i.bco
  %or.cond266.i = select i1 %i.bcr, i1 true, i1 %i.bcs
  br i1 %or.cond266.i, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  store float %i.bco, ptr %i.bcn, align 8, !tbaa !737
  store float %i.bco, ptr %i.atd, align 8, !tbaa !916
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jl, %bb.jk
  %i.bct = phi float [ %i.bco, %bb.jm ], [ %.sroa.022.0.copyload.i, %bb.jl ], [ %.sroa.022.0.copyload.i, %bb.jk ]
  %i.bcu = load float, ptr %i.aoa, align 4, !tbaa !270 ; 6 uses
  %i.bcv = fcmp une float %i.bcu, f0x7F7FFFFF
  br i1 %i.bcv, label %bb.jo, label %bb.jq

bb.jo:                                            ; preds = %bb.jn
  %i.bcw = load float, ptr %i.ate, align 4, !tbaa !917
  %i.bcx = fcmp une float %i.bcw, %i.bcu
  %i.bcy = fcmp une float %.sroa.423.0.copyload.i, %i.bcu
  %or.cond990 = select i1 %i.bcx, i1 true, i1 %i.bcy
  br i1 %or.cond990, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  store float %i.bcu, ptr %.sroa.423.0..sroa_idx.i, align 4, !tbaa !904
  store float %i.bcu, ptr %i.ate, align 4, !tbaa !917
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jo, %bb.jp, %bb.jn
  %i.bcz = phi float [ %.sroa.423.0.copyload.i, %bb.jo ], [ %i.bcu, %bb.jp ], [ %.sroa.423.0.copyload.i, %bb.jn ]
  %i.bda = load float, ptr %27, align 8, !tbaa !269 ; 2 uses
  %i.bdb = fcmp une float %i.bda, f0x7F7FFFFF
  br i1 %i.bdb, label %bb.jr, label %bb.jt

bb.jr:                                            ; preds = %bb.jq
  %i.bdc = fptosi float %i.bda to i32
  %i.bdd = sitofp i32 %i.bdc to float             ; 3 uses
  %i.bde = fcmp une float %.sroa.024.0.copyload.i, %i.bdd
  br i1 %i.bde, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  store float %i.bdd, ptr %i.all, align 8, !tbaa !704
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jr, %bb.jq
  %i.bdf = phi float [ %i.bdd, %bb.js ], [ %.sroa.024.0.copyload.i, %bb.jr ], [ %.sroa.024.0.copyload.i, %bb.jq ]
  %i.bdg = load float, ptr %i.anz, align 4, !tbaa !270 ; 2 uses
  %i.bdh = fcmp une float %i.bdg, f0x7F7FFFFF
  br i1 %i.bdh, label %bb.ju, label %bb.jw

bb.ju:                                            ; preds = %bb.jt
  %i.bdi = fptosi float %i.bdg to i32
  %i.bdj = sitofp i32 %i.bdi to float             ; 3 uses
  %i.bdk = fcmp une float %.sroa.425.0.copyload.i, %i.bdj
  br i1 %i.bdk, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  store float %i.bdj, ptr %i.alm, align 4, !tbaa !744
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju, %bb.jt
  %i.bdl = phi float [ %i.bdj, %bb.jv ], [ %.sroa.425.0.copyload.i, %bb.ju ], [ %.sroa.425.0.copyload.i, %bb.jt ]
  %i.bdm = fcmp une float %.sroa.024.0.copyload.i, %i.bdf
  %i.bdn = fcmp une float %.sroa.425.0.copyload.i, %i.bdl
  %or.cond1225 = select i1 %i.bdm, i1 true, i1 %i.bdn
  %i.bdo = fcmp une float %.sroa.022.0.copyload.i, %i.bct
  %or.cond1226 = select i1 %or.cond1225, i1 true, i1 %i.bdo
  %i.bdp = fcmp une float %.sroa.423.0.copyload.i, %i.bcz
  %or.cond1227 = select i1 %or.cond1226, i1 true, i1 %i.bdp
  br i1 %or.cond1227, label %bb.jx, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit685

bb.jx:                                            ; preds = %bb.jw
  %i.bdq = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.bdr = load i32, ptr %i.amm, align 4, !tbaa !608
  %i.bds = and i32 %i.bdr, 256
  %.not.i684 = icmp eq i32 %i.bds, 0
  br i1 %.not.i684, label %bb.jy, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit685

bb.jy:                                            ; preds = %bb.jx
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdq, i64 9836 ; 2 uses
  %i.bdu = load float, ptr %i.bdt, align 4, !tbaa !577
  %i.bdv = fcmp ugt float %i.bdu, 0.000000e+00
  br i1 %i.bdv, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit685, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdq, i64 36
  %i.bdx = load float, ptr %i.bdw, align 4, !tbaa !731
  store float %i.bdx, ptr %i.bdt, align 4, !tbaa !577
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit685

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit685: ; preds = %bb.jw, %bb.jz, %bb.jy, %bb.jx
  %.not253.i = icmp eq i32 %.3947, -1
  br i1 %.not253.i, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit, label %bb.ka

bb.ka:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit685
  %i.bdy = load float, ptr %i.anp, align 4, !tbaa !547
  %i.bdz = call fastcc { <2 x float>, <2 x float> } @_ZL19GetResizeBorderRectP11ImGuiWindowiff(ptr noundef nonnull %i.ajp, i32 noundef %.3947, float noundef %i.ano, float noundef %i.bdy), !inline_history !1397 ; 2 uses
  %i.bea = extractvalue { <2 x float>, <2 x float> } %i.bdz, 0
  %i.beb = extractvalue { <2 x float>, <2 x float> } %i.bdz, 1
  store <2 x float> %i.bea, ptr %i.atm, align 8, !tbaa !86
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aml, i64 9584
  store <2 x float> %i.beb, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !86
  br label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit

_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit: ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit685, %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  %.not435 = icmp eq i32 %.5.i, 0
  br i1 %.not435, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit.thread, label %bb.kb

bb.kb:                                            ; preds = %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit
  %.not436 = trunc i32 %.5.i to i1
  %spec.select477 = select i1 %.not436, i1 true, i1 %.3367
  %.not437 = icmp ne i32 %.5.i, 1
  %spec.select495 = select i1 %.not437, i1 true, i1 %.5
  br label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit.thread

_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit.thread: ; preds = %bb.gx, %bb.gt, %bb.gu, %bb.gw, %bb.gs, %bb.kb, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit, %bb.gr
  %.0949 = phi i32 [ 255, %bb.gr ], [ %.3952, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit ], [ %.3952, %bb.kb ], [ 255, %bb.gs ], [ 255, %bb.gw ], [ 255, %bb.gu ], [ 255, %bb.gt ], [ 255, %bb.gx ]
  %.0944 = phi i32 [ 255, %bb.gr ], [ %.3947, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit ], [ %.3947, %bb.kb ], [ 255, %bb.gs ], [ 255, %bb.gw ], [ 255, %bb.gu ], [ 255, %bb.gt ], [ 255, %bb.gx ]
  %.6370 = phi i1 [ %.3367, %bb.gr ], [ %.3367, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit ], [ %spec.select477, %bb.kb ], [ %.3367, %bb.gs ], [ %.3367, %bb.gw ], [ %.3367, %bb.gu ], [ %.3367, %bb.gt ], [ %.3367, %bb.gx ]
  %.7 = phi i1 [ %.5, %bb.gr ], [ %.5, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit ], [ %spec.select495, %bb.kb ], [ %.5, %bb.gs ], [ %.5, %bb.gw ], [ %.5, %bb.gu ], [ %.5, %bb.gt ], [ %.5, %bb.gx ]
  %i.bec = trunc i32 %.0949 to i8
  %i.bed = load ptr, ptr %i.g, align 8, !tbaa !595 ; 40 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 216
  store i8 %i.bec, ptr %i.bee, align 8, !tbaa !1418
  %i.bef = trunc i32 %.0944 to i8
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bed, i64 217
  store i8 %i.bef, ptr %i.beg, align 1, !tbaa !1419
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bed, i64 207
  %i.bei = load i8, ptr %i.beh, align 1, !tbaa !607, !range !120, !noundef !254
  %i.bej = trunc nuw i8 %i.bei to i1
  br i1 %i.bej, label %bb.kx, label %bb.kc

bb.kc:                                            ; preds = %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit.thread
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bed, i64 56
  %i.bel = load float, ptr %i.bek, align 8, !tbaa !737
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bed, i64 60
  %i.ben = load float, ptr %i.bem, align 4, !tbaa !904
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bed, i64 116
  %i.bep = load float, ptr %i.beo, align 4, !tbaa !929
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bed, i64 124 ; 2 uses
  %i.ber = load float, ptr %i.beq, align 4, !tbaa !935 ; 2 uses
  %i.bes = fadd float %i.bep, %i.ber
  %i.bet = fsub float %i.ben, %i.bes
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bed, i64 544
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bed, i64 552
  %i.bew = load <2 x float>, ptr %i.bev, align 8, !tbaa !86
  %i.bex = load <2 x float>, ptr %i.beu, align 8, !tbaa !86
  %i.bey = fsub <2 x float> %i.bew, %i.bex
  %i.bez = fadd <2 x float> %i.aed, %i.bey        ; 2 uses
  br i1 %i.ed, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bed, i64 64
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bed, i64 88
  %i.bfc = load <2 x float>, ptr %i.bfb, align 8, !tbaa !86
  %i.bfd = fmul <2 x float> %i.bfc, splat (float 2.000000e+00)
  %i.bfe = load <2 x float>, ptr %i.bfa, align 8, !tbaa !86
  %i.bff = fadd <2 x float> %i.bfd, %i.bfe
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kc, %bb.kd
  %.sroa.0791.0 = phi <2 x float> [ %i.bff, %bb.kd ], [ zeroinitializer, %bb.kc ] ; 3 uses
  %i.bfg = extractelement <2 x float> %i.bez, i64 0
  %i.bfh = select i1 %.6370, float %i.bel, float %i.bfg
  %i.bfi = extractelement <2 x float> %i.bez, i64 1
  %i.bfj = select i1 %.7, float %i.bet, float %i.bfi ; 2 uses
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bed, i64 200 ; 3 uses
  %i.bfl = load i8, ptr %i.bfk, align 8, !tbaa !840, !range !120, !noundef !254
  %i.bfm = and i32 %.1359, 16384
  %.not438 = icmp eq i32 %i.bfm, 0
  br i1 %.not438, label %bb.kf, label %bb.kh

bb.kf:                                            ; preds = %bb.ke
  %.sroa.0791.4.vec.extract = extractelement <2 x float> %.sroa.0791.0, i64 1
  %i.bfn = fcmp ogt float %.sroa.0791.4.vec.extract, %i.bfj
  br i1 %i.bfn, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  %i.bfo = and i32 %.1359, 8
  %.not439 = icmp eq i32 %i.bfo, 0
  %i.bfp = zext i1 %.not439 to i8
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kf, %bb.kg, %bb.ke
  %i.bfq = phi i8 [ 1, %bb.ke ], [ 0, %bb.kf ], [ %i.bfp, %bb.kg ] ; 4 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bed, i64 201 ; 2 uses
  store i8 %i.bfq, ptr %i.bfr, align 1, !tbaa !936
  %i.bfs = and i32 %.1359, 32768
  %.not440 = icmp eq i32 %i.bfs, 0
  br i1 %.not440, label %bb.ki, label %bb.km

bb.ki:                                            ; preds = %bb.kh
  %.sroa.0791.0.vec.extract = extractelement <2 x float> %.sroa.0791.0, i64 0
  %i.bft = trunc nuw i8 %i.bfq to i1
  br i1 %i.bft, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.j, i64 3268
  %i.bfv = load float, ptr %i.bfu, align 4, !tbaa !937
  br label %bb.kk

bb.kk:                                            ; preds = %bb.ki, %bb.kj
  %i.bfw = phi float [ %i.bfv, %bb.kj ], [ 0.000000e+00, %bb.ki ]
  %i.bfx = fsub float %i.bfh, %i.bfw
  %i.bfy = fcmp ogt float %.sroa.0791.0.vec.extract, %i.bfx
  %i.bfz = and i32 %.1359, 8
  %.not441 = icmp eq i32 %i.bfz, 0
  %or.cond478 = select i1 %i.bfy, i1 %.not441, i1 false
  br i1 %or.cond478, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  %i.bga = lshr i32 %.1359, 11
  %i.bgb = trunc i32 %i.bga to i8
  %i.bgc = and i8 %i.bgb, 1
  br label %bb.km

bb.km:                                            ; preds = %bb.kk, %bb.kl, %bb.kh
  %i.bgd = phi i8 [ 1, %bb.kh ], [ %i.bgc, %bb.kl ], [ 0, %bb.kk ] ; 4 uses
  store i8 %i.bgd, ptr %i.bfk, align 8, !tbaa !840
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bed, i64 203 ; 2 uses
  %i.bgf = load i8, ptr %i.bge, align 1, !tbaa !1420
  %i.bgg = shl i8 %i.bgf, 1
  %.not442 = icmp ne i8 %i.bfl, %i.bgd
  %i.bgh = zext i1 %.not442 to i8
  %i.bgi = or disjoint i8 %i.bgg, %i.bgh          ; 3 uses
  store i8 %i.bgi, ptr %i.bge, align 1, !tbaa !1420
  %.not443 = icmp eq i8 %i.bgi, 0
  br i1 %.not443, label %.thread976, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bgj = zext i8 %i.bgi to i32
  br label %bb.ko

bb.ko:                                            ; preds = %bb.ko, %bb.kn
  %.07.i = phi i32 [ 0, %bb.kn ], [ %i.bgm, %bb.ko ]
  %.056.i = phi i32 [ %i.bgj, %bb.kn ], [ %i.bgl, %bb.ko ] ; 2 uses
  %i.bgk = add nuw nsw i32 %.056.i, 255
  %i.bgl = and i32 %i.bgk, %.056.i                ; 2 uses
  %i.bgm = add i32 %.07.i, 1                      ; 2 uses
  %.not.i582 = icmp eq i32 %i.bgl, 0
  br i1 %.not.i582, label %bb.kp, label %bb.ko, !llvm.loop !53

bb.kp:                                            ; preds = %bb.ko
  %i.bgn = icmp ugt i32 %i.bgm, 3
  br i1 %i.bgn, label %bb.kq, label %.thread976

bb.kq:                                            ; preds = %bb.kp
  store i8 1, ptr %i.bfk, align 8, !tbaa !840
  br label %.thread976

.thread976:                                       ; preds = %bb.km, %bb.kq, %bb.kp
  %i.bgo = phi i8 [ %i.bgd, %bb.kp ], [ 1, %bb.kq ], [ %i.bgd, %bb.km ]
  %i.bgp = phi i8 [ 0, %bb.kp ], [ 1, %bb.kq ], [ 0, %bb.km ]
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bed, i64 202
  store i8 %i.bgp, ptr %i.bgq, align 2, !tbaa !1421
  %i.bgr = trunc nuw i8 %i.bgo to i1              ; 2 uses
  %.not991 = xor i1 %i.bgr, true
  %i.bgs = trunc nuw i8 %i.bfq to i1
  %or.cond992 = select i1 %.not991, i1 true, i1 %i.bgs
  br i1 %or.cond992, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %.thread976
  %.sroa.0791.4.vec.extract794 = extractelement <2 x float> %.sroa.0791.0, i64 1
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.j, i64 3268
  %i.bgu = load float, ptr %i.bgt, align 4, !tbaa !937
  %i.bgv = fsub float %i.bfj, %i.bgu
  %i.bgw = fcmp ogt float %.sroa.0791.4.vec.extract794, %i.bgv
  %i.bgx = and i32 %.1359, 8
  %.not444 = icmp eq i32 %i.bgx, 0
  %narrow = select i1 %i.bgw, i1 %.not444, i1 false
  %i.bgy = zext i1 %narrow to i8                  ; 2 uses
  store i8 %i.bgy, ptr %i.bfr, align 1, !tbaa !936
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %.thread976
  %i.bgz = phi i8 [ %i.bgy, %bb.kr ], [ %i.bfq, %.thread976 ]
  %i.bha = trunc nuw i8 %i.bgz to i1
  br i1 %i.bha, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.j, i64 3268
  %i.bhc = load float, ptr %i.bhb, align 4, !tbaa !937
  br label %bb.ku

bb.ku:                                            ; preds = %bb.ks, %bb.kt
  %.cast = phi float [ %i.bhc, %bb.kt ], [ 0.000000e+00, %bb.ks ] ; 2 uses
  br i1 %i.bgr, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.j, i64 3268
  %i.bhe = load float, ptr %i.bhd, align 4, !tbaa !937
  br label %bb.kw

bb.kw:                                            ; preds = %bb.ku, %bb.kv
  %.cast999 = phi float [ %i.bhe, %bb.kv ], [ 0.000000e+00, %bb.ku ] ; 2 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bed, i64 192
  store float %.cast, ptr %i.bhf, align 8, !tbaa !86
  %.sroa_idx787 = getelementptr inbounds nuw i8, ptr %i.bed, i64 196
  store float %.cast999, ptr %.sroa_idx787, align 4, !tbaa !86
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bed, i64 120 ; 2 uses
  %i.bhh = load float, ptr %i.bhg, align 8, !tbaa !938
  %i.bhi = fadd float %.cast, %i.bhh
  store float %i.bhi, ptr %i.bhg, align 8, !tbaa !938
  %i.bhj = fadd float %i.ber, %.cast999
  store float %i.bhj, ptr %i.beq, align 4, !tbaa !935
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowRK6ImVec2PiS5_iPjRK6ImRect.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #35
  %or.cond19 = or i1 %i.wa, %i.ov
  %or.cond479 = select i1 %.not416, i1 true, i1 %or.cond19 ; 2 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.jy, i64 608
  %i.bhl = select i1 %or.cond479, ptr %35, ptr %i.bhk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 4 dereferenceable(16) %i.bhl, i64 16, i1 false), !tbaa.struct !402
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bed, i64 40
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bed, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #35
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bed, i64 56
end_hunk_2
begin_hunk_3_@_ZN5ImGui17ShowMetricsWindowEPb:bb.a
  %i.cdy = fadd float %i.cdu, %i.cdx              ; 2 uses
  store float %i.cdy, ptr %i.cdw, align 4, !tbaa !947
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cdr, i64 40
  %i.cea = load float, ptr %i.cdz, align 8, !tbaa !704
  %i.ceb = fadd float %i.cdy, %i.cea
  %i.cec = getelementptr inbounds nuw i8, ptr %i.cdr, i64 352
  %i.ced = load float, ptr %i.cec, align 8, !tbaa !1001
  %i.cee = fadd float %i.ceb, %i.ced
  store float %i.cee, ptr %i.cdv, align 8, !tbaa !980
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  %i.cef = getelementptr inbounds nuw i8, ptr %i.cdp, i64 4400
  %i.ceg = load float, ptr %i.cef, align 8, !tbaa !426
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.cdp, i64 3232
  %i.cei = load float, ptr %i.ceh, align 8, !tbaa !340
  %i.cej = fadd float %i.ceg, %i.cei
  %i.cek = fmul float %i.cej, 8.000000e+00
  store float f0x80800000, ptr %14, align 4, !tbaa !269
  %i.cel = getelementptr inbounds nuw i8, ptr %14, i64 4
  store float %i.cek, ptr %i.cel, align 4, !tbaa !270
  %i.cem = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.394, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef 136, i32 noundef 256)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  br i1 %i.cem, label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit, label %.loopexit961

_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit: ; preds = %bb.hx, %bb.ia
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %bb.ia ], [ 512, %bb.hx ] ; 3 uses
  %i.cen = getelementptr [12 x i8], ptr %i.g, i64 %indvars.iv1114 ; 3 uses
  %i.ceo = getelementptr i8, ptr %i.cen, i64 -724 ; 2 uses
  %i.cep = load i32, ptr %i.ceo, align 4, !tbaa !534 ; 2 uses
  %i.ceq = icmp eq i32 %i.cep, -1
  br i1 %i.ceq, label %bb.ia, label %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit.i734

_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit.i734: ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit
  %i.cer = getelementptr [8 x i8], ptr @_ZL9GKeyNames, i64 %indvars.iv1114
  %i.ces = getelementptr i8, ptr %i.cer, i64 -4096
  %i.cet = load ptr, ptr %i.ces, align 8, !tbaa !276
  %i.ceu = getelementptr i8, ptr %i.cen, i64 -715
  %i.cev = load i8, ptr %i.ceu, align 1, !tbaa !535, !range !120, !noundef !254
  %i.cew = trunc nuw i8 %i.cev to i1
  br i1 %i.cew, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit.i734
  %i.cex = getelementptr i8, ptr %i.cen, i64 -716
  %i.cey = load i8, ptr %i.cex, align 4, !tbaa !536, !range !120, !noundef !254
  %i.cez = trunc nuw i8 %i.cey to i1
  %i.cfa = select i1 %i.cez, ptr @.str.397, ptr @.str.4
  br label %bb.hz

bb.hz:                                            ; preds = %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit.i734, %bb.hy
  %i.cfb = phi ptr [ %i.cfa, %bb.hy ], [ @.str.396, %_ZN5ImGui25ConvertSingleModFlagToKeyE8ImGuiKey.exit.i734 ]
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.395, ptr noundef %i.cet, i32 noundef %i.cep, ptr noundef nonnull %i.cfb) #35
  %i.cfc = load i32, ptr %i.ceo, align 4, !tbaa !534
  call void @_ZN5ImGui22DebugLocateItemOnHoverEj(i32 noundef %i.cfc)
  br label %bb.ia

bb.ia:                                            ; preds = %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit, %bb.hz
  %indvars.iv.next1115 = add nuw nsw i64 %indvars.iv1114, 1 ; 2 uses
  %exitcond1117.not = icmp eq i64 %indvars.iv.next1115, 667
  br i1 %exitcond1117.not, label %.loopexit961, label %_ZN5ImGui15GetKeyOwnerDataEP12ImGuiContext8ImGuiKey.exit, !llvm.loop !1622

.loopexit961:                                     ; preds = %bb.ia, %bb.hx
  call void @_ZN5ImGui8EndChildEv()
  %i.cfd = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.cfd, i64 5184
  %i.cff = load ptr, ptr %i.cfe, align 8, !tbaa !309 ; 5 uses
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cff, i64 206
  store i8 1, ptr %i.cfg, align 2, !tbaa !688
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cfd, i64 3260
  %i.cfi = load float, ptr %i.cfh, align 4, !tbaa !1040
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.cff, i64 280
  %i.cfk = getelementptr inbounds nuw i8, ptr %i.cff, i64 348 ; 2 uses
  %i.cfl = load float, ptr %i.cfk, align 4, !tbaa !947
  %i.cfm = fsub float %i.cfl, %i.cfi              ; 2 uses
  store float %i.cfm, ptr %i.cfk, align 4, !tbaa !947
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cff, i64 40
  %i.cfo = load float, ptr %i.cfn, align 8, !tbaa !704
  %i.cfp = fadd float %i.cfm, %i.cfo
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.cff, i64 352
  %i.cfr = load float, ptr %i.cfq, align 8, !tbaa !1001
  %i.cfs = fadd float %i.cfp, %i.cfr
  store float %i.cfs, ptr %i.cfj, align 8, !tbaa !980
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.398) #35
  %i.cft = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.cft, i64 5184
  %i.cfv = load ptr, ptr %i.cfu, align 8, !tbaa !309 ; 10 uses
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cfv, i64 209
  %i.cfx = load i8, ptr %i.cfw, align 1, !tbaa !920, !range !120, !noundef !254
  %i.cfy = trunc nuw i8 %i.cfx to i1
  br i1 %i.cfy, label %_ZN5ImGui8SameLineEff.exit742, label %bb.ib

bb.ib:                                            ; preds = %.loopexit961
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.cft, i64 3228
  %i.cga = load float, ptr %i.cfz, align 4, !tbaa !978
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.cfv, i64 280
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cfv, i64 288
  %i.cgd = load float, ptr %i.cgc, align 8, !tbaa !979
  %i.cge = fadd float %i.cga, %i.cgd
  store float %i.cge, ptr %i.cgb, align 8, !tbaa !980
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.cfv, i64 292
  %i.cgg = load float, ptr %i.cgf, align 4, !tbaa !341
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.cfv, i64 284
  store float %i.cgg, ptr %i.cgh, align 4, !tbaa !338
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.cfv, i64 328
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.cfv, i64 320
  %i.cgk = load i64, ptr %i.cgi, align 8, !tbaa !86
  store i64 %i.cgk, ptr %i.cgj, align 8, !tbaa !86
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.cfv, i64 340
  %i.cgm = load float, ptr %i.cgl, align 4, !tbaa !975
  %i.cgn = getelementptr inbounds nuw i8, ptr %i.cfv, i64 336
  store float %i.cgm, ptr %i.cgn, align 8, !tbaa !976
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.cfv, i64 344
  store i8 1, ptr %i.cgo, align 8, !tbaa !977
  br label %_ZN5ImGui8SameLineEff.exit742

_ZN5ImGui8SameLineEff.exit742:                    ; preds = %.loopexit961, %bb.ib
  call fastcc void @_ZL17MetricsHelpMarkerPKc(ptr noundef nonnull @.str.399)
  %i.cgp = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 4 uses
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cgp, i64 5184
  %i.cgr = load ptr, ptr %i.cgq, align 8, !tbaa !309 ; 5 uses
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgr, i64 206
  store i8 1, ptr %i.cgs, align 2, !tbaa !688
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cgp, i64 3260
  %i.cgu = load float, ptr %i.cgt, align 4, !tbaa !1040
  %i.cgv = getelementptr inbounds nuw i8, ptr %i.cgr, i64 280
  %i.cgw = getelementptr inbounds nuw i8, ptr %i.cgr, i64 348 ; 2 uses
  %i.cgx = load float, ptr %i.cgw, align 4, !tbaa !947
  %i.cgy = fadd float %i.cgu, %i.cgx              ; 2 uses
  store float %i.cgy, ptr %i.cgw, align 4, !tbaa !947
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.cgr, i64 40
  %i.cha = load float, ptr %i.cgz, align 8, !tbaa !704
  %i.chb = fadd float %i.cgy, %i.cha
  %i.chc = getelementptr inbounds nuw i8, ptr %i.cgr, i64 352
  %i.chd = load float, ptr %i.chc, align 8, !tbaa !1001
  %i.che = fadd float %i.chb, %i.chd
  store float %i.che, ptr %i.cgv, align 8, !tbaa !980
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.chf = getelementptr inbounds nuw i8, ptr %i.cgp, i64 4400
  %i.chg = load float, ptr %i.chf, align 8, !tbaa !426
  %i.chh = getelementptr inbounds nuw i8, ptr %i.cgp, i64 3232
  %i.chi = load float, ptr %i.chh, align 8, !tbaa !340
  %i.chj = fadd float %i.chg, %i.chi
  %i.chk = fmul float %i.chj, 8.000000e+00
  store float f0x80800000, ptr %15, align 4, !tbaa !269
  %i.chl = getelementptr inbounds nuw i8, ptr %15, i64 4
  store float %i.chk, ptr %i.chl, align 4, !tbaa !270
  %i.chm = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.400, ptr noundef nonnull align 4 dereferenceable(8) %15, i32 noundef 136, i32 noundef 256)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br i1 %i.chm, label %.preheader958, label %.loopexit959

.preheader958:                                    ; preds = %_ZN5ImGui8SameLineEff.exit742
  %i.chn = getelementptr inbounds nuw i8, ptr %i.g, i64 7600
  %i.cho = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.chp = getelementptr inbounds nuw i8, ptr %i.g, i64 7632
  br label %bb.ic

bb.ic:                                            ; preds = %.preheader958, %._crit_edge1045
  %indvars.iv1118 = phi i64 [ 512, %.preheader958 ], [ %indvars.iv.next1119, %._crit_edge1045 ] ; 3 uses
  %i.chq = getelementptr [2 x i8], ptr %i.g, i64 %indvars.iv1118
  %i.chr = getelementptr i8, ptr %i.chq, i64 6256
  %.04611040 = load i16, ptr %i.chr, align 2, !tbaa !275 ; 2 uses
  %.not5381041 = icmp eq i16 %.04611040, -1
  br i1 %.not5381041, label %._crit_edge1045, label %.lr.ph1044.preheader

.lr.ph1044.preheader:                             ; preds = %bb.ic
  %i.chs = trunc nuw nsw i64 %indvars.iv1118 to i32
  br label %.lr.ph1044

._crit_edge1045:                                  ; preds = %bb.is, %bb.ic
  %indvars.iv.next1119 = add nuw nsw i64 %indvars.iv1118, 1 ; 2 uses
  %exitcond1121.not = icmp eq i64 %indvars.iv.next1119, 667
  br i1 %exitcond1121.not, label %.loopexit959, label %bb.ic, !llvm.loop !1623

.lr.ph1044:                                       ; preds = %.lr.ph1044.preheader, %bb.is
  %.04611042 = phi i16 [ %.0461, %bb.is ], [ %.04611040, %.lr.ph1044.preheader ]
  %i.cht = load ptr, ptr %i.chn, align 8, !tbaa !617
  %i.chu = sext i16 %.04611042 to i64
  %i.chv = getelementptr inbounds [16 x i8], ptr %i.cht, i64 %i.chu ; 4 uses
  %i.chw = getelementptr inbounds nuw i8, ptr %i.chv, i64 2
  %i.chx = load i16, ptr %i.chw, align 2, !tbaa !796
  %i.chy = zext i16 %i.chx to i32
  %i.chz = or i32 %i.chs, %i.chy                  ; 5 uses
  %i.cia = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.cib = and i32 %i.chz, 4095                   ; 5 uses
  %i.cic = add nsw i32 %i.cib, -527
  %i.cid = icmp ult i32 %i.cic, 8
  br i1 %i.cid, label %bb.id, label %bb.if

bb.id:                                            ; preds = %.lr.ph1044
  switch i32 %i.cib, label %bb.ie [
    i32 531, label %_ZL17GetModForLRModKey8ImGuiKey.exit.i
    i32 527, label %_ZL17GetModForLRModKey8ImGuiKey.exit.i
  ]

bb.ie:                                            ; preds = %bb.id
  %i.cie = and i32 %i.chz, 4091
  %switch.tableidx = add nsw i32 %i.cie, -528     ; 2 uses
  %i.cif = icmp ult i32 %switch.tableidx, 3
  br i1 %i.cif, label %switch.lookup, label %_ZL17GetModForLRModKey8ImGuiKey.exit.i

switch.lookup:                                    ; preds = %bb.ie
  %i.cig = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN5ImGui17ShowMetricsWindowEPb, i64 %i.cig
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %_ZL17GetModForLRModKey8ImGuiKey.exit.i

_ZL17GetModForLRModKey8ImGuiKey.exit.i:           ; preds = %bb.ie, %switch.lookup, %bb.id, %bb.id
  %i.cih = phi i32 [ 61439, %bb.id ], [ 61439, %bb.id ], [ %switch.ext, %switch.lookup ], [ 65535, %bb.ie ]
  %i.cii = and i32 %i.cih, %i.chz
  br label %bb.if

bb.if:                                            ; preds = %_ZL17GetModForLRModKey8ImGuiKey.exit.i, %.lr.ph1044
  %.0.i743 = phi i32 [ %i.cii, %_ZL17GetModForLRModKey8ImGuiKey.exit.i ], [ %i.chz, %.lr.ph1044 ] ; 5 uses
  %i.cij = getelementptr inbounds nuw i8, ptr %i.cia, i64 10680 ; 5 uses
  %i.cik = and i32 %.0.i743, 4096
  %.not.i744 = icmp eq i32 %i.cik, 0
  %i.cil = select i1 %.not.i744, ptr @.str.4, ptr @.str.109 ; 2 uses
  %i.cim = and i32 %.0.i743, 8192
  %.not21.i745 = icmp eq i32 %i.cim, 0
  %i.cin = select i1 %.not21.i745, ptr @.str.4, ptr @.str.110 ; 2 uses
  %i.cio = and i32 %.0.i743, 16384
  %.not22.i = icmp eq i32 %i.cio, 0
  %i.cip = select i1 %.not22.i, ptr @.str.4, ptr @.str.111 ; 2 uses
  %i.ciq = and i32 %.0.i743, 32768
  %.not23.i = icmp eq i32 %i.ciq, 0
  %i.cir = select i1 %.not23.i, ptr @.str.4, ptr @.str.112 ; 2 uses
  %i.cis = icmp eq i32 %i.cib, 0
  br i1 %i.cis, label %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.i, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.cit = add nsw i32 %i.cib, -512
  %i.ciu = icmp ult i32 %i.cit, 155
  br i1 %i.ciu, label %bb.ih, label %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.thread.i

bb.ih:                                            ; preds = %bb.ig
  %i.civ = zext nneg i32 %i.cib to i64
  %i.ciw = getelementptr [8 x i8], ptr @_ZL9GKeyNames, i64 %i.civ
  %i.cix = getelementptr i8, ptr %i.ciw, i64 -4096
  %i.ciy = load ptr, ptr %i.cix, align 8, !tbaa !276
  br label %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.thread.i

_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.thread.i:    ; preds = %bb.ih, %bb.ig
  %.ph.i = phi ptr [ @.str.72, %bb.ig ], [ %i.ciy, %bb.ih ]
  %i.ciz = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.cij, i64 noundef 64, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.cil, ptr noundef nonnull %i.cin, ptr noundef nonnull %i.cip, ptr noundef nonnull %i.cir, ptr noundef %.ph.i) ; 0 uses
  br label %_ZN5ImGui15GetKeyChordNameEi.exit

_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.i:           ; preds = %bb.if
  %.not36.i = icmp eq i32 %.0.i743, 0             ; 2 uses
  %.str.4.mux.i = select i1 %.not36.i, ptr @.str.107, ptr @.str.4
  %i.cja = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.cij, i64 noundef 64, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.cil, ptr noundef nonnull %i.cin, ptr noundef nonnull %i.cip, ptr noundef nonnull %i.cir, ptr noundef nonnull %.str.4.mux.i) ; 0 uses
  br i1 %.not36.i, label %_ZN5ImGui15GetKeyChordNameEi.exit, label %bb.ii

bb.ii:                                            ; preds = %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.i
  %i.cjb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cij) #52 ; 2 uses
  %.not24.i = icmp eq i64 %i.cjb, 0
  br i1 %.not24.i, label %_ZN5ImGui15GetKeyChordNameEi.exit, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.cjc = getelementptr i8, ptr %i.cij, i64 %i.cjb
  %i.cjd = getelementptr i8, ptr %i.cjc, i64 -1
  store i8 0, ptr %i.cjd, align 1, !tbaa !93
  br label %_ZN5ImGui15GetKeyChordNameEi.exit

_ZN5ImGui15GetKeyChordNameEi.exit:                ; preds = %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.thread.i, %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.i, %bb.ii, %bb.ij
  %i.cje = getelementptr inbounds nuw i8, ptr %i.chv, i64 8 ; 2 uses
  %i.cjf = load i32, ptr %i.cje, align 4, !tbaa !795
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.chv, i64 4
  %i.cjh = load i8, ptr %i.cjg, align 4, !tbaa !793
  %i.cji = zext i8 %i.cjh to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.401, ptr noundef nonnull %i.cij, i32 noundef %i.cjf, i32 noundef %i.cji) #35
  %i.cjj = load i32, ptr %i.cje, align 4, !tbaa !795 ; 2 uses
  %i.cjk = icmp eq i32 %i.cjj, 0
  br i1 %i.cjk, label %_ZN5ImGui22DebugLocateItemOnHoverEj.exit, label %bb.ik

bb.ik:                                            ; preds = %_ZN5ImGui15GetKeyChordNameEi.exit
  %i.cjl = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 160)
  br i1 %i.cjl, label %bb.il, label %_ZN5ImGui22DebugLocateItemOnHoverEj.exit

bb.il:                                            ; preds = %bb.ik
  %i.cjm = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 9 uses
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cjm, i64 7644
  store i32 %i.cjj, ptr %i.cjn, align 4, !tbaa !859
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cjm, i64 10209
  store i8 2, ptr %i.cjo, align 1, !tbaa !858
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjm, i64 10210 ; 2 uses
  store i8 0, ptr %i.cjp, align 2, !tbaa !590
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.cjm, i64 8064
  %i.cjr = load ptr, ptr %i.cjq, align 8, !tbaa !415
  %i.cjs = load ptr, ptr %i.cjr, align 8, !tbaa !416
  %i.cjt = call fastcc noundef ptr @_ZL23GetViewportBgFgDrawListP14ImGuiViewportPmPKc(ptr noundef %i.cjs, i64 noundef 1, ptr noundef nonnull @.str.83)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjm, i64 7716
  %i.cjv = load <2 x float>, ptr %i.cju, align 4, !tbaa !86
  %i.cjw = fadd <2 x float> %i.cjv, splat (float -3.000000e+00)
  store <2 x float> %i.cjw, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cjm, i64 7724
  %i.cjy = load <2 x float>, ptr %i.cjx, align 4, !tbaa !86
  %i.cjz = fadd <2 x float> %i.cjy, splat (float 3.000000e+00)
  store <2 x float> %i.cjz, ptr %2, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.cjt, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef -16711936, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjm, i64 128
  %i.ckb = load i8, ptr %i.cka, align 8, !tbaa !1095, !range !120, !noundef !254
  %i.ckc = trunc nuw i8 %i.ckb to i1
  br i1 %i.ckc, label %bb.im, label %_ZN5ImGui22DebugLocateItemOnHoverEj.exit

bb.im:                                            ; preds = %bb.il
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.cjm, i64 9204
  %i.cke = load float, ptr %i.ckd, align 4, !tbaa !771
  %i.ckf = fcmp ogt float %i.cke, 1.000000e+00
  br i1 %i.ckf, label %bb.in, label %_ZN5ImGui22DebugLocateItemOnHoverEj.exit

bb.in:                                            ; preds = %bb.im
  call void @_ZN5ImGui23DebugBreakButtonTooltipEbPKc(i1 noundef zeroext false, ptr noundef nonnull @.str.559)
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.cjm, i64 10212
  %i.ckh = load i32, ptr %i.ckg, align 4, !tbaa !591
  %i.cki = call noundef zeroext i1 @_ZN5ImGui17IsKeyChordPressedEi(i32 noundef %i.ckh)
  br i1 %i.cki, label %bb.io, label %_ZN5ImGui22DebugLocateItemOnHoverEj.exit

bb.io:                                            ; preds = %bb.in
  store i8 1, ptr %i.cjp, align 2, !tbaa !590
  br label %_ZN5ImGui22DebugLocateItemOnHoverEj.exit

_ZN5ImGui22DebugLocateItemOnHoverEj.exit:         ; preds = %_ZN5ImGui15GetKeyChordNameEi.exit, %bb.ik, %bb.il, %bb.im, %bb.in, %bb.io
  %i.ckj = load i8, ptr %i.cho, align 8, !tbaa !1095, !range !120, !noundef !254
  %i.ckk = trunc nuw i8 %i.ckj to i1
  br i1 %i.ckk, label %bb.ip, label %bb.is

bb.ip:                                            ; preds = %_ZN5ImGui22DebugLocateItemOnHoverEj.exit
  %i.ckl = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.ckl, i64 5184
  %i.ckn = load ptr, ptr %i.ckm, align 8, !tbaa !309 ; 10 uses
  %i.cko = getelementptr inbounds nuw i8, ptr %i.ckn, i64 209
  %i.ckp = load i8, ptr %i.cko, align 1, !tbaa !920, !range !120, !noundef !254
  %i.ckq = trunc nuw i8 %i.ckp to i1
  br i1 %i.ckq, label %_ZN5ImGui8SameLineEff.exit749, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.ckl, i64 3228
  %i.cks = load float, ptr %i.ckr, align 4, !tbaa !978
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.ckn, i64 280
  %i.cku = getelementptr inbounds nuw i8, ptr %i.ckn, i64 288
  %i.ckv = load float, ptr %i.cku, align 8, !tbaa !979
  %i.ckw = fadd float %i.cks, %i.ckv
  store float %i.ckw, ptr %i.ckt, align 8, !tbaa !980
  %i.ckx = getelementptr inbounds nuw i8, ptr %i.ckn, i64 292
  %i.cky = load float, ptr %i.ckx, align 4, !tbaa !341
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.ckn, i64 284
  store float %i.cky, ptr %i.ckz, align 4, !tbaa !338
  %i.cla = getelementptr inbounds nuw i8, ptr %i.ckn, i64 328
  %i.clb = getelementptr inbounds nuw i8, ptr %i.ckn, i64 320
  %i.clc = load i64, ptr %i.cla, align 8, !tbaa !86
  store i64 %i.clc, ptr %i.clb, align 8, !tbaa !86
  %i.cld = getelementptr inbounds nuw i8, ptr %i.ckn, i64 340
  %i.cle = load float, ptr %i.cld, align 4, !tbaa !975
  %i.clf = getelementptr inbounds nuw i8, ptr %i.ckn, i64 336
  store float %i.cle, ptr %i.clf, align 8, !tbaa !976
  %i.clg = getelementptr inbounds nuw i8, ptr %i.ckn, i64 344
  store i8 1, ptr %i.clg, align 8, !tbaa !977
  br label %_ZN5ImGui8SameLineEff.exit749

_ZN5ImGui8SameLineEff.exit749:                    ; preds = %bb.ip, %bb.iq
  %i.clh = call noundef zeroext i1 @_ZN5ImGui16DebugBreakButtonEPKcS1_(ptr noundef nonnull @.str.402, ptr noundef nonnull @.str.403)
  br i1 %i.clh, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %_ZN5ImGui8SameLineEff.exit749
  store i32 %i.chz, ptr %i.chp, align 8, !tbaa !1030
  br label %bb.is

bb.is:                                            ; preds = %_ZN5ImGui8SameLineEff.exit749, %bb.ir, %_ZN5ImGui22DebugLocateItemOnHoverEj.exit
  %.0461 = load i16, ptr %i.chv, align 4, !tbaa !275 ; 2 uses
  %.not538 = icmp eq i16 %.0461, -1
  br i1 %.not538, label %._crit_edge1045, label %.lr.ph1044, !llvm.loop !1624

.loopexit959:                                     ; preds = %._crit_edge1045, %_ZN5ImGui8SameLineEff.exit742
  call void @_ZN5ImGui8EndChildEv()
  %i.cli = getelementptr inbounds nuw i8, ptr %i.g, i64 7628
  %i.clj = load i8, ptr %i.cli, align 4, !tbaa !554, !range !120, !noundef !254
  %i.clk = zext nneg i8 %i.clj to i32
  %i.cll = getelementptr inbounds nuw i8, ptr %i.g, i64 7624
  %i.clm = load i32, ptr %i.cll, align 8, !tbaa !553
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.404, i32 noundef %i.clk, i32 noundef %i.clm) #35
  %i.cln = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.clo = getelementptr inbounds nuw i8, ptr %i.cln, i64 5184
  %i.clp = load ptr, ptr %i.clo, align 8, !tbaa !309 ; 5 uses
  %i.clq = getelementptr inbounds nuw i8, ptr %i.clp, i64 206
  store i8 1, ptr %i.clq, align 2, !tbaa !688
  %i.clr = getelementptr inbounds nuw i8, ptr %i.cln, i64 3260
  %i.cls = load float, ptr %i.clr, align 4, !tbaa !1040
  %i.clt = getelementptr inbounds nuw i8, ptr %i.clp, i64 280
  %i.clu = getelementptr inbounds nuw i8, ptr %i.clp, i64 348 ; 2 uses
  %i.clv = load float, ptr %i.clu, align 4, !tbaa !947
  %i.clw = fsub float %i.clv, %i.cls              ; 2 uses
  store float %i.clw, ptr %i.clu, align 4, !tbaa !947
  %i.clx = getelementptr inbounds nuw i8, ptr %i.clp, i64 40
  %i.cly = load float, ptr %i.clx, align 8, !tbaa !704
  %i.clz = fadd float %i.clw, %i.cly
  %i.cma = getelementptr inbounds nuw i8, ptr %i.clp, i64 352
  %i.cmb = load float, ptr %i.cma, align 8, !tbaa !1001
  %i.cmc = fadd float %i.clz, %i.cmb
  store float %i.cmc, ptr %i.clt, align 8, !tbaa !980
  call void @_ZN5ImGui7TreePopEv() #35
  br label %bb.it

bb.it:                                            ; preds = %.loopexit959, %bb.fv
  %i.cmd = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.405) #35
end_hunk_3
