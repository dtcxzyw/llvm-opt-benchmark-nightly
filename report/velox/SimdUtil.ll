inline.NumInlined: 131
inline.NumDeleted: 79
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
define void @_ZN8facebook5velox4simd10gatherBitsEPKmN5folly5RangeIPKiEEPm(ptr noundef %0, ptr %1, ptr %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.xsimd::batch", align 32     ; 2 uses
  %5 = alloca %"struct.xsimd::fma3", align 1      ; 3 uses
  %6 = alloca %"class.xsimd::batch", align 32     ; 2 uses
  %7 = alloca %"struct.xsimd::fma3", align 1      ; 3 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 8 uses
  %i.e = icmp ult i64 %i.d, 5
  br i1 %i.e, label %.preheader, label %.preheader36, !prof !7

.preheader36:                                     ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 8
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.preheader:                                       ; preds = %bb.a
  %.not43 = icmp eq ptr %2, %1
  br i1 %.not43, label %._crit_edge41, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check.not = icmp eq i64 %i.c, 16
  br i1 %min.iters.check.not, label %vec.epilog.vector.body, label %.lr.ph40

vec.epilog.vector.body:                           ; preds = %iter.check, %vec.epilog.vector.body
  %index61 = phi i64 [ %index.next64, %vec.epilog.vector.body ], [ 0, %iter.check ] ; 3 uses
  %vec.phi62 = phi <4 x i8> [ %i.ai, %vec.epilog.vector.body ], [ zeroinitializer, %iter.check ]
  %vec.ind63 = phi <4 x i32> [ %vec.ind.next65, %vec.epilog.vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %iter.check ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index61
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index61
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load <2 x i32>, ptr %i.g, align 4, !tbaa !3
  %i.k = sext <2 x i32> %i.j to <2 x i64>         ; 3 uses
  %8 = load <2 x i32>, ptr %i.i, align 4, !tbaa !3
  %9 = sext <2 x i32> %8 to <2 x i64>             ; 3 uses
  %10 = shufflevector <2 x i64> %i.k, <2 x i64> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = extractelement <2 x i64> %i.k, i64 0
  %12 = lshr i64 %11, 6
  %i.l = extractelement <2 x i64> %i.k, i64 1
  %i.m = lshr i64 %i.l, 6
  %i.n = extractelement <2 x i64> %9, i64 0
  %i.o = lshr i64 %i.n, 6
  %13 = extractelement <2 x i64> %9, i64 1
  %i.p = lshr i64 %13, 6
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %12
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p
  %i.u = load i64, ptr %i.q, align 8, !tbaa !8
  %i.v = load i64, ptr %i.r, align 8, !tbaa !8
  %i.w = load i64, ptr %i.s, align 8, !tbaa !8
  %i.x = load i64, ptr %i.t, align 8, !tbaa !8
  %i.y = insertelement <4 x i64> poison, i64 %i.u, i64 0
  %i.z = insertelement <4 x i64> %i.y, i64 %i.v, i64 1
  %i.aa = insertelement <4 x i64> %i.z, i64 %i.w, i64 2
  %i.ab = insertelement <4 x i64> %i.aa, i64 %i.x, i64 3
  %i.ac = and <4 x i64> %10, splat (i64 63)
  %i.ad = lshr <4 x i64> %i.ab, %i.ac
  %i.ae = trunc <4 x i64> %i.ad to <4 x i32>
  %i.af = and <4 x i32> %i.ae, splat (i32 1)
  %i.ag = shl nuw <4 x i32> %i.af, %vec.ind63
  %i.ah = trunc <4 x i32> %i.ag to <4 x i8>
  %i.ai = or <4 x i8> %vec.phi62, %i.ah           ; 2 uses
  %index.next64 = add nuw i64 %index61, 4         ; 2 uses
  %vec.ind.next65 = add <4 x i32> %vec.ind63, splat (i32 4)
  %i.aj = icmp eq i64 %index.next64, %i.d
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ak = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.ai)
  br label %._crit_edge41

._crit_edge41:                                    ; preds = %.lr.ph40, %vec.epilog.middle.block, %.preheader
  %.0.lcssa = phi i8 [ 0, %.preheader ], [ %i.ak, %vec.epilog.middle.block ], [ %i.ay, %.lr.ph40 ]
  store i8 %.0.lcssa, ptr %3, align 1, !tbaa !14
  br label %bb.c

.lr.ph40:                                         ; preds = %iter.check, %.lr.ph40
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %.lr.ph40 ], [ 0, %iter.check ] ; 3 uses
  %.039 = phi i8 [ %i.ay, %.lr.ph40 ], [ 0, %iter.check ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !8
  %i.ar = and i64 %i.an, 63
  %i.as = lshr i64 %i.aq, %i.ar
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.at, 1
  %i.av = trunc nuw nsw i64 %indvars.iv50 to i32
  %i.aw = shl nuw i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = or i8 %.039, %i.ax                      ; 2 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next51, %i.d
  br i1 %exitcond.not, label %._crit_edge41, label %.lr.ph40, !llvm.loop !15

.lr.ph:                                           ; preds = %.preheader36, %.lr.ph
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph ], [ 0, %.preheader36 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 8, %.preheader36 ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv45
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.ba = load <4 x i64>, ptr %i.az, align 1, !tbaa !14, !noalias !25
  store <4 x i64> %i.ba, ptr %4, align 32, !tbaa !14, !alias.scope !25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.bb = call noundef zeroext i8 @_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_(ptr noundef %0, ptr noundef nonnull byval(%"class.xsimd::batch") align 32 %4, i32 noundef 8, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.bc = lshr exact i64 %indvars.iv45, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 %i.bc
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.be = icmp ugt i64 %i.d, %indvars.iv.next
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 8
  br i1 %i.be, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !26

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bf = trunc i64 %i.d to i32
  %i.bg = add i32 %i.bf, -9
  %i.bh = and i32 %i.bg, -8
  %i.bi = add i32 %i.bh, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader36
  %.031.lcssa = phi i32 [ 0, %.preheader36 ], [ %i.bi, %._crit_edge.loopexit ] ; 3 uses
  %i.bj = zext nneg i32 %.031.lcssa to i64        ; 2 uses
  %.not = icmp eq i64 %i.d, %i.bj
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.bl = load <4 x i64>, ptr %i.bk, align 1, !tbaa !14, !noalias !36
  store <4 x i64> %i.bl, ptr %6, align 32, !tbaa !14, !alias.scope !36
  %i.bm = trunc nuw i64 %i.d to i32
  %i.bn = sub i32 %i.bm, %.031.lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.bo = call noundef zeroext i8 @_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_(ptr noundef %0, ptr noundef nonnull byval(%"class.xsimd::batch") align 32 %6, i32 noundef %i.bn, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.bp = lshr exact i32 %.031.lcssa, 3
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 %i.bq
  store i8 %i.bo, ptr %i.br, align 1, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %._crit_edge41
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i8 @_ZN8facebook5velox4simd11gather8BitsIN5xsimd4fma3INS3_4avx2EEEEEhPKvNS3_5batchIiT_EEiRKSA_(ptr noundef %0, ptr noundef byval(%"class.xsimd::batch") align 32 %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload4 = load <8 x i32>, ptr %1, align 32 ; 2 uses
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_.exit, !prof !37

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
  %.sroa.020.0.copyload28.i = load <8 x i32>, ptr @_ZZN8facebook5velox4simd6detail15gather8BitsImplIN5xsimd4fma3INS4_4avx2EEEEEhPKvNS4_5batchIiT_EEiRKS6_E9kByteBits, align 32
  %i.e = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %.sroa.020.0.copyload28.i, <8 x i32> %.sroa.0.0.copyload4)
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr @_ZN8facebook5velox4simd6detail13leadingMask32E, i64 %i.f
  %.sroa.0.0.copyload.i.i30.i = load <8 x i32>, ptr %i.g, align 32
  %i.h = ashr <8 x i32> %.sroa.0.0.copyload4, splat (i32 3)
  %i.i = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %0, <8 x i32> %i.h, <8 x i32> %.sroa.0.0.copyload.i.i30.i, i8 1), !noalias !38
  %i.j = and <8 x i32> %i.i, %i.e
  %i.k = icmp ne <8 x i32> %i.j, zeroinitializer
  %i.l = bitcast <8 x i1> %i.k to i8
  ret i8 %i.l
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
  %i.a = getelementptr inbounds nuw [32 x i8], ptr @_ZN8facebook5velox4simd6detail11byteSetBitsE, i64 %indvars.iv21.i ; 10 uses
  %i.b = trunc nuw nsw i64 %indvars.iv21.i to i32 ; 8 uses
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

.lr.ph.preheader.i:                               ; preds = %.preheader.i, %bb.o
  %.1.726.i = phi i32 [ %i.ag, %.preheader.i ], [ %.1.6.i, %bb.o ] ; 2 uses
  %i.d = zext i32 %.1.726.i to i64                ; 4 uses
  %i.e = sub nsw i64 8, %i.d                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.e, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.e, -8                       ; 2 uses
  %i.f = add nsw i64 %n.vec, %i.d
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.1.726.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  store <8 x i32> %induction, ptr %i.g, align 4, !tbaa !3
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %vector.ph
  %indvars.iv.i.ph = phi i64 [ %i.d, %.lr.ph.preheader.i ], [ %i.f, %vector.ph ]
  br label %.lr.ph.i

bb.b:                                             ; preds = %.preheader
  store i32 0, ptr %i.a, align 32, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %.1.i = phi i32 [ 1, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %i.h = and i32 %i.b, 2
  %.not.1.i = icmp eq i32 %i.h, 0
  br i1 %.not.1.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw nsw i32 %.1.i, 1
  %i.j = zext nneg i32 %.1.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.j
  store i32 1, ptr %i.k, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1.i = phi i32 [ %i.i, %bb.d ], [ %.1.i, %bb.c ] ; 3 uses
  %i.l = and i32 %i.b, 4
  %.not.2.i = icmp eq i32 %i.l, 0
  br i1 %.not.2.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i32 %.1.1.i, 1
  %i.n = zext nneg i32 %.1.1.i to i64
end_hunk_0
