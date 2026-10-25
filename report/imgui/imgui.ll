Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0
@.str.604 = private unnamed_addr constant [10 x i8] c"#COLLAPSE\00", align 1
@.str.605 = private unnamed_addr constant [7 x i8] c"#CLOSE\00", align 1
@.str.606 = private unnamed_addr constant [10 x i8] c"LeftArrow\00", align 1
@.str.607 = private unnamed_addr constant [11 x i8] c"RightArrow\00", align 1
@.str.608 = private unnamed_addr constant [8 x i8] c"UpArrow\00", align 1
@.str.609 = private unnamed_addr constant [10 x i8] c"DownArrow\00", align 1
@.str.610 = private unnamed_addr constant [7 x i8] c"PageUp\00", align 1
@.str.611 = private unnamed_addr constant [9 x i8] c"PageDown\00", align 1
@.str.612 = private unnamed_addr constant [5 x i8] c"Home\00", align 1
@.str.613 = private unnamed_addr constant [4 x i8] c"End\00", align 1
@.str.614 = private unnamed_addr constant [7 x i8] c"Insert\00", align 1
@.str.615 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.616 = private unnamed_addr constant [10 x i8] c"Backspace\00", align 1
@.str.617 = private unnamed_addr constant [6 x i8] c"Space\00", align 1
@.str.618 = private unnamed_addr constant [6 x i8] c"Enter\00", align 1
@.str.619 = private unnamed_addr constant [7 x i8] c"Escape\00", align 1
@.str.620 = private unnamed_addr constant [9 x i8] c"LeftCtrl\00", align 1
@.str.621 = private unnamed_addr constant [10 x i8] c"LeftShift\00", align 1
@.str.622 = private unnamed_addr constant [8 x i8] c"LeftAlt\00", align 1
@.str.623 = private unnamed_addr constant [10 x i8] c"LeftSuper\00", align 1
@.str.624 = private unnamed_addr constant [10 x i8] c"RightCtrl\00", align 1
@.str.625 = private unnamed_addr constant [11 x i8] c"RightShift\00", align 1
@.str.626 = private unnamed_addr constant [9 x i8] c"RightAlt\00", align 1
@.str.627 = private unnamed_addr constant [11 x i8] c"RightSuper\00", align 1
@.str.628 = private unnamed_addr constant [5 x i8] c"Menu\00", align 1
@.str.629 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.630 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.631 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.632 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.633 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.634 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.635 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.636 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.637 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.638 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.639 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.640 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.641 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.642 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.643 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.644 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.645 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.646 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.647 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.648 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.649 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.650 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.651 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.652 = private unnamed_addr constant [3 x i8] c"F1\00", align 1
@.str.653 = private unnamed_addr constant [3 x i8] c"F2\00", align 1
@.str.654 = private unnamed_addr constant [3 x i8] c"F3\00", align 1
@.str.655 = private unnamed_addr constant [3 x i8] c"F4\00", align 1
@.str.656 = private unnamed_addr constant [3 x i8] c"F5\00", align 1
@.str.657 = private unnamed_addr constant [3 x i8] c"F6\00", align 1
@.str.658 = private unnamed_addr constant [3 x i8] c"F7\00", align 1
@.str.659 = private unnamed_addr constant [3 x i8] c"F8\00", align 1
@.str.660 = private unnamed_addr constant [3 x i8] c"F9\00", align 1
@.str.661 = private unnamed_addr constant [4 x i8] c"F10\00", align 1
@.str.662 = private unnamed_addr constant [4 x i8] c"F11\00", align 1
@.str.663 = private unnamed_addr constant [4 x i8] c"F12\00", align 1
@.str.664 = private unnamed_addr constant [4 x i8] c"F13\00", align 1
@.str.665 = private unnamed_addr constant [4 x i8] c"F14\00", align 1
@.str.666 = private unnamed_addr constant [4 x i8] c"F15\00", align 1
@.str.667 = private unnamed_addr constant [4 x i8] c"F16\00", align 1
@.str.668 = private unnamed_addr constant [4 x i8] c"F17\00", align 1
@.str.669 = private unnamed_addr constant [4 x i8] c"F18\00", align 1
@.str.670 = private unnamed_addr constant [4 x i8] c"F19\00", align 1
@.str.671 = private unnamed_addr constant [4 x i8] c"F20\00", align 1
@.str.672 = private unnamed_addr constant [4 x i8] c"F21\00", align 1
@.str.673 = private unnamed_addr constant [4 x i8] c"F22\00", align 1
@.str.674 = private unnamed_addr constant [4 x i8] c"F23\00", align 1
@.str.675 = private unnamed_addr constant [4 x i8] c"F24\00", align 1
@.str.676 = private unnamed_addr constant [11 x i8] c"Apostrophe\00", align 1
@.str.677 = private unnamed_addr constant [6 x i8] c"Comma\00", align 1
@.str.678 = private unnamed_addr constant [6 x i8] c"Minus\00", align 1
@.str.679 = private unnamed_addr constant [7 x i8] c"Period\00", align 1
@.str.680 = private unnamed_addr constant [6 x i8] c"Slash\00", align 1
@.str.681 = private unnamed_addr constant [10 x i8] c"Semicolon\00", align 1
@.str.682 = private unnamed_addr constant [6 x i8] c"Equal\00", align 1
@.str.683 = private unnamed_addr constant [12 x i8] c"LeftBracket\00", align 1
@.str.684 = private unnamed_addr constant [10 x i8] c"Backslash\00", align 1
@.str.685 = private unnamed_addr constant [13 x i8] c"RightBracket\00", align 1
@.str.686 = private unnamed_addr constant [12 x i8] c"GraveAccent\00", align 1
@.str.687 = private unnamed_addr constant [9 x i8] c"CapsLock\00", align 1
@.str.688 = private unnamed_addr constant [11 x i8] c"ScrollLock\00", align 1
@.str.689 = private unnamed_addr constant [8 x i8] c"NumLock\00", align 1
@.str.690 = private unnamed_addr constant [12 x i8] c"PrintScreen\00", align 1
@.str.691 = private unnamed_addr constant [6 x i8] c"Pause\00", align 1
@.str.692 = private unnamed_addr constant [8 x i8] c"Keypad0\00", align 1
@.str.693 = private unnamed_addr constant [8 x i8] c"Keypad1\00", align 1
@.str.694 = private unnamed_addr constant [8 x i8] c"Keypad2\00", align 1
@.str.695 = private unnamed_addr constant [8 x i8] c"Keypad3\00", align 1
@.str.696 = private unnamed_addr constant [8 x i8] c"Keypad4\00", align 1
@.str.697 = private unnamed_addr constant [8 x i8] c"Keypad5\00", align 1
@.str.698 = private unnamed_addr constant [8 x i8] c"Keypad6\00", align 1
@.str.699 = private unnamed_addr constant [8 x i8] c"Keypad7\00", align 1
@.str.700 = private unnamed_addr constant [8 x i8] c"Keypad8\00", align 1
@.str.701 = private unnamed_addr constant [8 x i8] c"Keypad9\00", align 1
@.str.702 = private unnamed_addr constant [14 x i8] c"KeypadDecimal\00", align 1
@.str.703 = private unnamed_addr constant [13 x i8] c"KeypadDivide\00", align 1
@.str.704 = private unnamed_addr constant [15 x i8] c"KeypadMultiply\00", align 1
@.str.705 = private unnamed_addr constant [15 x i8] c"KeypadSubtract\00", align 1
@.str.706 = private unnamed_addr constant [10 x i8] c"KeypadAdd\00", align 1
@.str.707 = private unnamed_addr constant [12 x i8] c"KeypadEnter\00", align 1
@.str.708 = private unnamed_addr constant [12 x i8] c"KeypadEqual\00", align 1
@.str.709 = private unnamed_addr constant [8 x i8] c"AppBack\00", align 1
@.str.710 = private unnamed_addr constant [11 x i8] c"AppForward\00", align 1
@.str.711 = private unnamed_addr constant [7 x i8] c"Oem102\00", align 1
@.str.712 = private unnamed_addr constant [13 x i8] c"GamepadStart\00", align 1
@.str.713 = private unnamed_addr constant [12 x i8] c"GamepadBack\00", align 1
@.str.714 = private unnamed_addr constant [16 x i8] c"GamepadFaceLeft\00", align 1
@.str.715 = private unnamed_addr constant [17 x i8] c"GamepadFaceRight\00", align 1
@.str.716 = private unnamed_addr constant [14 x i8] c"GamepadFaceUp\00", align 1
@.str.717 = private unnamed_addr constant [16 x i8] c"GamepadFaceDown\00", align 1
@.str.718 = private unnamed_addr constant [16 x i8] c"GamepadDpadLeft\00", align 1
@.str.719 = private unnamed_addr constant [17 x i8] c"GamepadDpadRight\00", align 1
@.str.720 = private unnamed_addr constant [14 x i8] c"GamepadDpadUp\00", align 1
@.str.721 = private unnamed_addr constant [16 x i8] c"GamepadDpadDown\00", align 1
@.str.722 = private unnamed_addr constant [10 x i8] c"GamepadL1\00", align 1
@.str.723 = private unnamed_addr constant [10 x i8] c"GamepadR1\00", align 1
@.str.724 = private unnamed_addr constant [10 x i8] c"GamepadL2\00", align 1
@.str.725 = private unnamed_addr constant [10 x i8] c"GamepadR2\00", align 1
@.str.726 = private unnamed_addr constant [10 x i8] c"GamepadL3\00", align 1
@.str.727 = private unnamed_addr constant [10 x i8] c"GamepadR3\00", align 1
@.str.728 = private unnamed_addr constant [18 x i8] c"GamepadLStickLeft\00", align 1
@.str.729 = private unnamed_addr constant [19 x i8] c"GamepadLStickRight\00", align 1
@.str.730 = private unnamed_addr constant [16 x i8] c"GamepadLStickUp\00", align 1
@.str.731 = private unnamed_addr constant [18 x i8] c"GamepadLStickDown\00", align 1
@.str.732 = private unnamed_addr constant [18 x i8] c"GamepadRStickLeft\00", align 1
@.str.733 = private unnamed_addr constant [19 x i8] c"GamepadRStickRight\00", align 1
@.str.734 = private unnamed_addr constant [16 x i8] c"GamepadRStickUp\00", align 1
@.str.735 = private unnamed_addr constant [18 x i8] c"GamepadRStickDown\00", align 1
@.str.736 = private unnamed_addr constant [10 x i8] c"MouseLeft\00", align 1
@.str.737 = private unnamed_addr constant [11 x i8] c"MouseRight\00", align 1
@.str.738 = private unnamed_addr constant [12 x i8] c"MouseMiddle\00", align 1
@.str.739 = private unnamed_addr constant [8 x i8] c"MouseX1\00", align 1
@.str.740 = private unnamed_addr constant [8 x i8] c"MouseX2\00", align 1
@.str.741 = private unnamed_addr constant [12 x i8] c"MouseWheelX\00", align 1
@.str.742 = private unnamed_addr constant [12 x i8] c"MouseWheelY\00", align 1
@.str.743 = private unnamed_addr constant [8 x i8] c"ModCtrl\00", align 1
@.str.744 = private unnamed_addr constant [9 x i8] c"ModShift\00", align 1
@.str.745 = private unnamed_addr constant [7 x i8] c"ModAlt\00", align 1
@.str.746 = private unnamed_addr constant [9 x i8] c"ModSuper\00", align 1
@.str.747 = private unnamed_addr constant [32 x i8] c"[io] LockWheelingWindow() \22%s\22\0A\00", align 1
@.str.748 = private unnamed_addr constant [40 x i8] c"[io] %s: MousePos (-FLT_MAX, -FLT_MAX)\0A\00", align 1
@.str.749 = private unnamed_addr constant [37 x i8] c"[io] %s: MousePos (%.1f, %.1f) (%s)\0A\00", align 1
@.str.750 = private unnamed_addr constant [33 x i8] c"[io] %s: MouseButton %d %s (%s)\0A\00", align 1
@.str.751 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.752 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.753 = private unnamed_addr constant [39 x i8] c"[io] %s: MouseWheel (%.3f, %.3f) (%s)\0A\00", align 1
@.str.754 = private unnamed_addr constant [22 x i8] c"[io] %s: Key \22%s\22 %s\0A\00", align 1
@.str.755 = private unnamed_addr constant [30 x i8] c"[io] %s: Text: '%s' (U+%08X)\0A\00", align 1
@.str.756 = private unnamed_addr constant [24 x i8] c"[io] %s: AppFocused %d\0A\00", align 1
@.str.757 = private unnamed_addr constant [21 x i8] c"##NavUpdateWindowing\00", align 1
@.str.758 = private unnamed_addr constant [58 x i8] c"[focus] NavRestoreLayer: from \22%s\22 to SetNavWindow(\22%s\22)\0A\00", align 1
@.str.759 = private unnamed_addr constant [32 x i8] c"[nav] NavUpdateCancelRequest()\0A\00", align 1
@.str.760 = private unnamed_addr constant [32 x i8] c"[nav] NavMoveRequestForward %d\0A\00", align 1
@.str.761 = private unnamed_addr constant [56 x i8] c"[nav] NavInitRequest: from move, window \22%s\22, layer=%d\0A\00", align 1
@.str.762 = private unnamed_addr constant [57 x i8] c"[nav] NavMoveRequest: clamp NavRectRel for gamepad move\0A\00", align 1
@.str.763 = private unnamed_addr constant [22 x i8] c"##NavWindowingOverlay\00", align 1
@.str.764 = private unnamed_addr constant [14 x i8] c"##MainMenuBar\00", align 1
@.str.765 = private unnamed_addr constant [15 x i8] c"*Missing Text*\00", align 1
@.str.766 = private unnamed_addr constant [10 x i8] c"Pos=%i,%i\00", align 1
@.str.767 = private unnamed_addr constant [11 x i8] c"Size=%i,%i\00", align 1
@.str.768 = private unnamed_addr constant [13 x i8] c"Collapsed=%d\00", align 1
@.str.769 = private unnamed_addr constant [11 x i8] c"IsChild=%d\00", align 1
@.str.770 = private unnamed_addr constant [12 x i8] c"LastUsed=%d\00", align 1
@.str.771 = private unnamed_addr constant [10 x i8] c"[%s][%s]\0A\00", align 1
@.str.772 = private unnamed_addr constant [11 x i8] c"IsChild=1\0A\00", align 1
@.str.773 = private unnamed_addr constant [12 x i8] c"Size=%d,%d\0A\00", align 1
@.str.774 = private unnamed_addr constant [11 x i8] c"Pos=%d,%d\0A\00", align 1
@.str.775 = private unnamed_addr constant [13 x i8] c"Collapsed=1\0A\00", align 1
@.str.776 = private unnamed_addr constant [15 x i8] c"LastUsed=%08d\0A\00", align 1
@.str.777 = private unnamed_addr constant [9 x i8] c"xdg-open\00", align 1
@.str.778 = private unnamed_addr constant [8 x i8] c"#%03d: \00", align 1
@.str.779 = private unnamed_addr constant [5 x i8] c"0x%X\00", align 1
@.str.780 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.781 = private unnamed_addr constant [12 x i8] c"TouchScreen\00", align 1
@.str.782 = private unnamed_addr constant [4 x i8] c"Pen\00", align 1
@__const._ZL18GetMouseSourceName16ImGuiMouseSource.mouse_source_names = private unnamed_addr constant [3 x ptr] [ptr @.str.780, ptr @.str.781, ptr @.str.782], align 16
@.str.783 = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.str.784 = private unnamed_addr constant [8 x i8] c"Gamepad\00", align 1
@__const._ZL18GetInputSourceName16ImGuiInputSource.input_source_names = private unnamed_addr constant [4 x ptr] [ptr @.str.112, ptr @.str.780, ptr @.str.783, ptr @.str.784], align 16
@.str.785 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.786 = private unnamed_addr constant [24 x i8] c"%d past errors skipped.\00", align 1
@.str.787 = private unnamed_addr constant [85 x i8] c"Hold Shift when clicking to enable for 2 frames only (useful for spammy log entries)\00", align 1
@.str.788 = private unnamed_addr constant [18 x i8] c"HoveredId: 0x%08X\00", align 1
@.str.789 = private unnamed_addr constant [28 x i8] c"Press ESC to abort picking.\00", align 1
@.str.790 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.791 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.792 = private unnamed_addr constant [7 x i8] c"Middle\00", align 1
@__const._ZN5ImGuiL25UpdateDebugToolItemPickerEv.mouse_button_names = private unnamed_addr constant [3 x ptr] [ptr @.str.790, ptr @.str.791, ptr @.str.792], align 16
@.str.793 = private unnamed_addr constant [64 x i8] c"Remap w/ Ctrl+Shift: click anywhere to select new mouse button.\00", align 1
@.str.794 = private unnamed_addr constant [60 x i8] c"Click %s Button to break in debugger! (remap w/ Ctrl+Shift)\00", align 1
@.str.795 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.796 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.798 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.799 = private unnamed_addr constant [14 x i8] c"\22%s\22 [window]\00", align 1
@.str.800 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@switch.table._ZN5ImGui17GetStyleColorNameEi = private unnamed_addr constant [61 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], align 8
@switch.table._ZN5ImGui17IsKeyChordPressedEiij = private unnamed_addr constant [3 x i16] [i16 8192, i16 16384, i16 -32768], align 4
@switch.table._ZN5ImGui17ShowMetricsWindowEPb = private unnamed_addr constant [3 x i32] [i32 -8193, i32 -16385, i32 -32769], align 4
@switch.table._ZN5ImGui17ShowMetricsWindowEPb.15 = private unnamed_addr constant [6 x i16] [i16 240, i16 256, i16 272, i16 352, i16 288, i16 304], align 8
@switch.table._ZN5ImGui17ShowMetricsWindowEPb.16 = private unnamed_addr constant [6 x i16] [i16 248, i16 264, i16 280, i16 360, i16 296, i16 312], align 8

@_ZN10ImGuiStyleC1Ev = unnamed_addr alias void (ptr), ptr @_ZN10ImGuiStyleC2Ev
@_ZN7ImGuiIOC1Ev = unnamed_addr alias void (ptr), ptr @_ZN7ImGuiIOC2Ev
@_ZN15ImGuiPlatformIOC1Ev = unnamed_addr alias void (ptr), ptr @_ZN15ImGuiPlatformIOC2Ev
@_ZN15ImGuiTextFilterC1EPKc = unnamed_addr alias void (ptr, ptr), ptr @_ZN15ImGuiTextFilterC2EPKc
@_ZN16ImGuiListClipperC1Ev = unnamed_addr alias void (ptr), ptr @_ZN16ImGuiListClipperC2Ev
@_ZN16ImGuiListClipperD1Ev = unnamed_addr alias void (ptr), ptr @_ZN16ImGuiListClipperD2Ev
@_ZN12ImGuiContextC1EP11ImFontAtlas = unnamed_addr alias void (ptr, ptr), ptr @_ZN12ImGuiContextC2EP11ImFontAtlas
@_ZN12ImGuiContextD1Ev = unnamed_addr alias void (ptr), ptr @_ZN12ImGuiContextD2Ev
@_ZN11ImGuiWindowC1EP12ImGuiContextPKc = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11ImGuiWindowC2EP12ImGuiContextPKc
@_ZN11ImGuiWindowD1Ev = unnamed_addr alias void (ptr), ptr @_ZN11ImGuiWindowD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN10ImGuiStyleC2Ev(ptr noundef nonnull align 4 dereferenceable(1328) initializes((0, 315), (316, 1328)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 292
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 324
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(976) %scevgep, i8 0, i64 976, i1 false)
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %0, align 4, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float 6.000000e-01, ptr %i.m, align 4, !tbaa !1110
  store i32 1090519040, ptr %i.a, align 4, !tbaa !75
  store i32 1090519040, ptr %i.b, align 4, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.n, align 4, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 4.000000e+00, ptr %i.o, align 4, !tbaa !80
  store <4 x i32> <i32 1107296256, i32 1107296256, i32 0, i32 1056964608>, ptr %i.c, align 4, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.p, align 4, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.q, align 4, !tbaa !75
  store i32 1082130432, ptr %i.d, align 4, !tbaa !75
  store i32 1077936128, ptr %i.e, align 4, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 84
  store <2 x float> zeroinitializer, ptr %i.r, align 4, !tbaa !75
  store <4 x i32> <i32 1090519040, i32 1082130432, i32 1082130432, i32 1082130432>, ptr %i.f, align 4, !tbaa !75
  store <4 x i32> <i32 1082130432, i32 1073741824, i32 0, i32 0>, ptr %i.g, align 4, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 124
  store <4 x float> <float 2.100000e+01, float 6.000000e+00, float 1.400000e+01, float 9.000000e+00>, ptr %i.s, align 4, !tbaa !75
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 140
  store <4 x float> <float 2.000000e+00, float 1.200000e+01, float 0.000000e+00, float 4.000000e+00>, ptr %i.t, align 4, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 156
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00>, ptr %i.u, align 4, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 172
  store <4 x float> <float 1.000000e+00, float 8.000000e+01, float -1.000000e+00, float 0.000000e+00>, ptr %i.v, align 4, !tbaa !75
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 188
  store <2 x float> splat (float 1.000000e+00), ptr %i.w, align 4, !tbaa !75
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 196
  store float f0x3F1C61AA, ptr %i.x, align 4, !tbaa !1111
  store i32 1056964608, ptr %i.h, align 4, !tbaa !75
  store i32 0, ptr %i.i, align 4, !tbaa !75
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 262144, ptr %i.y, align 4, !tbaa !1112
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 212
  store float 1.000000e+00, ptr %i.z, align 4, !tbaa !1113
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store <2 x float> <float 2.000000e+00, float 3.000000e+00>, ptr %i.ab, align 4, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 240
  store float 3.000000e+00, ptr %i.ac, align 4, !tbaa !1114
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 244
  store <4 x i32> <i32 1, i32 1056964608, i32 1056964608, i32 0>, ptr %i.ad, align 4, !tbaa !82
  store i32 0, ptr %i.j, align 4, !tbaa !75
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 264
  store <2 x float> splat (float 1.000000e+00), ptr %i.ae, align 4, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 272
  store float 3.000000e+00, ptr %i.af, align 4, !tbaa !83
  store <4 x i32> <i32 0, i32 1056964608, i32 1101004800, i32 1077936128>, ptr %i.k, align 4, !tbaa !75
  store <4 x i32> <i32 1100480512, i32 1100480512, i32 1077936128, i32 1077936128>, ptr %i.l, align 4, !tbaa !75
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 308
  store float 1.000000e+00, ptr %i.ag, align 4, !tbaa !84
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 1, ptr %i.ah, align 4, !tbaa !1115
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 1, ptr %i.ai, align 1, !tbaa !1116
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 314
  store i8 1, ptr %i.aj, align 2, !tbaa !1117
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 316
  store <2 x float> <float 1.250000e+00, float 3.000000e-01>, ptr %i.ak, align 4, !tbaa !75
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1300
  store <2 x float> splat (float 1.500000e-01), ptr %i.al, align 4, !tbaa !75
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1308
  store float 4.000000e-01, ptr %i.am, align 4, !tbaa !1118
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store i32 41984, ptr %i.an, align 4, !tbaa !1119
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1316
  store i32 197632, ptr %i.ao, align 4, !tbaa !1120
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1320
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ap, align 4, !tbaa !75
  tail call void @_ZN5ImGui15StyleColorsDarkEP10ImGuiStyle(ptr noundef nonnull %0)
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
define void @_ZN10ImGuiStyle13ScaleAllSizesEf(ptr nofree noundef nonnull align 4 dereferenceable(1328) %0, float noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !1121
  %i.c = fmul float %1, %i.b
  store float %i.c, ptr %i.a, align 4, !tbaa !1121
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !75
  %i.f = insertelement <2 x float> poison, float %1, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer ; 16 uses
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = fptosi <2 x float> %i.h to <2 x i32>
  %i.j = sitofp <2 x i32> %i.i to <2 x float>
  store <2 x float> %i.j, ptr %i.d, align 4, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.l = load <2 x float>, ptr %i.k, align 4, !tbaa !75
  %i.m = fmul <2 x float> %i.g, %i.l
  %i.n = fptosi <2 x float> %i.m to <2 x i32>
  %i.o = sitofp <2 x i32> %i.n to <2 x float>
  store <2 x float> %i.o, ptr %i.k, align 4, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load <2 x float>, ptr %i.p, align 4, !tbaa !75
  %i.r = fmul <2 x float> %i.g, %i.q
  %i.s = fptosi <2 x float> %i.r to <2 x i32>
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  store <2 x float> %i.t, ptr %i.p, align 4, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !80
  %i.w = fmul float %1, %i.v
  %i.x = fptosi float %i.w to i32
  %i.y = sitofp i32 %i.x to float
  store float %i.y, ptr %i.u, align 4, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.aa = load <4 x float>, ptr %i.z, align 4, !tbaa !75
  %i.ab = insertelement <4 x float> poison, float %1, i64 0
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.ad = fmul <4 x float> %i.ac, %i.aa
  %i.ae = fptosi <4 x float> %i.ad to <4 x i32>
  %i.af = sitofp <4 x i32> %i.ae to <4 x float>
  store <4 x float> %i.af, ptr %i.z, align 4, !tbaa !75
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.ag, align 4, !tbaa !75
  %i.ai = fmul <2 x float> %i.g, %i.ah
  %i.aj = fptosi <2 x float> %i.ai to <2 x i32>
  %i.ak = sitofp <2 x i32> %i.aj to <2 x float>
  store <2 x float> %i.ak, ptr %i.ag, align 4, !tbaa !75
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.am = load <2 x float>, ptr %i.al, align 4, !tbaa !75
  %i.an = fmul <2 x float> %i.g, %i.am
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>
  %i.ap = sitofp <2 x i32> %i.ao to <2 x float>
  store <2 x float> %i.ap, ptr %i.al, align 4, !tbaa !75
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ar = load <2 x float>, ptr %i.aq, align 4, !tbaa !75
  %i.as = fmul <2 x float> %i.g, %i.ar
  %i.at = fptosi <2 x float> %i.as to <2 x i32>
  %i.au = sitofp <2 x i32> %i.at to <2 x float>
  store <2 x float> %i.au, ptr %i.aq, align 4, !tbaa !75
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.aw = load <2 x float>, ptr %i.av, align 4, !tbaa !75
  %i.ax = fmul <2 x float> %i.g, %i.aw
  %i.ay = fptosi <2 x float> %i.ax to <2 x i32>
  %i.az = sitofp <2 x i32> %i.ay to <2 x float>
  store <2 x float> %i.az, ptr %i.av, align 4, !tbaa !75
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.bb = load <2 x float>, ptr %i.ba, align 4, !tbaa !75
  %i.bc = fmul <2 x float> %i.g, %i.bb
  %i.bd = fptosi <2 x float> %i.bc to <2 x i32>
  %i.be = sitofp <2 x i32> %i.bd to <2 x float>
  store <2 x float> %i.be, ptr %i.ba, align 4, !tbaa !75
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.bg = load <2 x float>, ptr %i.bf, align 4, !tbaa !75
  %i.bh = fmul <2 x float> %i.g, %i.bg
  %i.bi = fptosi <2 x float> %i.bh to <2 x i32>
  %i.bj = sitofp <2 x i32> %i.bi to <2 x float>
  store <2 x float> %i.bj, ptr %i.bf, align 4, !tbaa !75
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.bl = load <4 x float>, ptr %i.bk, align 4, !tbaa !75
  %i.bm = fmul <4 x float> %i.ac, %i.bl
  %i.bn = fptosi <4 x float> %i.bm to <4 x i32>
end_hunk_0
begin_hunk_1_@_ZN5ImGui13ItemHoverableERK6ImRectji:bb.a
  br i1 %.not69, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN5ImGui12SetHoveredIDEj.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 5424
  store i8 1, ptr %i.db, align 8, !tbaa !668
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 5408
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !669
  %.not70 = icmp eq i32 %i.dd, %1
  br i1 %.not70, label %bb.aa, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

bb.aa:                                            ; preds = %bb.z, %_ZN5ImGui12SetHoveredIDEj.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 7848
  %i.df = load i32, ptr %i.de, align 8, !tbaa !425
  %i.dg = icmp eq i32 %1, %i.df
  br i1 %i.dg, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 7856
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !670
  %i.dj = and i32 %i.di, 1024
  %.not71 = icmp eq i32 %i.dj, 0
  %brmerge = or i1 %.not66, %.not71
  br i1 %brmerge, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dk = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 69632)
  br i1 %i.dk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 7924
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !689
  %i.dn = call noundef ptr @_ZN5ImGui15GetKeyChordNameEi(i32 noundef %i.dm)
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.83, ptr noundef nonnull %i.dn)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.aa, %bb.ad, %bb.ac
  %i.do = and i32 %2, 64
  %.not73 = icmp eq i32 %i.do, 0
  br i1 %.not73, label %bb.ah, label %bb.af

.thread:                                          ; preds = %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit.thread
  %i.dp = and i32 %2, 64
  %.not7387 = icmp eq i32 %i.dp, 0
  br i1 %.not7387, label %.thread88, label %.thread89

bb.af:                                            ; preds = %bb.ae
  %i.dq = load i32, ptr %i.bk, align 4, !tbaa !652
  %i.dr = icmp eq i32 %i.dq, %1
  br i1 %i.dr, label %bb.ag, label %.thread89

bb.ag:                                            ; preds = %bb.af
  call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  br label %.thread89

.thread89:                                        ; preds = %.thread, %bb.ag, %bb.af
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 5425
  store i8 1, ptr %i.ds, align 1, !tbaa !686
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

bb.ah:                                            ; preds = %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 10465
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !580, !range !100, !noundef !236
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 5408
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !669
  %i.dy = icmp eq i32 %i.dx, %1
  br i1 %i.dy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dz = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8208
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !399
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !400
  %i.ed = call fastcc noundef ptr @_ZL23GetViewportBgFgDrawListP14ImGuiViewportPmPKc(ptr noundef %i.ec, i64 noundef 1, ptr noundef nonnull @.str.86)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.ed, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.x, i32 noundef -16711681, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 10468
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !582
  %i.eg = icmp eq i32 %i.ef, %1
  br i1 %i.eg, label %bb.al, label %.thread88

bb.al:                                            ; preds = %bb.ak
  call void @llvm.debugtrap()
  br label %.thread88

.thread88:                                        ; preds = %.thread, %bb.ak, %bb.al
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 8217
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !676, !range !100, !noundef !236
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = and i32 %2, 32768
  %i.el = icmp eq i32 %i.ek, 0
  %or.cond79 = and i1 %i.el, %i.ej
  %not.or.cond79 = xor i1 %or.cond79, true
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread

_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit.thread: ; preds = %bb.f, %bb.g, %.thread88, %bb.z, %bb.w, %bb.l, %bb.i, %bb.e, %.thread89, %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.w ], [ false, %.thread89 ], [ false, %bb.z ], [ %not.or.cond79, %.thread88 ], [ false, %bb.l ], [ false, %_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi.exit ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #40 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %i.b = load <2 x float>, ptr %0, align 4, !tbaa !75 ; 3 uses
  %i.c = load <2 x float>, ptr %1, align 4, !tbaa !75 ; 3 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !289  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 616
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !75 ; 2 uses
  %i.h = fcmp oge <2 x float> %i.b, %i.g
  %i.i = select <2 x i1> %i.h, <2 x float> %i.b, <2 x float> %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 624
  %i.k = load <2 x float>, ptr %i.j, align 4, !tbaa !75 ; 2 uses
  %i.l = fcmp olt <2 x float> %i.c, %i.k
  %i.m = select <2 x i1> %i.l, <2 x float> %i.c, <2 x float> %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.8.0 = phi <2 x float> [ %i.m, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi <2 x float> [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3324
  %i.p = load float, ptr %i.n, align 4, !tbaa !249 ; 2 uses
  %.sroa.0.0.vec.extract8 = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.q = load float, ptr %i.o, align 4, !tbaa !249 ; 2 uses
  %i.r = fsub float %.sroa.0.0.vec.extract8, %i.q
  %i.s = fcmp ult float %i.p, %i.r
  br i1 %i.s, label %_ZNK6ImRect15ContainsWithPadERK6ImVec2S2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  %i.u = load float, ptr %i.t, align 4, !tbaa !250 ; 2 uses
  %.sroa.0.4.vec.extract10 = extractelement <2 x float> %.sroa.0.0, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 3328
  %i.w = load float, ptr %i.v, align 4, !tbaa !250 ; 2 uses
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

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui10SetTooltipEPKcz(ptr noundef %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef 2, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui5TextVEPKcP13__va_list_tag(ptr noundef %0, ptr noundef nonnull %1)
  call void @_ZN5ImGui3EndEv()
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef nonnull ptr @_ZN5ImGui15GetKeyChordNameEi(i32 noundef %0) local_unnamed_addr #20 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
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
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5ImGui17ShowMetricsWindowEPb, i64 %i.g
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZL17GetModForLRModKey8ImGuiKey.exit

_ZL17GetModForLRModKey8ImGuiKey.exit:             ; preds = %bb.c, %switch.lookup, %bb.b, %bb.b
  %i.h = phi i32 [ -4097, %bb.b ], [ -4097, %bb.b ], [ %switch.load, %switch.lookup ], [ -1, %bb.c ]
  %i.i = and i32 %i.h, %0
  br label %bb.d

bb.d:                                             ; preds = %_ZL17GetModForLRModKey8ImGuiKey.exit, %bb.a
  %.0 = phi i32 [ %i.i, %_ZL17GetModForLRModKey8ImGuiKey.exit ], [ %0, %bb.a ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 10936 ; 5 uses
  %i.k = and i32 %.0, 4096
  %.not = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not, ptr @.str.4, ptr @.str.114 ; 2 uses
  %i.m = and i32 %.0, 8192
  %.not21 = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not21, ptr @.str.4, ptr @.str.115 ; 2 uses
  %i.o = and i32 %.0, 16384
  %.not22 = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not22, ptr @.str.4, ptr @.str.116 ; 2 uses
  %i.q = and i32 %.0, 32768
  %.not23 = icmp eq i32 %i.q, 0
  %i.r = select i1 %.not23, ptr @.str.4, ptr @.str.117 ; 2 uses
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !256
  br label %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.thread

_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.thread:      ; preds = %bb.f, %bb.e
  %.ph = phi ptr [ @.str.75, %bb.e ], [ %i.y, %bb.f ]
  %i.z = tail call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.j, i64 noundef 64, ptr noundef nonnull @.str.113, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r, ptr noundef %.ph) ; 0 uses
  br label %bb.i

_ZN5ImGui10GetKeyNameE8ImGuiKey.exit:             ; preds = %bb.d
  %.not36 = icmp eq i32 %.0, 0                    ; 2 uses
  %.str.4.mux = select i1 %.not36, ptr @.str.112, ptr @.str.4
  %i.aa = tail call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.j, i64 noundef 64, ptr noundef nonnull @.str.113, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p, ptr noundef nonnull %i.r, ptr noundef nonnull %.str.4.mux) ; 0 uses
  br i1 %.not36, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #57 ; 2 uses
  %.not24 = icmp eq i64 %i.ab, 0
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.j, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  store i8 0, ptr %i.ad, align 1, !tbaa !82
  br label %bb.i

bb.i:                                             ; preds = %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.thread, %bb.g, %bb.h, %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !399
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !400
  %i.e = tail call fastcc noundef ptr @_ZL23GetViewportBgFgDrawListP14ImGuiViewportPmPKc(ptr noundef %i.d, i64 noundef 1, ptr noundef nonnull @.str.86)
  ret ptr %i.e
}

; Function Attrs: nounwind
declare void @llvm.debugtrap() #41

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui11IsClippedExERK6ImRectj(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  %i.f = load float, ptr %i.e, align 4, !tbaa !377
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !378
  %i.j = fcmp olt float %i.f, %i.i
  br i1 %i.j, label %bb.b, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 628
  %i.m = load float, ptr %i.l, align 4, !tbaa !378
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !377
  %i.p = fcmp ogt float %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.q = load float, ptr %i.d, align 4, !tbaa !373
  %i.r = load float, ptr %i.g, align 4, !tbaa !374
  %i.s = fcmp olt float %i.q, %i.r
  br i1 %i.s, label %_ZNK6ImRect8OverlapsERKS_.exit, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit:                   ; preds = %bb.c
  %i.t = load float, ptr %i.k, align 4, !tbaa !374
  %i.u = load float, ptr %0, align 4, !tbaa !373
  %i.v = fcmp ogt float %i.t, %i.u
  br i1 %i.v, label %bb.i, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.a, %bb.b, %bb.c, %_ZNK6ImRect8OverlapsERKS_.exit
  %i.w = icmp eq i32 %1, 0
  br i1 %i.w, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNK6ImRect8OverlapsERKS_.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.y = load i32, ptr %i.x, align 4, !tbaa !652
  %.not = icmp eq i32 %1, %i.y
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 5480
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !690
  %.not14 = icmp eq i32 %1, %i.aa
  br i1 %.not14, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8220
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !379
  %.not15 = icmp eq i32 %1, %i.ac
  br i1 %.not15, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8244
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !664
  %.not16 = icmp eq i32 %1, %i.ae
  br i1 %.not16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK6ImRect8OverlapsERKS_.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 5426
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !691, !range !100, !noundef !236
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %_ZNK6ImRect8OverlapsERKS_.exit
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui15SetLastItemDataEjiiRK6ImRect(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7848
  store i32 %0, ptr %i.b, align 8, !tbaa !425
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7852
  store i32 %1, ptr %i.c, align 4, !tbaa !426
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7856
  store i32 %2, ptr %i.d, align 8, !tbaa !670
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7876
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !386
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7860
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @_ZN5ImGui19CalcWrapWidthForPosERK6ImVec2f(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, float noundef %1) local_unnamed_addr #24 {
bb.a:
  %i.a = fcmp olt float %1, 0.000000e+00
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !289  ; 3 uses
  %i.e = fcmp oeq float %1, 0.000000e+00
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  %i.g = load float, ptr %i.f, align 8, !tbaa !692
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = fcmp ogt float %1, 0.000000e+00
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.j = load float, ptr %i.i, align 8, !tbaa !693
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.l = load float, ptr %i.k, align 8, !tbaa !694
end_hunk_1
begin_hunk_2_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.bdd = getelementptr i8, ptr %i.bda, i64 %.sink1218
  %i.bde = load float, ptr %i.bdd, align 4, !tbaa !764
  %i.bdf = getelementptr i8, ptr %i.bda, i64 %.sink1215
  %i.bdg = load float, ptr %i.bdf, align 4, !tbaa !764
  %i.bdh = fsub float %i.bdc, %i.bde
  %i.bdi = getelementptr i8, ptr %i.bda, i64 %.sink1210
  %i.bdj = load float, ptr %i.bdi, align 4, !tbaa !764
  %i.bdk = fsub float %i.bdg, %i.bdj
  %.sroa.0.0.vec.insert.i735 = insertelement <2 x float> poison, float %i.bdh, i64 0
  %.sroa.0.4.vec.insert.i736 = insertelement <2 x float> %.sroa.0.0.vec.insert.i735, float %i.bdk, i64 1
  br label %.thread977

.thread977:                                       ; preds = %.thread977.sink.split, %bb.jf, %bb.jg
  %.sroa.0894.1 = phi <2 x float> [ zeroinitializer, %bb.jg ], [ zeroinitializer, %bb.jf ], [ %.sroa.0.4.vec.insert.i736, %.thread977.sink.split ] ; 3 uses
  %.sroa.0894.0.vec.extract = extractelement <2 x float> %.sroa.0894.1, i64 0
  %i.bdl = fcmp une float %.sroa.0894.0.vec.extract, 0.000000e+00
  %.sroa.0894.4.vec.extract = extractelement <2 x float> %.sroa.0894.1, i64 1
  %i.bdm = fcmp une float %.sroa.0894.4.vec.extract, 0.000000e+00
  %or.cond16.i = select i1 %i.bdl, i1 true, i1 %i.bdm
  br i1 %or.cond16.i, label %bb.jh, label %bb.jj

bb.jh:                                            ; preds = %.thread977
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.ang, i64 64
  %i.bdo = load float, ptr %i.bdn, align 8, !tbaa !727
  %i.bdp = fmul float %i.bdo, 6.000000e+02
  %i.bdq = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 4528
  %i.bds = load float, ptr %i.bdr, align 8, !tbaa !429
  %i.bdt = fmul float %i.bdp, %i.bds
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.ang, i64 8764 ; 5 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.ang, i64 8748
  store i8 0, ptr %i.bdv, align 4, !tbaa !802
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.ang, i64 8217
  store i8 1, ptr %i.bdw, align 1, !tbaa !676
  %i.bdx = insertelement <2 x float> poison, float %i.bdt, i64 0
  %i.bdy = shufflevector <2 x float> %i.bdx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bdz = fmul <2 x float> %.sroa.0894.1, %i.bdy
  %i.bea = load <2 x float>, ptr %i.bdu, align 4, !tbaa !75
  %i.beb = fadd <2 x float> %i.bea, %i.bdz        ; 3 uses
  store <2 x float> %i.beb, ptr %i.bdu, align 4, !tbaa !75
  %i.bec = load <2 x float>, ptr %i.alx, align 8, !tbaa !75
  %i.bed = fsub <2 x float> %i.avx, %i.bec
  %i.bee = load <2 x float>, ptr %i.avg, align 8, !tbaa !75
  %i.bef = fsub <2 x float> %i.bed, %i.bee        ; 2 uses
  %i.beg = fcmp oge <2 x float> %i.beb, %i.bef
  %i.beh = select <2 x i1> %i.beg, <2 x float> %i.beb, <2 x float> %i.bef ; 2 uses
  store <2 x float> %i.beh, ptr %i.bdu, align 4, !tbaa !75
  %i.bei = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 33, float noundef 1.000000e+00), !inline_history !1430
  store i32 %i.bei, ptr %i.i, align 16, !tbaa !237
  %i.bej = fptosi <2 x float> %i.beh to <2 x i32> ; 2 uses
  %i.bek = icmp ne <2 x i32> %i.bej, zeroinitializer ; 2 uses
  %i.bel = extractelement <2 x i1> %i.bek, i64 0
  %i.bem = extractelement <2 x i1> %i.bek, i64 1
  %or.cond19.i = select i1 %i.bel, i1 true, i1 %i.bem
  br i1 %or.cond19.i, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.ben = sitofp <2 x i32> %i.bej to <2 x float> ; 2 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %i.akc, i64 56
  %i.bep = load <2 x float>, ptr %i.beo, align 8, !tbaa !75
  %i.beq = fadd <2 x float> %i.bep, %i.ben
  %i.ber = bitcast <2 x float> %i.beq to i64
  %i.bes = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %i.akc, i64 %i.ber), !inline_history !1430
  store <2 x float> %i.bes, ptr %21, align 8, !tbaa !75
  %i.bet = load <2 x float>, ptr %i.bdu, align 4, !tbaa !75
  %i.beu = fsub <2 x float> %i.bet, %i.ben
  store <2 x float> %i.beu, ptr %i.bdu, align 4, !tbaa !75
  br label %bb.jj

bb.jj:                                            ; preds = %.thread977, %bb.ji, %bb.jh, %bb.je, %_ZN5ImGui5PopIDEv.exit
  %.sroa.022.0.copyload.i = load float, ptr %i.alx, align 8, !tbaa !75 ; 4 uses
  %.sroa.423.0.copyload.i = load float, ptr %i.aly, align 4, !tbaa !75 ; 4 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %i.akc, i64 56 ; 2 uses
  %.sroa.020.0.copyload.i = load float, ptr %i.bev, align 8, !tbaa !75 ; 4 uses
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akc, i64 60 ; 2 uses
  %.sroa.421.0.copyload.i = load float, ptr %.sroa.421.0..sroa_idx.i, align 4, !tbaa !75 ; 4 uses
  %i.bew = load float, ptr %21, align 8, !tbaa !249 ; 6 uses
  %i.bex = fcmp une float %i.bew, f0x7F7FFFFF
  br i1 %i.bex, label %bb.jk, label %bb.jm

bb.jk:                                            ; preds = %bb.jj
  %i.bey = load float, ptr %i.avg, align 8, !tbaa !615
  %i.bez = fcmp une float %i.bey, %i.bew
  %i.bfa = fcmp une float %.sroa.020.0.copyload.i, %i.bew
  %or.cond250.i = select i1 %i.bez, i1 true, i1 %i.bfa
  br i1 %or.cond250.i, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  store float %i.bew, ptr %i.bev, align 8, !tbaa !725
  store float %i.bew, ptr %i.avg, align 8, !tbaa !615
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk, %bb.jj
  %i.bfb = phi float [ %i.bew, %bb.jl ], [ %.sroa.020.0.copyload.i, %bb.jk ], [ %.sroa.020.0.copyload.i, %bb.jj ]
  %i.bfc = load float, ptr %i.aov, align 4, !tbaa !250 ; 6 uses
  %i.bfd = fcmp une float %i.bfc, f0x7F7FFFFF
  br i1 %i.bfd, label %bb.jn, label %bb.jp

bb.jn:                                            ; preds = %bb.jm
  %i.bfe = load float, ptr %i.avh, align 4, !tbaa !616
  %i.bff = fcmp une float %i.bfe, %i.bfc
  %i.bfg = fcmp une float %.sroa.421.0.copyload.i, %i.bfc
  %or.cond998 = select i1 %i.bff, i1 true, i1 %i.bfg
  br i1 %or.cond998, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  store float %i.bfc, ptr %.sroa.421.0..sroa_idx.i, align 4, !tbaa !910
  store float %i.bfc, ptr %i.avh, align 4, !tbaa !616
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jn, %bb.jo, %bb.jm
  %i.bfh = phi float [ %.sroa.421.0.copyload.i, %bb.jn ], [ %i.bfc, %bb.jo ], [ %.sroa.421.0.copyload.i, %bb.jm ]
  %i.bfi = load float, ptr %20, align 8, !tbaa !249 ; 2 uses
  %i.bfj = fcmp une float %i.bfi, f0x7F7FFFFF
  br i1 %i.bfj, label %bb.jq, label %bb.js

bb.jq:                                            ; preds = %bb.jp
  %i.bfk = fptosi float %i.bfi to i32
  %i.bfl = sitofp i32 %i.bfk to float             ; 3 uses
  %i.bfm = fcmp une float %.sroa.022.0.copyload.i, %i.bfl
  br i1 %i.bfm, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  store float %i.bfl, ptr %i.alx, align 8, !tbaa !693
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq, %bb.jp
  %i.bfn = phi float [ %i.bfl, %bb.jr ], [ %.sroa.022.0.copyload.i, %bb.jq ], [ %.sroa.022.0.copyload.i, %bb.jp ]
  %i.bfo = load float, ptr %i.aou, align 4, !tbaa !250 ; 2 uses
  %i.bfp = fcmp une float %i.bfo, f0x7F7FFFFF
  br i1 %i.bfp, label %bb.jt, label %bb.jv

bb.jt:                                            ; preds = %bb.js
  %i.bfq = fptosi float %i.bfo to i32
  %i.bfr = sitofp i32 %i.bfq to float             ; 3 uses
  %i.bfs = fcmp une float %.sroa.423.0.copyload.i, %i.bfr
  br i1 %i.bfs, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  store float %i.bfr, ptr %i.aly, align 4, !tbaa !735
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt, %bb.js
  %i.bft = phi float [ %i.bfr, %bb.ju ], [ %.sroa.423.0.copyload.i, %bb.jt ], [ %.sroa.423.0.copyload.i, %bb.js ]
  %i.bfu = fcmp une float %.sroa.022.0.copyload.i, %i.bfn
  %i.bfv = fcmp une float %.sroa.423.0.copyload.i, %i.bft
  %or.cond1222 = select i1 %i.bfu, i1 true, i1 %i.bfv
  %i.bfw = fcmp une float %.sroa.020.0.copyload.i, %i.bfb
  %or.cond1223 = select i1 %or.cond1222, i1 true, i1 %i.bfw
  %i.bfx = fcmp une float %.sroa.421.0.copyload.i, %i.bfh
  %or.cond1224 = select i1 %or.cond1223, i1 true, i1 %i.bfx
  br i1 %or.cond1224, label %bb.jw, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit715

bb.jw:                                            ; preds = %bb.jv
  %i.bfy = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.bfz = load i32, ptr %i.anh, align 4, !tbaa !614
  %i.bga = and i32 %i.bfz, 256
  %.not.i714 = icmp eq i32 %i.bga, 0
  br i1 %.not.i714, label %bb.jx, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit715

bb.jx:                                            ; preds = %bb.jw
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bfy, i64 10068 ; 2 uses
  %i.bgc = load float, ptr %i.bgb, align 4, !tbaa !573
  %i.bgd = fcmp ugt float %i.bgc, 0.000000e+00
  br i1 %i.bgd, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit715, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bfy, i64 68
  %i.bgf = load float, ptr %i.bge, align 4, !tbaa !720
  store float %i.bgf, ptr %i.bgb, align 4, !tbaa !573
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit715

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit715: ; preds = %bb.jv, %bb.jy, %bb.jx, %bb.jw
  %.not242.i = icmp eq i32 %.3956, -1
  br i1 %.not242.i, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit, label %bb.jz

bb.jz:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit715
  %i.bgg = load float, ptr %i.aok, align 4, !tbaa !541
  %i.bgh = call fastcc { <2 x float>, <2 x float> } @_ZL19GetResizeBorderRectP11ImGuiWindowiff(ptr noundef nonnull %i.akc, i32 noundef %.3956, float noundef %i.aoj, float noundef %i.bgg), !inline_history !1430 ; 2 uses
  %i.bgi = extractvalue { <2 x float>, <2 x float> } %i.bgh, 0
  %i.bgj = extractvalue { <2 x float>, <2 x float> } %i.bgh, 1
  store <2 x float> %i.bgi, ptr %i.avr, align 8, !tbaa !75
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ang, i64 9816
  store <2 x float> %i.bgj, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !75
  br label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit

_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit: ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit715, %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  %.not483 = icmp eq i32 %.5.i, 0
  br i1 %.not483, label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread, label %bb.ka

bb.ka:                                            ; preds = %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit
  %.not484 = trunc i32 %.5.i to i1
  %spec.select532 = select i1 %.not484, i1 true, i1 %.1413
  %.not485 = icmp ne i32 %.5.i, 1
  %spec.select549 = select i1 %.not485, i1 true, i1 %.4
  br label %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread

_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread: ; preds = %bb.he, %bb.ha, %bb.hb, %bb.hd, %bb.gz, %bb.ka, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit, %bb.gy, %bb.gx
  %.0958 = phi i32 [ -1, %bb.gy ], [ %.3961, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %.3961, %bb.ka ], [ -1, %bb.gx ], [ -1, %bb.gz ], [ -1, %bb.hd ], [ -1, %bb.hb ], [ -1, %bb.ha ], [ -1, %bb.he ]
  %.0953 = phi i32 [ -1, %bb.gy ], [ %.3956, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %.3956, %bb.ka ], [ -1, %bb.gx ], [ -1, %bb.gz ], [ -1, %bb.hd ], [ -1, %bb.hb ], [ -1, %bb.ha ], [ -1, %bb.he ]
  %.4416 = phi i1 [ %.1413, %bb.gy ], [ %.1413, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %spec.select532, %bb.ka ], [ %.1413, %bb.gx ], [ %.1413, %bb.gz ], [ %.1413, %bb.hd ], [ %.1413, %bb.hb ], [ %.1413, %bb.ha ], [ %.1413, %bb.he ]
  %.6 = phi i1 [ %.4, %bb.gy ], [ %.4, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit ], [ %spec.select549, %bb.ka ], [ %.4, %bb.gx ], [ %.4, %bb.gz ], [ %.4, %bb.hd ], [ %.4, %bb.hb ], [ %.4, %bb.ha ], [ %.4, %bb.he ]
  %i.bgk = trunc i32 %.0958 to i8
  %i.bgl = load ptr, ptr %i.g, align 8, !tbaa !601 ; 40 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 216
  store i8 %i.bgk, ptr %i.bgm, align 8, !tbaa !1449
  %i.bgn = trunc i32 %.0953 to i8
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgl, i64 217
  store i8 %i.bgn, ptr %i.bgo, align 1, !tbaa !1450
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgl, i64 207
  %i.bgq = load i8, ptr %i.bgp, align 1, !tbaa !613, !range !100, !noundef !236
  %i.bgr = trunc nuw i8 %i.bgq to i1
  br i1 %i.bgr, label %_Z7ImClampRK6ImVec2S1_S1_.exit.i, label %bb.kb

bb.kb:                                            ; preds = %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgl, i64 56
  %i.bgt = load float, ptr %i.bgs, align 8, !tbaa !725
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgl, i64 60
  %i.bgv = load float, ptr %i.bgu, align 4, !tbaa !910
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgl, i64 116
  %i.bgx = load float, ptr %i.bgw, align 4, !tbaa !934
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgl, i64 124 ; 2 uses
  %i.bgz = load float, ptr %i.bgy, align 4, !tbaa !937 ; 2 uses
  %i.bha = fadd float %i.bgx, %i.bgz
  %i.bhb = fsub float %i.bgv, %i.bha
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bgl, i64 552
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bgl, i64 560
  %i.bhe = load <2 x float>, ptr %i.bhd, align 8, !tbaa !75
  %i.bhf = load <2 x float>, ptr %i.bhc, align 8, !tbaa !75
  %i.bhg = fsub <2 x float> %i.bhe, %i.bhf
  %i.bhh = fadd <2 x float> %i.aep, %i.bhg        ; 2 uses
  br i1 %i.eg, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bgl, i64 64
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bgl, i64 88
  %i.bhk = load <2 x float>, ptr %i.bhj, align 8, !tbaa !75
  %i.bhl = fmul <2 x float> %i.bhk, splat (float 2.000000e+00)
  %i.bhm = load <2 x float>, ptr %i.bhi, align 8, !tbaa !75
  %i.bhn = fadd <2 x float> %i.bhl, %i.bhm
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kb, %bb.kc
  %.sroa.0826.0 = phi <2 x float> [ %i.bhn, %bb.kc ], [ zeroinitializer, %bb.kb ] ; 3 uses
  %i.bho = extractelement <2 x float> %i.bhh, i64 0
  %i.bhp = select i1 %.4416, float %i.bgt, float %i.bho
  %i.bhq = extractelement <2 x float> %i.bhh, i64 1
  %i.bhr = select i1 %.6, float %i.bhb, float %i.bhq ; 2 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bgl, i64 200 ; 3 uses
  %i.bht = load i8, ptr %i.bhs, align 8, !tbaa !835, !range !100, !noundef !236
  %i.bhu = and i32 %.1403, 16384
  %.not486 = icmp eq i32 %i.bhu, 0
  br i1 %.not486, label %bb.ke, label %bb.kg

bb.ke:                                            ; preds = %bb.kd
  %.sroa.0826.4.vec.extract = extractelement <2 x float> %.sroa.0826.0, i64 1
  %i.bhv = fcmp ogt float %.sroa.0826.4.vec.extract, %i.bhr
  br i1 %i.bhv, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  %i.bhw = and i32 %.1403, 8
  %.not487 = icmp eq i32 %i.bhw, 0
  %i.bhx = zext i1 %.not487 to i8
  br label %bb.kg

bb.kg:                                            ; preds = %bb.ke, %bb.kf, %bb.kd
  %i.bhy = phi i8 [ 1, %bb.kd ], [ 0, %bb.ke ], [ %i.bhx, %bb.kf ] ; 4 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bgl, i64 201 ; 2 uses
  store i8 %i.bhy, ptr %i.bhz, align 1, !tbaa !938
  %i.bia = and i32 %.1403, 32768
  %.not488 = icmp eq i32 %i.bia, 0
  br i1 %.not488, label %bb.kh, label %bb.kl

bb.kh:                                            ; preds = %bb.kg
  %.sroa.0826.0.vec.extract = extractelement <2 x float> %.sroa.0826.0, i64 0
  %i.bib = trunc nuw i8 %i.bhy to i1
  br i1 %i.bib, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.bic = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bid = load float, ptr %i.bic, align 4, !tbaa !939
  br label %bb.kj

bb.kj:                                            ; preds = %bb.kh, %bb.ki
  %i.bie = phi float [ %i.bid, %bb.ki ], [ 0.000000e+00, %bb.kh ]
  %i.bif = fsub float %i.bhp, %i.bie
  %i.big = fcmp ogt float %.sroa.0826.0.vec.extract, %i.bif
  %i.bih = and i32 %.1403, 8
  %.not489 = icmp eq i32 %i.bih, 0
  %or.cond533 = select i1 %i.big, i1 %.not489, i1 false
  br i1 %or.cond533, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.bii = lshr i32 %.1403, 11
  %i.bij = trunc i32 %i.bii to i8
  %i.bik = and i8 %i.bij, 1
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kj, %bb.kk, %bb.kg
  %i.bil = phi i8 [ 1, %bb.kg ], [ %i.bik, %bb.kk ], [ 0, %bb.kj ] ; 4 uses
  store i8 %i.bil, ptr %i.bhs, align 8, !tbaa !835
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bgl, i64 203 ; 2 uses
  %i.bin = load i8, ptr %i.bim, align 1, !tbaa !1451
  %i.bio = shl i8 %i.bin, 1
  %.not491 = icmp ne i8 %i.bht, %i.bil
  %i.bip = zext i1 %.not491 to i8
  %i.biq = or disjoint i8 %i.bio, %i.bip          ; 3 uses
  store i8 %i.biq, ptr %i.bim, align 1, !tbaa !1451
  %.not492 = icmp eq i8 %i.biq, 0
  br i1 %.not492, label %.thread983, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.bir = zext i8 %i.biq to i32
  br label %.lr.ph.i626

.lr.ph.i626:                                      ; preds = %bb.km, %.lr.ph.i626
  %.08.i = phi i32 [ %i.biu, %.lr.ph.i626 ], [ 0, %bb.km ]
  %.057.i = phi i32 [ %i.bit, %.lr.ph.i626 ], [ %i.bir, %bb.km ] ; 2 uses
  %i.bis = add nuw nsw i32 %.057.i, 255
  %i.bit = and i32 %i.bis, %.057.i                ; 2 uses
  %i.biu = add i32 %.08.i, 1                      ; 2 uses
  %.not.i627 = icmp eq i32 %i.bit, 0
  br i1 %.not.i627, label %bb.kn, label %.lr.ph.i626, !llvm.loop !46

bb.kn:                                            ; preds = %.lr.ph.i626
  %i.biv = icmp ugt i32 %i.biu, 3
  br i1 %i.biv, label %bb.ko, label %.thread983

bb.ko:                                            ; preds = %bb.kn
  store i8 1, ptr %i.bhs, align 8, !tbaa !835
  br label %.thread983

.thread983:                                       ; preds = %bb.kl, %bb.ko, %bb.kn
  %i.biw = phi i8 [ %i.bil, %bb.kn ], [ 1, %bb.ko ], [ %i.bil, %bb.kl ]
  %i.bix = phi i8 [ 0, %bb.kn ], [ 1, %bb.ko ], [ 0, %bb.kl ]
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bgl, i64 202
  store i8 %i.bix, ptr %i.biy, align 2, !tbaa !1452
  %i.biz = trunc nuw i8 %i.biw to i1              ; 2 uses
  %.not999 = xor i1 %i.biz, true
  %i.bja = trunc nuw i8 %i.bhy to i1
  %or.cond1000 = select i1 %.not999, i1 true, i1 %i.bja
  br i1 %or.cond1000, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %.thread983
  %.sroa.0826.4.vec.extract829 = extractelement <2 x float> %.sroa.0826.0, i64 1
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bjc = load float, ptr %i.bjb, align 4, !tbaa !939
  %i.bjd = fsub float %i.bhr, %i.bjc
  %i.bje = fcmp ogt float %.sroa.0826.4.vec.extract829, %i.bjd
  %i.bjf = and i32 %.1403, 8
  %.not493 = icmp eq i32 %i.bjf, 0
  %narrow = select i1 %i.bje, i1 %.not493, i1 false
  %i.bjg = zext i1 %narrow to i8                  ; 2 uses
  store i8 %i.bjg, ptr %i.bhz, align 1, !tbaa !938
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %.thread983
  %i.bjh = phi i8 [ %i.bjg, %bb.kp ], [ %i.bhy, %.thread983 ]
  %i.bji = trunc nuw i8 %i.bjh to i1
  br i1 %i.bji, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bjk = load float, ptr %i.bjj, align 4, !tbaa !939
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kq, %bb.kr
  %.cast = phi float [ %i.bjk, %bb.kr ], [ 0.000000e+00, %bb.kq ] ; 2 uses
  br i1 %i.biz, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bjm = load float, ptr %i.bjl, align 4, !tbaa !939
  br label %bb.ku

bb.ku:                                            ; preds = %bb.ks, %bb.kt
  %.cast1008 = phi float [ %i.bjm, %bb.kt ], [ 0.000000e+00, %bb.ks ] ; 2 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bgl, i64 192
  store float %.cast, ptr %i.bjn, align 8, !tbaa !75
  %.sroa_idx822 = getelementptr inbounds nuw i8, ptr %i.bgl, i64 196
  store float %.cast1008, ptr %.sroa_idx822, align 4, !tbaa !75
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bgl, i64 120 ; 2 uses
  %i.bjp = load float, ptr %i.bjo, align 8, !tbaa !940
  %i.bjq = fadd float %.cast, %i.bjp
  store float %i.bjq, ptr %i.bjo, align 8, !tbaa !940
  %i.bjr = fadd float %i.bgz, %.cast1008
  store float %i.bjr, ptr %i.bgy, align 4, !tbaa !937
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit.i

_Z7ImClampRK6ImVec2S1_S1_.exit.i:                 ; preds = %bb.ku, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #41
  %or.cond29 = or i1 %i.we, %i.oy
  %or.cond534 = select i1 %.not462, i1 true, i1 %or.cond29 ; 2 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.kb, i64 616
  %i.bjt = select i1 %or.cond534, ptr %28, ptr %i.bjs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %i.bjt, i64 16, i1 false), !tbaa.struct !386
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bgl, i64 40
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bgl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #41
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bgl, i64 56
end_hunk_2
begin_hunk_3_@_ZN5ImGui17ShowMetricsWindowEPb:bb.a
  store i8 1, ptr %i.cqk, align 2, !tbaa !679
  %i.cql = getelementptr inbounds nuw i8, ptr %i.cqh, i64 3332
  %i.cqm = load float, ptr %i.cql, align 4, !tbaa !1041
  %i.cqn = getelementptr inbounds nuw i8, ptr %i.cqj, i64 280
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.cqj, i64 348 ; 2 uses
  %i.cqp = load float, ptr %i.cqo, align 4, !tbaa !950
  %i.cqq = fsub float %i.cqp, %i.cqm              ; 2 uses
  store float %i.cqq, ptr %i.cqo, align 4, !tbaa !950
  %i.cqr = getelementptr inbounds nuw i8, ptr %i.cqj, i64 40
  %i.cqs = load float, ptr %i.cqr, align 8, !tbaa !693
  %i.cqt = fadd float %i.cqq, %i.cqs
  %i.cqu = getelementptr inbounds nuw i8, ptr %i.cqj, i64 352
  %i.cqv = load float, ptr %i.cqu, align 8, !tbaa !991
  %i.cqw = fadd float %i.cqt, %i.cqv
  store float %i.cqw, ptr %i.cqn, align 8, !tbaa !979
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.410)
  %i.cqx = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.cqx, i64 5312
  %i.cqz = load ptr, ptr %i.cqy, align 8, !tbaa !289 ; 10 uses
  %i.cra = getelementptr inbounds nuw i8, ptr %i.cqz, i64 209
  %i.crb = load i8, ptr %i.cra, align 1, !tbaa !927, !range !100, !noundef !236
  %i.crc = trunc nuw i8 %i.crb to i1
  br i1 %i.crc, label %_ZN5ImGui8SameLineEff.exit808, label %bb.kb

bb.kb:                                            ; preds = %.loopexit1050
  %i.crd = getelementptr inbounds nuw i8, ptr %i.cqx, i64 3300
  %i.cre = load float, ptr %i.crd, align 4, !tbaa !993
  %i.crf = getelementptr inbounds nuw i8, ptr %i.cqz, i64 280
  %i.crg = getelementptr inbounds nuw i8, ptr %i.cqz, i64 288
  %i.crh = load float, ptr %i.crg, align 8, !tbaa !992
  %i.cri = fadd float %i.cre, %i.crh
  store float %i.cri, ptr %i.crf, align 8, !tbaa !979
  %i.crj = getelementptr inbounds nuw i8, ptr %i.cqz, i64 292
  %i.crk = load float, ptr %i.crj, align 4, !tbaa !321
  %i.crl = getelementptr inbounds nuw i8, ptr %i.cqz, i64 284
  store float %i.crk, ptr %i.crl, align 4, !tbaa !318
  %i.crm = getelementptr inbounds nuw i8, ptr %i.cqz, i64 328
  %i.crn = getelementptr inbounds nuw i8, ptr %i.cqz, i64 320
  %i.cro = load i64, ptr %i.crm, align 8, !tbaa !75
  store i64 %i.cro, ptr %i.crn, align 8, !tbaa !75
  %i.crp = getelementptr inbounds nuw i8, ptr %i.cqz, i64 340
  %i.crq = load float, ptr %i.crp, align 4, !tbaa !971
  %i.crr = getelementptr inbounds nuw i8, ptr %i.cqz, i64 336
  store float %i.crq, ptr %i.crr, align 8, !tbaa !972
  %i.crs = getelementptr inbounds nuw i8, ptr %i.cqz, i64 344
  store i8 1, ptr %i.crs, align 8, !tbaa !973
  br label %_ZN5ImGui8SameLineEff.exit808

_ZN5ImGui8SameLineEff.exit808:                    ; preds = %.loopexit1050, %bb.kb
  call fastcc void @_ZL17MetricsHelpMarkerPKc(ptr noundef nonnull @.str.411)
  %i.crt = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 4 uses
  %i.cru = getelementptr inbounds nuw i8, ptr %i.crt, i64 5312
  %i.crv = load ptr, ptr %i.cru, align 8, !tbaa !289 ; 8 uses
  %i.crw = getelementptr inbounds nuw i8, ptr %i.crv, i64 206
  %i.crx = getelementptr inbounds nuw i8, ptr %i.crt, i64 3332
  %i.cry = load float, ptr %i.crx, align 4, !tbaa !1041
  %i.crz = getelementptr inbounds nuw i8, ptr %i.crv, i64 280
  %i.csa = getelementptr inbounds nuw i8, ptr %i.crv, i64 348 ; 2 uses
  %i.csb = load float, ptr %i.csa, align 4, !tbaa !950
  %i.csc = fadd float %i.cry, %i.csb              ; 2 uses
  store float %i.csc, ptr %i.csa, align 4, !tbaa !950
  %i.csd = getelementptr inbounds nuw i8, ptr %i.crv, i64 40
  %i.cse = load float, ptr %i.csd, align 8, !tbaa !693
  %i.csf = fadd float %i.csc, %i.cse
  %i.csg = getelementptr inbounds nuw i8, ptr %i.crv, i64 352
  %i.csh = load float, ptr %i.csg, align 8, !tbaa !991
  %i.csi = fadd float %i.csf, %i.csh
  store float %i.csi, ptr %i.crz, align 8, !tbaa !979
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  %i.csj = getelementptr inbounds nuw i8, ptr %i.crt, i64 4568
  %i.csk = load float, ptr %i.csj, align 8, !tbaa !410
  %i.csl = getelementptr inbounds nuw i8, ptr %i.crt, i64 3304
  %i.csm = load float, ptr %i.csl, align 8, !tbaa !320
  %i.csn = fadd float %i.csk, %i.csm
  %i.cso = fmul float %i.csn, 8.000000e+00
  store float f0x80800000, ptr %19, align 4, !tbaa !249
  %i.csp = getelementptr inbounds nuw i8, ptr %19, i64 4
  store float %i.cso, ptr %i.csp, align 4, !tbaa !250
  store i8 1, ptr %i.crw, align 2, !tbaa !679
  %i.csq = getelementptr inbounds nuw i8, ptr %i.crv, i64 264
  %i.csr = getelementptr inbounds nuw i8, ptr %i.crv, i64 272
  %i.css = load ptr, ptr %i.csr, align 8, !tbaa !514
  %i.cst = load i32, ptr %i.csq, align 8, !tbaa !516
  %i.csu = sext i32 %i.cst to i64
  %i.csv = getelementptr [4 x i8], ptr %i.css, i64 %i.csu
  %i.csw = getelementptr i8, ptr %i.csv, i64 -4
  %i.csx = load i32, ptr %i.csw, align 4, !tbaa !237
  %i.csy = xor i32 %i.csx, -1                     ; 2 uses
  br label %.lr.ph.i.i.i809

.lr.ph.i.i.i809:                                  ; preds = %bb.kg, %_ZN5ImGui8SameLineEff.exit808
  %i.csz = phi i8 [ %i.ctq, %bb.kg ], [ 35, %_ZN5ImGui8SameLineEff.exit808 ] ; 2 uses
  %.252.i.i.i810 = phi ptr [ %.3.i.i.i813, %bb.kg ], [ @.str.412, %_ZN5ImGui8SameLineEff.exit808 ] ; 3 uses
  %.23351.i.i.i811 = phi i32 [ %.334.i.i.i812, %bb.kg ], [ %i.csy, %_ZN5ImGui8SameLineEff.exit808 ] ; 2 uses
  %i.cta = getelementptr inbounds nuw i8, ptr %.252.i.i.i810, i64 1 ; 2 uses
  %i.ctb = zext i8 %i.csz to i32
  %i.ctc = icmp eq i8 %i.csz, 35
  br i1 %i.ctc, label %bb.kc, label %bb.kf

bb.kc:                                            ; preds = %.lr.ph.i.i.i809
  %i.ctd = load i8, ptr %i.cta, align 1, !tbaa !82
  %i.cte = icmp eq i8 %i.ctd, 35
  br i1 %i.cte, label %bb.kd, label %bb.kf

bb.kd:                                            ; preds = %bb.kc
  %i.ctf = getelementptr inbounds nuw i8, ptr %.252.i.i.i810, i64 2
  %i.ctg = load i8, ptr %i.ctf, align 1, !tbaa !82
  %i.cth = icmp eq i8 %i.ctg, 35
  br i1 %i.cth, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.cti = getelementptr inbounds nuw i8, ptr %.252.i.i.i810, i64 3
  br label %bb.kg, !llvm.loop !6

bb.kf:                                            ; preds = %bb.kd, %bb.kc, %.lr.ph.i.i.i809
  %i.ctj = lshr i32 %.23351.i.i.i811, 8
  %i.ctk = and i32 %.23351.i.i.i811, 255
  %i.ctl = xor i32 %i.ctk, %i.ctb
  %i.ctm = zext nneg i32 %i.ctl to i64
  %i.ctn = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.ctm
  %i.cto = load i32, ptr %i.ctn, align 4, !tbaa !237
  %i.ctp = xor i32 %i.cto, %i.ctj
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %bb.ke
  %.334.i.i.i812 = phi i32 [ %i.csy, %bb.ke ], [ %i.ctp, %bb.kf ] ; 2 uses
  %.3.i.i.i813 = phi ptr [ %i.cti, %bb.ke ], [ %i.cta, %bb.kf ] ; 2 uses
  %i.ctq = load i8, ptr %.3.i.i.i813, align 1, !tbaa !82 ; 2 uses
  %.not40.i.i.i814 = icmp eq i8 %i.ctq, 0
  br i1 %.not40.i.i.i814, label %_Z9ImHashStrPKcmj.exit.i.loopexit.i815, label %.lr.ph.i.i.i809

_Z9ImHashStrPKcmj.exit.i.loopexit.i815:           ; preds = %bb.kg
  %i.ctr = xor i32 %.334.i.i.i812, -1             ; 3 uses
  %i.cts = load ptr, ptr %i.crv, align 8, !tbaa !636
  %i.ctt = getelementptr inbounds nuw i8, ptr %i.cts, i64 5400
  %i.ctu = load i32, ptr %i.ctt, align 8, !tbaa !638
  %i.ctv = icmp eq i32 %i.ctu, %i.ctr
  br i1 %i.ctv, label %bb.kh, label %_ZN5ImGui10BeginChildEPKcRK6ImVec2ii.exit816

bb.kh:                                            ; preds = %_Z9ImHashStrPKcmj.exit.i.loopexit.i815
  call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %i.ctr, i32 noundef 11, ptr noundef nonnull @.str.412, ptr noundef null)
  br label %_ZN5ImGui10BeginChildEPKcRK6ImVec2ii.exit816

_ZN5ImGui10BeginChildEPKcRK6ImVec2ii.exit816:     ; preds = %_Z9ImHashStrPKcmj.exit.i.loopexit.i815, %bb.kh
  %i.ctw = call noundef zeroext i1 @_ZN5ImGui12BeginChildExEPKcjRK6ImVec2ii(ptr noundef nonnull @.str.412, i32 noundef %i.ctr, ptr noundef nonnull readonly align 4 dereferenceable(8) %19, i32 noundef 136, i32 noundef 256)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  br i1 %i.ctw, label %.preheader1047, label %.loopexit1048

.preheader1047:                                   ; preds = %_ZN5ImGui10BeginChildEPKcRK6ImVec2ii.exit816
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.g, i64 7744
  %i.cty = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.g, i64 7776
  br label %bb.ki

bb.ki:                                            ; preds = %.preheader1047, %._crit_edge1138
  %indvars.iv1217 = phi i64 [ 512, %.preheader1047 ], [ %indvars.iv.next1218, %._crit_edge1138 ] ; 3 uses
  %i.cua = getelementptr [2 x i8], ptr %i.g, i64 %indvars.iv1217
  %i.cub = getelementptr i8, ptr %i.cua, i64 6400
  %.04831133 = load i16, ptr %i.cub, align 2, !tbaa !255 ; 2 uses
  %.not5631134 = icmp eq i16 %.04831133, -1
  br i1 %.not5631134, label %._crit_edge1138, label %.lr.ph1137.preheader

.lr.ph1137.preheader:                             ; preds = %bb.ki
  %i.cuc = trunc nuw nsw i64 %indvars.iv1217 to i32
  br label %.lr.ph1137

._crit_edge1138:                                  ; preds = %bb.ky, %bb.ki
  %indvars.iv.next1218 = add nuw nsw i64 %indvars.iv1217, 1 ; 2 uses
  %exitcond1220.not = icmp eq i64 %indvars.iv.next1218, 667
  br i1 %exitcond1220.not, label %.loopexit1048, label %bb.ki, !llvm.loop !1664

.lr.ph1137:                                       ; preds = %.lr.ph1137.preheader, %bb.ky
  %.04831135 = phi i16 [ %.0483, %bb.ky ], [ %.04831133, %.lr.ph1137.preheader ]
  %i.cud = load ptr, ptr %i.ctx, align 8, !tbaa !600
  %i.cue = sext i16 %.04831135 to i64
  %i.cuf = getelementptr inbounds [16 x i8], ptr %i.cud, i64 %i.cue ; 4 uses
  %i.cug = getelementptr inbounds nuw i8, ptr %i.cuf, i64 2
  %i.cuh = load i16, ptr %i.cug, align 2, !tbaa !782
  %i.cui = zext i16 %i.cuh to i32
  %i.cuj = or i32 %i.cuc, %i.cui                  ; 5 uses
  %i.cuk = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.cul = and i32 %i.cuj, 4095                   ; 5 uses
  %i.cum = add nsw i32 %i.cul, -527
  %i.cun = icmp ult i32 %i.cum, 8
  br i1 %i.cun, label %bb.kj, label %bb.kl

bb.kj:                                            ; preds = %.lr.ph1137
  switch i32 %i.cul, label %bb.kk [
    i32 531, label %_ZL17GetModForLRModKey8ImGuiKey.exit.i
    i32 527, label %_ZL17GetModForLRModKey8ImGuiKey.exit.i
  ]

bb.kk:                                            ; preds = %bb.kj
  %i.cuo = and i32 %i.cuj, 4091
  %switch.tableidx = add nsw i32 %i.cuo, -528     ; 2 uses
  %i.cup = icmp ult i32 %switch.tableidx, 3
  br i1 %i.cup, label %switch.lookup, label %_ZL17GetModForLRModKey8ImGuiKey.exit.i

switch.lookup:                                    ; preds = %bb.kk
  %i.cuq = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5ImGui17ShowMetricsWindowEPb, i64 %i.cuq
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZL17GetModForLRModKey8ImGuiKey.exit.i

_ZL17GetModForLRModKey8ImGuiKey.exit.i:           ; preds = %bb.kk, %switch.lookup, %bb.kj, %bb.kj
  %i.cur = phi i32 [ -4097, %bb.kj ], [ -4097, %bb.kj ], [ %switch.load, %switch.lookup ], [ -1, %bb.kk ]
  %i.cus = and i32 %i.cur, %i.cuj
  br label %bb.kl

bb.kl:                                            ; preds = %_ZL17GetModForLRModKey8ImGuiKey.exit.i, %.lr.ph1137
  %.0.i817 = phi i32 [ %i.cus, %_ZL17GetModForLRModKey8ImGuiKey.exit.i ], [ %i.cuj, %.lr.ph1137 ] ; 5 uses
  %i.cut = getelementptr inbounds nuw i8, ptr %i.cuk, i64 10936 ; 5 uses
  %i.cuu = and i32 %.0.i817, 4096
  %.not.i818 = icmp eq i32 %i.cuu, 0
  %i.cuv = select i1 %.not.i818, ptr @.str.4, ptr @.str.114 ; 2 uses
  %i.cuw = and i32 %.0.i817, 8192
  %.not21.i819 = icmp eq i32 %i.cuw, 0
  %i.cux = select i1 %.not21.i819, ptr @.str.4, ptr @.str.115 ; 2 uses
  %i.cuy = and i32 %.0.i817, 16384
  %.not22.i = icmp eq i32 %i.cuy, 0
  %i.cuz = select i1 %.not22.i, ptr @.str.4, ptr @.str.116 ; 2 uses
  %i.cva = and i32 %.0.i817, 32768
  %.not23.i = icmp eq i32 %i.cva, 0
  %i.cvb = select i1 %.not23.i, ptr @.str.4, ptr @.str.117 ; 2 uses
  %i.cvc = icmp eq i32 %i.cul, 0
  br i1 %i.cvc, label %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.i, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.cvd = add nsw i32 %i.cul, -512
  %i.cve = icmp ult i32 %i.cvd, 155
  br i1 %i.cve, label %bb.kn, label %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.thread.i

bb.kn:                                            ; preds = %bb.km
  %i.cvf = zext nneg i32 %i.cul to i64
  %i.cvg = getelementptr [8 x i8], ptr @_ZL9GKeyNames, i64 %i.cvf
  %i.cvh = getelementptr i8, ptr %i.cvg, i64 -4096
  %i.cvi = load ptr, ptr %i.cvh, align 8, !tbaa !256
  br label %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.thread.i

_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.thread.i:    ; preds = %bb.kn, %bb.km
  %.ph.i = phi ptr [ @.str.75, %bb.km ], [ %i.cvi, %bb.kn ]
  %i.cvj = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.cut, i64 noundef 64, ptr noundef nonnull @.str.113, ptr noundef nonnull %i.cuv, ptr noundef nonnull %i.cux, ptr noundef nonnull %i.cuz, ptr noundef nonnull %i.cvb, ptr noundef %.ph.i) ; 0 uses
  br label %_ZN5ImGui15GetKeyChordNameEi.exit

_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.i:           ; preds = %bb.kl
  %.not36.i = icmp eq i32 %.0.i817, 0             ; 2 uses
  %.str.4.mux.i = select i1 %.not36.i, ptr @.str.112, ptr @.str.4
  %i.cvk = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.cut, i64 noundef 64, ptr noundef nonnull @.str.113, ptr noundef nonnull %i.cuv, ptr noundef nonnull %i.cux, ptr noundef nonnull %i.cuz, ptr noundef nonnull %i.cvb, ptr noundef nonnull %.str.4.mux.i) ; 0 uses
  br i1 %.not36.i, label %_ZN5ImGui15GetKeyChordNameEi.exit, label %bb.ko

bb.ko:                                            ; preds = %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.i
  %i.cvl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cut) #57 ; 2 uses
  %.not24.i = icmp eq i64 %i.cvl, 0
  br i1 %.not24.i, label %_ZN5ImGui15GetKeyChordNameEi.exit, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.cvm = getelementptr i8, ptr %i.cut, i64 %i.cvl
  %i.cvn = getelementptr i8, ptr %i.cvm, i64 -1
  store i8 0, ptr %i.cvn, align 1, !tbaa !82
  br label %_ZN5ImGui15GetKeyChordNameEi.exit

_ZN5ImGui15GetKeyChordNameEi.exit:                ; preds = %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.thread.i, %_ZN5ImGui10GetKeyNameE8ImGuiKey.exit.i, %bb.ko, %bb.kp
  %i.cvo = getelementptr inbounds nuw i8, ptr %i.cuf, i64 8 ; 2 uses
  %i.cvp = load i32, ptr %i.cvo, align 4, !tbaa !781
  %i.cvq = getelementptr inbounds nuw i8, ptr %i.cuf, i64 4
  %i.cvr = load i16, ptr %i.cvq, align 4, !tbaa !779
  %i.cvs = zext i16 %i.cvr to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.413, ptr noundef nonnull %i.cut, i32 noundef %i.cvp, i32 noundef %i.cvs)
  %i.cvt = load i32, ptr %i.cvo, align 4, !tbaa !781 ; 2 uses
  %i.cvu = icmp eq i32 %i.cvt, 0
  br i1 %i.cvu, label %_ZN5ImGui22DebugLocateItemOnHoverEj.exit, label %bb.kq

bb.kq:                                            ; preds = %_ZN5ImGui15GetKeyChordNameEi.exit
  %i.cvv = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 160)
  br i1 %i.cvv, label %bb.kr, label %_ZN5ImGui22DebugLocateItemOnHoverEj.exit

bb.kr:                                            ; preds = %bb.kq
  %i.cvw = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 9 uses
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.cvw, i64 7788
  store i32 %i.cvt, ptr %i.cvx, align 4, !tbaa !863
  %i.cvy = getelementptr inbounds nuw i8, ptr %i.cvw, i64 10457
  store i8 2, ptr %i.cvy, align 1, !tbaa !862
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.cvw, i64 10458 ; 2 uses
  store i8 0, ptr %i.cvz, align 2, !tbaa !586
  %i.cwa = getelementptr inbounds nuw i8, ptr %i.cvw, i64 8208
  %i.cwb = load ptr, ptr %i.cwa, align 8, !tbaa !399
  %i.cwc = load ptr, ptr %i.cwb, align 8, !tbaa !400
  %i.cwd = call fastcc noundef ptr @_ZL23GetViewportBgFgDrawListP14ImGuiViewportPmPKc(ptr noundef %i.cwc, i64 noundef 1, ptr noundef nonnull @.str.86)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.cvw, i64 7860
  %i.cwf = load <2 x float>, ptr %i.cwe, align 4, !tbaa !75
  %i.cwg = fadd <2 x float> %i.cwf, splat (float -3.000000e+00)
  store <2 x float> %i.cwg, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.cvw, i64 7868
  %i.cwi = load <2 x float>, ptr %i.cwh, align 4, !tbaa !75
  %i.cwj = fadd <2 x float> %i.cwi, splat (float 3.000000e+00)
  store <2 x float> %i.cwj, ptr %2, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.cwd, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef -16711936, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.cvw, i64 176
  %i.cwl = load i8, ptr %i.cwk, align 8, !tbaa !1097, !range !100, !noundef !236
  %i.cwm = trunc nuw i8 %i.cwl to i1
  br i1 %i.cwm, label %bb.ks, label %_ZN5ImGui22DebugLocateItemOnHoverEj.exit

bb.ks:                                            ; preds = %bb.kr
  %i.cwn = getelementptr inbounds nuw i8, ptr %i.cvw, i64 9404
  %i.cwo = load float, ptr %i.cwn, align 4, !tbaa !762
  %i.cwp = fcmp ogt float %i.cwo, 1.000000e+00
  br i1 %i.cwp, label %bb.kt, label %_ZN5ImGui22DebugLocateItemOnHoverEj.exit

bb.kt:                                            ; preds = %bb.ks
  call void @_ZN5ImGui23DebugBreakButtonTooltipEbPKc(i1 noundef zeroext false, ptr noundef nonnull @.str.573)
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.cvw, i64 10460
  %i.cwr = load i32, ptr %i.cwq, align 4, !tbaa !587
  %i.cws = call noundef zeroext i1 @_ZN5ImGui17IsKeyChordPressedEi(i32 noundef %i.cwr)
  br i1 %i.cws, label %bb.ku, label %_ZN5ImGui22DebugLocateItemOnHoverEj.exit

bb.ku:                                            ; preds = %bb.kt
  store i8 1, ptr %i.cvz, align 2, !tbaa !586
  br label %_ZN5ImGui22DebugLocateItemOnHoverEj.exit

_ZN5ImGui22DebugLocateItemOnHoverEj.exit:         ; preds = %_ZN5ImGui15GetKeyChordNameEi.exit, %bb.kq, %bb.kr, %bb.ks, %bb.kt, %bb.ku
  %i.cwt = load i8, ptr %i.cty, align 8, !tbaa !1097, !range !100, !noundef !236
  %i.cwu = trunc nuw i8 %i.cwt to i1
  br i1 %i.cwu, label %bb.kv, label %bb.ky

bb.kv:                                            ; preds = %_ZN5ImGui22DebugLocateItemOnHoverEj.exit
  %i.cwv = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.cww = getelementptr inbounds nuw i8, ptr %i.cwv, i64 5312
  %i.cwx = load ptr, ptr %i.cww, align 8, !tbaa !289 ; 10 uses
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.cwx, i64 209
  %i.cwz = load i8, ptr %i.cwy, align 1, !tbaa !927, !range !100, !noundef !236
  %i.cxa = trunc nuw i8 %i.cwz to i1
  br i1 %i.cxa, label %_ZN5ImGui8SameLineEff.exit823, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.cxb = getelementptr inbounds nuw i8, ptr %i.cwv, i64 3300
  %i.cxc = load float, ptr %i.cxb, align 4, !tbaa !993
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.cwx, i64 280
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.cwx, i64 288
  %i.cxf = load float, ptr %i.cxe, align 8, !tbaa !992
  %i.cxg = fadd float %i.cxc, %i.cxf
  store float %i.cxg, ptr %i.cxd, align 8, !tbaa !979
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.cwx, i64 292
  %i.cxi = load float, ptr %i.cxh, align 4, !tbaa !321
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.cwx, i64 284
  store float %i.cxi, ptr %i.cxj, align 4, !tbaa !318
  %i.cxk = getelementptr inbounds nuw i8, ptr %i.cwx, i64 328
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.cwx, i64 320
  %i.cxm = load i64, ptr %i.cxk, align 8, !tbaa !75
  store i64 %i.cxm, ptr %i.cxl, align 8, !tbaa !75
  %i.cxn = getelementptr inbounds nuw i8, ptr %i.cwx, i64 340
  %i.cxo = load float, ptr %i.cxn, align 4, !tbaa !971
  %i.cxp = getelementptr inbounds nuw i8, ptr %i.cwx, i64 336
  store float %i.cxo, ptr %i.cxp, align 8, !tbaa !972
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.cwx, i64 344
  store i8 1, ptr %i.cxq, align 8, !tbaa !973
  br label %_ZN5ImGui8SameLineEff.exit823

_ZN5ImGui8SameLineEff.exit823:                    ; preds = %bb.kv, %bb.kw
  %i.cxr = call noundef zeroext i1 @_ZN5ImGui16DebugBreakButtonEPKcS1_(ptr noundef nonnull @.str.414, ptr noundef nonnull @.str.415)
  br i1 %i.cxr, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %_ZN5ImGui8SameLineEff.exit823
  store i32 %i.cuj, ptr %i.ctz, align 8, !tbaa !1029
  br label %bb.ky

bb.ky:                                            ; preds = %_ZN5ImGui8SameLineEff.exit823, %bb.kx, %_ZN5ImGui22DebugLocateItemOnHoverEj.exit
  %.0483 = load i16, ptr %i.cuf, align 4, !tbaa !255 ; 2 uses
  %.not563 = icmp eq i16 %.0483, -1
  br i1 %.not563, label %._crit_edge1138, label %.lr.ph1137, !llvm.loop !1665

.loopexit1048:                                    ; preds = %._crit_edge1138, %_ZN5ImGui10BeginChildEPKcRK6ImVec2ii.exit816
  call void @_ZN5ImGui8EndChildEv()
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.g, i64 7772
  %i.cxt = load i8, ptr %i.cxs, align 4, !tbaa !548, !range !100, !noundef !236
  %i.cxu = zext nneg i8 %i.cxt to i32
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.g, i64 7768
  %i.cxw = load i32, ptr %i.cxv, align 8, !tbaa !547
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.416, i32 noundef %i.cxu, i32 noundef %i.cxw)
  %i.cxx = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.cxy = getelementptr inbounds nuw i8, ptr %i.cxx, i64 5312
  %i.cxz = load ptr, ptr %i.cxy, align 8, !tbaa !289 ; 5 uses
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cxz, i64 206
  store i8 1, ptr %i.cya, align 2, !tbaa !679
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cxx, i64 3332
  %i.cyc = load float, ptr %i.cyb, align 4, !tbaa !1041
  %i.cyd = getelementptr inbounds nuw i8, ptr %i.cxz, i64 280
  %i.cye = getelementptr inbounds nuw i8, ptr %i.cxz, i64 348 ; 2 uses
  %i.cyf = load float, ptr %i.cye, align 4, !tbaa !950
  %i.cyg = fsub float %i.cyf, %i.cyc              ; 2 uses
  store float %i.cyg, ptr %i.cye, align 4, !tbaa !950
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cxz, i64 40
  %i.cyi = load float, ptr %i.cyh, align 8, !tbaa !693
  %i.cyj = fadd float %i.cyg, %i.cyi
  %i.cyk = getelementptr inbounds nuw i8, ptr %i.cxz, i64 352
  %i.cyl = load float, ptr %i.cyk, align 8, !tbaa !991
  %i.cym = fadd float %i.cyj, %i.cyl
  store float %i.cym, ptr %i.cyd, align 8, !tbaa !979
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.kz

bb.kz:                                            ; preds = %.loopexit1048, %bb.ho
  %i.cyn = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.417)
end_hunk_3
begin_hunk_4_@_ZN5ImGui21ShowIDStackToolWindowEPb:bb.a
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 6
  store i16 0, ptr %i.jy, align 2, !tbaa !233
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  store i16 0, ptr %i.jz, align 4, !tbaa !232
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i55.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i55.i: ; preds = %bb.ak, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i57.i
  %i.ka = phi i16 [ 1, %bb.ak ], [ %i.jr, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i57.i ]
  %i.kb = phi i64 [ %i.jw, %bb.ak ], [ %i.jo, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i57.i ]
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.jl, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 6
  store i16 %i.ka, ptr %i.kd, align 2, !tbaa !233
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ji, i64 10600 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !235
  %i.kg = add nsw i32 %i.kf, 1
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !235
  br label %_ZN5ImGui7MemFreeEPv.exit.i56.i

_ZN5ImGui7MemFreeEPv.exit.i56.i:                  ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i55.i, %bb.ai, %bb.ah
  %i.kh = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !226
  %i.ki = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  call void %i.kh(ptr noundef %i.jh, ptr noundef %i.ki), !inline_history !1711
  br label %bb.al

bb.al:                                            ; preds = %_ZN5ImGui7MemFreeEPv.exit.i56.i, %_ZN5ImGui8MemAllocEm.exit.i50.i
  store ptr %i.ia, ptr %i.dn, align 8, !tbaa !281
  store i32 %i.hw, ptr %i.ag, align 4, !tbaa !279
  br label %_ZN8ImVectorIcE7reserveEi.exit60.i

_ZN8ImVectorIcE7reserveEi.exit60.i:               ; preds = %bb.al, %bb.aa, %bb.z
  %i.kj = phi i32 [ %i.hu, %bb.z ], [ %i.hu, %bb.aa ], [ %i.hw, %bb.al ] ; 4 uses
  %.not100.i = icmp slt i32 %spec.select.i28.i, %i.kj
  br i1 %.not100.i, label %_ZN8ImVectorIcE7reserveEi.exit60.i..thread.i_crit_edge, label %bb.am

_ZN8ImVectorIcE7reserveEi.exit60.i..thread.i_crit_edge: ; preds = %_ZN8ImVectorIcE7reserveEi.exit60.i
  %.pre69 = load ptr, ptr %i.dn, align 8, !tbaa !281
  br label %.thread.i

bb.am:                                            ; preds = %_ZN8ImVectorIcE7reserveEi.exit60.i
  %.not.i.i.i32.i = icmp eq i32 %i.kj, 0
  br i1 %.not.i.i.i32.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i33.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kk = sdiv i32 %i.kj, 2
  %i.kl = add nsw i32 %i.kk, %i.kj
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i33.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i33.i:  ; preds = %bb.an, %bb.am
  %i.km = phi i32 [ %i.kl, %bb.an ], [ 8, %bb.am ]
  %i.kn = call noundef i32 @llvm.smax.i32(i32 %i.km, i32 %i.ht) ; 3 uses
  %i.ko = sext i32 %i.kn to i64
  %i.kp = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !226
  %i.kq = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  %i.kr = call noundef ptr %i.kp(i64 noundef %i.ko, ptr noundef %i.kq), !inline_history !1710 ; 3 uses
  %i.ks = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i, label %_ZN5ImGui8MemAllocEm.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i33.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 10596 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !228 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 10608 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 10604 ; 2 uses
  %i.ky = load i16, ptr %i.kx, align 4, !tbaa !229 ; 2 uses
  %i.kz = sext i16 %i.ky to i64
  %i.la = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.kz ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !231
  %.not.i.i.i44.i = icmp eq i32 %i.lb, %i.kv
  br i1 %.not.i.i.i44.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lc = sext i16 %i.ky to i32
  %i.ld = add nsw i32 %i.lc, 1
  %i.le = srem i32 %i.ld, 6                       ; 2 uses
  %i.lf = trunc nsw i32 %i.le to i16
  store i16 %i.lf, ptr %i.kx, align 4, !tbaa !229
  %i.lg = sext i32 %i.le to i64
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.lg ; 4 uses
  store i32 %i.kv, ptr %i.lh, align 4, !tbaa !231
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 6
  store i16 0, ptr %i.li, align 2, !tbaa !233
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  store i16 0, ptr %i.lj, align 4, !tbaa !232
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i = phi ptr [ %i.lh, %bb.ap ], [ %i.la, %bb.ao ] ; 2 uses
  %.not17.i.i.i.i = icmp eq i32 %i.kn, -1
  br i1 %.not17.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4 ; 2 uses
  %i.ll = load i16, ptr %i.lk, align 4, !tbaa !232
  %i.lm = add i16 %i.ll, 1
  store i16 %i.lm, ptr %i.lk, align 4, !tbaa !232
  %i.ln = load i32, ptr %i.kt, align 4, !tbaa !234
  %i.lo = add nsw i32 %i.ln, 1
  store i32 %i.lo, ptr %i.kt, align 4, !tbaa !234
  br label %_ZN5ImGui8MemAllocEm.exit.i.i

bb.as:                                            ; preds = %bb.aq
  %i.lp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 6 ; 2 uses
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !233
  %i.lr = add i16 %i.lq, 1
  store i16 %i.lr, ptr %i.lp, align 2, !tbaa !233
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ks, i64 10600 ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !235
  %i.lu = add nsw i32 %i.lt, 1
  store i32 %i.lu, ptr %i.ls, align 4, !tbaa !235
  br label %_ZN5ImGui8MemAllocEm.exit.i.i

_ZN5ImGui8MemAllocEm.exit.i.i:                    ; preds = %bb.as, %bb.ar, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i33.i
  %i.lv = load ptr, ptr %i.dn, align 8, !tbaa !281 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.lv, null
  br i1 %.not6.i.i, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i
  %i.lw = load i32, ptr %i.ab, align 8, !tbaa !280
  %i.lx = sext i32 %i.lw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kr, ptr nonnull align 1 %i.lv, i64 %i.lx, i1 false)
  %i.ly = load ptr, ptr %i.dn, align 8, !tbaa !281 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.ly, null
  br i1 %.not.i7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lz = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %.not7.i.i.i = icmp eq ptr %i.lz, null
  br i1 %.not7.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !228 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 10608 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 10604 ; 2 uses
  %i.me = load i16, ptr %i.md, align 4, !tbaa !229 ; 2 uses
  %i.mf = sext i16 %i.me to i64                   ; 2 uses
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.mf ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !231
  %.not.i.i8.i.i = icmp eq i32 %i.mh, %i.mb
  br i1 %.not.i.i8.i.i, label %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i, label %bb.aw

._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i: ; preds = %bb.av
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.mg, i64 6
  %.pre.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i, align 2, !tbaa !233
  %i.mi = add i16 %.pre.i.i.i, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.mj = sext i16 %i.me to i32
  %i.mk = add nsw i32 %i.mj, 1
  %i.ml = srem i32 %i.mk, 6                       ; 2 uses
  %i.mm = trunc nsw i32 %i.ml to i16
  store i16 %i.mm, ptr %i.md, align 4, !tbaa !229
  %i.mn = sext i32 %i.ml to i64                   ; 2 uses
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.mn ; 3 uses
  store i32 %i.mb, ptr %i.mo, align 4, !tbaa !231
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 6
  store i16 0, ptr %i.mp, align 2, !tbaa !233
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  store i16 0, ptr %i.mq, align 4, !tbaa !232
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i: ; preds = %bb.aw, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i
  %i.mr = phi i16 [ 1, %bb.aw ], [ %i.mi, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i ]
  %i.ms = phi i64 [ %i.mn, %bb.aw ], [ %i.mf, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i ]
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 6
  store i16 %i.mr, ptr %i.mu, align 2, !tbaa !233
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lz, i64 10600 ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !235
  %i.mx = add nsw i32 %i.mw, 1
  store i32 %i.mx, ptr %i.mv, align 4, !tbaa !235
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i, %bb.au, %bb.at
  %i.my = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !226
  %i.mz = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  call void %i.my(ptr noundef %i.ly, ptr noundef %i.mz), !inline_history !1711
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i
  store ptr %i.kr, ptr %i.dn, align 8, !tbaa !281
  store i32 %i.kn, ptr %i.ag, align 4, !tbaa !279
  br label %.thread.i

.thread.i:                                        ; preds = %_ZN8ImVectorIcE7reserveEi.exit60.i..thread.i_crit_edge, %bb.ax
  %i.na = phi ptr [ %.pre69, %_ZN8ImVectorIcE7reserveEi.exit60.i..thread.i_crit_edge ], [ %i.kr, %bb.ax ]
  store i32 %i.ht, ptr %i.ab, align 8, !tbaa !280
  %i.nb = sext i32 %spec.select.i28.i to i64      ; 2 uses
  %i.nc = getelementptr i8, ptr %i.na, i64 %i.nb
  %i.nd = getelementptr i8, ptr %i.nc, i64 -1
  store i8 92, ptr %i.nd, align 1
  %i.ne = load ptr, ptr %i.dn, align 8, !tbaa !281
  %i.nf = getelementptr inbounds i8, ptr %i.ne, i64 %i.nb
  store i8 0, ptr %i.nf, align 1, !tbaa !82
  br label %bb.az

bb.ay:                                            ; preds = %_Z18ImTextCharFromUtf8PjPKcS1_.exit.i, %_Z18ImTextCharFromUtf8PjPKcS1_.exit.thread.i
  %i.ng = phi ptr [ %i.ho, %_Z18ImTextCharFromUtf8PjPKcS1_.exit.thread.i ], [ %i.hq, %_Z18ImTextCharFromUtf8PjPKcS1_.exit.i ] ; 5 uses
  %.09497.i = phi i32 [ 65533, %_Z18ImTextCharFromUtf8PjPKcS1_.exit.thread.i ], [ %i.gf, %_Z18ImTextCharFromUtf8PjPKcS1_.exit.i ]
  %i.nh = icmp samesign ugt i32 %.09497.i, 255
  %or.cond.i = and i1 %i.nh, %i.aa
  br i1 %or.cond.i, label %.preheader.i, label %bb.az

.preheader.i:                                     ; preds = %bb.ay
  %i.ni = icmp ult ptr %.0103.i, %i.ng
  br i1 %i.ni, label %.lr.ph.i, label %.loopexit.i

bb.az:                                            ; preds = %bb.ay, %.thread.i
  %i.nj = phi ptr [ %i.hq, %.thread.i ], [ %i.ng, %bb.ay ] ; 2 uses
  %i.nk = ptrtoint ptr %i.nj to i64
  %i.nl = ptrtoint ptr %.0103.i to i64
  %i.nm = sub i64 %i.nk, %i.nl                    ; 2 uses
  %i.nn = trunc i64 %i.nm to i32                  ; 2 uses
  %i.no = load i32, ptr %i.ab, align 8, !tbaa !278
  %spec.select.i36.i = call i32 @llvm.umax.i32(i32 %i.no, i32 1) ; 2 uses
  %i.np = add nsw i32 %spec.select.i36.i, %i.nn   ; 5 uses
  %i.nq = load i32, ptr %i.ag, align 4, !tbaa !279 ; 7 uses
  %.not22.i37.i = icmp slt i32 %i.np, %i.nq
  br i1 %.not22.i37.i, label %_ZN8ImVectorIcE7reserveEi.exit92.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nr = shl nsw i32 %i.nq, 1
  %i.ns = call i32 @llvm.smax.i32(i32 %i.np, i32 %i.nr) ; 7 uses
  %.not.i77.i = icmp sgt i32 %i.ns, %i.nq
  br i1 %.not.i77.i, label %bb.bb, label %_ZN8ImVectorIcE7reserveEi.exit92.i

bb.bb:                                            ; preds = %bb.ba
  %i.nt = sext i32 %i.ns to i64
  %i.nu = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !226
  %i.nv = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  %i.nw = call noundef ptr %i.nu(i64 noundef %i.nt, ptr noundef %i.nv), !inline_history !1710 ; 5 uses
  %i.nx = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 6 uses
  %.not.i.i78.i = icmp eq ptr %i.nx, null
  br i1 %.not.i.i78.i, label %_ZN5ImGui8MemAllocEm.exit.i82.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 10596 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !228 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 10608 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 10604 ; 2 uses
  %i.od = load i16, ptr %i.oc, align 4, !tbaa !229 ; 2 uses
  %i.oe = sext i16 %i.od to i64
  %i.of = getelementptr inbounds [8 x i8], ptr %i.ob, i64 %i.oe ; 2 uses
  %i.og = load i32, ptr %i.of, align 4, !tbaa !231
  %.not.i.i.i79.i = icmp eq i32 %i.og, %i.oa
  br i1 %.not.i.i.i79.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.oh = sext i16 %i.od to i32
  %i.oi = add nsw i32 %i.oh, 1
  %i.oj = srem i32 %i.oi, 6                       ; 2 uses
  %i.ok = trunc nsw i32 %i.oj to i16
  store i16 %i.ok, ptr %i.oc, align 4, !tbaa !229
  %i.ol = sext i32 %i.oj to i64
  %i.om = getelementptr inbounds [8 x i8], ptr %i.ob, i64 %i.ol ; 4 uses
  store i32 %i.oa, ptr %i.om, align 4, !tbaa !231
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 6
  store i16 0, ptr %i.on, align 2, !tbaa !233
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  store i16 0, ptr %i.oo, align 4, !tbaa !232
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0.i.i.i80.i = phi ptr [ %i.om, %bb.bd ], [ %i.of, %bb.bc ] ; 2 uses
  %.not17.i.i.i81.i = icmp eq i32 %i.ns, -1
  br i1 %.not17.i.i.i81.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.op = getelementptr inbounds nuw i8, ptr %.0.i.i.i80.i, i64 4 ; 2 uses
  %i.oq = load i16, ptr %i.op, align 4, !tbaa !232
  %i.or = add i16 %i.oq, 1
  store i16 %i.or, ptr %i.op, align 4, !tbaa !232
  %i.os = load i32, ptr %i.ny, align 4, !tbaa !234
  %i.ot = add nsw i32 %i.os, 1
  store i32 %i.ot, ptr %i.ny, align 4, !tbaa !234
  br label %_ZN5ImGui8MemAllocEm.exit.i82.i

bb.bg:                                            ; preds = %bb.be
  %i.ou = getelementptr inbounds nuw i8, ptr %.0.i.i.i80.i, i64 6 ; 2 uses
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !233
  %i.ow = add i16 %i.ov, 1
  store i16 %i.ow, ptr %i.ou, align 2, !tbaa !233
  %i.ox = getelementptr inbounds nuw i8, ptr %i.nx, i64 10600 ; 2 uses
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !235
  %i.oz = add nsw i32 %i.oy, 1
  store i32 %i.oz, ptr %i.ox, align 4, !tbaa !235
  br label %_ZN5ImGui8MemAllocEm.exit.i82.i

_ZN5ImGui8MemAllocEm.exit.i82.i:                  ; preds = %bb.bg, %bb.bf, %bb.bb
  %i.pa = load ptr, ptr %i.dn, align 8, !tbaa !281 ; 2 uses
  %.not6.i83.i = icmp eq ptr %i.pa, null
  br i1 %.not6.i83.i, label %_ZN15ImGuiTextBuffer6appendEPKcS1_.exit42.sink.split.i, label %bb.bh

bb.bh:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i82.i
  %i.pb = load i32, ptr %i.ab, align 8, !tbaa !280
  %i.pc = sext i32 %i.pb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nw, ptr nonnull align 1 %i.pa, i64 %i.pc, i1 false)
  %i.pd = load ptr, ptr %i.dn, align 8, !tbaa !281 ; 3 uses
  %.not.i7.i84.i = icmp eq ptr %i.pd, null
  br i1 %.not.i7.i84.i, label %_ZN15ImGuiTextBuffer6appendEPKcS1_.exit42.sink.split.sink.split.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.pe = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %.not7.i.i85.i = icmp eq ptr %i.pe, null
  br i1 %.not7.i.i85.i, label %_ZN15ImGuiTextBuffer6appendEPKcS1_.exit42.sink.split.sink.split.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !228 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 10608 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 10604 ; 2 uses
  %i.pj = load i16, ptr %i.pi, align 4, !tbaa !229 ; 2 uses
  %i.pk = sext i16 %i.pj to i64                   ; 2 uses
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %i.pk ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !231
  %.not.i.i8.i86.i = icmp eq i32 %i.pm, %i.pg
  br i1 %.not.i.i8.i86.i, label %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i89.i, label %bb.bk

._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i89.i: ; preds = %bb.bj
  %.phi.trans.insert.i.i90.i = getelementptr inbounds nuw i8, ptr %i.pl, i64 6
  %.pre.i.i91.i = load i16, ptr %.phi.trans.insert.i.i90.i, align 2, !tbaa !233
  %i.pn = add i16 %.pre.i.i91.i, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i87.i

bb.bk:                                            ; preds = %bb.bj
  %i.po = sext i16 %i.pj to i32
  %i.pp = add nsw i32 %i.po, 1
  %i.pq = srem i32 %i.pp, 6                       ; 2 uses
  %i.pr = trunc nsw i32 %i.pq to i16
  store i16 %i.pr, ptr %i.pi, align 4, !tbaa !229
  %i.ps = sext i32 %i.pq to i64                   ; 2 uses
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %i.ps ; 3 uses
  store i32 %i.pg, ptr %i.pt, align 4, !tbaa !231
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 6
  store i16 0, ptr %i.pu, align 2, !tbaa !233
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  store i16 0, ptr %i.pv, align 4, !tbaa !232
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i87.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i87.i: ; preds = %bb.bk, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i89.i
  %i.pw = phi i16 [ 1, %bb.bk ], [ %i.pn, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i89.i ]
  %i.px = phi i64 [ %i.ps, %bb.bk ], [ %i.pk, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i89.i ]
  %i.py = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %i.px
  br label %_ZN15ImGuiTextBuffer6appendEPKcS1_.exit42.sink.split.sink.split.sink.split.i

_ZN8ImVectorIcE7reserveEi.exit92.i:               ; preds = %bb.ba, %bb.az
  %i.pz = icmp sgt i32 %i.np, %i.nq
  br i1 %i.pz, label %bb.bl, label %_ZN8ImVectorIcE7reserveEi.exit92.i._ZN15ImGuiTextBuffer6appendEPKcS1_.exit42.i_crit_edge

_ZN8ImVectorIcE7reserveEi.exit92.i._ZN15ImGuiTextBuffer6appendEPKcS1_.exit42.i_crit_edge: ; preds = %_ZN8ImVectorIcE7reserveEi.exit92.i
  %.pre70 = load ptr, ptr %i.dn, align 8, !tbaa !281
  br label %_ZN15ImGuiTextBuffer6appendEPKcS1_.exit42.i

bb.bl:                                            ; preds = %_ZN8ImVectorIcE7reserveEi.exit92.i
  %.not.i.i.i40.i = icmp eq i32 %i.nq, 0
  br i1 %.not.i.i.i40.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i41.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qa = sdiv i32 %i.nq, 2
  %i.qb = add nsw i32 %i.qa, %i.nq
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i41.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i41.i:  ; preds = %bb.bm, %bb.bl
  %i.qc = phi i32 [ %i.qb, %bb.bm ], [ 8, %bb.bl ]
  %i.qd = call noundef i32 @llvm.smax.i32(i32 %i.qc, i32 %i.np) ; 6 uses
  %i.qe = sext i32 %i.qd to i64
  %i.qf = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !226
  %i.qg = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  %i.qh = call noundef ptr %i.qf(i64 noundef %i.qe, ptr noundef %i.qg), !inline_history !1710 ; 5 uses
  %i.qi = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 6 uses
  %.not.i.i62.i = icmp eq ptr %i.qi, null
  br i1 %.not.i.i62.i, label %_ZN5ImGui8MemAllocEm.exit.i66.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i41.i
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 10596 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !228 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qi, i64 10608 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qi, i64 10604 ; 2 uses
  %i.qo = load i16, ptr %i.qn, align 4, !tbaa !229 ; 2 uses
  %i.qp = sext i16 %i.qo to i64
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.qm, i64 %i.qp ; 2 uses
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !231
  %.not.i.i.i63.i = icmp eq i32 %i.qr, %i.ql
  br i1 %.not.i.i.i63.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.qs = sext i16 %i.qo to i32
  %i.qt = add nsw i32 %i.qs, 1
  %i.qu = srem i32 %i.qt, 6                       ; 2 uses
  %i.qv = trunc nsw i32 %i.qu to i16
  store i16 %i.qv, ptr %i.qn, align 4, !tbaa !229
  %i.qw = sext i32 %i.qu to i64
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.qm, i64 %i.qw ; 4 uses
  store i32 %i.ql, ptr %i.qx, align 4, !tbaa !231
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 6
  store i16 0, ptr %i.qy, align 2, !tbaa !233
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
end_hunk_4
