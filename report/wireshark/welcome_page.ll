Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/welcome_page?download=true
inline.NumInlined: 377
inline.NumDeleted: 162
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.QtPrivate::QVersionTag" = type { ptr, i64 }
%struct.recent_settings_tag = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, ptr, i8, ptr, ptr, ptr, i8, i8, double, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i8 }
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
%class.QSize = type { i32, i32 }
%class.QPoint = type { i32, i32 }
%class.QModelIndex = type { i32, i32, i64, ptr }
%class.QVariant = type { %"struct.QVariant::Private" }
%"struct.QVariant::Private" = type { %union.anon, i64 }
%union.anon = type { ptr, [16 x i8] }

$_ZN14Ui_WelcomePage7setupUiEP7QWidget = comdat any

$_ZN7QStringD2Ev = comdat any

$_ZN14Ui_WelcomePage13retranslateUiEP7QWidget = comdat any

$__clang_call_terminate = comdat any

$_ZN9QtPrivate11QSlotObjectIM11WelcomePageFv6QPointENS_4ListIJRKS2_EEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb = comdat any

$_ZN9QtPrivate11QSlotObjectIM11WelcomePageFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb = comdat any

$qt_version_tag_use = comdat any

@qt_version_tag = external constant i8, align 1
@qt_version_tag_use = linkonce_odr hidden constant %"struct.QtPrivate::QVersionTag" { ptr @qt_version_tag, i64 394242 }, section ".qtversion", comdat, align 8
@_ZTV11WelcomePage = external constant { [55 x ptr], [10 x ptr] }, align 8
@.str = private unnamed_addr constant [15 x i8] c"Show in Folder\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Welcome page\00", align 1
@.str.2 = private unnamed_addr constant [97 x i8] c"The %1 welcome page provides access to recent files, capture interfaces, and learning resources.\00", align 1
@mainApp = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Recent capture files\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"List of recently opened capture files. Double-click or press Enter to open.\00", align 1
@.str.5 = private unnamed_addr constant [14 x i16] [i16 99, i16 97, i16 112, i16 116, i16 117, i16 114, i16 101, i16 72, i16 101, i16 97, i16 100, i16 101, i16 114, i16 0], align 2
@recent = external local_unnamed_addr global %struct.recent_settings_tag, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"Copy file path\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Remove from list\00", align 1
@.str.8 = private unnamed_addr constant [13 x i16] [i16 119, i16 101, i16 108, i16 99, i16 111, i16 109, i16 101, i16 45, i16 112, i16 97, i16 103, i16 101, i16 0], align 2
@_ZN11WelcomePage16staticMetaObjectE = external global %struct.QMetaObject, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"WelcomePage\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"pageLayout\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"welcomeHeaderWidget\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"contentAreaLayout\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"mainContentContainer\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"mainContentLayout\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"openFileSectionLayout\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"openFileSectionLabel\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"openFileSectionRecentList\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"captureSectionCard\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"sidebarContainer\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"sidebarLayout\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"tipsSectionCard\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"learnSectionCard\00", align 1
@_ZTV11QSpacerItem = external constant { [19 x ptr] }, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"Form\00", align 1
@.str.24 = private unnamed_addr constant [72 x i8] c"<html><head/><body><p>Open a file on your file system</p></body></html>\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"Open\00", align 1
@.str.26 = private unnamed_addr constant [95 x i8] c"List of recently opened files. Files that can no longer be found on disk are shown in italics.\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"<h2>Open</h2>\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"Capture files that have been opened previously\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Tips and announcements\00", align 1
@.str.30 = private unnamed_addr constant [102 x i8] c"Rotating tips, sponsor acknowledgements, and announcements for Wireshark and Stratoshark conferences.\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Learn\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"Links to documentation, wiki, and community resources.\00", align 1
@_ZN17QAbstractItemView16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN7QWidget16staticMetaObjectE = external global %struct.QMetaObject, align 8
@"_ZTIZN11WelcomePageC1EP7QWidgetE3$_2" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN11WelcomePageC1EP7QWidgetE3$_2" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN11WelcomePageC1EP7QWidgetE3$_2" = internal constant [33 x i8] c"ZN11WelcomePageC1EP7QWidgetE3$_2\00", align 1
@_ZN15MainApplication16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN14ClickableLabel16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN7QAction16staticMetaObjectE = external global %struct.QMetaObject, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @qt_version_tag_use], section "llvm.metadata"

@_ZN11WelcomePageC1EP7QWidget = unnamed_addr alias void (ptr, ptr), ptr @_ZN11WelcomePageC2EP7QWidget
@_ZN11WelcomePageD1Ev = unnamed_addr alias void (ptr), ptr @_ZN11WelcomePageD2Ev

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11WelcomePageC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(80) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %i.d = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %"class.std::function", align 8     ; 11 uses
  %3 = alloca %"class.QMetaObject::Connection", align 8 ; 4 uses
  %i.e = alloca { i64, i64 }, align 8             ; 5 uses
  %i.f = alloca { i64, i64 }, align 8             ; 5 uses
  %i.g = alloca { i64, i64 }, align 8             ; 5 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QString, align 8             ; 9 uses
  %6 = alloca %class.QString, align 8             ; 9 uses
  %7 = alloca %class.QString, align 8             ; 9 uses
  %8 = alloca %class.QString, align 8             ; 9 uses
  %9 = alloca %class.QString, align 8             ; 9 uses
  %10 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %11 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %12 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %13 = alloca %class.QString, align 8            ; 11 uses
  %14 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  tail call void @_ZN6QFrameC2EP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef %1, i32 0)
  store ptr getelementptr inbounds nuw inrange(-16, 424) (i8, ptr @_ZTV11WelcomePage, i64 16), ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV11WelcomePage, i64 456), ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %0, i64 40         ; 15 uses
  %i.j = invoke noalias noundef dereferenceable_or_null(112) ptr @_Znwm(i64 noundef 112) #13
          to label %bb.b unwind label %bb.ag

bb.b:                                             ; preds = %bb.a
  store ptr %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %i.k, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN11WelcomePage16staticMetaObjectE, ptr noundef nonnull @.str, ptr noundef null, i32 noundef -1)
          to label %_ZN11WelcomePage2trEPKcS1_i.exit unwind label %bb.ag

_ZN11WelcomePage2trEPKcS1_i.exit:                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr null, ptr %i.l, align 8
  %i.m = load ptr, ptr %i.i, align 8
  invoke void @_ZN14Ui_WelcomePage7setupUiEP7QWidget(ptr noundef align 8 dereferenceable_or_null(112) %i.m, ptr noundef %0)
          to label %bb.c unwind label %bb.ah

bb.c:                                             ; preds = %_ZN11WelcomePage2trEPKcS1_i.exit
  invoke void @_ZN7QWidget18setContentsMarginsEiiii(ptr noundef align 8 dereferenceable_or_null(40) %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
          to label %bb.d unwind label %bb.ah

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN11WelcomePage16staticMetaObjectE, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef -1)
          to label %_ZN11WelcomePage2trEPKcS1_i.exit51 unwind label %bb.ai

_ZN11WelcomePage2trEPKcS1_i.exit51:               ; preds = %bb.d
  invoke void @_ZN7QWidget17setAccessibleNameERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.e unwind label %bb.aj

bb.e:                                             ; preds = %_ZN11WelcomePage2trEPKcS1_i.exit51
  %i.n = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.e
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.o, 1
  br i1 %.not.i.i, label %bb.f, label %_ZN7QStringD2Ev.exit

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.p = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.p, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.e, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN11WelcomePage16staticMetaObjectE, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef -1)
          to label %_ZN11WelcomePage2trEPKcS1_i.exit52 unwind label %bb.al

_ZN11WelcomePage2trEPKcS1_i.exit52:               ; preds = %_ZN7QStringD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  invoke void @_ZN16QCoreApplication15applicationNameEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7)
          to label %bb.g unwind label %bb.am

bb.g:                                             ; preds = %_ZN11WelcomePage2trEPKcS1_i.exit52
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, ptr noundef nonnull align 8 dereferenceable_or_null(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 0, i16 32)
          to label %bb.h unwind label %bb.an

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7QWidget24setAccessibleDescriptionERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.i unwind label %bb.ao

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i53, label %_ZN7QStringD2Ev.exit56, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54:    ; preds = %bb.i
  %i.r = atomicrmw sub ptr %i.q, i32 1 acq_rel, align 4
  %.not.i.i55 = icmp eq i32 %i.r, 1
  br i1 %.not.i.i55, label %bb.j, label %_ZN7QStringD2Ev.exit56

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54
  %i.s = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.s, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit56

_ZN7QStringD2Ev.exit56:                           ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i54, %bb.j
  %i.t = load ptr, ptr %7, align 8                ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i57, label %_ZN7QStringD2Ev.exit60, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58:    ; preds = %_ZN7QStringD2Ev.exit56
  %i.u = atomicrmw sub ptr %i.t, i32 1 acq_rel, align 4
  %.not.i.i59 = icmp eq i32 %i.u, 1
  br i1 %.not.i.i59, label %bb.k, label %_ZN7QStringD2Ev.exit60

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58
  %i.v = load ptr, ptr %7, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.v, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit60

_ZN7QStringD2Ev.exit60:                           ; preds = %_ZN7QStringD2Ev.exit56, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i58, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.w = load ptr, ptr %6, align 8                ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i61, label %_ZN7QStringD2Ev.exit64, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62:    ; preds = %_ZN7QStringD2Ev.exit60
  %i.x = atomicrmw sub ptr %i.w, i32 1 acq_rel, align 4
  %.not.i.i63 = icmp eq i32 %i.x, 1
  br i1 %.not.i.i63, label %bb.l, label %_ZN7QStringD2Ev.exit64

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62
  %i.y = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.y, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit64

_ZN7QStringD2Ev.exit64:                           ; preds = %_ZN7QStringD2Ev.exit60, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i62, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef align 8 dereferenceable_or_null(40) %i.ab, i1 noundef zeroext false)
          to label %bb.m unwind label %bb.ah

bb.m:                                             ; preds = %_ZN7QStringD2Ev.exit64
  invoke void @_ZN11WelcomePage17updateStyleSheetsEv(ptr noundef align 8 dereferenceable_or_null(80) %0)
          to label %bb.n unwind label %bb.ah

bb.n:                                             ; preds = %bb.m
  %i.af = invoke noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #13
          to label %bb.o unwind label %bb.as      ; 3 uses

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN27RecentCaptureFilesListModelC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %i.af, ptr noundef %0)
          to label %bb.p unwind label %bb.at

bb.p:                                             ; preds = %bb.o
  %i.ag = invoke noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #13
          to label %bb.q unwind label %bb.au      ; 5 uses

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN35RecentCaptureFilesReverseProxyModelC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %i.ag, ptr noundef %0)
          to label %bb.r unwind label %bb.av

bb.r:                                             ; preds = %bb.q
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 392
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef align 8 dereferenceable_or_null(16) %i.ag, ptr noundef %i.af)
          to label %bb.s unwind label %bb.au

bb.s:                                             ; preds = %bb.r
  %i.ak = load ptr, ptr %i.i, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef align 8 dereferenceable_or_null(40) %i.am, i1 noundef zeroext true)
          to label %bb.t unwind label %bb.au

bb.t:                                             ; preds = %bb.s
  %i.aq = load ptr, ptr %i.i, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 56
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 456
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr noundef align 8 dereferenceable_or_null(40) %i.as, ptr noundef %i.ag)
          to label %bb.u unwind label %bb.au

bb.u:                                             ; preds = %bb.t
  %i.aw = load ptr, ptr %i.i, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 56     ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #13
          to label %bb.v unwind label %bb.au      ; 3 uses

bb.v:                                             ; preds = %bb.u
  %i.ba = load ptr, ptr %i.ax, align 8
  invoke void @_ZN26RecentCaptureFilesDelegateC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %i.az, ptr noundef %i.ba)
          to label %bb.w unwind label %bb.aw

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN17QAbstractItemView15setItemDelegateEP21QAbstractItemDelegate(ptr noundef align 8 dereferenceable_or_null(40) %i.ay, ptr noundef %i.az)
          to label %bb.x unwind label %bb.au

bb.x:                                             ; preds = %bb.w
  %i.bb = load ptr, ptr %i.i, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void @_ZN7QWidget20setContextMenuPolicyEN2Qt17ContextMenuPolicyE(ptr noundef align 8 dereferenceable_or_null(40) %i.bd, i32 noundef 3)
          to label %bb.y unwind label %bb.au

bb.y:                                             ; preds = %bb.x
  %i.be = load ptr, ptr %i.i, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %8, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN11WelcomePage16staticMetaObjectE, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef -1)
          to label %_ZN11WelcomePage2trEPKcS1_i.exit65 unwind label %bb.ax

_ZN11WelcomePage2trEPKcS1_i.exit65:               ; preds = %bb.y
  invoke void @_ZN7QWidget17setAccessibleNameERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.z unwind label %bb.ay

bb.z:                                             ; preds = %_ZN11WelcomePage2trEPKcS1_i.exit65
  %i.bh = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i66, label %_ZN7QStringD2Ev.exit69, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67:    ; preds = %bb.z
  %i.bi = atomicrmw sub ptr %i.bh, i32 1 acq_rel, align 4
  %.not.i.i68 = icmp eq i32 %i.bi, 1
  br i1 %.not.i.i68, label %bb.aa, label %_ZN7QStringD2Ev.exit69

bb.aa:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67
  %i.bj = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bj, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit69

_ZN7QStringD2Ev.exit69:                           ; preds = %bb.z, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.bk = load ptr, ptr %i.i, align 8
  %i.bl = getelementptr i8, ptr %i.bk, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %9, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN11WelcomePage16staticMetaObjectE, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef -1)
          to label %_ZN11WelcomePage2trEPKcS1_i.exit70 unwind label %bb.ba

_ZN11WelcomePage2trEPKcS1_i.exit70:               ; preds = %_ZN7QStringD2Ev.exit69
  invoke void @_ZN7QWidget24setAccessibleDescriptionERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.ab unwind label %bb.bb

bb.ab:                                            ; preds = %_ZN11WelcomePage2trEPKcS1_i.exit70
  %i.bn = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i71, label %_ZN7QStringD2Ev.exit74, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i72

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i72:    ; preds = %bb.ab
  %i.bo = atomicrmw sub ptr %i.bn, i32 1 acq_rel, align 4
  %.not.i.i73 = icmp eq i32 %i.bo, 1
  br i1 %.not.i.i73, label %bb.ac, label %_ZN7QStringD2Ev.exit74

bb.ac:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i72
  %i.bp = load ptr, ptr %9, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bp, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit74

_ZN7QStringD2Ev.exit74:                           ; preds = %bb.ab, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i72, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.bq = load ptr, ptr %i.i, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 56
  %i.bs = load ptr, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 ptrtoint (ptr @_ZN17QAbstractItemView9activatedERK11QModelIndex to i64), ptr %i.g, align 8, !noalias !6
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !noalias !6
  %i.bt = invoke noalias noundef dereferenceable_or_null(24) ptr @_Znwm(i64 noundef 24) #13
          to label %.noexc unwind label %bb.au    ; 4 uses

.noexc:                                           ; preds = %_ZN7QStringD2Ev.exit74
  store i32 1, ptr %i.bt, align 4, !noalias !6
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr @"_ZN9QtPrivate18QFunctorSlotObjectIZN11WelcomePageC1EP7QWidgetE3$_0Li0ENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb", ptr %i.bu, align 8, !noalias !6
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %0, ptr %i.bv, align 8, !noalias !6
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %10, ptr noundef %i.bs, ptr noundef nonnull %i.g, ptr noundef %0, ptr noundef null, ptr noundef %i.bt, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN17QAbstractItemView16staticMetaObjectE)
          to label %bb.ad unwind label %bb.au

bb.ad:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #14
  %i.bw = load ptr, ptr %i.i, align 8
  %i.bx = getelementptr i8, ptr %i.bw, i64 56
  %i.by = load ptr, ptr %i.bx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 ptrtoint (ptr @_ZN7QWidget26customContextMenuRequestedERK6QPoint to i64), ptr %i.e, align 8, !noalias !9
  %.fca.1.gep12.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.fca.1.gep12.i, align 8, !noalias !9
  store i64 ptrtoint (ptr @_ZN11WelcomePage27showCaptureFilesContextMenuE6QPoint to i64), ptr %i.f, align 8, !noalias !9
  %.fca.1.gep.i76 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %.fca.1.gep.i76, align 8, !noalias !9
  %i.bz = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #13
          to label %.noexc77 unwind label %bb.au  ; 5 uses

.noexc77:                                         ; preds = %bb.ad
  store i32 1, ptr %i.bz, align 4, !noalias !9
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM11WelcomePageFv6QPointENS_4ListIJRKS2_EEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.ca, align 8, !noalias !9
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 ptrtoint (ptr @_ZN11WelcomePage27showCaptureFilesContextMenuE6QPoint to i64), ptr %i.cb, align 8, !noalias !9
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !noalias !9
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %11, ptr noundef %i.by, ptr noundef nonnull %i.e, ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef %i.bz, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN7QWidget16staticMetaObjectE)
          to label %bb.ae unwind label %bb.au

bb.ae:                                            ; preds = %.noexc77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %11) #14
  %i.cc = invoke noundef ptr @_ZN14WorkspaceState8instanceEv()
          to label %bb.af unwind label %bb.au

bb.af:                                            ; preds = %bb.ae
  %i.cd = invoke noundef align 8 dereferenceable(24) ptr @_ZNK14WorkspaceState18recentCaptureFilesEv(ptr noundef align 8 dereferenceable_or_null(40) %i.cc)
          to label %.invoke164 unwind label %bb.au

.invoke164:                                       ; preds = %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = icmp sgt i64 %i.cf, 0                   ; 2 uses
  %i.ch = load ptr, ptr %i.i, align 8
  %i.ci = getelementptr i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 104
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr noundef align 8 dereferenceable_or_null(40) %i.cj, i1 noundef zeroext %i.cg)
          to label %.invoke unwind label %bb.au

bb.ag:                                            ; preds = %bb.b, %bb.a
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ah:                                            ; preds = %bb.m, %_ZN7QStringD2Ev.exit64, %bb.c, %_ZN11WelcomePage2trEPKcS1_i.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.d
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit82

bb.aj:                                            ; preds = %_ZN11WelcomePage2trEPKcS1_i.exit51
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cr = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i79, label %_ZN7QStringD2Ev.exit82, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i80

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i80:    ; preds = %bb.aj
  %i.cs = atomicrmw sub ptr %i.cr, i32 1 acq_rel, align 4
  %.not.i.i81 = icmp eq i32 %i.cs, 1
  br i1 %.not.i.i81, label %bb.ak, label %_ZN7QStringD2Ev.exit82

bb.ak:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i80
  %i.ct = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ct, i64 noundef 2, i64 noundef 8) #14
  br label %_ZN7QStringD2Ev.exit82

_ZN7QStringD2Ev.exit82:                           ; preds = %bb.ak, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i80, %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.cp, %bb.ai ], [ %i.cq, %bb.aj ], [ %i.cq, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i80 ], [ %i.cq, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %.body

bb.al:                                            ; preds = %_ZN7QStringD2Ev.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit94

bb.am:                                            ; preds = %_ZN11WelcomePage2trEPKcS1_i.exit52
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit90

bb.an:                                            ; preds = %bb.g
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit86

bb.ao:                                            ; preds = %bb.h
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cy = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i83 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i83, label %_ZN7QStringD2Ev.exit86, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i84
end_hunk_0
