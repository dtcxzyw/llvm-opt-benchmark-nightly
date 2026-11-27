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
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext i1 %1 to i32
  %i.c = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc8NewArenaEj(i32 noundef %i.b)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b, %bb.a
  %.024 = phi ptr [ null, %bb.a ], [ %i.c, %bb.b ] ; 3 uses
  %i.d = icmp eq ptr %.024, null
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit, %bb.c
  %.025 = phi i32 [ 0, %bb.c ], [ %i.fk, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit ] ; 3 uses
  switch i32 %.025, label %bb.e [
    i32 50000, label %.preheader
    i32 0, label %bb.g
  ]

.preheader:                                       ; preds = %bb.d
  %.val1.i68133 = load i64, ptr %3, align 8       ; 3 uses
  %i.h = icmp ult i64 %.val1.i68133, 562949953552384
  call void @llvm.assume(i1 %i.h)
  %.not.i.i69134 = icmp samesign ult i64 %.val1.i68133, 131072
  br i1 %.not.i.i69134, label %._crit_edge, label %.lr.ph, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.i = urem i32 %.025, 10000
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %putchar = call i32 @putchar(i32 46)            ; 0 uses
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !44
  %i.l = call i32 @fflush(ptr noundef %i.k)       ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %i.m = call i32 @rand() #21
  %trunc = trunc i32 %i.m to i1
  br i1 %trunc, label %bb.ae, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = call i32 @rand() #21
  %.fr = freeze i32 %i.n
  %i.o = and i32 %.fr, 16383                      ; 6 uses
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  br i1 %i.d, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc5AllocEm(i64 noundef %i.p)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.h
  %i.r = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc14AllocWithArenaEmPNS2_5ArenaE(i64 noundef %i.p, ptr noundef nonnull %.024)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = phi ptr [ %i.q, %bb.i ], [ %i.r, %bb.j ] ; 4 uses
  %i.t = call i32 @rand() #21
  %.fr136 = freeze i32 %i.t                       ; 4 uses
  %i.u = and i32 %.fr136, 255
  %.not7.i = icmp eq i32 %i.o, 0
  br i1 %.not7.i, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.v = zext nneg i32 %i.o to i64                ; 6 uses
  %min.iters.check = icmp samesign ult i32 %i.o, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp samesign ult i32 %i.o, 16
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.v, 12
  %n.vec = and i64 %i.v, 16368                    ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %.fr136, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.x = add <16 x i32> %broadcast.splat, %vec.ind
  %i.y = trunc <16 x i32> %i.x to <16 x i8>
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %index
  store <16 x i8> %i.y, ptr %i.z, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec14 = and i64 %i.v, 16380                  ; 3 uses
  %broadcast.splatinsert15 = insertelement <4 x i32> poison, i32 %.fr136, i64 0
  %broadcast.splat16 = shufflevector <4 x i32> %broadcast.splatinsert15, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ab = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert17 = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat18 = shufflevector <4 x i32> %broadcast.splatinsert17, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat18, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind20 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next22, %vec.epilog.vector.body ] ; 2 uses
  %i.ac = add <4 x i32> %broadcast.splat16, %vec.ind20
  %i.ad = trunc <4 x i32> %i.ac to <4 x i8>
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %index19
  store <4 x i8> %i.ad, ptr %i.ae, align 1, !tbaa !10
  %index.next21 = add nuw i64 %index19, 4         ; 2 uses
  %vec.ind.next22 = add <4 x i32> %vec.ind20, splat (i32 4)
  %i.af = icmp eq i64 %index.next21, %n.vec14
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %n.vec14, %i.v
  br i1 %cmp.n23, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ah = add i32 %.fr136, %i.ag
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.v
  br i1 %.not.i, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit, label %.lr.ph.i, !llvm.loop !25

_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.k
  %i.ak = call i32 @rand() #21                    ; 7 uses
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !12
  %.val.i = load i64, ptr %3, align 8             ; 10 uses
  %i.al = and i64 %.val.i, 254
  %i.am = icmp eq i64 %i.al, 0                    ; 2 uses
  br i1 %i.am, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit
  %i.an = icmp ult i64 %.val.i, 562949953552384
  call void @llvm.assume(i1 %i.an)
  %.not.i.i.i = icmp samesign ult i64 %.val.i, 131072
  br i1 %.not.i.i.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val3.i.i = load ptr, ptr %i.e, align 8, !tbaa !14
  %.val5.i.i = load i32, ptr %.val3.i.i, align 4, !tbaa !12
  %i.ao = icmp eq i32 %.val5.i.i, %i.ak
  %spec.select.i.i = select i1 %i.ao, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %bb.r

bb.n:                                             ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !10 ; 4 uses
  %i.ap = and i64 %.val.i, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.ap
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.aq = lshr i64 %.val.i, 8
  %i.ar = and i64 %i.aq, 255
  %i.as = zext i32 %i.ak to i64
  %i.at = xor i64 %i.ar, %i.as
  %i.au = zext nneg i64 %i.at to i128
  %i.av = mul nuw nsw i128 %i.au, 8779197792823184629 ; 2 uses
  %i.aw = lshr i128 %i.av, 64
  %i.ax = xor i128 %i.aw, %i.av
  %i.ay = trunc i128 %i.ax to i64                 ; 2 uses
  %i.az = xor i64 %notmask.i.i.i.i.i.i, -1        ; 2 uses
  %i.ba = lshr i64 %i.ay, 57
  %i.bb = trunc nuw nsw i64 %i.ba to i8
  %.val17.i.i = load ptr, ptr %i.f, align 8, !tbaa !10 ; 3 uses
  %i.bc = insertelement <16 x i8> poison, i8 %i.bb, i64 0
  %i.bd = shufflevector <16 x i8> %i.bc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %.pn.i7.i = phi i64 [ %i.ay, %bb.n ], [ %i.ca, %bb.q ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.n ], [ %i.bz, %bb.q ]
  %.sroa.630.0.i.i = and i64 %.pn.i7.i, %i.az     ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.val17.i.i, i64 %.sroa.630.0.i.i
  call void @llvm.prefetch.p0(ptr %i.be, i32 0, i32 3, i32 1)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.630.0.i.i
  %i.bg = load <16 x i8>, ptr %i.bf, align 1, !tbaa !10 ; 2 uses
  %i.bh = icmp eq <16 x i8> %i.bd, %i.bg
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = zext i16 %i.bi to i32
  %i.bk = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bj) #22, !srcloc !15 ; 2 uses
  %.not52.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not52.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %bb.p
  %.sroa.021.053.i.i = phi i32 [ %i.bu, %bb.p ], [ %i.bk, %bb.o ] ; 3 uses
  %i.bl = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.021.053.i.i, i1 true)
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = add nuw i64 %.sroa.630.0.i.i, %i.bm
  %i.bo = and i64 %i.bn, %i.az                    ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.val17.i.i, i64 %i.bo
  %.val.i8.i = load ptr, ptr %i.bp, align 8, !tbaa !14
  %.val15.i.i = load i32, ptr %.val.i8.i, align 4, !tbaa !12
  %i.bq = icmp eq i32 %.val15.i.i, %i.ak
  br i1 %i.bq, label %.thread38.i.i, label %bb.p, !prof !16

.thread38.i.i:                                    ; preds = %.lr.ph.i.i
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.val17.i.i, i64 %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.bo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE10find_largeIiEENS8_8iteratorERKim.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.bt = add i32 %.sroa.021.053.i.i, -1
  %i.bu = and i32 %i.bt, %.sroa.021.053.i.i       ; 2 uses
  %.not.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.p, %bb.o
  %i.bv = icmp eq <16 x i8> %i.bg, splat (i8 -128)
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %i.bx = zext i16 %i.bw to i32
  %i.by = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bx) #22, !srcloc !15
  %.not49.i.i = icmp eq i32 %i.by, 0
  br i1 %.not49.i.i, label %bb.q, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE10find_largeIiEENS8_8iteratorERKim.exit.i, !prof !17

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.bz = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.630.0.i.i
  br label %bb.o, !llvm.loop !26

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE10find_largeIiEENS8_8iteratorERKim.exit.i: ; preds = %._crit_edge.i.i, %.thread38.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.bs, %.thread38.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.br, %.thread38.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE10find_largeIiEENS8_8iteratorERKim.exit.i, %bb.m, %bb.l
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE10find_largeIiEENS8_8iteratorERKim.exit.i ], [ { ptr null, ptr undef }, %bb.l ], [ %spec.select.i.i, %bb.m ] ; 2 uses
  %i.cb = extractvalue { ptr, ptr } %.pn.i, 0
  %i.cc = extractvalue { ptr, ptr } %.pn.i, 1     ; 2 uses
  %.not = icmp eq ptr %i.cb, null
  br i1 %.not, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val50.val = load ptr, ptr %i.cc, align 8, !tbaa !14 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val50.val, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.val50.val, i64 16
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !50 ; 2 uses
  %.not6.i = icmp eq i32 %i.cf, 0
  %.pre148 = load ptr, ptr %i.cd, align 8, !tbaa !51 ; 2 uses
  br i1 %.not6.i, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %.val50.val, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !52
  %i.ci = zext i32 %i.cf to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i52, 1 ; 2 uses
  %.not.i54 = icmp eq i64 %indvars.iv.next.i53, %i.ci
  br i1 %.not.i54, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit, label %bb.u, !llvm.loop !27

bb.u:                                             ; preds = %bb.t, %.lr.ph.i51
  %indvars.iv.i52 = phi i64 [ 0, %.lr.ph.i51 ], [ %indvars.iv.next.i53, %bb.t ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre148, i64 %indvars.iv.i52
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !10
  %i.cl = trunc i64 %indvars.iv.i52 to i32
  %i.cm = add i32 %i.ch, %i.cl
  %i.cn = trunc i32 %i.cm to i8
  %i.co = icmp eq i8 %i.ck, %i.cn
  br i1 %i.co, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.4, i32 noundef 54) ; 0 uses
  call void @abort() #23
  unreachable

_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit: ; preds = %bb.t, %bb.s
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef %.pre148)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit
  %.val48.val = load ptr, ptr %i.cc, align 8, !tbaa !14
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split

bb.x:                                             ; preds = %bb.r
  br i1 %i.am, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cq = icmp ult i64 %.val.i, 562949953552384
  call void @llvm.assume(i1 %i.cq)
  %.not.i.i.i.i.i.i.i = icmp samesign ult i64 %.val.i, 131072
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i, label %bb.z

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i: ; preds = %bb.y
  %i.cr = or i64 %.val.i, 131328
  store i64 %i.cr, ptr %3, align 8, !noalias !53
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i

bb.z:                                             ; preds = %bb.y
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !14, !noalias !53 ; 2 uses
  %.val6.i.i.i.i.i.i = load i32, ptr %.val4.i.i.i.i.i.i, align 4, !tbaa !12, !noalias !53
  %i.cs = icmp eq i32 %.val6.i.i.i.i.i.i, %i.ak
  br i1 %i.cs, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !53
  store ptr %3, ptr %2, align 8, !tbaa !54, !noalias !53
  store ptr %i.a, ptr %i.g, align 8, !tbaa !55, !noalias !53
  %i.ct = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIiEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !53

.noexc:                                           ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !53
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !10, !noalias !53
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %i.ct
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i

bb.ab:                                            ; preds = %bb.x
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !10, !noalias !56 ; 3 uses
  %i.cv = and i64 %.val.i, 255
  %notmask.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.cv
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !56
  %i.cw = lshr i64 %.val.i, 8
  %i.cx = and i64 %i.cw, 255
  %i.cy = zext i32 %i.ak to i64
  %i.cz = xor i64 %i.cx, %i.cy
  %i.da = zext nneg i64 %i.cz to i128
  %i.db = mul nuw nsw i128 %i.da, 8779197792823184629 ; 2 uses
  %i.dc = lshr i128 %i.db, 64
  %i.dd = xor i128 %i.dc, %i.db
  %i.de = trunc i128 %i.dd to i64                 ; 3 uses
  %i.df = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.dg = lshr i64 %i.de, 57
  %i.dh = trunc nuw nsw i64 %i.dg to i8
  %.val6.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !10, !noalias !56 ; 2 uses
  %i.di = insertelement <16 x i8> poison, i8 %i.dh, i64 0
  %i.dj = shufflevector <16 x i8> %i.di, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %.pn.i.i.i.i.i = phi i64 [ %i.de, %bb.ab ], [ %i.eg, %bb.ad ]
  %.sroa.14.0.i.i.i.i.i = phi i64 [ 0, %bb.ab ], [ %i.ef, %bb.ad ] ; 2 uses
  %.sroa.641.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.df ; 5 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.val6.i.i.i.i.i, i64 %.sroa.641.0.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.dk, i32 0, i32 3, i32 1), !noalias !56
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.641.0.i.i.i.i.i
  %i.dm = load <16 x i8>, ptr %i.dl, align 1, !tbaa !10, !noalias !56 ; 2 uses
  %i.dn = icmp eq <16 x i8> %i.dj, %i.dm
  %i.do = bitcast <16 x i1> %i.dn to i16
  %i.dp = zext i16 %i.do to i32
  %i.dq = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.dp) #22, !srcloc !15 ; 2 uses
  %.not69.i.i.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not69.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ac, %.critedge.i.i.i.i.i.i
  %.sroa.026.070.i.i.i.i.i = phi i32 [ %i.dy, %.critedge.i.i.i.i.i.i ], [ %i.dq, %bb.ac ] ; 3 uses
  %i.dr = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.026.070.i.i.i.i.i, i1 true)
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = add nuw i64 %.sroa.641.0.i.i.i.i.i, %i.ds
  %i.du = and i64 %i.dt, %i.df
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.val6.i.i.i.i.i, i64 %i.du
  %.val.i.i.i.i.i = load ptr, ptr %i.dv, align 8, !tbaa !14, !noalias !56 ; 2 uses
  %.val4.i.i.i.i.i = load i32, ptr %.val.i.i.i.i.i, align 4, !tbaa !12, !noalias !56
  %i.dw = icmp eq i32 %.val4.i.i.i.i.i, %i.ak
  br i1 %i.dw, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !16

.critedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  %i.dx = add i32 %.sroa.026.070.i.i.i.i.i, -1
  %i.dy = and i32 %i.dx, %.sroa.026.070.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.critedge.i.i.i.i.i.i, %bb.ac
  %i.dz = icmp eq <16 x i8> %i.dm, splat (i8 -128)
  %i.ea = bitcast <16 x i1> %i.dz to i16
  %i.eb = zext i16 %i.ea to i32
  %i.ec = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.eb) #22, !srcloc !15 ; 2 uses
  %.not63.i.i.i.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not63.i.i.i.i.i, label %bb.ad, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.thread.i, !prof !17

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.thread.i: ; preds = %._crit_edge.i.i.i.i.i
  %i.ed = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.de, i32 %i.ec, i64 %.sroa.641.0.i.i.i.i.i, i64 %.sroa.14.0.i.i.i.i.i)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !56

.noexc55:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.thread.i
  %.val.i.pre.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !10, !noalias !56
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.val.i.pre.i.i.i.i.i, i64 %i.ed
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.ef = add i64 %.sroa.14.0.i.i.i.i.i, 16       ; 2 uses
  %i.eg = add i64 %i.ef, %.sroa.641.0.i.i.i.i.i
  br label %bb.ac

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i: ; preds = %.noexc55, %.noexc, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i
  %.sroa.6.0.i = phi ptr [ %i.ee, %.noexc55 ], [ %i.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i ], [ %i.cu, %.noexc ]
  %i.eh = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !57 ; 4 uses

.noexc56:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i
  %.val.val.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !12, !noalias !57
  store i32 %.val.val.i.i.i.i.i.i.i.i.i.i, ptr %i.eh, align 8, !tbaa !59, !noalias !57
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i8 0, i64 16, i1 false), !noalias !57
  store ptr %i.eh, ptr %.sroa.6.0.i, align 8, !tbaa !14, !noalias !57
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split

bb.ae:                                            ; preds = %bb.g
  %.val1.i = load i64, ptr %3, align 8            ; 3 uses
  %i.ej = icmp ult i64 %.val1.i, 562949953552384
  call void @llvm.assume(i1 %i.ej)
  %.not.i.i57 = icmp samesign ult i64 %.val1.i, 131072
  br i1 %.not.i.i57, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit, label %bb.af, !prof !17

bb.af:                                            ; preds = %bb.ae
  %i.ek = and i64 %.val1.i, 254
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %.loopexit117, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !10, !nonnull !20, !noundef !20 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !10 ; 2 uses
  %i.em = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1, !tbaa !22
  %i.en = icmp slt i8 %i.em, -1
  br i1 %i.en, label %.lr.ph.i.i59, label %.loopexit117

.lr.ph.i.i59:                                     ; preds = %bb.ag, %.lr.ph.i.i59
  %i.eo = phi ptr [ %i.er, %.lr.ph.i.i59 ], [ %.sroa.0.0.copyload.i.i.i, %bb.ag ]
  %i.ep = phi ptr [ %i.eq, %.lr.ph.i.i59 ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.ag ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.es = load i8, ptr %i.eq, align 1, !tbaa !22
  %i.et = icmp slt i8 %i.es, -1
  br i1 %i.et, label %.lr.ph.i.i59, label %.loopexit117, !llvm.loop !40

.loopexit117:                                     ; preds = %.lr.ph.i.i59, %bb.ag, %bb.af
  %.sroa.6.0.i58.ph = phi ptr [ %i.e, %bb.af ], [ %.sroa.0.0.copyload.i.i.i, %bb.ag ], [ %i.er, %.lr.ph.i.i59 ] ; 2 uses
  %.sroa.0.0.i.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.af ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.ag ], [ %i.eq, %.lr.ph.i.i59 ]
  %.val47.val = load ptr, ptr %.sroa.6.0.i58.ph, align 8, !tbaa !14 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val47.val, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %.val47.val, i64 16
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !50 ; 2 uses
  %.not6.i60 = icmp eq i32 %i.ew, 0
  %.pre149 = load ptr, ptr %i.eu, align 8, !tbaa !51 ; 2 uses
  br i1 %.not6.i60, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit65, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.loopexit117
  %i.ex = getelementptr inbounds nuw i8, ptr %.val47.val, i64 20
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !52
  %i.ez = zext i32 %i.ew to i64
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %.not.i64 = icmp eq i64 %indvars.iv.next.i63, %i.ez
  br i1 %.not.i64, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit65, label %bb.ai, !llvm.loop !27

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i61
  %indvars.iv.i62 = phi i64 [ 0, %.lr.ph.i61 ], [ %indvars.iv.next.i63, %bb.ah ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.pre149, i64 %indvars.iv.i62
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !10
  %i.fc = trunc i64 %indvars.iv.i62 to i32
  %i.fd = add i32 %i.ey, %i.fc
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = icmp eq i8 %i.fb, %i.fe
  br i1 %i.ff, label %bb.ah, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.4, i32 noundef 54) ; 0 uses
  call void @abort() #23
  unreachable

_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit65: ; preds = %bb.ah, %.loopexit117
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef %.pre149)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit65
  %.val1.val.val.i.i.i = load ptr, ptr %.sroa.6.0.i58.ph, align 8, !tbaa !14
  call void @_ZdlPvm(ptr noundef %.val1.val.val.i.i.i, i64 noundef 24) #25
  %.val.i.i = load i64, ptr %3, align 8
  %i.fh = and i64 %.val.i.i, 254
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlySmallERNS1_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext true, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.ak
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlyLargeERNS1_12CommonFieldsEPKNS1_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %.sroa.0.0.i.ph, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split: ; preds = %bb.z, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.i, %.noexc56, %bb.w
  %.val.val.i.i.sink175 = phi ptr [ %.val48.val, %bb.w ], [ %i.eh, %.noexc56 ], [ %.val.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.i ], [ %.val4.i.i.i.i.i.i, %bb.z ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.val.val.i.i.sink175, i64 8
  store ptr %i.s, ptr %i.fj, align 8, !tbaa !60
  %.sroa.7.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %.val.val.i.i.sink175, i64 16
  %4 = zext nneg i32 %i.o to i64
  %5 = zext nneg i32 %i.u to i64
  %6 = shl nuw nsw i64 %5, 32
  %7 = or disjoint i64 %6, %4
  store i64 %7, ptr %.sroa.7.0..sroa_idx96, align 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split, %bb.ae, %bb.al, %bb.am
  %i.fk = add nuw nsw i32 %.025, 1
  br label %bb.d, !llvm.loop !41

.lr.ph:                                           ; preds = %.preheader, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89
  %.val1.i68135 = phi i64 [ %.val1.i68, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89 ], [ %.val1.i68133, %.preheader ]
  %i.fl = and i64 %.val1.i68135, 254
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %.lr.ph
  %.sroa.0.0.copyload.i.i.i.i70 = load ptr, ptr %i.e, align 8, !tbaa !10, !nonnull !20, !noundef !20 ; 3 uses
  %.sroa.0.0.copyload.i.i.i72 = load ptr, ptr %i.f, align 8, !tbaa !10 ; 2 uses
  %i.fn = load i8, ptr %.sroa.0.0.copyload.i.i.i.i70, align 1, !tbaa !22
  %i.fo = icmp slt i8 %i.fn, -1
  br i1 %i.fo, label %.lr.ph.i.i77, label %.loopexit

.lr.ph.i.i77:                                     ; preds = %bb.an, %.lr.ph.i.i77
  %i.fp = phi ptr [ %i.fs, %.lr.ph.i.i77 ], [ %.sroa.0.0.copyload.i.i.i72, %bb.an ]
  %i.fq = phi ptr [ %i.fr, %.lr.ph.i.i77 ], [ %.sroa.0.0.copyload.i.i.i.i70, %bb.an ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.ft = load i8, ptr %i.fr, align 1, !tbaa !22
  %i.fu = icmp slt i8 %i.ft, -1
  br i1 %i.fu, label %.lr.ph.i.i77, label %.loopexit, !llvm.loop !40

.loopexit:                                        ; preds = %.lr.ph.i.i77, %bb.an, %.lr.ph
  %.sroa.6.0.i73.ph = phi ptr [ %i.e, %.lr.ph ], [ %.sroa.0.0.copyload.i.i.i72, %bb.an ], [ %i.fs, %.lr.ph.i.i77 ] ; 2 uses
  %.sroa.0.0.i74.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %.lr.ph ], [ %.sroa.0.0.copyload.i.i.i.i70, %bb.an ], [ %i.fr, %.lr.ph.i.i77 ]
  %.val45.val = load ptr, ptr %.sroa.6.0.i73.ph, align 8, !tbaa !14 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val45.val, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %.val45.val, i64 16
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !50 ; 2 uses
  %.not6.i79 = icmp eq i32 %i.fx, 0
  %.pre = load ptr, ptr %i.fv, align 8, !tbaa !51 ; 2 uses
  br i1 %.not6.i79, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit84, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.loopexit
  %i.fy = getelementptr inbounds nuw i8, ptr %.val45.val, i64 20
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !52
  %i.ga = zext i32 %i.fx to i64
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %indvars.iv.next.i82 = add nuw nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %.not.i83 = icmp eq i64 %indvars.iv.next.i82, %i.ga
  br i1 %.not.i83, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit84, label %bb.ap, !llvm.loop !27

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i80
  %indvars.iv.i81 = phi i64 [ 0, %.lr.ph.i80 ], [ %indvars.iv.next.i82, %bb.ao ] ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv.i81
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !10
  %i.gd = trunc i64 %indvars.iv.i81 to i32
  %i.ge = add i32 %i.fz, %i.gd
  %i.gf = trunc i32 %i.ge to i8
  %i.gg = icmp eq i8 %i.gc, %i.gf
  br i1 %i.gg, label %bb.ao, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.4, i32 noundef 54) ; 0 uses
  call void @abort() #23
  unreachable

_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit84: ; preds = %bb.ao, %.loopexit
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef %.pre)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit84
  %.val1.val.val.i.i.i85 = load ptr, ptr %.sroa.6.0.i73.ph, align 8, !tbaa !14
  call void @_ZdlPvm(ptr noundef %.val1.val.val.i.i.i85, i64 noundef 24) #25
  %.val.i.i86 = load i64, ptr %3, align 8
  %i.gi = and i64 %.val.i.i86, 254
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlySmallERNS1_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext true, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.ar
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlyLargeERNS1_12CommonFieldsEPKNS1_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %.sroa.0.0.i74.ph, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89: ; preds = %bb.at, %bb.as
  %.val1.i68 = load i64, ptr %3, align 8          ; 3 uses
  %i.gk = icmp ult i64 %.val1.i68, 562949953552384
  call void @llvm.assume(i1 %i.gk)
  %.not.i.i69 = icmp samesign ult i64 %.val1.i68, 131072
  br i1 %.not.i.i69, label %._crit_edge, label %.lr.ph, !prof !61

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit84, %bb.as, %bb.at, %bb.am, %bb.al, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.thread.i, %bb.aa, %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit65, %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit, %bb.j, %bb.i, %bb.au, %bb.b
  %lpad.loopexit.split-lp26 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %lpad.loopexit.split-lp26

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89, %.preheader
  br i1 %0, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %._crit_edge
  %i.gl = invoke noundef zeroext i1 @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc11DeleteArenaEPNS2_5ArenaE(ptr noundef %.024)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.au
  br i1 %i.gl, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 143) ; 0 uses
  call void @abort() #23
  unreachable

bb.ax:                                            ; preds = %bb.av, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
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
  %.not.i.i.i.i = icmp ne i64 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !10
  %i.o = xor i64 %notmask.i.i.i.i.i, -1
end_hunk_0
