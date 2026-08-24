Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/raw_hash_set?download=true
inline.NumInlined: 959
inline.NumDeleted: 317
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"union.absl::lts_20260526::container_internal::HeapOrSoo" = type { %"struct.absl::lts_20260526::container_internal::HeapPtrs" }
%"struct.absl::lts_20260526::container_internal::HeapPtrs" = type { %"union.absl::lts_20260526::container_internal::MaybeInitializedPtr", %"union.absl::lts_20260526::container_internal::MaybeInitializedPtr.0" }
%"union.absl::lts_20260526::container_internal::MaybeInitializedPtr" = type { ptr }
%"union.absl::lts_20260526::container_internal::MaybeInitializedPtr.0" = type { ptr }
%"class.absl::lts_20260526::FunctionRef" = type { %"union.absl::lts_20260526::functional_internal::VoidPtr", ptr }
%"union.absl::lts_20260526::functional_internal::VoidPtr" = type { ptr }
%"class.absl::lts_20260526::container_internal::(anonymous namespace)::ProbedItemEncoder" = type <{ [128 x %"struct.absl::lts_20260526::container_internal::ProbedItemImpl"], ptr, ptr, ptr, i64, i8, [7 x i8] }>
%"struct.absl::lts_20260526::container_internal::ProbedItemImpl" = type { i32 }
%"class.absl::lts_20260526::container_internal::(anonymous namespace)::ProbedItemEncoder.12" = type <{ [128 x %"struct.absl::lts_20260526::container_internal::ProbedItemImpl"], ptr, ptr, ptr, i64, i8, [7 x i8] }>
%"class.absl::lts_20260526::container_internal::(anonymous namespace)::ProbedItemEncoder.16" = type <{ [64 x %"struct.absl::lts_20260526::container_internal::ProbedItemImpl.17"], ptr, ptr, ptr, i64, i8, [7 x i8] }>
%"struct.absl::lts_20260526::container_internal::ProbedItemImpl.17" = type { i64 }
%"class.absl::lts_20260526::container_internal::(anonymous namespace)::ProbedItemEncoder.21" = type <{ [32 x %"struct.absl::lts_20260526::container_internal::ProbedItemImpl.22"], ptr, ptr, ptr, i64, i8, [7 x i8] }>
%"struct.absl::lts_20260526::container_internal::ProbedItemImpl.22" = type { i64, i64 }

$_ZN4absl12lts_2026052618container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm = comdat any

$_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb = comdat any

$_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm1ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb = comdat any

$_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm4ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb = comdat any

$_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb = comdat any

$_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb = comdat any

$_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m = comdat any

$_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb = comdat any

@_ZN4absl12lts_2026052618container_internal19kDefaultIterControlE = dso_local local_unnamed_addr global i8 0, align 1
@_ZN4absl12lts_2026052618container_internal11kSooControlE = dso_local constant [2 x i8] c"\00\FF", align 1
@_ZZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed = internal thread_local global i16 0, align 2
@_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed = internal thread_local unnamed_addr global i1 false, align 1
@_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE = external constant ptr, align 8
@_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_110RandomSeedEvE7counter = internal thread_local global i64 0, align 8

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 %1, %0                           ; 2 uses
  %i.b = and i64 %i.a, -16
  %i.c = and i64 %i.b, %2
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.a, 15
  %i.f = add i64 %i.e, %0
  %i.g = and i64 %i.f, %4
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = and i64 %2, %0
  %.not = icmp ult i64 %i.h, %1
  br i1 %.not, label %bb.d, label %bb.f, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.i = and i64 %4, %0                           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !10
  %i.l = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16
  %i.n = zext i16 %i.m to i32
  %i.o = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.n) #25, !srcloc !11 ; 2 uses
  %.not26 = icmp eq i32 %i.o, 0
  br i1 %.not26, label %bb.f, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.o, i1 true)
  %i.q = zext nneg i32 %i.p to i64
  %i.r = add i64 %i.i, %i.q
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.e
  %.sink27 = phi i64 [ %i.r, %bb.e ], [ %i.g, %bb.b ] ; 2 uses
  %i.s = icmp ne i64 %.sink27, -1
  tail call void @llvm.assume(i1 %i.s)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %bb.c
  %.2 = phi i64 [ -1, %bb.d ], [ -1, %bb.c ], [ %.sink27, %.sink.split ]
  ret i64 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr %2, ptr %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %4, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc noundef i64 @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_160GrowEmptySooTableToNextCapacityForceSamplingAndPrepareInsertERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %2, ptr %3)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.h = load i64, ptr %0, align 8
  %i.i = and i64 %i.h, -256
  %i.j = or disjoint i64 %i.i, 2                  ; 2 uses
  store i64 %i.j, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i16, ptr %i.k, align 4, !tbaa !22, !alias.scope !19
  %i.m = zext i16 %i.l to i64                     ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 26
  %i.o = sub nsw i64 0, %i.m
  %i.p = and i64 %i.n, %i.o                       ; 2 uses
  %i.q = mul nuw nsw i64 %i.d, 3
  %i.r = add nuw nsw i64 %i.p, %i.q               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23, !alias.scope !19 ; 2 uses
  %i.u = icmp eq ptr %i.t, @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m
  br i1 %i.u, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %i.r, 7
  %i.w = and i64 %i.v, 68719476728
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26, !noalias !19
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit

bb.e:                                             ; preds = %bb.c
  %i.y = tail call noundef ptr %i.t(ptr noundef %i.g, i64 noundef %i.r), !noalias !19, !inline_history !24
  %.pre = load i64, ptr %0, align 8
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit: ; preds = %bb.d, %bb.e
  %5 = phi i64 [ %i.j, %bb.d ], [ %.pre, %bb.e ]  ; 2 uses
  %i.z = phi ptr [ %i.x, %bb.d ], [ %i.y, %bb.e ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.p ; 2 uses
  %i.ac = and i64 %5, -256
  %i.ad = add i64 %i.ac, 131072
  %i.ae = and i64 %5, 255
  %i.af = or disjoint i64 %i.ad, %i.ae
  store i64 %i.af, ptr %0, align 8
  store i64 1, ptr %i.z, align 8, !tbaa !25
  %.b.i.i.i = load i1, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1
  %.pre.i.i.i = tail call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed) ; 3 uses
  br i1 %.b.i.i.i, label %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i, label %bb.f, !prof !28

._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit
  %.pre.i.i = load i16, ptr %.pre.i.i.i, align 2, !tbaa !29
  br label %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit
  %i.ag = ptrtoint ptr %.pre.i.i.i to i64
  %i.ah = trunc i64 %i.ag to i16
  store i1 true, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1
  br label %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit

_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit: ; preds = %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i, %bb.f
  %i.ai = phi i16 [ %.pre.i.i, %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i ], [ %i.ah, %bb.f ]
  %i.aj = add i16 %i.ai, -21165                   ; 2 uses
  store i16 %i.aj, ptr %.pre.i.i.i, align 2, !tbaa !29
  %i.ak = load i64, ptr %0, align 8
  %i.al = shl i16 %i.aj, 8
  %i.am = zext i16 %i.al to i64
  %i.an = and i64 %i.ak, -65281
  %i.ao = or disjoint i64 %i.an, %i.am
  store i64 %i.ao, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = tail call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.av = load i64, ptr %0, align 8
  %i.aw = lshr i64 %i.av, 8
  %i.ax = and i64 %i.aw, 255
  %i.ay = tail call noundef i64 %i.aq(ptr noundef %i.at, ptr noundef nonnull %i.au, i64 noundef %i.ax)
  %i.az = lshr i64 %i.ay, 57
  %i.ba = load i64, ptr %0, align 8
  %i.bb = lshr i64 %i.ba, 8
  %i.bc = and i64 %i.bb, 255
  %i.bd = tail call noundef i64 %3(ptr %2, i64 noundef %i.bc), !inline_history !32 ; 2 uses
  %i.be = load i64, ptr %0, align 8
  %i.bf = lshr i64 %i.be, 8
  %i.bg = xor i64 %i.bf, %i.bd
  %i.bh = and i64 %i.bg, 2                        ; 2 uses
  %i.bi = lshr i64 %i.bd, 57
  %i.bj = or disjoint i64 %i.bi, 128              ; 2 uses
  %i.bk = mul nuw nsw i64 %i.az, 1099511628032
  %i.bl = add nuw nsw i64 %i.bk, -9187342685793419136
  %i.bm = shl nuw nsw i64 %i.bh, 3                ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bj, %i.bm
  %i.bo = xor i64 %i.bn, %i.bl
  %i.bp = or disjoint i64 %i.bm, 32
  %i.bq = shl nuw nsw i64 %i.bj, %i.bp
  %i.br = xor i64 %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bs, i8 -128, i64 11, i1 false)
  store i64 %i.br, ptr %i.aa, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.d
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !33
  tail call void %i.bv(ptr noundef nonnull %0, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.au, i64 noundef 1)
  store ptr %i.aa, ptr %i.au, align 8, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %i.bw, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ %i.bh, %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef i64 @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_160GrowEmptySooTableToNextCapacityForceSamplingAndPrepareInsertERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr %2, ptr nofree readonly captures(none) %3) unnamed_addr #4 {
_ZN4absl12lts_2026052618container_internal12CommonFields5infozEv.exit:
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_132ResizeEmptyNonAllocatedTableImplERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef 3, i1 noundef zeroext true)
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, -256
  %i.c = add i64 %i.b, 131072
  %i.d = and i64 %i.a, 255
  %i.e = or disjoint i64 %i.c, %i.d
  store i64 %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 -8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !25
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 8
  %i.l = and i64 %i.k, 255
  %i.m = tail call noundef i64 %3(ptr %2, i64 noundef %i.l), !inline_history !32
  %i.n = lshr i64 %i.m, 57
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 1 ; 2 uses
  store i8 %i.o, ptr %i.p, align 1, !tbaa !34
  %i.q = load i64, ptr %0, align 8
  %i.r = and i64 %i.q, 255
  %notmask.i.i.i.i9 = shl nsw i64 -1, %i.r
  %i.s = xor i64 %notmask.i.i.i.i9, -1
  %i.t = getelementptr i8, ptr %i.p, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 1
  store i8 %i.o, ptr %i.u, align 1, !tbaa !34
  ret i64 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm1ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr %2, ptr %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %4, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc noundef i64 @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_160GrowEmptySooTableToNextCapacityForceSamplingAndPrepareInsertERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %2, ptr %3)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.h = load i64, ptr %0, align 8
  %i.i = and i64 %i.h, -256
  %i.j = or disjoint i64 %i.i, 2                  ; 2 uses
  store i64 %i.j, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i16, ptr %i.k, align 4, !tbaa !22, !alias.scope !36
  %i.m = zext i16 %i.l to i64                     ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 26
  %i.o = sub nsw i64 0, %i.m
  %i.p = and i64 %i.n, %i.o                       ; 2 uses
  %i.q = mul nuw nsw i64 %i.d, 3
  %i.r = add nuw nsw i64 %i.p, %i.q               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23, !alias.scope !36 ; 2 uses
  %i.u = icmp eq ptr %i.t, @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m
  br i1 %i.u, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %i.r, 7
  %i.w = and i64 %i.v, 68719476728
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26, !noalias !36
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit

bb.e:                                             ; preds = %bb.c
  %i.y = tail call noundef ptr %i.t(ptr noundef %i.g, i64 noundef %i.r), !noalias !36, !inline_history !24
  %.pre = load i64, ptr %0, align 8
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit: ; preds = %bb.d, %bb.e
  %5 = phi i64 [ %i.j, %bb.d ], [ %.pre, %bb.e ]  ; 2 uses
  %i.z = phi ptr [ %i.x, %bb.d ], [ %i.y, %bb.e ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.p ; 2 uses
  %i.ac = and i64 %5, -256
  %i.ad = add i64 %i.ac, 131072
  %i.ae = and i64 %5, 255
  %i.af = or disjoint i64 %i.ad, %i.ae
  store i64 %i.af, ptr %0, align 8
  store i64 1, ptr %i.z, align 8, !tbaa !25
  %.b.i.i.i = load i1, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1
  %.pre.i.i.i = tail call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed) ; 3 uses
  br i1 %.b.i.i.i, label %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i, label %bb.f, !prof !28

._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit
  %.pre.i.i = load i16, ptr %.pre.i.i.i, align 2, !tbaa !29
  br label %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit
  %i.ag = ptrtoint ptr %.pre.i.i.i to i64
  %i.ah = trunc i64 %i.ag to i16
  store i1 true, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1
  br label %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit

_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit: ; preds = %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i, %bb.f
  %i.ai = phi i16 [ %.pre.i.i, %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i ], [ %i.ah, %bb.f ]
  %i.aj = add i16 %i.ai, -21165                   ; 2 uses
  store i16 %i.aj, ptr %.pre.i.i.i, align 2, !tbaa !29
  %i.ak = load i64, ptr %0, align 8
  %i.al = shl i16 %i.aj, 8
  %i.am = zext i16 %i.al to i64
  %i.an = and i64 %i.ak, -65281
  %i.ao = or disjoint i64 %i.an, %i.am
  store i64 %i.ao, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = tail call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.av = load i64, ptr %0, align 8
  %i.aw = lshr i64 %i.av, 8
  %i.ax = and i64 %i.aw, 255
  %i.ay = tail call noundef i64 %i.aq(ptr noundef %i.at, ptr noundef nonnull %i.au, i64 noundef %i.ax)
  %i.az = lshr i64 %i.ay, 57
  %i.ba = load i64, ptr %0, align 8
  %i.bb = lshr i64 %i.ba, 8
  %i.bc = and i64 %i.bb, 255
  %i.bd = tail call noundef i64 %3(ptr %2, i64 noundef %i.bc), !inline_history !32 ; 2 uses
  %i.be = load i64, ptr %0, align 8
  %i.bf = lshr i64 %i.be, 8
  %i.bg = xor i64 %i.bf, %i.bd
  %i.bh = and i64 %i.bg, 2                        ; 2 uses
  %i.bi = lshr i64 %i.bd, 57
  %i.bj = or disjoint i64 %i.bi, 128              ; 2 uses
  %i.bk = mul nuw nsw i64 %i.az, 1099511628032
  %i.bl = add nuw nsw i64 %i.bk, -9187342685793419136
  %i.bm = shl nuw nsw i64 %i.bh, 3                ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bj, %i.bm
  %i.bo = xor i64 %i.bn, %i.bl
  %i.bp = or disjoint i64 %i.bm, 32
  %i.bq = shl nuw nsw i64 %i.bj, %i.bp
  %i.br = xor i64 %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bs, i8 -128, i64 11, i1 false)
  store i64 %i.br, ptr %i.aa, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.d
  %i.bu = load i8, ptr %i.au, align 8
  store i8 %i.bu, ptr %i.bt, align 1
  store ptr %i.aa, ptr %i.au, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %i.bv, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ %i.bh, %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm4ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr %2, ptr %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %4, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc noundef i64 @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_160GrowEmptySooTableToNextCapacityForceSamplingAndPrepareInsertERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %2, ptr %3)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.h = load i64, ptr %0, align 8
  %i.i = and i64 %i.h, -256
  %i.j = or disjoint i64 %i.i, 2                  ; 2 uses
  store i64 %i.j, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i16, ptr %i.k, align 4, !tbaa !22, !alias.scope !39
  %i.m = zext i16 %i.l to i64                     ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 26
  %i.o = sub nsw i64 0, %i.m
  %i.p = and i64 %i.n, %i.o                       ; 2 uses
  %i.q = mul nuw nsw i64 %i.d, 3
  %i.r = add nuw nsw i64 %i.p, %i.q               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23, !alias.scope !39 ; 2 uses
  %i.u = icmp eq ptr %i.t, @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m
  br i1 %i.u, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %i.r, 7
  %i.w = and i64 %i.v, 68719476728
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26, !noalias !39
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit

bb.e:                                             ; preds = %bb.c
  %i.y = tail call noundef ptr %i.t(ptr noundef %i.g, i64 noundef %i.r), !noalias !39, !inline_history !24
  %.pre = load i64, ptr %0, align 8
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit: ; preds = %bb.d, %bb.e
  %5 = phi i64 [ %i.j, %bb.d ], [ %.pre, %bb.e ]  ; 2 uses
  %i.z = phi ptr [ %i.x, %bb.d ], [ %i.y, %bb.e ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.p ; 2 uses
  %i.ac = and i64 %5, -256
  %i.ad = add i64 %i.ac, 131072
  %i.ae = and i64 %5, 255
  %i.af = or disjoint i64 %i.ad, %i.ae
  store i64 %i.af, ptr %0, align 8
  store i64 1, ptr %i.z, align 8, !tbaa !25
  %.b.i.i.i = load i1, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1
  %.pre.i.i.i = tail call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed) ; 3 uses
  br i1 %.b.i.i.i, label %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i, label %bb.f, !prof !28

._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit
  %.pre.i.i = load i16, ptr %.pre.i.i.i, align 2, !tbaa !29
  br label %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit
  %i.ag = ptrtoint ptr %.pre.i.i.i to i64
  %i.ah = trunc i64 %i.ag to i16
  store i1 true, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1
  br label %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit

_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit: ; preds = %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i, %bb.f
  %i.ai = phi i16 [ %.pre.i.i, %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i ], [ %i.ah, %bb.f ]
  %i.aj = add i16 %i.ai, -21165                   ; 2 uses
  store i16 %i.aj, ptr %.pre.i.i.i, align 2, !tbaa !29
  %i.ak = load i64, ptr %0, align 8
  %i.al = shl i16 %i.aj, 8
  %i.am = zext i16 %i.al to i64
  %i.an = and i64 %i.ak, -65281
  %i.ao = or disjoint i64 %i.an, %i.am
  store i64 %i.ao, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = tail call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.av = load i64, ptr %0, align 8
  %i.aw = lshr i64 %i.av, 8
  %i.ax = and i64 %i.aw, 255
  %i.ay = tail call noundef i64 %i.aq(ptr noundef %i.at, ptr noundef nonnull %i.au, i64 noundef %i.ax)
  %i.az = lshr i64 %i.ay, 57
  %i.ba = load i64, ptr %0, align 8
  %i.bb = lshr i64 %i.ba, 8
  %i.bc = and i64 %i.bb, 255
  %i.bd = tail call noundef i64 %3(ptr %2, i64 noundef %i.bc), !inline_history !32 ; 2 uses
  %i.be = load i64, ptr %0, align 8
  %i.bf = lshr i64 %i.be, 8
  %i.bg = xor i64 %i.bf, %i.bd
  %i.bh = and i64 %i.bg, 2                        ; 2 uses
  %i.bi = lshr i64 %i.bd, 57
  %i.bj = or disjoint i64 %i.bi, 128              ; 2 uses
  %i.bk = mul nuw nsw i64 %i.az, 1099511628032
  %i.bl = add nuw nsw i64 %i.bk, -9187342685793419136
  %i.bm = shl nuw nsw i64 %i.bh, 3                ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bj, %i.bm
  %i.bo = xor i64 %i.bn, %i.bl
  %i.bp = or disjoint i64 %i.bm, 32
  %i.bq = shl nuw nsw i64 %i.bj, %i.bp
  %i.br = xor i64 %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bs, i8 -128, i64 11, i1 false)
  store i64 %i.br, ptr %i.aa, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.d
  %i.bu = load i32, ptr %i.au, align 8
  store i32 %i.bu, ptr %i.bt, align 1
  store ptr %i.aa, ptr %i.au, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %i.bv, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ %i.bh, %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr %2, ptr %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %4, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc noundef i64 @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_160GrowEmptySooTableToNextCapacityForceSamplingAndPrepareInsertERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %2, ptr %3)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.h = load i64, ptr %0, align 8
  %i.i = and i64 %i.h, -256
  %i.j = or disjoint i64 %i.i, 2                  ; 2 uses
  store i64 %i.j, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i16, ptr %i.k, align 4, !tbaa !22, !alias.scope !42
  %i.m = zext i16 %i.l to i64                     ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 26
  %i.o = sub nsw i64 0, %i.m
  %i.p = and i64 %i.n, %i.o                       ; 2 uses
  %i.q = mul nuw nsw i64 %i.d, 3
  %i.r = add nuw nsw i64 %i.p, %i.q               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23, !alias.scope !42 ; 2 uses
  %i.u = icmp eq ptr %i.t, @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m
  br i1 %i.u, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %i.r, 7
  %i.w = and i64 %i.v, 68719476728
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26, !noalias !42
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit

bb.e:                                             ; preds = %bb.c
  %i.y = tail call noundef ptr %i.t(ptr noundef %i.g, i64 noundef %i.r), !noalias !42, !inline_history !24
  %.pre = load i64, ptr %0, align 8
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit: ; preds = %bb.d, %bb.e
  %5 = phi i64 [ %i.j, %bb.d ], [ %.pre, %bb.e ]  ; 2 uses
  %i.z = phi ptr [ %i.x, %bb.d ], [ %i.y, %bb.e ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.p ; 2 uses
  %i.ac = and i64 %5, -256
  %i.ad = add i64 %i.ac, 131072
  %i.ae = and i64 %5, 255
  %i.af = or disjoint i64 %i.ad, %i.ae
  store i64 %i.af, ptr %0, align 8
  store i64 1, ptr %i.z, align 8, !tbaa !25
  %.b.i.i.i = load i1, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1
  %.pre.i.i.i = tail call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed) ; 3 uses
  br i1 %.b.i.i.i, label %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i, label %bb.f, !prof !28

._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit
  %.pre.i.i = load i16, ptr %.pre.i.i.i, align 2, !tbaa !29
  br label %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit
  %i.ag = ptrtoint ptr %.pre.i.i.i to i64
  %i.ah = trunc i64 %i.ag to i16
  store i1 true, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1
  br label %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit

_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit: ; preds = %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i, %bb.f
  %i.ai = phi i16 [ %.pre.i.i, %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i ], [ %i.ah, %bb.f ]
  %i.aj = add i16 %i.ai, -21165                   ; 2 uses
  store i16 %i.aj, ptr %.pre.i.i.i, align 2, !tbaa !29
  %i.ak = load i64, ptr %0, align 8
  %i.al = shl i16 %i.aj, 8
  %i.am = zext i16 %i.al to i64
  %i.an = and i64 %i.ak, -65281
  %i.ao = or disjoint i64 %i.an, %i.am
  store i64 %i.ao, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = tail call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.av = load i64, ptr %0, align 8
  %i.aw = lshr i64 %i.av, 8
  %i.ax = and i64 %i.aw, 255
  %i.ay = tail call noundef i64 %i.aq(ptr noundef %i.at, ptr noundef nonnull %i.au, i64 noundef %i.ax)
  %i.az = lshr i64 %i.ay, 57
  %i.ba = load i64, ptr %0, align 8
  %i.bb = lshr i64 %i.ba, 8
  %i.bc = and i64 %i.bb, 255
  %i.bd = tail call noundef i64 %3(ptr %2, i64 noundef %i.bc), !inline_history !32 ; 2 uses
  %i.be = load i64, ptr %0, align 8
  %i.bf = lshr i64 %i.be, 8
  %i.bg = xor i64 %i.bf, %i.bd
  %i.bh = and i64 %i.bg, 2                        ; 2 uses
  %i.bi = lshr i64 %i.bd, 57
  %i.bj = or disjoint i64 %i.bi, 128              ; 2 uses
  %i.bk = mul nuw nsw i64 %i.az, 1099511628032
  %i.bl = add nuw nsw i64 %i.bk, -9187342685793419136
  %i.bm = shl nuw nsw i64 %i.bh, 3                ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bj, %i.bm
  %i.bo = xor i64 %i.bn, %i.bl
  %i.bp = or disjoint i64 %i.bm, 32
  %i.bq = shl nuw nsw i64 %i.bj, %i.bp
  %i.br = xor i64 %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bs, i8 -128, i64 11, i1 false)
  store i64 %i.br, ptr %i.aa, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.d
  %i.bu = load i64, ptr %i.au, align 8
  store i64 %i.bu, ptr %i.bt, align 1
  store ptr %i.aa, ptr %i.au, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %i.bv, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ %i.bh, %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr %2, ptr %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %4, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc noundef i64 @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_160GrowEmptySooTableToNextCapacityForceSamplingAndPrepareInsertERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %2, ptr %3)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.h = load i64, ptr %0, align 8
  %i.i = and i64 %i.h, -256
  %i.j = or disjoint i64 %i.i, 2                  ; 2 uses
  store i64 %i.j, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i16, ptr %i.k, align 4, !tbaa !22, !alias.scope !45
  %i.m = zext i16 %i.l to i64                     ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 26
  %i.o = sub nsw i64 0, %i.m
  %i.p = and i64 %i.n, %i.o                       ; 2 uses
  %i.q = mul nuw nsw i64 %i.d, 3
  %i.r = add nuw nsw i64 %i.p, %i.q               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23, !alias.scope !45 ; 2 uses
  %i.u = icmp eq ptr %i.t, @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m
  br i1 %i.u, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %i.r, 7
  %i.w = and i64 %i.v, 68719476728
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26, !noalias !45
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit

bb.e:                                             ; preds = %bb.c
  %i.y = tail call noundef ptr %i.t(ptr noundef %i.g, i64 noundef %i.r), !noalias !45, !inline_history !24
  %.pre = load i64, ptr %0, align 8
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit: ; preds = %bb.d, %bb.e
  %5 = phi i64 [ %i.j, %bb.d ], [ %.pre, %bb.e ]  ; 2 uses
  %i.z = phi ptr [ %i.x, %bb.d ], [ %i.y, %bb.e ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.p ; 2 uses
  %i.ac = and i64 %5, -256
  %i.ad = add i64 %i.ac, 131072
  %i.ae = and i64 %5, 255
  %i.af = or disjoint i64 %i.ad, %i.ae
  store i64 %i.af, ptr %0, align 8
  store i64 1, ptr %i.z, align 8, !tbaa !25
  %.b.i.i.i = load i1, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1
  %.pre.i.i.i = tail call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed) ; 3 uses
  br i1 %.b.i.i.i, label %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i, label %bb.f, !prof !28

._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit
  %.pre.i.i = load i16, ptr %.pre.i.i.i, align 2, !tbaa !29
  br label %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_117AllocBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmbPv.exit
  %i.ag = ptrtoint ptr %.pre.i.i.i to i64
  %i.ah = trunc i64 %i.ag to i16
  store i1 true, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1
  br label %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit

_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit: ; preds = %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i, %bb.f
  %i.ai = phi i16 [ %.pre.i.i, %._ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv.exit_crit_edge.i.i ], [ %i.ah, %bb.f ]
  %i.aj = add i16 %i.ai, -21165                   ; 2 uses
  store i16 %i.aj, ptr %.pre.i.i.i, align 2, !tbaa !29
  %i.ak = load i64, ptr %0, align 8
  %i.al = shl i16 %i.aj, 8
  %i.am = zext i16 %i.al to i64
  %i.an = and i64 %i.ak, -65281
  %i.ao = or disjoint i64 %i.an, %i.am
  store i64 %i.ao, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  %i.at = tail call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.av = load i64, ptr %0, align 8
  %i.aw = lshr i64 %i.av, 8
  %i.ax = and i64 %i.aw, 255
  %i.ay = tail call noundef i64 %i.aq(ptr noundef %i.at, ptr noundef nonnull %i.au, i64 noundef %i.ax)
  %i.az = lshr i64 %i.ay, 57
  %i.ba = load i64, ptr %0, align 8
  %i.bb = lshr i64 %i.ba, 8
  %i.bc = and i64 %i.bb, 255
  %i.bd = tail call noundef i64 %3(ptr %2, i64 noundef %i.bc), !inline_history !32 ; 2 uses
  %i.be = load i64, ptr %0, align 8
  %i.bf = lshr i64 %i.be, 8
  %i.bg = xor i64 %i.bf, %i.bd
  %i.bh = and i64 %i.bg, 2                        ; 2 uses
  %i.bi = lshr i64 %i.bd, 57
  %i.bj = or disjoint i64 %i.bi, 128              ; 2 uses
  %i.bk = mul nuw nsw i64 %i.az, 1099511628032
  %i.bl = add nuw nsw i64 %i.bk, -9187342685793419136
  %i.bm = shl nuw nsw i64 %i.bh, 3                ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bj, %i.bm
  %i.bo = xor i64 %i.bn, %i.bl
  %i.bp = or disjoint i64 %i.bm, 32
  %i.bq = shl nuw nsw i64 %i.bj, %i.bp
  %i.br = xor i64 %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bs, i8 -128, i64 11, i1 false)
  store i64 %i.br, ptr %i.aa, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  store ptr %i.aa, ptr %i.au, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %i.bu, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ %i.bh, %_ZN4absl12lts_2026052618container_internal12CommonFields17generate_new_seedEb.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef %0, i64 noundef %1) #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.noexc.i, label %_ZN4absl12lts_2026052618container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !12

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZN4absl12lts_2026052618container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #26
  ret ptr %i.d
}

; Function Attrs: mustprogress noinline uwtable
define weak_odr dso_local void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 1
  %i.b = select i1 %i.a, i64 8, i64 0
  %.0.i.i = select i1 %5, i64 9, i64 %i.b, !prof !12 ; 2 uses
  %i.c = icmp ult i64 %1, 2
  %i.d = add i64 %1, 15
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = add i64 %i.e, %4
  %i.g = add i64 %i.f, %.0.i.i
  %i.h = sub i64 0, %4
  %i.i = and i64 %i.g, %i.h
  %i.j = mul i64 %3, %1
  %i.k = sub nsw i64 0, %.0.i.i
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k
  %i.m = add i64 %i.j, 7
  %i.n = add i64 %i.m, %i.i
  %i.o = and i64 %i.n, -8
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i16 @_ZN4absl12lts_2026052618container_internal17NextHashTableSeedEv() local_unnamed_addr #5 {
bb.a:
  %.b = load i1, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1
  %.pre = tail call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed) ; 4 uses
  br i1 %.b, label %._crit_edge, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %.pre to i64
  %i.b = trunc i64 %i.a to i16
  store i16 %i.b, ptr %.pre, align 2, !tbaa !29
  store i1 true, ptr @_ZGVZN4absl12lts_2026052618container_internal17NextHashTableSeedEvE4seed, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.c = load i16, ptr %.pre, align 2, !tbaa !29
  %i.d = add i16 %i.c, -21165                     ; 2 uses
  store i16 %i.d, ptr %.pre, align 2, !tbaa !29
  ret i16 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN4absl12lts_2026052618container_internal15EmptyGenerationEv() local_unnamed_addr #7 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4absl12lts_2026052618container_internal33CommonFieldsGenerationInfoEnabled41should_rehash_for_bug_detection_on_insertEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !48
  switch i64 %i.a, label %bb.b [
    i64 -1, label %bb.d
    i64 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = add i64 %1, 1                            ; 2 uses
  %i.c = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_110RandomSeedEvE7counter) ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !51
  %i.f = add i64 %i.e, 1                          ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !51
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = xor i64 %i.g, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.i = xor i64 %i.h, %i.f
  %i.j = zext i64 %i.i to i128
  %i.k = mul nuw nsw i128 %i.j, 8779197792823184629 ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = xor i128 %i.l, %i.k
  %i.n = trunc i128 %i.m to i64
  %neg.i = xor i64 %1, -1
  %i.o = and i64 %i.b, %neg.i
  %i.p = add i64 %i.o, -1
  %i.q = and i64 %i.p, %i.n
  %i.r = icmp samesign ult i64 %i.q, 16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i1 [ %i.r, %bb.c ], [ false, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4absl12lts_2026052618container_internal33CommonFieldsGenerationInfoEnabled39should_rehash_for_bug_detection_on_moveEm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1                            ; 2 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4absl12lts_2026052618container_internal12_GLOBAL__N_110RandomSeedEvE7counter) ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51
  %i.e = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !51
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = xor i64 %i.f, ptrtoint (ptr @_ZN4absl12lts_2026052613hash_internal15MixingHashState5kSeedE to i64)
  %i.h = xor i64 %i.g, %i.e
  %i.i = zext i64 %i.h to i128
  %i.j = mul nuw nsw i128 %i.i, 8779197792823184629 ; 2 uses
  %i.k = lshr i128 %i.j, 64
end_hunk_0
