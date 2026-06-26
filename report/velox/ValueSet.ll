inline.NumInlined: 116
inline.NumDeleted: 65
begin_hunk_0
$_ZN8facebook5velox19HashStringAllocator11InputStream8nextViewEl = comdat any

$_ZN8facebook5velox19HashStringAllocator11InputStream4skipEi = comdat any

$_ZNK8facebook5velox19HashStringAllocator11InputStream8toStringB5cxx11Ev = comdat any

$_ZN8facebook5velox12error_source19kErrorSourceRuntimeE = comdat any

$_ZN8facebook5velox10error_code13kInvalidStateE = comdat any

$_ZZN8facebook5velox19HashStringAllocator8allocateEiE18veloxCheckFailArgs = comdat any

$_ZZNK8facebook5velox19HashStringAllocator5State16assertMutabilityEvE18veloxCheckFailArgs = comdat any

$_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0 = comdat any

$_ZTVN8facebook5velox19HashStringAllocator11InputStreamE = comdat any

$_ZTIN8facebook5velox19HashStringAllocator11InputStreamE = comdat any

$_ZTSN8facebook5velox19HashStringAllocator11InputStreamE = comdat any

$_ZTIN8facebook5velox15ByteInputStreamE = comdat any

$_ZTSN8facebook5velox15ByteInputStreamE = comdat any

$_ZZN8facebook5velox19HashStringAllocator11InputStream8skipImplElE18veloxCheckFailArgs = comdat any

$_ZZN8facebook5velox19HashStringAllocator11InputStream9readBytesEPhiE18veloxCheckFailArgs = comdat any

@_ZZNK8facebook5velox9aggregate8ValueSet5writeERKNS0_10BaseVectorEiRNS0_19HashStringAllocator8PositionEE8kOptions = internal constant %"struct.facebook::velox::exec::ContainerRowSerdeOptions" zeroinitializer, align 1
@_ZZNK8facebook5velox9aggregate8ValueSet4readEPNS0_10BaseVectorEiPKNS0_19HashStringAllocator6HeaderEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 56, ptr @.str.1, ptr @.str.2, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str = private unnamed_addr constant [72 x i8] c"/opt-bench/work/velox/velox/velox/functions/lib/aggregates/ValueSet.cpp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"header != nullptr\00", align 1
@_ZN8facebook5velox12error_source19kErrorSourceRuntimeE = linkonce_odr constant %"class.folly::BasicFixedString" { [8 x i8] c"RUNTIME\00", i64 7 }, comdat, align 8
@_ZN8facebook5velox10error_code13kInvalidStateE = linkonce_odr constant %"class.folly::BasicFixedString.25" { [14 x i8] c"INVALID_STATE\00", i64 13 }, comdat, align 8
@_ZZNK8facebook5velox9aggregate8ValueSet4freeEPNS0_19HashStringAllocator6HeaderEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 63, ptr @.str.3, ptr @.str.2, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@_ZZN8facebook5velox19HashStringAllocator8allocateEiE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.4, i64 212, ptr @.str.5, ptr @.str.6, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.4 = private unnamed_addr constant [72 x i8] c"/opt-bench/work/velox/velox/./velox/common/memory/HashStringAllocator.h\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"allocate\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"state_.currentHeader() == nullptr\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Do not call allocate() when a write is in progress\00", align 1
@_ZZNK8facebook5velox19HashStringAllocator5State16assertMutabilityEvE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.4, i64 502, ptr @.str.8, ptr @.str.9, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"assertMutability\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"mutable_\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"The HashStringAllocator is immutable.\00", align 1
@_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.11, i64 82, ptr @.str.12, ptr @.str.13, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.11 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/velox/velox/./velox/type/StringView.h\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"StringView\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"len >= 0\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"({} vs. {})\00", align 1
@_ZTVN8facebook5velox19HashStringAllocator11InputStreamE = linkonce_odr unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN8facebook5velox19HashStringAllocator11InputStreamE, ptr @_ZN8facebook5velox15ByteInputStreamD2Ev, ptr @_ZN8facebook5velox19HashStringAllocator11InputStreamD0Ev, ptr @_ZNK8facebook5velox19HashStringAllocator11InputStream4sizeEv, ptr @_ZNK8facebook5velox19HashStringAllocator11InputStream5atEndEv, ptr @_ZNK8facebook5velox19HashStringAllocator11InputStream5tellpEv, ptr @_ZN8facebook5velox19HashStringAllocator11InputStream5seekpESt4fposI11__mbstate_tE, ptr @_ZNK8facebook5velox19HashStringAllocator11InputStream13remainingSizeEv, ptr @_ZN8facebook5velox19HashStringAllocator11InputStream8readByteEv, ptr @_ZN8facebook5velox19HashStringAllocator11InputStream9readBytesEPhi, ptr @_ZN8facebook5velox19HashStringAllocator11InputStream8nextViewEl, ptr @_ZN8facebook5velox19HashStringAllocator11InputStream4skipEi, ptr @_ZNK8facebook5velox19HashStringAllocator11InputStream8toStringB5cxx11Ev] }, comdat, align 8
@_ZTIN8facebook5velox19HashStringAllocator11InputStreamE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox19HashStringAllocator11InputStreamE, ptr @_ZTIN8facebook5velox15ByteInputStreamE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN8facebook5velox19HashStringAllocator11InputStreamE = linkonce_odr constant [52 x i8] c"N8facebook5velox19HashStringAllocator11InputStreamE\00", comdat, align 1
@_ZTIN8facebook5velox15ByteInputStreamE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox15ByteInputStreamE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN8facebook5velox15ByteInputStreamE = linkonce_odr constant [35 x i8] c"N8facebook5velox15ByteInputStreamE\00", comdat, align 1
@_ZZN8facebook5velox19HashStringAllocator11InputStream8skipImplElE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.4, i64 642, ptr @.str.15, ptr @.str.16, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"skipImpl\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"header_->isContinued()\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Seeking past end of stream\00", align 1
@_ZZN8facebook5velox19HashStringAllocator11InputStream9readBytesEPhiE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.4, i64 594, ptr @.str.18, ptr @.str.16, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.18 = private unnamed_addr constant [10 x i8] c"readBytes\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Reading past end of stream\00", align 1
@.str.20 = private unnamed_addr constant [65 x i8] c"HashStringAllocator::InputStream: begin_={} header_={} range_={}\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox9aggregate8ValueSet5writeERKNS0_10BaseVectorEiRNS0_19HashStringAllocator8PositionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(94) %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::ByteOutputStream", align 8 ; 12 uses
  %5 = alloca %"struct.std::pair", align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.b, i8 0, i64 5, i1 false)
  %i.d = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = invoke { ptr, ptr } @_ZN8facebook5velox19HashStringAllocator8newWriteERNS0_16ByteOutputStreamEi(ptr noundef nonnull align 8 dereferenceable(37384) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 48)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  store ptr %i.g, ptr %3, align 8, !tbaa !25
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !26
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !26
  invoke void @_ZN8facebook5velox19HashStringAllocator11extendWriteENS1_8PositionERNS0_16ByteOutputStreamE(ptr noundef nonnull align 8 dereferenceable(37384) %i.a, ptr nonnull %i.d, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.e, %bb.c
  invoke void @_ZN8facebook5velox4exec17ContainerRowSerde9serializeERKNS0_10BaseVectorEiRNS0_16ByteOutputStreamERKNS1_24ContainerRowSerdeOptionsE(ptr noundef nonnull align 8 dereferenceable(94) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(1) @_ZZNK8facebook5velox9aggregate8ValueSet5writeERKNS0_10BaseVectorEiRNS0_19HashStringAllocator8PositionEE8kOptions)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  invoke void @_ZN8facebook5velox19HashStringAllocator11finishWriteERNS0_16ByteOutputStreamEi(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %5, ptr noundef nonnull align 8 dereferenceable(37384) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 0)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #10
  br label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit

_ZN8facebook5velox16ByteOutputStreamD2Ev.exit:    ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void

bb.k:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.j, %bb.f ], [ %i.i, %bb.d ]
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i11, label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit12, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #10
  br label %_ZN8facebook5velox16ByteOutputStreamD2Ev.exit12

_ZN8facebook5velox16ByteOutputStreamD2Ev.exit12:  ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare { ptr, ptr } @_ZN8facebook5velox19HashStringAllocator8newWriteERNS0_16ByteOutputStreamEi(ptr noundef nonnull align 8 dereferenceable(37384), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN8facebook5velox19HashStringAllocator11extendWriteENS1_8PositionERNS0_16ByteOutputStreamE(ptr noundef nonnull align 8 dereferenceable(37384), ptr, ptr, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN8facebook5velox4exec17ContainerRowSerde9serializeERKNS0_10BaseVectorEiRNS0_16ByteOutputStreamERKNS1_24ContainerRowSerdeOptionsE(ptr noundef nonnull align 8 dereferenceable(94), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare void @_ZN8facebook5velox19HashStringAllocator11finishWriteERNS0_16ByteOutputStreamEi(ptr dead_on_unwind writable sret(%"struct.std::pair") align 8, ptr noundef nonnull align 8 dereferenceable(37384), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZNK8facebook5velox9aggregate8ValueSet5writeERKNS0_10StringViewE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !29     ; 5 uses
  %i.b = icmp ult i32 %i.a, 13
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.0.sroa.3.0.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !31
  %.pre = and i64 %.sroa.0.0.copyload, 4294967295
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %i.a to i64                     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 37376
  %i.f = load i8, ptr %i.e, align 8, !tbaa !32, !range !54, !noundef !55
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN8facebook5velox19HashStringAllocator5State13currentHeaderEv.exit.i, label %bb.d, !prof !56

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox19HashStringAllocator5State16assertMutabilityEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.10) #11
  unreachable

_ZN8facebook5velox19HashStringAllocator5State13currentHeaderEv.exit.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 37240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN8facebook5velox19HashStringAllocator8allocateEi.exit, label %bb.e, !prof !56

bb.e:                                             ; preds = %_ZN8facebook5velox19HashStringAllocator5State13currentHeaderEv.exit.i
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox19HashStringAllocator8allocateEiE18veloxCheckFailArgs, ptr noundef nonnull @.str.7) #11
  unreachable

_ZN8facebook5velox19HashStringAllocator8allocateEi.exit: ; preds = %_ZN8facebook5velox19HashStringAllocator5State13currentHeaderEv.exit.i
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.a, i32 16)
  %i.j = zext nneg i32 %.sroa.speculated.i to i64
  %i.k = tail call noundef ptr @_ZN8facebook5velox19HashStringAllocator8allocateElb(ptr noundef nonnull align 8 dereferenceable(37384) %i.d, i64 noundef %i.j, i1 noundef zeroext true)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  %i.m = load i32, ptr %1, align 8, !tbaa !29
  %i.n = icmp ult i32 %i.m, 13
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.n, ptr %i.o, ptr %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.r, i64 %i.c, i1 false)
  %i.s = icmp slt i32 %i.a, 0
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox10StringViewC2EPKci.exit, !prof !57

bb.f:                                             ; preds = %_ZN8facebook5velox19HashStringAllocator8allocateEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9, !noalias !58
  store i32 %i.a, ptr %2, align 16, !tbaa !31, !noalias !58
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.t, align 16, !tbaa !31, !noalias !58
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.14, i64 11, i64 17, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9, !noalias !58
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.14) #11
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %3, align 8, !tbaa !61     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.y = load i64, ptr %i.w, align 8, !tbaa !31
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  resume { ptr, i32 } %i.u

_ZN8facebook5velox10StringViewC2EPKci.exit:       ; preds = %_ZN8facebook5velox19HashStringAllocator8allocateEi.exit
  %i.aa = load i32, ptr %i.l, align 1
  %4 = zext i32 %i.aa to i64
  br label %bb.i

bb.i:                                             ; preds = %_ZN8facebook5velox10StringViewC2EPKci.exit, %bb.b
  %.sroa.0.sroa.0.0.insert.ext.pre-phi = phi i64 [ %i.c, %_ZN8facebook5velox10StringViewC2EPKci.exit ], [ %.pre, %bb.b ]
  %.sroa.0.sroa.3.0 = phi i64 [ %4, %_ZN8facebook5velox10StringViewC2EPKci.exit ], [ %.sroa.0.sroa.3.0.extract.shift, %bb.b ]
  %.sroa.4.0 = phi ptr [ %i.l, %_ZN8facebook5velox10StringViewC2EPKci.exit ], [ %.sroa.4.0.copyload, %bb.b ]
  %.sroa.0.sroa.3.0.insert.shift = shl nuw i64 %.sroa.0.sroa.3.0, 32
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext.pre-phi
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox9aggregate8ValueSet4readEPNS0_10BaseVectorEiPKNS0_19HashStringAllocator6HeaderE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::HashStringAllocator::InputStream", align 8 ; 10 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !57

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9aggregate8ValueSet4readEPNS0_10BaseVectorEiPKNS0_19HashStringAllocator6HeaderEE18veloxCheckFailArgs) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN8facebook5velox19HashStringAllocator11InputStreamE, i64 16), ptr %4, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !71
  %i.f = load i32, ptr %3, align 4, !tbaa !72     ; 2 uses
  %i.g = and i32 %i.f, 1073741824
  %.not.i.i.i = icmp eq i32 %i.g, 0
  %i.h = and i32 %i.f, 536870911                  ; 2 uses
  %i.i = add nsw i32 %i.h, -8
  %i.j = select i1 %.not.i.i.i, i32 %i.h, i32 %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %i.k, ptr %i.l, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 0, ptr %i.m, align 8, !tbaa !75
  store ptr %i.e, ptr %i.a, align 8, !tbaa !76
  call void @_ZN8facebook5velox4exec17ContainerRowSerde11deserializeERNS0_15ByteInputStreamEiPNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

declare void @_ZN8facebook5velox4exec17ContainerRowSerde11deserializeERNS0_15ByteInputStreamEiPNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox9aggregate8ValueSet4freeEPNS0_19HashStringAllocator6HeaderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !57

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9aggregate8ValueSet4freeEPNS0_19HashStringAllocator6HeaderEE18veloxCheckFailArgs) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  tail call void @_ZN8facebook5velox19HashStringAllocator4freeEPNS1_6HeaderE(ptr noundef nonnull align 8 dereferenceable(37384) %i.a, ptr noundef nonnull %1)
  ret void
}

declare void @_ZN8facebook5velox19HashStringAllocator4freeEPNS1_6HeaderE(ptr noundef nonnull align 8 dereferenceable(37384), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox9aggregate8ValueSet4freeERKNS0_10StringViewE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !29
  %i.b = icmp ult i32 %i.a, 13
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.f = load ptr, ptr %0, align 8, !tbaa !7
  tail call void @_ZN8facebook5velox19HashStringAllocator4freeEPNS1_6HeaderE(ptr noundef nonnull align 8 dereferenceable(37384) %i.f, ptr noundef nonnull %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN8facebook5velox19HashStringAllocator8allocateElb(ptr noundef nonnull align 8 dereferenceable(37384), i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox15ByteInputStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox19HashStringAllocator11InputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #10
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK8facebook5velox19HashStringAllocator11InputStream4sizeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.056 = load ptr, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.b = load i32, ptr %.056, align 4, !tbaa !72  ; 2 uses
  %i.c = and i32 %i.b, 1073741824
  %.not.i7 = icmp eq i32 %i.c, 0                  ; 2 uses
  %i.d = and i32 %i.b, 536870911                  ; 3 uses
  %i.e = add nsw i32 %i.d, -8
  %i.f = select i1 %.not.i7, i32 %i.d, i32 %i.e
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  br i1 %.not.i7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.h = phi i64 [ %i.s, %.lr.ph ], [ %i.g, %bb.a ]
  %i.i = phi i32 [ %i.o, %.lr.ph ], [ %i.d, %bb.a ]
  %.059 = phi ptr [ %.05, %.lr.ph ], [ %.056, %bb.a ]
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %.059, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4
  %.05 = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %i.m = load i32, ptr %.05, align 4, !tbaa !72   ; 2 uses
  %i.n = and i32 %i.m, 1073741824
  %.not.i = icmp eq i32 %i.n, 0                   ; 2 uses
  %i.o = and i32 %i.m, 536870911                  ; 3 uses
  %i.p = add nsw i32 %i.o, -8
  %i.q = select i1 %.not.i, i32 %i.o, i32 %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = add i64 %i.h, %i.r                       ; 2 uses
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i64 [ %i.g, %bb.a ], [ %i.s, %.lr.ph ]
  ret i64 %.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox19HashStringAllocator11InputStream5atEndEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = load i32, ptr %i.g, align 4, !tbaa !72
  %i.i = and i32 %i.h, 1073741824
  %.not = icmp eq i32 %i.i, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %.not, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i64 } @_ZNK8facebook5velox19HashStringAllocator11InputStream5tellpEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %.056 = load ptr, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %.not7 = icmp eq ptr %.056, %i.c
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.059 = phi ptr [ %.05, %.lr.ph ], [ %.056, %bb.a ] ; 2 uses
  %.08 = phi i64 [ %i.j, %.lr.ph ], [ 0, %bb.a ]
  %i.d = load i32, ptr %.059, align 4, !tbaa !72  ; 2 uses
  %i.e = and i32 %i.d, 1073741824
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = and i32 %i.d, 536870911                  ; 3 uses
  %i.g = add nsw i32 %i.f, -8
end_hunk_0
