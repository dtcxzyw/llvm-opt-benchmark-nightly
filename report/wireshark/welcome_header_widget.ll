Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/welcome_header_widget?download=true
inline.NumInlined: 587
inline.NumDeleted: 235
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.QtPrivate::QVersionTag" = type { ptr, i64 }
%struct.QMetaObject = type { %"struct.QMetaObject::Data" }
%"struct.QMetaObject::Data" = type { %"struct.QMetaObject::SuperData", ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.QMetaObject::SuperData" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.QMetaObject::Connection" = type { ptr }
%class.QString = type { %struct.QArrayDataPointer }
%struct.QArrayDataPointer = type { ptr, ptr, i64 }
%class.QByteArray = type { %struct.QArrayDataPointer.7 }
%struct.QArrayDataPointer.7 = type { ptr, ptr, i64 }
%class.QVariant = type { %"struct.QVariant::Private" }
%"struct.QVariant::Private" = type { %union.anon, i64 }
%union.anon = type { ptr, [16 x i8] }
%class.QEasingCurve = type { ptr }
%class.QSize = type { i32, i32 }
%class.QUrl = type { ptr }
%"struct.QtPrivate::QStringViewArg" = type { %"struct.QtPrivate::ArgBase", %class.QStringView }
%"struct.QtPrivate::ArgBase" = type { i8 }
%class.QStringView = type { i64, ptr }
%struct.QArrayDataPointer.0 = type { ptr, ptr, i64 }

$_ZN22Ui_WelcomeHeaderWidget7setupUiEP7QWidget = comdat any

$_ZN7QStringD2Ev = comdat any

$_ZN5QListI7QStringED2Ev = comdat any

$_ZNK7QString3argIJRS_PKcEEENSt9enable_ifIXaagesZT_Li2Esr3std7is_sameIN9QtPrivate8BoolListIJXspsr33is_convertible_to_view_or_qstringIT_EE5valueELb1EEEENS6_IJLb1EXspsr33is_convertible_to_view_or_qstringIS7_EE5valueEEEEEE5valueES_E4typeEDpOS7_ = comdat any

$_ZN22Ui_WelcomeHeaderWidget13retranslateUiEP7QWidget = comdat any

$__clang_call_terminate = comdat any

$_ZN17QArrayDataPointerI7QStringED2Ev = comdat any

$_ZN9QtPrivate11QSlotObjectIM19WelcomeHeaderWidgetFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb = comdat any

$_ZN9QtPrivate11QSlotObjectIM19WelcomeHeaderWidgetFv7QStringS2_ENS_4ListIJS2_S2_EEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb = comdat any

$_ZN9QtPrivate11FunctorCallINS_11IndexesListIJLi0ELi1EEEENS_4ListIJ7QStringS4_EEEvM19WelcomeHeaderWidgetFvS4_S4_EE4callES8_PS6_PPv = comdat any

$_ZN9QtPrivate16QMovableArrayOpsI7QStringE7emplaceIJRKS1_EEEvxDpOT_ = comdat any

$_ZN17QArrayDataPointerI7QStringE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_ = comdat any

$_ZN17QArrayDataPointerI7QStringE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_ = comdat any

$_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_ = comdat any

$_ZN17QArrayDataPointerI7QStringE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE = comdat any

$qt_version_tag_use = comdat any

@qt_version_tag = external constant i8, align 1
@qt_version_tag_use = linkonce_odr hidden constant %"struct.QtPrivate::QVersionTag" { ptr @qt_version_tag, i64 394242 }, section ".qtversion", comdat, align 8
@_ZTV19WelcomeHeaderWidget = external constant { [54 x ptr], [10 x ptr] }, align 8
@mainApp = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Development Build\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Update available: %1\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Update %1 is available\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"A new update for version %1 is available (current version is %2)\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Release Notes for update %1\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Opens a browser to show the release notes for %1\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Download update %1\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Starts the download process for update %1\00", align 1
@.str.11 = private unnamed_addr constant [6 x i16] [i16 104, i16 116, i16 116, i16 112, i16 115, i16 0], align 2
@.str.12 = private unnamed_addr constant [15 x i16] [i16 46, i16 119, i16 105, i16 114, i16 101, i16 115, i16 104, i16 97, i16 114, i16 107, i16 46, i16 111, i16 114, i16 103, i16 0], align 2
@.str.13 = private unnamed_addr constant [17 x i16] [i16 46, i16 115, i16 116, i16 114, i16 97, i16 116, i16 111, i16 115, i16 104, i16 97, i16 114, i16 107, i16 46, i16 111, i16 114, i16 103, i16 0], align 2
@.str.14 = private unnamed_addr constant [23 x i16] [i16 119, i16 105, i16 100, i16 103, i16 101, i16 116, i16 115, i16 47, i16 119, i16 101, i16 108, i16 99, i16 111, i16 109, i16 101, i16 45, i16 104, i16 101, i16 97, i16 100, i16 101, i16 114, i16 0], align 2
@.str.15 = private unnamed_addr constant [20 x i8] c"WelcomeHeaderWidget\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"verticalLayout\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"welcomeHeader\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"welcomeHeaderLayout\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"layoutTitleVersion\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"headerTitle\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"headerVersion\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"headerBuildLabel\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"updateHeader\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"updateHeaderLayout\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"updateDot\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"updateText\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"updateReleaseNotes\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"updateDownload\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"updateDismiss\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"\C3\97\00", align 1
@_ZTV11QSpacerItem = external constant { [19 x ptr] }, align 8
@_ZN19WelcomeHeaderWidget16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN7QString6_emptyE = external constant i16, align 2
@.str.31 = private unnamed_addr constant [5 x i8] c"Form\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Application Name\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"Application name\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"Wireshark\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"Version information\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"Version of the application currently running\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"4.7.0 (v4.7.0rc0-2438-g68ddfc1bcba4)\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"Variant of the application running\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"Build variant of the application currently running\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"Update Available\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"Graphical indicator that an update is available\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"Update available\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"A new update is available\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"Release Notes\00", align 1
@.str.46 = private unnamed_addr constant [67 x i8] c"Opens a browser to show the release notes for the available update\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"Download Update\00", align 1
@.str.48 = private unnamed_addr constant [63 x i8] c"Starts the download process for the currently available update\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"Dismiss update notification\00", align 1
@.str.50 = private unnamed_addr constant [146 x i8] c"Dismiss the update notification and show the information about an update again on either next application start or when a new update is available\00", align 1
@_ZN12ThemeManager16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN14SoftwareUpdate16staticMetaObjectE = external global %struct.QMetaObject, align 8
@"_ZTIZN19WelcomeHeaderWidgetC1EP7QWidgetE3$_2" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN19WelcomeHeaderWidgetC1EP7QWidgetE3$_2" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN19WelcomeHeaderWidgetC1EP7QWidgetE3$_2" = internal constant [41 x i8] c"ZN19WelcomeHeaderWidgetC1EP7QWidgetE3$_2\00", align 1
@_ZN15MainApplication16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN15QAbstractButton16staticMetaObjectE = external global %struct.QMetaObject, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @qt_version_tag_use], section "llvm.metadata"

@_ZN19WelcomeHeaderWidgetC1EP7QWidget = unnamed_addr alias void (ptr, ptr), ptr @_ZN19WelcomeHeaderWidgetC2EP7QWidget
@_ZN19WelcomeHeaderWidgetD1Ev = unnamed_addr alias void (ptr), ptr @_ZN19WelcomeHeaderWidgetD2Ev

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN19WelcomeHeaderWidgetC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(128) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  %3 = alloca %"class.QMetaObject::Connection", align 8 ; 4 uses
  %i.d = alloca { i64, i64 }, align 8             ; 5 uses
  %i.e = alloca { i64, i64 }, align 8             ; 5 uses
  %i.f = alloca { i64, i64 }, align 8             ; 5 uses
  %i.g = alloca { i64, i64 }, align 8             ; 5 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QString, align 16            ; 5 uses
  %6 = alloca %class.QString, align 16            ; 5 uses
  %i.h = alloca { i64, i64 }, align 8             ; 5 uses
  %i.i = alloca { i64, i64 }, align 8             ; 5 uses
  %7 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %8 = alloca %class.QString, align 8             ; 9 uses
  %9 = alloca %class.QString, align 16            ; 11 uses
  %10 = alloca %class.QString, align 16           ; 12 uses
  %11 = alloca %class.QString, align 16           ; 12 uses
  %12 = alloca %class.QString, align 16           ; 13 uses
  %13 = alloca %class.QString, align 8            ; 10 uses
  %14 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %15 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %16 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %17 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %18 = alloca %class.QByteArray, align 8         ; 9 uses
  %19 = alloca %class.QVariant, align 8           ; 7 uses
  %20 = alloca %class.QVariant, align 8           ; 7 uses
  %21 = alloca %class.QVariant, align 8           ; 7 uses
  %22 = alloca %class.QEasingCurve, align 8       ; 7 uses
  tail call void @_ZN7QWidgetC2EPS_6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %1, i32 0)
  store ptr getelementptr inbounds nuw inrange(-16, 416) (i8, ptr @_ZTV19WelcomeHeaderWidget, i64 16), ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV19WelcomeHeaderWidget, i64 448), ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 40         ; 9 uses
  %i.l = invoke noalias noundef dereferenceable_or_null(128) ptr @_Znwm(i64 noundef 128) #20
          to label %bb.b unwind label %bb.z       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.l, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, i8 0, i64 72, i1 false)
  invoke void @_ZN22Ui_WelcomeHeaderWidget7setupUiEP7QWidget(ptr noundef align 8 dereferenceable_or_null(128) %i.l, ptr noundef %0)
          to label %bb.c unwind label %bb.aa

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN19WelcomeHeaderWidget16updateStyleSheetEv(ptr noundef align 8 dereferenceable_or_null(128) %0)
          to label %bb.d unwind label %bb.aa

bb.d:                                             ; preds = %bb.c
  %i.p = invoke noundef ptr @_ZN12ThemeManager8instanceEv()
          to label %bb.e unwind label %bb.aa

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 ptrtoint (ptr @_ZN12ThemeManager12themeChangedEv to i64), ptr %i.h, align 8, !noalias !23
  %.fca.1.gep14.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %.fca.1.gep14.i, align 8, !noalias !23
  store i64 ptrtoint (ptr @_ZN19WelcomeHeaderWidget16updateStyleSheetEv to i64), ptr %i.i, align 8, !noalias !23
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !noalias !23
  %i.q = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #20
          to label %.noexc unwind label %bb.aa, !noalias !23 ; 5 uses

.noexc:                                           ; preds = %bb.e
  store i32 1, ptr %i.q, align 4, !noalias !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM19WelcomeHeaderWidgetFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.r, align 8, !noalias !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 ptrtoint (ptr @_ZN19WelcomeHeaderWidget16updateStyleSheetEv to i64), ptr %i.s, align 8, !noalias !23
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !noalias !23
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %7, ptr noundef %i.p, ptr noundef nonnull %i.h, ptr noundef %0, ptr noundef nonnull %i.i, ptr noundef %i.q, i32 noundef 0, ptr noundef null, ptr noundef @_ZN12ThemeManager16staticMetaObjectE)
          to label %bb.f unwind label %bb.aa

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #21
  %i.t = load ptr, ptr %i.k, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZN16QCoreApplication15applicationNameEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %8)
          to label %bb.g unwind label %bb.ab

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6QLabel7setTextERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.ac

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %8, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.h
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.x, 1
  br i1 %.not.i.i, label %bb.i, label %_ZN7QStringD2Ev.exit

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.y = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.y, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.h, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.z = invoke ptr @application_get_vcs_version_info_short()
          to label %bb.j unwind label %bb.ae      ; 3 uses

bb.j:                                             ; preds = %_ZN7QStringD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %.not.i.i65 = icmp eq ptr %i.z, null
  br i1 %.not.i.i65, label %_ZN7QStringD2Ev.exit.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.j
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.z) #21
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %.split.i.i, %bb.j
  %.sink5.i.i = phi i64 [ %i.aa, %.split.i.i ], [ 0, %bb.j ]
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, i64 %.sink5.i.i, ptr %i.z)
          to label %bb.k unwind label %bb.ae

bb.k:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.ab = load <2 x ptr>, ptr %6, align 16
  store <2 x ptr> %i.ab, ptr %9, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ae = load i64, ptr %i.ad, align 16
  store i64 %i.ae, ptr %i.ac, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.af = invoke ptr @application_version()
          to label %bb.l unwind label %bb.af      ; 3 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %.not.i.i67 = icmp eq ptr %i.af, null
  br i1 %.not.i.i67, label %_ZN7QStringD2Ev.exit.i69, label %.split.i.i68

.split.i.i68:                                     ; preds = %bb.l
  %i.ag = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.af) #21
  br label %_ZN7QStringD2Ev.exit.i69

_ZN7QStringD2Ev.exit.i69:                         ; preds = %.split.i.i68, %bb.l
  %.sink5.i.i70 = phi i64 [ %i.ag, %.split.i.i68 ], [ 0, %bb.l ]
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, i64 %.sink5.i.i70, ptr %i.af)
          to label %bb.m unwind label %bb.af

bb.m:                                             ; preds = %_ZN7QStringD2Ev.exit.i69
  %i.ah = load <2 x ptr>, ptr %5, align 16
  store <2 x ptr> %i.ah, ptr %10, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ak = load i64, ptr %i.aj, align 16
  store i64 %i.ak, ptr %i.ai, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.al = load i64, ptr %i.ac, align 16
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = call noundef i32 @_ZNK7QString7compareERKS_N2Qt15CaseSensitivityE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 1) #21
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.ak, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %12, i64 2, ptr @.str)
          to label %.noexc75 unwind label %bb.ah

.noexc75:                                         ; preds = %bb.o
  %i.ap = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZplPKcRK7QString.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %.noexc75
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ar = load ptr, ptr %12, align 16             ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i158, label %.body, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159:   ; preds = %bb.p
  %i.as = atomicrmw add ptr %i.ar, i32 -1 acq_rel, align 4
  %.not.i.i160 = icmp eq i32 %i.as, 1
  br i1 %.not.i.i160, label %bb.aj, label %.body

_ZplPKcRK7QString.exit:                           ; preds = %.noexc75
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.at = load <2 x ptr>, ptr %12, align 16, !noalias !24
  %i.au = load ptr, ptr %12, align 16, !noalias !24 ; 2 uses
  store <2 x ptr> %i.at, ptr %11, align 16, !alias.scope !24
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ax = load i64, ptr %i.aw, align 16, !noalias !24
  store i64 %i.ax, ptr %i.av, align 16, !alias.scope !24
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringC2ERKS_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZplPKcRK7QString.exit
  %i.ay = atomicrmw add ptr %i.au, i32 1 acq_rel, align 4, !noalias !24 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit.i

_ZN7QStringC2ERKS_.exit.i:                        ; preds = %bb.q, %_ZplPKcRK7QString.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !24
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, i64 1, ptr @.str.1)
          to label %bb.r unwind label %bb.t, !noalias !24

bb.r:                                             ; preds = %_ZN7QStringC2ERKS_.exit.i
  %i.az = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN7QStringpLERKS_.exit.i unwind label %bb.u ; 0 uses

_ZN7QStringpLERKS_.exit.i:                        ; preds = %bb.r
  %i.ba = load ptr, ptr %4, align 8, !noalias !24 ; 2 uses
  %.not.i.i.i5.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i5.i, label %bb.w, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %_ZN7QStringpLERKS_.exit.i
  %i.bb = atomicrmw add ptr %i.ba, i32 -1 acq_rel, align 4
  %.not.i.i.i78 = icmp eq i32 %i.bb, 1
  br i1 %.not.i.i.i78, label %bb.s, label %bb.w

bb.s:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.bc = load ptr, ptr %4, align 8, !noalias !24
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bc, i64 noundef 2, i64 noundef 8) #21
  br label %bb.w

bb.t:                                             ; preds = %_ZN7QStringC2ERKS_.exit.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit9.i

bb.u:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bf = load ptr, ptr %4, align 8, !noalias !24 ; 2 uses
  %.not.i.i.i6.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i6.i, label %_ZN7QStringD2Ev.exit9.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7.i:   ; preds = %bb.u
  %i.bg = atomicrmw add ptr %i.bf, i32 -1 acq_rel, align 4
  %.not.i.i8.i = icmp eq i32 %i.bg, 1
  br i1 %.not.i.i8.i, label %bb.v, label %_ZN7QStringD2Ev.exit9.i

bb.v:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7.i
  %i.bh = load ptr, ptr %4, align 8, !noalias !24
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bh, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit9.i

_ZN7QStringD2Ev.exit9.i:                          ; preds = %bb.v, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7.i, %bb.u, %bb.t
  %.pn.i = phi { ptr, i32 } [ %i.bd, %bb.t ], [ %i.be, %bb.u ], [ %i.be, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7.i ], [ %i.be, %bb.v ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !24
  %i.bi = load ptr, ptr %11, align 16             ; 2 uses
  %.not.i.i.i162 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i162, label %.body80, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163:   ; preds = %_ZN7QStringD2Ev.exit9.i
  %i.bj = atomicrmw add ptr %i.bi, i32 -1 acq_rel, align 4
  %.not.i.i164 = icmp eq i32 %i.bj, 1
  br i1 %.not.i.i164, label %.body80.sink.split, label %.body80

bb.w:                                             ; preds = %bb.s, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %_ZN7QStringpLERKS_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !24
  %i.bk = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZN7QStringpLERKS_.exit unwind label %bb.ai ; 0 uses

_ZN7QStringpLERKS_.exit:                          ; preds = %bb.w
  %i.bl = load ptr, ptr %11, align 16             ; 2 uses
  %.not.i.i.i83 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i83, label %_ZN7QStringD2Ev.exit86, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84:    ; preds = %_ZN7QStringpLERKS_.exit
  %i.bm = atomicrmw add ptr %i.bl, i32 -1 acq_rel, align 4
  %.not.i.i85 = icmp eq i32 %i.bm, 1
  br i1 %.not.i.i85, label %bb.x, label %_ZN7QStringD2Ev.exit86

bb.x:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84
  %i.bn = load ptr, ptr %11, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bn, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit86

_ZN7QStringD2Ev.exit86:                           ; preds = %_ZN7QStringpLERKS_.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84, %bb.x
  %i.bo = load ptr, ptr %12, align 16             ; 2 uses
  %.not.i.i.i87 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i87, label %_ZN7QStringD2Ev.exit90, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i88

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i88:    ; preds = %_ZN7QStringD2Ev.exit86
  %i.bp = atomicrmw add ptr %i.bo, i32 -1 acq_rel, align 4
  %.not.i.i89 = icmp eq i32 %i.bp, 1
  br i1 %.not.i.i89, label %bb.y, label %_ZN7QStringD2Ev.exit90

bb.y:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i88
  %i.bq = load ptr, ptr %12, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bq, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit90

_ZN7QStringD2Ev.exit90:                           ; preds = %_ZN7QStringD2Ev.exit86, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i88, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ak

bb.z:                                             ; preds = %bb.a
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.aa:                                            ; preds = %.noexc, %bb.e, %bb.d, %bb.c, %bb.b
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.ab:                                            ; preds = %bb.f
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit94

bb.ac:                                            ; preds = %bb.g
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bv = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i91, label %_ZN7QStringD2Ev.exit94, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i92

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i92:    ; preds = %bb.ac
  %i.bw = atomicrmw add ptr %i.bv, i32 -1 acq_rel, align 4
  %.not.i.i93 = icmp eq i32 %i.bw, 1
  br i1 %.not.i.i93, label %bb.ad, label %_ZN7QStringD2Ev.exit94

bb.ad:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i92
  %i.bx = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bx, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit94

_ZN7QStringD2Ev.exit94:                           ; preds = %bb.ad, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i92, %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.ab ], [ %i.bu, %bb.ac ], [ %i.bu, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i92 ], [ %i.bu, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.cx

bb.ae:                                            ; preds = %_ZN7QStringD2Ev.exit.i, %_ZN7QStringD2Ev.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit157

bb.af:                                            ; preds = %_ZN7QStringD2Ev.exit.i69, %bb.k
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit153

bb.ag:                                            ; preds = %bb.ak
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ah:                                            ; preds = %bb.o
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.w
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cd = load ptr, ptr %11, align 16             ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i95, label %.body80, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i96

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i96:    ; preds = %bb.ai
  %i.ce = atomicrmw add ptr %i.cd, i32 -1 acq_rel, align 4
  %.not.i.i97 = icmp eq i32 %i.ce, 1
  br i1 %.not.i.i97, label %.body80.sink.split, label %.body80

.body80.sink.split:                               ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i96, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163
  %.pn42.ph = phi { ptr, i32 } [ %.pn.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163 ], [ %i.cc, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i96 ]
  %i.cf = load ptr, ptr %11, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cf, i64 noundef 2, i64 noundef 8) #21
  br label %.body80

.body80:                                          ; preds = %.body80.sink.split, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i96, %bb.ai, %_ZN7QStringD2Ev.exit9.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163
  %.pn42 = phi { ptr, i32 } [ %i.cc, %bb.ai ], [ %i.cc, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i96 ], [ %.pn.i, %_ZN7QStringD2Ev.exit9.i ], [ %.pn.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i163 ], [ %.pn42.ph, %.body80.sink.split ] ; 3 uses
  %i.cg = load ptr, ptr %12, align 16             ; 2 uses
  %.not.i.i.i99 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i99, label %.body, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i100

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i100:   ; preds = %.body80
  %i.ch = atomicrmw add ptr %i.cg, i32 -1 acq_rel, align 4
  %.not.i.i101 = icmp eq i32 %i.ch, 1
  br i1 %.not.i.i101, label %bb.aj, label %.body

bb.aj:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i100, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159
  %.pn42.pn.ph = phi { ptr, i32 } [ %i.aq, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159 ], [ %.pn42, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i100 ]
  %i.ci = load ptr, ptr %12, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ci, i64 noundef 2, i64 noundef 8) #21
  br label %.body

.body:                                            ; preds = %bb.aj, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i100, %.body80, %bb.ah, %bb.p, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i100 ], [ %i.cb, %bb.ah ], [ %i.aq, %bb.p ], [ %i.aq, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i159 ], [ %.pn42, %.body80 ], [ %.pn42.pn.ph, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.cu

bb.ak:                                            ; preds = %_ZN7QStringD2Ev.exit90, %bb.n
  %i.cj = load ptr, ptr %i.k, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8
  invoke void @_ZN6QLabel7setTextERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.al unwind label %bb.ag

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %13, ptr noundef align 8 dereferenceable_or_null(56) @_ZN19WelcomeHeaderWidget16staticMetaObjectE, ptr noundef @.str.2, ptr noundef null, i32 noundef -1)
          to label %_ZN19WelcomeHeaderWidget2trEPKcS1_i.exit unwind label %bb.an

_ZN19WelcomeHeaderWidget2trEPKcS1_i.exit:         ; preds = %bb.al
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = icmp eq i64 %i.cn, 0
  %i.cp = load ptr, ptr %i.k, align 8
  %i.cq = getelementptr i8, ptr %i.cp, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  br i1 %i.co, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %_ZN19WelcomeHeaderWidget2trEPKcS1_i.exit
  invoke void @_ZN7QWidget4hideEv(ptr noundef align 8 dereferenceable_or_null(40) %i.cr)
          to label %bb.ap unwind label %bb.by

bb.an:                                            ; preds = %bb.al
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit149

bb.ao:                                            ; preds = %_ZN19WelcomeHeaderWidget2trEPKcS1_i.exit
  invoke void @_ZN6QLabel7setTextERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ap unwind label %bb.by

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %i.ct = load ptr, ptr %i.k, align 8
  %i.cu = getelementptr i8, ptr %i.ct, i64 64
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 104
  %i.cy = load ptr, ptr %i.cx, align 8
  invoke void %i.cy(ptr noundef align 8 dereferenceable_or_null(40) %i.cv, i1 noundef zeroext false)
          to label %bb.aq unwind label %bb.by

bb.aq:                                            ; preds = %bb.ap
  %i.cz = invoke noundef zeroext i1 @_ZN14SoftwareUpdate18plattformSupportedEv()
          to label %bb.ar unwind label %bb.by

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.cz, label %bb.as, label %bb.cp

bb.as:                                            ; preds = %bb.ar
  %i.da = invoke noundef ptr @_ZN14SoftwareUpdate8instanceEv()
          to label %bb.at unwind label %bb.by

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 ptrtoint (ptr @_ZN14SoftwareUpdate15updateAvailableE7QStringS0_ to i64), ptr %i.f, align 8, !noalias !25
  %.fca.1.gep12.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %.fca.1.gep12.i, align 8, !noalias !25
  store i64 ptrtoint (ptr @_ZN19WelcomeHeaderWidget25setAvailableUpdateVersionE7QStringS0_ to i64), ptr %i.g, align 8, !noalias !25
  %.fca.1.gep.i105 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %.fca.1.gep.i105, align 8, !noalias !25
  %i.db = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #20
          to label %.noexc107 unwind label %bb.by, !noalias !25 ; 5 uses

.noexc107:                                        ; preds = %bb.at
  store i32 1, ptr %i.db, align 4, !noalias !25
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM19WelcomeHeaderWidgetFv7QStringS2_ENS_4ListIJS2_S2_EEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.dc, align 8, !noalias !25
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 ptrtoint (ptr @_ZN19WelcomeHeaderWidget25setAvailableUpdateVersionE7QStringS0_ to i64), ptr %i.dd, align 8, !noalias !25
  %.repack7.i.i106 = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i64 0, ptr %.repack7.i.i106, align 8, !noalias !25
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %14, ptr noundef %i.da, ptr noundef nonnull %i.f, ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef %i.db, i32 noundef 0, ptr noundef null, ptr noundef @_ZN14SoftwareUpdate16staticMetaObjectE)
          to label %bb.au unwind label %bb.by

bb.au:                                            ; preds = %.noexc107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %14) #21
  %i.de = invoke noundef ptr @_ZN14SoftwareUpdate8instanceEv()
          to label %bb.av unwind label %bb.by

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 ptrtoint (ptr @_ZN14SoftwareUpdate13updateEngagedEv to i64), ptr %i.d, align 8, !noalias !26
  %.fca.1.gep14.i112 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.fca.1.gep14.i112, align 8, !noalias !26
  store i64 ptrtoint (ptr @_ZN19WelcomeHeaderWidget27clearAvailableUpdateVersionEv to i64), ptr %i.e, align 8, !noalias !26
  %.fca.1.gep.i113 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.fca.1.gep.i113, align 8, !noalias !26
  %i.df = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #20
          to label %.noexc115 unwind label %bb.by, !noalias !26 ; 5 uses

.noexc115:                                        ; preds = %bb.av
  store i32 1, ptr %i.df, align 4, !noalias !26
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM19WelcomeHeaderWidgetFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.dg, align 8, !noalias !26
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i64 ptrtoint (ptr @_ZN19WelcomeHeaderWidget27clearAvailableUpdateVersionEv to i64), ptr %i.dh, align 8, !noalias !26
  %.repack7.i.i114 = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store i64 0, ptr %.repack7.i.i114, align 8, !noalias !26
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %15, ptr noundef %i.de, ptr noundef nonnull %i.d, ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.df, i32 noundef 0, ptr noundef null, ptr noundef @_ZN14SoftwareUpdate16staticMetaObjectE)
          to label %bb.aw unwind label %bb.by

bb.aw:                                            ; preds = %.noexc115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %15) #21
  %i.di = load ptr, ptr @mainApp, align 8         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.dj = getelementptr i8, ptr %i.di, i64 48
  %i.dk = load i8, ptr %i.dj, align 8, !range !27, !noundef !7
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.do, align 8
  %i.dp = ptrtoint ptr %0 to i64
  store i64 %i.dp, ptr %2, align 8
  store ptr @"_ZNSt17_Function_handlerIFvvEZN19WelcomeHeaderWidgetC1EP7QWidgetE3$_2E9_M_invokeERKSt9_Any_data", ptr %i.dn, align 8
  store ptr @"_ZNSt17_Function_handlerIFvvEZN19WelcomeHeaderWidgetC1EP7QWidgetE3$_2E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.dm, align 8
  invoke void @_ZN15MainApplication23whenInitializedDispatchEPK7QObjectSt8functionIFvvEE(ptr noundef align 8 dereferenceable_or_null(168) %i.di, ptr noundef %0, ptr noundef nonnull align 8 %2)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.dq = load ptr, ptr %i.dm, align 8            ; 2 uses
  %.not.i.i117 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i117, label %bb.bf, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dr = invoke noundef zeroext i1 %i.dq(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(32) %2, ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(32) %2, i32 noundef 3)
          to label %bb.bf unwind label %bb.ba     ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #22
  unreachable

bb.bb:                                            ; preds = %bb.ax
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %i.dm, align 8            ; 2 uses
  %.not.i7.i = icmp eq ptr %i.dv, null
  br i1 %.not.i7.i, label %.body118, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dw = invoke noundef zeroext i1 %i.dv(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(32) %2, ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(32) %2, i32 noundef 3)
          to label %.body118 unwind label %bb.bd  ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #22
  unreachable

bb.be:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 ptrtoint (ptr @_ZN15MainApplication14appInitializedEv to i64), ptr %i.c, align 8, !noalias !28
  %.fca.1.gep.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.fca.1.gep.i.i, align 8, !noalias !28
  %i.dz = invoke noalias noundef dereferenceable_or_null(24) ptr @_Znwm(i64 noundef 24) #20
          to label %.noexc120 unwind label %bb.by, !noalias !28 ; 4 uses

.noexc120:                                        ; preds = %bb.be
  store i32 1, ptr %i.dz, align 4, !noalias !28
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr @"_ZN9QtPrivate18QFunctorSlotObjectIZN19WelcomeHeaderWidgetC1EP7QWidgetE3$_2Li0ENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb", ptr %i.ea, align 8, !noalias !28
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store ptr %0, ptr %i.eb, align 8, !noalias !28
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %3, ptr noundef align 8 dereferenceable_or_null(168) %i.di, ptr noundef nonnull %i.c, ptr noundef %0, ptr noundef null, ptr noundef %i.dz, i32 noundef 0, ptr noundef null, ptr noundef @_ZN15MainApplication16staticMetaObjectE)
          to label %.noexc121 unwind label %bb.by

.noexc121:                                        ; preds = %.noexc120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %3) #21
  br label %bb.bf

bb.bf:                                            ; preds = %.noexc121, %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ec = load ptr, ptr %i.k, align 8
  %i.ed = getelementptr i8, ptr %i.ec, i64 112
  %i.ee = load ptr, ptr %i.ed, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 ptrtoint (ptr @_ZN15QAbstractButton7clickedEb to i64), ptr %i.b, align 8, !noalias !29
end_hunk_0
