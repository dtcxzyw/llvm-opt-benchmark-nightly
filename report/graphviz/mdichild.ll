Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/mdichild?download=true
inline.NumInlined: 195
inline.NumDeleted: 113
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

%struct.QArrayData = type { %"class.QtPrivate::RefCount", i32, i32, i64 }
%"class.QtPrivate::RefCount" = type { %class.QBasicAtomicInteger }
%class.QBasicAtomicInteger = type { %"struct.std::atomic" }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i32 }
%struct.QMetaObject = type { %struct.anon }
%struct.anon = type { %"struct.QMetaObject::SuperData", ptr, ptr, ptr, ptr, ptr }
%"struct.QMetaObject::SuperData" = type { ptr }
%class.QString = type { ptr }
%"class.QMetaObject::Connection" = type { ptr }
%class.QFile = type { %class.QFileDevice }
%class.QFileDevice = type { %class.QIODevice }
%class.QIODevice = type { %class.QObject }
%class.QObject = type { ptr, %class.QScopedPointer }
%class.QScopedPointer = type { ptr }
%class.QTextStream = type { ptr, %class.QScopedPointer.3 }
%class.QScopedPointer.3 = type { ptr }
%class.QCursor = type { ptr }
%class.QFileInfo = type { %class.QSharedDataPointer }
%class.QSharedDataPointer = type { ptr }
%class.QPoint = type { i32, i32 }
%class.QSize = type { i32, i32 }
%class.QList = type { %union.anon }
%union.anon = type { %struct.QListData }
%struct.QListData = type { ptr }

$_ZN7QStringD2Ev = comdat any

$_ZN5QListIP13QMdiSubWindowED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN9QtPrivate11QSlotObjectIM8MdiChildFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb = comdat any

@_ZTV8MdiChild = external constant { [63 x ptr], [10 x ptr] }, align 8
@_ZZN8MdiChild7newFileEvE14sequenceNumber = internal unnamed_addr global i32 1, align 4
@.str = private unnamed_addr constant [11 x i8] c"graph%1.gv\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"[*]\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MDI\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Cannot read file %1:\0A%2.\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Save As\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Cannot write file %1:\0A%2.\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"'%1' has been modified.\0ADo you want to save your changes?\00", align 1
@_ZN10QArrayData11shared_nullE = external global [2 x %struct.QArrayData], align 16
@_ZN8MdiChild16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN13QTextDocument16staticMetaObjectE = external global %struct.QMetaObject, align 8

@_ZN8MdiChildC1Ev = unnamed_addr alias void (ptr), ptr @_ZN8MdiChildC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN8MdiChildC2Ev(ptr noundef nonnull align 8 dereferenceable(113) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN9QTextEditC2EP7QWidget(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef null)
  store ptr getelementptr inbounds nuw inrange(-16, 488) (i8, ptr @_ZTV8MdiChild, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV8MdiChild, i64 520), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr @_ZN10QArrayData11shared_nullE, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr @_ZN10QArrayData11shared_nullE, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr @_ZN10QArrayData11shared_nullE, ptr %i.e, align 8, !tbaa !13
  invoke void @_ZN7QWidget12setAttributeEN2Qt15WidgetAttributeEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 55, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.g, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.h, align 4, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.i, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 0, ptr %i.j, align 1, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.k, align 8, !tbaa !36
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #12
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !37   ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI11ImageViewerEclEPS0_.exit.i

_ZNKSt14default_deleteI11ImageViewerEclEPS0_.exit.i: ; preds = %bb.c
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(168) %i.m) #12, !inline_history !57
  br label %_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteI11ImageViewerEclEPS0_.exit.i
  tail call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #12
  tail call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #12
  tail call void @_ZN9QTextEditD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #12
  resume { ptr, i32 } %i.l
}

declare void @_ZN9QTextEditC2EP7QWidget(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #1

declare void @_ZN7QWidget12setAttributeEN2Qt15WidgetAttributeEb(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
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
  %.pre = load ptr, ptr %0, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2

_ZN9QtPrivate8RefCount5derefEv.exit.thread2:      ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge, %bb.a
  %i.c = phi ptr [ %.pre, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge ], [ %i.a, %bb.a ]
  tail call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.c, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread

_ZN9QtPrivate8RefCount5derefEv.exit.thread:       ; preds = %bb.a, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2, %_ZN9QtPrivate8RefCount5derefEv.exit
  ret void
}

; Function Attrs: nounwind
declare void @_ZN9QTextEditD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN8MdiChild7newFileEv(ptr noundef nonnull align 8 dereferenceable(113) initializes((112, 113)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %1 = alloca %class.QString, align 8             ; 7 uses
  %2 = alloca %class.QString, align 8             ; 8 uses
  %3 = alloca %class.QString, align 8             ; 9 uses
  %4 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.c, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) @_ZN8MdiChild16staticMetaObjectE, ptr noundef nonnull @.str, ptr noundef null, i32 noundef -1)
  %i.d = load i32, ptr @_ZZN8MdiChild7newFileEvE14sequenceNumber, align 4, !tbaa !69 ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @_ZZN8MdiChild7newFileEvE14sequenceNumber, align 4, !tbaa !69
  %i.f = sext i32 %i.d to i64
  invoke void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.f, i32 noundef 0, i32 noundef 10, i16 32)
          to label %_ZNK7QString3argEiii5QChar.exit unwind label %bb.c

_ZNK7QString3argEiii5QChar.exit:                  ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38   ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !38
  store ptr %i.i, ptr %i.g, align 8, !tbaa !38
  store ptr %i.h, ptr %1, align 8, !tbaa !38
  %i.j = load atomic i32, ptr %i.h monotonic, align 4
  switch i32 %i.j, label %_ZN9QtPrivate8RefCount5derefEv.exit.i [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
    i32 -1, label %_ZN7QStringD2Ev.exit
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %_ZNK7QString3argEiii5QChar.exit
  %5 = atomicrmw sub ptr %i.h, i32 1 seq_cst, align 4
  %.not.i = icmp eq i32 %5, 1
  br i1 %.not.i, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, label %_ZN7QStringD2Ev.exit

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i:    ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, %_ZNK7QString3argEiii5QChar.exit
  %i.k = phi ptr [ %.pre.i, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i ], [ %i.h, %_ZNK7QString3argEiii5QChar.exit ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.k, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %_ZNK7QString3argEiii5QChar.exit, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
  %i.l = load ptr, ptr %2, align 8, !tbaa !13     ; 3 uses
  %i.m = load atomic i32, ptr %i.l monotonic, align 4
  switch i32 %i.m, label %_ZN9QtPrivate8RefCount5derefEv.exit.i7 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i6
    i32 -1, label %_ZN7QStringD2Ev.exit11
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i7:           ; preds = %_ZN7QStringD2Ev.exit
  %6 = atomicrmw sub ptr %i.l, i32 1 seq_cst, align 4
  %.not.i8 = icmp eq i32 %6, 1
  br i1 %.not.i8, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i9, label %_ZN7QStringD2Ev.exit11

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i9: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i7
  %.pre.i10 = load ptr, ptr %2, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i6

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i6:   ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i9, %_ZN7QStringD2Ev.exit
  %i.n = phi ptr [ %.pre.i10, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i9 ], [ %i.l, %_ZN7QStringD2Ev.exit ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.n, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit11

_ZN7QStringD2Ev.exit11:                           ; preds = %_ZN7QStringD2Ev.exit, %_ZN9QtPrivate8RefCount5derefEv.exit.i7, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !13, !noalias !72
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !45, !noalias !72
  %i.r = add nsw i32 %i.q, 3
  call void @_ZN7QStringC1EiN2Qt14InitializationE(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.r, i32 noundef 0)
  %i.s = load ptr, ptr %3, align 8, !tbaa !13, !alias.scope !72 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !46
  %i.w = add i64 %i.v, %i.t
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !13   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !45
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.ae = add i64 %i.ad, %i.ab
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = sext i32 %i.aa to i64                   ; 2 uses
  %i.ah = shl nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.x, ptr align 1 %i.af, i64 %i.ah, i1 false)
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.ag
  call void @_ZN21QAbstractConcatenable14appendLatin1ToEPKciP5QChar(ptr noundef nonnull @.str.1, i32 noundef 3, ptr noundef %i.ai) #12
  invoke void @_ZN7QWidget14setWindowTitleERK7QString(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7QStringD2Ev.exit11
  %i.aj = load ptr, ptr %3, align 8, !tbaa !13    ; 3 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4
  switch i32 %i.ak, label %_ZN9QtPrivate8RefCount5derefEv.exit.i13 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i12
    i32 -1, label %_ZN7QStringD2Ev.exit17
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i13:          ; preds = %bb.b
  %7 = atomicrmw sub ptr %i.aj, i32 1 seq_cst, align 4
  %.not.i14 = icmp eq i32 %7, 1
  br i1 %.not.i14, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i15, label %_ZN7QStringD2Ev.exit17

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i15: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i13
  %.pre.i16 = load ptr, ptr %3, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i12

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i12:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i15, %bb.b
  %i.al = phi ptr [ %.pre.i16, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i15 ], [ %i.aj, %bb.b ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.al, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit17

_ZN7QStringD2Ev.exit17:                           ; preds = %bb.b, %_ZN9QtPrivate8RefCount5derefEv.exit.i13, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.am = call noundef ptr @_ZNK9QTextEdit8documentEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 ptrtoint (ptr @_ZN13QTextDocument14contentsChangeEiii to i64), ptr %i.a, align 8, !tbaa !47, !noalias !73
  %.fca.1.gep14.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep14.i, align 8, !tbaa !47, !noalias !73
  store i64 ptrtoint (ptr @_ZN8MdiChild19documentWasModifiedEv to i64), ptr %i.b, align 8, !tbaa !47, !noalias !73
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !tbaa !47, !noalias !73
  %i.an = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13, !noalias !73 ; 5 uses
  store i32 1, ptr %i.an, align 4, !tbaa !48, !noalias !73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM8MdiChildFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.ao, align 8, !tbaa !52, !noalias !73
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 ptrtoint (ptr @_ZN8MdiChild19documentWasModifiedEv to i64), ptr %i.ap, align 8, !tbaa !54, !noalias !73
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !tbaa !54, !noalias !73
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %4, ptr noundef %i.am, ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.an, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN13QTextDocument16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  ret void

bb.c:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.e

bb.d:                                             ; preds = %_ZN7QStringD2Ev.exit11
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.d ], [ %i.aq, %bb.c ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_ZN7QWidget14setWindowTitleERK7QString(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZNK9QTextEdit8documentEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN13QTextDocument14contentsChangeEiii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress uwtable
define void @_ZN8MdiChild19documentWasModifiedEv(ptr noundef nonnull align 8 dereferenceable(113) %0) #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK9QTextEdit8documentEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.b = tail call noundef zeroext i1 @_ZNK13QTextDocument10isModifiedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  tail call void @_ZN7QWidget17setWindowModifiedEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %i.b)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8MdiChild8loadFileERK7QString(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %class.QFile, align 8               ; 9 uses
  %3 = alloca %class.QString, align 8             ; 8 uses
  %4 = alloca %class.QString, align 8             ; 8 uses
  %5 = alloca %class.QString, align 8             ; 8 uses
  %6 = alloca %class.QString, align 8             ; 8 uses
  %7 = alloca %class.QString, align 8             ; 8 uses
  %8 = alloca %class.QTextStream, align 8         ; 7 uses
  %9 = alloca %class.QCursor, align 8             ; 7 uses
  %10 = alloca %class.QString, align 8            ; 8 uses
  %11 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZN5QFileC1ERK7QString(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.c = invoke noundef zeroext i1 @_ZN5QFile4openE6QFlagsIN9QIODevice12OpenModeFlagEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 17)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) @_ZN8MdiChild16staticMetaObjectE, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef -1)
          to label %_ZN8MdiChild2trEPKcS1_i.exit unwind label %bb.i

_ZN8MdiChild2trEPKcS1_i.exit:                     ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) @_ZN8MdiChild16staticMetaObjectE, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef -1)
          to label %_ZN8MdiChild2trEPKcS1_i.exit33 unwind label %bb.j

_ZN8MdiChild2trEPKcS1_i.exit33:                   ; preds = %_ZN8MdiChild2trEPKcS1_i.exit
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i16 32)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZN8MdiChild2trEPKcS1_i.exit33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  invoke void @_ZNK9QIODevice11errorStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0, i16 32)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.d = invoke noundef i32 @_ZN11QMessageBox7warningEP7QWidgetRK7QStringS4_6QFlagsINS_14StandardButtonEES6_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 1024, i32 noundef 0)
          to label %bb.g unwind label %bb.n       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.e = load ptr, ptr %4, align 8, !tbaa !13     ; 3 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 4
  switch i32 %i.f, label %_ZN9QtPrivate8RefCount5derefEv.exit.i [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
    i32 -1, label %_ZN7QStringD2Ev.exit
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.g
  %12 = atomicrmw sub ptr %i.e, i32 1 seq_cst, align 4
  %.not.i = icmp eq i32 %12, 1
  br i1 %.not.i, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, label %_ZN7QStringD2Ev.exit

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i:    ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, %bb.g
  %i.g = phi ptr [ %.pre.i, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i ], [ %i.e, %bb.g ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.g, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.g, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
  %i.h = load ptr, ptr %7, align 8, !tbaa !13     ; 3 uses
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  switch i32 %i.i, label %_ZN9QtPrivate8RefCount5derefEv.exit.i35 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i34
    i32 -1, label %_ZN7QStringD2Ev.exit39
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i35:          ; preds = %_ZN7QStringD2Ev.exit
  %13 = atomicrmw sub ptr %i.h, i32 1 seq_cst, align 4
  %.not.i36 = icmp eq i32 %13, 1
  br i1 %.not.i36, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i37, label %_ZN7QStringD2Ev.exit39

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i37: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i35
  %.pre.i38 = load ptr, ptr %7, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i34

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i34:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i37, %_ZN7QStringD2Ev.exit
  %i.j = phi ptr [ %.pre.i38, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i37 ], [ %i.h, %_ZN7QStringD2Ev.exit ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.j, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit39

_ZN7QStringD2Ev.exit39:                           ; preds = %_ZN7QStringD2Ev.exit, %_ZN9QtPrivate8RefCount5derefEv.exit.i35, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.k = load ptr, ptr %5, align 8, !tbaa !13     ; 3 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 4
  switch i32 %i.l, label %_ZN9QtPrivate8RefCount5derefEv.exit.i41 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i40
    i32 -1, label %_ZN7QStringD2Ev.exit45
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i41:          ; preds = %_ZN7QStringD2Ev.exit39
  %14 = atomicrmw sub ptr %i.k, i32 1 seq_cst, align 4
  %.not.i42 = icmp eq i32 %14, 1
  br i1 %.not.i42, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i43, label %_ZN7QStringD2Ev.exit45

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i43: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i41
  %.pre.i44 = load ptr, ptr %5, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i40

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i40:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i43, %_ZN7QStringD2Ev.exit39
  %i.m = phi ptr [ %.pre.i44, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i43 ], [ %i.k, %_ZN7QStringD2Ev.exit39 ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.m, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit45

_ZN7QStringD2Ev.exit45:                           ; preds = %_ZN7QStringD2Ev.exit39, %_ZN9QtPrivate8RefCount5derefEv.exit.i41, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i40
  %i.n = load ptr, ptr %6, align 8, !tbaa !13     ; 3 uses
  %i.o = load atomic i32, ptr %i.n monotonic, align 4
  switch i32 %i.o, label %_ZN9QtPrivate8RefCount5derefEv.exit.i47 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i46
    i32 -1, label %_ZN7QStringD2Ev.exit51
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i47:          ; preds = %_ZN7QStringD2Ev.exit45
  %15 = atomicrmw sub ptr %i.n, i32 1 seq_cst, align 4
  %.not.i48 = icmp eq i32 %15, 1
  br i1 %.not.i48, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i49, label %_ZN7QStringD2Ev.exit51

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i49: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i47
  %.pre.i50 = load ptr, ptr %6, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i46

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i46:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i49, %_ZN7QStringD2Ev.exit45
  %i.p = phi ptr [ %.pre.i50, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i49 ], [ %i.n, %_ZN7QStringD2Ev.exit45 ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.p, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit51

_ZN7QStringD2Ev.exit51:                           ; preds = %_ZN7QStringD2Ev.exit45, %_ZN9QtPrivate8RefCount5derefEv.exit.i47, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.q = load ptr, ptr %3, align 8, !tbaa !13     ; 3 uses
  %i.r = load atomic i32, ptr %i.q monotonic, align 4
  switch i32 %i.r, label %_ZN9QtPrivate8RefCount5derefEv.exit.i53 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i52
    i32 -1, label %_ZN7QStringD2Ev.exit57
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i53:          ; preds = %_ZN7QStringD2Ev.exit51
  %16 = atomicrmw sub ptr %i.q, i32 1 seq_cst, align 4
  %.not.i54 = icmp eq i32 %16, 1
  br i1 %.not.i54, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i55, label %_ZN7QStringD2Ev.exit57

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i55: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i53
  %.pre.i56 = load ptr, ptr %3, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i52

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i52:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i55, %_ZN7QStringD2Ev.exit51
  %i.s = phi ptr [ %.pre.i56, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i55 ], [ %i.q, %_ZN7QStringD2Ev.exit51 ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.s, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit57

_ZN7QStringD2Ev.exit57:                           ; preds = %_ZN7QStringD2Ev.exit51, %_ZN9QtPrivate8RefCount5derefEv.exit.i53, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.an

bb.h:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.i:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %_ZN8MdiChild2trEPKcS1_i.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.k:                                             ; preds = %_ZN8MdiChild2trEPKcS1_i.exit33
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.l:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.z, %bb.n ], [ %i.y, %bb.m ]
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.x, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.p ], [ %i.w, %bb.k ]
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.j
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.q ], [ %i.v, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.r ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.ao

bb.t:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  invoke void @_ZN11QTextStreamC1EP9QIODevice(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %2)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  invoke void @_ZN7QCursorC1EN2Qt11CursorShapeE(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 3)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN15QGuiApplication17setOverrideCursorERK7QCursor(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.w unwind label %bb.af

bb.w:                                             ; preds = %bb.v
  call void @_ZN7QCursorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  invoke void @_ZN11QTextStream7readAllEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.x unwind label %bb.ah

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN9QTextEdit12setPlainTextERK7QString(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.aa = load ptr, ptr %10, align 8, !tbaa !13   ; 3 uses
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4
  switch i32 %i.ab, label %_ZN9QtPrivate8RefCount5derefEv.exit.i59 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i58
    i32 -1, label %_ZN7QStringD2Ev.exit63
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i59:          ; preds = %bb.y
  %17 = atomicrmw sub ptr %i.aa, i32 1 seq_cst, align 4
  %.not.i60 = icmp eq i32 %17, 1
  br i1 %.not.i60, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i61, label %_ZN7QStringD2Ev.exit63

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i61: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i59
  %.pre.i62 = load ptr, ptr %10, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i58

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i58:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i61, %bb.y
  %i.ac = phi ptr [ %.pre.i62, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i61 ], [ %i.aa, %bb.y ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.ac, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit63

_ZN7QStringD2Ev.exit63:                           ; preds = %bb.y, %_ZN9QtPrivate8RefCount5derefEv.exit.i59, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  invoke void @_ZN15QGuiApplication21restoreOverrideCursorEv()
          to label %bb.z unwind label %bb.ak

bb.z:                                             ; preds = %_ZN7QStringD2Ev.exit63
  invoke void @_ZN8MdiChild14setCurrentFileERK7QString(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.aa unwind label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.ad = invoke noundef ptr @_ZNK9QTextEdit8documentEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.ab unwind label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 ptrtoint (ptr @_ZN13QTextDocument14contentsChangeEiii to i64), ptr %i.a, align 8, !tbaa !47, !noalias !76
  %.fca.1.gep14.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep14.i, align 8, !tbaa !47, !noalias !76
  store i64 ptrtoint (ptr @_ZN8MdiChild19documentWasModifiedEv to i64), ptr %i.b, align 8, !tbaa !47, !noalias !76
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !tbaa !47, !noalias !76
  %i.ae = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13
          to label %.noexc unwind label %bb.ak    ; 5 uses

.noexc:                                           ; preds = %bb.ab
  store i32 1, ptr %i.ae, align 4, !tbaa !48, !noalias !76
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM8MdiChildFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.af, align 8, !tbaa !52, !noalias !76
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 ptrtoint (ptr @_ZN8MdiChild19documentWasModifiedEv to i64), ptr %i.ag, align 8, !tbaa !54, !noalias !76
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !tbaa !54, !noalias !76
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %11, ptr noundef %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ae, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN13QTextDocument16staticMetaObjectE)
          to label %bb.ac unwind label %bb.ak

bb.ac:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #12
  call void @_ZN11QTextStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.an

bb.ad:                                            ; preds = %bb.t
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ae:                                            ; preds = %bb.u
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.v
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QCursorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn25 = phi { ptr, i32 } [ %i.aj, %bb.af ], [ %i.ai, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.al

bb.ah:                                            ; preds = %bb.w
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.x
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn27 = phi { ptr, i32 } [ %i.al, %bb.ai ], [ %i.ak, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.al

bb.ak:                                            ; preds = %.noexc, %bb.ab, %bb.aa, %bb.z, %_ZN7QStringD2Ev.exit63
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ag
  %.pn29 = phi { ptr, i32 } [ %i.am, %bb.ak ], [ %.pn27, %bb.aj ], [ %.pn25, %bb.ag ]
  call void @_ZN11QTextStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ad
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %bb.al ], [ %i.ah, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.ao

bb.an:                                            ; preds = %bb.ac, %_ZN7QStringD2Ev.exit57
  call void @_ZN5QFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i1 %i.c

bb.ao:                                            ; preds = %bb.am, %bb.s, %bb.h
  %.pn29.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %bb.am ], [ %.pn.pn.pn.pn.pn, %bb.s ], [ %i.t, %bb.h ]
  call void @_ZN5QFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %.pn29.pn.pn
}

declare void @_ZN5QFileC1ERK7QString(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZN5QFile4openE6QFlagsIN9QIODevice12OpenModeFlagEE(ptr noundef nonnull align 8 dereferenceable(16), i32) unnamed_addr #1

declare noundef i32 @_ZN11QMessageBox7warningEP7QWidgetRK7QStringS4_6QFlagsINS_14StandardButtonEES6_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i32, i32 noundef) local_unnamed_addr #1

declare void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i16) local_unnamed_addr #1

declare void @_ZNK9QIODevice11errorStringEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN11QTextStreamC1EP9QIODevice(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare void @_ZN15QGuiApplication17setOverrideCursorERK7QCursor(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN7QCursorC1EN2Qt11CursorShapeE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7QCursorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

declare void @_ZN9QTextEdit12setPlainTextERK7QString(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11QTextStream7readAllEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN15QGuiApplication21restoreOverrideCursorEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN8MdiChild14setCurrentFileERK7QString(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QFileInfo, align 8           ; 7 uses
  %3 = alloca %class.QString, align 8             ; 7 uses
  %4 = alloca %class.QFileInfo, align 8           ; 7 uses
  %5 = alloca %class.QString, align 8             ; 9 uses
  %6 = alloca %class.QString, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN9QFileInfoC1ERK7QString(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  invoke void @_ZNK9QFileInfo17canonicalFilePathEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 4 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !38
  store ptr %i.c, ptr %i.a, align 8, !tbaa !38
  store ptr %i.b, ptr %3, align 8, !tbaa !38
  %i.d = load atomic i32, ptr %i.b monotonic, align 4
  switch i32 %i.d, label %_ZN9QtPrivate8RefCount5derefEv.exit.i [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
    i32 -1, label %_ZN7QStringD2Ev.exit
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.b
  %7 = atomicrmw sub ptr %i.b, i32 1 seq_cst, align 4
  %.not.i = icmp eq i32 %7, 1
  br i1 %.not.i, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, label %_ZN7QStringD2Ev.exit

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i:    ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, %bb.b
  %i.e = phi ptr [ %.pre.i, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i ], [ %i.b, %bb.b ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.e, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.b, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
  call void @_ZN9QFileInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.f, align 8, !tbaa !35
  %i.g = call noundef ptr @_ZNK9QTextEdit8documentEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  call void @_ZN13QTextDocument11setModifiedEb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i1 noundef zeroext false)
  call void @_ZN7QWidget17setWindowModifiedEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12, !noalias !85
  call void @_ZN9QFileInfoC1ERK7QString(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !85
  invoke void @_ZNK9QFileInfo8fileNameEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.c

common.resume:                                    ; preds = %bb.g, %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn, %bb.j ], [ %i.aj, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9QFileInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12, !noalias !85
  br label %common.resume

bb.d:                                             ; preds = %_ZN7QStringD2Ev.exit
  call void @_ZN9QFileInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12, !noalias !85
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.i = load ptr, ptr %6, align 8, !tbaa !13, !noalias !88
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45, !noalias !88
  %i.l = add nsw i32 %i.k, 3
  invoke void @_ZN7QStringC1EiN2Qt14InitializationE(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.l, i32 noundef 0)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %5, align 8, !tbaa !13, !alias.scope !88 ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !46
  %i.q = add i64 %i.p, %i.n
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !13     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !45
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !46
  %i.y = add i64 %i.x, %i.v
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = sext i32 %i.u to i64                    ; 2 uses
  %i.ab = shl nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.r, ptr align 1 %i.z, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.aa
  call void @_ZN21QAbstractConcatenable14appendLatin1ToEPKciP5QChar(ptr noundef nonnull @.str.1, i32 noundef 3, ptr noundef %i.ac) #12
  invoke void @_ZN7QWidget14setWindowTitleERK7QString(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %5, align 8, !tbaa !13    ; 3 uses
  %i.ae = load atomic i32, ptr %i.ad monotonic, align 4
  switch i32 %i.ae, label %_ZN9QtPrivate8RefCount5derefEv.exit.i8 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i7
    i32 -1, label %_ZN7QStringD2Ev.exit12
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i8:           ; preds = %bb.f
  %8 = atomicrmw sub ptr %i.ad, i32 1 seq_cst, align 4
  %.not.i9 = icmp eq i32 %8, 1
  br i1 %.not.i9, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i10, label %_ZN7QStringD2Ev.exit12

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i10: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i8
  %.pre.i11 = load ptr, ptr %5, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i7

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i7:   ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i10, %bb.f
  %i.af = phi ptr [ %.pre.i11, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i10 ], [ %i.ad, %bb.f ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.af, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit12

_ZN7QStringD2Ev.exit12:                           ; preds = %bb.f, %_ZN9QtPrivate8RefCount5derefEv.exit.i8, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i7
  %i.ag = load ptr, ptr %6, align 8, !tbaa !13    ; 3 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4
  switch i32 %i.ah, label %_ZN9QtPrivate8RefCount5derefEv.exit.i14 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i13
    i32 -1, label %_ZN7QStringD2Ev.exit18
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i14:          ; preds = %_ZN7QStringD2Ev.exit12
  %9 = atomicrmw sub ptr %i.ag, i32 1 seq_cst, align 4
  %.not.i15 = icmp eq i32 %9, 1
  br i1 %.not.i15, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i16, label %_ZN7QStringD2Ev.exit18

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i16: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i14
  %.pre.i17 = load ptr, ptr %6, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i13

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i13:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i16, %_ZN7QStringD2Ev.exit12
  %i.ai = phi ptr [ %.pre.i17, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i16 ], [ %i.ag, %_ZN7QStringD2Ev.exit12 ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.ai, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit18

_ZN7QStringD2Ev.exit18:                           ; preds = %_ZN7QStringD2Ev.exit12, %_ZN9QtPrivate8RefCount5derefEv.exit.i14, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void

bb.g:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9QFileInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %common.resume

bb.h:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.al, %bb.i ], [ %i.ak, %bb.h ]
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %common.resume
}

; Function Attrs: nounwind
declare void @_ZN11QTextStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5QFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8MdiChild4saveEv(ptr noundef nonnull align 8 dereferenceable(113) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !35, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN8MdiChild6saveAsEv(ptr noundef nonnull align 8 dereferenceable(113) %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = tail call noundef zeroext i1 @_ZN8MdiChild8saveFileERK7QString(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8MdiChild6saveAsEv(ptr noundef nonnull align 8 dereferenceable(113) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QString, align 8             ; 9 uses
  %2 = alloca %class.QString, align 8             ; 8 uses
  %3 = alloca %class.QString, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) @_ZN8MdiChild16staticMetaObjectE, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef -1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr @_ZN10QArrayData11shared_nullE, ptr %3, align 8, !tbaa !13
  invoke void @_ZN11QFileDialog15getSaveFileNameEP7QWidgetRK7QStringS4_S4_PS2_6QFlagsINS_6OptionEE(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %1, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null, i32 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !13     ; 3 uses
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  switch i32 %i.c, label %_ZN9QtPrivate8RefCount5derefEv.exit.i [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
    i32 -1, label %_ZN7QStringD2Ev.exit
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.b
  %4 = atomicrmw sub ptr %i.b, i32 1 seq_cst, align 4
  %.not.i = icmp eq i32 %4, 1
  br i1 %.not.i, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, label %_ZN7QStringD2Ev.exit

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i:    ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, %bb.b
  %i.d = phi ptr [ %.pre.i, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i ], [ %i.b, %bb.b ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.d, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.b, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.e = load ptr, ptr %2, align 8, !tbaa !13     ; 3 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 4
  switch i32 %i.f, label %_ZN9QtPrivate8RefCount5derefEv.exit.i7 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i6
    i32 -1, label %_ZN7QStringD2Ev.exit11
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i7:           ; preds = %_ZN7QStringD2Ev.exit
  %5 = atomicrmw sub ptr %i.e, i32 1 seq_cst, align 4
  %.not.i8 = icmp eq i32 %5, 1
  br i1 %.not.i8, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i9, label %_ZN7QStringD2Ev.exit11

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i9: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i7
  %.pre.i10 = load ptr, ptr %2, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i6

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i6:   ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i9, %_ZN7QStringD2Ev.exit
  %i.g = phi ptr [ %.pre.i10, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i9 ], [ %i.e, %_ZN7QStringD2Ev.exit ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.g, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit11

_ZN7QStringD2Ev.exit11:                           ; preds = %_ZN7QStringD2Ev.exit, %_ZN9QtPrivate8RefCount5derefEv.exit.i7, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.h = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !45
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.g

bb.d:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #12
  br label %bb.g

bb.e:                                             ; preds = %_ZN7QStringD2Ev.exit11
  %i.n = invoke noundef zeroext i1 @_ZN8MdiChild8saveFileERK7QString(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %._crit_edge unwind label %bb.d

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %1, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %_ZN7QStringD2Ev.exit11
  %i.o = phi ptr [ %i.h, %_ZN7QStringD2Ev.exit11 ], [ %.pre, %._crit_edge ] ; 3 uses
  %.04 = phi i1 [ false, %_ZN7QStringD2Ev.exit11 ], [ %i.n, %._crit_edge ]
  %i.p = load atomic i32, ptr %i.o monotonic, align 4
  switch i32 %i.p, label %_ZN9QtPrivate8RefCount5derefEv.exit.i13 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i12
    i32 -1, label %_ZN7QStringD2Ev.exit17
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i13:          ; preds = %bb.f
  %6 = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %.not.i14 = icmp eq i32 %6, 1
  br i1 %.not.i14, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i15, label %_ZN7QStringD2Ev.exit17

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i15: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i13
  %.pre.i16 = load ptr, ptr %1, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i12

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i12:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i15, %bb.f
  %i.q = phi ptr [ %.pre.i16, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i15 ], [ %i.o, %bb.f ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.q, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit17

_ZN7QStringD2Ev.exit17:                           ; preds = %bb.f, %_ZN9QtPrivate8RefCount5derefEv.exit.i13, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i1 %.04

bb.g:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8MdiChild8saveFileERK7QString(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QFile, align 8               ; 9 uses
  %3 = alloca %class.QString, align 8             ; 8 uses
  %4 = alloca %class.QString, align 8             ; 8 uses
  %5 = alloca %class.QString, align 8             ; 8 uses
  %6 = alloca %class.QString, align 8             ; 8 uses
  %7 = alloca %class.QString, align 8             ; 8 uses
  %8 = alloca %class.QTextStream, align 8         ; 9 uses
  %9 = alloca %class.QCursor, align 8             ; 7 uses
  %10 = alloca %class.QString, align 8            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZN5QFileC1ERK7QString(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = invoke noundef zeroext i1 @_ZN5QFile4openE6QFlagsIN9QIODevice12OpenModeFlagEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 18)
          to label %bb.b unwind label %bb.h       ; 2 uses

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) @_ZN8MdiChild16staticMetaObjectE, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef -1)
          to label %_ZN8MdiChild2trEPKcS1_i.exit unwind label %bb.i

_ZN8MdiChild2trEPKcS1_i.exit:                     ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) @_ZN8MdiChild16staticMetaObjectE, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef -1)
          to label %_ZN8MdiChild2trEPKcS1_i.exit30 unwind label %bb.j

_ZN8MdiChild2trEPKcS1_i.exit30:                   ; preds = %_ZN8MdiChild2trEPKcS1_i.exit
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i16 32)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_ZN8MdiChild2trEPKcS1_i.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  invoke void @_ZNK9QIODevice11errorStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 0, i16 32)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.b = invoke noundef i32 @_ZN11QMessageBox7warningEP7QWidgetRK7QStringS4_6QFlagsINS_14StandardButtonEES6_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 1024, i32 noundef 0)
          to label %bb.g unwind label %bb.n       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.c = load ptr, ptr %4, align 8, !tbaa !13     ; 3 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  switch i32 %i.d, label %_ZN9QtPrivate8RefCount5derefEv.exit.i [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
    i32 -1, label %_ZN7QStringD2Ev.exit
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.g
  %11 = atomicrmw sub ptr %i.c, i32 1 seq_cst, align 4
  %.not.i = icmp eq i32 %11, 1
  br i1 %.not.i, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, label %_ZN7QStringD2Ev.exit

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i:    ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, %bb.g
  %i.e = phi ptr [ %.pre.i, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i ], [ %i.c, %bb.g ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.e, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.g, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
  %i.f = load ptr, ptr %7, align 8, !tbaa !13     ; 3 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  switch i32 %i.g, label %_ZN9QtPrivate8RefCount5derefEv.exit.i32 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i31
    i32 -1, label %_ZN7QStringD2Ev.exit36
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i32:          ; preds = %_ZN7QStringD2Ev.exit
  %12 = atomicrmw sub ptr %i.f, i32 1 seq_cst, align 4
  %.not.i33 = icmp eq i32 %12, 1
  br i1 %.not.i33, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i34, label %_ZN7QStringD2Ev.exit36

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i34: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i32
  %.pre.i35 = load ptr, ptr %7, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i31

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i31:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i34, %_ZN7QStringD2Ev.exit
  %i.h = phi ptr [ %.pre.i35, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i34 ], [ %i.f, %_ZN7QStringD2Ev.exit ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.h, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit36

_ZN7QStringD2Ev.exit36:                           ; preds = %_ZN7QStringD2Ev.exit, %_ZN9QtPrivate8RefCount5derefEv.exit.i32, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.i = load ptr, ptr %5, align 8, !tbaa !13     ; 3 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 4
  switch i32 %i.j, label %_ZN9QtPrivate8RefCount5derefEv.exit.i38 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i37
    i32 -1, label %_ZN7QStringD2Ev.exit42
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i38:          ; preds = %_ZN7QStringD2Ev.exit36
  %13 = atomicrmw sub ptr %i.i, i32 1 seq_cst, align 4
  %.not.i39 = icmp eq i32 %13, 1
  br i1 %.not.i39, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i40, label %_ZN7QStringD2Ev.exit42

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i40: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i38
  %.pre.i41 = load ptr, ptr %5, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i37

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i37:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i40, %_ZN7QStringD2Ev.exit36
  %i.k = phi ptr [ %.pre.i41, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i40 ], [ %i.i, %_ZN7QStringD2Ev.exit36 ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.k, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit42

_ZN7QStringD2Ev.exit42:                           ; preds = %_ZN7QStringD2Ev.exit36, %_ZN9QtPrivate8RefCount5derefEv.exit.i38, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i37
  %i.l = load ptr, ptr %6, align 8, !tbaa !13     ; 3 uses
  %i.m = load atomic i32, ptr %i.l monotonic, align 4
  switch i32 %i.m, label %_ZN9QtPrivate8RefCount5derefEv.exit.i44 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i43
    i32 -1, label %_ZN7QStringD2Ev.exit48
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i44:          ; preds = %_ZN7QStringD2Ev.exit42
  %14 = atomicrmw sub ptr %i.l, i32 1 seq_cst, align 4
  %.not.i45 = icmp eq i32 %14, 1
  br i1 %.not.i45, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i46, label %_ZN7QStringD2Ev.exit48

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i46: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i44
  %.pre.i47 = load ptr, ptr %6, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i43

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i43:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i46, %_ZN7QStringD2Ev.exit42
  %i.n = phi ptr [ %.pre.i47, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i46 ], [ %i.l, %_ZN7QStringD2Ev.exit42 ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.n, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit48

_ZN7QStringD2Ev.exit48:                           ; preds = %_ZN7QStringD2Ev.exit42, %_ZN9QtPrivate8RefCount5derefEv.exit.i44, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.o = load ptr, ptr %3, align 8, !tbaa !13     ; 3 uses
  %i.p = load atomic i32, ptr %i.o monotonic, align 4
  switch i32 %i.p, label %_ZN9QtPrivate8RefCount5derefEv.exit.i50 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i49
    i32 -1, label %_ZN7QStringD2Ev.exit54
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i50:          ; preds = %_ZN7QStringD2Ev.exit48
  %15 = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %.not.i51 = icmp eq i32 %15, 1
  br i1 %.not.i51, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i52, label %_ZN7QStringD2Ev.exit54

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i52: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i50
  %.pre.i53 = load ptr, ptr %3, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i49

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i49:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i52, %_ZN7QStringD2Ev.exit48
  %i.q = phi ptr [ %.pre.i53, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i52 ], [ %i.o, %_ZN7QStringD2Ev.exit48 ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.q, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit54

_ZN7QStringD2Ev.exit54:                           ; preds = %_ZN7QStringD2Ev.exit48, %_ZN9QtPrivate8RefCount5derefEv.exit.i50, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.an

bb.h:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.i:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %_ZN8MdiChild2trEPKcS1_i.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.k:                                             ; preds = %_ZN8MdiChild2trEPKcS1_i.exit30
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.l:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.x, %bb.n ], [ %i.w, %bb.m ]
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.v, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.p ], [ %i.u, %bb.k ]
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.j
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.q ], [ %i.t, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.r ], [ %i.s, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.ao

bb.t:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  invoke void @_ZN11QTextStreamC1EP9QIODevice(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %2)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  invoke void @_ZN7QCursorC1EN2Qt11CursorShapeE(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 3)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN15QGuiApplication17setOverrideCursorERK7QCursor(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.w unwind label %bb.af

bb.w:                                             ; preds = %bb.v
  call void @_ZN7QCursorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  invoke void @_ZN11QTextStream8setCodecEPKc(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.6)
          to label %bb.x unwind label %bb.ah

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  invoke void @_ZNK9QTextEdit11toPlainTextEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.y unwind label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.z unwind label %bb.aj      ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.z = load ptr, ptr %10, align 8, !tbaa !13    ; 3 uses
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4
  switch i32 %i.aa, label %_ZN9QtPrivate8RefCount5derefEv.exit.i56 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i55
    i32 -1, label %_ZN7QStringD2Ev.exit60
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i56:          ; preds = %bb.z
  %16 = atomicrmw sub ptr %i.z, i32 1 seq_cst, align 4
  %.not.i57 = icmp eq i32 %16, 1
  br i1 %.not.i57, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i58, label %_ZN7QStringD2Ev.exit60

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i58: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i56
  %.pre.i59 = load ptr, ptr %10, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i55

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i55:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i58, %bb.z
  %i.ab = phi ptr [ %.pre.i59, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i58 ], [ %i.z, %bb.z ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.ab, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit60

_ZN7QStringD2Ev.exit60:                           ; preds = %bb.z, %_ZN9QtPrivate8RefCount5derefEv.exit.i56, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  invoke void @_ZN11QTextStream5flushEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %_ZN7QStringD2Ev.exit60
  invoke void @_ZN15QGuiApplication21restoreOverrideCursorEv()
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN8MdiChild14setCurrentFileERK7QString(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN11QTextStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.an

bb.ad:                                            ; preds = %bb.t
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ae:                                            ; preds = %bb.u
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.v
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QCursorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn22 = phi { ptr, i32 } [ %i.ae, %bb.af ], [ %i.ad, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.al

bb.ah:                                            ; preds = %bb.ab, %bb.aa, %_ZN7QStringD2Ev.exit60, %bb.w
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ai:                                            ; preds = %bb.x
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.y
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #12
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn24 = phi { ptr, i32 } [ %i.ah, %bb.aj ], [ %i.ag, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah, %bb.ag
  %.pn26 = phi { ptr, i32 } [ %i.af, %bb.ah ], [ %.pn24, %bb.ak ], [ %.pn22, %bb.ag ]
  call void @_ZN11QTextStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ad
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.al ], [ %i.ac, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.ao

bb.an:                                            ; preds = %bb.ac, %_ZN7QStringD2Ev.exit54
  call void @_ZN5QFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i1 %i.a

bb.ao:                                            ; preds = %bb.am, %bb.s, %bb.h
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.am ], [ %.pn.pn.pn.pn.pn, %bb.s ], [ %i.r, %bb.h ]
  call void @_ZN5QFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %.pn26.pn.pn
}

declare void @_ZN11QFileDialog15getSaveFileNameEP7QWidgetRK7QStringS4_S4_PS2_6QFlagsINS_6OptionEE(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32) local_unnamed_addr #1

declare void @_ZN11QTextStream8setCodecEPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK9QTextEdit11toPlainTextEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN11QTextStream5flushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN8MdiChild23userFriendlyCurrentFileEv(ptr dead_on_unwind noalias writable sret(%class.QString) align 8 %0, ptr noundef nonnull align 8 dereferenceable(113) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QFileInfo, align 8           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12, !noalias !91
  call void @_ZN9QFileInfoC1ERK7QString(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !91
  invoke void @_ZNK9QFileInfo8fileNameEv(ptr dead_on_unwind writable sret(%class.QString) align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN8MdiChild12strippedNameERK7QString.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9QFileInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12, !noalias !91
  resume { ptr, i32 } %i.b

_ZN8MdiChild12strippedNameERK7QString.exit:       ; preds = %bb.a
  call void @_ZN9QFileInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12, !noalias !91
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8MdiChild12strippedNameERK7QString(ptr dead_on_unwind noalias writable sret(%class.QString) align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(113) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QFileInfo, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN9QFileInfoC1ERK7QString(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
  invoke void @_ZNK9QFileInfo8fileNameEv(ptr dead_on_unwind writable sret(%class.QString) align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN9QFileInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9QFileInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN8MdiChild10closeEventEP11QCloseEvent(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN8MdiChild9maybeSaveEv(ptr noundef nonnull align 8 dereferenceable(113) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2
  %i.d = and i16 %i.c, -5
  %masksel = select i1 %i.a, i16 4, i16 0
  %.sink = or disjoint i16 %i.d, %masksel
  store i16 %.sink, ptr %i.b, align 2
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8MdiChild9maybeSaveEv(ptr noundef nonnull align 8 dereferenceable(113) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QFileInfo, align 8           ; 7 uses
  %2 = alloca %class.QString, align 8             ; 8 uses
  %3 = alloca %class.QString, align 8             ; 8 uses
  %4 = alloca %class.QString, align 8             ; 8 uses
  %5 = alloca %class.QString, align 8             ; 8 uses
  %i.a = tail call noundef ptr @_ZNK9QTextEdit8documentEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.b = tail call noundef zeroext i1 @_ZNK13QTextDocument10isModifiedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  br i1 %i.b, label %bb.b, label %_ZN8MdiChild4saveEv.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) @_ZN8MdiChild16staticMetaObjectE, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) @_ZN8MdiChild16staticMetaObjectE, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef -1)
          to label %_ZN8MdiChild2trEPKcS1_i.exit unwind label %bb.j

_ZN8MdiChild2trEPKcS1_i.exit:                     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12, !noalias !96
  invoke void @_ZN9QFileInfoC1ERK7QString(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %_ZN8MdiChild2trEPKcS1_i.exit
  invoke void @_ZNK9QFileInfo8fileNameEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9QFileInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12, !noalias !96
  br label %.body

bb.d:                                             ; preds = %.noexc
  call void @_ZN9QFileInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12, !noalias !96
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0, i16 32)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.e = invoke noundef i32 @_ZN11QMessageBox7warningEP7QWidgetRK7QStringS4_6QFlagsINS_14StandardButtonEES6_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 12584960, i32 noundef 0)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %3, align 8, !tbaa !13     ; 3 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  switch i32 %i.g, label %_ZN9QtPrivate8RefCount5derefEv.exit.i [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
    i32 -1, label %_ZN7QStringD2Ev.exit
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.f
  %6 = atomicrmw sub ptr %i.f, i32 1 seq_cst, align 4
  %.not.i = icmp eq i32 %6, 1
  br i1 %.not.i, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, label %_ZN7QStringD2Ev.exit

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i:    ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, %bb.f
  %i.h = phi ptr [ %.pre.i, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i ], [ %i.f, %bb.f ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.h, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.f, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
  %i.i = load ptr, ptr %5, align 8, !tbaa !13     ; 3 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 4
  switch i32 %i.j, label %_ZN9QtPrivate8RefCount5derefEv.exit.i17 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i16
    i32 -1, label %_ZN7QStringD2Ev.exit21
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i17:          ; preds = %_ZN7QStringD2Ev.exit
  %7 = atomicrmw sub ptr %i.i, i32 1 seq_cst, align 4
  %.not.i18 = icmp eq i32 %7, 1
  br i1 %.not.i18, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i19, label %_ZN7QStringD2Ev.exit21

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i19: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i17
  %.pre.i20 = load ptr, ptr %5, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i16

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i16:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i19, %_ZN7QStringD2Ev.exit
  %i.k = phi ptr [ %.pre.i20, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i19 ], [ %i.i, %_ZN7QStringD2Ev.exit ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.k, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit21

_ZN7QStringD2Ev.exit21:                           ; preds = %_ZN7QStringD2Ev.exit, %_ZN9QtPrivate8RefCount5derefEv.exit.i17, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.l = load ptr, ptr %4, align 8, !tbaa !13     ; 3 uses
  %i.m = load atomic i32, ptr %i.l monotonic, align 4
  switch i32 %i.m, label %_ZN9QtPrivate8RefCount5derefEv.exit.i23 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i22
    i32 -1, label %_ZN7QStringD2Ev.exit27
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i23:          ; preds = %_ZN7QStringD2Ev.exit21
  %8 = atomicrmw sub ptr %i.l, i32 1 seq_cst, align 4
  %.not.i24 = icmp eq i32 %8, 1
  br i1 %.not.i24, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i25, label %_ZN7QStringD2Ev.exit27

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i25: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i23
  %.pre.i26 = load ptr, ptr %4, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i22

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i22:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i25, %_ZN7QStringD2Ev.exit21
  %i.n = phi ptr [ %.pre.i26, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i25 ], [ %i.l, %_ZN7QStringD2Ev.exit21 ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.n, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit27

_ZN7QStringD2Ev.exit27:                           ; preds = %_ZN7QStringD2Ev.exit21, %_ZN9QtPrivate8RefCount5derefEv.exit.i23, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.o = load ptr, ptr %2, align 8, !tbaa !13     ; 3 uses
  %i.p = load atomic i32, ptr %i.o monotonic, align 4
  switch i32 %i.p, label %_ZN9QtPrivate8RefCount5derefEv.exit.i29 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i28
    i32 -1, label %_ZN7QStringD2Ev.exit33
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i29:          ; preds = %_ZN7QStringD2Ev.exit27
  %9 = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %.not.i30 = icmp eq i32 %9, 1
  br i1 %.not.i30, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i31, label %_ZN7QStringD2Ev.exit33

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i31: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i29
  %.pre.i32 = load ptr, ptr %2, align 8, !tbaa !13
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i28

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i28:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i31, %_ZN7QStringD2Ev.exit27
  %i.q = phi ptr [ %.pre.i32, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i31 ], [ %i.o, %_ZN7QStringD2Ev.exit27 ]
  call void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef %i.q, i64 noundef 2, i64 noundef 8) #12
  br label %_ZN7QStringD2Ev.exit33

_ZN7QStringD2Ev.exit33:                           ; preds = %_ZN7QStringD2Ev.exit27, %_ZN9QtPrivate8RefCount5derefEv.exit.i29, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  switch i32 %i.e, label %_ZN8MdiChild4saveEv.exit [
    i32 2048, label %bb.g
    i32 4194304, label %_ZN8MdiChild4saveEv.exit.thread
  ]

bb.g:                                             ; preds = %_ZN7QStringD2Ev.exit33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load i8, ptr %i.r, align 8, !tbaa !35, !range !55, !noundef !56
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = call noundef zeroext i1 @_ZN8MdiChild6saveAsEv(ptr noundef nonnull align 8 dereferenceable(113) %0)
  br label %_ZN8MdiChild4saveEv.exit

bb.i:                                             ; preds = %bb.g
  %i.v = call noundef zeroext i1 @_ZN8MdiChild8saveFileERK7QString(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN8MdiChild4saveEv.exit

bb.j:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.k:                                             ; preds = %_ZN8MdiChild2trEPKcS1_i.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.z, %bb.m ], [ %i.y, %bb.l ]
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #12
  br label %.body

.body:                                            ; preds = %bb.k, %bb.c, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.x, %bb.k ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.w, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @_ZN7QStringD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %.pn.pn.pn

_ZN8MdiChild4saveEv.exit.thread:                  ; preds = %_ZN7QStringD2Ev.exit33
  br label %_ZN8MdiChild4saveEv.exit

_ZN8MdiChild4saveEv.exit:                         ; preds = %bb.i, %bb.h, %bb.a, %_ZN7QStringD2Ev.exit33, %_ZN8MdiChild4saveEv.exit.thread
  %.1 = phi i1 [ true, %bb.a ], [ true, %_ZN7QStringD2Ev.exit33 ], [ %i.v, %bb.i ], [ %i.u, %bb.h ], [ false, %_ZN8MdiChild4saveEv.exit.thread ]
  ret i1 %.1
}

declare void @_ZN7QWidget17setWindowModifiedEb(ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK13QTextDocument10isModifiedEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN9QFileInfoC1ERK7QString(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZNK9QFileInfo17canonicalFilePathEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN9QFileInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

declare void @_ZN13QTextDocument11setModifiedEb(ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZNK9QFileInfo8fileNameEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8MdiChild11loadPreviewERK7QString(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QPoint, align 4              ; 5 uses
  %3 = alloca %class.QSize, align 4               ; 5 uses
  %4 = alloca %class.QList, align 8               ; 8 uses
  %5 = alloca %class.QList, align 8               ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #13, !noalias !100 ; 4 uses
  invoke void @_ZN11ImageViewerC1Ev(ptr noundef nonnull align 8 dereferenceable(168) %i.c)
          to label %_ZSt11make_uniqueI11ImageViewerJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.c, !noalias !100

common.resume:                                    ; preds = %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %.pn, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 168) #14, !noalias !100
  br label %common.resume

_ZSt11make_uniqueI11ImageViewerJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !37
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI11ImageViewerEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteI11ImageViewerEclEPS0_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueI11ImageViewerJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(168) %i.e) #12, !inline_history !99
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !37
  br label %_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteI11ImageViewerEclEPS0_.exit.i.i.i.i, %_ZSt11make_uniqueI11ImageViewerJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.i = phi ptr [ %.pre, %_ZNKSt14default_deleteI11ImageViewerEclEPS0_.exit.i.i.i.i ], [ %i.c, %_ZSt11make_uniqueI11ImageViewerJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %0, ptr %i.j, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !116
  %i.o = tail call noundef ptr @_ZN8QMdiArea12addSubWindowEP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef %i.i, i32 0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i32 600, ptr %3, align 4, !tbaa !118
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 400, ptr %i.p, align 4, !tbaa !119
  call void @_ZN7QWidget6resizeERK5QSize(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !116
  call void @_ZNK8QMdiArea13subWindowListENS_11WindowOrderE(ptr dead_on_unwind nonnull writable sret(%class.QList) align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i32 noundef 0)
  %i.t = load ptr, ptr %4, align 8, !tbaa !122    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !124
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !116
  invoke void @_ZNK8QMdiArea13subWindowListENS_11WindowOrderE(ptr dead_on_unwind nonnull writable sret(%class.QList) align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i32 noundef 0)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EED2Ev.exit
  %i.ab = sub nsw i32 %i.v, %i.x
  %i.ac = mul nsw i32 %i.ab, 5
  %i.ad = load ptr, ptr %5, align 8, !tbaa !122   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !124
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !125
  %i.ai = sub nsw i32 %i.af, %i.ah
  %i.aj = mul nsw i32 %i.ai, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i32 %i.ac, ptr %2, align 4, !tbaa !127
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !128
  invoke void @_ZN7QWidget4moveERK6QPoint(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.al = load ptr, ptr %5, align 8, !tbaa !47    ; 3 uses
  %i.am = load atomic i32, ptr %i.al monotonic, align 4
  switch i32 %i.am, label %_ZN9QtPrivate8RefCount5derefEv.exit.i [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
    i32 -1, label %_ZN5QListIP13QMdiSubWindowED2Ev.exit
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.e
  %6 = atomicrmw sub ptr %i.al, i32 1 seq_cst, align 4
  %.not.i11 = icmp eq i32 %6, 1
  br i1 %.not.i11, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, label %_ZN5QListIP13QMdiSubWindowED2Ev.exit

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !47
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i:    ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i, %bb.e
  %i.an = phi ptr [ %.pre.i, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i ], [ %i.al, %bb.e ]
  invoke void @_ZN9QListData7disposeEPNS_4DataE(ptr noundef %i.an)
          to label %_ZN5QListIP13QMdiSubWindowED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #15
  unreachable

_ZN5QListIP13QMdiSubWindowED2Ev.exit:             ; preds = %bb.e, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.aq = load ptr, ptr %4, align 8, !tbaa !47    ; 3 uses
  %i.ar = load atomic i32, ptr %i.aq monotonic, align 4
  switch i32 %i.ar, label %_ZN9QtPrivate8RefCount5derefEv.exit.i13 [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i12
    i32 -1, label %_ZN5QListIP13QMdiSubWindowED2Ev.exit17
  ]

_ZN9QtPrivate8RefCount5derefEv.exit.i13:          ; preds = %_ZN5QListIP13QMdiSubWindowED2Ev.exit
  %7 = atomicrmw sub ptr %i.aq, i32 1 seq_cst, align 4
  %.not.i14 = icmp eq i32 %7, 1
  br i1 %.not.i14, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i15, label %_ZN5QListIP13QMdiSubWindowED2Ev.exit17

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i15: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i13
  %.pre.i16 = load ptr, ptr %4, align 8, !tbaa !47
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i12

_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i12:  ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i15, %_ZN5QListIP13QMdiSubWindowED2Ev.exit
  %i.as = phi ptr [ %.pre.i16, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge.i15 ], [ %i.aq, %_ZN5QListIP13QMdiSubWindowED2Ev.exit ]
  invoke void @_ZN9QListData7disposeEPNS_4DataE(ptr noundef %i.as)
          to label %_ZN5QListIP13QMdiSubWindowED2Ev.exit17 unwind label %bb.g

bb.g:                                             ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i12
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #15
  unreachable

_ZN5QListIP13QMdiSubWindowED2Ev.exit17:           ; preds = %_ZN5QListIP13QMdiSubWindowED2Ev.exit, %_ZN9QtPrivate8RefCount5derefEv.exit.i13, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store ptr %i.o, ptr %i.aw, align 8, !tbaa !129
  br label %bb.k

bb.h:                                             ; preds = %_ZNSt10unique_ptrI11ImageViewerSt14default_deleteIS0_EED2Ev.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QListIP13QMdiSubWindowED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %i.ax, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @_ZN5QListIP13QMdiSubWindowED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %common.resume

bb.k:                                             ; preds = %_ZN5QListIP13QMdiSubWindowED2Ev.exit17, %bb.a
  %i.az = phi ptr [ %i.av, %_ZN5QListIP13QMdiSubWindowED2Ev.exit17 ], [ %i.b, %bb.a ]
  %i.ba = call noundef zeroext i1 @_ZN11ImageViewer4openERK7QString(ptr noundef nonnull align 8 dereferenceable(168) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !37
  call void @_ZN7QWidget4showEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bb)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret i1 %i.ba
}

declare noundef ptr @_ZN8QMdiArea12addSubWindowEP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32) local_unnamed_addr #1

declare void @_ZNK8QMdiArea13subWindowListENS_11WindowOrderE(ptr dead_on_unwind writable sret(%class.QList) align 8, ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5QListIP13QMdiSubWindowED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  switch i32 %i.b, label %_ZN9QtPrivate8RefCount5derefEv.exit [
    i32 0, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2
    i32 -1, label %_ZN5QListIP13QMdiSubWindowE7deallocEPN9QListData4DataE.exit
  ]

_ZN9QtPrivate8RefCount5derefEv.exit:              ; preds = %bb.a
  %1 = atomicrmw sub ptr %i.a, i32 1 seq_cst, align 4
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge, label %_ZN5QListIP13QMdiSubWindowE7deallocEPN9QListData4DataE.exit

_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge: ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !47
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread2

_ZN9QtPrivate8RefCount5derefEv.exit.thread2:      ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge, %bb.a
  %i.c = phi ptr [ %.pre, %_ZN9QtPrivate8RefCount5derefEv.exit._ZN9QtPrivate8RefCount5derefEv.exit.thread2_crit_edge ], [ %i.a, %bb.a ]
  invoke void @_ZN9QListData7disposeEPNS_4DataE(ptr noundef %i.c)
          to label %_ZN5QListIP13QMdiSubWindowE7deallocEPN9QListData4DataE.exit unwind label %bb.b

_ZN5QListIP13QMdiSubWindowE7deallocEPN9QListData4DataE.exit: ; preds = %bb.a, %_ZN9QtPrivate8RefCount5derefEv.exit.thread2, %_ZN9QtPrivate8RefCount5derefEv.exit
  ret void

bb.b:                                             ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.thread2
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #15
  unreachable
}

declare noundef zeroext i1 @_ZN11ImageViewer4openERK7QString(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN7QWidget4showEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN8MdiChild9firstTimeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !36, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN10QArrayData10deallocateEPS_mm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i32 noundef, i32 noundef, i16) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN7QWidget6resizeERK5QSize(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN7QWidget4moveERK6QPoint(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN7QStringC1EiN2Qt14InitializationE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN21QAbstractConcatenable14appendLatin1ToEPKciP5QChar(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind writable sret(%"class.QMetaObject::Connection") align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9QtPrivate11QSlotObjectIM8MdiChildFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 32) #14
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.unpack12 = load i64, ptr %i.b, align 8, !tbaa !54 ; 3 uses
  %.elt13 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.unpack14 = load i64, ptr %.elt13, align 8, !tbaa !54
  %i.c = getelementptr inbounds i8, ptr %2, i64 %.unpack14 ; 2 uses
  %i.d = and i64 %.unpack12, 1
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.f = getelementptr i8, ptr %i.e, i64 %.unpack12
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load ptr, ptr %i.g, align 8, !nosanitize !56
  br label %_ZN9QtPrivate15FunctionPointerIM8MdiChildFvvEE4callINS_4ListIJEEEvEEvS3_PS1_PPv.exit

bb.f:                                             ; preds = %bb.d
  %i.i = inttoptr i64 %.unpack12 to ptr
  br label %_ZN9QtPrivate15FunctionPointerIM8MdiChildFvvEE4callINS_4ListIJEEEvEEvS3_PS1_PPv.exit

_ZN9QtPrivate15FunctionPointerIM8MdiChildFvvEE4callINS_4ListIJEEEvEEvS3_PS1_PPv.exit: ; preds = %bb.e, %bb.f
  %i.j = phi ptr [ %i.h, %bb.e ], [ %i.i, %bb.f ]
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(113) %i.c), !inline_history !130
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %.unpack = load i64, ptr %3, align 8, !tbaa !47 ; 2 uses
  %.elt7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.unpack8 = load i64, ptr %.elt7, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.unpack9 = load i64, ptr %i.k, align 8, !tbaa !54
  %.elt10 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.unpack11 = load i64, ptr %.elt10, align 8, !tbaa !54
  %i.l = icmp eq i64 %.unpack, %.unpack9
  %i.m = icmp eq i64 %.unpack, 0
  %i.n = icmp eq i64 %.unpack8, %.unpack11
  %i.o = or i1 %i.m, %i.n
  %i.p = and i1 %i.l, %i.o
  %i.q = zext i1 %i.p to i8
  store i8 %i.q, ptr %4, align 1, !tbaa !131
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %bb.g, %_ZN9QtPrivate15FunctionPointerIM8MdiChildFvvEE4callINS_4ListIJEEEvEEvS3_PS1_PPv.exit, %bb.a
  ret void
}

declare void @_ZN11ImageViewerC1Ev(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #1

declare void @_ZN9QListData7disposeEPNS_4DataE(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS15QTypedArrayDataItE", !10, i64 0}
!12 = !{!"_ZTS7QString", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"p1 _ZTS11ImageViewer", !10, i64 0}
!15 = !{!"_ZTSSt10_Head_baseILm0EP11ImageViewerLb0EE", !14, i64 0}
!16 = !{!"p1 _ZTS11QObjectData", !10, i64 0}
!17 = !{!"_ZTS14QScopedPointerI11QObjectData21QScopedPointerDeleterIS0_EE", !16, i64 0}
!18 = !{!"_ZTS7QObject", !17, i64 8}
!19 = !{!"short", !4, i64 0}
!20 = !{!"p1 _ZTS19QPaintDevicePrivate", !10, i64 0}
!21 = !{!"_ZTS12QPaintDevice", !19, i64 8, !20, i64 16}
!22 = !{!"p1 _ZTS11QWidgetData", !10, i64 0}
!23 = !{!"_ZTS7QWidget", !18, i64 0, !21, i64 16, !22, i64 40}
!24 = !{!"_ZTS6QFrame", !23, i64 0}
!25 = !{!"_ZTS19QAbstractScrollArea", !24, i64 0}
!26 = !{!"_ZTS9QTextEdit", !25, i64 0}
!27 = !{!"bool", !4, i64 0}
!28 = !{!"_ZTSSt11_Tuple_implILm0EJP11ImageViewerSt14default_deleteIS0_EEE", !15, i64 0}
!29 = !{!"_ZTSSt5tupleIJP11ImageViewerSt14default_deleteIS0_EEE", !28, i64 0}
!30 = !{!"_ZTSSt15__uniq_ptr_implI11ImageViewerSt14default_deleteIS0_EE", !29, i64 0}
!31 = !{!"_ZTSSt15__uniq_ptr_dataI11ImageViewerSt14default_deleteIS0_ELb1ELb1EE", !30, i64 0}
end_hunk_0
