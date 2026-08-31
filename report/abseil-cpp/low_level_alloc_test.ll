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
  %.025 = phi i32 [ 0, %bb.d ], [ %i.fm, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit ] ; 3 uses
  switch i32 %.025, label %bb.f [
    i32 50000, label %.preheader
    i32 0, label %bb.i
  ]

.preheader:                                       ; preds = %bb.e
  %.val1.i68130 = load i64, ptr %3, align 8       ; 3 uses
  %i.i = icmp ult i64 %.val1.i68130, 562949953552384
  call void @llvm.assume(i1 %i.i)
  %.not.i.i69131 = icmp samesign ult i64 %.val1.i68130, 131072
  br i1 %.not.i.i69131, label %._crit_edge, label %.lr.ph, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.j = urem i32 %.025, 10000
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %putchar = call i32 @putchar(i32 46)            ; 0 uses
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !10
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
  %i.z = add <16 x i32> %broadcast.splat, %vec.ind
  %i.aa = trunc <16 x i32> %i.z to <16 x i8>
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %index
  store <16 x i8> %i.aa, ptr %i.ab, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br i1 %cmp.n, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec11 = and i64 %i.x, 16380                  ; 3 uses
  %broadcast.splatinsert12 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat13 = shufflevector <4 x i32> %broadcast.splatinsert12, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ad = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert14 = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat15 = shufflevector <4 x i32> %broadcast.splatinsert14, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat15, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind17 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next19, %vec.epilog.vector.body ] ; 2 uses
  %i.ae = add <4 x i32> %broadcast.splat13, %vec.ind17
  %i.af = trunc <4 x i32> %i.ae to <4 x i8>
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 %index16
  store <4 x i8> %i.af, ptr %i.ag, align 1, !tbaa !13
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %vec.ind.next19 = add <4 x i32> %vec.ind17, splat (i32 4)
  %i.ah = icmp eq i64 %index.next18, %n.vec11
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %n.vec11, %i.x
  br i1 %cmp.n20, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.aj = add i32 %i.v, %i.ai
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.i
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.x
  br i1 %.not.i, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit, label %.lr.ph.i, !llvm.loop !20

_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.m
  %i.am = call i32 @rand() #21                    ; 7 uses
  store i32 %i.am, ptr %i.a, align 4, !tbaa !21
  %.val.i = load i64, ptr %3, align 8             ; 10 uses
  %i.an = and i64 %.val.i, 254
  %i.ao = icmp eq i64 %i.an, 0                    ; 2 uses
  br i1 %i.ao, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit
  %i.ap = icmp ult i64 %.val.i, 562949953552384
  call void @llvm.assume(i1 %i.ap)
  %.not.i.i.i = icmp samesign ult i64 %.val.i, 131072
  br i1 %.not.i.i.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val3.i.i = load ptr, ptr %i.f, align 8, !tbaa !22
  %.val5.i.i = load i32, ptr %.val3.i.i, align 4, !tbaa !21
  %i.aq = icmp eq i32 %.val5.i.i, %i.am
  %spec.select.i.i = select i1 %i.aq, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %bb.t

bb.p:                                             ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_118RandomizeBlockDescEPNS2_9BlockDescE.exit
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !13 ; 4 uses
  %i.ar = and i64 %.val.i, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.ar
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.as = lshr i64 %.val.i, 8
  %i.at = and i64 %i.as, 255
  %i.au = zext i32 %i.am to i64
  %i.av = xor i64 %i.at, %i.au
  %i.aw = zext nneg i64 %i.av to i128
  %i.ax = mul nuw nsw i128 %i.aw, 8779197792823184629 ; 2 uses
  %i.ay = lshr i128 %i.ax, 64
  %i.az = xor i128 %i.ay, %i.ax
  %i.ba = trunc i128 %i.az to i64                 ; 2 uses
  %i.bb = xor i64 %notmask.i.i.i.i.i.i, -1        ; 2 uses
  %i.bc = lshr i64 %i.ba, 57
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  %.val17.i.i = load ptr, ptr %i.g, align 8, !tbaa !13 ; 3 uses
  %i.be = insertelement <16 x i8> poison, i8 %i.bd, i64 0
  %i.bf = shufflevector <16 x i8> %i.be, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.pn.i7.i = phi i64 [ %i.ba, %bb.p ], [ %i.cc, %bb.s ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.p ], [ %i.cb, %bb.s ]
  %.sroa.630.0.i.i = and i64 %.pn.i7.i, %i.bb     ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.val17.i.i, i64 %.sroa.630.0.i.i
  call void @llvm.prefetch.p0(ptr %i.bg, i32 0, i32 3, i32 1)
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.630.0.i.i
  %i.bi = load <16 x i8>, ptr %i.bh, align 1, !tbaa !13 ; 2 uses
  %i.bj = icmp eq <16 x i8> %i.bf, %i.bi
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = zext i16 %i.bk to i32
  %i.bm = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bl) #22, !srcloc !24 ; 2 uses
  %.not52.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not52.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.sroa.021.053.i.i = phi i32 [ %i.bw, %bb.r ], [ %i.bm, %bb.q ] ; 3 uses
  %i.bn = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.021.053.i.i, i1 true)
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = add nuw i64 %.sroa.630.0.i.i, %i.bo
  %i.bq = and i64 %i.bp, %i.bb                    ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.val17.i.i, i64 %i.bq
  %.val.i8.i = load ptr, ptr %i.br, align 8, !tbaa !22
  %.val15.i.i = load i32, ptr %.val.i8.i, align 4, !tbaa !21
  %i.bs = icmp eq i32 %.val15.i.i, %i.am
  br i1 %i.bs, label %.thread38.i.i, label %bb.r, !prof !25

.thread38.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.val17.i.i, i64 %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.bq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE10find_largeIiEENS8_8iteratorERKim.exit.i

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.bv = add i32 %.sroa.021.053.i.i, -1
  %i.bw = and i32 %i.bv, %.sroa.021.053.i.i       ; 2 uses
  %.not.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.r, %bb.q
  %i.bx = icmp eq <16 x i8> %i.bi, splat (i8 -128)
  %i.by = bitcast <16 x i1> %i.bx to i16
  %i.bz = zext i16 %i.by to i32
  %i.ca = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bz) #22, !srcloc !24
  %.not49.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not49.i.i, label %bb.s, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE10find_largeIiEENS8_8iteratorERKim.exit.i, !prof !26

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.cb = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.cc = add i64 %i.cb, %.sroa.630.0.i.i
  br label %bb.q, !llvm.loop !27

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE10find_largeIiEENS8_8iteratorERKim.exit.i: ; preds = %._crit_edge.i.i, %.thread38.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.bu, %.thread38.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.bt, %.thread38.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE10find_largeIiEENS8_8iteratorERKim.exit.i, %bb.o, %bb.n
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE10find_largeIiEENS8_8iteratorERKim.exit.i ], [ { ptr null, ptr undef }, %bb.n ], [ %spec.select.i.i, %bb.o ] ; 2 uses
  %i.cd = extractvalue { ptr, ptr } %.pn.i, 0
  %i.ce = extractvalue { ptr, ptr } %.pn.i, 1     ; 2 uses
  %.not = icmp eq ptr %i.cd, null
  br i1 %.not, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val50.val = load ptr, ptr %i.ce, align 8, !tbaa !22 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val50.val, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.val50.val, i64 16
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !28 ; 2 uses
  %.not6.i = icmp eq i32 %i.ch, 0
  %.pre142 = load ptr, ptr %i.cf, align 8, !tbaa !31 ; 2 uses
  br i1 %.not6.i, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %.val50.val, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !32
  %i.ck = zext i32 %i.ch to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.w
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i52, 1 ; 2 uses
  %.not.i54 = icmp eq i64 %indvars.iv.next.i53, %i.ck
  br i1 %.not.i54, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit, label %bb.w, !llvm.loop !33

bb.w:                                             ; preds = %bb.v, %.lr.ph.i51
  %indvars.iv.i52 = phi i64 [ 0, %.lr.ph.i51 ], [ %indvars.iv.next.i53, %bb.v ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre142, i64 %indvars.iv.i52
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %i.cn = trunc i64 %indvars.iv.i52 to i32
  %i.co = add i32 %i.cj, %i.cn
  %i.cp = trunc i32 %i.co to i8
  %i.cq = icmp eq i8 %i.cm, %i.cp
  br i1 %i.cq, label %bb.v, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.4, i32 noundef 54) ; 0 uses
  call void @abort() #23
  unreachable

_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit: ; preds = %bb.v, %bb.u
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef %.pre142)
          to label %bb.y unwind label %bb.h

bb.y:                                             ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit
  %.val48.val = load ptr, ptr %i.ce, align 8, !tbaa !22
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split

bb.z:                                             ; preds = %bb.t
  br i1 %i.ao, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cs = icmp ult i64 %.val.i, 562949953552384
  call void @llvm.assume(i1 %i.cs)
  %.not.i.i.i.i.i.i.i = icmp samesign ult i64 %.val.i, 131072
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i, label %bb.ab

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.ct = or i64 %.val.i, 131328
  store i64 %i.ct, ptr %3, align 8, !noalias !34
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !22, !noalias !34 ; 2 uses
  %.val6.i.i.i.i.i.i = load i32, ptr %.val4.i.i.i.i.i.i, align 4, !tbaa !21, !noalias !34
  %i.cu = icmp eq i32 %.val6.i.i.i.i.i.i, %i.am
  br i1 %i.cu, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !34
  store ptr %3, ptr %2, align 8, !tbaa !45, !noalias !34
  store ptr %i.a, ptr %i.h, align 8, !tbaa !47, !noalias !34
  %i.cv = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIiEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !34
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !13, !noalias !34
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %i.cv
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i

bb.ad:                                            ; preds = %bb.z
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !13, !noalias !49 ; 3 uses
  %i.cx = and i64 %.val.i, 255
  %notmask.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.cx
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !49
  %i.cy = lshr i64 %.val.i, 8
  %i.cz = and i64 %i.cy, 255
  %i.da = zext i32 %i.am to i64
  %i.db = xor i64 %i.cz, %i.da
  %i.dc = zext nneg i64 %i.db to i128
  %i.dd = mul nuw nsw i128 %i.dc, 8779197792823184629 ; 2 uses
  %i.de = lshr i128 %i.dd, 64
  %i.df = xor i128 %i.de, %i.dd
  %i.dg = trunc i128 %i.df to i64                 ; 3 uses
  %i.dh = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.di = lshr i64 %i.dg, 57
  %i.dj = trunc nuw nsw i64 %i.di to i8
  %.val6.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !13, !noalias !49 ; 2 uses
  %i.dk = insertelement <16 x i8> poison, i8 %i.dj, i64 0
  %i.dl = shufflevector <16 x i8> %i.dk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %.pn.i.i.i.i.i = phi i64 [ %i.dg, %bb.ad ], [ %i.ei, %bb.af ]
  %.sroa.14.0.i.i.i.i.i = phi i64 [ 0, %bb.ad ], [ %i.eh, %bb.af ] ; 2 uses
  %.sroa.641.0.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.dh ; 5 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.val6.i.i.i.i.i, i64 %.sroa.641.0.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.dm, i32 0, i32 3, i32 1), !noalias !49
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %.sroa.641.0.i.i.i.i.i
  %i.do = load <16 x i8>, ptr %i.dn, align 1, !tbaa !13, !noalias !49 ; 2 uses
  %i.dp = icmp eq <16 x i8> %i.dl, %i.do
  %i.dq = bitcast <16 x i1> %i.dp to i16
  %i.dr = zext i16 %i.dq to i32
  %i.ds = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.dr) #22, !srcloc !24 ; 2 uses
  %.not69.i.i.i.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not69.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ae, %.critedge.i.i.i.i.i.i
  %.sroa.026.070.i.i.i.i.i = phi i32 [ %i.ea, %.critedge.i.i.i.i.i.i ], [ %i.ds, %bb.ae ] ; 3 uses
  %i.dt = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.026.070.i.i.i.i.i, i1 true)
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = add nuw i64 %.sroa.641.0.i.i.i.i.i, %i.du
  %i.dw = and i64 %i.dv, %i.dh
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.val6.i.i.i.i.i, i64 %i.dw
  %.val.i.i.i.i.i = load ptr, ptr %i.dx, align 8, !tbaa !22, !noalias !49 ; 2 uses
  %.val4.i.i.i.i.i = load i32, ptr %.val.i.i.i.i.i, align 4, !tbaa !21, !noalias !49
  %i.dy = icmp eq i32 %.val4.i.i.i.i.i, %i.am
  br i1 %i.dy, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.i, label %.critedge.i.i.i.i.i.i, !prof !25

.critedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  %i.dz = add i32 %.sroa.026.070.i.i.i.i.i, -1
  %i.ea = and i32 %i.dz, %.sroa.026.070.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.critedge.i.i.i.i.i.i, %bb.ae
  %i.eb = icmp eq <16 x i8> %i.do, splat (i8 -128)
  %i.ec = bitcast <16 x i1> %i.eb to i16
  %i.ed = zext i16 %i.ec to i32
  %i.ee = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ed) #22, !srcloc !24 ; 2 uses
  %.not63.i.i.i.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not63.i.i.i.i.i, label %bb.af, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.thread.i, !prof !26

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.thread.i: ; preds = %._crit_edge.i.i.i.i.i
  %i.ef = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.dg, i32 %i.ee, i64 %.sroa.641.0.i.i.i.i.i, i64 %.sroa.14.0.i.i.i.i.i)
          to label %.noexc55 unwind label %bb.h

.noexc55:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.thread.i
  %.val.i.pre.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !13, !noalias !49
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.val.i.pre.i.i.i.i.i, i64 %i.ef
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i

bb.af:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.eh = add i64 %.sroa.14.0.i.i.i.i.i, 16       ; 2 uses
  %i.ei = add i64 %i.eh, %.sroa.641.0.i.i.i.i.i
  br label %bb.ae

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i: ; preds = %.noexc55, %.noexc, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i
  %.sroa.6.0.i = phi ptr [ %i.eg, %.noexc55 ], [ %i.f, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i ], [ %i.cw, %.noexc ]
  %i.ej = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc56 unwind label %bb.h   ; 4 uses

.noexc56:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.thread.i.i.i
  %.val.val.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !21, !noalias !52
  store i32 %.val.val.i.i.i.i.i.i.i.i.i.i, ptr %i.ej, align 8, !tbaa !53, !noalias !52
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i8 0, i64 16, i1 false), !noalias !52
  store ptr %i.ej, ptr %.sroa.6.0.i, align 8, !tbaa !22, !noalias !52
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split

bb.ag:                                            ; preds = %bb.i
  %.val1.i = load i64, ptr %3, align 8            ; 3 uses
  %i.el = icmp ult i64 %.val1.i, 562949953552384
  call void @llvm.assume(i1 %i.el)
  %.not.i.i57 = icmp samesign ult i64 %.val1.i, 131072
  br i1 %.not.i.i57, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit, label %bb.ah, !prof !26

bb.ah:                                            ; preds = %bb.ag
  %i.em = and i64 %.val1.i, 254
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %.loopexit117, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !13, !nonnull !55, !noundef !55 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.eo = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1, !tbaa !56
  %i.ep = icmp slt i8 %i.eo, -1
  br i1 %i.ep, label %.lr.ph.i.i59, label %.loopexit117

.lr.ph.i.i59:                                     ; preds = %bb.ai, %.lr.ph.i.i59
  %i.eq = phi ptr [ %i.et, %.lr.ph.i.i59 ], [ %.sroa.0.0.copyload.i.i.i, %bb.ai ]
  %i.er = phi ptr [ %i.es, %.lr.ph.i.i59 ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.ai ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.eu = load i8, ptr %i.es, align 1, !tbaa !56
  %i.ev = icmp slt i8 %i.eu, -1
  br i1 %i.ev, label %.lr.ph.i.i59, label %.loopexit117, !llvm.loop !58

.loopexit117:                                     ; preds = %.lr.ph.i.i59, %bb.ai, %bb.ah
  %.sroa.6.0.i58.ph = phi ptr [ %i.f, %bb.ah ], [ %.sroa.0.0.copyload.i.i.i, %bb.ai ], [ %i.et, %.lr.ph.i.i59 ] ; 2 uses
  %.sroa.0.0.i.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.ah ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.ai ], [ %i.es, %.lr.ph.i.i59 ]
  %.val47.val = load ptr, ptr %.sroa.6.0.i58.ph, align 8, !tbaa !22 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val47.val, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.val47.val, i64 16
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !28 ; 2 uses
  %.not6.i60 = icmp eq i32 %i.ey, 0
  %.pre143 = load ptr, ptr %i.ew, align 8, !tbaa !31 ; 2 uses
  br i1 %.not6.i60, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit65, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.loopexit117
  %i.ez = getelementptr inbounds nuw i8, ptr %.val47.val, i64 20
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !32
  %i.fb = zext i32 %i.ey to i64
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ak
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %.not.i64 = icmp eq i64 %indvars.iv.next.i63, %i.fb
  br i1 %.not.i64, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit65, label %bb.ak, !llvm.loop !33

bb.ak:                                            ; preds = %bb.aj, %.lr.ph.i61
  %indvars.iv.i62 = phi i64 [ 0, %.lr.ph.i61 ], [ %indvars.iv.next.i63, %bb.aj ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.pre143, i64 %indvars.iv.i62
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !13
  %i.fe = trunc i64 %indvars.iv.i62 to i32
  %i.ff = add i32 %i.fa, %i.fe
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = icmp eq i8 %i.fd, %i.fg
  br i1 %i.fh, label %bb.aj, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.4, i32 noundef 54) ; 0 uses
  call void @abort() #23
  unreachable

_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit65: ; preds = %bb.aj, %.loopexit117
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef %.pre143)
          to label %bb.am unwind label %bb.h

bb.am:                                            ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit65
  %.val1.val.val.i.i.i = load ptr, ptr %.sroa.6.0.i58.ph, align 8, !tbaa !22
  call void @_ZdlPvm(ptr noundef %.val1.val.val.i.i.i, i64 noundef 24) #25
  %.val.i.i = load i64, ptr %3, align 8
  %i.fj = and i64 %.val.i.i, 254
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlySmallERNS1_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext true, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit unwind label %bb.h

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlyLargeERNS1_12CommonFieldsEPKNS1_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %.sroa.0.0.i.ph, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit unwind label %bb.h

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split: ; preds = %bb.ab, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.i, %.noexc56, %bb.y
  %.val.val.i.i.sink169 = phi ptr [ %.val48.val, %bb.y ], [ %i.ej, %.noexc56 ], [ %.val.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_.exit.i.i.i ], [ %.val4.i.i.i.i.i.i, %bb.ab ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val.val.i.i.sink169, i64 8
  store ptr %i.u, ptr %i.fl, align 8, !tbaa !59
  %.sroa.7.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %.val.val.i.i.sink169, i64 16
  store i32 %i.q, ptr %.sroa.7.0..sroa_idx96, align 8, !tbaa !21
  %.sroa.10.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %.val.val.i.i.sink169, i64 20
  store i32 %i.w, ptr %.sroa.10.0..sroa_idx99, align 4, !tbaa !21
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit.sink.split, %bb.ag, %bb.an, %bb.ao
  %i.fm = add nuw nsw i32 %.025, 1
  br label %bb.e, !llvm.loop !60

.lr.ph:                                           ; preds = %.preheader, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89
  %.val1.i68132 = phi i64 [ %.val1.i68, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89 ], [ %.val1.i68130, %.preheader ]
  %i.fn = and i64 %.val1.i68132, 254
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph
  %.sroa.0.0.copyload.i.i.i.i70 = load ptr, ptr %i.f, align 8, !tbaa !13, !nonnull !55, !noundef !55 ; 3 uses
  %.sroa.0.0.copyload.i.i.i72 = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.fp = load i8, ptr %.sroa.0.0.copyload.i.i.i.i70, align 1, !tbaa !56
  %i.fq = icmp slt i8 %i.fp, -1
  br i1 %i.fq, label %.lr.ph.i.i77, label %.loopexit

.lr.ph.i.i77:                                     ; preds = %bb.ap, %.lr.ph.i.i77
  %i.fr = phi ptr [ %i.fu, %.lr.ph.i.i77 ], [ %.sroa.0.0.copyload.i.i.i72, %bb.ap ]
  %i.fs = phi ptr [ %i.ft, %.lr.ph.i.i77 ], [ %.sroa.0.0.copyload.i.i.i.i70, %bb.ap ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.fv = load i8, ptr %i.ft, align 1, !tbaa !56
  %i.fw = icmp slt i8 %i.fv, -1
  br i1 %i.fw, label %.lr.ph.i.i77, label %.loopexit, !llvm.loop !58

.loopexit:                                        ; preds = %.lr.ph.i.i77, %bb.ap, %.lr.ph
  %.sroa.6.0.i73.ph = phi ptr [ %i.f, %.lr.ph ], [ %.sroa.0.0.copyload.i.i.i72, %bb.ap ], [ %i.fu, %.lr.ph.i.i77 ] ; 2 uses
  %.sroa.0.0.i74.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %.lr.ph ], [ %.sroa.0.0.copyload.i.i.i.i70, %bb.ap ], [ %i.ft, %.lr.ph.i.i77 ]
  %.val45.val = load ptr, ptr %.sroa.6.0.i73.ph, align 8, !tbaa !22 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.val45.val, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.val45.val, i64 16
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !28 ; 2 uses
  %.not6.i79 = icmp eq i32 %i.fz, 0
  %.pre = load ptr, ptr %i.fx, align 8, !tbaa !31 ; 2 uses
  br i1 %.not6.i79, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit84, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.loopexit
  %i.ga = getelementptr inbounds nuw i8, ptr %.val45.val, i64 20
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !32
  %i.gc = zext i32 %i.fz to i64
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ar
  %indvars.iv.next.i82 = add nuw nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %.not.i83 = icmp eq i64 %indvars.iv.next.i82, %i.gc
  br i1 %.not.i83, label %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit84, label %bb.ar, !llvm.loop !33

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.i80
  %indvars.iv.i81 = phi i64 [ 0, %.lr.ph.i80 ], [ %indvars.iv.next.i82, %bb.aq ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv.i81
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !13
  %i.gf = trunc i64 %indvars.iv.i81 to i32
  %i.gg = add i32 %i.gb, %i.gf
  %i.gh = trunc i32 %i.gg to i8
  %i.gi = icmp eq i8 %i.ge, %i.gh
  br i1 %i.gi, label %bb.aq, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.4, i32 noundef 54) ; 0 uses
  call void @abort() #23
  unreachable

_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit84: ; preds = %bb.aq, %.loopexit
  invoke void @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc4FreeEPv(ptr noundef %.pre)
          to label %bb.at unwind label %.loopexit116

bb.at:                                            ; preds = %_ZN4absl12lts_2026052613base_internal12_GLOBAL__N_114CheckBlockDescERKNS2_9BlockDescE.exit84
  %.val1.val.val.i.i.i85 = load ptr, ptr %.sroa.6.0.i73.ph, align 8, !tbaa !22
  call void @_ZdlPvm(ptr noundef %.val1.val.val.i.i.i85, i64 noundef 24) #25
  %.val.i.i86 = load i64, ptr %3, align 8
  %i.gk = and i64 %.val.i.i86, 254
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlySmallERNS1_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext true, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89 unwind label %.loopexit116

bb.av:                                            ; preds = %bb.at
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlyLargeERNS1_12CommonFieldsEPKNS1_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %.sroa.0.0.i74.ph, i64 noundef 8)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89 unwind label %.loopexit116

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE5eraseENS8_8iteratorE.exit89: ; preds = %bb.av, %bb.au
  %.val1.i68 = load i64, ptr %3, align 8          ; 3 uses
  %i.gm = icmp ult i64 %.val1.i68, 562949953552384
  call void @llvm.assume(i1 %i.gm)
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
  %i.gn = invoke noundef zeroext i1 @_ZN4absl12lts_2026052613base_internal13LowLevelAlloc11DeleteArenaEPNS2_5ArenaE(ptr noundef %.024)
          to label %bb.ax unwind label %.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.gn, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.go = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 143) ; 0 uses
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
  %.val1.val.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !22
  tail call void @_ZdlPvm(ptr noundef %.val1.val.val.i.i.i, i64 noundef 24) #25
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE15destructor_implEv.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8, !tbaa !62
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
  %.sroa.0.0.copyload.i.i.i.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !13
  %2 = xor i64 %notmask.i.i.i.i.i, -1
  %3 = icmp ne i64 %i.m, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2, ptr noundef %.sroa.0.0.copyload.i.i.i.pre.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %3)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE15destructor_implEv.exit unwind label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE15destructor_implEv.exit: ; preds = %bb.c, %bb.b, %.noexc
  ret void

bb.e:                                             ; preds = %.noexc, %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #23
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
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21
  %i.c = zext i32 %i.b to i64
  %i.d = xor i64 %2, %i.c
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw nsw i128 %i.e, 8779197792823184629 ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f
  %i.i = trunc i128 %i.h to i64
  ret i64 %i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal20TransferNRelocatableILm8EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #14 comdat {
bb.a:
  %i.a = shl i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

declare noundef ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef, i64 noundef) #4

declare void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) #4

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSE_PFvSE_hmmE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !13 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val52 = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04965 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04965
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04965 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #22, !srcloc !24 ; 2 uses
  %.not63 = icmp eq i32 %i.r, 65535
  br i1 %.not63, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04965, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !65

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.055.064 = phi i32 [ %i.bf, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.055.064, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04965, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.x
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %.val = load ptr, ptr %i.y, align 8, !tbaa !22  ; 2 uses
  %.val54 = load i32, ptr %.val, align 4, !tbaa !21
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
  br i1 %i.an, label %bb.d, label %bb.e, !prof !25

bb.d:                                             ; preds = %.lr.ph
  %i.ao = and i64 %i.al, 15
  %i.ap = add i64 %i.ao, %i.ai
  %i.aq = and i64 %i.ap, %i.c
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ar = and i64 %i.d, %i.ai
  %.not.i = icmp ult i64 %i.ar, %i.x
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !25

bb.f:                                             ; preds = %bb.e
  %i.as = and i64 %i.ai, %i.c                     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.as
  %i.au = load <16 x i8>, ptr %i.at, align 1, !tbaa !13
  %i.av = icmp slt <16 x i8> %i.au, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = zext i16 %i.aw to i32
  %i.ay = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ax) #22, !srcloc !24 ; 2 uses
  %.not26.i = icmp eq i32 %i.ay, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !26

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
  store i8 %i.ak, ptr %i.bc, align 1, !tbaa !56
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.val52, i64 %.sink27.i
  store ptr %.val, ptr %i.bd, align 8, !tbaa !22
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66, !nonnull !55, !align !68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !21
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
  %.val.val = load ptr, ptr %2, align 8, !tbaa !22
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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"branch_weights", i32 1, i32 127}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"branch_weights", i32 4, i32 12}
!19 = distinct !{!19, !15, !16, !17}
!20 = distinct !{!20, !15, !17, !16}
!21 = !{!6, !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTSSt4pairIKiN4absl12lts_2026052613base_internal12_GLOBAL__N_19BlockDescEE", !12, i64 0}
!24 = !{i64 9533702}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!27 = distinct !{!27, !15}
!28 = !{!29, !6, i64 8}
!29 = !{!"_ZTSN4absl12lts_2026052613base_internal12_GLOBAL__N_19BlockDescE", !30, i64 0, !6, i64 8, !6, i64 12}
!30 = !{!"p1 omnipotent char", !12, i64 0}
!31 = !{!29, !30, i64 0}
!32 = !{!29, !6, i64 12}
!33 = distinct !{!33, !15}
!34 = !{!35, !37, !39, !41, !43}
!35 = distinct !{!35, !36, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE26find_or_prepare_insert_sooIiEESt4pairINS8_8iteratorEbERKT_: argument 0"}
!36 = distinct !{!36, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE26find_or_prepare_insert_sooIiEESt4pairINS8_8iteratorEbERKT_"}
!37 = distinct !{!37, !38, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE28find_or_prepare_insert_smallIiEESt4pairINS8_8iteratorEbERKT_: argument 0"}
!38 = distinct !{!38, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE28find_or_prepare_insert_smallIiEESt4pairINS8_8iteratorEbERKT_"}
!39 = distinct !{!39, !40, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_: argument 0"}
!40 = distinct !{!40, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE22find_or_prepare_insertIiEESt4pairINS8_8iteratorEbERKT_"}
!41 = distinct !{!41, !42, !"_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE16try_emplace_implIRKiJEEESt4pairINS1_12raw_hash_setIS7_JEE8iteratorEbEOT_DpOT0_: argument 0"}
!42 = distinct !{!42, !"_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE16try_emplace_implIRKiJEEESt4pairINS1_12raw_hash_setIS7_JEE8iteratorEbEOT_DpOT0_"}
!43 = distinct !{!43, !44, !"_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE11try_emplaceIiLi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS7_JEE14const_iteratorEEE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbERKiDpOT1_: argument 0"}
!44 = distinct !{!44, !"_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE11try_emplaceIiLi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS7_JEE14const_iteratorEEE5valueEiE4typeELi0EEESt4pairINSD_8iteratorEbERKiDpOT1_"}
!45 = !{!46, !46, i64 0}
!46 = !{!"p1 _ZTSN4absl12lts_2026052613hash_internal4HashIiEE", !12, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 int", !12, i64 0}
!49 = !{!50, !39, !41, !43}
!50 = distinct !{!50, !51, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_: argument 0"}
!51 = distinct !{!51, !"_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE28find_or_prepare_insert_largeIiEESt4pairINS8_8iteratorEbERKT_"}
!52 = !{!41, !43}
!53 = !{!54, !6, i64 0}
!54 = !{!"_ZTSSt4pairIKiN4absl12lts_2026052613base_internal12_GLOBAL__N_19BlockDescEE", !6, i64 0, !29, i64 8}
!55 = !{}
!56 = !{!57, !57, i64 0}
!57 = !{!"_ZTSN4absl12lts_2026052618container_internal6ctrl_tE", !7, i64 0}
!58 = distinct !{!58, !15}
!59 = !{!30, !30, i64 0}
!60 = distinct !{!60, !15}
!61 = !{!"branch_weights", i32 127, i32 255873}
!62 = !{!63, !64, i64 0}
!63 = !{!"_ZTSZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEE13destroy_slotsEvEUlPKNS1_6ctrl_tEPvE_", !64, i64 0}
!64 = !{!"p1 _ZTSN4absl12lts_2026052618container_internal12raw_hash_setINS1_17NodeHashMapPolicyIiNS0_13base_internal12_GLOBAL__N_19BlockDescEEEJEEE", !12, i64 0}
!65 = distinct !{!65, !15}
!66 = !{!67, !48, i64 8}
!67 = !{!"_ZTSN4absl12lts_2026052618container_internal7HashKeyINS0_13hash_internal4HashIiEEiLb1EEE", !46, i64 0, !48, i64 8}
!68 = !{i64 4}
end_hunk_0
