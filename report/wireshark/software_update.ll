Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/software_update?download=true
inline.NumInlined: 675
inline.NumDeleted: 316
begin_hunk_0
$_ZN9QtPrivate16QGenericArrayOpsI11AppcastItemE8Inserter9insertOneExOS1_ = comdat any

$_ZN17QArrayDataPointerI11AppcastItemE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_ = comdat any

$_ZN17QArrayDataPointerI11AppcastItemE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_ = comdat any

$_ZN9QtPrivate30q_relocate_overlap_n_left_moveIP11AppcastItemxEEvT_T0_S3_ = comdat any

$_ZN9QtPrivate30q_relocate_overlap_n_left_moveISt16reverse_iteratorIP11AppcastItemExEEvT_T0_S5_ = comdat any

$_ZN17QArrayDataPointerI11AppcastItemE12allocateGrowERKS1_xN10QArrayData14GrowthPositionE = comdat any

$qt_version_tag_use = comdat any

@qt_version_tag = external constant i8, align 1
@qt_version_tag_use = linkonce_odr hidden constant %"struct.QtPrivate::QVersionTag" { ptr @qt_version_tag, i64 394242 }, section ".qtversion", comdat, align 8
@_ZL10SPARKLE_NS = internal global %class.QString zeroinitializer, align 8
@.str = private unnamed_addr constant [52 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 119, i16 119, i16 119, i16 46, i16 97, i16 110, i16 100, i16 121, i16 109, i16 97, i16 116, i16 117, i16 115, i16 99, i16 104, i16 97, i16 107, i16 46, i16 111, i16 114, i16 103, i16 47, i16 120, i16 109, i16 108, i16 45, i16 110, i16 97, i16 109, i16 101, i16 115, i16 112, i16 97, i16 99, i16 101, i16 115, i16 47, i16 115, i16 112, i16 97, i16 114, i16 107, i16 108, i16 101, i16 0], align 2
@__dso_handle = external hidden global i8
@_ZN14SoftwareUpdate9instance_E = local_unnamed_addr global ptr null, align 8
@_ZN14SoftwareUpdate6mutex_E = global { %class.QBasicAtomicPointer } zeroinitializer, align 8
@_ZN14SoftwareUpdate12updateMutex_E = global { %class.QBasicAtomicPointer } zeroinitializer, align 8
@_ZTV14SoftwareUpdate = external constant { [14 x ptr] }, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"%1 Update Check/%2\00", align 1
@.str.4 = private unnamed_addr constant [5 x i16] [i16 105, i16 116, i16 101, i16 109, i16 0], align 2
@.str.5 = private unnamed_addr constant [6 x i16] [i16 116, i16 105, i16 116, i16 108, i16 101, i16 0], align 2
@.str.6 = private unnamed_addr constant [8 x i16] [i16 118, i16 101, i16 114, i16 115, i16 105, i16 111, i16 110, i16 0], align 2
@.str.7 = private unnamed_addr constant [19 x i16] [i16 115, i16 104, i16 111, i16 114, i16 116, i16 86, i16 101, i16 114, i16 115, i16 105, i16 111, i16 110, i16 83, i16 116, i16 114, i16 105, i16 110, i16 103, i16 0], align 2
@.str.8 = private unnamed_addr constant [17 x i16] [i16 114, i16 101, i16 108, i16 101, i16 97, i16 115, i16 101, i16 78, i16 111, i16 116, i16 101, i16 115, i16 76, i16 105, i16 110, i16 107, i16 0], align 2
@.str.9 = private unnamed_addr constant [10 x i16] [i16 101, i16 110, i16 99, i16 108, i16 111, i16 115, i16 117, i16 114, i16 101, i16 0], align 2
@.str.10 = private unnamed_addr constant [4 x i16] [i16 117, i16 114, i16 108, i16 0], align 2
@.str.11 = private unnamed_addr constant [7 x i16] [i16 108, i16 101, i16 110, i16 103, i16 116, i16 104, i16 0], align 2
@.str.12 = private unnamed_addr constant [12 x i16] [i16 101, i16 100, i16 83, i16 105, i16 103, i16 110, i16 97, i16 116, i16 117, i16 114, i16 101, i16 0], align 2
@.str.13 = private unnamed_addr constant [3 x i16] [i16 111, i16 115, i16 0], align 2
@.str.14 = private unnamed_addr constant [36 x i8] c"SoftwareUpdate: XML parse error: %s\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"xxxx\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"0.0.0\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@_ZN10QByteArray6_emptyE = external constant i8, align 1
@_ZN21QNetworkAccessManager16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN6QTimer16staticMetaObjectE = external global %struct.QMetaObject, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_software_update.cpp, ptr null }]
@llvm.compiler.used = appending global [1 x ptr] [ptr @qt_version_tag_use], section "llvm.metadata"

@_ZN14SoftwareUpdateC1EP7QObject = unnamed_addr alias void (ptr, ptr), ptr @_ZN14SoftwareUpdateC2EP7QObject
@_ZN14SoftwareUpdateD1Ev = unnamed_addr alias void (ptr), ptr @_ZN14SoftwareUpdateD2Ev

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN7QStringD2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerIDsED2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i:        ; preds = %bb.a
  %i.b = atomicrmw add ptr %i.a, i32 -1 acq_rel, align 4
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN17QArrayDataPointerIDsED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i
  %i.c = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.c, i64 noundef 2, i64 noundef 8) #25
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit

_ZN17QArrayDataPointerIDsED2Ev.exit:              ; preds = %bb.a, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN13ShutdownEvent6acceptEv(ptr nofree noundef align 8 captures(none) dereferenceable_or_null(32) initializes((0, 2)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN7QString5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.d, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %_ZN7QString5clearEv.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.b
  %i.f = atomicrmw add ptr %i.e, i32 -1 acq_rel, align 4
  %.not.i.i1.i = icmp eq i32 %i.f, 1
  br i1 %.not.i.i1.i, label %bb.c, label %_ZN7QString5clearEv.exit

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.e, i64 noundef 2, i64 noundef 8) #25
  br label %_ZN7QString5clearEv.exit

_ZN7QString5clearEv.exit:                         ; preds = %bb.a, %bb.b, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN13ShutdownEvent6rejectERK7QString(ptr noundef align 8 dereferenceable_or_null(32) initializes((0, 2)) %0, ptr noundef align 8 dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1
  store i8 1, ptr %i.a, align 1
  store i8 0, ptr %0, align 8
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = tail call noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.b, ptr noundef align 8 dereferenceable(24) %1) #25 ; 0 uses
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
declare noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK13ShutdownEvent10isAcceptedEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(32) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !9, !noundef !7
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !range !9, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: mustprogress norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable
define void @_ZNK13ShutdownEvent6reasonEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.QString) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(32) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load <2 x ptr>, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  store <2 x ptr> %i.b, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8
  store i64 %i.f, ptr %i.d, align 8
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN7QStringC2ERKS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = atomicrmw add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit

_ZN7QStringC2ERKS_.exit:                          ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN6QMutexD2Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 monotonic, align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN11QBasicMutex15destroyInternalEP13QMutexPrivate(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #26
  unreachable
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN14SoftwareUpdateC2EP7QObject(ptr noundef align 8 dereferenceable_or_null(32) %0, ptr noundef %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %i.d = alloca { i64, i64 }, align 8             ; 5 uses
  %2 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %3 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  tail call void @_ZN7QObjectC2EPS_(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV14SoftwareUpdate, i64 16), ptr %0, align 8
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.f = invoke noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #27
          to label %bb.b unwind label %4          ; 3 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6QTimerC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %i.f, ptr noundef %0)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = invoke noalias noundef dereferenceable_or_null(16) ptr @_Znwm(i64 noundef 16) #27
          to label %bb.d unwind label %4          ; 4 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN21QNetworkAccessManagerC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %i.h, ptr noundef %0)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.h, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 ptrtoint (ptr @_ZN21QNetworkAccessManager8finishedEP13QNetworkReply to i64), ptr %i.c, align 8, !noalias !14
  %.fca.1.gep14.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.fca.1.gep14.i, align 8, !noalias !14
  store i64 ptrtoint (ptr @_ZN14SoftwareUpdate22onNetworkReplyFinishedEP13QNetworkReply to i64), ptr %i.d, align 8, !noalias !14
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !noalias !14
  %i.i = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc unwind label %4, !noalias !14 ; 5 uses

.noexc:                                           ; preds = %bb.e
  store i32 1, ptr %i.i, align 4, !noalias !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM14SoftwareUpdateFvP13QNetworkReplyENS_4ListIJS3_EEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.j, align 8, !noalias !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 ptrtoint (ptr @_ZN14SoftwareUpdate22onNetworkReplyFinishedEP13QNetworkReply to i64), ptr %i.k, align 8, !noalias !14
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !noalias !14
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %2, ptr noundef %i.h, ptr noundef nonnull %i.c, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.i, i32 noundef 0, ptr noundef null, ptr noundef @_ZN21QNetworkAccessManager16staticMetaObjectE)
          to label %bb.f unwind label %4

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %2) #25
  %i.l = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 ptrtoint (ptr @_ZN6QTimer7timeoutENS_14QPrivateSignalE to i64), ptr %i.a, align 8, !noalias !15
  %.fca.1.gep12.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep12.i, align 8, !noalias !15
  store i64 ptrtoint (ptr @_ZN14SoftwareUpdate15checkForUpdatesEv to i64), ptr %i.b, align 8, !noalias !15
  %.fca.1.gep.i15 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep.i15, align 8, !noalias !15
  %i.m = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc17 unwind label %4, !noalias !15 ; 5 uses

.noexc17:                                         ; preds = %bb.f
  store i32 1, ptr %i.m, align 4, !noalias !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM14SoftwareUpdateFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.n, align 8, !noalias !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 ptrtoint (ptr @_ZN14SoftwareUpdate15checkForUpdatesEv to i64), ptr %i.o, align 8, !noalias !15
  %.repack7.i.i16 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %.repack7.i.i16, align 8, !noalias !15
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %3, ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef %i.m, i32 noundef 0, ptr noundef null, ptr noundef @_ZN6QTimer16staticMetaObjectE)
          to label %bb.g unwind label %4

bb.g:                                             ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %3) #25
  ret void

4:                                                ; preds = %.noexc17, %bb.f, %.noexc, %bb.e, %bb.c, %bb.a
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink = phi ptr [ %i.h, %bb.i ], [ %i.f, %bb.h ]
  %.pn.ph = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.p, %bb.h ]
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef 16) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %4
  %.pn = phi { ptr, i32 } [ %5, %4 ], [ %.pn.ph, %bb.j ]
  call void @_ZN7QObjectD2Ev(ptr noundef align 8 dead_on_return(16) dereferenceable_or_null(16) %0) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QObjectC2EPS_(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #8

; Function Attrs: nobuiltin null_pointer_is_valid allocsize(0)
declare noundef ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare void @_ZN6QTimerC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #8

; Function Attrs: nobuiltin nounwind null_pointer_is_valid
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare void @_ZN21QNetworkAccessManagerC1EP7QObject(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare void @_ZN21QNetworkAccessManager8finishedEP13QNetworkReply(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) #8

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN14SoftwareUpdate22onNetworkReplyFinishedEP13QNetworkReply(ptr noundef align 8 dereferenceable_or_null(32) %0, ptr noundef %1) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 8             ; 6 uses
  %3 = alloca %class.QString, align 16            ; 5 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QByteArray, align 8          ; 9 uses
  %6 = alloca %class.QList, align 8               ; 10 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %7 = alloca %class.QVersionNumber, align 8      ; 11 uses
  %8 = alloca %class.QString, align 16            ; 8 uses
  %9 = alloca %class.QString, align 8             ; 9 uses
  %10 = alloca %class.QVersionNumber, align 8     ; 8 uses
  %11 = alloca %class.QString, align 8            ; 6 uses
  %12 = alloca %class.QString, align 8            ; 8 uses
  tail call void @_ZN7QObject11deleteLaterEv(ptr noundef align 8 dereferenceable_or_null(16) %1)
  %i.b = tail call noundef i32 @_ZNK13QNetworkReply5errorEv(ptr noundef align 8 dereferenceable_or_null(16) %1)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNK9QIODevice11errorStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, ptr noundef align 8 dereferenceable_or_null(16) %1)
  invoke void @_ZN14SoftwareUpdate17updateCheckFailedERK7QString(ptr noundef align 8 dereferenceable_or_null(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.c
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.d, 1
  br i1 %.not.i.i, label %bb.d, label %_ZN7QStringD2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.e = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.e, i64 noundef 2, i64 noundef 8) #25
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ax

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i38, label %_ZN7QStringD2Ev.exit41, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39:    ; preds = %bb.e
  %i.h = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %.not.i.i40 = icmp eq i32 %i.h, 1
  br i1 %.not.i.i40, label %bb.f, label %_ZN7QStringD2Ev.exit41

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39
  %i.i = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.i, i64 noundef 2, i64 noundef 8) #25
  br label %_ZN7QStringD2Ev.exit41

_ZN7QStringD2Ev.exit41:                           ; preds = %bb.e, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.bd

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN9QIODevice7readAllEv(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %5, ptr noundef align 8 dereferenceable_or_null(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNK14SoftwareUpdate12parseAppcastERK10QByteArray(ptr dead_on_unwind nonnull writable sret(%class.QList) align 8 %6, ptr align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.au, label %_ZN14QAnyStringViewC2IA6_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_ZN14QAnyStringViewC2IA6_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN14QVersionNumber10fromStringE14QAnyStringViewPx(ptr dead_on_unwind nonnull writable sret(%class.QVersionNumber) align 8 %7, ptr @.str.16, i64 4611686018427387909, ptr noundef null)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN14QAnyStringViewC2IA6_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load i64, ptr %i.j, align 8
  %.idx = mul i64 %i.p, 112                       ; 2 uses
  %i.q = getelementptr i8, ptr %i.o, i64 %.idx
  %.not117130 = icmp eq i64 %.idx, 0
  br i1 %.not117130, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.l

._crit_edge:                                      ; preds = %bb.v, %bb.j
  %.sroa.14.0.lcssa = phi i64 [ 0, %bb.j ], [ %.sroa.14.1, %bb.v ]
  %.sroa.11.0.lcssa = phi ptr [ null, %bb.j ], [ %.sroa.11.1, %bb.v ]
  %.sroa.0107.0.lcssa = phi ptr [ null, %bb.j ], [ %.sroa.0107.1, %bb.v ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.v = invoke ptr @application_version()
          to label %bb.w unwind label %bb.ag      ; 3 uses

bb.k:                                             ; preds = %_ZN14QAnyStringViewC2IA6_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.l:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.0107.0134 = phi ptr [ null, %.lr.ph ], [ %.sroa.0107.1, %bb.v ] ; 8 uses
  %.sroa.11.0133 = phi ptr [ null, %.lr.ph ], [ %.sroa.11.1, %bb.v ] ; 3 uses
  %.sroa.14.0132 = phi i64 [ 0, %.lr.ph ], [ %.sroa.14.1, %bb.v ] ; 3 uses
  %.sroa.0104.0131 = phi ptr [ %i.o, %.lr.ph ], [ %i.au, %bb.v ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0104.0131, i64 56
  %i.y = getelementptr i8, ptr %.sroa.0104.0131, i64 72
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.critedge.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 4, ptr @.str.15)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ab = load <2 x ptr>, ptr %3, align 16
  store <2 x ptr> %i.ab, ptr %8, align 16
  %i.ac = load i64, ptr %i.s, align 16
  store i64 %i.ac, ptr %i.r, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ad = call noundef i32 @_ZNK7QString7compareERKS_N2Qt15CaseSensitivityE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 0) #25
  %.not118 = icmp eq i32 %i.ad, 0
  %i.ae = load ptr, ptr %8, align 16              ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i43, label %.critedge, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44:    ; preds = %bb.n
  %i.af = atomicrmw add ptr %i.ae, i32 -1 acq_rel, align 4
  %.not.i.i45 = icmp eq i32 %i.af, 1
  br i1 %.not.i.i45, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44
  %i.ag = load ptr, ptr %8, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ag, i64 noundef 2, i64 noundef 8) #25
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i44, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.not118, label %.critedge.thread, label %bb.v

bb.p:                                             ; preds = %bb.r
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.q:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ay

.critedge.thread:                                 ; preds = %bb.l, %.critedge
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0104.0131, i64 24 ; 2 uses
  %i.ak = call noundef i32 @_ZN14QVersionNumber7compareERKS_S1_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %7) #25
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.r, label %bb.v
end_hunk_0
