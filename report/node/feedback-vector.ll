Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/feedback-vector?download=true
inline.NumInlined: 1787
inline.NumDeleted: 887
begin_hunk_0
%"class.v8::internal::Script" = type { %"class.v8::internal::TorqueGeneratedScript" }
%"class.v8::internal::TorqueGeneratedScript" = type { %"class.v8::internal::Struct" }
%"class.v8::internal::Struct" = type { %"class.v8::internal::TorqueGeneratedStruct" }
%"class.v8::internal::TorqueGeneratedStruct" = type { %"class.v8::internal::HeapObject" }
%"class.v8::internal::HeapObject" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::TaggedImpl" = type { i64 }
%"class.v8::internal::IsCompiledScope" = type <{ %"class.v8::internal::MaybeHandle.599", i8, [7 x i8] }>
%"class.v8::internal::MaybeHandle.599" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::HandleBase" = type { ptr }
%"class.v8::internal::FeedbackVectorSpec" = type { %"class.v8::internal::ZoneVector", %"class.v8::internal::ZoneVector.442" }
%"class.v8::internal::ZoneVector" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::ZoneVector.442" = type { ptr, ptr, ptr, ptr }
%"class.v8::internal::FeedbackNexus" = type { %"class.v8::internal::Handle.585", %"class.v8::internal::Tagged.592", %"class.v8::internal::FeedbackSlot", i8, [3 x i8], %"class.std::optional.619", %"class.v8::internal::NexusConfig", ptr }
%"class.v8::internal::Handle.585" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::Tagged.592" = type { %"class.v8::internal::Tagged.0" }
%"class.v8::internal::Tagged.0" = type { %"class.v8::internal::TaggedImpl" }
%"class.v8::internal::FeedbackSlot" = type { i32 }
%"class.std::optional.619" = type { %"struct.std::_Optional_base.620" }
%"struct.std::_Optional_base.620" = type { %"struct.std::_Optional_payload.622" }
%"struct.std::_Optional_payload.622" = type { %"struct.std::_Optional_payload_base.base.625", [7 x i8] }
%"struct.std::_Optional_payload_base.base.625" = type <{ %"union.std::_Optional_payload_base<std::pair<v8::internal::MaybeObjectHandle, v8::internal::MaybeObjectHandle>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::pair<v8::internal::MaybeObjectHandle, v8::internal::MaybeObjectHandle>>::_Storage" = type { %"struct.std::pair" }
%"struct.std::pair" = type { %"class.v8::internal::MaybeObjectHandle", %"class.v8::internal::MaybeObjectHandle" }
%"class.v8::internal::MaybeObjectHandle" = type { i32, %"class.v8::internal::MaybeHandle.624" }
%"class.v8::internal::MaybeHandle.624" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::NexusConfig" = type { ptr, ptr }
%"class.v8::internal::FeedbackIterator" = type <{ %"class.v8::internal::DirectHandle.640", %"class.v8::internal::Tagged.643", %"class.v8::internal::Tagged.589", i8, [3 x i8], i32, i32, [4 x i8] }>
%"class.v8::internal::DirectHandle.640" = type { %"class.v8::internal::Handle.641" }
%"class.v8::internal::Handle.641" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::Tagged.643" = type { %"class.v8::internal::Tagged.0" }
%"class.v8::internal::Tagged.589" = type { %"class.v8::internal::TaggedImpl.581" }
%"class.v8::internal::TaggedImpl.581" = type { i64 }
%"class.v8::internal::Handle.657" = type { %"class.v8::internal::HandleBase" }
%"class.v8::internal::MapsAndHandlers" = type { %"class.v8::internal::DirectHandleSmallVector", %"class.v8::internal::DirectHandleSmallVector.678", %"class.v8::base::SmallVector.680" }
%"class.v8::internal::DirectHandleSmallVector" = type { %"class.v8::base::SmallVector.677" }
%"class.v8::base::SmallVector.677" = type { ptr, ptr, ptr, [32 x i8] }
%"class.v8::internal::DirectHandleSmallVector.678" = type { %"class.v8::base::SmallVector.679" }
%"class.v8::base::SmallVector.679" = type { ptr, ptr, ptr, [32 x i8] }
%"class.v8::base::SmallVector.680" = type { ptr, ptr, ptr, [16 x i8] }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }

$_ZN2v88internal16FeedbackMetadata3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_PKNS0_18FeedbackVectorSpecE = comdat any

$_ZN2v88internal16FeedbackMetadata3NewINS0_12LocalIsolateEEENS0_6HandleIS1_EEPT_PKNS0_18FeedbackVectorSpecE = comdat any

$_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv = comdat any

$_ZN2v88internal10ZoneVectorINS0_16FeedbackSlotKindEE4GrowEm = comdat any

$_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm4ESaIS5_EE4GrowEv = comdat any

$_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm4ESaIS5_EE4GrowEm = comdat any

$_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm4ESaIS5_EE11FreeStorageEv = comdat any

$_ZN2v84base11SmallVectorINS_8internal23HeapObjectReferenceTypeELm4ESaIS3_EE4GrowEv = comdat any

$_ZN2v84base11SmallVectorINS_8internal23HeapObjectReferenceTypeELm4ESaIS3_EE4GrowEm = comdat any

$_ZN2v84base11SmallVectorINS_8internal23HeapObjectReferenceTypeELm4ESaIS3_EE11FreeStorageEv = comdat any

$_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE11FreeStorageEv = comdat any

$_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE4GrowEv = comdat any

$_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE4GrowEm = comdat any

$_ZN2v88internal15IsCompiledScopeC2ENS0_6TaggedINS0_18SharedFunctionInfoEEEPNS0_7IsolateE = comdat any

@.str = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Call\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"LoadProperty\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"LoadGlobalInsideTypeof\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"LoadGlobalNotInsideTypeof\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"LoadKeyed\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"HasKeyed\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"SetNamedSloppy\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"SetNamedStrict\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"DefineNamedOwn\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"DefineKeyedOwn\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"StoreGlobalSloppy\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"StoreGlobalStrict\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"StoreKeyedSloppy\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"StoreKeyedStrict\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"StoreInArrayLiteral\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"BinaryOp\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"CompareOp\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"DefineKeyedOwnPropertyInLiteral\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Literal\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"ForIn\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"InstanceOf\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"TypeOf\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"CloneObject\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"JumpLoop\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"StringAddAndInternalize\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"can_write()\00", align 1
@.str.29 = private unnamed_addr constant [52 x i8] c"vector->length() > start_slot.WithOffset(1).ToInt()\00", align 1
@.str.30 = private unnamed_addr constant [60 x i8] c"IsJSFunction(heap_object) || IsJSBoundFunction(heap_object)\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"feedback == UninitializedSentinel()\00", align 1
@_ZN2v88internal8v8_flagsE = external local_unnamed_addr global %"struct.v8::internal::FlagValues", align 4096
@.str.32 = private unnamed_addr constant [18 x i8] c"IsSmi(call_count)\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"!done_\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"state_ == kPolymorphic\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"index_ == length\00", align 1
@.str.36 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@.str.37 = private unnamed_addr constant [67 x i8] c"static_cast<unsigned>(index) < static_cast<unsigned>(word_count())\00", align 1
@_ZN2v88internal12IsolateGroup22default_isolate_group_E = external local_unnamed_addr global ptr, align 8
@.str.39 = private unnamed_addr constant [20 x i8] c"v8_flags.maglev_osr\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"code_kind == CodeKind::TURBOFAN_JS\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"!is_null()\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"kind() == CodeKind::BASELINE\00", align 1
@switch.table._ZN2v88internal16FeedbackMetadata11Kind2StringENS0_16FeedbackSlotKindE = private unnamed_addr constant [26 x ptr] [ptr @.str, ptr @.str.11, ptr @.str.7, ptr @.str.13, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.12, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.24], align 8
@switch.table._ZNK2v88internal13FeedbackNexus8ic_stateEv = private unnamed_addr constant [4 x i8] c"\01\02\07\02", align 4
@switch.table._ZNK2v88internal13FeedbackNexus23GetKeyedAccessStoreModeEv = private unnamed_addr constant [12 x i8] c"\00\01\02\03\00\01\02\03\00\01\02\03", align 1

@_ZN2v88internal13FeedbackNexusC1EPNS0_7IsolateENS0_6HandleINS0_14FeedbackVectorEEENS0_12FeedbackSlotE = hidden unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6HandleINS0_14FeedbackVectorEEENS0_12FeedbackSlotE
@_ZN2v88internal13FeedbackNexusC1EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE = hidden unnamed_addr alias void (ptr, ptr, i64, i32), ptr @_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE
@_ZN2v88internal13FeedbackNexusC1ENS0_6HandleINS0_14FeedbackVectorEEENS0_12FeedbackSlotERKNS0_11NexusConfigE = hidden unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN2v88internal13FeedbackNexusC2ENS0_6HandleINS0_14FeedbackVectorEEENS0_12FeedbackSlotERKNS0_11NexusConfigE
@_ZN2v88internal16FeedbackIteratorC1EPKNS0_13FeedbackNexusE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2v88internal16FeedbackIteratorC2EPKNS0_13FeedbackNexusE

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal16FeedbackMetadata3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_PKNS0_18FeedbackVectorSpecE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 1                   ; 2 uses
  %i.q = trunc i64 %i.p to i32                    ; 3 uses
  %i.r = or i32 %i.q, %i.h
  %or.cond = icmp eq i32 %i.r, 0
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1880
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.t = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewFeedbackMetadataEiiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.h, i32 noundef %i.q, i8 noundef zeroext 1) #17 ; 4 uses
  %i.u = icmp sgt i32 %i.h, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = and i64 %i.g, 2147483647
  br label %.lr.ph

.preheader:                                       ; preds = %_ZN2v88internal16FeedbackMetadata7SetKindENS0_12FeedbackSlotENS0_16FeedbackSlotKindE.exit, %bb.c
  %i.v = icmp sgt i32 %i.q, 0
  br i1 %i.v, label %.lr.ph40.preheader, label %.loopexit

.lr.ph40.preheader:                               ; preds = %.preheader
  %wide.trip.count45 = and i64 %i.p, 2147483647
  br label %.lr.ph40

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal16FeedbackMetadata7SetKindENS0_12FeedbackSlotENS0_16FeedbackSlotKindE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2v88internal16FeedbackMetadata7SetKindENS0_12FeedbackSlotENS0_16FeedbackSlotKindE.exit ] ; 3 uses
  %i.w = load ptr, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1
  %i.z = load i64, ptr %i.t, align 8              ; 2 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ab = udiv i32 %i.aa, 6                       ; 2 uses
  %i.ac = urem i32 %i.aa, 6
  %i.ad = add i64 %i.z, 7
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i: ; preds = %.lr.ph
  %i.ah = add nsw i32 %i.af, -1
  %i.ai = sdiv i32 %i.ah, 6
  %i.aj = add nsw i32 %i.ai, 1
  %i.ak = icmp ult i32 %i.ab, %i.aj
  br i1 %i.ak, label %_ZN2v88internal16FeedbackMetadata7SetKindENS0_12FeedbackSlotENS0_16FeedbackSlotKindE.exit, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i, !prof !7

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i, %.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.37) #18
  unreachable

_ZN2v88internal16FeedbackMetadata7SetKindENS0_12FeedbackSlotENS0_16FeedbackSlotKindE.exit: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i
  %i.al = shl nuw nsw i32 %i.ab, 2
  %narrow = add nuw i32 %i.al, 15
  %i.am = zext i32 %narrow to i64
  %i.an = add i64 %i.z, %i.am
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = mul nuw nsw i32 %i.ac, 5                ; 2 uses
  %i.ar = zext i8 %i.y to i32
  %i.as = shl i32 %i.ar, %i.aq
  %i.at = shl nuw nsw i32 31, %i.aq
  %i.au = xor i32 %i.at, -1
  %i.av = and i32 %i.ap, %i.au
  %i.aw = or i32 %i.av, %i.as
  store i32 %i.aw, ptr %i.ao, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !15

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %_ZN2v88internal16FeedbackMetadata30SetCreateClosureParameterCountEit.exit
  %indvars.iv42 = phi i64 [ 0, %.lr.ph40.preheader ], [ %indvars.iv.next43, %_ZN2v88internal16FeedbackMetadata30SetCreateClosureParameterCountEit.exit ] ; 3 uses
  %i.ax = load ptr, ptr %i.k, align 8
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv42
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = load i64, ptr %i.t, align 8             ; 2 uses
  %i.bb = add i64 %i.ba, 7
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZN2v88internal16FeedbackMetadata30SetCreateClosureParameterCountEit.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph40
  %i.bf = add nsw i32 %i.bd, -1
  %i.bg = sdiv i32 %i.bf, 6
  %i.bh = shl nsw i32 %i.bg, 2
  %i.bi = add nsw i32 %i.bh, 20
  br label %_ZN2v88internal16FeedbackMetadata30SetCreateClosureParameterCountEit.exit

_ZN2v88internal16FeedbackMetadata30SetCreateClosureParameterCountEit.exit: ; preds = %.lr.ph40, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.bi, %bb.d ], [ 16, %.lr.ph40 ]
  %indvars.iv42.tr = trunc nuw i64 %indvars.iv42 to i32
  %i.bj = shl nuw i32 %indvars.iv42.tr, 1
  %i.bk = add nsw i32 %.0.i.i.i.i, %i.bj
  %i.bl = sext i32 %i.bk to i64
  %i.bm = add i64 %i.ba, -1
  %i.bn = add i64 %i.bm, %i.bl
  %i.bo = inttoptr i64 %i.bn to ptr
  store i16 %i.az, ptr %i.bo, align 2
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %.loopexit, label %.lr.ph40, !llvm.loop !16

.loopexit:                                        ; preds = %_ZN2v88internal16FeedbackMetadata30SetCreateClosureParameterCountEit.exit, %.preheader, %bb.b
  %.sroa.029.0 = phi ptr [ %i.s, %bb.b ], [ %i.t, %.preheader ], [ %i.t, %_ZN2v88internal16FeedbackMetadata30SetCreateClosureParameterCountEit.exit ]
  ret ptr %.sroa.029.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewFeedbackMetadataEiiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal16FeedbackMetadata7SetKindENS0_12FeedbackSlotENS0_16FeedbackSlotKindE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sdiv i32 %1, 6                           ; 2 uses
  %i.b = srem i32 %1, 6
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = add i64 %i.c, 7
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i: ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1
  %i.i = sdiv i32 %i.h, 6
  %i.j = add nsw i32 %i.i, 1
  %i.k = icmp ult i32 %i.a, %i.j
  br i1 %i.k, label %_ZNK2v88internal16FeedbackMetadata3getEi.exit, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i, !prof !7

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.37) #18
  unreachable

_ZNK2v88internal16FeedbackMetadata3getEi.exit:    ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i
  %i.l = shl nsw i32 %i.a, 2
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %i.m, 15
  %i.o = add i64 %i.n, %i.c
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = mul nsw i32 %i.b, 5                      ; 2 uses
  %i.s = zext i8 %2 to i32
  %i.t = shl i32 %i.s, %i.r
  %i.u = shl nuw nsw i32 31, %i.r
  %i.v = xor i32 %i.u, -1
  %i.w = and i32 %i.q, %i.v
  %i.x = or i32 %i.w, %i.t
  store i32 %i.x, ptr %i.p, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal16FeedbackMetadata30SetCreateClosureParameterCountEit(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = add i64 %i.a, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.d, -1
  %i.g = sdiv i32 %i.f, 6
  %i.h = shl nsw i32 %i.g, 2
  %i.i = add nsw i32 %i.h, 20
  br label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi i32 [ %i.i, %bb.b ], [ 16, %bb.a ]
  %i.j = shl nsw i32 %1, 1
  %i.k = add nsw i32 %.0.i.i.i, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = add i64 %i.a, -1
  %i.n = add i64 %i.m, %i.l
  %i.o = inttoptr i64 %i.n to ptr
  store i16 %2, ptr %i.o, align 2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal16FeedbackMetadata3NewINS0_12LocalIsolateEEENS0_6HandleIS1_EEPT_PKNS0_18FeedbackVectorSpecE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 1                   ; 2 uses
  %i.q = trunc i64 %i.p to i32                    ; 3 uses
  %i.r = or i32 %i.q, %i.h
  %or.cond = icmp eq i32 %i.r, 0
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1880
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.v = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE19NewFeedbackMetadataEiiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.h, i32 noundef %i.q, i8 noundef zeroext 1) #17 ; 4 uses
  %i.w = icmp sgt i32 %i.h, 0
  br i1 %i.w, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = and i64 %i.g, 2147483647
  br label %.lr.ph

.preheader:                                       ; preds = %_ZN2v88internal16FeedbackMetadata7SetKindENS0_12FeedbackSlotENS0_16FeedbackSlotKindE.exit, %bb.c
  %i.x = icmp sgt i32 %i.q, 0
  br i1 %i.x, label %.lr.ph40.preheader, label %.loopexit

.lr.ph40.preheader:                               ; preds = %.preheader
  %wide.trip.count45 = and i64 %i.p, 2147483647
  br label %.lr.ph40

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal16FeedbackMetadata7SetKindENS0_12FeedbackSlotENS0_16FeedbackSlotKindE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2v88internal16FeedbackMetadata7SetKindENS0_12FeedbackSlotENS0_16FeedbackSlotKindE.exit ] ; 3 uses
  %i.y = load ptr, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = load i64, ptr %i.v, align 8             ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ad = udiv i32 %i.ac, 6                       ; 2 uses
  %i.ae = urem i32 %i.ac, 6
  %i.af = add i64 %i.ab, 7
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i: ; preds = %.lr.ph
  %i.aj = add nsw i32 %i.ah, -1
  %i.ak = sdiv i32 %i.aj, 6
  %i.al = add nsw i32 %i.ak, 1
  %i.am = icmp ult i32 %i.ad, %i.al
  br i1 %i.am, label %_ZN2v88internal16FeedbackMetadata7SetKindENS0_12FeedbackSlotENS0_16FeedbackSlotKindE.exit, label %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i, !prof !7

_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.thread.i.i: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i, %.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.37) #18
  unreachable

_ZN2v88internal16FeedbackMetadata7SetKindENS0_12FeedbackSlotENS0_16FeedbackSlotKindE.exit: ; preds = %_ZNK2v88internal16FeedbackMetadata10word_countEv.exit.i.i
  %i.an = shl nuw nsw i32 %i.ad, 2
  %narrow = add nuw i32 %i.an, 15
  %i.ao = zext i32 %narrow to i64
  %i.ap = add i64 %i.ab, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = mul nuw nsw i32 %i.ae, 5                ; 2 uses
  %i.at = zext i8 %i.aa to i32
  %i.au = shl i32 %i.at, %i.as
  %i.av = shl nuw nsw i32 31, %i.as
  %i.aw = xor i32 %i.av, -1
  %i.ax = and i32 %i.ar, %i.aw
  %i.ay = or i32 %i.ax, %i.au
  store i32 %i.ay, ptr %i.aq, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !17

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %_ZN2v88internal16FeedbackMetadata30SetCreateClosureParameterCountEit.exit
  %indvars.iv42 = phi i64 [ 0, %.lr.ph40.preheader ], [ %indvars.iv.next43, %_ZN2v88internal16FeedbackMetadata30SetCreateClosureParameterCountEit.exit ] ; 3 uses
  %i.az = load ptr, ptr %i.k, align 8
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %indvars.iv42
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = load i64, ptr %i.v, align 8             ; 2 uses
  %i.bd = add i64 %i.bc, 7
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZN2v88internal16FeedbackMetadata30SetCreateClosureParameterCountEit.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph40
  %i.bh = add nsw i32 %i.bf, -1
  %i.bi = sdiv i32 %i.bh, 6
  %i.bj = shl nsw i32 %i.bi, 2
  %i.bk = add nsw i32 %i.bj, 20
  br label %_ZN2v88internal16FeedbackMetadata30SetCreateClosureParameterCountEit.exit

_ZN2v88internal16FeedbackMetadata30SetCreateClosureParameterCountEit.exit: ; preds = %.lr.ph40, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.bk, %bb.d ], [ 16, %.lr.ph40 ]
  %indvars.iv42.tr = trunc nuw i64 %indvars.iv42 to i32
  %i.bl = shl nuw i32 %indvars.iv42.tr, 1
  %i.bm = add nsw i32 %.0.i.i.i.i, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = add i64 %i.bc, -1
  %i.bp = add i64 %i.bo, %i.bn
  %i.bq = inttoptr i64 %i.bp to ptr
  store i16 %i.bb, ptr %i.bq, align 2
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %.loopexit, label %.lr.ph40, !llvm.loop !18

.loopexit:                                        ; preds = %_ZN2v88internal16FeedbackMetadata30SetCreateClosureParameterCountEit.exit, %.preheader, %bb.b
  %.sroa.029.0 = phi ptr [ %i.u, %bb.b ], [ %i.v, %.preheader ], [ %i.v, %_ZN2v88internal16FeedbackMetadata30SetCreateClosureParameterCountEit.exit ]
  ret ptr %.sroa.029.0
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE19NewFeedbackMetadataEiiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN2v88internal18FeedbackVectorSpec7AddSlotENS0_16FeedbackSlotKindE(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  switch i8 %1, label %bb.d [
    i8 20, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 21, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 22, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 17, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 16, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 19, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 25, label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
    i8 4, label %bb.b
    i8 23, label %bb.b
    i8 5, label %bb.b
    i8 7, label %bb.b
    i8 6, label %bb.b
    i8 8, label %bb.b
    i8 9, label %bb.b
    i8 2, label %bb.b
    i8 11, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
    i8 1, label %bb.b
    i8 10, label %bb.b
    i8 3, label %bb.b
    i8 14, label %bb.b
    i8 15, label %bb.b
    i8 18, label %bb.b
    i8 24, label %bb.b
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %i.f = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp ult ptr %i.b, %i.h
  br i1 %i.i, label %_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit, label %bb.e, !prof !9

bb.e:                                             ; preds = %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit
  %i.j = ptrtoint ptr %i.h to i64
  %reass.sub = sub i64 %i.j, %i.e
  %i.k = add i64 %reass.sub, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_16FeedbackSlotKindEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.k)
  %.pre.i.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit

_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit: ; preds = %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit, %bb.e
  %i.l = phi ptr [ %i.b, %_ZN2v88internal16FeedbackMetadata11GetSlotSizeENS0_16FeedbackSlotKindE.exit ], [ %.pre.i.i, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.m, ptr %i.a, align 8
  store i8 %1, ptr %i.l, align 1
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.p = icmp ult ptr %i.n, %i.o
  br i1 %i.p, label %_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit7, label %bb.f, !prof !9

._crit_edge:                                      ; preds = %_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit7, %_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit
  %i.q = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %i.q, %i.e
  %i.s = trunc i64 %i.r to i32
  ret i32 %i.s

bb.f:                                             ; preds = %.lr.ph.preheader
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = add i64 %i.u, 1
  %i.x = sub i64 %i.w, %i.v
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_16FeedbackSlotKindEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.x)
  %.pre.i.i6 = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit7

_ZN2v88internal18FeedbackVectorSpec6appendENS0_16FeedbackSlotKindE.exit7: ; preds = %.lr.ph.preheader, %bb.f
  %i.y = phi ptr [ %i.n, %.lr.ph.preheader ], [ %.pre.i.i6, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.z, ptr %i.a, align 8
  store i8 0, ptr %i.y, align 1
  br label %._crit_edge
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoNS0_16FeedbackSlotKindE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i8 %1, 26
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal16FeedbackMetadata11Kind2StringENS0_16FeedbackSlotKindE, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #17
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %switch.load, i64 noundef %i.c) #17 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal16FeedbackMetadata11Kind2StringENS0_16FeedbackSlotKindE(i8 noundef zeroext %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i8 %0, 26
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #18
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal16FeedbackMetadata11Kind2StringENS0_16FeedbackSlotKindE, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext range(i8 0, 32) i8 @_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sdiv i32 %1, 6                           ; 2 uses
  %i.b = srem i32 %1, 6
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = add i64 %i.c, 7
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
end_hunk_0
