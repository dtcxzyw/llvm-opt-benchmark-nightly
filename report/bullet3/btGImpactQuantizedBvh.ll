Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGImpactQuantizedBvh?download=true
inline.NumInlined: 484
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btAABB = type { %class.btVector3, %class.btVector3 }
%class.btVector3 = type { [4 x float] }
%class.GIM_BVH_DATA_ARRAY = type { %class.btAlignedObjectArray.base, [7 x i8] }
%class.btAlignedObjectArray.base = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8 }>
%class.BT_BOX_BOX_TRANSFORM_CACHE = type { %class.btVector3, %class.btMatrix3x3, %class.btMatrix3x3 }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }

$_ZN20btAlignedObjectArrayI12GIM_BVH_DATAED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb = comdat any

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN18btQuantizedBvhTree17calc_quantizationER18GIM_BVH_DATA_ARRAYf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, float noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.cont19

._crit_edge:                                      ; preds = %.cont19, %bb.a
  %.sroa.17.0.lcssa = phi float [ f0xFF7FFFFF, %bb.a ], [ %i.ai, %.cont19 ]
  %.sroa.0.0.lcssa = phi float [ f0x7F7FFFFF, %bb.a ], [ %i.ad, %.cont19 ]
  %i.f = phi <4 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %bb.a ], [ %i.aq, %.cont19 ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = extractelement <4 x float> %i.f, i64 1
  %i.k = fsub float %i.j, %2                      ; 2 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.k, i64 0
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.44.0..sroa_idx.i, align 8, !tbaa !17
  %i.l = extractelement <4 x float> %i.f, i64 3
  %i.m = fadd float %2, %i.l                      ; 2 uses
  %.sroa.3.12.vec.insert.i13.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i13.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !17
  %i.n = fsub float %i.m, %i.k
  %i.o = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %.sroa.0.0.lcssa, i64 0
  %i.q = insertelement <2 x float> poison, float %2, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = fsub <2 x float> %i.p, %i.r              ; 2 uses
  store <2 x float> %i.s, ptr %i.g, align 8
  %i.t = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.u = insertelement <2 x float> %i.t, float %.sroa.17.0.lcssa, i64 0
  %i.v = fadd <2 x float> %i.r, %i.u              ; 2 uses
  store <2 x float> %i.v, ptr %i.h, align 8
  %i.w = fsub <2 x float> %i.v, %i.s
  %i.x = fdiv <2 x float> splat (float 6.553500e+04), %i.w
  %i.y = fdiv float 6.553500e+04, %i.n
  %.sroa.3.12.vec.insert.i23.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.y, i64 0
  store <2 x float> %i.x, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %.sroa.3.12.vec.insert.i23.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !17
  ret void

.cont19:                                          ; preds = %.lr.ph, %.cont19
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.cont19 ] ; 2 uses
  %.sroa.0.031 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %i.ad, %.cont19 ] ; 2 uses
  %.sroa.17.030 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %i.ai, %.cont19 ] ; 2 uses
  %i.z = phi <4 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %.lr.ph ], [ %i.aq, %.cont19 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [36 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !19 ; 2 uses
  %i.ac = fcmp ogt float %.sroa.0.031, %i.ab
  %i.ad = select i1 %i.ac, float %i.ab, float %.sroa.0.031 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = load float, ptr %i.af, align 4, !tbaa !19 ; 2 uses
  %i.ah = fcmp olt float %.sroa.17.030, %i.ag
  %i.ai = select i1 %i.ah, float %i.ag, float %.sroa.17.030 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ak = load <2 x float>, ptr %i.ae, align 4, !tbaa !19
  %i.al = load <2 x float>, ptr %i.aj, align 4, !tbaa !19
  %i.am = shufflevector <2 x float> %i.ak, <2 x float> %i.al, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 3 uses
  %i.an = fcmp ogt <4 x float> %i.z, %i.am
  %i.ao = fcmp olt <4 x float> %i.z, %i.am
  %i.ap = shufflevector <4 x i1> %i.an, <4 x i1> %i.ao, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aq = select <4 x i1> %i.ap, <4 x float> %i.am, <4 x float> %i.z ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.cont19, !llvm.loop !0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN18btQuantizedBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = sub nsw i32 %3, %2                         ; 2 uses
  %i.a = icmp slt i32 %2, %3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = sext i32 %2 to i64
  %wide.trip.count = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.sroa.079.089 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.y, %bb.b ]
  %i.e = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.x, %bb.b ]
  %i.f = getelementptr inbounds [36 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load float, ptr %i.g, align 4, !tbaa !19
  %i.i = load float, ptr %i.f, align 4, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !19
  %i.m = load <2 x float>, ptr %i.k, align 4, !tbaa !19
  %i.n = fadd <2 x float> %i.l, %i.m
  %i.o = fadd float %i.h, %i.i
  %i.p = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.o, i64 1
  %i.q = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.r = shufflevector <4 x float> %i.p, <4 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.s = fmul <4 x float> %i.r, <float -0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %i.t = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %.sroa.079.089, i64 1
  %i.u = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.v = shufflevector <4 x float> %i.t, <4 x float> %i.u, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.w = fadd <4 x float> %i.v, %i.s              ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.y = extractelement <4 x float> %i.w, i64 1
  br i1 %exitcond.not, label %.lr.ph100, label %bb.b, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.a
  %i.z = sitofp i32 %4 to float
  %i.aa = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.z, i64 0
  br label %._crit_edge101

.lr.ph100:                                        ; preds = %bb.b
  %i.ab = sitofp i32 %4 to float                  ; 2 uses
  %i.ac = fdiv nnan float 1.000000e+00, %i.ab
  %i.ad = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.ac, i64 1
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.af = fmul <4 x float> %i.ae, %i.w
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !16
  %i.ai = sext i32 %2 to i64
  %wide.trip.count114 = sext i32 %3 to i64
  %i.aj = insertelement <4 x float> poison, float %i.ab, i64 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph100, %bb.c
  %indvars.iv111 = phi i64 [ %i.ai, %.lr.ph100 ], [ %indvars.iv.next112, %bb.c ] ; 2 uses
  %.sroa.069.095 = phi float [ 0.000000e+00, %.lr.ph100 ], [ %i.bj, %bb.c ]
  %i.ak = phi <2 x float> [ zeroinitializer, %.lr.ph100 ], [ %i.bi, %bb.c ]
  %i.al = getelementptr inbounds [36 x i8], ptr %i.ah, i64 %indvars.iv111 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load float, ptr %i.am, align 4, !tbaa !19
  %i.ao = load float, ptr %i.al, align 4, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ar = load <2 x float>, ptr %i.ap, align 4, !tbaa !19
  %i.as = load <2 x float>, ptr %i.aq, align 4, !tbaa !19
  %i.at = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.an, i64 1
  %i.au = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.av = shufflevector <4 x float> %i.at, <4 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aw = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %i.ao, i64 1
  %i.ax = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x float> %i.aw, <4 x float> %i.ax, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.az = fadd <4 x float> %i.av, %i.ay
  %i.ba = fmul <4 x float> %i.az, <float -0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %i.bb = fsub <4 x float> %i.ba, %i.af           ; 2 uses
  %i.bc = insertelement <4 x float> %i.bb, float 1.000000e+00, i64 0
  %i.bd = fmul <4 x float> %i.bb, %i.bc
  %i.be = insertelement <4 x float> %i.aj, float %.sroa.069.095, i64 1
  %i.bf = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x float> %i.be, <4 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bh = fadd <4 x float> %i.bg, %i.bd           ; 3 uses
  %indvars.iv.next112 = add nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count114
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bj = extractelement <4 x float> %i.bh, i64 1
  br i1 %exitcond115.not, label %._crit_edge101, label %bb.c, !llvm.loop !56

._crit_edge101:                                   ; preds = %bb.c, %._crit_edge
  %i.bk = phi <4 x float> [ %i.aa, %._crit_edge ], [ %i.bh, %bb.c ] ; 4 uses
  %i.bl = extractelement <4 x float> %i.bk, i64 0
  %i.bm = fadd float %i.bl, -1.000000e+00
  %i.bn = fdiv float 1.000000e+00, %i.bm          ; 3 uses
  %i.bo = extractelement <4 x float> %i.bk, i64 1
  %i.bp = fmul float %i.bn, %i.bo                 ; 2 uses
  %i.bq = extractelement <4 x float> %i.bk, i64 2
  %i.br = fmul float %i.bn, %i.bq                 ; 2 uses
  %i.bs = extractelement <4 x float> %i.bk, i64 3
  %i.bt = fmul float %i.bn, %i.bs
  %i.bu = fcmp olt float %i.bp, %i.br             ; 2 uses
  %..i = select i1 %i.bu, float %i.br, float %i.bp
  %.5.i = zext i1 %i.bu to i32
  %i.bv = fcmp olt float %..i, %i.bt
  %i.bw = select i1 %i.bv, i32 2, i32 %.5.i
  ret i32 %i.bw
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN18btQuantizedBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %.sroa.0.i = alloca %class.btAABB, align 8      ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 6 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = sub nsw i32 %3, %2                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = icmp slt i32 %2, %3                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.c, align 4
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = sext i32 %2 to i64                       ; 5 uses
  %wide.trip.count = sext i32 %3 to i64           ; 3 uses
  %i.g = sub nsw i64 %wide.trip.count, %i.f
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.h = getelementptr inbounds [36 x i8], ptr %i.e, i64 %i.f ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load float, ptr %i.j, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !19
  %i.n = fadd float %i.k, %i.m
  %i.o = load <2 x float>, ptr %i.i, align 4, !tbaa !19
  %i.p = load <2 x float>, ptr %i.h, align 4, !tbaa !19
  %i.q = fadd <2 x float> %i.o, %i.p
  %i.r = fmul <2 x float> %i.q, splat (float 5.000000e-01)
  %i.s = fmul float %i.n, 5.000000e-01
  %i.t = fadd <2 x float> %i.r, zeroinitializer   ; 2 uses
  %i.u = fadd float %i.s, 0.000000e+00            ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.f, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa102.unr = phi <2 x float> [ poison, %.lr.ph ], [ %i.t, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi float [ poison, %.lr.ph ], [ %i.u, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.unr = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.0.586368.unr = phi float [ 0.000000e+00, %.lr.ph ], [ %i.u, %.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.t, %.prol.loopexit.unr-lcssa ]
  %i.v = add nsw i64 %wide.trip.count, -1
  %i.w = icmp eq i64 %i.v, %i.f
  br i1 %i.w, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %.0.586368 = phi float [ %i.ba, %.lr.ph.new ], [ %.0.586368.unr, %.prol.loopexit ]
  %i.x = phi <2 x float> [ %i.az, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.y = getelementptr inbounds [36 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !19
  %i.ae = fadd float %i.ab, %i.ad
  %i.af = load <2 x float>, ptr %i.z, align 4, !tbaa !19
  %i.ag = load <2 x float>, ptr %i.y, align 4, !tbaa !19
  %i.ah = fadd <2 x float> %i.af, %i.ag
  %i.ai = fmul <2 x float> %i.ah, splat (float 5.000000e-01)
  %i.aj = fmul float %i.ae, 5.000000e-01
  %i.ak = fadd <2 x float> %i.x, %i.ai
  %i.al = fadd float %.0.586368, %i.aj
  %i.am = getelementptr [36 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  %i.an = getelementptr i8, ptr %i.am, i64 36
  %i.ao = getelementptr i8, ptr %i.am, i64 52
  %i.ap = getelementptr i8, ptr %i.am, i64 60
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !19
  %i.ar = getelementptr i8, ptr %i.am, i64 44
  %i.as = load float, ptr %i.ar, align 4, !tbaa !19
  %i.at = fadd float %i.aq, %i.as
  %i.au = load <2 x float>, ptr %i.ao, align 4, !tbaa !19
  %i.av = load <2 x float>, ptr %i.an, align 4, !tbaa !19
  %i.aw = fadd <2 x float> %i.au, %i.av
  %i.ax = fmul <2 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fmul float %i.at, 5.000000e-01
  %i.az = fadd <2 x float> %i.ak, %i.ax           ; 2 uses
  %i.ba = fadd float %i.al, %i.ay                 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !57

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  %.0.5863.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ba, %.lr.ph.new ]
  %i.bb = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.lcssa102.unr, %.prol.loopexit ], [ %i.az, %.lr.ph.new ]
  %i.bc = sitofp i32 %7 to float
  %i.bd = fdiv float 1.000000e+00, %i.bc          ; 2 uses
  %i.be = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.bf, %i.bb
  store <2 x float> %i.bg, ptr %5, align 8, !tbaa !19
  %i.bh = fmul float %i.bd, %.0.5863.lcssa
  store float %i.bh, ptr %i.a, align 8, !tbaa !19
  %i.bi = sext i32 %4 to i64                      ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !19
  br i1 %i.b, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bn = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bi
  %.sroa.0.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %i.bo = sext i32 %2 to i64
  %wide.trip.count90 = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph80, %bb.d
  %indvars.iv87 = phi i64 [ %i.bo, %.lr.ph80 ], [ %indvars.iv.next88, %bb.d ] ; 2 uses
  %.078 = phi i32 [ %2, %.lr.ph80 ], [ %.1, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !16 ; 2 uses
  %i.bq = getelementptr inbounds [36 x i8], ptr %i.bp, i64 %indvars.iv87 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !19
  %i.bw = fadd float %i.bt, %i.bv
  %i.bx = load <2 x float>, ptr %i.br, align 4, !tbaa !19
  %i.by = load <2 x float>, ptr %i.bq, align 4, !tbaa !19
  %i.bz = fadd <2 x float> %i.bx, %i.by
  %i.ca = fmul <2 x float> %i.bz, splat (float 5.000000e-01)
  %i.cb = fmul float %i.bw, 5.000000e-01
  %.sroa.3.12.vec.insert.i.i47 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cb, i64 0
  store <2 x float> %i.ca, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i47, ptr %i.bm, align 8
  %i.cc = load float, ptr %i.bn, align 4, !tbaa !19
  %i.cd = fcmp ogt float %i.cc, %i.bk
  br i1 %i.cd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 4 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !25
  %i.cg = sext i32 %.078 to i64                   ; 2 uses
  %i.ch = getelementptr inbounds [36 x i8], ptr %i.bp, i64 %i.cg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.bq, ptr noundef nonnull align 4 dereferenceable(36) %i.ch, i64 36, i1 false), !tbaa.struct !59
  %i.ci = load ptr, ptr %i.bl, align 8, !tbaa !16
  %i.cj = getelementptr inbounds [36 x i8], ptr %i.ci, i64 %i.cg ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i, i64 32, i1 false), !tbaa.struct !59
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store i32 %i.cf, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.ck = add nsw i32 %.078, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %i.ck, %bb.c ], [ %.078, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %._crit_edge81, label %bb.b, !llvm.loop !58

._crit_edge81:                                    ; preds = %bb.d, %._crit_edge
  %.0.lcssa = phi i32 [ %2, %._crit_edge ], [ %.1, %bb.d ] ; 3 uses
  %i.cl = sdiv i32 %7, 3                          ; 2 uses
  %i.cm = add nsw i32 %i.cl, %2
  %.not = icmp sle i32 %.0.lcssa, %i.cm
  %i.cn = xor i32 %i.cl, -1
  %i.co = add i32 %3, %i.cn
  %i.cp = icmp sge i32 %.0.lcssa, %i.co
  %i.cq = or i1 %.not, %i.cp
  %i.cr = ashr i32 %7, 1
  %i.cs = add nsw i32 %i.cr, %2
  %.2 = select i1 %i.cq, i32 %i.cs, i32 %.0.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i32 %.2
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN18btQuantizedBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !32     ; 4 uses
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr %0, align 8, !tbaa !32
  %i.c = sub nsw i32 %3, %2
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = sext i32 %2 to i64
  %i.h = getelementptr inbounds [36 x i8], ptr %i.f, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = sext i32 %i.a to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.13.0.copyload.i.i = load float, ptr %.sroa.13.0..sroa_idx.i.i, align 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load float, ptr %i.p, align 8, !tbaa !19 ; 6 uses
  %i.r = fcmp olt float %.sroa.13.0.copyload.i.i, %i.q
  %.sroa.13.0.i.i = select i1 %i.r, float %i.q, float %.sroa.13.0.copyload.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load float, ptr %i.s, align 8, !tbaa !19 ; 4 uses
  %i.u = fcmp olt float %i.t, %.sroa.13.0.i.i
  %.sroa.13.1.i.i = select i1 %i.u, float %i.t, float %.sroa.13.0.i.i
  %i.v = fsub float %.sroa.13.1.i.i, %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load float, ptr %i.w, align 8, !tbaa !19 ; 2 uses
  %i.y = fmul float %i.v, %i.x
  %i.z = load <2 x float>, ptr %i.h, align 4      ; 2 uses
  %i.aa = load <2 x float>, ptr %i.m, align 8, !tbaa !19 ; 6 uses
  %i.ab = fcmp olt <2 x float> %i.z, %i.aa
  %i.ac = select <2 x i1> %i.ab, <2 x float> %i.aa, <2 x float> %i.z ; 2 uses
  %i.ad = load <2 x float>, ptr %i.n, align 8, !tbaa !19 ; 4 uses
  %i.ae = fcmp olt <2 x float> %i.ad, %i.ac
  %i.af = select <2 x i1> %i.ae, <2 x float> %i.ad, <2 x float> %i.ac
  %i.ag = fsub <2 x float> %i.af, %i.aa
  %i.ah = load <2 x float>, ptr %i.o, align 8, !tbaa !19 ; 2 uses
  %i.ai = fmul <2 x float> %i.ag, %i.ah
  %i.aj = fadd <2 x float> %i.ai, splat (float 5.000000e-01)
  %i.ak = fptoui <2 x float> %i.aj to <2 x i16>
  store <2 x i16> %i.ak, ptr %i.l, align 2, !tbaa !35
  %i.al = fadd float %i.y, 5.000000e-01
  %i.am = fptoui float %i.al to i16
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i16 %i.am, ptr %i.an, align 2, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.13.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.13.0.copyload.i8.i = load float, ptr %.sroa.13.0..sroa_idx.i7.i, align 4 ; 2 uses
  %i.aq = fcmp olt float %.sroa.13.0.copyload.i8.i, %i.q
  %.sroa.13.0.i11.i = select i1 %i.aq, float %i.q, float %.sroa.13.0.copyload.i8.i ; 2 uses
  %i.ar = fcmp olt float %i.t, %.sroa.13.0.i11.i
  %.sroa.13.1.i14.i = select i1 %i.ar, float %i.t, float %.sroa.13.0.i11.i
  %i.as = fsub float %.sroa.13.1.i14.i, %i.q
  %i.at = fmul float %i.x, %i.as
  %i.au = load <2 x float>, ptr %i.ap, align 4    ; 2 uses
  %i.av = fcmp olt <2 x float> %i.au, %i.aa
  %i.aw = select <2 x i1> %i.av, <2 x float> %i.aa, <2 x float> %i.au ; 2 uses
  %i.ax = fcmp olt <2 x float> %i.ad, %i.aw
  %i.ay = select <2 x i1> %i.ax, <2 x float> %i.ad, <2 x float> %i.aw
  %i.az = fsub <2 x float> %i.ay, %i.aa
  %i.ba = fmul <2 x float> %i.ah, %i.az
  %i.bb = fadd <2 x float> %i.ba, splat (float 5.000000e-01)
  %i.bc = fptoui <2 x float> %i.bb to <2 x i16>
  store <2 x i16> %i.bc, ptr %i.ao, align 2, !tbaa !35
  %i.bd = fadd float %i.at, 5.000000e-01
  %i.be = fptoui float %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !25
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.bi = tail call noundef i32 @_ZN18btQuantizedBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %2, i32 noundef %3)
  %i.bj = tail call noundef i32 @_ZN18btQuantizedBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.bi) ; 2 uses
  %i.bk = icmp slt i32 %2, %3
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !16
  %i.bn = sext i32 %2 to i64
  %wide.trip.count = sext i32 %3 to i64
  br label %.cont60

common.ret:                                       ; preds = %bb.b, %._crit_edge
  %.sink90 = phi ptr [ %i.l, %bb.b ], [ %i.cz, %._crit_edge ]
  %.sink = phi i32 [ %i.bh, %bb.b ], [ %.neg, %._crit_edge ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sink90, i64 12
  store i32 %.sink, ptr %i.bo, align 4, !tbaa !37
  ret void

._crit_edge:                                      ; preds = %.cont60, %bb.c
  %i.bp = phi <4 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF>, %bb.c ], [ %i.dq, %.cont60 ] ; 2 uses
  %i.bq = phi <2 x float> [ splat (float f0xFF7FFFFF), %bb.c ], [ %i.du, %.cont60 ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !33
  %i.bt = sext i32 %i.a to i64                    ; 2 uses
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.by = load <3 x float>, ptr %i.bv, align 8, !tbaa !19 ; 2 uses
  %i.bz = shufflevector <3 x float> %i.by, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
end_hunk_0
