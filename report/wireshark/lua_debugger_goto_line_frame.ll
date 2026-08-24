Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/lua_debugger_goto_line_frame?download=true
inline.NumInlined: 154
inline.NumDeleted: 99
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.QtPrivate::QVersionTag" = type { ptr, i64 }
%struct.QMetaObject = type { %"struct.QMetaObject::Data" }
%"struct.QMetaObject::Data" = type { %"struct.QMetaObject::SuperData", ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.QMetaObject::SuperData" = type { ptr }
%class.QFont = type <{ %class.QExplicitlySharedDataPointer, i32, [4 x i8] }>
%class.QExplicitlySharedDataPointer = type { ptr }
%"class.QMetaObject::Connection" = type { ptr }
%class.QString = type { %struct.QArrayDataPointer }
%struct.QArrayDataPointer = type { ptr, ptr, i64 }
%class.QTextBlock = type <{ ptr, i32, [4 x i8] }>
%class.QTextCursor = type { %class.QSharedDataPointer }
%class.QSharedDataPointer = type { ptr }

$_ZN27Ui_LuaDebuggerGoToLineFrame7setupUiEP14AccordionFrame = comdat any

$_ZN8QPointerI14QPlainTextEditED2Ev = comdat any

$_ZN27Ui_LuaDebuggerGoToLineFrame13retranslateUiEP14AccordionFrame = comdat any

$_ZN9QtPrivate11QSlotObjectIM24LuaDebuggerGoToLineFrameFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb = comdat any

$qt_version_tag_use = comdat any

@qt_version_tag = external constant i8, align 1
@qt_version_tag_use = linkonce_odr hidden constant %"struct.QtPrivate::QVersionTag" { ptr @qt_version_tag, i64 394242 }, section ".qtversion", comdat, align 8
@_ZTV24LuaDebuggerGoToLineFrame = external constant { [55 x ptr], [10 x ptr] }, align 8
@.str = private unnamed_addr constant [25 x i8] c"LuaDebuggerGoToLineFrame\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"horizontalLayout\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"lineLabel\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"lineLineEdit\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"goButton\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"cancelButton\00", align 1
@_ZTV11QSpacerItem = external constant { [19 x ptr] }, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"Line:\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Go to line\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@_ZN15QAbstractButton16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN9QLineEdit16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN19LuaDebuggerCodeView16staticMetaObjectE = external global %struct.QMetaObject, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @qt_version_tag_use], section "llvm.metadata"

@_ZN24LuaDebuggerGoToLineFrameC1EP7QWidget = unnamed_addr alias void (ptr, ptr), ptr @_ZN24LuaDebuggerGoToLineFrameC2EP7QWidget
@_ZN24LuaDebuggerGoToLineFrameD1Ev = unnamed_addr alias void (ptr), ptr @_ZN24LuaDebuggerGoToLineFrameD2Ev

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN24LuaDebuggerGoToLineFrameC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(80) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %i.d = alloca { i64, i64 }, align 8             ; 5 uses
  %i.e = alloca { i64, i64 }, align 8             ; 5 uses
  %i.f = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %class.QFont, align 8               ; 7 uses
  %3 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %4 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %5 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  tail call void @_ZN14AccordionFrameC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(56) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 424) (i8, ptr @_ZTV24LuaDebuggerGoToLineFrame, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV24LuaDebuggerGoToLineFrame, i64 456), ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 56         ; 10 uses
  %i.i = invoke noalias noundef dereferenceable_or_null(48) ptr @_Znwm(i64 noundef 48) #11
          to label %bb.b unwind label %bb.q       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(16) %i.j, i8 0, i64 16, i1 false)
  invoke void @_ZN27Ui_LuaDebuggerGoToLineFrame7setupUiEP14AccordionFrame(ptr noundef align 8 dereferenceable_or_null(48) %i.i, ptr noundef %0)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  invoke void @_ZN15QGuiApplication4fontEv(ptr dead_on_unwind nonnull writable sret(%class.QFont) align 8 %2)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7QWidget7setFontERK5QFont(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %bb.d
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noalias noundef dereferenceable_or_null(24) ptr @_Znwm(i64 noundef 24) #11
          to label %bb.f unwind label %bb.r       ; 3 uses

bb.f:                                             ; preds = %bb.e
  %6 = load ptr, ptr %i.h, align 8
  %7 = getelementptr i8, ptr %6, i64 24
  %8 = load ptr, ptr %7, align 8
  invoke void @_ZN13QIntValidatorC1EiiP7QObject(ptr noundef align 8 dereferenceable_or_null(24) %i.n, i32 noundef 1, i32 noundef 999999999, ptr noundef %8)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN9QLineEdit12setValidatorEPK10QValidator(ptr noundef align 8 dereferenceable_or_null(40) %i.m, ptr noundef %i.n)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN14AccordionFrame16updateStyleSheetEv(ptr noundef align 8 dereferenceable_or_null(56) %0)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 ptrtoint (ptr @_ZN15QAbstractButton7clickedEb to i64), ptr %i.e, align 8, !noalias !6
  %.fca.1.gep14.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.fca.1.gep14.i, align 8, !noalias !6
  store i64 ptrtoint (ptr @_ZN24LuaDebuggerGoToLineFrame19on_goButton_clickedEv to i64), ptr %i.f, align 8, !noalias !6
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !noalias !6
  %i.r = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #11
          to label %.noexc unwind label %bb.r     ; 5 uses

.noexc:                                           ; preds = %bb.i
  store i32 1, ptr %i.r, align 4, !noalias !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM24LuaDebuggerGoToLineFrameFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.s, align 8, !noalias !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 ptrtoint (ptr @_ZN24LuaDebuggerGoToLineFrame19on_goButton_clickedEv to i64), ptr %i.t, align 8, !noalias !6
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !noalias !6
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %3, ptr noundef %i.q, ptr noundef nonnull %i.e, ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef %i.r, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN15QAbstractButton16staticMetaObjectE)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %3) #12
  %i.u = load ptr, ptr %i.h, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 ptrtoint (ptr @_ZN15QAbstractButton7clickedEb to i64), ptr %i.c, align 8, !noalias !9
  %.fca.1.gep14.i28 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.fca.1.gep14.i28, align 8, !noalias !9
  store i64 ptrtoint (ptr @_ZN24LuaDebuggerGoToLineFrame23on_cancelButton_clickedEv to i64), ptr %i.d, align 8, !noalias !9
  %.fca.1.gep.i29 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.fca.1.gep.i29, align 8, !noalias !9
  %i.x = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #11
          to label %.noexc31 unwind label %bb.r   ; 5 uses

.noexc31:                                         ; preds = %bb.j
  store i32 1, ptr %i.x, align 4, !noalias !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM24LuaDebuggerGoToLineFrameFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.y, align 8, !noalias !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 ptrtoint (ptr @_ZN24LuaDebuggerGoToLineFrame23on_cancelButton_clickedEv to i64), ptr %i.z, align 8, !noalias !9
  %.repack7.i.i30 = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %.repack7.i.i30, align 8, !noalias !9
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %4, ptr noundef %i.w, ptr noundef nonnull %i.c, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.x, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN15QAbstractButton16staticMetaObjectE)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #12
  %i.aa = load ptr, ptr %i.h, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 ptrtoint (ptr @_ZN9QLineEdit13returnPressedEv to i64), ptr %i.a, align 8, !noalias !12
  %.fca.1.gep14.i37 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep14.i37, align 8, !noalias !12
  store i64 ptrtoint (ptr @_ZN24LuaDebuggerGoToLineFrame19on_goButton_clickedEv to i64), ptr %i.b, align 8, !noalias !12
  %.fca.1.gep.i38 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep.i38, align 8, !noalias !12
  %i.ad = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #11
          to label %.noexc40 unwind label %bb.r   ; 5 uses

.noexc40:                                         ; preds = %bb.k
  store i32 1, ptr %i.ad, align 4, !noalias !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM24LuaDebuggerGoToLineFrameFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.ae, align 8, !noalias !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 ptrtoint (ptr @_ZN24LuaDebuggerGoToLineFrame19on_goButton_clickedEv to i64), ptr %i.af, align 8, !noalias !12
  %.repack7.i.i39 = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 0, ptr %.repack7.i.i39, align 8, !noalias !12
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %5, ptr noundef %i.ac, ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %i.ad, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN9QLineEdit16staticMetaObjectE)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #12
  %i.ag = load ptr, ptr %i.h, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void @_ZN11QPushButton10setDefaultEb(ptr noundef align 8 dereferenceable_or_null(40) %i.ai, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %i.h, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void @_ZN11QPushButton14setAutoDefaultEb(ptr noundef align 8 dereferenceable_or_null(40) %i.al, i1 noundef zeroext true)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %i.h, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void @_ZN11QPushButton10setDefaultEb(ptr noundef align 8 dereferenceable_or_null(40) %i.ao, i1 noundef zeroext false)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr %i.h, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void @_ZN11QPushButton14setAutoDefaultEb(ptr noundef align 8 dereferenceable_or_null(40) %i.ar, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  ret void

bb.q:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.r:                                             ; preds = %.noexc40, %bb.k, %.noexc31, %bb.j, %.noexc, %bb.i, %bb.o, %bb.n, %bb.m, %bb.l, %bb.h, %bb.g, %bb.e, %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.s:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %2) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.av, %bb.t ], [ %i.au, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.w

bb.v:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef 24) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.r
  %.pn21 = phi { ptr, i32 } [ %i.at, %bb.r ], [ %i.aw, %bb.v ], [ %.pn, %bb.u ]
  call void @_ZN8QPointerI14QPlainTextEditED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable_or_null(16) %i.j) #12
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.q
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %bb.w ], [ %i.as, %bb.q ]
  call void @_ZN6QFrameD2Ev(ptr noundef align 8 dead_on_return(56) dereferenceable_or_null(56) %0) #12
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN14AccordionFrameC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(56), ptr noundef) unnamed_addr #1

; Function Attrs: nobuiltin null_pointer_is_valid allocsize(0)
declare noundef ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN27Ui_LuaDebuggerGoToLineFrame7setupUiEP14AccordionFrame(ptr noundef align 8 dereferenceable_or_null(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZNK7QObject10objectNameEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, ptr noundef align 8 dereferenceable_or_null(16) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  %i.d = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.a
  %i.e = atomicrmw sub ptr %i.d, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.e, 1
  br i1 %.not.i.i, label %bb.b, label %_ZN7QStringD2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.f = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.f, i64 noundef 2, i64 noundef 8) #12
end_hunk_0
