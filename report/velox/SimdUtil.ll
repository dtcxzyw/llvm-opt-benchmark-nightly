Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SimdUtil?download=true
inline.NumInlined: 131
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.facebook::velox::simd::detail::LeadingMask" = type { [9 x %"class.xsimd::batch_bool"] }
%"class.xsimd::batch_bool" = type { %"struct.xsimd::types::simd_register" }
%"struct.xsimd::types::simd_register" = type { %"struct.xsimd::types::simd_register.0" }
%"struct.xsimd::types::simd_register.0" = type { %"struct.xsimd::types::simd_register.1" }
%"struct.xsimd::types::simd_register.1" = type { <4 x i64> }
%"struct.facebook::velox::simd::detail::LeadingMask.2" = type { [5 x %"class.xsimd::batch_bool.3"] }
%"class.xsimd::batch_bool.3" = type { %"struct.xsimd::types::simd_register.4" }
%"struct.xsimd::types::simd_register.4" = type { %"struct.xsimd::types::simd_register.5" }
%"struct.xsimd::types::simd_register.5" = type { %"struct.xsimd::types::simd_register.6" }
%"struct.xsimd::types::simd_register.6" = type { <4 x i64> }
%"struct.facebook::velox::simd::detail::FromBitMask" = type { [256 x %"class.xsimd::batch_bool"] }
%"struct.facebook::velox::simd::detail::FromBitMask.7" = type { [16 x %"class.xsimd::batch_bool.3"] }
%"class.xsimd::batch" = type { %"struct.xsimd::types::simd_register" }
%"struct.xsimd::fma3" = type { i8 }

$_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_ = comdat any

$_ZZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits = comdat any

$_ZGVZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits = comdat any

@_ZN8facebook5velox4simd6detail11byteSetBitsE = local_unnamed_addr global [256 x [8 x i32]] zeroinitializer, align 32
@_ZN8facebook5velox4simd6detail18permute4x64IndicesE = local_unnamed_addr global [16 x [8 x i32]] zeroinitializer, align 32
@_ZN8facebook5velox4simd6detail13leadingMask32E = global %"struct.facebook::velox::simd::detail::LeadingMask" zeroinitializer, align 32
@_ZN8facebook5velox4simd6detail13leadingMask64E = global %"struct.facebook::velox::simd::detail::LeadingMask.2" zeroinitializer, align 32
@_ZN8facebook5velox4simd6detail13fromBitMask32E = global %"struct.facebook::velox::simd::detail::FromBitMask" zeroinitializer, align 32
@_ZN8facebook5velox4simd6detail13fromBitMask64E = global %"struct.facebook::velox::simd::detail::FromBitMask.7" zeroinitializer, align 32
@_ZZN8facebook5velox4simd18initializeSimdUtilEvE6inited = internal unnamed_addr global i1 false, align 1
@_ZZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits = linkonce_odr global %"class.xsimd::batch" zeroinitializer, comdat, align 32
@_ZGVZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits = linkonce_odr global i64 0, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_SimdUtil.cpp, ptr null }]
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4simd10gatherBitsEPKmN5folly5RangeIPKiEEPm(ptr noundef %0, ptr %1, ptr %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.xsimd::fma3", align 1      ; 3 uses
  %5 = alloca %"struct.xsimd::fma3", align 1      ; 3 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 8 uses
  %i.e = icmp ult i64 %i.d, 5
  br i1 %i.e, label %.preheader, label %.preheader37, !prof !13

.preheader37:                                     ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 8
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.preheader:                                       ; preds = %bb.a
  %.not44 = icmp eq ptr %2, %1
  br i1 %.not44, label %._crit_edge42, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check.not = icmp eq i64 %i.c, 16
  br i1 %min.iters.check.not, label %vec.epilog.vector.body, label %.lr.ph41

vec.epilog.vector.body:                           ; preds = %iter.check, %vec.epilog.vector.body
  %index61 = phi i64 [ %index.next64, %vec.epilog.vector.body ], [ 0, %iter.check ] ; 3 uses
  %vec.phi62 = phi <4 x i8> [ %i.ao, %vec.epilog.vector.body ], [ zeroinitializer, %iter.check ]
  %vec.ind63 = phi <4 x i32> [ %vec.ind.next65, %vec.epilog.vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %iter.check ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index61
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index61
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load <2 x i32>, ptr %i.g, align 4, !tbaa !8
  %i.k = sext <2 x i32> %i.j to <2 x i64>         ; 3 uses
  %i.l = load <2 x i32>, ptr %i.i, align 4, !tbaa !8
  %i.m = sext <2 x i32> %i.l to <2 x i64>         ; 3 uses
  %i.n = shufflevector <2 x i64> %i.k, <2 x i64> %i.m, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.o = extractelement <2 x i64> %i.k, i64 0
  %i.p = lshr i64 %i.o, 6
  %i.q = extractelement <2 x i64> %i.k, i64 1
  %i.r = lshr i64 %i.q, 6
  %i.s = extractelement <2 x i64> %i.m, i64 0
  %i.t = lshr i64 %i.s, 6
  %i.u = extractelement <2 x i64> %i.m, i64 1
  %i.v = lshr i64 %i.u, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.r
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.v
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !15
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !15
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !15
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !15
  %i.ae = insertelement <4 x i64> poison, i64 %i.aa, i64 0
  %i.af = insertelement <4 x i64> %i.ae, i64 %i.ab, i64 1
  %i.ag = insertelement <4 x i64> %i.af, i64 %i.ac, i64 2
  %i.ah = insertelement <4 x i64> %i.ag, i64 %i.ad, i64 3
  %i.ai = and <4 x i64> %i.n, splat (i64 63)
  %i.aj = lshr <4 x i64> %i.ah, %i.ai
  %i.ak = trunc <4 x i64> %i.aj to <4 x i32>
  %i.al = and <4 x i32> %i.ak, splat (i32 1)
  %i.am = shl nuw <4 x i32> %i.al, %vec.ind63
  %i.an = trunc <4 x i32> %i.am to <4 x i8>
  %i.ao = or <4 x i8> %vec.phi62, %i.an           ; 2 uses
  %index.next64 = add nuw i64 %index61, 4         ; 2 uses
  %vec.ind.next65 = add <4 x i32> %vec.ind63, splat (i32 4)
  %i.ap = icmp eq i64 %index.next64, %i.d
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aq = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.ao)
  br label %._crit_edge42

._crit_edge42:                                    ; preds = %.lr.ph41, %vec.epilog.middle.block, %.preheader
  %.032.lcssa = phi i8 [ 0, %.preheader ], [ %i.aq, %vec.epilog.middle.block ], [ %i.be, %.lr.ph41 ]
  store i8 %.032.lcssa, ptr %3, align 1, !tbaa !18
  br label %bb.c

.lr.ph41:                                         ; preds = %iter.check, %.lr.ph41
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.lr.ph41 ], [ 0, %iter.check ] ; 3 uses
  %.03239 = phi i8 [ %i.be, %.lr.ph41 ], [ 0, %iter.check ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv51
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = lshr i64 %i.at, 6
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !15
  %i.ax = and i64 %i.at, 63
  %i.ay = lshr i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i32 %i.az, 1
  %i.bb = trunc nuw nsw i64 %indvars.iv51 to i32
  %i.bc = shl nuw i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i8
  %i.be = or i8 %.03239, %i.bd                    ; 2 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next52, %i.d
  br i1 %exitcond.not, label %._crit_edge42, label %.lr.ph41, !llvm.loop !11

.lr.ph:                                           ; preds = %.preheader37, %.lr.ph
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %.lr.ph ], [ 0, %.preheader37 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 8, %.preheader37 ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv46
  %i.bg = load <4 x i64>, ptr %i.bf, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bh = call noundef zeroext i8 @_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_(ptr noundef %0, <4 x i64> %i.bg, i32 noundef 8, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.bi = lshr exact i64 %indvars.iv46, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 %i.bi
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.bk = icmp ugt i64 %i.d, %indvars.iv.next
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 8
  br i1 %i.bk, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bl = trunc i64 %i.d to i32
  %i.bm = add i32 %i.bl, -9
  %i.bn = and i32 %i.bm, -8
  %i.bo = add i32 %i.bn, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader37
  %.0.lcssa = phi i32 [ 0, %.preheader37 ], [ %i.bo, %._crit_edge.loopexit ] ; 3 uses
  %i.bp = zext nneg i32 %.0.lcssa to i64          ; 2 uses
  %.not = icmp eq i64 %i.d, %i.bp
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bp
  %i.br = load <4 x i64>, ptr %i.bq, align 1, !tbaa !18
  %i.bs = trunc nuw i64 %i.d to i32
  %i.bt = sub i32 %i.bs, %.0.lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.bu = call noundef zeroext i8 @_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_(ptr noundef %0, <4 x i64> %i.br, i32 noundef %i.bt, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.bv = lshr exact i32 %.0.lcssa, 3
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 %i.bw
  store i8 %i.bu, ptr %i.bx, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %._crit_edge42
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i8 @_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_(ptr noundef %0, <4 x i64> %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits) #10
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store <8 x i32> <i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128>, ptr @_ZZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits, align 32
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits) #10
  br label %_ZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_.exit

_ZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.05.0.copyload19.i = load <8 x i32>, ptr @_ZZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits, align 32
  %i.e = bitcast <4 x i64> %1 to <8 x i32>        ; 2 uses
  %i.f = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %.sroa.05.0.copyload19.i, <8 x i32> %i.e)
  %i.g = sext i32 %2 to i64
  %i.h = getelementptr inbounds nuw [32 x i8], ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 %i.g
  %.sroa.0.0.copyload.i.i20.i = load <8 x i32>, ptr %i.h, align 32
  %i.i = ashr <8 x i32> %i.e, splat (i32 3)
  %i.j = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %0, <8 x i32> %i.i, <8 x i32> %.sroa.0.0.copyload.i.i20.i, i8 1)
  %i.k = and <8 x i32> %i.j, %i.f
  %i.l = icmp ne <8 x i32> %i.k, zeroinitializer
  %i.m = bitcast <8 x i1> %i.l to i8
  ret i8 %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN8facebook5velox4simd18initializeSimdUtilEv() local_unnamed_addr #2 {
bb.a:
  %.b = load i1, ptr @_ZZN8facebook5velox4simd18initializeSimdUtilEvE6inited, align 1
  br i1 %.b, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %._crit_edge.i ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw [32 x i8], ptr @_ZN8facebook5velox4simd6detail11byteSetBitsE, i64 %indvars.iv21.i ; 9 uses
  %i.b = trunc nuw nsw i64 %indvars.iv21.i to i32 ; 8 uses
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

vector.ph:                                        ; preds = %.preheader.i, %bb.o
  %.1.726.i = phi i32 [ %i.ac, %.preheader.i ], [ %.1.6.i, %bb.o ] ; 2 uses
  %0 = zext i32 %.1.726.i to i64                  ; 2 uses
  %broadcast.splatinsert.a = insertelement <8 x i32> poison, i32 %.1.726.i, i64 0
  %broadcast.splat.a = shufflevector <8 x i32> %broadcast.splatinsert.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %trip.count.minus.1 = sub nsw i64 7, %0
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %1 = icmp uge <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %0
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> %induction, ptr align 4 %2, <8 x i1> %1), !tbaa !8
  br label %._crit_edge.i

bb.b:                                             ; preds = %.preheader
  store i32 0, ptr %i.a, align 32, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %.1.i = phi i32 [ 1, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %i.d = and i32 %i.b, 2
  %.not.1.i = icmp eq i32 %i.d, 0
  br i1 %.not.1.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add nuw nsw i32 %.1.i, 1
  %i.f = zext nneg i32 %.1.i to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f
  store i32 1, ptr %i.g, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1.i = phi i32 [ %i.e, %bb.d ], [ %.1.i, %bb.c ] ; 3 uses
  %i.h = and i32 %i.b, 4
  %.not.2.i = icmp eq i32 %i.h, 0
  br i1 %.not.2.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add nuw nsw i32 %.1.1.i, 1
  %i.j = zext nneg i32 %.1.1.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.j
  store i32 2, ptr %i.k, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.2.i = phi i32 [ %i.i, %bb.f ], [ %.1.1.i, %bb.e ] ; 3 uses
  %i.l = and i32 %i.b, 8
  %.not.3.i = icmp eq i32 %i.l, 0
  br i1 %.not.3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = add nuw nsw i32 %.1.2.i, 1
  %i.n = zext nneg i32 %.1.2.i to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.n
  store i32 3, ptr %i.o, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.3.i = phi i32 [ %i.m, %bb.h ], [ %.1.2.i, %bb.g ] ; 3 uses
  %i.p = and i32 %i.b, 16
  %.not.4.i = icmp eq i32 %i.p, 0
  br i1 %.not.4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = add nuw nsw i32 %.1.3.i, 1
  %i.r = zext nneg i32 %.1.3.i to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.r
  store i32 4, ptr %i.s, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.4.i = phi i32 [ %i.q, %bb.j ], [ %.1.3.i, %bb.i ] ; 3 uses
  %i.t = and i32 %i.b, 32
  %.not.5.i = icmp eq i32 %i.t, 0
  br i1 %.not.5.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = add nuw nsw i32 %.1.4.i, 1
  %i.v = zext nneg i32 %.1.4.i to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.v
  store i32 5, ptr %i.w, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.5.i = phi i32 [ %i.u, %bb.l ], [ %.1.4.i, %bb.k ] ; 3 uses
  %i.x = and i32 %i.b, 64
  %.not.6.i = icmp eq i32 %i.x, 0
  br i1 %.not.6.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = add nuw nsw i32 %.1.5.i, 1
  %i.z = zext nneg i32 %.1.5.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.z
  store i32 6, ptr %i.aa, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.6.i = phi i32 [ %i.y, %bb.n ], [ %.1.5.i, %bb.m ] ; 4 uses
  %i.ab = and i32 %i.b, 128
  %.not.7.i = icmp eq i32 %i.ab, 0
  br i1 %.not.7.i, label %vector.ph, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o
  %i.ac = add nuw nsw i32 %.1.6.i, 1
  %i.ad = zext nneg i32 %.1.6.i to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ad
  store i32 7, ptr %i.ae, align 4, !tbaa !8
  %i.af = icmp samesign ult i32 %.1.6.i, 7
  br i1 %i.af, label %vector.ph, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %vector.ph, %.preheader.i
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next22.i, 256
  br i1 %exitcond24.not.i, label %_ZN8facebook5velox4simd12_GLOBAL__N_115initByteSetBitsEv.exit, label %.preheader, !llvm.loop !20

_ZN8facebook5velox4simd12_GLOBAL__N_115initByteSetBitsEv.exit: ; preds = %._crit_edge.i, %._crit_edge.i9
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %._crit_edge.i9 ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr @_ZN8facebook5velox4simd6detail18permute4x64IndicesE, i64 %indvars.iv24.i ; 6 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv24.i to i32 ; 4 uses
  %i.ai = and i32 %i.ah, 1
  %.not.i1 = icmp eq i32 %i.ai, 0
  br i1 %.not.i1, label %bb.q, label %bb.p

vector.ph17:                                      ; preds = %.preheader.i8, %bb.u
  %.1.329.i = phi i32 [ %i.ax, %.preheader.i8 ], [ %.1.2.i6, %bb.u ] ; 2 uses
  %3 = zext i32 %.1.329.i to i64                  ; 2 uses
  %broadcast.splatinsert19.a = insertelement <8 x i32> poison, i32 %.1.329.i, i64 0
  %broadcast.splat20.a = shufflevector <8 x i32> %broadcast.splatinsert19.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction21 = add <8 x i32> %broadcast.splat20.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %trip.count.minus.118 = sub nsw i64 7, %3
  %broadcast.splatinsert19 = insertelement <8 x i64> poison, i64 %trip.count.minus.118, i64 0
  %broadcast.splat20 = shufflevector <8 x i64> %broadcast.splatinsert19, <8 x i64> poison, <8 x i32> zeroinitializer
  %4 = icmp uge <8 x i64> %broadcast.splat20, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %3
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> %induction21, ptr align 4 %5, <8 x i1> %4), !tbaa !8
  br label %._crit_edge.i9

bb.p:                                             ; preds = %_ZN8facebook5velox4simd12_GLOBAL__N_115initByteSetBitsEv.exit
  store i32 0, ptr %i.ag, align 32, !tbaa !8
  %i.aj = getelementptr i8, ptr %i.ag, i64 4
  store i32 1, ptr %i.aj, align 4, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN8facebook5velox4simd12_GLOBAL__N_115initByteSetBitsEv.exit
  %.1.i2 = phi i32 [ 2, %bb.p ], [ 0, %_ZN8facebook5velox4simd12_GLOBAL__N_115initByteSetBitsEv.exit ] ; 3 uses
  %i.ak = and i32 %i.ah, 2
  %.not.1.i3 = icmp eq i32 %i.ak, 0
  br i1 %.not.1.i3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = zext nneg i32 %.1.i2 to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.al ; 2 uses
  store i32 2, ptr %i.am, align 8, !tbaa !8
  %i.an = add nuw nsw i32 %.1.i2, 2
  %i.ao = getelementptr i8, ptr %i.am, i64 4
  store i32 3, ptr %i.ao, align 4, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.1.i4 = phi i32 [ %i.an, %bb.r ], [ %.1.i2, %bb.q ] ; 3 uses
  %i.ap = and i32 %i.ah, 4
  %.not.2.i5 = icmp eq i32 %i.ap, 0
  br i1 %.not.2.i5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = zext nneg i32 %.1.1.i4 to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.aq ; 2 uses
  store i32 4, ptr %i.ar, align 4, !tbaa !8
  %i.as = add nuw nsw i32 %.1.1.i4, 2
  %i.at = getelementptr i8, ptr %i.ar, i64 4
  store i32 5, ptr %i.at, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.2.i6 = phi i32 [ %i.as, %bb.t ], [ %.1.1.i4, %bb.s ] ; 4 uses
  %i.au = and i32 %i.ah, 8
  %.not.3.i7 = icmp eq i32 %i.au, 0
  br i1 %.not.3.i7, label %vector.ph17, label %.preheader.i8

.preheader.i8:                                    ; preds = %bb.u
  %i.av = zext nneg i32 %.1.2.i6 to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.av ; 2 uses
  store i32 6, ptr %i.aw, align 4, !tbaa !8
  %i.ax = add nuw nsw i32 %.1.2.i6, 2
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  store i32 7, ptr %i.ay, align 4, !tbaa !8
  %i.az = icmp samesign ult i32 %.1.2.i6, 6
  br i1 %i.az, label %vector.ph17, label %._crit_edge.i9

._crit_edge.i9:                                   ; preds = %vector.ph17, %.preheader.i8
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next25.i, 16
  br i1 %exitcond27.not.i, label %_ZN8facebook5velox4simd12_GLOBAL__N_122initPermute4x64IndicesEv.exit, label %_ZN8facebook5velox4simd12_GLOBAL__N_115initByteSetBitsEv.exit, !llvm.loop !21

_ZN8facebook5velox4simd12_GLOBAL__N_122initPermute4x64IndicesEv.exit: ; preds = %._crit_edge.i9
  store i1 true, ptr @_ZZN8facebook5velox4simd18initializeSimdUtilEvE6inited, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %_ZN8facebook5velox4simd12_GLOBAL__N_122initPermute4x64IndicesEv.exit
  ret i1 true
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.permd(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_SimdUtil.cpp() #7 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store <8 x i32> zeroinitializer, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, align 32
  store <8 x i32> <i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 32), align 32
  store <8 x i32> <i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 64), align 32
  store <8 x i32> <i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 96), align 32
  store <8 x i32> <i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 128), align 32
  store <8 x i32> <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 160), align 32
  store <8 x i32> <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 192), align 32
  store <8 x i32> <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 224), align 32
  store <8 x i32> splat (i32 -1), ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 256), align 32
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 288, ptr nonnull @_ZN8facebook5velox4simd6detail13leadingMask32E) ; 0 uses
  store <4 x i64> zeroinitializer, ptr @_ZN8facebook5velox4simd6detail13leadingMask64E, align 32
  store <4 x i64> <i64 -1, i64 0, i64 0, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask64E, i64 32), align 32
  store <4 x i64> <i64 -1, i64 -1, i64 0, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask64E, i64 64), align 32
  store <4 x i64> <i64 -1, i64 -1, i64 -1, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask64E, i64 96), align 32
  store <4 x i64> splat (i64 -1), ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13leadingMask64E, i64 128), align 32
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 160, ptr nonnull @_ZN8facebook5velox4simd6detail13leadingMask64E) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.i.1, %bb.b ] ; 4 uses
  %i.c = trunc i64 %indvars.iv.i.i to i32
  %i.d = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %i.e = shufflevector <8 x i32> %i.d, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.f = and <8 x i32> %i.e, <i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128>
  %i.g = icmp ne <8 x i32> %i.f, zeroinitializer
  %i.h = sext <8 x i1> %i.g to <8 x i32>
  %i.i = getelementptr inbounds nuw [32 x i8], ptr @_ZN8facebook5velox4simd6detail13fromBitMask32E, i64 %indvars.iv.i.i
  store <8 x i32> %i.h, ptr %i.i, align 32
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.j = trunc i64 %indvars.iv.next.i.i to i32
  %i.k = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %i.l = shufflevector <8 x i32> %i.k, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.m = and <8 x i32> %i.l, <i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128>
  %i.n = icmp ne <8 x i32> %i.m, zeroinitializer
  %i.o = sext <8 x i1> %i.n to <8 x i32>
  %i.p = getelementptr inbounds nuw [32 x i8], ptr @_ZN8facebook5velox4simd6detail13fromBitMask32E, i64 %indvars.iv.next.i.i
  store <8 x i32> %i.o, ptr %i.p, align 32
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 256
  br i1 %exitcond.not.i.i.1, label %__cxx_global_var_init.2.exit, label %bb.b, !llvm.loop !22

__cxx_global_var_init.2.exit:                     ; preds = %bb.b
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 8192, ptr nonnull @_ZN8facebook5velox4simd6detail13fromBitMask32E) ; 0 uses
  store <4 x i64> zeroinitializer, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, align 32
  store <4 x i64> <i64 -1, i64 0, i64 0, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 32), align 32
  store <4 x i64> <i64 0, i64 -1, i64 0, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 64), align 32
  store <4 x i64> <i64 -1, i64 -1, i64 0, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 96), align 32
  store <4 x i64> <i64 0, i64 0, i64 -1, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 128), align 32
  store <4 x i64> <i64 -1, i64 0, i64 -1, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 160), align 32
  store <4 x i64> <i64 0, i64 -1, i64 -1, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 192), align 32
  store <4 x i64> <i64 -1, i64 -1, i64 -1, i64 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 224), align 32
  store <4 x i64> <i64 0, i64 0, i64 0, i64 -1>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 256), align 32
  store <4 x i64> <i64 -1, i64 0, i64 0, i64 -1>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 288), align 32
  store <4 x i64> <i64 0, i64 -1, i64 0, i64 -1>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 320), align 32
  store <4 x i64> <i64 -1, i64 -1, i64 0, i64 -1>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 352), align 32
  store <4 x i64> <i64 0, i64 0, i64 -1, i64 -1>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 384), align 32
  store <4 x i64> <i64 -1, i64 0, i64 -1, i64 -1>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 416), align 32
  store <4 x i64> <i64 0, i64 -1, i64 -1, i64 -1>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 448), align 32
  store <4 x i64> splat (i64 -1), ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox4simd6detail13fromBitMask64E, i64 480), align 32
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 512, ptr nonnull @_ZN8facebook5velox4simd6detail13fromBitMask64E) ; 0 uses
  %i.s = tail call noundef zeroext i1 @_ZN8facebook5velox4simd18initializeSimdUtilEv() ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8i32.p0(<8 x i32>, ptr captures(none), <8 x i1>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9, !16, !17}
!11 = distinct !{!11, !9, !17, !16}
!12 = distinct !{!12, !9}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"long", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!4, !4, i64 0}
!19 = !{!"branch_weights", i32 1, i32 1048575}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
end_hunk_0
