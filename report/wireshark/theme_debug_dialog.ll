Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/theme_debug_dialog?download=true
inline.NumInlined: 832
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
@qt_version_tag = external constant i8, align 1
@qt_version_tag_use = linkonce_odr hidden constant %"struct.QtPrivate::QVersionTag" { ptr @qt_version_tag, i64 394242 }, section ".qtversion", comdat, align 8
@_ZTV16ThemeDebugDialog = external constant { [59 x ptr], [10 x ptr] }, align 8
@mainApp = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"Theme Debug\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Name:\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Internal:\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Version:\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Author:\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Description:\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Mode:\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Dark mode:\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Theme\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Geometry:\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Frame geometry:\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Screen:\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"DPI / DPR:\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Window state:\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"These values refresh live while the dialog is open.\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Main Window\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Track widget under mouse\00", align 1
@.str.17 = private unnamed_addr constant [474 x i8] c"The inspector reports any widget in this application under the cursor \E2\80\94 including child dialogs. Widgets that belong to this debug window are skipped so the last hovered target stays pinned. Hold Alt+Shift and click any widget to pin it: this turns off tracking and locks the readout onto that widget (re-check the box above to resume). Note: on macOS, tool windows are hidden whenever another application has focus, so tracking pauses until Wireshark is frontmost again.\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Cursor (global):\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Class:\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Object name:\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"Font:\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Global rect:\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Parent chain:\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"Palette (Active group):\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"Role\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"ThemeManager token\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Swatch\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"Stylesheet:\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"(no stylesheet)\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Widget Inspector\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"Token\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"Hex\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Tokens\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Refresh\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"(no main window)\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.40 = private unnamed_addr constant [8 x i16] [i16 37, i16 49, i16 32, i16 8212, i16 32, i16 37, i16 50, i16 0], align 2
@.str.41 = private unnamed_addr constant [36 x i16] [i16 108, i16 111, i16 103, i16 105, i16 99, i16 97, i16 108, i16 32, i16 37, i16 49, i16 32, i16 47, i16 32, i16 112, i16 104, i16 121, i16 115, i16 105, i16 99, i16 97, i16 108, i16 32, i16 37, i16 50, i16 32, i16 32, i16 8226, i16 32, i16 32, i16 68, i16 80, i16 82, i16 32, i16 37, i16 51, i16 0], align 2
@.str.42 = private unnamed_addr constant [10 x i8] c"maximized\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"minimized\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.47 = private unnamed_addr constant [3 x i16] [i16 44, i16 32, i16 0], align 2
@.str.48 = private unnamed_addr constant [8 x i8] c"(unset)\00", align 1
@.str.49 = private unnamed_addr constant [10 x i16] [i16 109, i16 111, i16 110, i16 111, i16 115, i16 112, i16 97, i16 99, i16 101, i16 0], align 2
@_ZZN16ThemeDebugDialog21populateWidgetPaletteEP7QWidgetE5roles = internal constant [19 x %struct.RoleEntry] [%struct.RoleEntry { i32 10, ptr @.str.50, i32 39 }, %struct.RoleEntry { i32 0, ptr @.str.51, i32 42 }, %struct.RoleEntry { i32 9, ptr @.str.52, i32 40 }, %struct.RoleEntry { i32 16, ptr @.str.53, i32 77 }, %struct.RoleEntry { i32 6, ptr @.str.54, i32 41 }, %struct.RoleEntry { i32 1, ptr @.str.55, i32 77 }, %struct.RoleEntry { i32 8, ptr @.str.56, i32 77 }, %struct.RoleEntry { i32 7, ptr @.str.57, i32 77 }, %struct.RoleEntry { i32 2, ptr @.str.58, i32 77 }, %struct.RoleEntry { i32 3, ptr @.str.59, i32 77 }, %struct.RoleEntry { i32 5, ptr @.str.60, i32 44 }, %struct.RoleEntry { i32 4, ptr @.str.61, i32 77 }, %struct.RoleEntry { i32 11, ptr @.str.62, i32 77 }, %struct.RoleEntry { i32 12, ptr @.str.63, i32 77 }, %struct.RoleEntry { i32 13, ptr @.str.64, i32 77 }, %struct.RoleEntry { i32 20, ptr @.str.65, i32 77 }, %struct.RoleEntry { i32 18, ptr @.str.66, i32 77 }, %struct.RoleEntry { i32 19, ptr @.str.67, i32 77 }, %struct.RoleEntry { i32 14, ptr @.str.68, i32 77 }], align 16
@.str.50 = private unnamed_addr constant [7 x i8] c"Window\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"WindowText\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"Base\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"AlternateBase\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"Button\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"ButtonText\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"BrightText\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"Light\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"Midlight\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"Mid\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"Dark\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"Shadow\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"Highlight\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"HighlightedText\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"PlaceholderText\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"ToolTipBase\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"ToolTipText\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"Link\00", align 1
@.str.69 = private unnamed_addr constant [9 x i16] [i16 40, i16 37, i16 49, i16 44, i16 32, i16 37, i16 50, i16 41, i16 0], align 2
@.str.70 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"(unnamed)\00", align 1
@.str.72 = private unnamed_addr constant [19 x i16] [i16 40, i16 37, i16 49, i16 44, i16 32, i16 37, i16 50, i16 41, i16 32, i16 32, i16 91, i16 112, i16 105, i16 110, i16 110, i16 101, i16 100, i16 93, i16 0], align 2
@_ZN16ThemeDebugDialog16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN16QCoreApplication4selfE = external local_unnamed_addr global ptr, align 8
@.str.76 = private unnamed_addr constant [7 x i16] [i16 83, i16 121, i16 115, i16 116, i16 101, i16 109, i16 0], align 2
@.str.77 = private unnamed_addr constant [5 x i16] [i16 68, i16 97, i16 114, i16 107, i16 0], align 2
@.str.78 = private unnamed_addr constant [6 x i16] [i16 76, i16 105, i16 103, i16 104, i16 116, i16 0], align 2
@.str.79 = private unnamed_addr constant [2 x i16] [i16 63, i16 0], align 2
@.str.80 = private unnamed_addr constant [18 x i16] [i16 40, i16 37, i16 49, i16 44, i16 32, i16 37, i16 50, i16 41, i16 32, i16 32, i16 37, i16 51, i16 32, i16 215, i16 32, i16 37, i16 52, i16 0], align 2
@.str.81 = private unnamed_addr constant [16 x i16] [i16 32, i16 40, i16 114, i16 101, i16 113, i16 117, i16 101, i16 115, i16 116, i16 101, i16 100, i16 32, i16 37, i16 49, i16 41, i16 0], align 2
@.str.82 = private unnamed_addr constant [10 x i16] [i16 32, i16 32, i16 8226, i16 32, i16 32, i16 37, i16 49, i16 112, i16 116, i16 0], align 2
@.str.83 = private unnamed_addr constant [10 x i16] [i16 32, i16 32, i16 8226, i16 32, i16 32, i16 37, i16 49, i16 112, i16 120, i16 0], align 2
@.str.84 = private unnamed_addr constant [17 x i16] [i16 32, i16 32, i16 8226, i16 32, i16 32, i16 102, i16 105, i16 120, i16 101, i16 100, i16 45, i16 112, i16 105, i16 116, i16 99, i16 104, i16 0], align 2
@.str.85 = private unnamed_addr constant [18 x i16] [i16 32, i16 32, i16 8226, i16 32, i16 32, i16 112, i16 114, i16 111, i16 112, i16 111, i16 114, i16 116, i16 105, i16 111, i16 110, i16 97, i16 108, i16 0], align 2
@.str.86 = private unnamed_addr constant [10 x i16] [i16 32, i16 32, i16 8226, i16 32, i16 32, i16 98, i16 111, i16 108, i16 100, i16 0], align 2
@.str.87 = private unnamed_addr constant [12 x i16] [i16 32, i16 32, i16 8226, i16 32, i16 32, i16 105, i16 116, i16 97, i16 108, i16 105, i16 99, i16 0], align 2
@.str.88 = private unnamed_addr constant [10 x i16] [i16 40, i16 117, i16 110, i16 110, i16 97, i16 109, i16 101, i16 100, i16 41, i16 0], align 2
@.str.89 = private unnamed_addr constant [7 x i16] [i16 37, i16 49, i16 91, i16 37, i16 50, i16 93, i16 0], align 2
@.str.90 = private unnamed_addr constant [4 x i16] [i16 32, i16 8250, i16 32, i16 0], align 2
@_ZN12ThemeManager16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN6QTimer16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN15QAbstractButton16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN16QDialogButtonBox16staticMetaObjectE = external global %struct.QMetaObject, align 8
@.str.91 = private unnamed_addr constant [11 x i8] c"ThemeToken\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @qt_version_tag_use], section "llvm.metadata"
@switch.table._ZN16ThemeDebugDialog18updateThemeSectionEv = private unnamed_addr constant [3 x ptr] [ptr @.str.76, ptr @.str.77, ptr @.str.78], align 8
@switch.table._ZN16ThemeDebugDialog18updateThemeSectionEv.4 = private unnamed_addr constant [3 x i8] c"\06\04\05", align 8

@_ZN16ThemeDebugDialogC1EP7QWidget = unnamed_addr alias void (ptr, ptr), ptr @_ZN16ThemeDebugDialogC2EP7QWidget
@_ZN16ThemeDebugDialogD1Ev = unnamed_addr alias void (ptr), ptr @_ZN16ThemeDebugDialogD2Ev

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16ThemeDebugDialogC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(296) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %class.QString, align 8             ; 9 uses
  %3 = alloca %class.QString, align 8             ; 6 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QString, align 8             ; 9 uses
  %6 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %7 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  tail call void @_ZN7QDialogC2EP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(72) %0, ptr noundef null, i32 11)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.f, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV16ThemeDebugDialog, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV16ThemeDebugDialog, i64 488), ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %1, null                ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZN15QtSharedPointer20ExternalRefCountData9getAndRefEPK7QObject(ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %bb.b ]
  store ptr %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.k, i8 0, i64 208, i1 false)
  invoke void @_ZN7QWidget12setAttributeEN2Qt15WidgetAttributeEb(ptr noundef align 8 dereferenceable_or_null(40) %0, i32 noundef 55, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.m = load ptr, ptr @mainApp, align 8
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN16ThemeDebugDialog16staticMetaObjectE, ptr noundef nonnull @.str, ptr noundef null, i32 noundef -1)
          to label %_ZN16ThemeDebugDialog2trEPKcS1_i.exit unwind label %bb.o

_ZN16ThemeDebugDialog2trEPKcS1_i.exit:            ; preds = %bb.d
  invoke void @_ZN15MainApplication17windowTitleStringE7QString(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, ptr noundef align 8 dereferenceable_or_null(168) %i.m, ptr noundef nonnull align 8 %3)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %_ZN16ThemeDebugDialog2trEPKcS1_i.exit
  invoke void @_ZN7QWidget14setWindowTitleERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.f
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %.not.i.i29 = icmp eq i32 %i.o, 1
  br i1 %.not.i.i29, label %bb.g, label %_ZN7QStringD2Ev.exit

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.p = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.p, i64 noundef 2, i64 noundef 8) #16
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.f, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.g
  %i.q = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i30, label %_ZN7QStringD2Ev.exit33, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31:    ; preds = %_ZN7QStringD2Ev.exit
  %i.r = atomicrmw sub ptr %i.q, i32 1 acq_rel, align 4
  %.not.i.i32 = icmp eq i32 %i.r, 1
  br i1 %.not.i.i32, label %bb.h, label %_ZN7QStringD2Ev.exit33

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31
  %i.s = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.s, i64 noundef 2, i64 noundef 8) #16
  br label %_ZN7QStringD2Ev.exit33

_ZN7QStringD2Ev.exit33:                           ; preds = %_ZN7QStringD2Ev.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  invoke void @_ZN16ThemeDebugDialog7buildUiEv(ptr noundef align 8 dereferenceable_or_null(296) %0)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %_ZN7QStringD2Ev.exit33
  br i1 %.not.i.i, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 20
  %i.w = getelementptr i8, ptr %i.u, i64 28
  %8 = load <2 x i32>, ptr %i.w, align 4
  %9 = load <2 x i32>, ptr %i.v, align 4
  %10 = add <2 x i32> %8, splat (i32 1)
  %11 = sub <2 x i32> %10, %9                     ; 2 uses
  %12 = extractelement <2 x i32> %11, i64 0
  %i.x = shl i32 %12, 1
  %i.y = sdiv i32 %i.x, 3
  %.sroa.speculated69 = call i32 @llvm.smax.i32(i32 %i.y, i32 720)
  %13 = extractelement <2 x i32> %11, i64 1
  %i.z = mul i32 %13, 3
  %i.aa = sdiv i32 %i.z, 4
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.aa, i32 600)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN19GeometryStateDialog12loadGeometryEiiRK7QString(ptr noundef align 8 dereferenceable_or_null(72) %0, i32 noundef %.sroa.speculated69, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i34, label %_ZN7QStringD2Ev.exit37, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35:    ; preds = %bb.k
  %i.ac = atomicrmw sub ptr %i.ab, i32 1 acq_rel, align 4
  %.not.i.i36 = icmp eq i32 %i.ac, 1
  br i1 %.not.i.i36, label %bb.l, label %_ZN7QStringD2Ev.exit37

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35
  %i.ad = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ad, i64 noundef 2, i64 noundef 8) #16
  br label %_ZN7QStringD2Ev.exit37

_ZN7QStringD2Ev.exit37:                           ; preds = %bb.k, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.aa

bb.m:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.n:                                             ; preds = %.noexc64, %bb.aj, %.noexc59, %.noexc58, %bb.ab, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.aa, %_ZN7QStringD2Ev.exit33, %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.o:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit45

bb.p:                                             ; preds = %_ZN16ThemeDebugDialog2trEPKcS1_i.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit41

bb.q:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aj = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i38, label %_ZN7QStringD2Ev.exit41, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39:    ; preds = %bb.q
  %i.ak = atomicrmw sub ptr %i.aj, i32 1 acq_rel, align 4
  %.not.i.i40 = icmp eq i32 %i.ak, 1
  br i1 %.not.i.i40, label %bb.r, label %_ZN7QStringD2Ev.exit41

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39
  %i.al = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.al, i64 noundef 2, i64 noundef 8) #16
  br label %_ZN7QStringD2Ev.exit41

_ZN7QStringD2Ev.exit41:                           ; preds = %bb.r, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.ai, %bb.q ], [ %i.ai, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39 ], [ %i.ai, %bb.r ] ; 3 uses
  %i.am = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i42, label %_ZN7QStringD2Ev.exit45, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43:    ; preds = %_ZN7QStringD2Ev.exit41
  %i.an = atomicrmw sub ptr %i.am, i32 1 acq_rel, align 4
  %.not.i.i44 = icmp eq i32 %i.an, 1
  br i1 %.not.i.i44, label %bb.s, label %_ZN7QStringD2Ev.exit45

bb.s:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43
  %i.ao = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ao, i64 noundef 2, i64 noundef 8) #16
  br label %_ZN7QStringD2Ev.exit45

_ZN7QStringD2Ev.exit45:                           ; preds = %bb.s, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43, %_ZN7QStringD2Ev.exit41, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.o ], [ %.pn, %_ZN7QStringD2Ev.exit41 ], [ %.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43 ], [ %.pn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.ao

bb.t:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i46, label %_ZN7QStringD2Ev.exit49, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i47

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i47:    ; preds = %bb.t
  %i.ar = atomicrmw sub ptr %i.aq, i32 1 acq_rel, align 4
  %.not.i.i48 = icmp eq i32 %i.ar, 1
  br i1 %.not.i.i48, label %bb.u, label %_ZN7QStringD2Ev.exit49

bb.u:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i47
  %i.as = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.as, i64 noundef 2, i64 noundef 8) #16
  br label %_ZN7QStringD2Ev.exit49

_ZN7QStringD2Ev.exit49:                           ; preds = %bb.t, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i47, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ao

bb.v:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN19GeometryStateDialog12loadGeometryEiiRK7QString(ptr noundef align 8 dereferenceable_or_null(72) %0, i32 noundef 720, i32 noundef 600, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.at = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i50, label %_ZN7QStringD2Ev.exit53, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i51

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i51:    ; preds = %bb.w
  %i.au = atomicrmw sub ptr %i.at, i32 1 acq_rel, align 4
  %.not.i.i52 = icmp eq i32 %i.au, 1
  br i1 %.not.i.i52, label %bb.x, label %_ZN7QStringD2Ev.exit53

bb.x:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i51
  %i.av = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.av, i64 noundef 2, i64 noundef 8) #16
  br label %_ZN7QStringD2Ev.exit53

_ZN7QStringD2Ev.exit53:                           ; preds = %bb.w, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i51, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i54, label %_ZN7QStringD2Ev.exit57, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i55

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i55:    ; preds = %bb.y
  %i.ay = atomicrmw sub ptr %i.ax, i32 1 acq_rel, align 4
  %.not.i.i56 = icmp eq i32 %i.ay, 1
  br i1 %.not.i.i56, label %bb.z, label %_ZN7QStringD2Ev.exit57

bb.z:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i55
  %i.az = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.az, i64 noundef 2, i64 noundef 8) #16
  br label %_ZN7QStringD2Ev.exit57

_ZN7QStringD2Ev.exit57:                           ; preds = %bb.y, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i55, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ao

bb.aa:                                            ; preds = %_ZN7QStringD2Ev.exit53, %_ZN7QStringD2Ev.exit37
  invoke void @_ZN16ThemeDebugDialog14populateTokensEv(ptr noundef align 8 dereferenceable_or_null(296) %0)
          to label %bb.ab unwind label %bb.n

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN16ThemeDebugDialog18updateThemeSectionEv(ptr noundef readonly align 8 dereferenceable_or_null(296) %0)
          to label %.noexc58 unwind label %bb.n

.noexc58:                                         ; preds = %bb.ab
  invoke void @_ZN16ThemeDebugDialog23updateMainWindowSectionEv(ptr noundef readonly align 8 dereferenceable_or_null(296) %0)
          to label %.noexc59 unwind label %bb.n

.noexc59:                                         ; preds = %.noexc58
  invoke void @_ZN16ThemeDebugDialog14populateTokensEv(ptr noundef readonly align 8 dereferenceable_or_null(296) %0)
          to label %_ZN16ThemeDebugDialog7refreshEv.exit unwind label %bb.n

_ZN16ThemeDebugDialog7refreshEv.exit:             ; preds = %.noexc59
  %i.ba = invoke noundef ptr @_ZN12ThemeManager8instanceEv()
          to label %bb.ac unwind label %bb.af     ; 2 uses

bb.ac:                                            ; preds = %_ZN16ThemeDebugDialog7refreshEv.exit
  %.not24 = icmp eq ptr %i.ba, null
  br i1 %.not24, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 ptrtoint (ptr @_ZN12ThemeManager12themeChangedEv to i64), ptr %i.b, align 8, !noalias !14
  %.fca.1.gep14.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep14.i, align 8, !noalias !14
  store i64 ptrtoint (ptr @_ZN16ThemeDebugDialog7refreshEv to i64), ptr %i.c, align 8, !noalias !14
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !noalias !14
  %i.bb = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #17
          to label %.noexc61 unwind label %bb.af  ; 5 uses

.noexc61:                                         ; preds = %bb.ad
  store i32 1, ptr %i.bb, align 4, !noalias !14
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM16ThemeDebugDialogFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.bc, align 8, !noalias !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 ptrtoint (ptr @_ZN16ThemeDebugDialog7refreshEv to i64), ptr %i.bd, align 8, !noalias !14
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !noalias !14
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %6, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.b, ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef %i.bb, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN12ThemeManager16staticMetaObjectE)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_0
