Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/imageviewer?download=true
inline.NumInlined: 120
inline.NumDeleted: 62
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".section .qtversion, \22aG\22, @progbits, qt_version_tag, comdat"
    ".align 8"
    ".quad qt_version_tag@GOT"
    ".long ((5<<16)|(15<<8)|(13))"
    ".align 8"
    ".previous"

%struct.QMetaObject = type { %struct.anon }
%struct.anon = type { %"struct.QMetaObject::SuperData", ptr, ptr, ptr, ptr, ptr }
%"struct.QMetaObject::SuperData" = type { ptr }
%class.QSize = type { i32, i32 }
%class.QString = type { ptr }
%class.QIcon = type { ptr }
%class.QKeySequence = type { ptr }
%"class.QMetaObject::Connection" = type { ptr }
%class.QImage = type { %class.QPaintDevice, ptr }
%class.QPaintDevice = type { ptr, i16, ptr }
%class.QPixmap = type { %class.QPaintDevice, %class.QExplicitlySharedDataPointer }
%class.QExplicitlySharedDataPointer = type { ptr }

$_ZN7QStringD2Ev = comdat any

$_ZN9QtPrivate11QSlotObjectIM11ImageViewerFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb = comdat any

$_ZN9QtPrivate11QSlotObjectIM7QWidgetFbvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb = comdat any

$_ZN9QtPrivate17QStaticSlotObjectIPFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb = comdat any

@_ZTV11ImageViewer = external constant { [55 x ptr], [10 x ptr] }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"About Image Viewer\00", align 1
@.str.2 = private unnamed_addr constant [673 x i8] c"<p>The <b>Image Viewer</b> example shows how to combine QLabel and QScrollArea to display an image. QLabel is typically used for displaying a text, but it can also display an image. QScrollArea provides a scrolling view around another widget. If the child widget exceeds the size of the frame, QScrollArea automatically provides scroll bars. </p><p>The example demonstrates how QLabel's ability to scale its contents (QLabel::scaledContents), and QScrollArea's ability to automatically resize its contents (QScrollArea::widgetResizable), can be used to implement zooming and scaling features. </p><p>In addition the example shows how to use QPainter to print an image.</p>\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"&Print...\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Ctrl+P\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"E&xit\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Ctrl+Q\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Zoom &In (25%)\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Ctrl++\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Zoom &Out (25%)\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Ctrl+-\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"&Normal Size\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Ctrl+S\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"&Fit to Window\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Ctrl+F\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"&About\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"About &Qt\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"&View\00", align 1
@_ZN11ImageViewer16staticMetaObjectE = external global %struct.QMetaObject, align 8
@"_ZZZN11ImageViewerC1EvENK3$_0clEvE15qstring_literal" = internal constant { { { { { i32 } } }, i32, i8, i8, i8, i8, i64 }, [18 x i16] } { { { { { i32 } } }, i32, i8, i8, i8, i8, i64 } { { { { i32 } } } { { { i32 } } { { i32 } { i32 -1 } } }, i32 17, i8 0, i8 0, i8 0, i8 0, i64 24 }, [18 x i16] [i16 58, i16 47, i16 105, i16 109, i16 97, i16 103, i16 101, i16 115, i16 47, i16 105, i16 99, i16 111, i16 110, i16 46, i16 112, i16 110, i16 103, i16 0] }, align 8
@_ZN16QCoreApplication4selfE = external local_unnamed_addr global ptr, align 8
@_ZN7QAction16staticMetaObjectE = external global %struct.QMetaObject, align 8

@_ZN11ImageViewerC1Ev = unnamed_addr alias void (ptr), ptr @_ZN11ImageViewerC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN11ImageViewerC2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QSize, align 4               ; 5 uses
  %2 = alloca %class.QString, align 8             ; 8 uses
  %3 = alloca %class.QIcon, align 8               ; 7 uses
  %4 = alloca %class.QString, align 8             ; 8 uses
  tail call void @_ZN11QMainWindowC2EP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef null, i32 0)
  store ptr getelementptr inbounds nuw inrange(-16, 424) (i8, ptr @_ZTV11ImageViewer, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV11ImageViewer, i64 456), ptr %i.a, align 8, !tbaa !9
  %i.b = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #10
          to label %bb.b unwind label %bb.q       ; 4 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6QLabelC1EP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef null, i32 0)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !28
  invoke void @_ZN7QWidget17setBackgroundRoleEN8QPalette9ColorRoleE(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i32 noundef 9)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  invoke void @_ZN7QWidget13setSizePolicyE11QSizePolicy(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i32 14483456)
          to label %_ZN7QWidget13setSizePolicyEN11QSizePolicy6PolicyES1_.exit unwind label %bb.q

_ZN7QWidget13setSizePolicyEN11QSizePolicy6PolicyES1_.exit: ; preds = %bb.d
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !28
  invoke void @_ZN6QLabel17setScaledContentsEb(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %_ZN7QWidget13setSizePolicyEN11QSizePolicy6PolicyES1_.exit
  %i.f = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #10
          to label %bb.f unwind label %bb.q       ; 4 uses

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN11QScrollAreaC1EP7QWidget(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef null)
          to label %bb.g unwind label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !29
  invoke void @_ZN7QWidget17setBackgroundRoleEN8QPalette9ColorRoleE(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i32 noundef 4)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !28
  invoke void @_ZN11QScrollArea9setWidgetEP7QWidget(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef %i.i)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !29
  invoke void @_ZN11QMainWindow16setCentralWidgetEP7QWidget(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.j)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11ImageViewer13createActionsEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ImageViewer11createMenusEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str, ptr noundef null, i32 noundef -1)
          to label %_ZN11ImageViewer2trEPKcS1_i.exit unwind label %bb.t

_ZN11ImageViewer2trEPKcS1_i.exit:                 ; preds = %bb.l
  invoke void @_ZN7QWidget14setWindowTitleERK7QString(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !32     ; 3 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 4
  switch i32 %i.l, label %_ZN9QtPrivate8RefCount5derefEv.exit.i [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
    i32 -1, label %_ZN7QStringD2Ev.exit
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.m
  %5 = atomicrmw sub ptr %i.k, i32 1 seq_cst, align 4
  %.not.i = icmp eq i32 %5, 1
  br i1 %.not.i, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, label %_ZN7QStringD2Ev.exit

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i:    ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, %bb.m
  %i.m = phi ptr [ %.pre.i, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i ], [ %i.k, %bb.m ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.m, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.m, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store i32 800, ptr %1, align 4, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 600, ptr %i.n, align 4, !tbaa !58
  invoke void @_ZN7QWidget6resizeERK5QSize(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %_ZN7QStringD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr @"_ZZZN11ImageViewerC1EvENK3$_0clEvE15qstring_literal", ptr %4, align 8, !tbaa !32, !alias.scope !59
  invoke void @_ZN5QIconC1ERK7QString(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN7QWidget13setWindowIconERK5QIcon(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  call void @_ZN5QIconD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #11
  %i.o = load ptr, ptr %4, align 8, !tbaa !32     ; 3 uses
  %i.p = load atomic i32, ptr %i.o monotonic, align 4
  switch i32 %i.p, label %_ZN9QtPrivate8RefCount5derefEv.exit.i10 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i9
    i32 -1, label %_ZN7QStringD2Ev.exit14
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i10:          ; preds = %bb.p
  %6 = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %.not.i11 = icmp eq i32 %6, 1
  br i1 %.not.i11, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i12, label %_ZN7QStringD2Ev.exit14

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i12: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i10
  %.pre.i13 = load ptr, ptr %4, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i9

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i9:   ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i12, %bb.p
  %i.q = phi ptr [ %.pre.i13, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i12 ], [ %i.o, %bb.p ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.q, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit14

_ZN7QStringD2Ev.exit14:                           ; preds = %bb.p, %_ZN9QtPrivate8RefCount5derefEv.exit.i10, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void

bb.q:                                             ; preds = %_ZN7QStringD2Ev.exit, %bb.d, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %_ZN7QWidget13setSizePolicyEN11QSizePolicy6PolicyES1_.exit, %bb.c, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.r:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #12
  br label %bb.z

bb.s:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 48) #12
  br label %bb.z

bb.t:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.v, %bb.u ], [ %i.u, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.z

bb.w:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QIconD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn6 = phi { ptr, i32 } [ %i.x, %bb.x ], [ %i.w, %bb.w ]
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v, %bb.s, %bb.r, %bb.q
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %bb.y ], [ %i.r, %bb.q ], [ %.pn, %bb.v ], [ %i.t, %bb.s ], [ %i.s, %bb.r ]
  call void @_ZN11QMainWindowD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #11
  resume { ptr, i32 } %.pn6.pn
}

declare void @_ZN11QMainWindowC2EP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32) unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6QLabelC1EP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN7QWidget17setBackgroundRoleEN8QPalette9ColorRoleE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

declare void @_ZN6QLabel17setScaledContentsEb(ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN11QScrollAreaC1EP7QWidget(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #1

declare void @_ZN11QScrollArea9setWidgetEP7QWidget(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare void @_ZN11QMainWindow16setCentralWidgetEP7QWidget(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN11ImageViewer13createActionsEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %i.d = alloca { i64, i64 }, align 8             ; 5 uses
  %i.e = alloca { i64, i64 }, align 8             ; 5 uses
  %i.f = alloca { i64, i64 }, align 8             ; 5 uses
  %i.g = alloca { i64, i64 }, align 8             ; 5 uses
  %i.h = alloca { i64, i64 }, align 8             ; 5 uses
  %i.i = alloca { i64, i64 }, align 8             ; 5 uses
  %i.j = alloca { i64, i64 }, align 8             ; 5 uses
  %i.k = alloca { i64, i64 }, align 8             ; 5 uses
  %i.l = alloca { i64, i64 }, align 8             ; 5 uses
  %i.m = alloca { i64, i64 }, align 8             ; 5 uses
  %i.n = alloca { i64, i64 }, align 8             ; 5 uses
  %i.o = alloca { i64, i64 }, align 8             ; 5 uses
  %1 = alloca %class.QString, align 8             ; 8 uses
  %2 = alloca %class.QKeySequence, align 8        ; 7 uses
  %3 = alloca %class.QString, align 8             ; 8 uses
  %4 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %5 = alloca %class.QString, align 8             ; 8 uses
  %6 = alloca %class.QKeySequence, align 8        ; 7 uses
  %7 = alloca %class.QString, align 8             ; 8 uses
  %8 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %9 = alloca %class.QString, align 8             ; 8 uses
  %10 = alloca %class.QKeySequence, align 8       ; 7 uses
  %11 = alloca %class.QString, align 8            ; 8 uses
  %12 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %13 = alloca %class.QString, align 8            ; 8 uses
  %14 = alloca %class.QKeySequence, align 8       ; 7 uses
  %15 = alloca %class.QString, align 8            ; 8 uses
  %16 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %17 = alloca %class.QString, align 8            ; 8 uses
  %18 = alloca %class.QKeySequence, align 8       ; 7 uses
  %19 = alloca %class.QString, align 8            ; 8 uses
  %20 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %21 = alloca %class.QString, align 8            ; 8 uses
  %22 = alloca %class.QKeySequence, align 8       ; 7 uses
  %23 = alloca %class.QString, align 8            ; 8 uses
  %24 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %25 = alloca %class.QString, align 8            ; 8 uses
  %26 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %27 = alloca %class.QString, align 8            ; 8 uses
  %28 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef -1)
          to label %_ZN11ImageViewer2trEPKcS1_i.exit unwind label %bb.v

_ZN11ImageViewer2trEPKcS1_i.exit:                 ; preds = %bb.a
  invoke void @_ZN7QActionC1ERK7QStringP7QObject(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
          to label %bb.b unwind label %bb.w

bb.b:                                             ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !76
  %i.r = load ptr, ptr %1, align 8, !tbaa !32     ; 3 uses
  %i.s = load atomic i32, ptr %i.r monotonic, align 4
  switch i32 %i.s, label %_ZN9QtPrivate8RefCount5derefEv.exit.i [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
    i32 -1, label %_ZN7QStringD2Ev.exit
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.b
  %29 = atomicrmw sub ptr %i.r, i32 1 seq_cst, align 4
  %.not.i = icmp eq i32 %29, 1
  br i1 %.not.i, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, label %_ZN7QStringD2Ev.exit

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i:    ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, %bb.b
  %i.t = phi ptr [ %.pre.i, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i ], [ %i.r, %bb.b ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.t, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.b, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef -1)
  invoke void @_ZN12QKeySequenceC1ERK7QStringNS_14SequenceFormatE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %bb.c unwind label %bb.y

bb.c:                                             ; preds = %_ZN7QStringD2Ev.exit
  invoke void @_ZN7QAction11setShortcutERK12QKeySequence(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.z

bb.d:                                             ; preds = %bb.c
  call void @_ZN12QKeySequenceD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #11
  %i.v = load ptr, ptr %3, align 8, !tbaa !32     ; 3 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 4
  switch i32 %i.w, label %_ZN9QtPrivate8RefCount5derefEv.exit.i94 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i93
    i32 -1, label %_ZN7QStringD2Ev.exit98
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i94:          ; preds = %bb.d
  %30 = atomicrmw sub ptr %i.v, i32 1 seq_cst, align 4
  %.not.i95 = icmp eq i32 %30, 1
  br i1 %.not.i95, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i96, label %_ZN7QStringD2Ev.exit98

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i96: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i94
  %.pre.i97 = load ptr, ptr %3, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i93

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i93:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i96, %bb.d
  %i.x = phi ptr [ %.pre.i97, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i96 ], [ %i.v, %bb.d ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.x, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit98

_ZN7QStringD2Ev.exit98:                           ; preds = %bb.d, %_ZN9QtPrivate8RefCount5derefEv.exit.i94, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !76
  call void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i1 noundef zeroext false)
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 ptrtoint (ptr @_ZN7QAction9triggeredEb to i64), ptr %i.n, align 8, !tbaa !33, !noalias !77
  %.fca.1.gep14.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 0, ptr %.fca.1.gep14.i, align 8, !tbaa !33, !noalias !77
  store i64 ptrtoint (ptr @_ZN11ImageViewer5printEv to i64), ptr %i.o, align 8, !tbaa !33, !noalias !77
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !tbaa !33, !noalias !77
  %i.aa = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #10, !noalias !77 ; 5 uses
  store i32 1, ptr %i.aa, align 4, !tbaa !78, !noalias !77
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM11ImageViewerFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.ab, align 8, !tbaa !79, !noalias !77
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 ptrtoint (ptr @_ZN11ImageViewer5printEv to i64), ptr %i.ac, align 8, !tbaa !41, !noalias !77
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !tbaa !41, !noalias !77
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %4, ptr noundef %i.z, ptr noundef nonnull %i.n, ptr noundef nonnull %0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.aa, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN7QAction16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #11
  %i.ad = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef -1)
          to label %_ZN11ImageViewer2trEPKcS1_i.exit99 unwind label %bb.ab

_ZN11ImageViewer2trEPKcS1_i.exit99:               ; preds = %_ZN7QStringD2Ev.exit98
  invoke void @_ZN7QActionC1ERK7QStringP7QObject(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.ac

bb.e:                                             ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit99
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !80
  %i.af = load ptr, ptr %5, align 8, !tbaa !32    ; 3 uses
  %i.ag = load atomic i32, ptr %i.af monotonic, align 4
  switch i32 %i.ag, label %_ZN9QtPrivate8RefCount5derefEv.exit.i101 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i100
    i32 -1, label %_ZN7QStringD2Ev.exit105
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i101:         ; preds = %bb.e
  %31 = atomicrmw sub ptr %i.af, i32 1 seq_cst, align 4
  %.not.i102 = icmp eq i32 %31, 1
  br i1 %.not.i102, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i103, label %_ZN7QStringD2Ev.exit105

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i103: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i101
  %.pre.i104 = load ptr, ptr %5, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i100

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i100: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i103, %bb.e
  %i.ah = phi ptr [ %.pre.i104, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i103 ], [ %i.af, %bb.e ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.ah, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit105

_ZN7QStringD2Ev.exit105:                          ; preds = %bb.e, %_ZN9QtPrivate8RefCount5derefEv.exit.i101, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef -1)
  invoke void @_ZN12QKeySequenceC1ERK7QStringNS_14SequenceFormatE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0)
          to label %bb.f unwind label %bb.ae

bb.f:                                             ; preds = %_ZN7QStringD2Ev.exit105
  invoke void @_ZN7QAction11setShortcutERK12QKeySequence(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.g unwind label %bb.af

bb.g:                                             ; preds = %bb.f
  call void @_ZN12QKeySequenceD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #11
  %i.aj = load ptr, ptr %7, align 8, !tbaa !32    ; 3 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4
  switch i32 %i.ak, label %_ZN9QtPrivate8RefCount5derefEv.exit.i107 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i106
    i32 -1, label %_ZN7QStringD2Ev.exit111
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i107:         ; preds = %bb.g
  %32 = atomicrmw sub ptr %i.aj, i32 1 seq_cst, align 4
  %.not.i108 = icmp eq i32 %32, 1
  br i1 %.not.i108, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i109, label %_ZN7QStringD2Ev.exit111

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i109: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i107
  %.pre.i110 = load ptr, ptr %7, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i106

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i106: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i109, %bb.g
  %i.al = phi ptr [ %.pre.i110, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i109 ], [ %i.aj, %bb.g ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.al, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit111

_ZN7QStringD2Ev.exit111:                          ; preds = %bb.g, %_ZN9QtPrivate8RefCount5derefEv.exit.i107, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 ptrtoint (ptr @_ZN7QAction9triggeredEb to i64), ptr %i.l, align 8, !tbaa !33, !noalias !81
  %.fca.1.gep12.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 0, ptr %.fca.1.gep12.i, align 8, !tbaa !33, !noalias !81
  store i64 ptrtoint (ptr @_ZN7QWidget5closeEv to i64), ptr %i.m, align 8, !tbaa !33, !noalias !81
  %.fca.1.gep.i113 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %.fca.1.gep.i113, align 8, !tbaa !33, !noalias !81
  %i.an = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #10, !noalias !81 ; 5 uses
  store i32 1, ptr %i.an, align 4, !tbaa !78, !noalias !81
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM7QWidgetFbvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.ao, align 8, !tbaa !79, !noalias !81
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 ptrtoint (ptr @_ZN7QWidget5closeEv to i64), ptr %i.ap, align 8, !tbaa !43, !noalias !81
  %.repack7.i.i114 = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 0, ptr %.repack7.i.i114, align 8, !tbaa !43, !noalias !81
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %8, ptr noundef %i.am, ptr noundef nonnull %i.l, ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.an, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN7QAction16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #11
  %i.aq = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef -1)
          to label %_ZN11ImageViewer2trEPKcS1_i.exit115 unwind label %bb.ah

_ZN11ImageViewer2trEPKcS1_i.exit115:              ; preds = %_ZN7QStringD2Ev.exit111
  invoke void @_ZN7QActionC1ERK7QStringP7QObject(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %0)
          to label %bb.h unwind label %bb.ai

bb.h:                                             ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit115
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !44
  %i.as = load ptr, ptr %9, align 8, !tbaa !32    ; 3 uses
  %i.at = load atomic i32, ptr %i.as monotonic, align 4
  switch i32 %i.at, label %_ZN9QtPrivate8RefCount5derefEv.exit.i117 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i116
    i32 -1, label %_ZN7QStringD2Ev.exit121
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i117:         ; preds = %bb.h
  %33 = atomicrmw sub ptr %i.as, i32 1 seq_cst, align 4
  %.not.i118 = icmp eq i32 %33, 1
  br i1 %.not.i118, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i119, label %_ZN7QStringD2Ev.exit121

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i119: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i117
  %.pre.i120 = load ptr, ptr %9, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i116

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i116: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i119, %bb.h
  %i.au = phi ptr [ %.pre.i120, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i119 ], [ %i.as, %bb.h ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.au, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit121

_ZN7QStringD2Ev.exit121:                          ; preds = %bb.h, %_ZN9QtPrivate8RefCount5derefEv.exit.i117, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef -1)
  invoke void @_ZN12QKeySequenceC1ERK7QStringNS_14SequenceFormatE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0)
          to label %bb.i unwind label %bb.ak

bb.i:                                             ; preds = %_ZN7QStringD2Ev.exit121
  invoke void @_ZN7QAction11setShortcutERK12QKeySequence(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.j unwind label %bb.al

bb.j:                                             ; preds = %bb.i
  call void @_ZN12QKeySequenceD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #11
  %i.aw = load ptr, ptr %11, align 8, !tbaa !32   ; 3 uses
  %i.ax = load atomic i32, ptr %i.aw monotonic, align 4
  switch i32 %i.ax, label %_ZN9QtPrivate8RefCount5derefEv.exit.i123 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i122
    i32 -1, label %_ZN7QStringD2Ev.exit127
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i123:         ; preds = %bb.j
  %34 = atomicrmw sub ptr %i.aw, i32 1 seq_cst, align 4
  %.not.i124 = icmp eq i32 %34, 1
  br i1 %.not.i124, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i125, label %_ZN7QStringD2Ev.exit127

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i125: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i123
  %.pre.i126 = load ptr, ptr %11, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i122

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i122: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i125, %bb.j
  %i.ay = phi ptr [ %.pre.i126, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i125 ], [ %i.aw, %bb.j ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.ay, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit127

_ZN7QStringD2Ev.exit127:                          ; preds = %bb.j, %_ZN9QtPrivate8RefCount5derefEv.exit.i123, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %i.az = load ptr, ptr %i.ar, align 8, !tbaa !44
  call void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i1 noundef zeroext false)
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 ptrtoint (ptr @_ZN7QAction9triggeredEb to i64), ptr %i.j, align 8, !tbaa !33, !noalias !82
  %.fca.1.gep14.i131 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %.fca.1.gep14.i131, align 8, !tbaa !33, !noalias !82
  store i64 ptrtoint (ptr @_ZN11ImageViewer6zoomInEv to i64), ptr %i.k, align 8, !tbaa !33, !noalias !82
  %.fca.1.gep.i132 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %.fca.1.gep.i132, align 8, !tbaa !33, !noalias !82
  %i.bb = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #10, !noalias !82 ; 5 uses
  store i32 1, ptr %i.bb, align 4, !tbaa !78, !noalias !82
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM11ImageViewerFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.bc, align 8, !tbaa !79, !noalias !82
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 ptrtoint (ptr @_ZN11ImageViewer6zoomInEv to i64), ptr %i.bd, align 8, !tbaa !41, !noalias !82
  %.repack7.i.i133 = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 0, ptr %.repack7.i.i133, align 8, !tbaa !41, !noalias !82
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %12, ptr noundef %i.ba, ptr noundef nonnull %i.j, ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.bb, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN7QAction16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #11
  %i.be = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef -1)
          to label %_ZN11ImageViewer2trEPKcS1_i.exit134 unwind label %bb.an

_ZN11ImageViewer2trEPKcS1_i.exit134:              ; preds = %_ZN7QStringD2Ev.exit127
  invoke void @_ZN7QActionC1ERK7QStringP7QObject(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %0)
          to label %bb.k unwind label %bb.ao

bb.k:                                             ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit134
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !45
  %i.bg = load ptr, ptr %13, align 8, !tbaa !32   ; 3 uses
  %i.bh = load atomic i32, ptr %i.bg monotonic, align 4
  switch i32 %i.bh, label %_ZN9QtPrivate8RefCount5derefEv.exit.i136 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i135
    i32 -1, label %_ZN7QStringD2Ev.exit140
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i136:         ; preds = %bb.k
  %35 = atomicrmw sub ptr %i.bg, i32 1 seq_cst, align 4
  %.not.i137 = icmp eq i32 %35, 1
  br i1 %.not.i137, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i138, label %_ZN7QStringD2Ev.exit140

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i138: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i136
  %.pre.i139 = load ptr, ptr %13, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i135

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i135: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i138, %bb.k
  %i.bi = phi ptr [ %.pre.i139, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i138 ], [ %i.bg, %bb.k ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.bi, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit140

_ZN7QStringD2Ev.exit140:                          ; preds = %bb.k, %_ZN9QtPrivate8RefCount5derefEv.exit.i136, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  call void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %15, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef -1)
  invoke void @_ZN12QKeySequenceC1ERK7QStringNS_14SequenceFormatE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 0)
          to label %bb.l unwind label %bb.aq

bb.l:                                             ; preds = %_ZN7QStringD2Ev.exit140
  invoke void @_ZN7QAction11setShortcutERK12QKeySequence(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.m unwind label %bb.ar

bb.m:                                             ; preds = %bb.l
  call void @_ZN12QKeySequenceD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #11
  %i.bk = load ptr, ptr %15, align 8, !tbaa !32   ; 3 uses
  %i.bl = load atomic i32, ptr %i.bk monotonic, align 4
  switch i32 %i.bl, label %_ZN9QtPrivate8RefCount5derefEv.exit.i142 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i141
    i32 -1, label %_ZN7QStringD2Ev.exit146
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i142:         ; preds = %bb.m
  %36 = atomicrmw sub ptr %i.bk, i32 1 seq_cst, align 4
  %.not.i143 = icmp eq i32 %36, 1
  br i1 %.not.i143, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i144, label %_ZN7QStringD2Ev.exit146

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i144: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i142
  %.pre.i145 = load ptr, ptr %15, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i141

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i141: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i144, %bb.m
  %i.bm = phi ptr [ %.pre.i145, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i144 ], [ %i.bk, %bb.m ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.bm, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit146

_ZN7QStringD2Ev.exit146:                          ; preds = %bb.m, %_ZN9QtPrivate8RefCount5derefEv.exit.i142, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !45
  call void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i1 noundef zeroext false)
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 ptrtoint (ptr @_ZN7QAction9triggeredEb to i64), ptr %i.h, align 8, !tbaa !33, !noalias !83
  %.fca.1.gep14.i150 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %.fca.1.gep14.i150, align 8, !tbaa !33, !noalias !83
  store i64 ptrtoint (ptr @_ZN11ImageViewer7zoomOutEv to i64), ptr %i.i, align 8, !tbaa !33, !noalias !83
  %.fca.1.gep.i151 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %.fca.1.gep.i151, align 8, !tbaa !33, !noalias !83
  %i.bp = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #10, !noalias !83 ; 5 uses
  store i32 1, ptr %i.bp, align 4, !tbaa !78, !noalias !83
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM11ImageViewerFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.bq, align 8, !tbaa !79, !noalias !83
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 ptrtoint (ptr @_ZN11ImageViewer7zoomOutEv to i64), ptr %i.br, align 8, !tbaa !41, !noalias !83
  %.repack7.i.i152 = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i64 0, ptr %.repack7.i.i152, align 8, !tbaa !41, !noalias !83
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %16, ptr noundef %i.bo, ptr noundef nonnull %i.h, ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.bp, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN7QAction16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #11
  %i.bs = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %17, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef -1)
          to label %_ZN11ImageViewer2trEPKcS1_i.exit153 unwind label %bb.at

_ZN11ImageViewer2trEPKcS1_i.exit153:              ; preds = %_ZN7QStringD2Ev.exit146
  invoke void @_ZN7QActionC1ERK7QStringP7QObject(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull %0)
          to label %bb.n unwind label %bb.au

bb.n:                                             ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit153
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !46
  %i.bu = load ptr, ptr %17, align 8, !tbaa !32   ; 3 uses
  %i.bv = load atomic i32, ptr %i.bu monotonic, align 4
  switch i32 %i.bv, label %_ZN9QtPrivate8RefCount5derefEv.exit.i155 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i154
    i32 -1, label %_ZN7QStringD2Ev.exit159
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i155:         ; preds = %bb.n
  %37 = atomicrmw sub ptr %i.bu, i32 1 seq_cst, align 4
  %.not.i156 = icmp eq i32 %37, 1
  br i1 %.not.i156, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i157, label %_ZN7QStringD2Ev.exit159

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i157: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i155
  %.pre.i158 = load ptr, ptr %17, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i154

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i154: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i157, %bb.n
  %i.bw = phi ptr [ %.pre.i158, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i157 ], [ %i.bu, %bb.n ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.bw, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit159

_ZN7QStringD2Ev.exit159:                          ; preds = %bb.n, %_ZN9QtPrivate8RefCount5derefEv.exit.i155, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  call void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %19, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef -1)
  invoke void @_ZN12QKeySequenceC1ERK7QStringNS_14SequenceFormatE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 0)
          to label %bb.o unwind label %bb.aw

bb.o:                                             ; preds = %_ZN7QStringD2Ev.exit159
  invoke void @_ZN7QAction11setShortcutERK12QKeySequence(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.p unwind label %bb.ax

bb.p:                                             ; preds = %bb.o
  call void @_ZN12QKeySequenceD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #11
  %i.by = load ptr, ptr %19, align 8, !tbaa !32   ; 3 uses
  %i.bz = load atomic i32, ptr %i.by monotonic, align 4
  switch i32 %i.bz, label %_ZN9QtPrivate8RefCount5derefEv.exit.i161 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i160
    i32 -1, label %_ZN7QStringD2Ev.exit165
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i161:         ; preds = %bb.p
  %38 = atomicrmw sub ptr %i.by, i32 1 seq_cst, align 4
  %.not.i162 = icmp eq i32 %38, 1
  br i1 %.not.i162, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i163, label %_ZN7QStringD2Ev.exit165

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i163: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i161
  %.pre.i164 = load ptr, ptr %19, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i160

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i160: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i163, %bb.p
  %i.ca = phi ptr [ %.pre.i164, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i163 ], [ %i.by, %bb.p ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.ca, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit165

_ZN7QStringD2Ev.exit165:                          ; preds = %bb.p, %_ZN9QtPrivate8RefCount5derefEv.exit.i161, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !46
  call void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i1 noundef zeroext false)
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 ptrtoint (ptr @_ZN7QAction9triggeredEb to i64), ptr %i.f, align 8, !tbaa !33, !noalias !84
  %.fca.1.gep14.i169 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %.fca.1.gep14.i169, align 8, !tbaa !33, !noalias !84
  store i64 ptrtoint (ptr @_ZN11ImageViewer10normalSizeEv to i64), ptr %i.g, align 8, !tbaa !33, !noalias !84
  %.fca.1.gep.i170 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %.fca.1.gep.i170, align 8, !tbaa !33, !noalias !84
  %i.cd = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #10, !noalias !84 ; 5 uses
  store i32 1, ptr %i.cd, align 4, !tbaa !78, !noalias !84
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM11ImageViewerFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.ce, align 8, !tbaa !79, !noalias !84
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 ptrtoint (ptr @_ZN11ImageViewer10normalSizeEv to i64), ptr %i.cf, align 8, !tbaa !41, !noalias !84
  %.repack7.i.i171 = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i64 0, ptr %.repack7.i.i171, align 8, !tbaa !41, !noalias !84
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %20, ptr noundef %i.cc, ptr noundef nonnull %i.f, ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.cd, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN7QAction16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #11
  %i.cg = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %21, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef -1)
          to label %_ZN11ImageViewer2trEPKcS1_i.exit172 unwind label %bb.az

_ZN11ImageViewer2trEPKcS1_i.exit172:              ; preds = %_ZN7QStringD2Ev.exit165
  invoke void @_ZN7QActionC1ERK7QStringP7QObject(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull %0)
          to label %bb.q unwind label %bb.ba

bb.q:                                             ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit172
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !47
  %i.ci = load ptr, ptr %21, align 8, !tbaa !32   ; 3 uses
  %i.cj = load atomic i32, ptr %i.ci monotonic, align 4
  switch i32 %i.cj, label %_ZN9QtPrivate8RefCount5derefEv.exit.i174 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i173
    i32 -1, label %_ZN7QStringD2Ev.exit178
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i174:         ; preds = %bb.q
  %39 = atomicrmw sub ptr %i.ci, i32 1 seq_cst, align 4
  %.not.i175 = icmp eq i32 %39, 1
  br i1 %.not.i175, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i176, label %_ZN7QStringD2Ev.exit178

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i176: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i174
  %.pre.i177 = load ptr, ptr %21, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i173

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i173: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i176, %bb.q
  %i.ck = phi ptr [ %.pre.i177, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i176 ], [ %i.ci, %bb.q ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.ck, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit178

_ZN7QStringD2Ev.exit178:                          ; preds = %bb.q, %_ZN9QtPrivate8RefCount5derefEv.exit.i174, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !47
  call void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i1 noundef zeroext false)
  %i.cm = load ptr, ptr %i.ch, align 8, !tbaa !47
  call void @_ZN7QAction12setCheckableEb(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i1 noundef zeroext true)
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  call void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %23, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef -1)
  invoke void @_ZN12QKeySequenceC1ERK7QStringNS_14SequenceFormatE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 0)
          to label %bb.r unwind label %bb.bc

bb.r:                                             ; preds = %_ZN7QStringD2Ev.exit178
  invoke void @_ZN7QAction11setShortcutERK12QKeySequence(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.s unwind label %bb.bd

bb.s:                                             ; preds = %bb.r
  call void @_ZN12QKeySequenceD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #11
  %i.co = load ptr, ptr %23, align 8, !tbaa !32   ; 3 uses
  %i.cp = load atomic i32, ptr %i.co monotonic, align 4
  switch i32 %i.cp, label %_ZN9QtPrivate8RefCount5derefEv.exit.i180 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i179
    i32 -1, label %_ZN7QStringD2Ev.exit184
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i180:         ; preds = %bb.s
  %40 = atomicrmw sub ptr %i.co, i32 1 seq_cst, align 4
  %.not.i181 = icmp eq i32 %40, 1
  br i1 %.not.i181, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i182, label %_ZN7QStringD2Ev.exit184

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i182: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i180
  %.pre.i183 = load ptr, ptr %23, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i179

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i179: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i182, %bb.s
  %i.cq = phi ptr [ %.pre.i183, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i182 ], [ %i.co, %bb.s ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.cq, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit184

_ZN7QStringD2Ev.exit184:                          ; preds = %bb.s, %_ZN9QtPrivate8RefCount5derefEv.exit.i180, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  %i.cr = load ptr, ptr %i.ch, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 ptrtoint (ptr @_ZN7QAction9triggeredEb to i64), ptr %i.d, align 8, !tbaa !33, !noalias !85
  %.fca.1.gep14.i188 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.fca.1.gep14.i188, align 8, !tbaa !33, !noalias !85
  store i64 ptrtoint (ptr @_ZN11ImageViewer11fitToWindowEv to i64), ptr %i.e, align 8, !tbaa !33, !noalias !85
  %.fca.1.gep.i189 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.fca.1.gep.i189, align 8, !tbaa !33, !noalias !85
  %i.cs = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #10, !noalias !85 ; 5 uses
  store i32 1, ptr %i.cs, align 4, !tbaa !78, !noalias !85
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM11ImageViewerFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.ct, align 8, !tbaa !79, !noalias !85
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i64 ptrtoint (ptr @_ZN11ImageViewer11fitToWindowEv to i64), ptr %i.cu, align 8, !tbaa !41, !noalias !85
  %.repack7.i.i190 = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store i64 0, ptr %.repack7.i.i190, align 8, !tbaa !41, !noalias !85
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %24, ptr noundef %i.cr, ptr noundef nonnull %i.d, ptr noundef nonnull %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.cs, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN7QAction16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #11
  %i.cv = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %25, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef -1)
          to label %_ZN11ImageViewer2trEPKcS1_i.exit191 unwind label %bb.bf

_ZN11ImageViewer2trEPKcS1_i.exit191:              ; preds = %_ZN7QStringD2Ev.exit184
  invoke void @_ZN7QActionC1ERK7QStringP7QObject(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull %0)
          to label %bb.t unwind label %bb.bg

bb.t:                                             ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit191
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !86
  %i.cx = load ptr, ptr %25, align 8, !tbaa !32   ; 3 uses
  %i.cy = load atomic i32, ptr %i.cx monotonic, align 4
  switch i32 %i.cy, label %_ZN9QtPrivate8RefCount5derefEv.exit.i193 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i192
    i32 -1, label %_ZN7QStringD2Ev.exit197
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i193:         ; preds = %bb.t
  %41 = atomicrmw sub ptr %i.cx, i32 1 seq_cst, align 4
  %.not.i194 = icmp eq i32 %41, 1
  br i1 %.not.i194, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i195, label %_ZN7QStringD2Ev.exit197

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i195: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i193
  %.pre.i196 = load ptr, ptr %25, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i192

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i192: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i195, %bb.t
  %i.cz = phi ptr [ %.pre.i196, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i195 ], [ %i.cx, %bb.t ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.cz, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit197

_ZN7QStringD2Ev.exit197:                          ; preds = %bb.t, %_ZN9QtPrivate8RefCount5derefEv.exit.i193, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 ptrtoint (ptr @_ZN7QAction9triggeredEb to i64), ptr %i.b, align 8, !tbaa !33, !noalias !87
  %.fca.1.gep14.i201 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep14.i201, align 8, !tbaa !33, !noalias !87
  store i64 ptrtoint (ptr @_ZN11ImageViewer5aboutEv to i64), ptr %i.c, align 8, !tbaa !33, !noalias !87
  %.fca.1.gep.i202 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.fca.1.gep.i202, align 8, !tbaa !33, !noalias !87
  %i.db = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #10, !noalias !87 ; 5 uses
  store i32 1, ptr %i.db, align 4, !tbaa !78, !noalias !87
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM11ImageViewerFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.dc, align 8, !tbaa !79, !noalias !87
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 ptrtoint (ptr @_ZN11ImageViewer5aboutEv to i64), ptr %i.dd, align 8, !tbaa !41, !noalias !87
  %.repack7.i.i203 = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i64 0, ptr %.repack7.i.i203, align 8, !tbaa !41, !noalias !87
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %26, ptr noundef %i.da, ptr noundef nonnull %i.b, ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.db, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN7QAction16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #11
  %i.de = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %27, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.16, ptr noundef null, i32 noundef -1)
          to label %_ZN11ImageViewer2trEPKcS1_i.exit204 unwind label %bb.bi

_ZN11ImageViewer2trEPKcS1_i.exit204:              ; preds = %_ZN7QStringD2Ev.exit197
  invoke void @_ZN7QActionC1ERK7QStringP7QObject(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %0)
          to label %bb.u unwind label %bb.bj

bb.u:                                             ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit204
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.de, ptr %i.df, align 8, !tbaa !88
  %i.dg = load ptr, ptr %27, align 8, !tbaa !32   ; 3 uses
  %i.dh = load atomic i32, ptr %i.dg monotonic, align 4
  switch i32 %i.dh, label %_ZN9QtPrivate8RefCount5derefEv.exit.i206 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i205
    i32 -1, label %_ZN7QStringD2Ev.exit210
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i206:         ; preds = %bb.u
  %42 = atomicrmw sub ptr %i.dg, i32 1 seq_cst, align 4
  %.not.i207 = icmp eq i32 %42, 1
  br i1 %.not.i207, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i208, label %_ZN7QStringD2Ev.exit210

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i208: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i206
  %.pre.i209 = load ptr, ptr %27, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i205

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i205: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i208, %bb.u
  %i.di = phi ptr [ %.pre.i209, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i208 ], [ %i.dg, %bb.u ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.di, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit210

_ZN7QStringD2Ev.exit210:                          ; preds = %bb.u, %_ZN9QtPrivate8RefCount5derefEv.exit.i206, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #11
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !88
  %i.dk = load ptr, ptr @_ZN16QCoreApplication4selfE, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 ptrtoint (ptr @_ZN7QAction9triggeredEb to i64), ptr %i.a, align 8, !tbaa !33, !noalias !91
  %.fca.1.gep.i211 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep.i211, align 8, !tbaa !33, !noalias !91
  %i.dl = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10, !noalias !91 ; 4 uses
  store i32 1, ptr %i.dl, align 4, !tbaa !78, !noalias !91
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr @_ZN9QtPrivate17QStaticSlotObjectIPFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.dm, align 8, !tbaa !79, !noalias !91
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr @_ZN12QApplication7aboutQtEv, ptr %i.dn, align 8, !tbaa !49, !noalias !91
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %28, ptr noundef %i.dj, ptr noundef nonnull %i.a, ptr noundef %i.dk, ptr noundef null, ptr noundef nonnull %i.dl, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN7QAction16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #11
  ret void

bb.v:                                             ; preds = %bb.a
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.dp, %bb.w ], [ %i.do, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 16) #12
  br label %bb.bl

bb.y:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.c
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12QKeySequenceD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn66 = phi { ptr, i32 } [ %i.dr, %bb.z ], [ %i.dq, %bb.y ]
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.bl

bb.ab:                                            ; preds = %_ZN7QStringD2Ev.exit98
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit99
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn68 = phi { ptr, i32 } [ %i.dt, %bb.ac ], [ %i.ds, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 16) #12
  br label %bb.bl

bb.ae:                                            ; preds = %_ZN7QStringD2Ev.exit105
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.f
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12QKeySequenceD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn70 = phi { ptr, i32 } [ %i.dv, %bb.af ], [ %i.du, %bb.ae ]
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.bl

bb.ah:                                            ; preds = %_ZN7QStringD2Ev.exit111
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit115
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn72 = phi { ptr, i32 } [ %i.dx, %bb.ai ], [ %i.dw, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 16) #12
  br label %bb.bl

bb.ak:                                            ; preds = %_ZN7QStringD2Ev.exit121
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12QKeySequenceD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #11
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn74 = phi { ptr, i32 } [ %i.dz, %bb.al ], [ %i.dy, %bb.ak ]
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.bl

bb.an:                                            ; preds = %_ZN7QStringD2Ev.exit127
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit134
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #11
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn76 = phi { ptr, i32 } [ %i.eb, %bb.ao ], [ %i.ea, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 16) #12
  br label %bb.bl

bb.aq:                                            ; preds = %_ZN7QStringD2Ev.exit140
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.l
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12QKeySequenceD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #11
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn78 = phi { ptr, i32 } [ %i.ed, %bb.ar ], [ %i.ec, %bb.aq ]
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.bl

bb.at:                                            ; preds = %_ZN7QStringD2Ev.exit146
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit153
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #11
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn80 = phi { ptr, i32 } [ %i.ef, %bb.au ], [ %i.ee, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef 16) #12
  br label %bb.bl

bb.aw:                                            ; preds = %_ZN7QStringD2Ev.exit159
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.o
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12QKeySequenceD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #11
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn82 = phi { ptr, i32 } [ %i.eh, %bb.ax ], [ %i.eg, %bb.aw ]
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br label %bb.bl

bb.az:                                            ; preds = %_ZN7QStringD2Ev.exit165
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit172
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #11
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn84 = phi { ptr, i32 } [ %i.ej, %bb.ba ], [ %i.ei, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef 16) #12
  br label %bb.bl

bb.bc:                                            ; preds = %_ZN7QStringD2Ev.exit178
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.r
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12QKeySequenceD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #11
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn86 = phi { ptr, i32 } [ %i.el, %bb.bd ], [ %i.ek, %bb.bc ]
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  br label %bb.bl

bb.bf:                                            ; preds = %_ZN7QStringD2Ev.exit184
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit191
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #11
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn88 = phi { ptr, i32 } [ %i.en, %bb.bg ], [ %i.em, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef 16) #12
  br label %bb.bl

bb.bi:                                            ; preds = %_ZN7QStringD2Ev.exit197
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit204
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #11
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn90 = phi { ptr, i32 } [ %i.ep, %bb.bj ], [ %i.eo, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #11
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 16) #12
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bh, %bb.bb, %bb.av, %bb.ap, %bb.aj, %bb.ad, %bb.x, %bb.be, %bb.ay, %bb.as, %bb.am, %bb.ag, %bb.aa
  %.pn90.pn = phi { ptr, i32 } [ %.pn90, %bb.bk ], [ %.pn72, %bb.aj ], [ %.pn88, %bb.bh ], [ %.pn66, %bb.aa ], [ %.pn86, %bb.be ], [ %.pn84, %bb.bb ], [ %.pn70, %bb.ag ], [ %.pn82, %bb.ay ], [ %.pn80, %bb.av ], [ %.pn68, %bb.ad ], [ %.pn78, %bb.as ], [ %.pn76, %bb.ap ], [ %.pn, %bb.x ], [ %.pn74, %bb.am ]
  resume { ptr, i32 } %.pn90.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN11ImageViewer11createMenusEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QString, align 8             ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef -1)
          to label %_ZN11ImageViewer2trEPKcS1_i.exit unwind label %bb.c

_ZN11ImageViewer2trEPKcS1_i.exit:                 ; preds = %bb.a
  invoke void @_ZN5QMenuC1ERK7QStringP7QWidget(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !92
  %i.c = load ptr, ptr %1, align 8, !tbaa !32     ; 3 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  switch i32 %i.d, label %_ZN9QtPrivate8RefCount5derefEv.exit.i [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
    i32 -1, label %_ZN7QStringD2Ev.exit
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.b
  %2 = atomicrmw sub ptr %i.c, i32 1 seq_cst, align 4
  %.not.i = icmp eq i32 %2, 1
  br i1 %.not.i, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, label %_ZN7QStringD2Ev.exit

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i:    ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, %bb.b
  %i.e = phi ptr [ %.pre.i, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i ], [ %i.c, %bb.b ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.e, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.b, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  call void @_ZN7QWidget9addActionEP7QAction(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  call void @_ZN7QWidget9addActionEP7QAction(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef %i.k)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  call void @_ZN7QWidget9addActionEP7QAction(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef %i.n)
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.p = call noundef ptr @_ZN5QMenu12addSeparatorEv(ptr noundef nonnull align 8 dereferenceable(48) %i.o) ; 0 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47
  call void @_ZN7QWidget9addActionEP7QAction(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef %i.s)
  %i.t = call noundef ptr @_ZNK11QMainWindow7menuBarEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.v = call noundef ptr @_ZN8QMenuBar7addMenuEP5QMenu(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef %i.u) ; 0 uses
  ret void

bb.c:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.x, %bb.d ], [ %i.w, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #12
  resume { ptr, i32 } %.pn
}

declare void @_ZN7QWidget14setWindowTitleERK7QString(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  switch i32 %i.b, label %_ZN9QtPrivate8RefCount5derefEv.exit [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2
    i32 -1, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread
  ]

_ZN9QtPrivate8RefCount5derefEv.exit:              ; preds = %bb.a
  %1 = atomicrmw sub ptr %i.a, i32 1 seq_cst, align 4
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2

_ZN9QtPrivate8RefCount5derefEv.exit.thread2:      ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge, %bb.a
  %i.c = phi ptr [ %.pre, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge ], [ %i.a, %bb.a ]
  tail call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.c, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread

_ZN9QtPrivate8RefCount5derefEv.exit.thread:       ; preds = %bb.a, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2, %_ZN9QtPrivate8RefCount5derefEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_ZN7QWidget13setWindowIconERK5QIcon(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN5QIconC1ERK7QString(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN5QIconD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11QMainWindowD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11ImageViewer4openERK7QString(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QImage, align 8              ; 8 uses
  %3 = alloca %class.QPixmap, align 8             ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !96
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @_ZN6QImageC1ERK7QStringPKc(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
  %i.e = invoke noundef zeroext i1 @_ZNK6QImage6isNullEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %.sink.split, label %bb.e

bb.d:                                             ; preds = %.noexc17, %.noexc16, %.noexc15, %.noexc14, %.noexc, %bb.h, %bb.j, %_ZN11ImageViewer13updateActionsEv.exit, %bb.g, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  invoke void @_ZN7QPixmap9fromImageERK6QImage6QFlagsIN2Qt19ImageConversionFlagEE(ptr dead_on_unwind nonnull writable sret(%class.QPixmap) align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 0)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6QLabel9setPixmapERK7QPixmap(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double 1.000000e+00, ptr %i.i, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  invoke void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.o = invoke noundef zeroext i1 @_ZNK7QAction9isCheckedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.h
  %i.p = xor i1 %i.o, true
  invoke void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i1 noundef zeroext %i.p)
          to label %.noexc14 unwind label %bb.d

.noexc14:                                         ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.t = invoke noundef zeroext i1 @_ZNK7QAction9isCheckedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.noexc15 unwind label %bb.d

.noexc15:                                         ; preds = %.noexc14
  %i.u = xor i1 %i.t, true
  invoke void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i1 noundef zeroext %i.u)
          to label %.noexc16 unwind label %bb.d

.noexc16:                                         ; preds = %.noexc15
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.y = invoke noundef zeroext i1 @_ZNK7QAction9isCheckedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %.noexc17 unwind label %bb.d

.noexc17:                                         ; preds = %.noexc16
  %i.z = xor i1 %i.y, true
  invoke void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i1 noundef zeroext %i.z)
          to label %_ZN11ImageViewer13updateActionsEv.exit unwind label %bb.d

_ZN11ImageViewer13updateActionsEv.exit:           ; preds = %.noexc17
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.ab = invoke noundef zeroext i1 @_ZNK7QAction9isCheckedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %_ZN11ImageViewer13updateActionsEv.exit
  br i1 %i.ab, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !28
  invoke void @_ZN7QWidget10adjustSizeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ac)
          to label %.sink.split unwind label %bb.d

bb.k:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.l ], [ %i.ad, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d
  %.pn12 = phi { ptr, i32 } [ %i.f, %bb.d ], [ %.pn, %bb.m ]
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  resume { ptr, i32 } %.pn12

.sink.split:                                      ; preds = %bb.c, %bb.j, %bb.i
  %.110.ph = xor i1 %i.e, true
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.a
  %.110 = phi i1 [ true, %bb.a ], [ %.110.ph, %.sink.split ]
  ret i1 %.110
}

declare void @_ZN6QImageC1ERK7QStringPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK6QImage6isNullEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN6QLabel9setPixmapERK7QPixmap(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN7QPixmap9fromImageERK6QImage6QFlagsIN2Qt19ImageConversionFlagEE(ptr dead_on_unwind writable sret(%class.QPixmap) align 8, ptr noundef nonnull align 8 dereferenceable(32), i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #6

declare void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN11ImageViewer13updateActionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = tail call noundef zeroext i1 @_ZNK7QAction9isCheckedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.f = xor i1 %i.e, true
  tail call void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i1 noundef zeroext %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.j = tail call noundef zeroext i1 @_ZNK7QAction9isCheckedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  %i.k = xor i1 %i.j, true
  tail call void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i1 noundef zeroext %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.o = tail call noundef zeroext i1 @_ZNK7QAction9isCheckedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  %i.p = xor i1 %i.o, true
  tail call void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i1 noundef zeroext %i.p)
  ret void
}

declare noundef zeroext i1 @_ZNK7QAction9isCheckedEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN7QWidget10adjustSizeEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: nounwind
end_hunk_0
begin_hunk_1_@_ZN11ImageViewer10scaleImageEd:bb.a
  %i.c = fmul double %1, %i.b                     ; 3 uses
  store double %i.c, ptr %i.a, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZNK6QLabel6pixmapEN2Qt21ReturnByValueConstantE(ptr dead_on_unwind nonnull writable sret(%class.QPixmap) align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i32 noundef 0)
  %i.f = invoke i64 @_ZNK7QPixmap4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.extract.trunc = trunc i64 %i.f to i32
  %.sroa.5.0.extract.shift = lshr i64 %i.f, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.g = sitofp i32 %.sroa.0.0.extract.trunc to double
  %i.h = fmul double %i.c, %i.g                   ; 4 uses
  %i.i = fcmp ult double %i.h, 0.000000e+00
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = fadd double %i.h, 5.000000e-01
  %i.k = fptosi double %i.j to i32
  br label %_Z6qRoundd.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = fadd double %i.h, -1.000000e+00
  %i.m = fptosi double %i.l to i32                ; 2 uses
  %i.n = sitofp i32 %i.m to double
  %i.o = fsub double %i.h, %i.n
  %i.p = fadd double %i.o, 5.000000e-01
  %i.q = fptosi double %i.p to i32
  %i.r = add nsw i32 %i.q, %i.m
  br label %_Z6qRoundd.exit.i

_Z6qRoundd.exit.i:                                ; preds = %bb.d, %bb.c
  %i.s = phi i32 [ %i.k, %bb.c ], [ %i.r, %bb.d ]
  %i.t = sitofp i32 %.sroa.5.0.extract.trunc to double
  %i.u = fmul double %i.c, %i.t                   ; 4 uses
  %i.v = fcmp ult double %i.u, 0.000000e+00
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_Z6qRoundd.exit.i
  %i.w = fadd double %i.u, 5.000000e-01
  %i.x = fptosi double %i.w to i32
  br label %_ZmldRK5QSize.exit

bb.f:                                             ; preds = %_Z6qRoundd.exit.i
  %i.y = fadd double %i.u, -1.000000e+00
  %i.z = fptosi double %i.y to i32                ; 2 uses
  %i.aa = sitofp i32 %i.z to double
  %i.ab = fsub double %i.u, %i.aa
  %i.ac = fadd double %i.ab, 5.000000e-01
  %i.ad = fptosi double %i.ac to i32
  %i.ae = add nsw i32 %i.ad, %i.z
  br label %_ZmldRK5QSize.exit

_ZmldRK5QSize.exit:                               ; preds = %bb.e, %bb.f
  %i.af = phi i32 [ %i.x, %bb.e ], [ %i.ae, %bb.f ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.af to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.s to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %2, align 8
  invoke void @_ZN7QWidget6resizeERK5QSize(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZmldRK5QSize.exit
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29
  %i.ai = call noundef ptr @_ZNK19QAbstractScrollArea19horizontalScrollBarEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ah) ; 3 uses
  %i.aj = call noundef i32 @_ZNK15QAbstractSlider5valueEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ai)
  %i.ak = sitofp i32 %i.aj to double
  %i.al = fadd double %1, -1.000000e+00           ; 2 uses
  %i.am = call noundef i32 @_ZNK15QAbstractSlider8pageStepEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ai)
  %i.an = sitofp i32 %i.am to double
  %i.ao = fmul double %i.al, %i.an
  %i.ap = fmul double %i.ao, 5.000000e-01
  %i.aq = call double @llvm.fmuladd.f64(double %1, double %i.ak, double %i.ap)
  %i.ar = fptosi double %i.aq to i32
  call void @_ZN15QAbstractSlider8setValueEi(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i32 noundef %i.ar)
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !29
  %i.at = call noundef ptr @_ZNK19QAbstractScrollArea17verticalScrollBarEv(ptr noundef nonnull align 8 dereferenceable(48) %i.as) ; 3 uses
  %i.au = call noundef i32 @_ZNK15QAbstractSlider5valueEv(ptr noundef nonnull align 8 dereferenceable(48) %i.at)
  %i.av = sitofp i32 %i.au to double
  %i.aw = call noundef i32 @_ZNK15QAbstractSlider8pageStepEv(ptr noundef nonnull align 8 dereferenceable(48) %i.at)
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = fmul double %i.al, %i.ax
  %i.az = fmul double %i.ay, 5.000000e-01
  %i.ba = call double @llvm.fmuladd.f64(double %1, double %i.av, double %i.az)
  %i.bb = fptosi double %i.ba to i32
  call void @_ZN15QAbstractSlider8setValueEi(ptr noundef nonnull align 8 dereferenceable(48) %i.at, i32 noundef %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !44
  %i.be = load double, ptr %i.a, align 8, !tbaa !50
  %i.bf = fcmp olt double %i.be, 3.000000e+00
  call void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i1 noundef zeroext %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !45
  %i.bi = load double, ptr %i.a, align 8, !tbaa !50
  %i.bj = fcmp ogt double %i.bi, 3.330000e-01
  call void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i1 noundef zeroext %i.bj)
  ret void

bb.h:                                             ; preds = %_ZmldRK5QSize.exit, %bb.a
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  resume { ptr, i32 } %i.bk
}

; Function Attrs: mustprogress uwtable
define void @_ZN11ImageViewer7zoomOutEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0) #0 align 2 {
bb.a:
  tail call void @_ZN11ImageViewer10scaleImageEd(ptr noundef nonnull align 8 dereferenceable(168) %0, double noundef 8.000000e-01)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11ImageViewer10normalSizeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) initializes((80, 88)) %0) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  tail call void @_ZN7QWidget10adjustSizeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11ImageViewer11fitToWindowEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call noundef zeroext i1 @_ZNK7QAction9isCheckedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  tail call void @_ZN11QScrollArea18setWidgetResizableEb(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i1 noundef zeroext %i.c)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  tail call void @_ZN7QWidget10adjustSizeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.l = tail call noundef zeroext i1 @_ZNK7QAction9isCheckedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k)
  %i.m = xor i1 %i.l, true
  tail call void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i1 noundef zeroext %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.q = tail call noundef zeroext i1 @_ZNK7QAction9isCheckedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  %i.r = xor i1 %i.q, true
  tail call void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i1 noundef zeroext %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.v = tail call noundef zeroext i1 @_ZNK7QAction9isCheckedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u)
  %i.w = xor i1 %i.v, true
  tail call void @_ZN7QAction10setEnabledEb(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i1 noundef zeroext %i.w)
  ret void
}

declare void @_ZN11QScrollArea18setWidgetResizableEb(ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN11ImageViewer5aboutEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QString, align 8             ; 8 uses
  %2 = alloca %class.QString, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) @_ZN11ImageViewer16staticMetaObjectE, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef -1)
          to label %_ZN11ImageViewer2trEPKcS1_i.exit unwind label %bb.c

_ZN11ImageViewer2trEPKcS1_i.exit:                 ; preds = %bb.a
  invoke void @_ZN11QMessageBox5aboutEP7QWidgetRK7QStringS4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit
  %i.a = load ptr, ptr %2, align 8, !tbaa !32     ; 3 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  switch i32 %i.b, label %_ZN9QtPrivate8RefCount5derefEv.exit.i [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
    i32 -1, label %_ZN7QStringD2Ev.exit
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.b
  %3 = atomicrmw sub ptr %i.a, i32 1 seq_cst, align 4
  %.not.i = icmp eq i32 %3, 1
  br i1 %.not.i, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, label %_ZN7QStringD2Ev.exit

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i:    ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, %bb.b
  %i.c = phi ptr [ %.pre.i, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i ], [ %i.a, %bb.b ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.c, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.b, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.d = load ptr, ptr %1, align 8, !tbaa !32     ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  switch i32 %i.e, label %_ZN9QtPrivate8RefCount5derefEv.exit.i5 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i4
    i32 -1, label %_ZN7QStringD2Ev.exit9
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i5:           ; preds = %_ZN7QStringD2Ev.exit
  %4 = atomicrmw sub ptr %i.d, i32 1 seq_cst, align 4
  %.not.i6 = icmp eq i32 %4, 1
  br i1 %.not.i6, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i7, label %_ZN7QStringD2Ev.exit9

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i7: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i5
  %.pre.i8 = load ptr, ptr %1, align 8, !tbaa !32
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i4

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i4:   ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i7, %_ZN7QStringD2Ev.exit
  %i.f = phi ptr [ %.pre.i8, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i7 ], [ %i.d, %_ZN7QStringD2Ev.exit ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.f, i64 noundef 2, i64 noundef 8) #11
  br label %_ZN7QStringD2Ev.exit9

_ZN7QStringD2Ev.exit9:                            ; preds = %_ZN7QStringD2Ev.exit, %_ZN9QtPrivate8RefCount5derefEv.exit.i5, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN11ImageViewer2trEPKcS1_i.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  resume { ptr, i32 } %.pn
}

declare void @_ZN11QMessageBox5aboutEP7QWidgetRK7QStringS4_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN7QActionC1ERK7QStringP7QObject(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @_ZN7QAction11setShortcutERK12QKeySequence(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN12QKeySequenceC1ERK7QStringNS_14SequenceFormatE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN12QKeySequenceD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare void @_ZN7QAction9triggeredEb(ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) #1

; Function Attrs: nounwind
declare void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare noundef zeroext i1 @_ZN7QWidget5closeEv(ptr noundef nonnull align 8 dereferenceable(48)) #1

declare void @_ZN7QAction12setCheckableEb(ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN12QApplication7aboutQtEv() #1

declare void @_ZN5QMenuC1ERK7QStringP7QWidget(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @_ZN7QWidget9addActionEP7QAction(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN5QMenu12addSeparatorEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare noundef ptr @_ZNK11QMainWindow7menuBarEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare noundef ptr @_ZN8QMenuBar7addMenuEP5QMenu(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare void @_ZN7QWidget6resizeERK5QSize(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare i64 @_ZNK7QPixmap4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN11ImageViewer15adjustScrollBarEP10QScrollBard(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull %1, double noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK15QAbstractSlider5valueEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.b = sitofp i32 %i.a to double
  %i.c = fadd double %2, -1.000000e+00
  %i.d = tail call noundef i32 @_ZNK15QAbstractSlider8pageStepEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.e = sitofp i32 %i.d to double
  %i.f = fmul double %i.c, %i.e
  %i.g = fmul double %i.f, 5.000000e-01
  %i.h = tail call double @llvm.fmuladd.f64(double %2, double %i.b, double %i.g)
  %i.i = fptosi double %i.h to i32
  tail call void @_ZN15QAbstractSlider8setValueEi(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.i)
  ret void
}

declare noundef ptr @_ZNK19QAbstractScrollArea19horizontalScrollBarEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare noundef ptr @_ZNK19QAbstractScrollArea17verticalScrollBarEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN15QAbstractSlider8setValueEi(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK15QAbstractSlider5valueEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare noundef i32 @_ZNK15QAbstractSlider8pageStepEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN11ImageViewer10closeEventEP11QCloseEvent(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef captures(none) %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !100
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EEaSEDn.exit, label %_ZNKSt14default_deleteI11ImageViewerEclEPS0_.exit.i.i.i

_ZNKSt14default_deleteI11ImageViewerEclEPS0_.exit.i.i.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(168) %i.d) #11, !inline_history !97
  br label %_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EEaSEDn.exit

_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EEaSEDn.exit: ; preds = %bb.a, %_ZNKSt14default_deleteI11ImageViewerEclEPS0_.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2
  %i.j = or i16 %i.i, 4
  store i16 %i.j, ptr %i.h, align 2
  ret void
}

declare void @_ZN7QWidget13setSizePolicyE11QSizePolicy(ptr noundef nonnull align 8 dereferenceable(48), i32) local_unnamed_addr #1

declare void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNK6QLabel6pixmapEN2Qt21ReturnByValueConstantE(ptr dead_on_unwind writable sret(%class.QPixmap) align 8, ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

declare void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind writable sret(%"class.QMetaObject::Connection") align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9QtPrivate11QSlotObjectIM11ImageViewerFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 32) #12
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.unpack12 = load i64, ptr %i.b, align 8, !tbaa !41 ; 3 uses
  %.elt13 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.unpack14 = load i64, ptr %.elt13, align 8, !tbaa !41
  %i.c = getelementptr inbounds i8, ptr %2, i64 %.unpack14 ; 2 uses
  %i.d = and i64 %.unpack12, 1
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.f = getelementptr i8, ptr %i.e, i64 %.unpack12
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load ptr, ptr %i.g, align 8, !nosanitize !51
  br label %_ZN9QtPrivate15FunctionPointerIM11ImageViewerFvvEE4callINS_4ListIJEEEvEEvS3_PS1_PPv.exit

bb.f:                                             ; preds = %bb.d
  %i.i = inttoptr i64 %.unpack12 to ptr
  br label %_ZN9QtPrivate15FunctionPointerIM11ImageViewerFvvEE4callINS_4ListIJEEEvEEvS3_PS1_PPv.exit

_ZN9QtPrivate15FunctionPointerIM11ImageViewerFvvEE4callINS_4ListIJEEEvEEvS3_PS1_PPv.exit: ; preds = %bb.e, %bb.f
  %i.j = phi ptr [ %i.h, %bb.e ], [ %i.i, %bb.f ]
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(168) %i.c), !inline_history !101
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %.unpack = load i64, ptr %3, align 8, !tbaa !33 ; 2 uses
  %.elt7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.unpack8 = load i64, ptr %.elt7, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.unpack9 = load i64, ptr %i.k, align 8, !tbaa !41
  %.elt10 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.unpack11 = load i64, ptr %.elt10, align 8, !tbaa !41
  %i.l = icmp eq i64 %.unpack, %.unpack9
  %i.m = icmp eq i64 %.unpack, 0
  %i.n = icmp eq i64 %.unpack8, %.unpack11
  %i.o = or i1 %i.m, %i.n
  %i.p = and i1 %i.l, %i.o
  %i.q = zext i1 %i.p to i8
  store i8 %i.q, ptr %4, align 1, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %bb.g, %_ZN9QtPrivate15FunctionPointerIM11ImageViewerFvvEE4callINS_4ListIJEEEvEEvS3_PS1_PPv.exit, %bb.a
  ret void
}
end_hunk_1
