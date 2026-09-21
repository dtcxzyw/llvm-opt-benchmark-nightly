Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/conversation_hash_tables_dialog?download=true
inline.NumInlined: 449
inline.NumDeleted: 171
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.QtPrivate::QVersionTag" = type { ptr, i64 }
%struct.QMetaObject = type { %"struct.QMetaObject::Data" }
%"struct.QMetaObject::Data" = type { %"struct.QMetaObject::SuperData", ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.QMetaObject::SuperData" = type { ptr }
%class.QString = type { %struct.QArrayDataPointer }
%struct.QArrayDataPointer = type { ptr, ptr, i64 }
%class.QSize = type { i32, i32 }
%"class.QMetaObject::Connection" = type { ptr }
%class.QList = type { %struct.QArrayDataPointer.0 }
%struct.QArrayDataPointer.0 = type { ptr, ptr, i64 }
%class.QByteArray = type { %struct.QArrayDataPointer.18 }
%struct.QArrayDataPointer.18 = type { ptr, ptr, i64 }

$_ZN31Ui_ConversationHashTablesDialog7setupUiEP7QDialog = comdat any

$_ZN15MainApplication17windowTitleStringE7QString = comdat any

$_ZN9QtPrivate11QSlotObjectIM7QDialogFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb = comdat any

$_ZN5QListI7QStringED2Ev = comdat any

$_ZN9QtPrivate16QMovableArrayOpsI7QStringE7emplaceIJRKS1_EEEvxDpOT_ = comdat any

$_ZN17QArrayDataPointerI7QStringE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_ = comdat any

$_ZN17QArrayDataPointerI7QStringE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_ = comdat any

$_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_ = comdat any

$_ZN17QArrayDataPointerI7QStringE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE = comdat any

$_ZN17QArrayDataPointerI7QStringED2Ev = comdat any

$qt_version_tag_use = comdat any

@qt_version_tag = external constant i8, align 1
@qt_version_tag_use = linkonce_odr hidden constant %"struct.QtPrivate::QVersionTag" { ptr @qt_version_tag, i64 394242 }, section ".qtversion", comdat, align 8
@_ZTV28ConversationHashTablesDialog = external constant { [59 x ptr], [10 x ptr] }, align 8
@mainApp = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [25 x i8] c"Conversation Hash Tables\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"<h2>Conversation Hash Tables</h2>\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i16] [i16 60, i16 104, i16 51, i16 62, i16 37, i16 49, i16 44, i16 32, i16 69, i16 114, i16 114, i16 111, i16 114, i16 58, i16 32, i16 116, i16 97, i16 98, i16 108, i16 101, i16 32, i16 110, i16 111, i16 116, i16 32, i16 102, i16 111, i16 117, i16 110, i16 100, i16 60, i16 47, i16 104, i16 51, i16 62, i16 10, i16 0], align 2
@.str.3 = private unnamed_addr constant [25 x i16] [i16 60, i16 104, i16 51, i16 62, i16 37, i16 49, i16 44, i16 32, i16 37, i16 50, i16 32, i16 101, i16 110, i16 116, i16 114, i16 105, i16 101, i16 115, i16 60, i16 47, i16 104, i16 51, i16 62, i16 10, i16 0], align 2
@.str.4 = private unnamed_addr constant [9 x i8] c"<table>\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"</table>\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"ConversationHashTablesDialog\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"verticalLayout\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"conversationTextEdit\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"buttonBox\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Dialog\00", align 1
@_ZN16QDialogButtonBox16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN28ConversationHashTablesDialog16staticMetaObjectE = external global %struct.QMetaObject, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"<tr>\00", align 1
@.str.15 = private unnamed_addr constant [11 x i16] [i16 65, i16 100, i16 100, i16 114, i16 101, i16 115, i16 115, i16 32, i16 37, i16 49, i16 0], align 2
@.str.16 = private unnamed_addr constant [8 x i16] [i16 80, i16 111, i16 114, i16 116, i16 32, i16 37, i16 49, i16 0], align 2
@.str.17 = private unnamed_addr constant [10 x i16] [i16 83, i16 116, i16 114, i16 105, i16 110, i16 103, i16 32, i16 37, i16 49, i16 0], align 2
@.str.18 = private unnamed_addr constant [8 x i16] [i16 85, i16 73, i16 110, i16 116, i16 32, i16 37, i16 49, i16 0], align 2
@.str.19 = private unnamed_addr constant [10 x i16] [i16 85, i16 73, i16 110, i16 116, i16 54, i16 52, i16 32, i16 37, i16 49, i16 0], align 2
@.str.20 = private unnamed_addr constant [7 x i16] [i16 73, i16 110, i16 116, i16 32, i16 37, i16 49, i16 0], align 2
@.str.21 = private unnamed_addr constant [9 x i16] [i16 73, i16 110, i16 116, i16 54, i16 52, i16 32, i16 37, i16 49, i16 0], align 2
@.str.22 = private unnamed_addr constant [8 x i16] [i16 66, i16 108, i16 111, i16 98, i16 32, i16 37, i16 49, i16 0], align 2
@.str.23 = private unnamed_addr constant [18 x i16] [i16 60, i16 116, i16 104, i16 62, i16 69, i16 110, i16 100, i16 112, i16 111, i16 105, i16 110, i16 116, i16 60, i16 47, i16 116, i16 104, i16 62, i16 0], align 2
@.str.24 = private unnamed_addr constant [12 x i16] [i16 60, i16 116, i16 104, i16 62, i16 37, i16 49, i16 60, i16 47, i16 116, i16 104, i16 62, i16 0], align 2
@.str.25 = private unnamed_addr constant [7 x i8] c"</tr>\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i16] [i16 60, i16 116, i16 100, i16 62, i16 37, i16 49, i16 60, i16 47, i16 116, i16 100, i16 62, i16 0], align 2
@llvm.compiler.used = appending global [1 x ptr] [ptr @qt_version_tag_use], section "llvm.metadata"

@_ZN28ConversationHashTablesDialogC1EP7QWidget = unnamed_addr alias void (ptr, ptr), ptr @_ZN28ConversationHashTablesDialogC2EP7QWidget
@_ZN28ConversationHashTablesDialogD1Ev = unnamed_addr alias void (ptr), ptr @_ZN28ConversationHashTablesDialogD2Ev

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN28ConversationHashTablesDialogC2EP7QWidget(ptr noundef align 8 dereferenceable_or_null(80) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 8             ; 9 uses
  %3 = alloca %class.QString, align 8             ; 9 uses
  %4 = alloca %class.QString, align 16            ; 5 uses
  %5 = alloca %class.QString, align 16            ; 5 uses
  %6 = alloca %class.QString, align 8             ; 9 uses
  %7 = alloca %class.QString, align 8             ; 9 uses
  %8 = alloca %class.QString, align 8             ; 9 uses
  %9 = alloca %class.QString, align 8             ; 6 uses
  %10 = alloca %class.QString, align 8            ; 15 uses
  %11 = alloca %class.QString, align 8            ; 9 uses
  %12 = alloca %class.QString, align 8            ; 11 uses
  %13 = alloca %class.QString, align 16           ; 10 uses
  %14 = alloca %class.QString, align 8            ; 9 uses
  %15 = alloca %class.QString, align 8            ; 9 uses
  %16 = alloca %class.QString, align 8            ; 11 uses
  %17 = alloca %class.QString, align 16           ; 10 uses
  %18 = alloca %class.QString, align 8            ; 10 uses
  tail call void @_ZN7QDialogC2EP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(72) %0, ptr noundef null, i32 1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.c, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV28ConversationHashTablesDialog, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV28ConversationHashTablesDialog, i64 488), ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %i.e = invoke noalias noundef dereferenceable_or_null(24) ptr @_Znwm(i64 noundef 24) #15
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.d, align 8
  invoke void @_ZN31Ui_ConversationHashTablesDialog7setupUiEP7QDialog(ptr noundef align 8 dereferenceable_or_null(24) %i.e, ptr noundef %0)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 20
  %i.i = getelementptr i8, ptr %i.g, i64 28
  %i.j = load <2 x i32>, ptr %i.i, align 4
  %i.k = load <2 x i32>, ptr %i.h, align 4
  %i.l = add <2 x i32> %i.j, splat (i32 1)
  %i.m = sub <2 x i32> %i.l, %i.k
  %19 = mul <2 x i32> %i.m, splat (i32 3)
  %20 = sdiv <2 x i32> %19, splat (i32 4)         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %7, i8 0, i64 24, i1 false)
  %21 = extractelement <2 x i32> %20, i64 0
  %22 = extractelement <2 x i32> %20, i64 1
  invoke void @_ZN19GeometryStateDialog12loadGeometryEiiRK7QString(ptr noundef align 8 dereferenceable_or_null(72) %0, i32 noundef %21, i32 noundef %22, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %7, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.e
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.o, 1
  br i1 %.not.i.i, label %bb.f, label %_ZN7QStringD2Ev.exit

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.p = load ptr, ptr %7, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.p, i64 noundef 2, i64 noundef 8) #16
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.e, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.j

bb.g:                                             ; preds = %bb.j, %bb.b, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.h:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %7, align 8                ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i56, label %_ZN7QStringD2Ev.exit59, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i57

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i57:    ; preds = %bb.h
  %i.t = atomicrmw sub ptr %i.s, i32 1 acq_rel, align 4
  %.not.i.i58 = icmp eq i32 %i.t, 1
  br i1 %.not.i.i58, label %bb.i, label %_ZN7QStringD2Ev.exit59

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i57
  %i.u = load ptr, ptr %7, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.u, i64 noundef 2, i64 noundef 8) #16
  br label %_ZN7QStringD2Ev.exit59

_ZN7QStringD2Ev.exit59:                           ; preds = %bb.h, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i57, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.ch

bb.j:                                             ; preds = %_ZN7QStringD2Ev.exit, %bb.c
  invoke void @_ZN7QWidget12setAttributeEN2Qt15WidgetAttributeEb(ptr noundef align 8 dereferenceable_or_null(40) %0, i32 noundef 55, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.v = load ptr, ptr @mainApp, align 8
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %9, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN28ConversationHashTablesDialog16staticMetaObjectE, ptr noundef nonnull @.str, ptr noundef null, i32 noundef -1)
          to label %_ZN28ConversationHashTablesDialog2trEPKcS1_i.exit unwind label %bb.y

_ZN28ConversationHashTablesDialog2trEPKcS1_i.exit: ; preds = %bb.k
  invoke void @_ZN15MainApplication17windowTitleStringE7QString(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %8, ptr noundef align 8 dereferenceable_or_null(168) %i.v, ptr noundef nonnull align 8 %9)
          to label %bb.l unwind label %bb.z

bb.l:                                             ; preds = %_ZN28ConversationHashTablesDialog2trEPKcS1_i.exit
  invoke void @_ZN7QWidget14setWindowTitleERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.m unwind label %bb.aa

bb.m:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %8, align 8                ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i60, label %_ZN7QStringD2Ev.exit63, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i61

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i61:    ; preds = %bb.m
  %i.x = atomicrmw sub ptr %i.w, i32 1 acq_rel, align 4
  %.not.i.i62 = icmp eq i32 %i.x, 1
  br i1 %.not.i.i62, label %bb.n, label %_ZN7QStringD2Ev.exit63

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i61
  %i.y = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.y, i64 noundef 2, i64 noundef 8) #16
  br label %_ZN7QStringD2Ev.exit63

_ZN7QStringD2Ev.exit63:                           ; preds = %bb.m, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i61, %bb.n
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i64, label %_ZN7QStringD2Ev.exit67, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i65

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i65:    ; preds = %_ZN7QStringD2Ev.exit63
  %i.aa = atomicrmw sub ptr %i.z, i32 1 acq_rel, align 4
  %.not.i.i66 = icmp eq i32 %i.aa, 1
  br i1 %.not.i.i66, label %bb.o, label %_ZN7QStringD2Ev.exit67

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i65
  %i.ab = load ptr, ptr %9, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ab, i64 noundef 2, i64 noundef 8) #16
  br label %_ZN7QStringD2Ev.exit67

_ZN7QStringD2Ev.exit67:                           ; preds = %_ZN7QStringD2Ev.exit63, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i65, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, i64 34, ptr nonnull @.str.1)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %_ZN7QStringD2Ev.exit67
  %i.ac = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.p unwind label %bb.r       ; 0 uses

bb.p:                                             ; preds = %.noexc
  %i.ad = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.t, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.p
  %i.ae = atomicrmw sub ptr %i.ad, i32 1 acq_rel, align 4
  %.not.i.i.i68 = icmp eq i32 %i.ae, 1
  br i1 %.not.i.i.i68, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.af = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.af, i64 noundef 2, i64 noundef 8) #16
  br label %bb.t

bb.r:                                             ; preds = %.noexc
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.r
  %i.ai = atomicrmw sub ptr %i.ah, i32 1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.ai, 1
  br i1 %.not.i.i4.i, label %bb.s, label %_ZN7QStringD2Ev.exit5.i

bb.s:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.aj = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aj, i64 noundef 2, i64 noundef 8) #16
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.s, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.body

bb.t:                                             ; preds = %bb.q, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.ak = invoke ptr @get_conversation_hashtables()
          to label %bb.u unwind label %bb.ae      ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.al = invoke ptr @wmem_map_get_keys(ptr noundef null, ptr noundef %i.ak)
          to label %bb.v unwind label %bb.af      ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.am = invoke ptr @wmem_list_head(ptr noundef %i.al)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.v
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.w

bb.w:                                             ; preds = %.preheader, %bb.br
  %.0 = phi ptr [ %i.dw, %bb.br ], [ %i.am, %.preheader ] ; 3 uses
  %.not38 = icmp eq ptr %.0, null
  br i1 %.not38, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  invoke void @wmem_destroy_list(ptr noundef %i.al)
          to label %bb.cc unwind label %bb.af

bb.y:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit76

bb.z:                                             ; preds = %_ZN28ConversationHashTablesDialog2trEPKcS1_i.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit72

bb.aa:                                            ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ay = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i69, label %_ZN7QStringD2Ev.exit72, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i70

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i70:    ; preds = %bb.aa
  %i.az = atomicrmw sub ptr %i.ay, i32 1 acq_rel, align 4
  %.not.i.i71 = icmp eq i32 %i.az, 1
  br i1 %.not.i.i71, label %bb.ab, label %_ZN7QStringD2Ev.exit72

bb.ab:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i70
  %i.ba = load ptr, ptr %8, align 8
end_hunk_0
