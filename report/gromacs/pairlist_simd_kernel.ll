Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pairlist_simd_kernel?download=true
inline.NumInlined: 240
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.46" = type { [2 x i32] }

@.str = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Function called that is not supported in this build\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmx26setICellCoordinatesSimd4xMEiRKNS_11BasicVectorIfEEiPKfPNS_20NbnxmPairlistCpuWorkEENK3$_0clEv" = private unnamed_addr constant [129 x i8] c"auto gmx::setICellCoordinatesSimd4xM(int, const RVec &, int, const real *, NbnxmPairlistCpuWork *)::(lambda)::operator()() const\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/nbnxm/pairlist_simd_kernel.cpp\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmx22makeClusterListSimd4xMERKNS_4GridEPNS_16NbnxnPairlistCpuEiiibPKfffPiENK3$_0clEv" = private unnamed_addr constant [172 x i8] c"auto gmx::makeClusterListSimd4xM(const Grid &, NbnxnPairlistCpu *, int, int, int, bool, const real *__restrict, real, float, int *__restrict)::(lambda)::operator()() const\00", align 1
@_ZZN3gmxL8getImaskILi4ELi8EEEjbiiE15sc_diagonalMask = internal unnamed_addr constant %"struct.std::array.46" { [2 x i32] [i32 -252117762, i32 8437984] }, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN3gmx26setICellCoordinatesSimd4xMEiRKNS_11BasicVectorIfEEiPKfPNS_20NbnxmPairlistCpuWorkE(i32 noundef %0, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx26setICellCoordinatesSimd4xMEiRKNS_11BasicVectorIfEEiPKfPNS_20NbnxmPairlistCpuWorkEENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 261) #10
  unreachable
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx27setICellCoordinatesSimd2xMMEiRKNS_11BasicVectorIfEEiPKfPNS_20NbnxmPairlistCpuWorkE(i32 noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %4, i64 112
  %.val = load ptr, ptr %i.a, align 8, !tbaa !12  ; 6 uses
  %i.b = ashr i32 %0, 1
  %i.c = mul nsw i32 %i.b, 24
  %i.d = shl i32 %0, 2
  %i.e = and i32 %i.d, 4
  %i.f = or disjoint i32 %i.c, %i.e
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %3, i64 %i.g ; 12 uses
  %.val.i = load float, ptr %i.h, align 1, !tbaa !13
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val16.i = load float, ptr %i.i, align 1, !tbaa !13
  %i.j = insertelement <4 x float> poison, float %.val.i, i64 0
  %i.k = insertelement <4 x float> poison, float %.val16.i, i64 0
  %i.l = shufflevector <4 x float> %i.j, <4 x float> %i.k, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.m = load float, ptr %1, align 4, !tbaa !15
  %i.n = insertelement <16 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <16 x float> %i.n, <16 x float> poison, <16 x i32> zeroinitializer
  %i.p = fadd <16 x float> %i.l, %i.o
  store <16 x float> %i.p, ptr %.val, align 64, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %gep.1.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.val.1.i = load float, ptr %gep.1.i, align 1, !tbaa !13
  %i.r = getelementptr i8, ptr %i.h, i64 36
  %.val16.1.i = load float, ptr %i.r, align 1, !tbaa !13
  %i.s = insertelement <4 x float> poison, float %.val.1.i, i64 0
  %i.t = insertelement <4 x float> poison, float %.val16.1.i, i64 0
  %i.u = shufflevector <4 x float> %i.s, <4 x float> %i.t, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !15
  %i.x = insertelement <16 x float> poison, float %i.w, i64 0
  %i.y = shufflevector <16 x float> %i.x, <16 x float> poison, <16 x i32> zeroinitializer
  %i.z = fadd <16 x float> %i.u, %i.y
  store <16 x float> %i.z, ptr %i.q, align 64, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %gep.2.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.val.2.i = load float, ptr %gep.2.i, align 1, !tbaa !13
  %i.ab = getelementptr i8, ptr %i.h, i64 68
  %.val16.2.i = load float, ptr %i.ab, align 1, !tbaa !13
  %i.ac = insertelement <4 x float> poison, float %.val.2.i, i64 0
  %i.ad = insertelement <4 x float> poison, float %.val16.2.i, i64 0
  %i.ae = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !15
  %i.ah = insertelement <16 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <16 x float> %i.ah, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aj = fadd <16 x float> %i.ae, %i.ai
  store <16 x float> %i.aj, ptr %i.aa, align 64, !tbaa !13
  %invariant.gep.1.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %.val.15.i = load float, ptr %invariant.gep.1.i, align 1, !tbaa !13
  %i.al = getelementptr i8, ptr %i.h, i64 12
  %.val16.16.i = load float, ptr %i.al, align 1, !tbaa !13
  %i.am = insertelement <4 x float> poison, float %.val.15.i, i64 0
  %i.an = insertelement <4 x float> poison, float %.val16.16.i, i64 0
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> %i.an, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ap = load float, ptr %1, align 4, !tbaa !15
  %i.aq = insertelement <16 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <16 x float> %i.aq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.as = fadd <16 x float> %i.ao, %i.ar
  store <16 x float> %i.as, ptr %i.ak, align 64, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 256
  %gep.1.1.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.val.1.1.i = load float, ptr %gep.1.1.i, align 1, !tbaa !13
  %i.au = getelementptr i8, ptr %i.h, i64 44
  %.val16.1.1.i = load float, ptr %i.au, align 1, !tbaa !13
  %i.av = insertelement <4 x float> poison, float %.val.1.1.i, i64 0
  %i.aw = insertelement <4 x float> poison, float %.val16.1.1.i, i64 0
  %i.ax = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ay = load float, ptr %i.v, align 4, !tbaa !15
  %i.az = insertelement <16 x float> poison, float %i.ay, i64 0
  %i.ba = shufflevector <16 x float> %i.az, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bb = fadd <16 x float> %i.ax, %i.ba
  store <16 x float> %i.bb, ptr %i.at, align 64, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 320
  %gep.2.1.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %.val.2.1.i = load float, ptr %gep.2.1.i, align 1, !tbaa !13
  %i.bd = getelementptr i8, ptr %i.h, i64 76
  %.val16.2.1.i = load float, ptr %i.bd, align 1, !tbaa !13
  %i.be = insertelement <4 x float> poison, float %.val.2.1.i, i64 0
  %i.bf = insertelement <4 x float> poison, float %.val16.2.1.i, i64 0
  %i.bg = shufflevector <4 x float> %i.be, <4 x float> %i.bf, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.bh = load float, ptr %i.af, align 4, !tbaa !15
  %i.bi = insertelement <16 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <16 x float> %i.bi, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bk = fadd <16 x float> %i.bg, %i.bj
  store <16 x float> %i.bk, ptr %i.bc, align 64, !tbaa !13
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN3gmx22makeClusterListSimd4xMERKNS_4GridEPNS_16NbnxnPairlistCpuEiiibPKfffPi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(372) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr noalias nofree noundef readnone captures(none) %6, float noundef %7, float noundef %8, ptr noalias nofree noundef readnone captures(none) %9) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx22makeClusterListSimd4xMERKNS_4GridEPNS_16NbnxnPairlistCpuEiiibPKfffPiENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 519) #10
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx23makeClusterListSimd2xMMERKNS_4GridEPNS_16NbnxnPairlistCpuEiiibPKfffPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr noalias nofree noundef readonly captures(none) %6, float noundef %7, float noundef %8, ptr noalias nofree noundef captures(none) %9) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28, !noalias !29 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12, !noalias !29 ; 7 uses
  %i.e = ashr i32 %3, 1                           ; 2 uses
  %i.f = ashr i32 %4, 1                           ; 5 uses
  %i.g = insertelement <16 x float> poison, float %7, i64 0
  %i.h = shufflevector <16 x float> %i.g, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.i = icmp sgt i32 %i.e, %i.f
  br i1 %i.i, label %_ZN3gmxL19makeClusterListSimdILNS_25ClusterDistanceKernelTypeE2EEEvRKNS_4GridEPNS_16NbnxnPairlistCpuEiiibPKfffPi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32, !noalias !29 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34, !noalias !29 ; 2 uses
  %.val196.i = load <4 x float>, ptr %i.k, align 16, !tbaa !13, !noalias !29 ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 16
  %.val197.i = load <4 x float>, ptr %i.n, align 16, !tbaa !13, !noalias !29 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !noalias !29
  %i.q = ashr i32 %i.p, 1                         ; 2 uses
  %.promoted.i = load i32, ptr %9, align 4, !tbaa !35, !alias.scope !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 256 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 320 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.w = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.bp, %bb.d ] ; 2 uses
  %.0172235.i = phi i32 [ %i.e, %.lr.ph.i ], [ %spec.select.i, %bb.d ] ; 4 uses
  %i.x = sext i32 %.0172235.i to i64
  %i.y = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.x ; 2 uses
  %.val198.i = load <4 x float>, ptr %i.y, align 16, !tbaa !13, !noalias !29
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %.val199.i = load <4 x float>, ptr %i.z, align 16, !tbaa !13, !noalias !29
  %i.aa = fsub <4 x float> %.val196.i, %.val199.i
  %i.ab = fsub <4 x float> %.val198.i, %.val197.i
  %i.ac = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aa, <4 x float> %i.ab)
  %i.ad = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ac, <4 x float> zeroinitializer) ; 2 uses
  %i.ae = fmul <4 x float> %i.ad, %i.ad           ; 3 uses
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ag = fadd <4 x float> %i.ae, %i.af
  %i.ah = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.ai = fadd <4 x float> %i.ah, %i.ag
  %.0.vec.extract.i.i.i = extractelement <4 x float> %i.ai, i64 0 ; 2 uses
  %i.aj = add nsw i32 %i.w, 2                     ; 3 uses
  %i.ak = fcmp olt float %.0.vec.extract.i.i.i, %8
  br i1 %i.ak, label %.thread287.i, label %bb.c

.thread287.i:                                     ; preds = %bb.b
  store i32 %i.aj, ptr %9, align 4, !tbaa !35, !alias.scope !26
  br label %.preheader230.i

bb.c:                                             ; preds = %bb.b
  %i.al = fcmp olt float %.0.vec.extract.i.i.i, %7
  br i1 %i.al, label %.critedge.critedge.i, label %bb.d

.critedge.critedge.i:                             ; preds = %bb.c
  %i.am = add nsw i32 %.0172235.i, %i.q
  %i.an = mul nsw i32 %i.am, 24
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ao ; 3 uses
  %.val205.i52 = load <8 x float>, ptr %i.ap, align 32, !tbaa !13, !alias.scope !25
  %10 = shufflevector <8 x float> %.val205.i52, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.val204.i53 = load <8 x float>, ptr %i.aq, align 32, !tbaa !13, !alias.scope !25
  %11 = shufflevector <8 x float> %.val204.i53, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %.val203.i54 = load <8 x float>, ptr %i.ar, align 32, !tbaa !13, !alias.scope !25
  %12 = shufflevector <8 x float> %.val203.i54, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.val211.i = load <16 x float>, ptr %i.d, align 64, !tbaa !13, !noalias !29
  %i.as = fsub <16 x float> %.val211.i, %10       ; 2 uses
  %.val210.i = load <16 x float>, ptr %i.r, align 64, !tbaa !13, !noalias !29
  %i.at = fsub <16 x float> %.val210.i, %11       ; 2 uses
  %.val209.i = load <16 x float>, ptr %i.s, align 64, !tbaa !13, !noalias !29
  %i.au = fsub <16 x float> %.val209.i, %12       ; 2 uses
  %.val211.1.i = load <16 x float>, ptr %i.t, align 64, !tbaa !13, !noalias !29
  %i.av = fsub <16 x float> %.val211.1.i, %10     ; 2 uses
  %.val210.1.i = load <16 x float>, ptr %i.u, align 64, !tbaa !13, !noalias !29
  %i.aw = fsub <16 x float> %.val210.1.i, %11     ; 2 uses
  %.val209.1.i = load <16 x float>, ptr %i.v, align 64, !tbaa !13, !noalias !29
  %i.ax = fsub <16 x float> %.val209.1.i, %12     ; 2 uses
  %i.ay = fmul <16 x float> %i.as, %i.as
  %i.az = fmul <16 x float> %i.at, %i.at
  %i.ba = fadd <16 x float> %i.ay, %i.az
  %i.bb = fmul <16 x float> %i.au, %i.au
  %i.bc = fadd <16 x float> %i.bb, %i.ba
  %i.bd = fmul <16 x float> %i.av, %i.av
  %i.be = fmul <16 x float> %i.aw, %i.aw
  %i.bf = fadd <16 x float> %i.bd, %i.be
  %i.bg = fmul <16 x float> %i.ax, %i.ax
  %i.bh = fadd <16 x float> %i.bg, %i.bf
  %i.bi = fcmp olt <16 x float> %i.bc, %i.h
  %i.bj = fcmp olt <16 x float> %i.bh, %i.h
  %i.bk = or <16 x i1> %i.bi, %i.bj
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = icmp ne i16 %i.bl, 0
  %i.bn = zext i1 %i.bm to i8
  %i.bo = add nsw i32 %i.w, 34
  br label %bb.d

bb.d:                                             ; preds = %.critedge.critedge.i, %bb.c
  %i.bp = phi i32 [ %i.aj, %bb.c ], [ %i.bo, %.critedge.critedge.i ] ; 3 uses
  %.1177.i = phi i8 [ 0, %bb.c ], [ %i.bn, %.critedge.critedge.i ] ; 2 uses
  %i.bq = xor i8 %.1177.i, 1
  %i.br = zext nneg i8 %i.bq to i32
  %spec.select.i = add nsw i32 %.0172235.i, %i.br ; 3 uses
  %i.bs = trunc nuw i8 %.1177.i to i1             ; 2 uses
  %i.bt = icmp sgt i32 %spec.select.i, %i.f
  %.not187.i = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %.not187.i, label %bb.e, label %bb.b, !llvm.loop !19

bb.e:                                             ; preds = %bb.d
  store i32 %i.bp, ptr %9, align 4, !tbaa !35, !alias.scope !26
  br i1 %i.bs, label %.preheader230.i, label %_ZN3gmxL19makeClusterListSimdILNS_25ClusterDistanceKernelTypeE2EEEvRKNS_4GridEPNS_16NbnxnPairlistCpuEiiibPKfffPi.exit

.preheader230.i:                                  ; preds = %bb.e, %.thread287.i
  %.promoted245.i = phi i32 [ %i.aj, %.thread287.i ], [ %i.bp, %bb.e ]
  %spec.select283289.i = phi i32 [ %.0172235.i, %.thread287.i ], [ %spec.select.i, %bb.e ] ; 4 uses
  %.not248.i = icmp sgt i32 %i.f, %spec.select283289.i
  br i1 %.not248.i, label %.lr.ph242.i, label %bb.h

.lr.ph242.i:                                      ; preds = %.preheader230.i, %bb.g
  %i.bu = phi i32 [ %i.dn, %bb.g ], [ %.promoted245.i, %.preheader230.i ] ; 2 uses
  %.0173241.i = phi i32 [ %spec.select192.i, %bb.g ], [ %i.f, %.preheader230.i ] ; 4 uses
  %i.bv = sext i32 %.0173241.i to i64
  %i.bw = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.bv ; 2 uses
  %.val194.i = load <4 x float>, ptr %i.bw, align 16, !tbaa !13, !noalias !29
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  %.val195.i = load <4 x float>, ptr %i.bx, align 16, !tbaa !13, !noalias !29
  %i.by = fsub <4 x float> %.val196.i, %.val195.i
  %i.bz = fsub <4 x float> %.val194.i, %.val197.i
  %i.ca = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.by, <4 x float> %i.bz)
  %i.cb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ca, <4 x float> zeroinitializer) ; 2 uses
  %i.cc = fmul <4 x float> %i.cb, %i.cb           ; 3 uses
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ce = fadd <4 x float> %i.cc, %i.cd
  %i.cf = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.cg = fadd <4 x float> %i.cf, %i.ce
  %.0.vec.extract.i.i214.i = extractelement <4 x float> %i.cg, i64 0 ; 2 uses
  %i.ch = add nsw i32 %i.bu, 2                    ; 2 uses
  %i.ci = fcmp olt float %.0.vec.extract.i.i214.i, %8
  br i1 %i.ci, label %._crit_edge243.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph242.i
  %i.cj = fcmp olt float %.0.vec.extract.i.i214.i, %7
  br i1 %i.cj, label %.critedge191.critedge.i, label %bb.g

.critedge191.critedge.i:                          ; preds = %bb.f
  %i.ck = add nsw i32 %.0173241.i, %i.q
  %i.cl = mul nsw i32 %i.ck, 24
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %6, i64 %i.cm ; 3 uses
  %.val202.i55 = load <8 x float>, ptr %i.cn, align 32, !tbaa !13, !alias.scope !25
  %13 = shufflevector <8 x float> %.val202.i55, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %.val201.i56 = load <8 x float>, ptr %i.co, align 32, !tbaa !13, !alias.scope !25
  %14 = shufflevector <8 x float> %.val201.i56, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  %.val200.i57 = load <8 x float>, ptr %i.cp, align 32, !tbaa !13, !alias.scope !25
  %15 = shufflevector <8 x float> %.val200.i57, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.val208.i = load <16 x float>, ptr %i.d, align 64, !tbaa !13, !noalias !29
  %i.cq = fsub <16 x float> %.val208.i, %13       ; 2 uses
  %.val207.i = load <16 x float>, ptr %i.r, align 64, !tbaa !13, !noalias !29
  %i.cr = fsub <16 x float> %.val207.i, %14       ; 2 uses
  %.val206.i = load <16 x float>, ptr %i.s, align 64, !tbaa !13, !noalias !29
  %i.cs = fsub <16 x float> %.val206.i, %15       ; 2 uses
  %.val208.1.i = load <16 x float>, ptr %i.t, align 64, !tbaa !13, !noalias !29
  %i.ct = fsub <16 x float> %.val208.1.i, %13     ; 2 uses
  %.val207.1.i = load <16 x float>, ptr %i.u, align 64, !tbaa !13, !noalias !29
  %i.cu = fsub <16 x float> %.val207.1.i, %14     ; 2 uses
  %.val206.1.i = load <16 x float>, ptr %i.v, align 64, !tbaa !13, !noalias !29
  %i.cv = fsub <16 x float> %.val206.1.i, %15     ; 2 uses
  %i.cw = fmul <16 x float> %i.cq, %i.cq
  %i.cx = fmul <16 x float> %i.cr, %i.cr
  %i.cy = fadd <16 x float> %i.cw, %i.cx
  %i.cz = fmul <16 x float> %i.cs, %i.cs
  %i.da = fadd <16 x float> %i.cz, %i.cy
  %i.db = fmul <16 x float> %i.ct, %i.ct
  %i.dc = fmul <16 x float> %i.cu, %i.cu
  %i.dd = fadd <16 x float> %i.db, %i.dc
  %i.de = fmul <16 x float> %i.cv, %i.cv
  %i.df = fadd <16 x float> %i.de, %i.dd
  %i.dg = fcmp olt <16 x float> %i.da, %i.h
  %i.dh = fcmp olt <16 x float> %i.df, %i.h
  %i.di = or <16 x i1> %i.dg, %i.dh
  %i.dj = bitcast <16 x i1> %i.di to i16
  %i.dk = icmp ne i16 %i.dj, 0
  %i.dl = zext i1 %i.dk to i8
  %i.dm = add nsw i32 %i.bu, 34
  br label %bb.g

bb.g:                                             ; preds = %.critedge191.critedge.i, %bb.f
  %i.dn = phi i32 [ %i.ch, %bb.f ], [ %i.dm, %.critedge191.critedge.i ] ; 2 uses
  %.3.i = phi i8 [ 0, %bb.f ], [ %i.dl, %.critedge191.critedge.i ] ; 2 uses
  %i.do = xor i8 %.3.i, 1
  %i.dp = zext nneg i8 %i.do to i32
  %spec.select192.i = sub nsw i32 %.0173241.i, %i.dp ; 3 uses
  %i.dq = trunc nuw i8 %.3.i to i1
  %i.dr = icmp sle i32 %spec.select192.i, %spec.select283289.i
  %.not188.i = select i1 %i.dq, i1 true, i1 %i.dr
  br i1 %.not188.i, label %._crit_edge243.i, label %.lr.ph242.i, !llvm.loop !20

._crit_edge243.i:                                 ; preds = %bb.g, %.lr.ph242.i
  %spec.select192294.i = phi i32 [ %spec.select192.i, %bb.g ], [ %.0173241.i, %.lr.ph242.i ]
  %i.ds = phi i32 [ %i.dn, %bb.g ], [ %i.ch, %.lr.ph242.i ]
  store i32 %i.ds, ptr %9, align 4, !tbaa !35, !alias.scope !26
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge243.i, %.preheader230.i
  %.0173.lcssa.i = phi i32 [ %spec.select192294.i, %._crit_edge243.i ], [ %i.f, %.preheader230.i ] ; 2 uses
  %.not.i = icmp sgt i32 %spec.select283289.i, %.0173.lcssa.i
  br i1 %.not.i, label %_ZN3gmxL19makeClusterListSimdILNS_25ClusterDistanceKernelTypeE2EEEvRKNS_4GridEPNS_16NbnxnPairlistCpuEiiibPKfffPi.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  br label %bb.j

bb.i:                                             ; preds = %_ZN3gmx12JClusterList9push_backERKNS_10nbnxn_cj_tE.exit.i
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !39, !noalias !29
  %i.dx = ptrtoint ptr %i.gl to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = lshr exact i64 %i.dz, 3
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !41, !noalias !29
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -4
  store i32 %i.eb, ptr %i.ee, align 4, !tbaa !43, !noalias !29
  br label %_ZN3gmxL19makeClusterListSimdILNS_25ClusterDistanceKernelTypeE2EEEvRKNS_4GridEPNS_16NbnxnPairlistCpuEiiibPKfffPi.exit

bb.j:                                             ; preds = %_ZN3gmx12JClusterList9push_backERKNS_10nbnxn_cj_tE.exit.i, %.preheader.i
  %.0247.i = phi i32 [ %spec.select283289.i, %.preheader.i ], [ %i.gm, %_ZN3gmx12JClusterList9push_backERKNS_10nbnxn_cj_tE.exit.i ] ; 4 uses
  %i.ef = load i32, ptr %i.o, align 4, !tbaa !79, !noalias !29
  %i.eg = ashr i32 %i.ef, 1
  %i.eh = add nsw i32 %i.eg, %.0247.i             ; 2 uses
  %i.ei = shl nsw i32 %.0247.i, 1
  %i.ej = sub nsw i32 %2, %i.ei                   ; 2 uses
  %i.ek = icmp ult i32 %i.ej, 2
  %or.cond3.i.i = select i1 %5, i1 %i.ek, i1 false
  br i1 %or.cond3.i.i, label %bb.k, label %_ZN3gmxL8getImaskILi4ELi8EEEjbii.exit.i

bb.k:                                             ; preds = %bb.j
  %i.el = zext nneg i32 %i.ej to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr @_ZZN3gmxL8getImaskILi4ELi8EEEjbiiE15sc_diagonalMask, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !35, !noalias !29
  %i.eo = zext i32 %i.en to i64
  %i.ep = shl nuw i64 %i.eo, 32
  br label %_ZN3gmxL8getImaskILi4ELi8EEEjbii.exit.i

_ZN3gmxL8getImaskILi4ELi8EEEjbii.exit.i:          ; preds = %bb.k, %bb.j
  %.sroa.5.0.insert.ext220.i = phi i64 [ %i.ep, %bb.k ], [ -4294967296, %bb.j ] ; 2 uses
  %i.eq = load ptr, ptr %i.du, align 8, !tbaa !80, !noalias !29 ; 6 uses
  %i.er = load ptr, ptr %i.dv, align 8, !tbaa !81, !noalias !29
  %.not.i.i.i = icmp eq ptr %i.eq, %i.er
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN3gmxL8getImaskILi4ELi8EEEjbii.exit.i
  %.sroa.0.0.insert.ext.i = zext i32 %i.eh to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.ext220.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.eq, align 4, !tbaa !35, !noalias !29
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  store ptr %i.es, ptr %i.du, align 8, !tbaa !80, !noalias !29
  br label %_ZN3gmx12JClusterList9push_backERKNS_10nbnxn_cj_tE.exit.i

bb.m:                                             ; preds = %_ZN3gmxL8getImaskILi4ELi8EEEjbii.exit.i
  %i.et = load ptr, ptr %i.dt, align 8, !tbaa !39, !noalias !29 ; 9 uses
  %i.eu = ptrtoint ptr %i.eq to i64               ; 2 uses
  %i.ev = ptrtoint ptr %i.et to i64               ; 4 uses
  %i.ew = sub i64 %i.eu, %i.ev                    ; 3 uses
  %i.ex = icmp eq i64 %i.ew, 9223372036854775800
  br i1 %i.ex, label %bb.n, label %_ZNKSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #10, !noalias !29
  unreachable

_ZNKSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.m
  %i.ey = ashr exact i64 %i.ew, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ey, i64 1)
  %i.ez = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ey ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ey
  %i.fb = tail call i64 @llvm.umin.i64(i64 %i.ez, i64 1152921504606846975)
  %i.fc = select i1 %i.fa, i64 1152921504606846975, i64 %i.fb ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.fc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.fd = shl nuw nsw i64 %i.fc, 3
  %i.fe = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #11, !noalias !29 ; 10 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ew
  %.sroa.0.0.insert.ext216.i = zext i32 %i.eh to i64
  %.sroa.0.0.insert.insert218.i = or disjoint i64 %.sroa.5.0.insert.ext220.i, %.sroa.0.0.insert.ext216.i
  store i64 %.sroa.0.0.insert.insert218.i, ptr %i.ff, align 4, !tbaa !35, !noalias !29
  %.not13.i.i.i.i.i.i = icmp eq ptr %i.et, %i.eq
  br i1 %.not13.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx10nbnxn_cj_tES2_NS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEET0_T_S7_S6_RT1_.exit34.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.fg = ptrtoaddr ptr %i.fe to i64
  %i.fh = add i64 %i.eu, -8
  %i.fi = sub i64 %i.fh, %i.ev                    ; 3 uses
  %i.fj = lshr i64 %i.fi, 3
  %i.fk = add nuw nsw i64 %i.fj, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.fi, 24
  %i.fl = sub i64 %i.ev, %i.fg
  %diff.check = icmp ugt i64 %i.fl, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check39 = icmp ult i64 %i.fi, 120
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fm = and i64 %i.fk, 12
  %n.vec = and i64 %i.fk, 4611686018427387888     ; 4 uses
  %i.fn = shl i64 %n.vec, 3                       ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fe, i64 %i.fn  ; 2 uses
  %i.fp = getelementptr i8, ptr %i.et, i64 %i.fn
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fe, i64 %i.fq ; 4 uses
  %next.gep40 = getelementptr i8, ptr %i.et, i64 %i.fq ; 4 uses
  %i.fr = getelementptr i8, ptr %next.gep40, i64 32
  %i.fs = getelementptr i8, ptr %next.gep40, i64 64
  %i.ft = getelementptr i8, ptr %next.gep40, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep40, align 4, !tbaa !35, !noalias !29
  %wide.load41 = load <4 x i64>, ptr %i.fr, align 4, !tbaa !35, !noalias !29
  %wide.load42 = load <4 x i64>, ptr %i.fs, align 4, !tbaa !35, !noalias !29
  %wide.load43 = load <4 x i64>, ptr %i.ft, align 4, !tbaa !35, !noalias !29
  %i.fu = getelementptr i8, ptr %next.gep, i64 32
  %i.fv = getelementptr i8, ptr %next.gep, i64 64
  %i.fw = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4, !tbaa !35, !noalias !29
  store <4 x i64> %wide.load41, ptr %i.fu, align 4, !tbaa !35, !noalias !29
  store <4 x i64> %wide.load42, ptr %i.fv, align 4, !tbaa !35, !noalias !29
  store <4 x i64> %wide.load43, ptr %i.fw, align 4, !tbaa !35, !noalias !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fx = icmp eq i64 %index.next, %n.vec
  br i1 %i.fx, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fk, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx10nbnxn_cj_tES2_NS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEET0_T_S7_S6_RT1_.exit34.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %i.fk, 4611686018427387900   ; 3 uses
  %i.fy = shl i64 %n.vec44, 3                     ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fe, i64 %i.fy  ; 2 uses
  %i.ga = getelementptr i8, ptr %i.et, i64 %i.fy
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 2 uses
  %i.gb = shl i64 %index45, 3                     ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.fe, i64 %i.gb
  %next.gep47 = getelementptr i8, ptr %i.et, i64 %i.gb
  %wide.load48 = load <4 x i64>, ptr %next.gep47, align 4, !tbaa !35, !noalias !29
  store <4 x i64> %wide.load48, ptr %next.gep46, align 4, !tbaa !35, !noalias !29
  %index.next49 = add nuw i64 %index45, 4         ; 2 uses
  %i.gc = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.gc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %i.fk, %n.vec44
end_hunk_0
