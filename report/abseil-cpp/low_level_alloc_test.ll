Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/low_level_alloc_test?download=true
inline.NumInlined: 465
inline.NumDeleted: 270
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.absl::lts_20260526::container_internal::PolicyFunctions" = type { i32, i32, i32, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.absl::lts_20260526::container_internal::HashKey" = type { ptr, ptr }
%"class.absl::lts_20260526::node_hash_map" = type { %"class.absl::lts_20260526::container_internal::raw_hash_map" }
%"class.absl::lts_20260526::container_internal::raw_hash_map" = type { %"class.absl::lts_20260526::container_internal::raw_hash_set" }
%"class.absl::lts_20260526::container_internal::raw_hash_set" = type { %"class.absl::lts_20260526::container_internal::CompressedTuple" }
%"class.absl::lts_20260526::container_internal::CompressedTuple" = type { %"struct.absl::lts_20260526::container_internal::internal_compressed_tuple::CompressedTupleImpl" }
%"struct.absl::lts_20260526::container_internal::internal_compressed_tuple::CompressedTupleImpl" = type { %"struct.absl::lts_20260526::container_internal::internal_compressed_tuple::Storage" }
%"struct.absl::lts_20260526::container_internal::internal_compressed_tuple::Storage" = type { %"class.absl::lts_20260526::container_internal::CommonFields" }
%"class.absl::lts_20260526::container_internal::CommonFields" = type { %"class.absl::lts_20260526::container_internal::HashtableInlineDataImpl", %"union.absl::lts_20260526::container_internal::HeapOrSoo" }
%"class.absl::lts_20260526::container_internal::HashtableInlineDataImpl" = type { i64 }
%"union.absl::lts_20260526::container_internal::HeapOrSoo" = type { %"struct.absl::lts_20260526::container_internal::HeapPtrs" }
%"struct.absl::lts_20260526::container_internal::HeapPtrs" = type { %"union.absl::lts_20260526::container_internal::MaybeInitializedPtr", %"union.absl::lts_20260526::container_internal::MaybeInitializedPtr.0" }
%"union.absl::lts_20260526::container_internal::MaybeInitializedPtr" = type { ptr }
%"union.absl::lts_20260526::container_internal::MaybeInitializedPtr.0" = type { ptr }
%class.anon.21 = type { ptr }

$__clang_call_terminate = comdat any

$_ZN4absl12lts_2026052618container_internal20TransferNRelocatableILm8EEEvPvS3_S3_m = comdat any

$_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIiEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE = comdat any

@stdout = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"TEST_ASSERT(%s) FAILED ON LINE %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"LowLevelAlloc::DeleteArena(arena)\00", align 1
@_ZN4absl12lts_2026052618container_internal11kSooControlE = external constant [2 x i8], align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"(d.ptr[i] & 0xff) == ((d.fill + i) & 0xff)\00", align 1
@_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE18GetPolicyFunctionsEvE5value = internal constant %"struct.absl::lts_20260526::container_internal::PolicyFunctions" { i32 4, i32 24, i32 8, i16 8, i8 1, i8 1, ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2026052618container_internal36TypeErasedDerefAndApplyToSlotFirstFnINS0_13hash_internal4HashIiEESt4pairIKiNS0_13base_internal12_GLOBAL__N_19BlockDescEELb1EEEmPKvPvm, ptr @_ZN4absl12lts_2026052618container_internal20TransferNRelocatableILm8EEEvPvS3_S3_m, ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m, ptr @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSE_PFvSE_hmmE }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_low_level_alloc_test.cc, ptr null }]
@str = private unnamed_addr constant [5 x i8] c"PASS\00", align 1

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_14TestEbbi(i1 noundef zeroext %0, i1 noundef zeroext %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20260526::node_hash_map", align 8 ; 22 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i64 1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  br i1 %0, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = zext i1 %1 to i32
  %i.c = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc8NewArenaEj(i32 noundef %i.b)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.d:                                             ; preds = %bb.b, %bb.a
  %.024 = phi ptr [ null, %bb.a ], [ %i.c, %bb.b ] ; 3 uses
  %i.e = icmp eq ptr %.024, null
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit, %bb.d
  %.025 = phi i32 [ 0, %bb.d ], [ %i.ey, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit ] ; 3 uses
  switch i32 %.025, label %bb.f [
    i32 50000, label %.preheader
    i32 0, label %bb.i
  ]

.preheader:                                       ; preds = %bb.e
  %.val1.i68130 = load i64, ptr %3, align 8       ; 3 uses
  %i.i = icmp ult i64 %.val1.i68130, 562949953552384
  call void @llvm.assume(i1 %i.i)
  %.not.i.i69131 = icmp samesign ult i64 %.val1.i68130, 131072
  br i1 %.not.i.i69131, label %._crit_edge, label %.lr.ph, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.j = urem i32 %.025, 10000
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %putchar = call i32 @putchar(i32 46)            ; 0 uses
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !44
  %i.m = call i32 @fflush(ptr noundef %i.l)       ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.ao, %bb.an, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.thread.i, %bb.ac, %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit65, %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit, %bb.l, %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.f
  %i.o = call i32 @rand() #21
  %trunc = trunc i32 %i.o to i1
  br i1 %trunc, label %bb.ag, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = call i32 @rand() #21
  %i.q = and i32 %i.p, 16383                      ; 6 uses
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  br i1 %i.e, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc5AllocEm(i64 noundef %i.r)
          to label %bb.m unwind label %bb.h

bb.l:                                             ; preds = %bb.j
  %i.t = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.r, ptr noundef nonnull %.024)
          to label %bb.m unwind label %bb.h

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = phi ptr [ %i.s, %bb.k ], [ %i.t, %bb.l ] ; 4 uses
  %i.v = call i32 @rand() #21                     ; 4 uses
  %i.w = and i32 %i.v, 255
  %.not7.i = icmp eq i32 %i.q, 0
  br i1 %.not7.i, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit, label %iter.check

iter.check:                                       ; preds = %bb.m
  %i.x = zext nneg i32 %i.q to i64                ; 6 uses
  %min.iters.check = icmp samesign ult i32 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp samesign ult i32 %i.q, 16
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %i.x, 12
  %n.vec = and i64 %i.x, 16368                    ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %4 = add <16 x i32> %broadcast.splat, %vec.ind
  %5 = trunc <16 x i32> %4 to <16 x i8>
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %index
  store <16 x i8> %5, ptr %i.z, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br i1 %cmp.n, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec11 = and i64 %i.x, 16380                  ; 3 uses
  %broadcast.splatinsert12 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat13 = shufflevector <4 x i32> %broadcast.splatinsert12, <4 x i32> poison, <4 x i32> zeroinitializer
  %6 = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert14 = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat15 = shufflevector <4 x i32> %broadcast.splatinsert14, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat15, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind17 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next19, %vec.epilog.vector.body ] ; 2 uses
  %7 = add <4 x i32> %broadcast.splat13, %vec.ind17
  %8 = trunc <4 x i32> %7 to <4 x i8>
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %index16
  store <4 x i8> %8, ptr %i.ab, align 1, !tbaa !10
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %vec.ind.next19 = add <4 x i32> %vec.ind17, splat (i32 4)
  %i.ac = icmp eq i64 %index.next18, %n.vec11
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %n.vec11, %i.x
  br i1 %cmp.n20, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %9 = trunc nuw nsw i64 %indvars.iv.i to i32
  %10 = add i32 %i.v, %9
  %11 = trunc i32 %10 to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.i
  store i8 %11, ptr %i.ad, align 1, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.x
  br i1 %.not.i, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit, label %.lr.ph.i, !llvm.loop !25

_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.m
  %i.ae = call i32 @rand() #21                    ; 7 uses
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !12
  %.val.i = load i64, ptr %3, align 8             ; 10 uses
  %i.af = and i64 %.val.i, 254
  %i.ag = icmp eq i64 %i.af, 0                    ; 2 uses
  br i1 %i.ag, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit
  %i.ah = icmp ult i64 %.val.i, 562949953552384
  call void @llvm.assume(i1 %i.ah)
  %.not.i.i.i = icmp samesign ult i64 %.val.i, 131072
  br i1 %.not.i.i.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val3.i.i = load ptr, ptr %i.f, align 8, !tbaa !14
  %.val5.i.i = load i32, ptr %.val3.i.i, align 4, !tbaa !12
  %i.ai = icmp eq i32 %.val5.i.i, %i.ae
  %spec.select.i.i = select i1 %i.ai, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %bb.t

bb.p:                                             ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !10 ; 4 uses
  %i.aj = and i64 %.val.i, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.aj
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.ak = lshr i64 %.val.i, 8
  %i.al = and i64 %i.ak, 255
  %i.am = zext i32 %i.ae to i64
  %i.an = xor i64 %i.al, %i.am
  %i.ao = zext nneg i64 %i.an to i128
  %i.ap = mul nuw nsw i128 %i.ao, 8779197792823184629 ; 2 uses
  %i.aq = lshr i128 %i.ap, 64
  %i.ar = xor i128 %i.aq, %i.ap
  %i.as = trunc i128 %i.ar to i64                 ; 2 uses
  %i.at = xor i64 %notmask.i.i.i.i.i.i, -1        ; 2 uses
  %i.au = lshr i64 %i.as, 57
  %i.av = trunc nuw nsw i64 %i.au to i8
  %.val17.i.i = load ptr, ptr %i.g, align 8, !tbaa !10 ; 3 uses
  %i.aw = insertelement <16 x i8> poison, i8 %i.av, i64 0
  %i.ax = shufflevector <16 x i8> %i.aw, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.pn.i7.i = phi i64 [ %i.as, %bb.p ], [ %i.bu, %bb.s ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.p ], [ %i.bt, %bb.s ]
  %.sroa.630.0.i.i = and i64 %.pn.i7.i, %i.at     ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val17.i.i, i64 %.sroa.630.0.i.i
  call void @llvm.prefetch.p0(ptr %i.ay, i32 0, i32 3, i32 1)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.630.0.i.i
  %i.ba = load <16 x i8>, ptr %i.az, align 1, !tbaa !10 ; 2 uses
  %i.bb = icmp eq <16 x i8> %i.ax, %i.ba
  %i.bc = bitcast <16 x i1> %i.bb to i16
  %i.bd = zext i16 %i.bc to i32
  %i.be = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bd) #22, !srcloc !15 ; 2 uses
  %.not52.i.i = icmp eq i32 %i.be, 0
  br i1 %.not52.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.sroa.021.053.i.i = phi i32 [ %i.bo, %bb.r ], [ %i.be, %bb.q ] ; 3 uses
  %i.bf = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.021.053.i.i, i1 true)
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = add nuw i64 %.sroa.630.0.i.i, %i.bg
  %i.bi = and i64 %i.bh, %i.at                    ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.val17.i.i, i64 %i.bi
  %.val.i8.i = load ptr, ptr %i.bj, align 8, !tbaa !14
  %.val15.i.i = load i32, ptr %.val.i8.i, align 4, !tbaa !12
  %i.bk = icmp eq i32 %.val15.i.i, %i.ae
  br i1 %i.bk, label %.thread38.i.i, label %bb.r, !prof !16

.thread38.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.val17.i.i, i64 %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.bi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE10find_largeIiEENS8_8iteratorERKim.exit.i

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.bn = add i32 %.sroa.021.053.i.i, -1
  %i.bo = and i32 %i.bn, %.sroa.021.053.i.i       ; 2 uses
  %.not.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.r, %bb.q
  %i.bp = icmp eq <16 x i8> %i.ba, splat (i8 -128)
  %i.bq = bitcast <16 x i1> %i.bp to i16
  %i.br = zext i16 %i.bq to i32
  %i.bs = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.br) #22, !srcloc !15
  %.not49.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not49.i.i, label %bb.s, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE10find_largeIiEENS8_8iteratorERKim.exit.i, !prof !17

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bt = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.bu = add i64 %i.bt, %.sroa.630.0.i.i
  br label %bb.q, !llvm.loop !26

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE10find_largeIiEENS8_8iteratorERKim.exit.i: ; preds = %._crit_edge.i.i, %.thread38.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.bm, %.thread38.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.bl, %.thread38.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE10find_largeIiEENS8_8iteratorERKim.exit.i, %bb.o, %bb.n
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE10find_largeIiEENS8_8iteratorERKim.exit.i ], [ { ptr null, ptr undef }, %bb.n ], [ %spec.select.i.i, %bb.o ] ; 2 uses
  %i.bv = extractvalue { ptr, ptr } %.pn.i, 0
  %i.bw = extractvalue { ptr, ptr } %.pn.i, 1     ; 2 uses
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val50.val = load ptr, ptr %i.bw, align 8, !tbaa !14 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val50.val, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %.val50.val, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !50 ; 2 uses
  %.not6.i = icmp eq i32 %i.bz, 0
  %.pre142 = load ptr, ptr %i.bx, align 8, !tbaa !51 ; 2 uses
  br i1 %.not6.i, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %.val50.val, i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !52
  %i.cc = zext i32 %i.bz to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.w
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i52, 1 ; 2 uses
  %.not.i54 = icmp eq i64 %indvars.iv.next.i53, %i.cc
  br i1 %.not.i54, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit, label %bb.w, !llvm.loop !27

bb.w:                                             ; preds = %bb.v, %.lr.ph.i51
  %indvars.iv.i52 = phi i64 [ 0, %.lr.ph.i51 ], [ %indvars.iv.next.i53, %bb.v ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre142, i64 %indvars.iv.i52
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !10
  %12 = trunc i64 %indvars.iv.i52 to i32
  %13 = add i32 %i.cb, %12
  %14 = trunc i32 %13 to i8
  %i.cf = icmp eq i8 %i.ce, %14
  br i1 %i.cf, label %bb.v, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.4, i32 noundef 54) ; 0 uses
  call void @abort() #23
  unreachable

_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit: ; preds = %bb.v, %bb.u
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef %.pre142)
          to label %bb.y unwind label %bb.h

bb.y:                                             ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit
  %.val48.val = load ptr, ptr %i.bw, align 8, !tbaa !14
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split

bb.z:                                             ; preds = %bb.t
  br i1 %i.ag, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.ch = icmp ult i64 %.val.i, 562949953552384
  call void @llvm.assume(i1 %i.ch)
  %.not.i.i.i.i.i.i.i = icmp samesign ult i64 %.val.i, 131072
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i, label %bb.ab

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.ci = or i64 %.val.i, 131328
  store i64 %i.ci, ptr %3, align 8, !noalias !53
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !14, !noalias !53 ; 2 uses
  %.val6.i.i.i.i.i.i = load i32, ptr %.val4.i.i.i.i.i.i, align 4, !tbaa !12, !noalias !53
  %i.cj = icmp eq i32 %.val6.i.i.i.i.i.i, %i.ae
  br i1 %i.cj, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !53
  store ptr %3, ptr %2, align 8, !tbaa !54, !noalias !53
  store ptr %i.a, ptr %i.h, align 8, !tbaa !55, !noalias !53
  %i.ck = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIiEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !53
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !10, !noalias !53
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %i.ck
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i

bb.ad:                                            ; preds = %bb.z
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !10, !noalias !56 ; 3 uses
  %i.cm = and i64 %.val.i, 255
  %notmask.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.cm
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !56
  %i.cn = lshr i64 %.val.i, 8
  %i.co = and i64 %i.cn, 255
  %i.cp = zext i32 %i.ae to i64
  %i.cq = xor i64 %i.co, %i.cp
  %i.cr = zext nneg i64 %i.cq to i128
  %i.cs = mul nuw nsw i128 %i.cr, 8779197792823184629 ; 2 uses
  %i.ct = lshr i128 %i.cs, 64
  %i.cu = xor i128 %i.ct, %i.cs
  %i.cv = trunc i128 %i.cu to i64                 ; 3 uses
  %i.cw = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cx = lshr i64 %i.cv, 57
  %i.cy = trunc nuw nsw i64 %i.cx to i8
  %.val6.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !10, !noalias !56 ; 2 uses
  %i.cz = insertelement <16 x i8> poison, i8 %i.cy, i64 0
  %i.da = shufflevector <16 x i8> %i.cz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %.pn.i.i.i.i.i = phi i64 [ %i.cv, %bb.ad ], [ %i.dx, %bb.af ]
  %.sroa.14.0.i.i.i.i.i = phi i64 [ 0, %bb.ad ], [ %i.dw, %bb.af ] ; 2 uses
  %.sroa.641.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.cw ; 5 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val6.i.i.i.i.i, i64 %.sroa.641.0.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.db, i32 0, i32 3, i32 1), !noalias !56
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.641.0.i.i.i.i.i
  %i.dd = load <16 x i8>, ptr %i.dc, align 1, !tbaa !10, !noalias !56 ; 2 uses
  %i.de = icmp eq <16 x i8> %i.da, %i.dd
  %i.df = bitcast <16 x i1> %i.de to i16
  %i.dg = zext i16 %i.df to i32
  %i.dh = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.dg) #22, !srcloc !15 ; 2 uses
  %.not69.i.i.i.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not69.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ae, %.critedge.i.i.i.i.i.i
  %.sroa.026.070.i.i.i.i.i = phi i32 [ %i.dp, %.critedge.i.i.i.i.i.i ], [ %i.dh, %bb.ae ] ; 3 uses
  %i.di = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.026.070.i.i.i.i.i, i1 true)
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = add nuw i64 %.sroa.641.0.i.i.i.i.i, %i.dj
  %i.dl = and i64 %i.dk, %i.cw
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.val6.i.i.i.i.i, i64 %i.dl
  %.val.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !tbaa !14, !noalias !56 ; 2 uses
  %.val4.i.i.i.i.i = load i32, ptr %.val.i.i.i.i.i, align 4, !tbaa !12, !noalias !56
  %i.dn = icmp eq i32 %.val4.i.i.i.i.i, %i.ae
  br i1 %i.dn, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !16

.critedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  %i.do = add i32 %.sroa.026.070.i.i.i.i.i, -1
  %i.dp = and i32 %i.do, %.sroa.026.070.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.critedge.i.i.i.i.i.i, %bb.ae
  %i.dq = icmp eq <16 x i8> %i.dd, splat (i8 -128)
  %i.dr = bitcast <16 x i1> %i.dq to i16
  %i.ds = zext i16 %i.dr to i32
  %i.dt = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ds) #22, !srcloc !15 ; 2 uses
  %.not63.i.i.i.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not63.i.i.i.i.i, label %bb.af, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.thread.i, !prof !17

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.thread.i: ; preds = %._crit_edge.i.i.i.i.i
  %i.du = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.cv, i32 %i.dt, i64 %.sroa.641.0.i.i.i.i.i, i64 %.sroa.14.0.i.i.i.i.i)
          to label %.noexc55 unwind label %bb.h

.noexc55:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.thread.i
  %.val.i.pre.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !10, !noalias !56
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.val.i.pre.i.i.i.i.i, i64 %i.du
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i

bb.af:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.dw = add i64 %.sroa.14.0.i.i.i.i.i, 16       ; 2 uses
  %i.dx = add i64 %i.dw, %.sroa.641.0.i.i.i.i.i
  br label %bb.ae

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i: ; preds = %.noexc55, %.noexc, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i
  %.sroa.6.0.i = phi ptr [ %i.dv, %.noexc55 ], [ %i.f, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i ], [ %i.cl, %.noexc ]
  %i.dy = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc56 unwind label %bb.h   ; 4 uses

.noexc56:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i
  %.val.val.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !12, !noalias !57
  store i32 %.val.val.i.i.i.i.i.i.i.i.i.i, ptr %i.dy, align 8, !tbaa !59, !noalias !57
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i8 0, i64 16, i1 false), !noalias !57
  store ptr %i.dy, ptr %.sroa.6.0.i, align 8, !tbaa !14, !noalias !57
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split

bb.ag:                                            ; preds = %bb.i
  %.val1.i = load i64, ptr %3, align 8            ; 3 uses
  %i.ea = icmp ult i64 %.val1.i, 562949953552384
  call void @llvm.assume(i1 %i.ea)
  %.not.i.i57 = icmp samesign ult i64 %.val1.i, 131072
  br i1 %.not.i.i57, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit, label %bb.ah, !prof !17

bb.ah:                                            ; preds = %bb.ag
  %i.eb = and i64 %.val1.i, 254
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %.loopexit117, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !10, !nonnull !20, !noundef !20 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !10 ; 2 uses
  %i.ed = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1, !tbaa !22
  %i.ee = icmp slt i8 %i.ed, -1
  br i1 %i.ee, label %.lr.ph.i.i59, label %.loopexit117

.lr.ph.i.i59:                                     ; preds = %bb.ai, %.lr.ph.i.i59
  %i.ef = phi ptr [ %i.ei, %.lr.ph.i.i59 ], [ %.sroa.0.0.copyload.i.i.i, %bb.ai ]
  %i.eg = phi ptr [ %i.eh, %.lr.ph.i.i59 ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.ai ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.ej = load i8, ptr %i.eh, align 1, !tbaa !22
  %i.ek = icmp slt i8 %i.ej, -1
  br i1 %i.ek, label %.lr.ph.i.i59, label %.loopexit117, !llvm.loop !40

.loopexit117:                                     ; preds = %.lr.ph.i.i59, %bb.ai, %bb.ah
  %.sroa.6.0.i58.ph = phi ptr [ %i.f, %bb.ah ], [ %.sroa.0.0.copyload.i.i.i, %bb.ai ], [ %i.ei, %.lr.ph.i.i59 ] ; 2 uses
  %.sroa.0.0.i.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.ah ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.ai ], [ %i.eh, %.lr.ph.i.i59 ]
  %.val47.val = load ptr, ptr %.sroa.6.0.i58.ph, align 8, !tbaa !14 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.val47.val, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %.val47.val, i64 16
  %i.en = load i32, ptr %i.em, align 8, !tbaa !50 ; 2 uses
  %.not6.i60 = icmp eq i32 %i.en, 0
  %.pre143 = load ptr, ptr %i.el, align 8, !tbaa !51 ; 2 uses
  br i1 %.not6.i60, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit65, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.loopexit117
  %i.eo = getelementptr inbounds nuw i8, ptr %.val47.val, i64 20
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !52
  %i.eq = zext i32 %i.en to i64
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ak
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %.not.i64 = icmp eq i64 %indvars.iv.next.i63, %i.eq
  br i1 %.not.i64, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit65, label %bb.ak, !llvm.loop !27

bb.ak:                                            ; preds = %bb.aj, %.lr.ph.i61
  %indvars.iv.i62 = phi i64 [ 0, %.lr.ph.i61 ], [ %indvars.iv.next.i63, %bb.aj ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.pre143, i64 %indvars.iv.i62
  %i.es = load i8, ptr %i.er, align 1, !tbaa !10
  %15 = trunc i64 %indvars.iv.i62 to i32
  %16 = add i32 %i.ep, %15
  %17 = trunc i32 %16 to i8
  %i.et = icmp eq i8 %i.es, %17
  br i1 %i.et, label %bb.aj, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.4, i32 noundef 54) ; 0 uses
  call void @abort() #23
  unreachable

_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit65: ; preds = %bb.aj, %.loopexit117
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef %.pre143)
          to label %bb.am unwind label %bb.h

bb.am:                                            ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit65
  %.val1.val.val.i.i.i = load ptr, ptr %.sroa.6.0.i58.ph, align 8, !tbaa !14
  call void @_ZdlPvm(ptr noundef %.val1.val.val.i.i.i, i64 noundef 24) #25
  %.val.i.i = load i64, ptr %3, align 8
  %i.ev = and i64 %.val.i.i, 254
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlySmallERNS1_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext true, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit unwind label %bb.h

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlyLargeERNS1_12CommonFieldsEPKNS1_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %.sroa.0.0.i.ph, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit unwind label %bb.h

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split: ; preds = %bb.ab, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.i, %.noexc56, %bb.y
  %.val.val.i.i.sink169 = phi ptr [ %.val48.val, %bb.y ], [ %i.dy, %.noexc56 ], [ %.val.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.i ], [ %.val4.i.i.i.i.i.i, %bb.ab ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.val.i.i.sink169, i64 8
  store ptr %i.u, ptr %i.ex, align 8, !tbaa !60
  %.sroa.7.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %.val.val.i.i.sink169, i64 16
  store i32 %i.q, ptr %.sroa.7.0..sroa_idx96, align 8, !tbaa !12
  %.sroa.10.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %.val.val.i.i.sink169, i64 20
  store i32 %i.w, ptr %.sroa.10.0..sroa_idx99, align 4, !tbaa !12
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split, %bb.ag, %bb.an, %bb.ao
  %i.ey = add nuw nsw i32 %.025, 1
  br label %bb.e, !llvm.loop !41

.lr.ph:                                           ; preds = %.preheader, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89
  %.val1.i68132 = phi i64 [ %.val1.i68, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89 ], [ %.val1.i68130, %.preheader ]
  %i.ez = and i64 %.val1.i68132, 254
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph
  %.sroa.0.0.copyload.i.i.i.i70 = load ptr, ptr %i.f, align 8, !tbaa !10, !nonnull !20, !noundef !20 ; 3 uses
  %.sroa.0.0.copyload.i.i.i72 = load ptr, ptr %i.g, align 8, !tbaa !10 ; 2 uses
  %i.fb = load i8, ptr %.sroa.0.0.copyload.i.i.i.i70, align 1, !tbaa !22
  %i.fc = icmp slt i8 %i.fb, -1
  br i1 %i.fc, label %.lr.ph.i.i77, label %.loopexit

.lr.ph.i.i77:                                     ; preds = %bb.ap, %.lr.ph.i.i77
  %i.fd = phi ptr [ %i.fg, %.lr.ph.i.i77 ], [ %.sroa.0.0.copyload.i.i.i72, %bb.ap ]
  %i.fe = phi ptr [ %i.ff, %.lr.ph.i.i77 ], [ %.sroa.0.0.copyload.i.i.i.i70, %bb.ap ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %i.fh = load i8, ptr %i.ff, align 1, !tbaa !22
  %i.fi = icmp slt i8 %i.fh, -1
  br i1 %i.fi, label %.lr.ph.i.i77, label %.loopexit, !llvm.loop !40

.loopexit:                                        ; preds = %.lr.ph.i.i77, %bb.ap, %.lr.ph
  %.sroa.6.0.i73.ph = phi ptr [ %i.f, %.lr.ph ], [ %.sroa.0.0.copyload.i.i.i72, %bb.ap ], [ %i.fg, %.lr.ph.i.i77 ] ; 2 uses
  %.sroa.0.0.i74.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %.lr.ph ], [ %.sroa.0.0.copyload.i.i.i.i70, %bb.ap ], [ %i.ff, %.lr.ph.i.i77 ]
  %.val45.val = load ptr, ptr %.sroa.6.0.i73.ph, align 8, !tbaa !14 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.val45.val, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %.val45.val, i64 16
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !50 ; 2 uses
  %.not6.i79 = icmp eq i32 %i.fl, 0
  %.pre = load ptr, ptr %i.fj, align 8, !tbaa !51 ; 2 uses
  br i1 %.not6.i79, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit84, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.loopexit
  %i.fm = getelementptr inbounds nuw i8, ptr %.val45.val, i64 20
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !52
  %i.fo = zext i32 %i.fl to i64
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ar
  %indvars.iv.next.i82 = add nuw nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %.not.i83 = icmp eq i64 %indvars.iv.next.i82, %i.fo
  br i1 %.not.i83, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit84, label %bb.ar, !llvm.loop !27

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.i80
  %indvars.iv.i81 = phi i64 [ 0, %.lr.ph.i80 ], [ %indvars.iv.next.i82, %bb.aq ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv.i81
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !10
  %18 = trunc i64 %indvars.iv.i81 to i32
  %19 = add i32 %i.fn, %18
  %20 = trunc i32 %19 to i8
  %i.fr = icmp eq i8 %i.fq, %20
  br i1 %i.fr, label %bb.aq, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.4, i32 noundef 54) ; 0 uses
  call void @abort() #23
  unreachable

_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit84: ; preds = %bb.aq, %.loopexit
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef %.pre)
          to label %bb.at unwind label %.loopexit116

bb.at:                                            ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit84
  %.val1.val.val.i.i.i85 = load ptr, ptr %.sroa.6.0.i73.ph, align 8, !tbaa !14
  call void @_ZdlPvm(ptr noundef %.val1.val.val.i.i.i85, i64 noundef 24) #25
  %.val.i.i86 = load i64, ptr %3, align 8
  %i.ft = and i64 %.val.i.i86, 254
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlySmallERNS1_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext true, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89 unwind label %.loopexit116

bb.av:                                            ; preds = %bb.at
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlyLargeERNS1_12CommonFieldsEPKNS1_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %.sroa.0.0.i74.ph, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89 unwind label %.loopexit116

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89: ; preds = %bb.av, %bb.au
  %.val1.i68 = load i64, ptr %3, align 8          ; 3 uses
  %i.fv = icmp ult i64 %.val1.i68, 562949953552384
  call void @llvm.assume(i1 %i.fv)
  %.not.i.i69 = icmp samesign ult i64 %.val1.i68, 131072
  br i1 %.not.i.i69, label %._crit_edge, label %.lr.ph, !prof !61

.loopexit116:                                     ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit84, %bb.au, %bb.av
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp:                               ; preds = %bb.aw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89, %.preheader
  br i1 %0, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %._crit_edge
  %i.fw = invoke noundef zeroext i1 @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc11DeleteArenaEPNS2_5ArenaE(ptr noundef %.024)
          to label %bb.ax unwind label %.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.fw, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 143) ; 0 uses
  call void @abort() #23
  unreachable

bb.az:                                            ; preds = %bb.ax, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.ba:                                            ; preds = %.loopexit116, %.loopexit.split-lp, %bb.h, %bb.c
  %.pn28.pn = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.n, %bb.h ], [ %lpad.loopexit, %.loopexit116 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn28.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc8NewArenaEj(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #5

declare noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc5AllocEm(i64 noundef) local_unnamed_addr #4 section "malloc_hook"

declare noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef, ptr noundef) local_unnamed_addr #4 section "malloc_hook"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef) local_unnamed_addr #4 section "malloc_hook"

declare noundef zeroext i1 @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc11DeleteArenaEPNS2_5ArenaE(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.21, align 8             ; 4 uses
  %.val2.i = load i64, ptr %0, align 8            ; 4 uses
  %i.a = and i64 %.val2.i, 255
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = and i64 %.val2.i, 254
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %.val2.i, 562949953552384
  tail call void @llvm.assume(i1 %i.e)
  %.not.i.i = icmp samesign ult i64 %.val2.i, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE15destructor_implEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.val.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !14
  tail call void @_ZdlPvm(ptr noundef %.val1.val.val.i.i.i, i64 noundef 24) #25
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE15destructor_implEv.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8, !tbaa !64
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 8, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSD_SE_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.val2.i.i = load i64, ptr %0, align 8          ; 2 uses
  %i.g = and i64 %.val2.i.i, 255                  ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.g       ; 4 uses
  %i.h = add nsw i64 %notmask.i.i.i.i.i, 8589934591
  %i.i = or i64 %i.h, %notmask.i.i.i.i.i
  %i.j = icmp eq i64 %i.i, -1
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp ne i64 %i.g, 0
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ugt i64 %notmask.i.i.i.i.i, -8589934593
  call void @llvm.assume(i1 %i.l)
  %i.m = and i64 %.val2.i.i, 65536
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !10
  %i.n = xor i64 %notmask.i.i.i.i.i, -1
  %i.o = icmp ne i64 %i.m, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr noundef %.sroa.0.0.copyload.i.i.i.pre.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.o)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE15destructor_implEv.exit unwind label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE15destructor_implEv.exit: ; preds = %bb.c, %bb.b, %.noexc
  ret void

bb.e:                                             ; preds = %.noexc, %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #23
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

declare noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #4

declare noundef ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(24)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_ZN4absl12lts_2026052618container_internal36TypeErasedDerefAndApplyToSlotFirstFnINS0_13hash_internal4HashIiEESt4pairIKiNS0_13base_internal12_GLOBAL__N_19BlockDescEELb1EEEmPKvPvm(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #13 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !14
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = zext i32 %i.b to i64
  %i.d = xor i64 %2, %i.c
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw nsw i128 %i.e, 8779197792823184629 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSE_PFvSE_hmmE:bb.a
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %.val = load ptr, ptr %i.y, align 8, !tbaa !14  ; 2 uses
  %.val54 = load i32, ptr %.val, align 4, !tbaa !12
  %i.ac = zext i32 %.val54 to i64
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = zext nneg i64 %i.ad to i128
  %i.af = mul nuw nsw i128 %i.ae, 8779197792823184629 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af
  %i.ai = trunc i128 %i.ah to i64                 ; 6 uses
  %i.aj = lshr i64 %i.ai, 57
  %i.ak = trunc nuw nsw i64 %i.aj to i8           ; 2 uses
  %i.al = sub i64 %i.x, %i.ai                     ; 2 uses
  %i.am = and i64 %i.i, %i.al
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %.lr.ph
  %i.ao = and i64 %i.al, 15
  %i.ap = add i64 %i.ao, %i.ai
  %i.aq = and i64 %i.ap, %i.c
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ar = and i64 %i.d, %i.ai
  %.not.i = icmp ult i64 %i.ar, %i.x
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.as = and i64 %i.ai, %i.c                     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.as
  %i.au = load <16 x i8>, ptr %i.at, align 1, !tbaa !10
  %i.av = icmp slt <16 x i8> %i.au, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = zext i16 %i.aw to i32
  %i.ay = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ax) #22, !srcloc !15 ; 2 uses
  %.not26.i = icmp eq i32 %i.ay, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.az = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ay, i1 true)
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = add nuw i64 %i.as, %i.ba
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ak, i64 noundef %i.x, i64 noundef %i.ai)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.bb, %bb.g ], [ %i.aq, %bb.d ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ak, ptr %i.bc, align 1, !tbaa !22
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.val52, i64 %.sink27.i
  store ptr %.val, ptr %i.bd, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.be = add i32 %.sroa.055.064, -1
  %i.bf = and i32 %i.be, %.sroa.055.064           ; 2 uses
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIiEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #16 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67, !nonnull !20, !align !68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %i.d = zext i32 %i.c to i64
  %i.e = xor i64 %1, %i.d
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw nsw i128 %i.f, 8779197792823184629 ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64
  ret i64 %i.j
}

declare noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i32, i64, i64) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #18

declare void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlySmallERNS1_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i64 noundef) local_unnamed_addr #4

declare void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlyLargeERNS1_12CommonFieldsEPKNS1_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSD_SE_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val.val = load ptr, ptr %2, align 8, !tbaa !14
  tail call void @_ZdlPvm(ptr noundef %.val.val, i64 noundef 24) #25
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_low_level_alloc_test.cc() #19 section ".text.startup" {
bb.a:
  tail call fastcc void @_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_14TestEbbi(i1 noundef zeroext false, i1 noundef zeroext false)
  tail call fastcc void @_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_14TestEbbi(i1 noundef zeroext true, i1 noundef zeroext false)
  tail call fastcc void @_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_14TestEbbi(i1 noundef zeroext true, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #20

attributes #0 = { mustprogress nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nounwind }
attributes #22 = { nounwind memory(none) }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!6, !6, i64 0}
!13 = !{!"p1 _ZTSSt4pairIKiN4absl12lts_2026052613base_internal12_GLOBAL__N_19BlockDescEE", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{i64 9533702}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{!"p1 _ZTSN4absl12lts_2026052613hash_internal4HashIiEE", !9, i64 0}
!19 = !{!"p1 int", !9, i64 0}
!20 = !{}
!21 = !{!"_ZTSN4absl12lts_2026052618container_internal6ctrl_tE", !5, i64 0}
!22 = !{!21, !21, i64 0}
!23 = distinct !{!23, !11, !45, !46}
!24 = distinct !{!24, !11, !45, !46}
!25 = distinct !{!25, !11, !46, !45}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !"_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE11try_emplaceIiLi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS7_JEE14const_iteratorEEE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbERKiDpOT1_"}
!29 = distinct !{!29, !28, !"_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE11try_emplaceIiLi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS7_JEE14const_iteratorEEE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbERKiDpOT1_: argument 0"}
!30 = distinct !{!30, !"_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE16try_emplace_implIRKiJEEESt4pairINS1_12raw_hash_setIS7_JEE8iteratorEbEOT_DpOT0_"}
!31 = distinct !{!31, !30, !"_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE16try_emplace_implIRKiJEEESt4pairINS1_12raw_hash_setIS7_JEE8iteratorEbEOT_DpOT0_: argument 0"}
!32 = distinct !{!32, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_"}
!33 = distinct !{!33, !32, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_: argument 0"}
!34 = distinct !{!34, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE28find_or_prepare_insert_smallIiEESt4pairINS8_8iteratorEbERKT_"}
!35 = distinct !{!35, !34, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE28find_or_prepare_insert_smallIiEESt4pairINS8_8iteratorEbERKT_: argument 0"}
!36 = distinct !{!36, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE26find_or_prepare_insert_sooIiEESt4pairINS8_8iteratorEbERKT_"}
!37 = distinct !{!37, !36, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE26find_or_prepare_insert_sooIiEESt4pairINS8_8iteratorEbERKT_: argument 0"}
!38 = distinct !{!38, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_"}
!39 = distinct !{!39, !38, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_: argument 0"}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = !{!"branch_weights", i32 1, i32 127}
!43 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"branch_weights", i32 4, i32 12}
!48 = !{!"p1 omnipotent char", !9, i64 0}
!49 = !{!"_ZTSN4absl12lts_2026052613base_internal12_GLOBAL__N_19BlockDescE", !48, i64 0, !6, i64 8, !6, i64 12}
!50 = !{!49, !6, i64 8}
!51 = !{!49, !48, i64 0}
!52 = !{!49, !6, i64 12}
!53 = !{!37, !35, !33, !31, !29}
!54 = !{!18, !18, i64 0}
!55 = !{!19, !19, i64 0}
!56 = !{!39, !33, !31, !29}
!57 = !{!31, !29}
!58 = !{!"_ZTSSt4pairIKiN4absl12lts_2026052613base_internal12_GLOBAL__N_19BlockDescEE", !6, i64 0, !49, i64 8}
!59 = !{!58, !6, i64 0}
!60 = !{!48, !48, i64 0}
!61 = !{!"branch_weights", i32 127, i32 255873}
!62 = !{!"p1 _ZTSN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEEE", !9, i64 0}
!63 = !{!"_ZTSZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE13destroy_slotsEvEUlPKNS1_6ctrl_tEPvE_", !62, i64 0}
!64 = !{!63, !62, i64 0}
!65 = distinct !{!65, !11}
!66 = !{!"_ZTSN4absl12lts_2026052618container_internal7HashKeyINS0_13hash_internal4HashIiEEiLb1EEE", !18, i64 0, !19, i64 8}
!67 = !{!66, !19, i64 8}
!68 = !{i64 4}
end_hunk_1
