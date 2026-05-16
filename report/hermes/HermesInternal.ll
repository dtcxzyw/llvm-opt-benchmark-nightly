inline.NumInlined: 960
inline.NumDeleted: 496
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.hermes::vm::PinnedHermesValue" = type { %"class.hermes::vm::HermesValue" }
%"class.hermes::vm::HermesValue" = type { i64 }
%"class.hermes::vm::TwineChar16" = type { %"union.hermes::vm::TwineChar16::Node", i32, %"union.hermes::vm::TwineChar16::Node", i32, i64, i64 }
%"union.hermes::vm::TwineChar16::Node" = type { ptr }
%"class.std::vector.145" = type { %"struct.std::_Vector_base.146" }
%"struct.std::_Vector_base.146" = type { %"struct.std::_Vector_base<llvh::ArrayRef<unsigned char>, std::allocator<llvh::ArrayRef<unsigned char>>>::_Vector_impl" }
%"struct.std::_Vector_base<llvh::ArrayRef<unsigned char>, std::allocator<llvh::ArrayRef<unsigned char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvh::ArrayRef<unsigned char>, std::allocator<llvh::ArrayRef<unsigned char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvh::ArrayRef<unsigned char>, std::allocator<llvh::ArrayRef<unsigned char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.hermes::vm::GCScope" = type <{ ptr, ptr, [128 x i8], %"class.llvh::SmallVector.169", ptr, ptr, i32, [4 x i8] }>
%"class.llvh::SmallVector.169" = type { %"class.llvh::SmallVectorImpl.170", %"struct.llvh::SmallVectorStorage.173" }
%"class.llvh::SmallVectorImpl.170" = type { %"class.llvh::SmallVectorTemplateBase.171" }
%"class.llvh::SmallVectorTemplateBase.171" = type { %"class.llvh::SmallVectorTemplateCommon.172" }
%"class.llvh::SmallVectorTemplateCommon.172" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.173" = type { [4 x %"struct.llvh::AlignedCharArrayUnion.174"] }
%"struct.llvh::AlignedCharArrayUnion.174" = type { %"struct.llvh::AlignedCharArray.175" }
%"struct.llvh::AlignedCharArray.175" = type { [8 x i8] }
%"struct.hermes::vm::GCBase::HeapInfo" = type { i32, i32, i64, i64, i64, i32, i64, i64, i32, %"struct.hermes::vm::GCBase::CumulativeHeapStats", %"struct.hermes::vm::GCBase::CumulativeHeapStats", %"struct.hermes::vm::GCBase::CumulativeHeapStats" }
%"struct.hermes::vm::GCBase::CumulativeHeapStats" = type { i32, %"class.hermes::StatsAccumulator", %"class.hermes::StatsAccumulator", i32, %"class.hermes::StatsAccumulator.6", %"class.hermes::StatsAccumulator.6" }
%"class.hermes::StatsAccumulator" = type { i32, double, double, double, double }
%"class.hermes::StatsAccumulator.6" = type { i32, i64, i32, i32, double }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.hermes::OptValue" = type <{ %"struct.hermes::hbc::DebugSourceLocation", i8, [3 x i8] }>
%"struct.hermes::hbc::DebugSourceLocation" = type { i32, i32, i32, i32, i32, i32, i32, i32 }

$_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE = comdat any

$_ZNSt5dequeIPN6hermes2vm8CallableESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_ = comdat any

$_ZNSt5dequeIPN6hermes2vm8CallableESaIS3_EE17_M_reallocate_mapEmb = comdat any

$_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej = comdat any

@.str = private unnamed_addr constant [74 x i8] c"Cannot use detachArrayBuffer on something which is not an ArrayBuffer foo\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"getWeakSize can only be called on a WeakMap/WeakSet\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"js_VMExperiments\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"js_numGCs\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"js_gcCPUTime\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"js_avgGCCPUTime\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"js_maxGCCPUTime\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"js_gcTime\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"js_avgGCTime\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"js_maxGCTime\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"js_totalAllocatedBytes\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"js_allocatedBytes\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"js_heapSize\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"js_mallocSizeEstimate\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"js_vaSize\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"js_externalBytes\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"js_peakAllocatedBytes\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"js_peakLiveAfterGC\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"js_gcSpecific\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"js_numYGCollections\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"js_numOGCollections\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"js_numCompactions\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Bytecode Version\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Builtins Frozen\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"VM Experiments\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Build\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"GC\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"0.12.0\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"OSS Release Version\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Debugger Enabled\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"CommonJS Modules\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"Argument to HermesInternal.enqueueJob must be callable\00", align 1
@.str.32 = private unnamed_addr constant [64 x i8] c"Argument to HermesInternal.getFunctionLocation must be callable\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"Promise rejection tracking hook was not registered\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"isProxy\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"isLazy\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"Illegal access to ArrayBuffer\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"Mixed dynamic/static\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"Dynamically resolved\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"Statically resolved\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@_ZN6hermes2vm15HandleRootOwner10trueValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@_ZN6hermes2vm15HandleRootOwner11falseValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@.str.43 = private unnamed_addr constant [34 x i8] c"Unhandled out of memory exception\00", align 1
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm31hermesInternalDetachArrayBufferEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSArrayBufferEEENS0_6HandleIT_EEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !12, !noalias !13
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !16 ; 2 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSArrayBufferEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %4 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %i.h = icmp eq i8 %4, 33
  %spec.select.i = select i1 %i.h, ptr %i.d, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSArrayBufferEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSArrayBufferEEENS0_6HandleIT_EEj.exit: ; preds = %bb.a, %bb.b, %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_13JSArrayBufferEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.i = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !18 ; 2 uses
  %i.j = icmp ugt i64 %i.i, -844424930131969
  %i.k = and i64 %i.i, 281474976710655
  %i.l = icmp ne i64 %i.k, 0
  %i.m = and i1 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSArrayBufferEEENS0_6HandleIT_EEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 73, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.p, align 8, !tbaa !24
  store ptr @.str, ptr %3, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.q, align 8, !tbaa !26
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.d

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSArrayBufferEEENS0_6HandleIT_EEj.exit
  %i.s = tail call noundef i32 @_ZN6hermes2vm13JSArrayBuffer6detachERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.03.0.i) #15
  %i.t = icmp ne i32 %i.s, 0
  %spec.select = zext i1 %i.t to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.03.0 = phi i32 [ %i.r, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %spec.select, %bb.c ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.03.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 -1688849860263936, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_ZN6hermes2vm13JSArrayBuffer6detachERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm26hermesInternalGetEpiloguesEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr readnone captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.std::vector.145", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN6hermes2vm7Runtime12getEpiloguesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.145") align 8 %3, ptr noundef nonnull align 8 dereferenceable(9816) %1) #15
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !30     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.h, i32 noundef %i.h) #15 ; 4 uses
  %.not45 = icmp eq ptr %i.i, inttoptr (i64 -1 to ptr)
  br i1 %.not45, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef i32 @_ZN6hermes2vm9ArrayImpl18setStorageEndIndexENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr %i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.h) #15
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not2847.not = icmp eq ptr %i.b, %i.c
  br i1 %.not2847.not, label %.critedge30, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.m = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 856
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %i.q = phi i64 [ 0, %.lr.ph ], [ %i.bx, %.critedge ] ; 2 uses
  %.02548 = phi i32 [ 0, %.lr.ph ], [ %i.bw, %.critedge ] ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31   ; 3 uses
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = trunc i64 %i.u to i32
  %i.w = call ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.v) #15 ; 3 uses
  %.not46 = icmp eq ptr %i.w, inttoptr (i64 -1 to ptr)
  br i1 %.not46, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.l, align 4, !tbaa !34, !range !272, !noundef !273
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.36) #16
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i31 = load i64, ptr %i.w, align 8, !tbaa !16
  %i.z = and i64 %.sroa.0.0.copyload.i.i31, 281474976710655
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ac = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.ad = add i64 %i.ac, %i.m
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !274
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !16
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !276
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  %i.ao = load ptr, ptr %3, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.q
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !286
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.aq, i64 %i.u, i1 false)
  %.sroa.0.0.copyload.i.i.i32 = load i64, ptr %i.w, align 8, !tbaa !16
  %i.ar = sub i64 %.sroa.0.0.copyload.i.i.i32, %i.m
  %i.as = trunc i64 %i.ar to i32                  ; 2 uses
  %.sroa.0.0.copyload.i.i.i33 = load i64, ptr %i.i, align 8, !tbaa !16
  %i.at = and i64 %.sroa.0.0.copyload.i.i.i33, 281474976710655
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.av, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.aw = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.ax = add i64 %i.aw, %i.m
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !287
  %i.bc = sub i32 %.02548, %i.bb                  ; 4 uses
  %i.bd = icmp ult i32 %i.bc, 4096
  br i1 %i.bd, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i, label %bb.g, !prof !290

bb.g:                                             ; preds = %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit
  %i.be = add i32 %i.bc, -4096
  %i.bf = lshr i32 %i.be, 10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 16392
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !291
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add i64 %i.bk, %i.m
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = and i32 %i.bc, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i: ; preds = %bb.g, %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit
  %.sink6.i.i.i.i = phi ptr [ %i.bm, %bb.g ], [ %i.az, %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit ]
  %.sink5.i.i.i.i = phi i32 [ %i.bn, %bb.g ], [ %i.bc, %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i, i64 8
  %i.bp = zext nneg i32 %.sink5.i.i.i.i to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp ; 3 uses
  %i.br = load ptr, ptr %i.o, align 8, !tbaa !293
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = and i64 %i.bs, -4194304
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = icmp eq ptr %i.br, %i.bu
  br i1 %i.bv, label %bb.i, label %bb.h, !prof !290

bb.h:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.bq, i32 %i.as) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i
  store i32 %i.as, ptr %i.bq, align 4, !tbaa !291
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.c
  %i.bw = add i32 %.02548, 1                      ; 2 uses
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %.not28 = icmp ugt i64 %i.g, %i.bx
  br i1 %.not28, label %bb.c, label %.critedge30, !llvm.loop !294

.critedge30:                                      ; preds = %.critedge, %.preheader
  %.sroa.0.0.copyload.i.i.i34 = load i64, ptr %i.i, align 8, !tbaa !16
  %i.by = or i64 %.sroa.0.0.copyload.i.i.i34, -281474976710656
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.critedge30, %bb.b, %bb.a
  %.sroa.042.4 = phi i32 [ 0, %bb.a ], [ 1, %.critedge30 ], [ 0, %bb.b ], [ 0, %bb.d ]
  %.sroa.5.1 = phi i64 [ undef, %bb.a ], [ %i.by, %.critedge30 ], [ undef, %bb.b ], [ undef, %bb.d ]
  %i.bz = load ptr, ptr %3, align 8, !tbaa !30    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !296
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #17
  br label %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EED2Ev.exit: ; preds = %.loopexit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.042.4, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @_ZN6hermes2vm7Runtime12getEpiloguesEv(ptr dead_on_unwind writable sret(%"class.std::vector.145") align 8, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm9ArrayImpl18setStorageEndIndexENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25hermesInternalGetWeakSizeEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE51EEEEENS0_6HandleIT_EEj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !12, !noalias !297
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !16 ; 2 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE51EEEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE51EEEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE51EEEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %4 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %i.h = icmp eq i8 %4, 51
  %spec.select.i = select i1 %i.h, ptr %i.d, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE51EEEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE51EEEEENS0_6HandleIT_EEj.exit: ; preds = %bb.b, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE51EEEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE51EEEEEbNS0_11HermesValueE.exit.i ]
  %i.i = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !18 ; 2 uses
  %i.j = icmp ugt i64 %i.i, -844424930131969
  %i.k = and i64 %i.i, 281474976710655            ; 2 uses
  %i.l = icmp ne i64 %i.k, 0
  %i.m = and i1 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE51EEEEENS0_6HandleIT_EEj.exit.thread: ; preds = %bb.a
  %i.n = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !18 ; 2 uses
  %i.o = icmp ugt i64 %i.n, -844424930131969
  %i.p = and i64 %i.n, 281474976710655            ; 2 uses
  %i.q = icmp ne i64 %i.p, 0
  %i.r = and i1 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEj.exit

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE51EEEEENS0_6HandleIT_EEj.exit.thread, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE51EEEEENS0_6HandleIT_EEj.exit
  %i.s = phi i64 [ %i.p, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE51EEEEENS0_6HandleIT_EEj.exit.thread ], [ %i.k, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE51EEEEENS0_6HandleIT_EEj.exit ]
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = tail call noundef i32 @_ZN6hermes2vm17JSWeakMapImplBase24debugFreeSlotsAndGetSizeERNS0_7RuntimeEPS1_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull %i.t) #15
  %i.v = uitofp i32 %i.u to double
  %i.w = bitcast double %i.v to i64
  br label %bb.f

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE51EEEEENS0_6HandleIT_EEj.exit
  %i.x = load ptr, ptr %2, align 8, !tbaa !12, !noalias !300
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i7 = load i64, ptr %i.y, align 8, !tbaa !16 ; 2 uses
  %i.z = icmp ugt i64 %.sroa.0.0.copyload.i7, -844424930131969
  br i1 %i.z, label %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.d
  %i.aa = and i64 %.sroa.0.0.copyload.i7, 281474976710655
  %i.ab = inttoptr i64 %i.aa to ptr
  %.shift.i.i.i.i.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %5 = load i8, ptr %.shift.i.i.i.i.i.i.i.i8, align 1
  %i.ac = icmp eq i8 %5, 52
  %spec.select.i9 = select i1 %i.ac, ptr %i.y, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEj.exit: ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE51EEEEENS0_6HandleIT_EEj.exit.thread, %bb.d, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i6 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.d ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE51EEEEENS0_6HandleIT_EEj.exit.thread ], [ %spec.select.i9, %_ZN6hermes2vm5vmisaINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEEbNS0_11HermesValueE.exit.i ]
  %i.ad = load i64, ptr %.sroa.03.0.i6, align 8, !tbaa !18 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, -844424930131969
  %i.af = and i64 %i.ad, 281474976710655          ; 2 uses
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = and i1 %i.ae, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

bb.e:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEj.exit
  %i.ai = inttoptr i64 %i.af to ptr
  %i.aj = tail call noundef i32 @_ZN6hermes2vm17JSWeakMapImplBase24debugFreeSlotsAndGetSizeERNS0_7RuntimeEPS1_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull %i.ai) #15
  %i.ak = uitofp i32 %i.aj to double
  %i.al = bitcast double %i.ak to i64
  br label %bb.f

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_13JSWeakMapImplILNS0_8CellKindE52EEEEENS0_6HandleIT_EEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.am, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 51, ptr %i.an, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ao, align 8, !tbaa !24
  store ptr @.str.1, ptr %3, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.ap, align 8, !tbaa !26
  %i.aq = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.014.2 = phi i32 [ %i.aq, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.e ], [ 1, %bb.c ]
  %.sroa.4.2 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.al, %bb.e ], [ %i.w, %bb.c ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.014.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.2, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm17JSWeakMapImplBase24debugFreeSlotsAndGetSizeERNS0_7RuntimeEPS1_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm34hermesInternalGetInstrumentedStatsEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr readnone captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"struct.hermes::vm::GCBase::HeapInfo", align 8 ; 37 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %1, ptr %3, align 8, !tbaa !303
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !305
  store ptr %i.c, ptr %i.a, align 8, !tbaa !306
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 42 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !313
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !314
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !315
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 43 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !316
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 41 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !317
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 43 uses
  store i32 0, ptr %i.k, align 8, !tbaa !318
  store ptr %3, ptr %i.b, align 8, !tbaa !305
  %i.l = call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #15
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = or i64 %i.m, -281474976710656            ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !305  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 192 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !316  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !317  ; 2 uses
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %bb.b, label %bb.c, !prof !290

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.p, align 8, !tbaa !316
  store i64 %i.n, ptr %i.q, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.v = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.o, i64 %i.n) #15
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !305 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre450 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !316
  %.phi.trans.insert451 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre452 = load ptr, ptr %.phi.trans.insert451, align 8, !tbaa !317
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.s, %bb.b ], [ %.pre452, %bb.c ]
  %i.x = phi ptr [ %i.u, %bb.b ], [ %.pre450, %bb.c ] ; 4 uses
  %i.y = phi ptr [ %i.o, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.q, %bb.b ], [ %i.v, %bb.c ] ; 18 uses
  %i.z = icmp ult ptr %i.x, %i.w
  br i1 %i.z, label %bb.d, label %bb.e, !prof !290

bb.d:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !316
  store i64 -1688849860263936, ptr %i.x, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ac = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.y, i64 -1688849860263936) #15
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i111 = phi ptr [ %i.x, %bb.d ], [ %i.ac, %bb.e ] ; 38 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.af, align 8, !tbaa !319
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !320
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i32 0, ptr %i.aj, align 8, !tbaa !321
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ah, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ai, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ak, i8 0, i64 28, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 232
  store i32 0, ptr %i.am, align 8, !tbaa !320
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 320
  store i32 0, ptr %i.ap, align 8, !tbaa !321
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 328
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.an, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ao, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aq, i8 0, i64 28, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 392
  store i32 0, ptr %i.as, align 8, !tbaa !320
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 400
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 440
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 480
  store i32 0, ptr %i.av, align 8, !tbaa !321
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 488
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 520
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.at, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.au, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aw, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %4, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ae, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.al, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ar, i8 0, i64 28, i1 false)
  call void @_ZN6hermes2vm7HadesGC11getHeapInfoERNS0_6GCBase8HeapInfoE(ptr noundef nonnull align 8 dereferenceable(8112) %i.ad, ptr noundef nonnull align 8 dereferenceable(544) %4) #15
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 9076
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !322
  %i.ba = uitofp i32 %i.az to double
  store double %i.ba, ptr %.0.i.i.i.i.i.i111, align 8, !tbaa !18
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !316 ; 32 uses
  %i.bc = load i32, ptr %i.k, align 8, !tbaa !318 ; 34 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 9240 ; 20 uses
  %i.be = call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.bd, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @.str.2, i64 16, i32 noundef -287917811) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.be, inttoptr (i64 -1 to ptr)
  br i1 %.not.i, label %"_ZZN6hermes2vm34hermesInternalGetInstrumentedStatsEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_8JSObjectEEEN4llvh9StringRefENS6_INS0_11HermesValueEEE.exit.thread", label %"_ZZN6hermes2vm34hermesInternalGetInstrumentedStatsEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_8JSObjectEEEN4llvh9StringRefENS6_INS0_11HermesValueEEE.exit", !prof !323

"_ZZN6hermes2vm34hermesInternalGetInstrumentedStatsEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_8JSObjectEEEN4llvh9StringRefENS6_INS0_11HermesValueEEE.exit.thread": ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.bf = zext i32 %i.bc to i64
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !313
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !324
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 128
  store i32 %i.bc, ptr %i.k, align 8, !tbaa !318
  store ptr %i.bj, ptr %i.j, align 8, !tbaa !317
  store ptr %i.bb, ptr %i.i, align 8, !tbaa !316
  br label %bb.j

"_ZZN6hermes2vm34hermesInternalGetInstrumentedStatsEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_8JSObjectEEEN4llvh9StringRefENS6_INS0_11HermesValueEEE.exit": ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.be, align 8, !tbaa !16
  %i.bk = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32
  %i.bl = call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %i.bk, i16 14, ptr nonnull %.0.i.i.i.i.i.i111) #15
  %i.bm = zext i32 %i.bc to i64                   ; 31 uses
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !313
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !324
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  store i32 %i.bc, ptr %i.k, align 8, !tbaa !318
  store ptr %i.bq, ptr %i.j, align 8, !tbaa !317
  store ptr %i.bb, ptr %i.i, align 8, !tbaa !316
  %i.br = icmp eq i32 %i.bl, 0
  br i1 %i.br, label %bb.j, label %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i117, !prof !325

_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i117: ; preds = %"_ZZN6hermes2vm34hermesInternalGetInstrumentedStatsEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_8JSObjectEEEN4llvh9StringRefENS6_INS0_11HermesValueEEE.exit"
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit104

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit104: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101
  %.pn.i102 = phi { i32, i64 } [ %i.cd, %bb.k ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i101 ] ; 2 uses
  %i.ck = extractvalue { i32, i64 } %.pn.i102, 0
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit98.thread", label %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i110, !prof !323

_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i110: ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit104
  %i.cm = extractvalue { i32, i64 } %.pn.i102, 1
  store i64 %i.cm, ptr %.0.i.i.i.i.i.i49, align 8, !tbaa !18
  %i.cn = call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.ae, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @.str.28, i64 19, i32 noundef -1248205114) #15 ; 2 uses
  %.not.i112 = icmp eq ptr %i.cn, inttoptr (i64 -1 to ptr)
  br i1 %.not.i112, label %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit98.thread", label %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit116", !prof !323

"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit116": ; preds = %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i110
  %.sroa.0.0.copyload.i.i.i.i114 = load i64, ptr %i.cn, align 8, !tbaa !16
  %i.co = trunc i64 %.sroa.0.0.copyload.i.i.i.i114 to i32
  %i.cp = call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %i.co, i16 14, ptr nonnull %.0.i.i.i.i.i.i49) #15
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit98.thread", label %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i122, !prof !325

_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i122: ; preds = %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit116"
  store i64 -1407374883553280, ptr %.0.i.i.i.i.i.i49, align 8, !tbaa !18
  %i.cr = call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.ae, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @.str.29, i64 16, i32 noundef 735223672) #15 ; 2 uses
  %.not.i124 = icmp eq ptr %i.cr, inttoptr (i64 -1 to ptr)
  br i1 %.not.i124, label %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit98.thread", label %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit128", !prof !323

"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit128": ; preds = %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i122
  %.sroa.0.0.copyload.i.i.i.i126 = load i64, ptr %i.cr, align 8, !tbaa !16
  %i.cs = trunc i64 %.sroa.0.0.copyload.i.i.i.i126 to i32
  %i.ct = call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %i.cs, i16 14, ptr nonnull %.0.i.i.i.i.i.i49) #15
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit98.thread", label %bb.m, !prof !325

bb.m:                                             ; preds = %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit128"
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 9392 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 9400
  %.sroa.016.021.i = load ptr, ptr %i.cw, align 8, !tbaa !343 ; 2 uses
  %.not22.i = icmp eq ptr %.sroa.016.021.i, %i.cv
  br i1 %.not22.i, label %_ZN6hermes2vmL27getCJSModuleModeDescriptionERNS0_7RuntimeE.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.str.37..str.38 = select i1 %.112.i, ptr @.str.37, ptr @.str.38
  %.str.39..str.40 = select i1 %.112.i, ptr @.str.39, ptr @.str.40
  %spec.select = select i1 %spec.select.i, ptr %.str.37..str.38, ptr %.str.39..str.40
  br label %_ZN6hermes2vmL27getCJSModuleModeDescriptionERNS0_7RuntimeE.exit

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.sroa.016.025.i = phi ptr [ %.sroa.016.0.i, %.lr.ph.i ], [ %.sroa.016.021.i, %bb.m ] ; 2 uses
  %.01024.i = phi i1 [ %spec.select.i, %.lr.ph.i ], [ false, %bb.m ]
  %.01123.i = phi i1 [ %.112.i, %.lr.ph.i ], [ false, %bb.m ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 80
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !344 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 200
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !16
  %.sroa.2.0.copyload.i.i.fr.i = freeze i64 %.sroa.2.0.copyload.i.i.i
  %.not19.i = icmp ne i64 %.sroa.2.0.copyload.i.i.fr.i, 0
  %spec.select.i = select i1 %.not19.i, i1 true, i1 %.01024.i ; 2 uses
  %.sroa.2.0..sroa_idx.i.i14.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 216
  %.sroa.2.0.copyload.i.i15.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i14.i, align 8, !tbaa !16
  %.sroa.2.0.copyload.i.i15.fr.i = freeze i64 %.sroa.2.0.copyload.i.i15.i
  %.not20.i = icmp ne i64 %.sroa.2.0.copyload.i.i15.fr.i, 0
  %.112.i = select i1 %.not20.i, i1 true, i1 %.01123.i ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 8
  %.sroa.016.0.i = load ptr, ptr %i.cz, align 8, !tbaa !343 ; 2 uses
  %.not.i129 = icmp eq ptr %.sroa.016.0.i, %i.cv
  br i1 %.not.i129, label %._crit_edge.i, label %.lr.ph.i

_ZN6hermes2vmL27getCJSModuleModeDescriptionERNS0_7RuntimeE.exit: ; preds = %._crit_edge.i, %bb.m
  %i.da = phi ptr [ @.str.40, %bb.m ], [ %spec.select, %._crit_edge.i ]
  %i.db = call { ptr, i64 } @_ZN6hermes2vm14createASCIIRefEPKc(ptr noundef nonnull %i.da) #15 ; 2 uses
  %i.dc = extractvalue { ptr, i64 } %i.db, 0      ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %i.db, 1      ; 3 uses
  %i.de = and i64 %i.dd, 4294901760
  %.not.i130 = icmp eq i64 %i.de, 0
  br i1 %.not.i130, label %bb.n, label %bb.o, !prof !290

bb.n:                                             ; preds = %_ZN6hermes2vmL27getCJSModuleModeDescriptionERNS0_7RuntimeE.exit
  %i.df = call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.dc, i64 %i.dd) #15
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit135

bb.o:                                             ; preds = %_ZN6hermes2vmL27getCJSModuleModeDescriptionERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr %i.dc, i64 %i.dd)
  %i.dg = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  %i.dh = load ptr, ptr %3, align 8, !tbaa !341   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131: ; preds = %bb.o
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !25
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i132: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit135

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit135: ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i132
  %.pn.i133 = phi { i32, i64 } [ %i.df, %bb.n ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i132 ] ; 2 uses
  %i.dm = extractvalue { i32, i64 } %.pn.i133, 0
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit98.thread", label %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i141, !prof !323

_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i141: ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit135
  %i.do = extractvalue { i32, i64 } %.pn.i133, 1
  store i64 %i.do, ptr %.0.i.i.i.i.i.i49, align 8, !tbaa !18
  %i.dp = call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.ae, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @.str.30, i64 16, i32 noundef 1763852886) #15 ; 2 uses
  %.not.i143 = icmp eq ptr %i.dp, inttoptr (i64 -1 to ptr)
  br i1 %.not.i143, label %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit98.thread", label %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit147", !prof !323

"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit147": ; preds = %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i141
  %.sroa.0.0.copyload.i.i.i.i145 = load i64, ptr %i.dp, align 8, !tbaa !16
  %i.dq = trunc i64 %.sroa.0.0.copyload.i.i.i.i145 to i32
  %i.dr = call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %i.dq, i16 14, ptr nonnull %.0.i.i.i.i.i.i49) #15
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit98.thread", label %bb.p, !prof !325

bb.p:                                             ; preds = %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit147"
  %.sroa.0.0.copyload.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !16
  br label %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit98.thread"

"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit98.thread": ; preds = %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i141, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i122, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i110, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i92, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit104, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit116", %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit128", %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit147", %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit135, %bb.p, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit98", %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit
  %.sroa.0171.2 = phi i32 [ 0, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit98" ], [ 0, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit ], [ 0, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit147" ], [ 0, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit128" ], [ 0, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit104 ], [ 0, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit116" ], [ 0, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i92 ], [ 0, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i110 ], [ 1, %bb.p ], [ 0, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit135 ], [ 0, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i122 ], [ 0, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i141 ]
  %.sroa.14.2 = phi i64 [ undef, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit98" ], [ undef, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit ], [ undef, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit147" ], [ undef, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit128" ], [ undef, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit104 ], [ undef, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit116" ], [ undef, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i92 ], [ undef, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i110 ], [ %.sroa.0.0.copyload.i, %bb.p ], [ undef, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit135 ], [ undef, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i122 ], [ undef, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i141 ]
  %i.dt = load ptr, ptr %7, align 8, !tbaa !341   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit98.thread"
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !25
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit98.thread", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit85.thread"

"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit85.thread": ; preds = %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i79, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit85", %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.0171.3 = phi i32 [ %.sroa.0171.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %bb.f ], [ 0, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit85" ], [ 0, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i79 ]
  %.sroa.14.3 = phi i64 [ %.sroa.14.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ undef, %bb.f ], [ undef, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit85" ], [ undef, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit.thread"

"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit.thread": ; preds = %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i67, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i55, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit73", %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit61", %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit", %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit85.thread"
  %.sroa.0171.4 = phi i32 [ %.sroa.0171.3, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit85.thread" ], [ 0, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit" ], [ 0, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit61" ], [ 0, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit73" ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ 0, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i55 ], [ 0, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i67 ]
  %.sroa.14.4 = phi i64 [ %.sroa.14.3, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit85.thread" ], [ undef, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit" ], [ undef, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit61" ], [ undef, %"_ZZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clENS0_6HandleINS0_11HermesValueEEEPKc.exit73" ], [ undef, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ undef, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i55 ], [ undef, %_ZN6hermes2vmL13symbolForCStrERNS0_7RuntimeEPKc.exit.i67 ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0171.4, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.14.4, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @_ZNK6hermes2vm7HadesGC12getKindAsStrB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8112)) unnamed_addr #2

declare { ptr, i64 } @_ZN6hermes2vm14createASCIIRefEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24hermesInternalTTIReachedEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr readnone captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC10ttiReachedEv(ptr noundef nonnull align 8 dereferenceable(8112) %i.a) #15
  ret { i32, i64 } { i32 1, i64 -1688849860263936 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25hermesInternalTTRCReachedEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr readnone captures(none) dead_on_return %2) #4 {
bb.a:
  ret { i32, i64 } { i32 1, i64 -1688849860263936 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21hermesInternalIsProxyEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef readonly captures(none) dead_on_return %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !12, !noalias !347
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !16 ; 2 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %3 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %4 = add i8 %3, -26
  %i.h = icmp ult i8 %4, 51
  %spec.select.i = select i1 %i.h, ptr %i.d, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit: ; preds = %bb.a, %bb.b, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ]
  %i.i = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !18 ; 2 uses
  %i.j = icmp ugt i64 %i.i, -844424930131969
  %i.k = and i64 %i.i, 281474976710655            ; 2 uses
  %i.l = icmp ne i64 %i.k, 0
  %i.m = and i1 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %i.n = inttoptr i64 %i.k to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = lshr i32 %i.p, 7
  %.lobit = and i32 %i.q, 1
  %i.r = zext nneg i32 %.lobit to i64
  %i.s = or disjoint i64 %i.r, -1407374883553280
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %i.t = phi i64 [ -1407374883553280, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit ], [ %i.s, %bb.c ]
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %i.t, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24hermesInternalHasPromiseEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(9816) %1, ptr readnone captures(none) dead_on_return %2) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9064
  %i.b = load i8, ptr %i.a, align 8, !tbaa !350, !range !272, !noundef !273
  %i.c = zext nneg i8 %i.b to i64
  %i.d = or disjoint i64 %i.c, -1407374883553280
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %i.d, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25hermesInternalHasES6ClassEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(9816) %1, ptr readnone captures(none) dead_on_return %2) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9066
  %i.b = load i8, ptr %i.a, align 2, !tbaa !351, !range !272, !noundef !273
  %i.c = zext nneg i8 %i.b to i64
  %i.d = or disjoint i64 %i.c, -1407374883553280
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %i.d, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm28hermesInternalUseEngineQueueEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(9816) %1, ptr readnone captures(none) dead_on_return %2) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9069
  %i.b = load i8, ptr %i.a, align 1, !tbaa !352, !range !272, !noundef !273
  %i.c = zext nneg i8 %i.b to i64
  %i.d = or disjoint i64 %i.c, -1407374883553280
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %i.d, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24hermesInternalEnqueueJobEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !12, !noalias !353
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !16 ; 2 uses
  %i.f = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.f, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.g = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.h = inttoptr i64 %i.g to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %4 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %5 = add i8 %4, -68
  %i.i = icmp ult i8 %5, 9
  %spec.select.i = select i1 %i.i, ptr %i.e, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit: ; preds = %bb.a, %bb.b, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ]
  %i.j = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !18 ; 2 uses
  %i.k = icmp ugt i64 %i.j, -844424930131969
  %i.l = and i64 %i.j, 281474976710655            ; 2 uses
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i1 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 54, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.q, align 8, !tbaa !24
  store ptr @.str.31, ptr %3, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.r, align 8, !tbaa !26
  %i.s = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.f

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit
  %i.t = inttoptr i64 %i.l to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.t, ptr %i.a, align 8, !tbaa !356
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 9696 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !358  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 9712
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !359
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %.not.i.i = icmp eq ptr %i.v, %i.y
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.t, ptr %i.v, align 8, !tbaa !356
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !358
  br label %_ZN6hermes2vm7Runtime10enqueueJobEPNS0_8CallableE.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9648
  call void @_ZNSt5dequeIPN6hermes2vm8CallableESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN6hermes2vm7Runtime10enqueueJobEPNS0_8CallableE.exit

_ZN6hermes2vm7Runtime10enqueueJobEPNS0_8CallableE.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm7Runtime10enqueueJobEPNS0_8CallableE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.03.0 = phi i32 [ 1, %_ZN6hermes2vm7Runtime10enqueueJobEPNS0_8CallableE.exit ], [ %i.s, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.03.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 -1688849860263936, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm23hermesInternalDrainJobsEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr readnone captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6hermes2vm7Runtime9drainJobsEv(ptr noundef nonnull align 8 dereferenceable(9816) %1) #15
  %i.b = icmp ne i32 %i.a, 0
  %spec.select = zext i1 %i.b to i32
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %spec.select, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 -1688849860263936, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm7Runtime9drainJobsEv(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm33hermesInternalGetFunctionLocationEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.hermes::OptValue", align 4  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %1, ptr %5, align 8, !tbaa !303
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !305
  store ptr %i.d, ptr %i.b, align 8, !tbaa !306
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !313
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 156
  store i32 4, ptr %i.i, align 4, !tbaa !314
  store ptr %i.f, ptr %i.g, align 8
  store i32 1, ptr %i.h, align 8, !tbaa !315
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192
  store ptr %i.f, ptr %i.j, align 8, !tbaa !316
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %i.e, ptr %i.k, align 8, !tbaa !317
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 208
  store i32 0, ptr %i.l, align 8, !tbaa !318
  store ptr %5, ptr %i.c, align 8, !tbaa !305
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !7
  %.not100 = icmp eq i32 %i.n, 0
  br i1 %.not100, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %2, align 8, !tbaa !12, !noalias !360
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.p, align 8, !tbaa !16 ; 2 uses
  %i.q = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.q, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.r = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %8 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %9 = add i8 %8, -68
  %i.t = icmp ult i8 %9, 9
  %spec.select.i = select i1 %i.t, ptr %i.p, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit: ; preds = %bb.a, %bb.b, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.u = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !18 ; 2 uses
  %i.v = icmp ugt i64 %i.u, -844424930131969
  %i.w = and i64 %i.u, 281474976710655
  %i.x = icmp ne i64 %i.w, 0
  %i.y = and i1 %i.v, %i.x
  br i1 %i.y, label %bb.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.z, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 63, ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.ab, align 8, !tbaa !24
  store ptr @.str.32, ptr %6, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.ac, align 8, !tbaa !26
  %i.ad = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.v

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit
  %i.ae = call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #15
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = or i64 %i.af, -281474976710656          ; 2 uses
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !305 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 192 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !316 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 200
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !317 ; 2 uses
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %bb.d, label %bb.e, !prof !290

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !316
  store i64 %i.ag, ptr %i.aj, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.e:                                             ; preds = %bb.c
  %i.ao = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ah, i64 %i.ag) #15
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !305 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre104 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !316
  %.phi.trans.insert105 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre106 = load ptr, ptr %.phi.trans.insert105, align 8, !tbaa !317
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.d, %bb.e
  %i.ap = phi ptr [ %i.al, %bb.d ], [ %.pre106, %bb.e ]
  %i.aq = phi ptr [ %i.an, %bb.d ], [ %.pre104, %bb.e ] ; 4 uses
  %i.ar = phi ptr [ %i.ah, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.d ], [ %i.ao, %bb.e ] ; 8 uses
  %i.as = icmp ult ptr %i.aq, %i.ap
  br i1 %i.as, label %bb.f, label %bb.g, !prof !290

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.au, ptr %i.at, align 8, !tbaa !316
  store i64 -1688849860263936, ptr %i.aq, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.av = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ar, i64 -1688849860263936) #15
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i64 = phi ptr [ %i.aq, %bb.f ], [ %i.av, %bb.g ] ; 8 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !16
  %i.aw = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655 ; 2 uses
  %i.ax = inttoptr i64 %i.aw to ptr               ; 3 uses
  %.shift.i.i.i.i.i.i.i.i24.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  %10 = load i8, ptr %.shift.i.i.i.i.i.i.i.i24.i, align 1 ; 2 uses
  %11 = icmp ne i8 %10, 68
  %.not24.i = icmp eq i64 %i.aw, 0
  %.not26.i = or i1 %.not24.i, %11
  br i1 %.not26.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.ay = ptrtoint ptr %1 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.01225.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.bc, %bb.h ]
  %i.az = getelementptr inbounds nuw i8, ptr %.01225.i, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.az, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.ba = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.bb = add i64 %i.ba, %i.ay
  %i.bc = inttoptr i64 %i.bb to ptr               ; 3 uses
  %12 = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.bc ; 2 uses
  %.shift.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  %13 = load i8, ptr %.shift.i.i.i.i.i.i.i.i.i, align 1 ; 2 uses
  %14 = icmp ne i8 %13, 68
  %.not.i.a = icmp eq ptr %12, null
  %.not.i = or i1 %14, %.not.i.a
  br i1 %.not.i, label %._crit_edge.i, label %bb.h

._crit_edge.i:                                    ; preds = %bb.h, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %15 = phi i8 [ %10, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %13, %bb.h ]
  %.012.lcssa.i = phi ptr [ %i.ax, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %12, %bb.h ] ; 2 uses
  %16 = add i8 %15, -77
  %i.bd = icmp ult i8 %16, -4
  %.not1623.i = icmp eq ptr %.012.lcssa.i, null
  %.not16.i = or i1 %.not1623.i, %i.bd
  br i1 %.not16.i, label %_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit.thread, label %_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit

_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit.thread: ; preds = %._crit_edge.i
  %i.be = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 461, i32 319, ptr nonnull @_ZN6hermes2vm15HandleRootOwner10trueValue_E, i32 0) #15 ; 0 uses
  br label %bb.u

_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit: ; preds = %._crit_edge.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.lcssa.i, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !363 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1520
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !16 ; 2 uses
  %i.bj = xor i64 %i.bi, %i.bg
  %i.bk = inttoptr i64 %i.bj to ptr               ; 4 uses
  %.not = icmp eq i64 %i.bi, %i.bg                ; 2 uses
  %i.bl = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner10trueValue_E, ptr @_ZN6hermes2vm15HandleRootOwner11falseValue_E
  %i.bm = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 461, i32 319, ptr nonnull %i.bl, i32 0) #15 ; 0 uses
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @_ZNK6hermes2vm9CodeBlock17getSourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.hermes::OptValue") align 4 %7, ptr noundef nonnull align 8 dereferenceable(40) %i.bk, i32 noundef 0) #15
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !365, !range !272, !noundef !273
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !368
  %i.bs = uitofp i32 %i.br to double
  store double %i.bs, ptr %.0.i.i.i.i.i.i64, align 8, !tbaa !18
  %i.bt = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 462, i32 319, ptr nonnull %.0.i.i.i.i.i.i64, i32 0) #15 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !369
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !370
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !344
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 184
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !373
  %i.cb = uitofp i32 %i.ca to double
  store double %i.cb, ptr %.0.i.i.i.i.i.i64, align 8, !tbaa !18
  %i.cc = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 464, i32 319, ptr nonnull %.0.i.i.i.i.i.i64, i32 0) #15 ; 0 uses
  %i.cd = call noundef i32 @_ZNK6hermes2vm9CodeBlock16getVirtualOffsetEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bk) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink120 = phi i32 [ %i.cd, %bb.k ], [ %i.bv, %bb.j ]
  %.sink = phi i32 [ 465, %bb.k ], [ 463, %bb.j ]
  %i.ce = uitofp i32 %.sink120 to double
  store double %i.ce, ptr %.0.i.i.i.i.i.i64, align 8, !tbaa !18
  %i.cf = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %.sink, i32 319, ptr nonnull %.0.i.i.i.i.i.i64, i32 0) #15 ; 0 uses
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.1.0.copyload = load i32, ptr %.sroa.1.0..sroa_idx, align 4, !tbaa !3
  %.sroa.274.0.copyload = load i8, ptr %i.bn, align 4, !tbaa !386
  %.val = load ptr, ptr %i.bk, align 8, !tbaa !370 ; 3 uses
  %i.cg = trunc nuw i8 %.sroa.274.0.copyload to i1
  br i1 %i.cg, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !344 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 240 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !387 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i, label %bb.n, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i

bb.n:                                             ; preds = %bb.m
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !388
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(280) %i.ci) #15, !inline_history !390
  %.pre.i.i = load ptr, ptr %i.cj, align 8, !tbaa !387
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i: ; preds = %bb.n, %bb.m
  %i.cn = phi ptr [ %.pre.i.i, %bb.n ], [ %i.ck, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %i.cn, i32 noundef %.sroa.1.0.copyload)
  %i.co = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive15createEfficientERNS0_7RuntimeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  %i.cp = load ptr, ptr %3, align 8, !tbaa !341   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !25
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN6hermes2vmL20getCodeBlockFileNameERNS0_7RuntimeEPKNS0_9CodeBlockENS_8OptValueINS_3hbc19DebugSourceLocationEEE.exit

bb.o:                                             ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !341 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !342 ; 5 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %_ZN6hermes2vmL20getCodeBlockFileNameERNS0_7RuntimeEPKNS0_9CodeBlockENS_8OptValueINS_3hbc19DebugSourceLocationEEE.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %.not.i.i.i = icmp eq ptr %i.cv, null
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.cz, ptr %4, align 8, !tbaa !397, !alias.scope !398
  br i1 %.not.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.da, align 8, !tbaa !342, !alias.scope !398
  store i8 0, ptr %i.cz, align 8, !tbaa !25, !alias.scope !398
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !398
  store i64 %i.cx, ptr %i.a, align 8, !tbaa !16, !noalias !398
  %i.db = icmp ugt i64 %i.cx, 15
  br i1 %i.db, label %._crit_edge.i.i.i.i.thread.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.thread.i:                     ; preds = %bb.r
  %i.dc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #15 ; 2 uses
  store ptr %i.dc, ptr %4, align 8, !tbaa !341, !alias.scope !398
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !398
  store i64 %i.dd, ptr %i.cz, align 8, !tbaa !25, !alias.scope !398
  br label %bb.t

._crit_edge.i.i.i.i.i:                            ; preds = %bb.r
  %cond.i = icmp eq i64 %i.cx, 1
  br i1 %cond.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.de = load i8, ptr %i.cv, align 1, !tbaa !25
  store i8 %i.de, ptr %i.cz, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i, %._crit_edge.i.i.i.i.thread.i
  %i.df = phi ptr [ %i.dc, %._crit_edge.i.i.i.i.thread.i ], [ %i.cz, %._crit_edge.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr nonnull align 1 %i.cv, i64 %i.cx, i1 false)
  %.pre107 = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !398
  %.pre108 = load ptr, ptr %4, align 8, !tbaa !341, !alias.scope !398
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i: ; preds = %bb.t, %bb.s
  %i.dg = phi ptr [ %.pre108, %bb.t ], [ %i.cz, %bb.s ]
  %i.dh = phi i64 [ %.pre107, %bb.t ], [ 1, %bb.s ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !342, !alias.scope !398
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  store i8 0, ptr %i.dj, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !398
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i, %bb.q
  %i.dk = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive15createEfficientERNS0_7RuntimeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %4) #15
  %i.dl = load ptr, ptr %4, align 8, !tbaa !341   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.cz
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i
  %i.dn = load i64, ptr %i.cz, align 8, !tbaa !25
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN6hermes2vmL20getCodeBlockFileNameERNS0_7RuntimeEPKNS0_9CodeBlockENS_8OptValueINS_3hbc19DebugSourceLocationEEE.exit

_ZN6hermes2vmL20getCodeBlockFileNameERNS0_7RuntimeEPKNS0_9CodeBlockENS_8OptValueINS_3hbc19DebugSourceLocationEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %.pn = phi { i32, i64 } [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %.sroa.4.0.i = extractvalue { i32, i64 } %.pn, 1
  %.sroa.02.0.i = extractvalue { i32, i64 } %.pn, 0
  %i.dp = icmp eq i32 %.sroa.02.0.i, 0
  br i1 %i.dp, label %.thread, label %_ZN6hermes2vmL20getCodeBlockFileNameERNS0_7RuntimeEPKNS0_9CodeBlockENS_8OptValueINS_3hbc19DebugSourceLocationEEE.exit.thread, !prof !399

.thread:                                          ; preds = %_ZN6hermes2vmL20getCodeBlockFileNameERNS0_7RuntimeEPKNS0_9CodeBlockENS_8OptValueINS_3hbc19DebugSourceLocationEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.v

_ZN6hermes2vmL20getCodeBlockFileNameERNS0_7RuntimeEPKNS0_9CodeBlockENS_8OptValueINS_3hbc19DebugSourceLocationEEE.exit.thread: ; preds = %bb.o, %_ZN6hermes2vmL20getCodeBlockFileNameERNS0_7RuntimeEPKNS0_9CodeBlockENS_8OptValueINS_3hbc19DebugSourceLocationEEE.exit
  %.sroa.4.0.i99 = phi i64 [ %.sroa.4.0.i, %_ZN6hermes2vmL20getCodeBlockFileNameERNS0_7RuntimeEPKNS0_9CodeBlockENS_8OptValueINS_3hbc19DebugSourceLocationEEE.exit ], [ -1688849860263936, %bb.o ]
  store i64 %.sroa.4.0.i99, ptr %.0.i.i.i.i.i.i64, align 8, !tbaa !18
  %i.dq = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 466, i32 319, ptr nonnull %.0.i.i.i.i.i.i64, i32 0) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.u

bb.u:                                             ; preds = %_ZN6hermes2vmL20getCodeBlockFileNameERNS0_7RuntimeEPKNS0_9CodeBlockENS_8OptValueINS_3hbc19DebugSourceLocationEEE.exit.thread, %_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit.thread, %_ZN6hermes2vmL16getLeafCodeBlockENS0_6HandleINS0_8CallableEEERNS0_7RuntimeE.exit
  %.sroa.0.0.copyload.i.i.i71 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !16
  %i.dr = and i64 %.sroa.0.0.copyload.i.i.i71, 281474976710655
  %i.ds = inttoptr i64 %i.dr to ptr
  call void @_ZN6hermes2vm8JSObject17preventExtensionsEPS1_(ptr noundef %i.ds) #15
  %.sroa.0.0.copyload.i72 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.091.2 = phi i32 [ %i.ad, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.u ], [ 0, %.thread ]
  %.sroa.492.1 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0.0.copyload.i72, %bb.u ], [ undef, %.thread ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.091.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.492.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZNK6hermes2vm9CodeBlock17getSourceLocationEj(ptr dead_on_unwind writable sret(%"class.hermes::OptValue") align 4, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6hermes2vm9CodeBlock16getVirtualOffsetEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN6hermes2vm8JSObject17preventExtensionsEPS1_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i64 } @_ZN6hermes2vm45hermesInternalSetPromiseRejectionTrackingHookEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(9816) initializes((736, 744)) %1, ptr noundef readonly captures(none) dead_on_return %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !12, !noalias !400
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !16
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.b ], [ -1688849860263936, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 736
  store i64 %.sroa.0.0.i, ptr %i.e, align 8, !tbaa !18
  ret { i32, i64 } { i32 1, i64 -1688849860263936 }
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm43hermesInternalEnablePromiseRejectionTrackerEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 736 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 8, !tbaa !16 ; 2 uses
  %i.f = icmp ugt i64 %.sroa.0.0.copyload.i.i, -844424930131969
  br i1 %i.f, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.g = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.h = inttoptr i64 %i.g to ptr
  %.shift.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %4 = load i8, ptr %.shift.i.i.i.i.i.i.i.i, align 1
  %5 = add i8 %4, -68
  %i.i = icmp ult i8 %5, 9
  %spec.select.i = select i1 %i.i, ptr %i.e, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.a, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.j = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !18 ; 2 uses
  %i.k = icmp ugt i64 %i.j, -844424930131969
  %i.l = and i64 %i.j, 281474976710655
  %i.m = icmp ne i64 %i.l, 0
  %i.n = and i1 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 50, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.q, align 8, !tbaa !24
  store ptr @.str.33, ptr %3, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.r, align 8, !tbaa !26
  %i.s = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.t = insertvalue { i32, i64 } poison, i32 %i.s, 0
  %i.u = insertvalue { i32, i64 } %i.t, i64 undef, 1
  br label %bb.c

bb.b:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.02.0.i, align 8, !tbaa !16
  %i.v = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr nonnull %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.v, %bb.b ], [ %i.u, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  ret { i32, i64 } %.fca.1.insert.merged
}

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm26createHermesInternalObjectERNS0_7RuntimeERKNS0_10JSLibFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull readonly align 1 captures(none) dereferenceable(2) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  %i.a = tail call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) #15
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = or i64 %i.b, -281474976710656            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !305  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !316  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !317
  %i.j = icmp ult ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %bb.c, !prof !290

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !316
  store i64 %i.c, ptr %i.g, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.e, i64 %i.c) #15
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !305
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.e, %bb.b ], [ %.pre, %bb.c ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.l, %bb.c ] ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %0, ptr %2, align 8, !tbaa !303
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !306
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !313
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 156
  store i32 4, ptr %i.s, align 4, !tbaa !314
  store ptr %i.p, ptr %i.q, align 8
  store i32 1, ptr %i.r, align 8, !tbaa !315
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 200
  store ptr %i.o, ptr %i.u, align 8, !tbaa !317
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i32 0, ptr %i.v, align 8, !tbaa !318
  store ptr %2, ptr %i.d, align 8, !tbaa !305
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.010.0.copyload = load i64, ptr %i.w, align 8, !tbaa !16
  %i.x = or i64 %.sroa.010.0.copyload, -281474976710656
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.y, ptr %i.t, align 8, !tbaa !316
  store i64 %i.x, ptr %i.p, align 8, !tbaa !16
  %i.z = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 103, ptr nonnull %i.p, i32 0, ptr noundef null) #15
  %i.aa = extractvalue { i32, i64 } %i.z, 1       ; 2 uses
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !305 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 192 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !316 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !317
  %i.ag = icmp ult ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.d, label %bb.e, !prof !290

bb.d:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !316
  store i64 %i.aa, ptr %i.ad, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.ai = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ab, i64 %i.aa) #15
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i26 = phi ptr [ %i.ad, %bb.d ], [ %i.ai, %bb.e ]
  %i.aj = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 103, i32 312, ptr %.0.i.i.i.i.i.i26, i32 0) #15 ; 0 uses
  %i.ak = call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 435, i32 435, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm24hermesInternalHasPromiseEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0, i32 312) #15 ; 0 uses
  %i.al = call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 436, i32 436, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm25hermesInternalHasES6ClassEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0, i32 312) #15 ; 0 uses
  %i.am = call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 438, i32 438, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm24hermesInternalEnqueueJobEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0, i32 312) #15 ; 0 uses
  %i.an = call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 467, i32 467, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm45hermesInternalSetPromiseRejectionTrackingHookEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0, i32 312) #15 ; 0 uses
  %i.ao = call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 468, i32 468, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm43hermesInternalEnablePromiseRejectionTrackerEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0, i32 312) #15 ; 0 uses
  %i.ap = call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 437, i32 437, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm28hermesInternalUseEngineQueueEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0, i32 312) #15 ; 0 uses
  %i.aq = load i8, ptr %1, align 1, !tbaa !403, !range !272, !noundef !273
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.as = call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 440, i32 440, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm26hermesInternalGetEpiloguesEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0, i32 312) #15 ; 0 uses
  %i.at = call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 444, i32 444, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm34hermesInternalGetRuntimePropertiesEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0, i32 312) #15 ; 0 uses
  %i.au = call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 445, i32 445, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm24hermesInternalTTIReachedEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0, i32 312) #15 ; 0 uses
  %i.av = call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 446, i32 446, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm25hermesInternalTTRCReachedEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0, i32 312) #15 ; 0 uses
  %i.aw = call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 459, i32 459, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm33hermesInternalGetFunctionLocationEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0, i32 312) #15 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 825
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !405
  %.not = icmp eq i8 %i.ay, 0
  %. = select i1 %.not, i32 312, i32 318, !prof !290
  %i.az = call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 443, i32 443, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm34hermesInternalGetInstrumentedStatsEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0, i32 %.) #15 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !406, !range !272, !noundef !273
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bd = call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 433, i32 433, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm31hermesInternalDetachArrayBufferEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 1, i32 312) #15 ; 0 uses
  %i.be = call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 441, i32 441, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm25hermesInternalGetWeakSizeEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 0, i32 312) #15 ; 0 uses
  %i.bf = call { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 453, i32 453, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 noundef 3, i32 312) #15 ; 0 uses
  %i.bg = call { ptr, i64 } @_ZN6hermes2vm14createASCIIRefEPKc(ptr noundef nonnull @.str.34) #15 ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0      ; 3 uses
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1      ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 9240 ; 2 uses
  %.not10.i.i.i = icmp samesign eq i64 %i.bi, 0
  br i1 %.not10.i.i.i, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %xtraiter = and i64 %i.bi, 3                    ; 3 uses
  %i.bk = icmp ult i64 %i.bi, 4
  br i1 %i.bk, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bi, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.012.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.cl, %.lr.ph.i.i.i ]
  %.0811.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.preheader.new ], [ %i.cm, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.bl = load i8, ptr %.0811.i.i.i, align 1, !tbaa !25
  %i.bm = sext i8 %i.bl to i32
  %i.bn = add i32 %.012.i.i.i, %i.bm
  %i.bo = mul i32 %i.bn, 1025                     ; 2 uses
  %i.bp = lshr i32 %i.bo, 6
  %i.bq = xor i32 %i.bp, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !25
  %i.bt = sext i8 %i.bs to i32
  %i.bu = add i32 %i.bq, %i.bt
  %i.bv = mul i32 %i.bu, 1025                     ; 2 uses
  %i.bw = lshr i32 %i.bv, 6
  %i.bx = xor i32 %i.bw, %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !25
  %i.ca = sext i8 %i.bz to i32
  %i.cb = add i32 %i.bx, %i.ca
  %i.cc = mul i32 %i.cb, 1025                     ; 2 uses
  %i.cd = lshr i32 %i.cc, 6
  %i.ce = xor i32 %i.cd, %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 3
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !25
  %i.ch = sext i8 %i.cg to i32
  %i.ci = add i32 %i.ce, %i.ch
  %i.cj = mul i32 %i.ci, 1025                     ; 2 uses
  %i.ck = lshr i32 %i.cj, 6
  %i.cl = xor i32 %i.ck, %i.cj                    ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i
end_hunk_1
