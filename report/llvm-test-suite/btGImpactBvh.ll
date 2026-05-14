inline.NumInlined: 456
inline.NumDeleted: 131
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%class.btAABB = type { %class.btVector3, %class.btVector3 }
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
  %5 = alloca %class.btVector3, align 8           ; 6 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = sub nsw i32 %3, %2                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = icmp slt i32 %2, %3                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.d, align 4
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 3 uses
  %i.g = sext i32 %2 to i64                       ; 5 uses
  %wide.trip.count = sext i32 %3 to i64           ; 3 uses
  %i.h = sub nsw i64 %wide.trip.count, %i.g
  %xtraiter = and i64 %i.h, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.i = getelementptr inbounds [36 x i8], ptr %i.f, i64 %i.g ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !14
  %i.o = fadd float %i.l, %i.n
  %i.p = load <2 x float>, ptr %i.j, align 4, !tbaa !14
  %i.q = load <2 x float>, ptr %i.i, align 4, !tbaa !14
  %i.r = fadd <2 x float> %i.p, %i.q
  %i.s = fmul <2 x float> %i.r, splat (float 5.000000e-01)
  %i.t = fmul float %i.o, 5.000000e-01
  %i.u = fadd <2 x float> %i.s, zeroinitializer   ; 2 uses
  %i.v = fadd float %i.t, 0.000000e+00            ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.g, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa101.unr = phi <2 x float> [ poison, %.lr.ph ], [ %i.u, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi float [ poison, %.lr.ph ], [ %i.v, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.unr = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.0.586368.unr = phi float [ 0.000000e+00, %.lr.ph ], [ %i.v, %.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.u, %.prol.loopexit.unr-lcssa ]
  %i.w = add nsw i64 %wide.trip.count, -1
  %i.x = icmp eq i64 %i.w, %i.g
  br i1 %i.x, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %.0.586368 = phi float [ %i.bb, %.lr.ph.new ], [ %.0.586368.unr, %.prol.loopexit ]
  %i.y = phi <2 x float> [ %i.ba, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.z = getelementptr inbounds [36 x i8], ptr %i.f, i64 %indvars.iv ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !14
  %i.af = fadd float %i.ac, %i.ae
  %i.ag = load <2 x float>, ptr %i.aa, align 4, !tbaa !14
  %i.ah = load <2 x float>, ptr %i.z, align 4, !tbaa !14
  %i.ai = fadd <2 x float> %i.ag, %i.ah
  %i.aj = fmul <2 x float> %i.ai, splat (float 5.000000e-01)
  %i.ak = fmul float %i.af, 5.000000e-01
  %i.al = fadd <2 x float> %i.y, %i.aj
  %i.am = fadd float %.0.586368, %i.ak
  %i.an = getelementptr [36 x i8], ptr %i.f, i64 %indvars.iv ; 4 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 36
  %i.ap = getelementptr i8, ptr %i.an, i64 52
  %i.aq = getelementptr i8, ptr %i.an, i64 60
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !14
  %i.as = getelementptr i8, ptr %i.an, i64 44
  %i.at = load float, ptr %i.as, align 4, !tbaa !14
  %i.au = fadd float %i.ar, %i.at
  %i.av = load <2 x float>, ptr %i.ap, align 4, !tbaa !14
  %i.aw = load <2 x float>, ptr %i.ao, align 4, !tbaa !14
  %i.ax = fadd <2 x float> %i.av, %i.aw
  %i.ay = fmul <2 x float> %i.ax, splat (float 5.000000e-01)
  %i.az = fmul float %i.au, 5.000000e-01
  %i.ba = fadd <2 x float> %i.al, %i.ay           ; 2 uses
  %i.bb = fadd float %i.am, %i.az                 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  %.0.5863.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.bb, %.lr.ph.new ]
  %i.bc = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.lcssa101.unr, %.prol.loopexit ], [ %i.ba, %.lr.ph.new ]
  %i.bd = sitofp i32 %i.a to float
  %i.be = fdiv float 1.000000e+00, %i.bd          ; 2 uses
  %i.bf = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %i.bg, %i.bc
  store <2 x float> %i.bh, ptr %5, align 8, !tbaa !14
  %i.bi = fmul float %i.be, %.0.5863.lcssa
  store float %i.bi, ptr %i.b, align 8, !tbaa !14
  %i.bj = sext i32 %4 to i64                      ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !14
  br i1 %i.c, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bo = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bj
  %i.bp = sext i32 %2 to i64
  %wide.trip.count90 = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph80, %bb.d
  %indvars.iv87 = phi i64 [ %i.bp, %.lr.ph80 ], [ %indvars.iv.next88, %bb.d ] ; 2 uses
  %.03777 = phi i32 [ %2, %.lr.ph80 ], [ %.138, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !8  ; 2 uses
  %i.br = getelementptr inbounds [36 x i8], ptr %i.bq, i64 %indvars.iv87 ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !14
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = load <2 x float>, ptr %i.bs, align 4, !tbaa !14
  %i.bz = load <2 x float>, ptr %i.br, align 4, !tbaa !14
  %i.ca = fadd <2 x float> %i.by, %i.bz
  %i.cb = fmul <2 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = fmul float %i.bx, 5.000000e-01
  %.sroa.3.12.vec.insert.i.i47 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cc, i64 0
  store <2 x float> %i.cb, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i47, ptr %i.bn, align 8
  %i.cd = load float, ptr %i.bo, align 4, !tbaa !14
  %i.ce = fcmp ogt float %i.cd, %i.bl
  br i1 %i.ce, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.i.sroa.0.0.copyload102 = load <16 x i8>, ptr %i.br, align 4, !tbaa !16
  %.sroa.0.i.sroa.0.0.vec.expand = shufflevector <16 x i8> %.sroa.0.i.sroa.0.0.copyload102, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0.i.sroa.0.16.copyload = load <16 x i8>, ptr %i.bs, align 4, !tbaa !16
  %.sroa.0.i.sroa.0.16.vec.expand = shufflevector <16 x i8> %.sroa.0.i.sroa.0.16.copyload, <16 x i8> poison, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.sroa.0.i.sroa.0.16.vecblend = shufflevector <32 x i8> %.sroa.0.i.sroa.0.0.vec.expand, <32 x i8> %.sroa.0.i.sroa.0.16.vec.expand, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !17
  %i.ch = sext i32 %.03777 to i64                 ; 2 uses
  %i.ci = getelementptr inbounds [36 x i8], ptr %i.bq, i64 %i.ch
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.br, ptr noundef nonnull align 4 dereferenceable(36) %i.ci, i64 36, i1 false), !tbaa.struct !21
  %i.cj = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.ck = getelementptr inbounds [36 x i8], ptr %i.cj, i64 %i.ch ; 2 uses
  store <32 x i8> %.sroa.0.i.sroa.0.16.vecblend, ptr %i.ck, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i32 %i.cg, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !4
  %i.cl = add nsw i32 %.03777, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.138 = phi i32 [ %i.cl, %bb.c ], [ %.03777, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %._crit_edge81, label %bb.b

._crit_edge81:                                    ; preds = %bb.d, %._crit_edge
  %.037.lcssa = phi i32 [ %2, %._crit_edge ], [ %.138, %bb.d ] ; 3 uses
  %i.cm = sdiv i32 %i.a, 3                        ; 2 uses
  %i.cn = add nsw i32 %i.cm, %2
  %.not = icmp sle i32 %.037.lcssa, %i.cn
  %i.co = xor i32 %i.cm, -1
  %i.cp = add i32 %3, %i.co
  %i.cq = icmp sge i32 %.037.lcssa, %i.cp
  %i.cr = or i1 %.not, %i.cq
  %i.cs = ashr i32 %i.a, 1
  %i.ct = add nsw i32 %i.cs, %2
  %.2 = select i1 %i.cr, i32 %i.ct, i32 %.037.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i32 %.2
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9btBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !22     ; 4 uses
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr %0, align 8, !tbaa !22
  %i.c = sub nsw i32 %3, %2
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = sext i32 %2 to i64                       ; 2 uses
  %i.h = getelementptr inbounds [36 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = sext i32 %i.a to i64                     ; 2 uses
  %i.l = getelementptr inbounds [36 x i8], ptr %i.j, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.l, ptr noundef nonnull align 4 dereferenceable(32) %i.h, i64 32, i1 false), !tbaa.struct !29
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.n = getelementptr inbounds [36 x i8], ptr %i.m, i64 %i.k
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.p = getelementptr inbounds [36 x i8], ptr %i.o, i64 %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17
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
  store i32 %.sink, ptr %i.y, align 4, !tbaa !30
  ret void

._crit_edge:                                      ; preds = %.cont39, %bb.c
  %.sroa.21.0.lcssa = phi float [ f0xFF7FFFFF, %bb.c ], [ %i.ay, %.cont39 ]
  %.sroa.10.0.lcssa = phi float [ f0x7F7FFFFF, %bb.c ], [ %.sroa.speculated, %.cont39 ]
  %i.z = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.c ], [ %i.an, %.cont39 ]
  %i.aa = phi <2 x float> [ splat (float f0xFF7FFFFF), %bb.c ], [ %i.au, %.cont39 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28
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
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !28
  %i.ag = getelementptr inbounds [36 x i8], ptr %i.af, i64 %i.ad
  %i.ah = load i32, ptr %0, align 8, !tbaa !22
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
  store i32 0, ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 3 uses
  %i.c = shl nsw i32 %i.b, 1                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !33   ; 3 uses
  %i.f = icmp sgt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE6resizeEiRKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !34
  %i.i = icmp slt i32 %i.h, %i.c
  br i1 %i.i, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !28
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sext i32 %i.c to i64
  %i.k = mul nsw i64 %i.j, 36
  %i.l = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.k, i32 noundef 16)
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !33
  br label %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.m = phi i32 [ %.pre.i, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.l, %bb.d ], [ null, %bb.c ] ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE8allocateEi.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.trip.count.i.i.i = zext nneg i32 %i.m to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.e ] ; 3 uses
  %i.p = getelementptr inbounds nuw [36 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw [36 x i8], ptr %i.q, i64 %indvars.iv.i.i.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.p, ptr noundef nonnull align 4 dereferenceable(36) %i.r, i64 16, i1 false), !tbaa.struct !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !30
  store i32 %i.w, ptr %i.u, align 4, !tbaa !30
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNK20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE4copyEiiPS0_.exit.i.i, label %bb.e

_ZNK20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE4copyEiiPS0_.exit.i.i: ; preds = %bb.e, %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE8allocateEi.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28   ; 2 uses
  %.not.i5.i.i = icmp ne ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !range !36
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond.i.i = select i1 %.not.i5.i.i, i1 %i.ab, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE4copyEiiPS0_.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.y)
  br label %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.z, align 8, !tbaa !37
  store ptr %.0.i.i.i, ptr %i.x, align 8, !tbaa !28
  store i32 %i.c, ptr %i.g, align 8, !tbaa !34
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE10deallocateEv.exit.i.i
  %i.ac = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i.i.i, %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE10deallocateEv.exit.i.i ] ; 9 uses
  %i.ad = sext i32 %i.e to i64                    ; 4 uses
  %wide.trip.count.i = sext i32 %i.c to i64       ; 3 uses
  %i.ae = sub nsw i64 %wide.trip.count.i, %i.ad
  %xtraiter = and i64 %i.ae, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.ad, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.af = getelementptr inbounds [36 x i8], ptr %i.ac, i64 %indvars.iv.i.prol
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 0, ptr %i.ag, align 4, !tbaa !30
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !38

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.ad, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.ah = sub nsw i64 %i.ad, %wide.trip.count.i
  %i.ai = icmp ugt i64 %i.ah, -8
  br i1 %i.ai, label %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE6resizeEiRKS0_.exit.loopexit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 9 uses
  %i.aj = getelementptr inbounds [36 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i32 0, ptr %i.ak, align 4, !tbaa !30
  %i.al = getelementptr [36 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.am = getelementptr i8, ptr %i.al, i64 68
  store i32 0, ptr %i.am, align 4, !tbaa !30
  %i.an = getelementptr [36 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ao = getelementptr i8, ptr %i.an, i64 104
  store i32 0, ptr %i.ao, align 4, !tbaa !30
  %i.ap = getelementptr [36 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 140
  store i32 0, ptr %i.aq, align 4, !tbaa !30
  %i.ar = getelementptr [36 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.as = getelementptr i8, ptr %i.ar, i64 176
  store i32 0, ptr %i.as, align 4, !tbaa !30
  %i.at = getelementptr [36 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.au = getelementptr i8, ptr %i.at, i64 212
  store i32 0, ptr %i.au, align 4, !tbaa !30
  %i.av = getelementptr [36 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.aw = getelementptr i8, ptr %i.av, i64 248
  store i32 0, ptr %i.aw, align 4, !tbaa !30
  %i.ax = getelementptr [36 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 284
  store i32 0, ptr %i.ay, align 4, !tbaa !30
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE6resizeEiRKS0_.exit.loopexit, label %.lr.ph.i.new

_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE6resizeEiRKS0_.exit.loopexit: ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.pre4 = load i32, ptr %i.a, align 4, !tbaa !32
  br label %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE6resizeEiRKS0_.exit: ; preds = %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE6resizeEiRKS0_.exit.loopexit, %bb.a
  %i.az = phi i32 [ %.pre4, %_ZN20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE6resizeEiRKS0_.exit.loopexit ], [ %i.b, %bb.a ]
  store i32 %i.c, ptr %i.d, align 4, !tbaa !33
  tail call void @_ZN9btBvhTree15_build_sub_treeER18GIM_BVH_DATA_ARRAYii(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i32 noundef 0, i32 noundef %i.az)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN12btGImpactBvh5refitEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %class.btAABB, align 4              ; 4 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %.not89 = icmp eq i32 %i.a, 0
  br i1 %.not89, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = sext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !28   ; 3 uses
  %i.f = getelementptr inbounds [36 x i8], ptr %i.e, i64 %indvars.iv.next ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !30   ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(32) %1)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.o = getelementptr inbounds [36 x i8], ptr %i.n, i64 %indvars.iv.next
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.o, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds [36 x i8], ptr %i.e, i64 %indvars.iv ; 5 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4 ; 2 uses
  %.sroa.1448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.20.0.copyload = load float, ptr %.sroa.20.0..sroa_idx, align 4 ; 2 uses
  %i.q = load <2 x float>, ptr %i.p, align 4      ; 2 uses
  %i.r = fcmp olt <2 x float> %i.q, splat (float f0x7F7FFFFF)
  %i.s = select <2 x i1> %i.r, <2 x float> %i.q, <2 x float> splat (float f0x7F7FFFFF) ; 3 uses
  %i.t = fcmp olt float %.sroa.10.0.copyload, f0x7F7FFFFF
  %.sroa.speculated74 = select i1 %i.t, float %.sroa.10.0.copyload, float f0x7F7FFFFF ; 3 uses
  %i.u = load <2 x float>, ptr %.sroa.1448.0..sroa_idx, align 4 ; 2 uses
  %i.v = fcmp ogt <2 x float> %i.u, splat (float f0xFF7FFFFF)
  %i.w = select <2 x i1> %i.v, <2 x float> %i.u, <2 x float> splat (float f0xFF7FFFFF) ; 3 uses
  %i.x = fcmp ogt float %.sroa.20.0.copyload, f0xFF7FFFFF
  %.sroa.speculated62 = select i1 %i.x, float %.sroa.20.0.copyload, float f0xFF7FFFFF ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.z = load i32, ptr %i.y, align 4, !tbaa !30   ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  %i.ab = sub i32 0, %i.z
  %.0.i.i.p = select i1 %i.aa, i32 %i.ab, i32 1
  %i.ac = trunc nsw i64 %indvars.iv to i32
  %.0.i.i = add i32 %.0.i.i.p, %i.ac              ; 2 uses
  %.not14 = icmp eq i32 %.0.i.i, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sext i32 %.0.i.i to i64
  %i.ae = getelementptr inbounds [36 x i8], ptr %i.e, i64 %i.ad ; 4 uses
  %.sroa.10.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.10.0.copyload44 = load float, ptr %.sroa.10.0..sroa_idx43, align 4 ; 2 uses
  %.sroa.1448.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.20.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.20.0.copyload56 = load float, ptr %.sroa.20.0..sroa_idx55, align 4 ; 2 uses
  %i.af = load <2 x float>, ptr %i.ae, align 4    ; 2 uses
  %i.ag = fcmp ogt <2 x float> %i.s, %i.af
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.af, <2 x float> %i.s
  %i.ai = fcmp ogt float %.sroa.speculated74, %.sroa.10.0.copyload44
  %.sroa.speculated71 = select i1 %i.ai, float %.sroa.10.0.copyload44, float %.sroa.speculated74
  %i.aj = load <2 x float>, ptr %.sroa.1448.0..sroa_idx49, align 4 ; 2 uses
  %i.ak = fcmp olt <2 x float> %i.w, %i.aj
  %i.al = select <2 x i1> %i.ak, <2 x float> %i.aj, <2 x float> %i.w
  %i.am = fcmp olt float %.sroa.speculated62, %.sroa.20.0.copyload56
  %.sroa.speculated = select i1 %i.am, float %.sroa.20.0.copyload56, float %.sroa.speculated62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.34.1 = phi float [ %.sroa.speculated62, %bb.d ], [ %.sroa.speculated, %bb.e ]
  %.sroa.15.1 = phi float [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated71, %bb.e ]
  %i.an = phi <2 x float> [ %i.s, %bb.d ], [ %i.ah, %bb.e ]
  %i.ao = phi <2 x float> [ %i.w, %bb.d ], [ %i.al, %bb.e ]
  store <2 x float> %i.an, ptr %i.f, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store float %.sroa.15.1, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.2285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x float> %i.ao, ptr %.sroa.2285.0..sroa_idx, align 4
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store float %.sroa.34.1, ptr %.sroa.34.0..sroa_idx, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN12btGImpactBvh8buildSetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.GIM_BVH_DATA_ARRAY, align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  store i8 1, ptr %i.a, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  store i32 0, ptr %i.c, align 4, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.b unwind label %bb.f       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %i.j to i64
  %i.m = mul nuw nsw i64 %i.l, 36
  %i.n = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.m, i32 noundef 16)
          to label %.lr.ph.i unwind label %bb.g   ; 11 uses

.lr.ph.i:                                         ; preds = %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !45
  store ptr %i.n, ptr %i.b, align 8, !tbaa !8
  store i32 %i.j, ptr %i.d, align 8, !tbaa !46
  %wide.trip.count.i = zext nneg i32 %i.j to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.o = icmp ult i32 %i.j, 8
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.d ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.d ]
  %i.p = getelementptr inbounds nuw [36 x i8], ptr %i.n, i64 %indvars.iv.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.p, i8 0, i64 36, i1 false)
  %i.q = getelementptr inbounds nuw [36 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.r, i8 0, i64 36, i1 false)
  %i.s = getelementptr inbounds nuw [36 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.t, i8 0, i64 36, i1 false)
  %i.u = getelementptr inbounds nuw [36 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.v, i8 0, i64 36, i1 false)
  %i.w = getelementptr inbounds nuw [36 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.x, i8 0, i64 36, i1 false)
  %i.y = getelementptr inbounds nuw [36 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.z, i8 0, i64 36, i1 false)
  %i.aa = getelementptr inbounds nuw [36 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ab, i8 0, i64 36, i1 false)
  %i.ac = getelementptr inbounds nuw [36 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 252
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ad, i8 0, i64 36, i1 false)
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.preheader.unr-lcssa, label %bb.d

.loopexit:                                        ; preds = %bb.b
  store i32 %i.j, ptr %i.c, align 4, !tbaa !32
  br label %._crit_edge

.lr.ph.preheader.unr-lcssa:                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %.lr.ph.preheader.unr-lcssa ]
  %lcmp.mod22 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod22)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ae = getelementptr inbounds nuw [36 x i8], ptr %i.n, i64 %indvars.iv.i.epil
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ae, i8 0, i64 36, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %bb.e, !llvm.loop !47

.lr.ph.preheader:                                 ; preds = %bb.e, %.lr.ph.preheader.unr-lcssa
  store i32 %i.j, ptr %i.c, align 4, !tbaa !32
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %.loopexit
  invoke void @_ZN9btBvhTree10build_treeER18GIM_BVH_DATA_ARRAY(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.j unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.ai = phi ptr [ %i.n, %.lr.ph.preheader ], [ %i.ap, %bb.i ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !40  ; 2 uses
  %i.ak = getelementptr inbounds nuw [36 x i8], ptr %i.ai, i64 %indvars.iv
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i32 noundef %i.ao, ptr noundef nonnull align 4 dereferenceable(32) %i.ak)
          to label %bb.i unwind label %bb.h

bb.i:                                             ; preds = %.lr.ph
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.aq = getelementptr inbounds nuw [36 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i32 %i.ao, ptr %i.ar, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i32, ptr %i.c, align 4, !tbaa !32
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %.lr.ph, label %._crit_edge

bb.j:                                             ; preds = %._crit_edge
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %.not.i.i.i12 = icmp ne ptr %i.av, null
  %i.aw = load i8, ptr %i.a, align 8, !range !36
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond.i.i13 = select i1 %.not.i.i.i12, i1 %i.ax, i1 false
  br i1 %or.cond.i.i13, label %bb.k, label %_ZN20btAlignedObjectArrayI12GIM_BVH_DATAED2Ev.exit

bb.k:                                             ; preds = %bb.j
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.av)
  br label %_ZN20btAlignedObjectArrayI12GIM_BVH_DATAED2Ev.exit

_ZN20btAlignedObjectArrayI12GIM_BVH_DATAED2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.af, %bb.f ], [ %i.ag, %bb.g ]
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %.not.i.i.i14 = icmp ne ptr %i.ay, null
  %i.az = load i8, ptr %i.a, align 8, !range !36
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i.i15 = select i1 %.not.i.i.i14, i1 %i.ba, i1 false
  br i1 %or.cond.i.i15, label %bb.m, label %_ZN20btAlignedObjectArrayI12GIM_BVH_DATAED2Ev.exit17

bb.m:                                             ; preds = %bb.l
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ay)
          to label %_ZN20btAlignedObjectArrayI12GIM_BVH_DATAED2Ev.exit17 unwind label %bb.n

_ZN20btAlignedObjectArrayI12GIM_BVH_DATAED2Ev.exit17: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #14
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZNK12btGImpactBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(25) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.01939 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.k ] ; 3 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.l = zext nneg i32 %.01939 to i64
  %i.m = getelementptr inbounds nuw [36 x i8], ptr %i.k, i64 %i.l ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.620.0.copyload = load float, ptr %.sroa.620.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.n = load float, ptr %1, align 4
  %i.o = fcmp olt float %.sroa.620.0.copyload, %i.n
  %i.p = load float, ptr %i.f, align 4
  %i.q = fcmp ogt float %.sroa.5.0.copyload, %i.p
  %i.r = load <2 x float>, ptr %i.m, align 4
  %i.s = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4
  %i.t = load <2 x float>, ptr %i.d, align 4
  %i.u = load <2 x float>, ptr %i.e, align 4
  %i.v = shufflevector <2 x float> %i.s, <2 x float> %i.t, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.w = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.x = fcmp olt <4 x float> %i.v, %i.w
  %i.y = freeze <4 x i1> %i.x
  %i.z = bitcast <4 x i1> %i.y to i4
  %i.aa = icmp ne i4 %i.z, 0
  %.fr = freeze i1 %i.o
  %op.rdx = or i1 %i.aa, %.fr
  %op.rdx50 = select i1 %op.rdx, i1 true, i1 %i.q
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !30 ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, -1                  ; 2 uses
  br i1 %op.rdx50, label %bb.i, label %_ZNK6btAABB13has_collisionERKS_.exit

_ZNK6btAABB13has_collisionERKS_.exit:             ; preds = %bb.b
  br i1 %i.ad, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZNK6btAABB13has_collisionERKS_.exit
  %i.ae = load i32, ptr %i.g, align 4, !tbaa !48  ; 7 uses
  %i.af = load i32, ptr %i.h, align 8, !tbaa !52
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %i.ae, 0
  %i.ah = shl nsw i32 %i.ae, 1
  %i.ai = select i1 %.not.i.i, i32 1, i32 %i.ah   ; 4 uses
  %i.aj = icmp slt i32 %i.ae, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = sext i32 %i.ai to i64
  %i.al = shl nsw i64 %i.ak, 2
  %i.am = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.al, i32 noundef 16)
  %.pre.i = load i32, ptr %i.g, align 4, !tbaa !48
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.f, %bb.e
  %i.an = phi i32 [ %.pre.i, %bb.f ], [ %i.ae, %bb.e ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.am, %bb.f ], [ null, %bb.e ] ; 8 uses
  %i.ao = icmp sgt i32 %i.an, 0
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !53  ; 9 uses
  br i1 %i.ao, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %.0.i.i.i47 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.an to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.an, 8
  %i.ar = sub i64 %.0.i.i.i47, %i.aq
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond49 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond49, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <4 x i32>, ptr %i.at, align 4, !tbaa !4
  %wide.load48 = load <4 x i32>, ptr %i.au, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <4 x i32> %wide.load, ptr %i.as, align 4, !tbaa !4
  store <4 x i32> %wide.load48, ptr %i.av, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i.prol
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !57

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ba = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.1
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.2
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph, !llvm.loop !58

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.bo = load i8, ptr %i.j, align 8, !tbaa !59, !range !36, !noundef !60
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ap)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  %.pre2.pre.i = load i32, ptr %i.g, align 4, !tbaa !48
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.h, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %.pre2.i = phi i32 [ %.pre2.pre.i, %bb.h ], [ %i.an, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ]
  store i8 1, ptr %i.j, align 8, !tbaa !59
  store ptr %.0.i.i.i, ptr %i.i, align 8, !tbaa !53
  store i32 %i.ai, ptr %i.h, align 8, !tbaa !52
  br label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

_ZN20btAlignedObjectArrayIiE9push_backERKi.exit:  ; preds = %bb.c, %bb.d, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.bq = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.ae, %bb.d ], [ %i.ae, %bb.c ]
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  store i32 %i.ac, ptr %i.bt, align 4, !tbaa !4
  %i.bu = load i32, ptr %i.g, align 4, !tbaa !48
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.g, align 4, !tbaa !48
  br label %.thread

bb.i:                                             ; preds = %bb.b
  br i1 %i.ad, label %.thread, label %bb.j

.thread:                                          ; preds = %_ZNK6btAABB13has_collisionERKS_.exit, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit, %bb.i
  %i.bw = add nuw nsw i32 %.01939, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bx = sub nsw i32 %.01939, %i.ac
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread
  %.1 = phi i32 [ %i.bw, %.thread ], [ %i.bx, %bb.j ] ; 2 uses
  %i.by = icmp slt i32 %.1, %i.a
  br i1 %i.by, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !48
  %i.cb = icmp sgt i32 %i.ca, 0
  ret i1 %i.cb
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZNK12btGImpactBvh8rayQueryERK9btVector3S2_R20btAlignedObjectArrayIiE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 8 captures(none) dereferenceable(25) %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.02025 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.q ] ; 3 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.m = sext i32 %.02025 to i64                  ; 2 uses
  %i.n = getelementptr inbounds [36 x i8], ptr %i.l, i64 %i.m ; 8 uses
  %.sroa.0.0.copyload = load float, ptr %i.n, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.621.0.copyload = load float, ptr %.sroa.621.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %i.o = fadd float %.sroa.0.0.copyload, %.sroa.621.0.copyload
  %i.p = fadd float %.sroa.4.0.copyload, %.sroa.7.0.copyload
  %i.q = fadd float %.sroa.5.0.copyload, %.sroa.8.0.copyload
  %i.r = fmul float %i.o, 5.000000e-01            ; 2 uses
  %i.s = fmul float %i.p, 5.000000e-01            ; 2 uses
  %i.t = fmul float %i.q, 5.000000e-01            ; 2 uses
  %i.u = fsub float %.sroa.621.0.copyload, %i.r   ; 3 uses
  %i.v = fsub float %.sroa.7.0.copyload, %i.s     ; 3 uses
  %i.w = fsub float %.sroa.8.0.copyload, %i.t     ; 3 uses
  %i.x = load float, ptr %2, align 4, !tbaa !14
  %i.y = fsub float %i.x, %i.r                    ; 4 uses
  %i.z = tail call noundef float @llvm.fabs.f32(float %i.y)
  %i.aa = fcmp ogt float %i.z, %i.u
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = load float, ptr %1, align 4, !tbaa !14
  %i.ac = fmul float %i.y, %i.ab
  %i.ad = fcmp ult float %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.d, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ae = load float, ptr %i.d, align 4, !tbaa !14
  %i.af = fsub float %i.ae, %i.s                  ; 4 uses
  %i.ag = tail call noundef float @llvm.fabs.f32(float %i.af)
  %i.ah = fcmp ogt float %i.ag, %i.v
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = load float, ptr %i.e, align 4, !tbaa !14
  %i.aj = fmul float %i.af, %i.ai
  %i.ak = fcmp ult float %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.f, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.al = load float, ptr %i.f, align 4, !tbaa !14
  %i.am = fsub float %i.al, %i.t                  ; 4 uses
  %i.an = tail call noundef float @llvm.fabs.f32(float %i.am)
  %i.ao = fcmp ule float %i.an, %i.w
  %i.ap = load float, ptr %i.g, align 4, !tbaa !14 ; 4 uses
  %i.aq = fmul float %i.am, %i.ap
  %i.ar = fcmp ult float %i.aq, 0.000000e+00
  %or.cond.i = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i, label %._crit_edge.i, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread

._crit_edge.i:                                    ; preds = %bb.f
  %i.as = load float, ptr %i.e, align 4, !tbaa !14 ; 3 uses
  %i.at = fneg float %i.af
  %i.au = fmul float %i.ap, %i.at
  %i.av = tail call float @llvm.fmuladd.f32(float %i.as, float %i.am, float %i.au)
  %i.aw = tail call noundef float @llvm.fabs.f32(float %i.av)
  %i.ax = tail call noundef float @llvm.fabs.f32(float %i.ap) ; 2 uses
  %i.ay = tail call noundef float @llvm.fabs.f32(float %i.as) ; 2 uses
  %i.az = fmul float %i.w, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.v, float %i.ax, float %i.az)
  %i.bb = fcmp ogt float %i.aw, %i.ba
  br i1 %i.bb, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.bc = load float, ptr %1, align 4, !tbaa !14  ; 3 uses
  %i.bd = fneg float %i.am
  %i.be = fmul float %i.bc, %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.y, float %i.be)
  %i.bg = tail call noundef float @llvm.fabs.f32(float %i.bf)
  %i.bh = tail call noundef float @llvm.fabs.f32(float %i.bc) ; 2 uses
  %i.bi = fmul float %i.w, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.u, float %i.ax, float %i.bi)
  %i.bk = fcmp ogt float %i.bg, %i.bj
  br i1 %i.bk, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread, label %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit

_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread: ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %._crit_edge.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !30
  %i.bn = icmp sgt i32 %i.bm, -1
  br label %bb.n

_ZNK6btAABB11collide_rayERK9btVector3S2_.exit:    ; preds = %bb.g
  %i.bo = fneg float %i.y
  %i.bp = fmul float %i.as, %i.bo
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.af, float %i.bp)
  %i.br = tail call noundef float @llvm.fabs.f32(float %i.bq)
  %i.bs = fmul float %i.v, %i.bh
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.u, float %i.ay, float %i.bs)
  %i.bu = fcmp ule float %i.br, %i.bt             ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !30 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, -1                  ; 2 uses
  %or.cond = and i1 %i.bu, %i.bx
  br i1 %or.cond, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit
  %i.by = load i32, ptr %i.h, align 4, !tbaa !48  ; 7 uses
  %i.bz = load i32, ptr %i.i, align 8, !tbaa !52
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i32 %i.by, 0
  %i.cb = shl nsw i32 %i.by, 1
  %i.cc = select i1 %.not.i.i, i32 1, i32 %i.cb   ; 4 uses
  %i.cd = icmp slt i32 %i.by, %i.cc
  br i1 %i.cd, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = sext i32 %i.cc to i64
  %i.cf = shl nsw i64 %i.ce, 2
  %i.cg = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cf, i32 noundef 16)
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !48
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.k, %bb.j
  %i.ch = phi i32 [ %.pre.i, %bb.k ], [ %i.by, %bb.j ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.cg, %bb.k ], [ null, %bb.j ] ; 8 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  %i.cj = load ptr, ptr %i.j, align 8, !tbaa !53  ; 9 uses
  br i1 %i.ci, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.ck = ptrtoaddr ptr %i.cj to i64
  %.0.i.i.i34 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.ch to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ch, 8
  %i.cl = sub i64 %.0.i.i.i34, %i.ck
  %diff.check = icmp ult i64 %i.cl, 32
  %or.cond36 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond36, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load = load <4 x i32>, ptr %i.cn, align 4, !tbaa !4
  %wide.load35 = load <4 x i32>, ptr %i.co, align 4, !tbaa !4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <4 x i32> %wide.load, ptr %i.cm, align 4, !tbaa !4
  store <4 x i32> %wide.load35, ptr %i.cp, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i.prol
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !4
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !62

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.cu = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.cv = icmp ugt i64 %i.cu, -4
  br i1 %i.cv, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next.i.i.i
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next.i.i.i.1
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !4
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.next.i.i.i.2
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i, label %scalar.ph, !llvm.loop !63

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.di = load i8, ptr %i.k, align 8, !tbaa !59, !range !36, !noundef !60
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cj)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
  %.pre2.pre.i = load i32, ptr %i.h, align 4, !tbaa !48
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.m, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %.pre2.i = phi i32 [ %.pre2.pre.i, %bb.m ], [ %i.ch, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i ]
  store i8 1, ptr %i.k, align 8, !tbaa !59
  store ptr %.0.i.i.i, ptr %i.j, align 8, !tbaa !53
  store i32 %i.cc, ptr %i.i, align 8, !tbaa !52
  br label %.thread

.thread:                                          ; preds = %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i, %bb.i, %bb.h
  %i.dk = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.by, %bb.i ], [ %i.by, %bb.h ]
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.dm = sext i32 %i.dk to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.dm
  store i32 %i.bw, ptr %i.dn, align 4, !tbaa !4
  %i.do = load i32, ptr %i.h, align 4, !tbaa !48
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.h, align 4, !tbaa !48
  br label %bb.o

bb.n:                                             ; preds = %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread, %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit
  %i.dq = phi i1 [ %i.bn, %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread ], [ %i.bx, %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit ]
  %.3.i24 = phi i1 [ false, %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit.thread ], [ %i.bu, %_ZNK6btAABB11collide_rayERK9btVector3S2_.exit ]
  %or.cond3 = or i1 %i.dq, %.3.i24
  br i1 %or.cond3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread, %bb.n
  %i.dr = add nsw i32 %.02025, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.dt = getelementptr inbounds [36 x i8], ptr %i.ds, i64 %i.m
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !30
  %i.dw = sub nsw i32 %.02025, %i.dv
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1 = phi i32 [ %i.dr, %bb.o ], [ %i.dw, %bb.p ] ; 2 uses
  %i.dx = icmp slt i32 %.1, %i.a
  br i1 %i.dx, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q, %bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !48
  %i.ea = icmp sgt i32 %i.dz, 0
  ret i1 %i.ea
}

; Function Attrs: uwtable
define dso_local void @_ZN12btGImpactBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet(ptr noundef %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(25) %4) local_unnamed_addr #8 align 2 {
bb.a:
  %5 = alloca %class.BT_BOX_BOX_TRANSFORM_CACHE, align 8 ; 26 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !22
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 8, !tbaa !22
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load float, ptr %1, align 4, !tbaa !14, !noalias !64 ; 5 uses
  %i.n = load float, ptr %i.e, align 4, !tbaa !14, !noalias !64 ; 5 uses
  %i.o = load float, ptr %i.f, align 4, !tbaa !14, !noalias !64 ; 5 uses
  %i.p = load float, ptr %i.g, align 4, !tbaa !14, !noalias !64 ; 5 uses
  %i.q = load float, ptr %i.h, align 4, !tbaa !14, !noalias !64 ; 5 uses
  %i.r = load float, ptr %i.i, align 4, !tbaa !14, !noalias !64 ; 5 uses
  %i.s = load float, ptr %i.j, align 4, !tbaa !14, !noalias !64 ; 5 uses
  %i.t = load float, ptr %i.k, align 4, !tbaa !14, !noalias !64 ; 5 uses
  %i.u = load float, ptr %i.l, align 4, !tbaa !14, !noalias !64 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load float, ptr %i.v, align 4, !tbaa !14, !noalias !69
  %i.x = fneg float %i.w                          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.z = load float, ptr %i.y, align 4, !tbaa !14, !noalias !69
  %i.aa = fneg float %i.z                         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !14, !noalias !69
  %i.ad = fneg float %i.ac                        ; 3 uses
  %i.ae = fmul float %i.n, %i.aa
  %i.af = tail call float @llvm.fmuladd.f32(float %i.m, float %i.x, float %i.ae)
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.ad, float %i.af)
  %i.ah = fmul float %i.q, %i.aa
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.p, float %i.x, float %i.ah)
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.r, float %i.ad, float %i.ai)
  %i.ak = fmul float %i.t, %i.aa
  %i.al = tail call float @llvm.fmuladd.f32(float %i.s, float %i.x, float %i.ak)
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %i.ad, float %i.al)
  %i.an = load float, ptr %3, align 4, !tbaa !14, !noalias !70 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !14, !noalias !70 ; 3 uses
  %i.aq = fmul float %i.n, %i.ap
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.an, float %i.m, float %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.at = load float, ptr %i.as, align 4, !tbaa !14, !noalias !70 ; 3 uses
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.at, float %i.o, float %i.ar) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !14, !noalias !70 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !14, !noalias !70 ; 3 uses
  %i.az = fmul float %i.n, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.m, float %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !14, !noalias !70 ; 3 uses
  %i.bd = tail call noundef float @llvm.fmuladd.f32(float %i.bc, float %i.o, float %i.ba) ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !14, !noalias !70 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !14, !noalias !70 ; 3 uses
  %i.bi = fmul float %i.n, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.m, float %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !14, !noalias !70 ; 3 uses
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.o, float %i.bj) ; 2 uses
  %i.bn = fmul float %i.q, %i.ap
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.an, float %i.p, float %i.bn)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.at, float %i.r, float %i.bo) ; 2 uses
  %i.bq = fmul float %i.q, %i.ay
  %i.br = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.p, float %i.bq)
  %i.bs = tail call noundef float @llvm.fmuladd.f32(float %i.bc, float %i.r, float %i.br) ; 2 uses
  %i.bt = fmul float %i.q, %i.bh
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.p, float %i.bt)
  %i.bv = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.r, float %i.bu) ; 2 uses
  %i.bw = fmul float %i.t, %i.ap
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.an, float %i.s, float %i.bw)
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.at, float %i.u, float %i.bx) ; 2 uses
  %i.bz = fmul float %i.t, %i.ay
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.s, float %i.bz)
  %i.cb = tail call noundef float @llvm.fmuladd.f32(float %i.bc, float %i.u, float %i.ca) ; 2 uses
  %i.cc = fmul float %i.t, %i.bh
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.s, float %i.cc)
  %i.ce = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.u, float %i.cd) ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !14, !noalias !75 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !14, !noalias !75 ; 3 uses
  %i.cj = fmul float %i.n, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.m, float %i.cg, float %i.cj)
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !14, !noalias !75 ; 3 uses
  %i.cn = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.cm, float %i.ck)
  %i.co = fadd float %i.ag, %i.cn
  %i.cp = fmul float %i.q, %i.ci
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.p, float %i.cg, float %i.cp)
  %i.cr = tail call noundef float @llvm.fmuladd.f32(float %i.r, float %i.cm, float %i.cq)
  %i.cs = fadd float %i.aj, %i.cr
  %i.ct = fmul float %i.t, %i.ci
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.s, float %i.cg, float %i.ct)
  %i.cv = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %i.cm, float %i.cu)
  %i.cw = fadd float %i.am, %i.cv
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.co, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.cs, i64 1
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cw, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %5, align 8
  %.sroa.43.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.43.48..sroa_idx.i, align 8, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store float %i.au, ptr %i.cx, align 8
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %i.bd, ptr %.sroa.65.0..sroa_idx.i, align 4
  %.sroa.96.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %i.bm, ptr %.sroa.96.0..sroa_idx.i, align 8
  %.sroa.127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float 0.000000e+00, ptr %.sroa.127.0..sroa_idx.i, align 4, !tbaa !16
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %i.bp, ptr %i.cy, align 8
  %.sroa.18.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 36
  store float %i.bs, ptr %.sroa.18.16..sroa_idx.i, align 4
  %.sroa.21.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store float %i.bv, ptr %.sroa.21.16..sroa_idx.i, align 8
  %.sroa.24.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 44
  store float 0.000000e+00, ptr %.sroa.24.16..sroa_idx.i, align 4, !tbaa !16
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 48
  store float %i.by, ptr %i.cz, align 8
  %.sroa.30.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 52
  store float %i.cb, ptr %.sroa.30.32..sroa_idx.i, align 4
  %.sroa.33.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store float %i.ce, ptr %.sroa.33.32..sroa_idx.i, align 8
  %.sroa.36.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 60
  store float 0.000000e+00, ptr %.sroa.36.32..sroa_idx.i, align 4, !tbaa !16
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.db = tail call noundef float @llvm.fabs.f32(float %i.au)
  %i.dc = fadd float %i.db, f0x358637BD
  store float %i.dc, ptr %i.da, align 8, !tbaa !14
  %i.dd = tail call noundef float @llvm.fabs.f32(float %i.bd)
  %i.de = fadd float %i.dd, f0x358637BD
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 68
  store float %i.de, ptr %i.df, align 4, !tbaa !14
  %i.dg = tail call noundef float @llvm.fabs.f32(float %i.bm)
  %i.dh = fadd float %i.dg, f0x358637BD
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 72
  store float %i.dh, ptr %i.di, align 8, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.dk = tail call noundef float @llvm.fabs.f32(float %i.bp)
  %i.dl = fadd float %i.dk, f0x358637BD
  store float %i.dl, ptr %i.dj, align 8, !tbaa !14
  %i.dm = tail call noundef float @llvm.fabs.f32(float %i.bs)
  %i.dn = fadd float %i.dm, f0x358637BD
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 84
  store float %i.dn, ptr %i.do, align 4, !tbaa !14
  %i.dp = tail call noundef float @llvm.fabs.f32(float %i.bv)
  %i.dq = fadd float %i.dp, f0x358637BD
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 88
  store float %i.dq, ptr %i.dr, align 8, !tbaa !14
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.dt = tail call noundef float @llvm.fabs.f32(float %i.by)
  %i.du = fadd float %i.dt, f0x358637BD
  store float %i.du, ptr %i.ds, align 8, !tbaa !14
  %i.dv = tail call noundef float @llvm.fabs.f32(float %i.cb)
  %i.dw = fadd float %i.dv, f0x358637BD
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 100
  store float %i.dw, ptr %i.dx, align 4, !tbaa !14
  %i.dy = tail call noundef float @llvm.fabs.f32(float %i.ce)
  %i.dz = fadd float %i.dy, f0x358637BD
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 104
  store float %i.dz, ptr %i.ea, align 8, !tbaa !14
  call fastcc void @_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(112) %5, i32 noundef 0, i32 noundef 0, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: uwtable
define internal fastcc void @_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #4 {
bb.a:
  %7 = alloca %class.btAABB, align 4              ; 4 uses
  %8 = alloca %class.btAABB, align 4              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = sext i32 %4 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [36 x i8], ptr %i.b, i64 %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(32) %i.d, i64 32, i1 false), !tbaa.struct !29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = sext i32 %5 to i64                       ; 2 uses
  %i.h = getelementptr inbounds [36 x i8], ptr %i.f, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %8, ptr noundef nonnull align 4 dereferenceable(32) %i.h, i64 32, i1 false), !tbaa.struct !29
  %i.i = call noundef zeroext i1 @_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(32) %8, ptr noundef nonnull align 4 dereferenceable(112) %3, i1 noundef zeroext %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br i1 %i.i, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.k = getelementptr inbounds [36 x i8], ptr %i.j, i64 %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 4, !tbaa !30   ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.p = getelementptr inbounds [36 x i8], ptr %i.o, i64 %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !30   ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1                    ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  br i1 %i.s, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !76   ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !80
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.e, label %_ZN9btPairSet9push_pairEii.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.u, 0
  %i.y = shl nsw i32 %i.u, 1
  %i.z = select i1 %.not.i.i.i, i32 1, i32 %i.y   ; 4 uses
  %i.aa = icmp slt i32 %i.u, %i.z
  br i1 %i.aa, label %bb.f, label %_ZN9btPairSet9push_pairEii.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = sext i32 %i.z to i64
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ac, i32 noundef 16)
  %.pre.i.i = load i32, ptr %i.t, align 4, !tbaa !76
  br label %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.ae = phi i32 [ %.pre.i.i, %bb.g ], [ %i.u, %bb.f ] ; 5 uses
  %.0.i.i.i.i = phi ptr [ %i.ad, %bb.g ], [ null, %bb.f ] ; 12 uses
  %i.af = icmp sgt i32 %i.ae, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !81 ; 13 uses
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.ae to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ae, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i
  %i.ai = shl nuw nsw i64 %wide.trip.count.i.i.i.i, 3 ; 3 uses
  %i.aj = add nsw i64 %i.ai, -4                   ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.aj
  %scevgep86 = getelementptr i8, ptr %i.ah, i64 %i.aj
  %scevgep87 = getelementptr i8, ptr %.0.i.i.i.i, i64 4
  %scevgep88 = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ai
  %scevgep89 = getelementptr i8, ptr %i.ah, i64 4
  %scevgep90 = getelementptr i8, ptr %i.ah, i64 %i.ai
  %bound0 = icmp ult ptr %.0.i.i.i.i, %scevgep86
  %bound1 = icmp ult ptr %i.ah, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound091 = icmp ult ptr %scevgep87, %scevgep90
  %bound192 = icmp ult ptr %scevgep89, %scevgep88
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx = or i1 %found.conflict, %found.conflict93
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ak = or disjoint i64 %index, 2               ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %index
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.ak
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ak
  %wide.vec = load <4 x i32>, ptr %i.an, align 4, !tbaa !4
  %wide.vec95 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !4
  store <4 x i32> %wide.vec, ptr %i.al, align 4, !tbaa !4
  store <4 x i32> %wide.vec95, ptr %i.am, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.prol
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.i.i.i.prol
  %i.as = load <2 x i32>, ptr %i.ar, align 4, !tbaa !4
  store <2 x i32> %i.as, ptr %i.aq, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !83

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.at = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.i.i.i
  %i.ax = load <2 x i32>, ptr %i.aw, align 4, !tbaa !4
  store <2 x i32> %i.ax, ptr %i.av, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.i.i
  %i.ba = load <2 x i32>, ptr %i.az, align 4, !tbaa !4
  store <2 x i32> %i.ba, ptr %i.ay, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.i.i.1
  %i.bd = load <2 x i32>, ptr %i.bc, align 4, !tbaa !4
  store <2 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.2
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.i.i.2
  %i.bg = load <2 x i32>, ptr %i.bf, align 4, !tbaa !4
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, label %scalar.ph, !llvm.loop !84

_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp ne ptr %i.ah, null
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i8, ptr %i.bh, align 8, !range !36
  %i.bj = trunc nuw i8 %i.bi to i1
  %or.cond.i.i = select i1 %.not.i5.i.i.i, i1 %i.bj, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i

_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.old8.i.i = load i8, ptr %.old.i.i, align 8, !tbaa !85, !range !36, !noundef !60
  %.old9.i.i = trunc nuw i8 %.old8.i.i to i1
  br i1 %.old9.i.i, label %bb.h, label %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i

bb.h:                                             ; preds = %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ah)
  %.pre2.pre.pre.i.i = load i32, ptr %i.t, align 4, !tbaa !76
  br label %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i: ; preds = %bb.h, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i
  %.pre2.i.i = phi i32 [ %i.ae, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i ], [ %.pre2.pre.pre.i.i, %bb.h ], [ %i.ae, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %i.bk, align 8, !tbaa !85
  store ptr %.0.i.i.i.i, ptr %i.ag, align 8, !tbaa !81
  store i32 %i.z, ptr %i.v, align 8, !tbaa !80
  br label %_ZN9btPairSet9push_pairEii.exit

_ZN9btPairSet9push_pairEii.exit:                  ; preds = %bb.d, %bb.e, %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i
  %i.bl = phi i32 [ %.pre2.i.i, %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i ], [ %i.u, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !81
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo ; 2 uses
  store i32 %i.m, ptr %i.bp, align 4, !tbaa !86
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.r, ptr %i.bq, align 4, !tbaa !88
  %i.br = add nsw i32 %i.bl, 1
  store i32 %i.br, ptr %i.t, align 4, !tbaa !76
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  %i.bs = add nsw i32 %5, 1                       ; 3 uses
  call fastcc void @_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %4, i32 noundef %i.bs, i1 noundef zeroext false)
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [36 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !30 ; 2 uses
  %i.by = add nsw i32 %5, 2
  %i.bz = sub nsw i32 %i.bs, %i.bx
  %i.ca = icmp slt i32 %i.bx, 0
  %.0.i.i = select i1 %i.ca, i32 %i.bz, i32 %i.by
  call fastcc void @_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %4, i32 noundef %.0.i.i, i1 noundef zeroext false)
  br label %bb.m

bb.j:                                             ; preds = %bb.b
  %i.cb = add nsw i32 %4, 1                       ; 8 uses
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %i.cb, i32 noundef %5, i1 noundef zeroext false)
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.cd = sext i32 %i.cb to i64
  %i.ce = getelementptr inbounds [36 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !30 ; 2 uses
  %i.ch = add nsw i32 %4, 2
  %i.ci = sub nsw i32 %i.cb, %i.cg
  %i.cj = icmp slt i32 %i.cg, 0
  %.0.i.i76 = select i1 %i.cj, i32 %i.ci, i32 %i.ch
  call fastcc void @_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %.0.i.i76, i32 noundef %5, i1 noundef zeroext false)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ck = add nsw i32 %5, 1                       ; 5 uses
  call fastcc void @_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %i.cb, i32 noundef %i.ck, i1 noundef zeroext false)
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.cm = sext i32 %i.ck to i64                   ; 2 uses
  %i.cn = getelementptr inbounds [36 x i8], ptr %i.cl, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !30 ; 2 uses
  %i.cq = add nsw i32 %5, 2                       ; 2 uses
  %i.cr = sub nsw i32 %i.ck, %i.cp
  %i.cs = icmp slt i32 %i.cp, 0
  %.0.i.i77 = select i1 %i.cs, i32 %i.cr, i32 %i.cq
  call fastcc void @_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %i.cb, i32 noundef %.0.i.i77, i1 noundef zeroext false)
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.cu = sext i32 %i.cb to i64                   ; 2 uses
  %i.cv = getelementptr inbounds [36 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !30 ; 2 uses
  %i.cy = add nsw i32 %4, 2                       ; 2 uses
  %i.cz = sub nsw i32 %i.cb, %i.cx
  %i.da = icmp slt i32 %i.cx, 0
  %.0.i.i78 = select i1 %i.da, i32 %i.cz, i32 %i.cy
  call fastcc void @_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %.0.i.i78, i32 noundef %i.ck, i1 noundef zeroext false)
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.dc = getelementptr inbounds [36 x i8], ptr %i.db, i64 %i.cu
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !30 ; 2 uses
  %i.df = sub nsw i32 %i.cb, %i.de
  %i.dg = icmp slt i32 %i.de, 0
  %.0.i.i79 = select i1 %i.dg, i32 %i.df, i32 %i.cy
  %i.dh = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.di = getelementptr inbounds [36 x i8], ptr %i.dh, i64 %i.cm
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !30 ; 2 uses
  %i.dl = sub nsw i32 %i.ck, %i.dk
  %i.dm = icmp slt i32 %i.dk, 0
  %.0.i.i80 = select i1 %i.dm, i32 %i.dl, i32 %i.cq
  call fastcc void @_ZL31_find_collision_pairs_recursiveP12btGImpactBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %.0.i.i79, i32 noundef %.0.i.i80, i1 noundef zeroext false)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.a, %bb.i, %_ZN9btPairSet9push_pairEii.exit
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(112) %2, i1 noundef zeroext %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !14 ; 2 uses
  %i.c = load float, ptr %0, align 4, !tbaa !14
  %i.d = fadd float %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load float, ptr %i.e, align 4, !tbaa !14 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !14
  %i.i = fadd float %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load float, ptr %i.j, align 4, !tbaa !14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !14
  %i.n = fadd float %i.k, %i.m
  %i.o = fmul float %i.d, 5.000000e-01            ; 2 uses
  %i.p = fmul float %i.i, 5.000000e-01            ; 2 uses
  %i.q = fmul float %i.n, 5.000000e-01            ; 2 uses
  %i.r = fsub float %i.b, %i.o                    ; 10 uses
  %i.s = fsub float %i.f, %i.p                    ; 10 uses
  %i.t = fsub float %i.k, %i.q                    ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !14 ; 2 uses
  %i.w = load float, ptr %1, align 4, !tbaa !14
  %i.x = fadd float %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.z = load float, ptr %i.y, align 4, !tbaa !14 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !14
  %i.ac = fadd float %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !14 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !14
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = fmul float %i.x, 5.000000e-01           ; 4 uses
  %i.aj = fmul float %i.ac, 5.000000e-01          ; 4 uses
  %i.ak = fmul float %i.ah, 5.000000e-01          ; 4 uses
  %i.al = fsub float %i.v, %i.ai                  ; 10 uses
  %i.am = fsub float %i.z, %i.aj                  ; 10 uses
  %i.an = fsub float %i.ae, %i.ak                 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aq = load float, ptr %i.ao, align 4, !tbaa !14 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.as = load float, ptr %i.ar, align 4, !tbaa !14 ; 4 uses
  %i.at = fmul float %i.aj, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ai, float %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !14 ; 4 uses
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.aw, float %i.ak, float %i.au)
  %i.ay = load float, ptr %2, align 4, !tbaa !14
  %i.az = fadd float %i.ay, %i.ax
  %i.ba = fsub float %i.az, %i.o                  ; 10 uses
  %i.bb = load float, ptr %i.ap, align 4, !tbaa !14 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !14 ; 6 uses
  %i.be = fmul float %i.bd, %i.am
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.al, float %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !14 ; 6 uses
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.an, float %i.bf)
  %i.bj = fadd float %i.bi, %i.r
  %i.bk = tail call noundef float @llvm.fabs.f32(float %i.ba)
  %i.bl = fcmp ogt float %i.bk, %i.bj
  br i1 %i.bl, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !14 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !14 ; 4 uses
  %i.bq = fmul float %i.aj, %i.bp
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.ai, float %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !14 ; 4 uses
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.ak, float %i.br)
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !14
  %i.bx = fadd float %i.bw, %i.bu
  %i.by = fsub float %i.bx, %i.p                  ; 10 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !14 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !14 ; 6 uses
  %i.cd = fmul float %i.cc, %i.am
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.al, float %i.cd)
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !14 ; 6 uses
  %i.ch = tail call noundef float @llvm.fmuladd.f32(float %i.cg, float %i.an, float %i.ce)
  %i.ci = fadd float %i.ch, %i.s
  %i.cj = tail call noundef float @llvm.fabs.f32(float %i.by)
  %i.ck = fcmp ogt float %i.cj, %i.ci
  br i1 %i.ck, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !14 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.co = load float, ptr %i.cn, align 4, !tbaa !14 ; 4 uses
  %i.cp = fmul float %i.aj, %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.ai, float %i.cp)
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !14 ; 4 uses
  %i.ct = tail call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.ak, float %i.cq)
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !14
  %i.cw = fadd float %i.cv, %i.ct
  %i.cx = fsub float %i.cw, %i.q                  ; 10 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !14 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.db = load float, ptr %i.da, align 4, !tbaa !14 ; 6 uses
  %i.dc = fmul float %i.db, %i.am
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.al, float %i.dc)
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.df = load float, ptr %i.de, align 4, !tbaa !14 ; 6 uses
  %i.dg = tail call noundef float @llvm.fmuladd.f32(float %i.df, float %i.an, float %i.dd)
  %i.dh = fadd float %i.dg, %i.t
  %i.di = tail call noundef float @llvm.fabs.f32(float %i.cx)
  %i.dj = fcmp ogt float %i.di, %i.dh
  br i1 %i.dj, label %.critedge, label %.preheader83

.preheader83:                                     ; preds = %bb.c
  %i.dk = fmul float %i.by, %i.bn
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.aq, float %i.dk)
  %i.dm = tail call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.cm, float %i.dl)
  %i.dn = fmul float %i.s, %i.ca
  %i.do = tail call float @llvm.fmuladd.f32(float %i.r, float %i.bb, float %i.dn)
  %i.dp = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.cz, float %i.do)
  %i.dq = fadd float %i.dp, %i.al
  %i.dr = tail call noundef float @llvm.fabs.f32(float %i.dm)
  %i.ds = fcmp ogt float %i.dr, %i.dq
  br i1 %i.ds, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.preheader83
  %i.dt = fmul float %i.by, %i.bp
  %i.du = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.as, float %i.dt)
  %i.dv = tail call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.co, float %i.du)
  %i.dw = fmul float %i.s, %i.cc
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.r, float %i.bd, float %i.dw)
  %i.dy = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.db, float %i.dx)
  %i.dz = fadd float %i.dy, %i.am
  %i.ea = tail call noundef float @llvm.fabs.f32(float %i.dv)
  %i.eb = fcmp ogt float %i.ea, %i.dz
  br i1 %i.eb, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ec = fmul float %i.by, %i.bt
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.aw, float %i.ec)
  %i.ee = tail call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.cs, float %i.ed)
  %i.ef = fmul float %i.s, %i.cg
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.r, float %i.bh, float %i.ef)
  %i.eh = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.df, float %i.eg)
  %i.ei = fadd float %i.eh, %i.an
  %i.ej = tail call noundef float @llvm.fabs.f32(float %i.ee)
  %i.ek = fcmp ule float %i.ej, %i.ei             ; 2 uses
  %brmerge.not = and i1 %i.ek, %3
  br i1 %brmerge.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.e
  %i.el = fneg float %i.cm
  %i.em = fmul float %i.by, %i.el
  %i.en = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.bn, float %i.em)
  %i.eo = fmul float %i.t, %i.ca
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.s, float %i.cz, float %i.eo)
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.am, float %i.bh, float %i.ep)
  %i.er = tail call float @llvm.fmuladd.f32(float %i.an, float %i.bd, float %i.eq)
  %i.es = tail call noundef float @llvm.fabs.f32(float %i.en)
  %i.et = fcmp ogt float %i.es, %i.er
  br i1 %i.et, label %.critedge.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.eu = fneg float %i.co
  %i.ev = fmul float %i.by, %i.eu
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.bp, float %i.ev)
  %i.ex = fmul float %i.t, %i.cc
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.s, float %i.db, float %i.ex)
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.al, float %i.bh, float %i.ey)
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.an, float %i.bb, float %i.ez)
  %i.fb = tail call noundef float @llvm.fabs.f32(float %i.ew)
  %i.fc = fcmp ogt float %i.fb, %i.fa
  br i1 %i.fc, label %.critedge.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fd = fneg float %i.cs
  %i.fe = fmul float %i.by, %i.fd
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.bt, float %i.fe)
  %i.fg = fmul float %i.t, %i.cg
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.s, float %i.df, float %i.fg)
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.al, float %i.bd, float %i.fh)
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.am, float %i.bb, float %i.fi)
  %i.fk = tail call noundef float @llvm.fabs.f32(float %i.ff)
  %i.fl = fcmp ogt float %i.fk, %i.fj
  br i1 %i.fl, label %.critedge.loopexit, label %.loopexit

.loopexit:                                        ; preds = %bb.g
  %i.fm = fneg float %i.aq
  %i.fn = fmul float %i.cx, %i.fm
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.cm, float %i.fn)
  %i.fp = fmul float %i.t, %i.bb
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.r, float %i.cz, float %i.fp)
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.am, float %i.cg, float %i.fq)
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.an, float %i.cc, float %i.fr)
  %i.ft = tail call noundef float @llvm.fabs.f32(float %i.fo)
  %i.fu = fcmp ogt float %i.ft, %i.fs
  br i1 %i.fu, label %.critedge.loopexit, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.fv = fneg float %i.as
  %i.fw = fmul float %i.cx, %i.fv
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.co, float %i.fw)
  %i.fy = fmul float %i.t, %i.bd
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.r, float %i.db, float %i.fy)
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.al, float %i.cg, float %i.fz)
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ca, float %i.ga)
  %i.gc = tail call noundef float @llvm.fabs.f32(float %i.fx)
  %i.gd = fcmp ogt float %i.gc, %i.gb
  br i1 %i.gd, label %.critedge.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ge = fneg float %i.aw
  %i.gf = fmul float %i.cx, %i.ge
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.cs, float %i.gf)
  %i.gh = fmul float %i.t, %i.bh
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.r, float %i.df, float %i.gh)
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.al, float %i.cc, float %i.gi)
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ca, float %i.gj)
  %i.gl = tail call noundef float @llvm.fabs.f32(float %i.gg)
  %i.gm = fcmp ogt float %i.gl, %i.gk
  br i1 %i.gm, label %.critedge.loopexit, label %.loopexit.1

.loopexit.1:                                      ; preds = %bb.i
  %i.gn = fneg float %i.bn
  %i.go = fmul float %i.ba, %i.gn
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.by, float %i.aq, float %i.go)
  %i.gq = fmul float %i.s, %i.bb
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.r, float %i.ca, float %i.gq)
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.am, float %i.df, float %i.gr)
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.an, float %i.db, float %i.gs)
  %i.gu = tail call noundef float @llvm.fabs.f32(float %i.gp)
  %i.gv = fcmp ogt float %i.gu, %i.gt
  br i1 %i.gv, label %.critedge.loopexit, label %bb.j

bb.j:                                             ; preds = %.loopexit.1
  %i.gw = fneg float %i.bp
  %i.gx = fmul float %i.ba, %i.gw
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.by, float %i.as, float %i.gx)
  %i.gz = fmul float %i.s, %i.bd
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.r, float %i.cc, float %i.gz)
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.al, float %i.df, float %i.ha)
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.an, float %i.cz, float %i.hb)
  %i.hd = tail call noundef float @llvm.fabs.f32(float %i.gy)
  %i.he = fcmp ogt float %i.hd, %i.hc
  br i1 %i.he, label %.critedge.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hf = fneg float %i.bt
  %i.hg = fmul float %i.ba, %i.hf
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.by, float %i.aw, float %i.hg)
  %i.hi = fmul float %i.s, %i.bh
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.r, float %i.cg, float %i.hi)
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.al, float %i.db, float %i.hj)
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.am, float %i.cz, float %i.hk)
  %i.hm = tail call noundef float @llvm.fabs.f32(float %i.hh)
  %i.hn = fcmp ogt float %i.hm, %i.hl
  br i1 %i.hn, label %.critedge.loopexit, label %.critedge

.critedge.loopexit:                               ; preds = %bb.k, %bb.j, %.loopexit.1, %bb.i, %bb.h, %.loopexit, %bb.g, %bb.f, %.preheader
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %.preheader83, %bb.d, %bb.k, %.critedge.loopexit
  %.1 = phi i1 [ true, %bb.k ], [ false, %.critedge.loopexit ], [ false, %bb.a ], [ false, %.preheader83 ], [ %i.ek, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { inlinehint uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 16}
!9 = !{!"_ZTS20btAlignedObjectArrayI12GIM_BVH_DATAE", !10, i64 0, !5, i64 4, !5, i64 8, !11, i64 16, !13, i64 24}
!10 = !{!"_ZTS18btAlignedAllocatorI12GIM_BVH_DATALj16EE"}
!11 = !{!"p1 _ZTS12GIM_BVH_DATA", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !6, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!18, !5, i64 32}
!18 = !{!"_ZTS12GIM_BVH_DATA", !19, i64 0, !5, i64 32}
!19 = !{!"_ZTS6btAABB", !20, i64 0, !20, i64 16}
!20 = !{!"_ZTS9btVector3", !6, i64 0}
!21 = !{i64 0, i64 16, !16, i64 16, i64 16, !16, i64 32, i64 4, !4}
!22 = !{!23, !5, i64 0}
!23 = !{!"_ZTS9btBvhTree", !5, i64 0, !24, i64 8}
!24 = !{!"_ZTS23GIM_BVH_TREE_NODE_ARRAY", !25, i64 0}
!25 = !{!"_ZTS20btAlignedObjectArrayI17GIM_BVH_TREE_NODEE", !26, i64 0, !5, i64 4, !5, i64 8, !27, i64 16, !13, i64 24}
!26 = !{!"_ZTS18btAlignedAllocatorI17GIM_BVH_TREE_NODELj16EE"}
!27 = !{!"p1 _ZTS17GIM_BVH_TREE_NODE", !12, i64 0}
!28 = !{!25, !27, i64 16}
!29 = !{i64 0, i64 16, !16, i64 16, i64 16, !16}
!30 = !{!31, !5, i64 32}
!31 = !{!"_ZTS17GIM_BVH_TREE_NODE", !19, i64 0, !5, i64 32}
!32 = !{!9, !5, i64 4}
!33 = !{!25, !5, i64 4}
!34 = !{!25, !5, i64 8}
!35 = !{i64 0, i64 16, !16}
!36 = !{i8 0, i8 2}
!37 = !{!25, !13, i64 24}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!41, !42, i64 40}
!41 = !{!"_ZTS12btGImpactBvh", !23, i64 0, !42, i64 40}
!42 = !{!"p1 _ZTS22btPrimitiveManagerBase", !12, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !7, i64 0}
!45 = !{!9, !13, i64 24}
!46 = !{!9, !5, i64 8}
!47 = distinct !{!47, !39}
!48 = !{!49, !5, i64 4}
!49 = !{!"_ZTS20btAlignedObjectArrayIiE", !50, i64 0, !5, i64 4, !5, i64 8, !51, i64 16, !13, i64 24}
!50 = !{!"_ZTS18btAlignedAllocatorIiLj16EE"}
!51 = !{!"p1 int", !12, i64 0}
!52 = !{!49, !5, i64 8}
!53 = !{!49, !51, i64 16}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = distinct !{!57, !39}
!58 = distinct !{!58, !55}
!59 = !{!49, !13, i64 24}
!60 = !{}
!61 = distinct !{!61, !55, !56}
!62 = distinct !{!62, !39}
!63 = distinct !{!63, !55}
!64 = !{!65, !67}
!65 = distinct !{!65, !66, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!66 = distinct !{!66, !"_ZNK11btMatrix3x39transposeEv"}
!67 = distinct !{!67, !68, !"_ZNK11btTransform7inverseEv: argument 0"}
!68 = distinct !{!68, !"_ZNK11btTransform7inverseEv"}
!69 = !{!67}
!70 = !{!71, !73}
!71 = distinct !{!71, !72, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!72 = distinct !{!72, !"_ZmlRK11btMatrix3x3S1_"}
!73 = distinct !{!73, !74, !"_ZNK11btTransformmlERKS_: argument 0"}
!74 = distinct !{!74, !"_ZNK11btTransformmlERKS_"}
!75 = !{!73}
!76 = !{!77, !5, i64 4}
!77 = !{!"_ZTS20btAlignedObjectArrayI8GIM_PAIRE", !78, i64 0, !5, i64 4, !5, i64 8, !79, i64 16, !13, i64 24}
!78 = !{!"_ZTS18btAlignedAllocatorI8GIM_PAIRLj16EE"}
!79 = !{!"p1 _ZTS8GIM_PAIR", !12, i64 0}
!80 = !{!77, !5, i64 8}
!81 = !{!77, !79, i64 16}
!82 = distinct !{!82, !55, !56}
!83 = distinct !{!83, !39}
!84 = distinct !{!84, !55}
!85 = !{!77, !13, i64 24}
!86 = !{!87, !5, i64 0}
!87 = !{!"_ZTS8GIM_PAIR", !5, i64 0, !5, i64 4}
!88 = !{!87, !5, i64 4}
end_hunk_0
