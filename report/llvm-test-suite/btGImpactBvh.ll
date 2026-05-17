inline.NumInlined: 456
inline.NumDeleted: 131
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btAABB = type { %class.btVector3, %class.btVector3 }
%class.btVector3 = type { [4 x float] }
%class.GIM_BVH_DATA_ARRAY = type { %class.btAlignedObjectArray.base, [7 x i8] }
%class.btAlignedObjectArray.base = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8 }>
%class.BT_BOX_BOX_TRANSFORM_CACHE = type { %class.btVector3, %class.btMatrix3x3, %class.btMatrix3x3 }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }

$__clang_call_terminate = comdat any

$_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb = comdat any

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN9btBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sub nsw i32 %3, %2                       ; 2 uses
  %i.b = icmp slt i32 %2, %3
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = sext i32 %2 to i64
  %wide.trip.count = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.sroa.079.089 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.z, %bb.b ]
  %i.f = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.y, %bb.b ]
  %i.g = getelementptr inbounds [36 x i8], ptr %i.d, i64 %indvars.iv ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load float, ptr %i.h, align 4, !tbaa !14
  %i.j = load float, ptr %i.g, align 4, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.m = load <2 x float>, ptr %i.k, align 4, !tbaa !14
  %i.n = load <2 x float>, ptr %i.l, align 4, !tbaa !14
  %i.o = fadd <2 x float> %i.m, %i.n
  %i.p = fadd float %i.i, %i.j
  %i.q = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.p, i64 1
  %i.r = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.s = shufflevector <4 x float> %i.q, <4 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.t = fmul <4 x float> %i.s, <float -0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %i.u = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %.sroa.079.089, i64 1
  %i.v = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.w = shufflevector <4 x float> %i.u, <4 x float> %i.v, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.x = fadd <4 x float> %i.w, %i.t              ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.z = extractelement <4 x float> %i.x, i64 1
  br i1 %exitcond.not, label %.lr.ph100, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %i.aa = sitofp i32 %i.a to float
  %i.ab = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.aa, i64 0
  br label %._crit_edge101

.lr.ph100:                                        ; preds = %bb.b
  %i.ac = sitofp i32 %i.a to float                ; 2 uses
  %i.ad = fdiv nnan float 1.000000e+00, %i.ac
  %i.ae = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.ad, i64 1
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ag = fmul <4 x float> %i.af, %i.x
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8
  %i.aj = sext i32 %2 to i64
  %wide.trip.count114 = sext i32 %3 to i64
  %i.ak = insertelement <4 x float> poison, float %i.ac, i64 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph100, %bb.c
  %indvars.iv111 = phi i64 [ %i.aj, %.lr.ph100 ], [ %indvars.iv.next112, %bb.c ] ; 2 uses
  %.sroa.069.095 = phi float [ 0.000000e+00, %.lr.ph100 ], [ %i.bk, %bb.c ]
  %i.al = phi <2 x float> [ zeroinitializer, %.lr.ph100 ], [ %i.bj, %bb.c ]
  %i.am = getelementptr inbounds [36 x i8], ptr %i.ai, i64 %indvars.iv111 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load float, ptr %i.an, align 4, !tbaa !14
  %i.ap = load float, ptr %i.am, align 4, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.as = load <2 x float>, ptr %i.aq, align 4, !tbaa !14
  %i.at = load <2 x float>, ptr %i.ar, align 4, !tbaa !14
  %i.au = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.ao, i64 1
  %i.av = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ax = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %i.ap, i64 1
  %i.ay = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ba = fadd <4 x float> %i.aw, %i.az
  %i.bb = fmul <4 x float> %i.ba, <float -0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %i.bc = fsub <4 x float> %i.bb, %i.ag           ; 2 uses
  %i.bd = insertelement <4 x float> %i.bc, float 1.000000e+00, i64 0
  %i.be = fmul <4 x float> %i.bc, %i.bd
  %i.bf = insertelement <4 x float> %i.ak, float %.sroa.069.095, i64 1
  %i.bg = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bh = shufflevector <4 x float> %i.bf, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bi = fadd <4 x float> %i.bh, %i.be           ; 3 uses
  %indvars.iv.next112 = add nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count114
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bk = extractelement <4 x float> %i.bi, i64 1
  br i1 %exitcond115.not, label %._crit_edge101, label %bb.c

._crit_edge101:                                   ; preds = %bb.c, %._crit_edge
  %i.bl = phi <4 x float> [ %i.ab, %._crit_edge ], [ %i.bi, %bb.c ] ; 4 uses
  %i.bm = extractelement <4 x float> %i.bl, i64 0
  %i.bn = fadd float %i.bm, -1.000000e+00
  %i.bo = fdiv float 1.000000e+00, %i.bn          ; 3 uses
  %i.bp = extractelement <4 x float> %i.bl, i64 1
  %i.bq = fmul float %i.bo, %i.bp                 ; 2 uses
  %i.br = extractelement <4 x float> %i.bl, i64 2
  %i.bs = fmul float %i.bo, %i.br                 ; 2 uses
  %i.bt = extractelement <4 x float> %i.bl, i64 3
  %i.bu = fmul float %i.bo, %i.bt
  %i.bv = fcmp olt float %i.bq, %i.bs             ; 2 uses
  %..i = select i1 %i.bv, float %i.bs, float %i.bq
  %.5.i = zext i1 %i.bv to i32
  %i.bw = fcmp olt float %..i, %i.bu
  %i.bx = select i1 %i.bw, i32 2, i32 %.5.i
  ret i32 %i.bx
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN9btBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.0.i = alloca %class.btAABB, align 8      ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 6 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = sub nsw i32 %3, %2                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = icmp slt i32 %2, %3                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.c, align 4
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 3 uses
  %i.f = sext i32 %2 to i64                       ; 5 uses
  %wide.trip.count = sext i32 %3 to i64           ; 3 uses
  %i.g = sub nsw i64 %wide.trip.count, %i.f
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.h = getelementptr inbounds [36 x i8], ptr %i.e, i64 %i.f ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %10 = load float, ptr %9, align 4, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %11 = load float, ptr %i.i, align 4, !tbaa !14
  %12 = fadd float %10, %11
  %13 = load <2 x float>, ptr %8, align 4, !tbaa !14
  %14 = load <2 x float>, ptr %i.h, align 4, !tbaa !14
  %15 = fadd <2 x float> %13, %14
  %16 = fmul <2 x float> %15, splat (float 5.000000e-01)
  %17 = fmul float %12, 5.000000e-01
  %18 = fadd <2 x float> %16, zeroinitializer     ; 2 uses
  %19 = fadd float %17, 0.000000e+00              ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.f, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa101.unr = phi <2 x float> [ poison, %.lr.ph ], [ %18, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi float [ poison, %.lr.ph ], [ %19, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.unr = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.0.586368.unr = phi float [ 0.000000e+00, %.lr.ph ], [ %19, %.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %18, %.prol.loopexit.unr-lcssa ]
  %i.j = add nsw i64 %wide.trip.count, -1
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %.0.586368 = phi float [ %44, %.lr.ph.new ], [ %.0.586368.unr, %.prol.loopexit ]
  %20 = phi <2 x float> [ %43, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.l = getelementptr inbounds [36 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  %21 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %22 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %23 = load float, ptr %22, align 4, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %24 = load float, ptr %i.m, align 4, !tbaa !14
  %25 = fadd float %23, %24
  %26 = load <2 x float>, ptr %21, align 4, !tbaa !14
  %27 = load <2 x float>, ptr %i.l, align 4, !tbaa !14
  %28 = fadd <2 x float> %26, %27
  %29 = fmul <2 x float> %28, splat (float 5.000000e-01)
  %30 = fmul float %25, 5.000000e-01
  %31 = fadd <2 x float> %20, %29
  %32 = fadd float %.0.586368, %30
  %i.n = getelementptr [36 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  %33 = getelementptr i8, ptr %i.n, i64 36
  %34 = getelementptr i8, ptr %i.n, i64 52
  %i.o = getelementptr i8, ptr %i.n, i64 60
  %35 = load float, ptr %i.o, align 4, !tbaa !14
  %i.p = getelementptr i8, ptr %i.n, i64 44
  %36 = load float, ptr %i.p, align 4, !tbaa !14
  %37 = fadd float %35, %36
  %38 = load <2 x float>, ptr %34, align 4, !tbaa !14
  %39 = load <2 x float>, ptr %33, align 4, !tbaa !14
  %40 = fadd <2 x float> %38, %39
  %41 = fmul <2 x float> %40, splat (float 5.000000e-01)
  %42 = fmul float %37, 5.000000e-01
  %43 = fadd <2 x float> %31, %41                 ; 2 uses
  %44 = fadd float %32, %42                       ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  %.0.5863.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.lcssa.unr, %.prol.loopexit ], [ %44, %.lr.ph.new ]
  %45 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.lcssa101.unr, %.prol.loopexit ], [ %43, %.lr.ph.new ]
  %i.q = sitofp i32 %i.a to float
  %i.r = fdiv float 1.000000e+00, %i.q            ; 2 uses
  %46 = insertelement <2 x float> poison, float %i.r, i64 0
  %47 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> zeroinitializer
  %48 = fmul <2 x float> %47, %45
  store <2 x float> %48, ptr %5, align 8, !tbaa !14
  %49 = fmul float %i.r, %.0.5863.lcssa
  store float %49, ptr %7, align 8, !tbaa !14
  %i.s = sext i32 %4 to i64                       ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %5, i64 %i.s
  %i.u = load float, ptr %i.t, align 4, !tbaa !14
  br i1 %i.b, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = getelementptr inbounds [4 x i8], ptr %6, i64 %i.s
  %.sroa.0.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %i.y = sext i32 %2 to i64
  %wide.trip.count90 = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph80, %bb.d
  %indvars.iv87 = phi i64 [ %i.y, %.lr.ph80 ], [ %indvars.iv.next88, %bb.d ] ; 2 uses
  %.03777 = phi i32 [ %2, %.lr.ph80 ], [ %.138, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !8    ; 2 uses
  %i.aa = getelementptr inbounds [36 x i8], ptr %i.z, i64 %indvars.iv87 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !14
  %i.ag = fadd float %i.ad, %i.af
  %i.ah = load <2 x float>, ptr %i.ab, align 4, !tbaa !14
  %i.ai = load <2 x float>, ptr %i.aa, align 4, !tbaa !14
  %i.aj = fadd <2 x float> %i.ah, %i.ai
  %i.ak = fmul <2 x float> %i.aj, splat (float 5.000000e-01)
  %i.al = fmul float %i.ag, 5.000000e-01
  %.sroa.3.12.vec.insert.i.i47 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.al, i64 0
  store <2 x float> %i.ak, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i47, ptr %i.w, align 8
  %i.am = load float, ptr %i.x, align 4, !tbaa !14
  %i.an = fcmp ogt float %i.am, %i.u
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !18
  %i.aq = sext i32 %.03777 to i64                 ; 2 uses
  %i.ar = getelementptr inbounds [36 x i8], ptr %i.z, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.aa, ptr noundef nonnull align 4 dereferenceable(36) %i.ar, i64 36, i1 false), !tbaa.struct !22
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.at = getelementptr inbounds [36 x i8], ptr %i.as, i64 %i.aq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i, i64 32, i1 false), !tbaa.struct !22
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store i32 %i.ap, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.au = add nsw i32 %.03777, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.138 = phi i32 [ %i.au, %bb.c ], [ %.03777, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %._crit_edge81, label %bb.b

._crit_edge81:                                    ; preds = %bb.d, %._crit_edge
  %.037.lcssa = phi i32 [ %2, %._crit_edge ], [ %.138, %bb.d ] ; 3 uses
  %i.av = sdiv i32 %i.a, 3                        ; 2 uses
  %i.aw = add nsw i32 %i.av, %2
  %.not = icmp sle i32 %.037.lcssa, %i.aw
  %i.ax = xor i32 %i.av, -1
  %i.ay = add i32 %3, %i.ax
  %i.az = icmp sge i32 %.037.lcssa, %i.ay
  %i.ba = or i1 %.not, %i.az
  %i.bb = ashr i32 %i.a, 1
  %i.bc = add nsw i32 %i.bb, %2
  %.2 = select i1 %i.ba, i32 %i.bc, i32 %.037.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i32 %.2
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9btBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !23     ; 4 uses
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr %0, align 8, !tbaa !23
  %i.c = sub nsw i32 %3, %2
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = sext i32 %2 to i64                       ; 2 uses
  %i.h = getelementptr inbounds [36 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = sext i32 %i.a to i64                     ; 2 uses
  %i.l = getelementptr inbounds [36 x i8], ptr %i.j, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.l, ptr noundef nonnull align 4 dereferenceable(32) %i.h, i64 32, i1 false), !tbaa.struct !30
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.n = getelementptr inbounds [36 x i8], ptr %i.m, i64 %i.k
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.p = getelementptr inbounds [36 x i8], ptr %i.o, i64 %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.s = tail call noundef i32 @_ZN9btBvhTree20_calc_splitting_axisER18GIM_BVH_DATA_ARRAYii(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %2, i32 noundef %3)
  %i.t = tail call noundef i32 @_ZN9btBvhTree30_sort_and_calc_splitting_indexER18GIM_BVH_DATA_ARRAYiii(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.s) ; 2 uses
  %i.u = icmp slt i32 %2, %3
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = sext i32 %2 to i64
  %wide.trip.count = sext i32 %3 to i64
  br label %.cont39

common.ret:                                       ; preds = %bb.b, %._crit_edge
  %.sink69 = phi ptr [ %i.n, %bb.b ], [ %i.ag, %._crit_edge ]
  %.sink = phi i32 [ %i.r, %bb.b ], [ %.neg, %._crit_edge ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sink69, i64 32
  store i32 %.sink, ptr %i.y, align 4, !tbaa !31
  ret void

._crit_edge:                                      ; preds = %.cont39, %bb.c
  %.sroa.21.0.lcssa = phi float [ f0xFF7FFFFF, %bb.c ], [ %i.ay, %.cont39 ]
  %.sroa.10.0.lcssa = phi float [ f0x7F7FFFFF, %bb.c ], [ %.sroa.speculated, %.cont39 ]
  %i.z = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.c ], [ %i.an, %.cont39 ]
  %i.aa = phi <2 x float> [ splat (float f0xFF7FFFFF), %bb.c ], [ %i.au, %.cont39 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ad = sext i32 %i.a to i64                    ; 2 uses
  %i.ae = getelementptr inbounds [36 x i8], ptr %i.ac, i64 %i.ad ; 4 uses
  store <2 x float> %i.z, ptr %i.ae, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store float %.sroa.10.0.lcssa, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.1438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x float> %i.aa, ptr %.sroa.1438.0..sroa_idx, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store float %.sroa.21.0.lcssa, ptr %.sroa.21.0..sroa_idx, align 4
  tail call void @_ZN9btBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %2, i32 noundef %i.t)
  tail call void @_ZN9btBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %i.t, i32 noundef %3)
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ag = getelementptr inbounds [36 x i8], ptr %i.af, i64 %i.ad
  %i.ah = load i32, ptr %0, align 8, !tbaa !23
  %.neg = sub nsw i32 %i.a, %i.ah
  br label %common.ret

.cont39:                                          ; preds = %.lr.ph, %.cont39
  %indvars.iv = phi i64 [ %i.x, %.lr.ph ], [ %indvars.iv.next, %.cont39 ] ; 2 uses
  %.sroa.10.048 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.sroa.speculated, %.cont39 ] ; 2 uses
  %.sroa.21.047 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %i.ay, %.cont39 ] ; 2 uses
  %i.ai = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph ], [ %i.an, %.cont39 ] ; 2 uses
  %i.aj = phi <2 x float> [ splat (float f0xFF7FFFFF), %.lr.ph ], [ %i.au, %.cont39 ] ; 2 uses
  %i.ak = getelementptr inbounds [36 x i8], ptr %i.w, i64 %indvars.iv ; 4 uses
  %i.al = load <2 x float>, ptr %i.ak, align 4, !tbaa !14 ; 2 uses
  %i.am = fcmp ogt <2 x float> %i.ai, %i.al
  %i.an = select <2 x i1> %i.am, <2 x float> %i.al, <2 x float> %i.ai ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !14 ; 2 uses
  %i.aq = fcmp ogt float %.sroa.10.048, %i.ap
  %.sroa.speculated = select i1 %i.aq, float %i.ap, float %.sroa.10.048 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.as = load <2 x float>, ptr %i.ar, align 4, !tbaa !14 ; 2 uses
  %i.at = fcmp olt <2 x float> %i.aj, %i.as
  %i.au = select <2 x i1> %i.at, <2 x float> %i.as, <2 x float> %i.aj ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !14 ; 2 uses
  %i.ax = fcmp olt float %.sroa.21.047, %i.aw
  %i.ay = select i1 %i.ax, float %i.aw, float %.sroa.21.047 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.cont39
}

; Function Attrs: uwtable
define dso_local void @_ZN9btBvhTree10build_treeER18GIM_BVH_DATA_ARRAY(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 4)) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #4 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 3 uses
  %i.c = shl nsw i32 %i.b, 1                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34   ; 3 uses
  %i.f = icmp sgt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE6resizeEiRKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp slt i32 %i.h, %i.c
  br i1 %i.i, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !29
  br label %.lr.ph.i
end_hunk_0
