inline.NumInlined: 97
inline.NumDeleted: 28
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN12GIM_BOX_TREE20_calc_splitting_axisER9gim_arrayI13GIM_AABB_DATAEjj(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sub i32 %3, %2                           ; 2 uses
  %i.b = icmp ult i32 %2, %3
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !8
  %i.d = zext i32 %2 to i64
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.sroa.079.089 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.y, %bb.b ]
  %i.e = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.x, %bb.b ]
  %i.f = getelementptr inbounds nuw [36 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load float, ptr %i.g, align 4, !tbaa !12
  %i.i = load float, ptr %i.f, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !12
  %i.m = load <2 x float>, ptr %i.k, align 4, !tbaa !12
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
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.y = extractelement <4 x float> %i.w, i64 1
  br i1 %exitcond.not, label %.lr.ph100, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %i.z = uitofp i32 %i.a to float
  %i.aa = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.z, i64 0
  br label %._crit_edge101

.lr.ph100:                                        ; preds = %bb.b
  %i.ab = uitofp i32 %i.a to float                ; 2 uses
  %i.ac = fdiv nnan float 1.000000e+00, %i.ab
  %i.ad = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.ac, i64 1
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.af = fmul <4 x float> %i.ae, %i.w
  %i.ag = load ptr, ptr %1, align 8, !tbaa !8
  %i.ah = zext i32 %2 to i64
  %wide.trip.count114 = zext i32 %3 to i64
  %i.ai = insertelement <4 x float> poison, float %i.ab, i64 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph100, %bb.c
  %indvars.iv111 = phi i64 [ %i.ah, %.lr.ph100 ], [ %indvars.iv.next112, %bb.c ] ; 2 uses
  %.sroa.069.095 = phi float [ 0.000000e+00, %.lr.ph100 ], [ %i.bi, %bb.c ]
  %i.aj = phi <2 x float> [ zeroinitializer, %.lr.ph100 ], [ %i.bh, %bb.c ]
  %i.ak = getelementptr inbounds nuw [36 x i8], ptr %i.ag, i64 %indvars.iv111 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !12
  %i.an = load float, ptr %i.ak, align 4, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.aq = load <2 x float>, ptr %i.ao, align 4, !tbaa !12
  %i.ar = load <2 x float>, ptr %i.ap, align 4, !tbaa !12
  %i.as = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.am, i64 1
  %i.at = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.au = shufflevector <4 x float> %i.as, <4 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.av = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %i.an, i64 1
  %i.aw = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ax = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ay = fadd <4 x float> %i.au, %i.ax
  %i.az = fmul <4 x float> %i.ay, <float -0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %i.ba = fsub <4 x float> %i.az, %i.af           ; 2 uses
  %i.bb = insertelement <4 x float> %i.ba, float 1.000000e+00, i64 0
  %i.bc = fmul <4 x float> %i.ba, %i.bb
  %i.bd = insertelement <4 x float> %i.ai, float %.sroa.069.095, i64 1
  %i.be = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bf = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bg = fadd <4 x float> %i.bf, %i.bc           ; 3 uses
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count114
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bi = extractelement <4 x float> %i.bg, i64 1
  br i1 %exitcond115.not, label %._crit_edge101, label %bb.c

._crit_edge101:                                   ; preds = %bb.c, %._crit_edge
  %i.bj = phi <4 x float> [ %i.aa, %._crit_edge ], [ %i.bg, %bb.c ] ; 4 uses
  %i.bk = extractelement <4 x float> %i.bj, i64 0
  %i.bl = fadd float %i.bk, -1.000000e+00
  %i.bm = fdiv float 1.000000e+00, %i.bl          ; 3 uses
  %i.bn = extractelement <4 x float> %i.bj, i64 1
  %i.bo = fmul float %i.bm, %i.bn                 ; 2 uses
  %i.bp = extractelement <4 x float> %i.bj, i64 2
  %i.bq = fmul float %i.bm, %i.bp                 ; 2 uses
  %i.br = extractelement <4 x float> %i.bj, i64 3
  %i.bs = fmul float %i.bm, %i.br
  %i.bt = fcmp olt float %i.bo, %i.bq             ; 2 uses
  %..i = select i1 %i.bt, float %i.bq, float %i.bo
  %.5.i = zext i1 %i.bt to i32
  %i.bu = fcmp olt float %..i, %i.bs
  %i.bv = select i1 %i.bu, i32 2, i32 %.5.i
  ret i32 %i.bv
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = sub i32 %3, %2                           ; 3 uses
  %i.b = icmp ult i32 %2, %3
  br i1 %i.b, label %.lr.ph, label %._crit_edge52

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  %i.d = zext i32 %4 to i64                       ; 6 uses
  %i.e = zext i32 %2 to i64                       ; 5 uses
  %wide.trip.count = zext i32 %3 to i64           ; 3 uses
  %i.f = sub nsw i64 %wide.trip.count, %i.e
  %xtraiter = and i64 %i.f, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw [36 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.d
  %i.j = load float, ptr %i.i, align 4, !tbaa !12
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.d
  %i.l = load float, ptr %i.k, align 4, !tbaa !12
  %i.m = fadd float %i.j, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float 5.000000e-01, float 0.000000e+00) ; 2 uses
  %indvars.iv.next.prol = add nuw nsw i64 %i.e, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa.unr = phi float [ poison, %.lr.ph ], [ %i.n, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.unr = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.04446.unr = phi float [ 0.000000e+00, %.lr.ph ], [ %i.n, %.prol.loopexit.unr-lcssa ]
  %i.o = add nsw i64 %wide.trip.count, -1
  %i.p = icmp eq i64 %i.o, %i.e
  br i1 %i.p, label %.lr.ph51, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %.04446 = phi float [ %i.ag, %.lr.ph.new ], [ %.04446.unr, %.prol.loopexit ]
  %i.q = getelementptr inbounds nuw [36 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.d
  %i.t = load float, ptr %i.s, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.d
  %i.v = load float, ptr %i.u, align 4, !tbaa !12
  %i.w = fadd float %i.t, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float 5.000000e-01, float %.04446)
  %i.y = getelementptr inbounds nuw [36 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.d
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !12
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.d
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !12
  %i.af = fadd float %i.ac, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float 5.000000e-01, float %i.x) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.lr.ph51, label %.lr.ph.new

.lr.ph51:                                         ; preds = %.lr.ph.new, %.prol.loopexit
  %.lcssa = phi float [ %.lcssa.unr, %.prol.loopexit ], [ %i.ag, %.lr.ph.new ]
  %i.ah = uitofp i32 %i.a to float
  %i.ai = fdiv float %.lcssa, %i.ah
  %i.aj = zext i32 %4 to i64                      ; 2 uses
  %i.ak = zext i32 %2 to i64
  %wide.trip.count58 = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph51, %bb.d
  %indvars.iv55 = phi i64 [ %i.ak, %.lr.ph51 ], [ %indvars.iv.next56, %bb.d ] ; 2 uses
  %.04248 = phi i32 [ %2, %.lr.ph51 ], [ %.143, %bb.d ] ; 3 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.am = getelementptr inbounds nuw [36 x i8], ptr %i.al, i64 %indvars.iv55 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.aj
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !12
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aj
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !12
  %i.as = fadd float %i.ap, %i.ar
  %i.at = fmul float %i.as, 5.000000e-01
  %i.au = fcmp ogt float %i.at, %i.ai
  br i1 %i.au, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.av = zext i32 %.04248 to i64
  %.sroa.0.i.i.sroa.0.0.copyload64 = load <16 x i8>, ptr %i.am, align 4, !tbaa !14
  %.sroa.0.i.i.sroa.0.0.vec.expand = shufflevector <16 x i8> %.sroa.0.i.i.sroa.0.0.copyload64, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0.i.i.sroa.0.16.copyload = load <16 x i8>, ptr %i.an, align 4, !tbaa !14
  %.sroa.0.i.i.sroa.0.16.vec.expand = shufflevector <16 x i8> %.sroa.0.i.i.sroa.0.16.copyload, <16 x i8> poison, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.sroa.0.i.i.sroa.0.16.vecblend = shufflevector <32 x i8> %.sroa.0.i.i.sroa.0.0.vec.expand, <32 x i8> %.sroa.0.i.i.sroa.0.16.vec.expand, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !15
  %i.ay = getelementptr inbounds nuw [36 x i8], ptr %i.al, i64 %i.av ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.am, ptr noundef nonnull align 4 dereferenceable(36) %i.ay, i64 36, i1 false), !tbaa.struct !19
  store <32 x i8> %.sroa.0.i.i.sroa.0.16.vecblend, ptr %i.ay, align 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i32 %i.ax, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !4
  %i.az = add i32 %.04248, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.143 = phi i32 [ %i.az, %bb.c ], [ %.04248, %bb.b ] ; 2 uses
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %._crit_edge52, label %bb.b

._crit_edge52:                                    ; preds = %bb.d, %bb.a
  %.042.lcssa = phi i32 [ %2, %bb.a ], [ %.143, %bb.d ] ; 3 uses
  %i.ba = udiv i32 %i.a, 3                        ; 2 uses
  %i.bb = add i32 %i.ba, %2
  %.not = icmp ule i32 %.042.lcssa, %i.bb
  %i.bc = xor i32 %i.ba, -1
  %i.bd = add i32 %3, %i.bc
  %i.be = icmp uge i32 %.042.lcssa, %i.bd
  %i.bf = or i1 %.not, %i.be
  %i.bg = lshr i32 %i.a, 1
  %i.bh = add i32 %i.bg, %2
  %.2 = select i1 %i.bf, i32 %i.bh, i32 %.042.lcssa
  ret i32 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN12GIM_BOX_TREE15_build_sub_treeER9gim_arrayI13GIM_AABB_DATAEjj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.b = add i32 %i.a, 1                          ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !20
  %i.c = sub i32 %3, %2                           ; 4 uses
  %i.d = icmp eq i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = zext i32 %i.a to i64                     ; 4 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.f ; 13 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 0, ptr %i.i, align 4, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 0, ptr %i.j, align 4, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 0, ptr %i.k, align 4, !tbaa !28
  %i.l = zext i32 %2 to i64                       ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.h, ptr noundef nonnull align 4 dereferenceable(32) %i.n, i64 32, i1 false), !tbaa.struct !29
  %i.o = load ptr, ptr %1, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw [36 x i8], ptr %i.o, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !15
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.h, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store float f0x7F7FFFFF, ptr %i.t, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.u, align 4, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store float f0xFF7FFFFF, ptr %i.w, align 4, !tbaa !12
  %i.x = icmp ult i32 %2, %3
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.y = load ptr, ptr %1, align 8, !tbaa !8
  %i.z = zext i32 %2 to i64                       ; 3 uses
  %wide.trip.count = zext i32 %3 to i64           ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.z, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.aa = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %i.bd, %bb.d ]
  %i.ab = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %i.az, %bb.d ]
  %i.ac = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %i.av, %bb.d ] ; 2 uses
  %i.ad = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %i.ar, %bb.d ]
  %i.ae = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %i.an, %bb.d ]
  %i.af = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %i.aj, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [36 x i8], ptr %i.y, i64 %indvars.iv ; 8 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !12 ; 2 uses
  %i.ai = fcmp ogt float %i.af, %i.ah
  %i.aj = select i1 %i.ai, float %i.ah, float %i.af ; 2 uses
  store float %i.aj, ptr %i.h, align 4, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = fcmp ogt float %i.ae, %i.al
  %.pn.i = select i1 %i.am, ptr %i.ag, ptr %i.h
  %.in13.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4
  %i.an = load float, ptr %.in13.i, align 4, !tbaa !12 ; 2 uses
  store float %i.an, ptr %i.s, align 4, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !12
  %i.aq = fcmp ogt float %i.ad, %i.ap
  %.pn15.i = select i1 %i.aq, ptr %i.ag, ptr %i.h
  %.in14.i = getelementptr inbounds nuw i8, ptr %.pn15.i, i64 8
  %i.ar = load float, ptr %.in14.i, align 4, !tbaa !12 ; 2 uses
  store float %i.ar, ptr %i.t, align 4, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !12 ; 2 uses
  %i.au = fcmp olt float %i.ac, %i.at
  %i.av = select i1 %i.au, float %i.at, float %i.ac ; 2 uses
  store float %i.av, ptr %i.u, align 4, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !12
  %i.ay = fcmp olt float %i.ab, %i.ax
  %.pn18.i = select i1 %i.ay, ptr %i.as, ptr %i.u
  %.in17.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 4
  %i.az = load float, ptr %.in17.i, align 4, !tbaa !12 ; 2 uses
  store float %i.az, ptr %i.v, align 4, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !12
  %i.bc = fcmp olt float %i.aa, %i.bb
  %.pn20.i = select i1 %i.bc, ptr %i.as, ptr %i.u
  %.in19.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.bd = load float, ptr %.in19.i, align 4, !tbaa !12 ; 2 uses
  store float %i.bd, ptr %i.w, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.i, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %i.be = tail call noundef i32 @_ZN12GIM_BOX_TREE20_calc_splitting_axisER9gim_arrayI13GIM_AABB_DATAEjj(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) ; 0 uses
  br label %_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.bf = tail call noundef i32 @_ZN12GIM_BOX_TREE20_calc_splitting_axisER9gim_arrayI13GIM_AABB_DATAEjj(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3)
  %i.bg = load ptr, ptr %1, align 8, !tbaa !8     ; 4 uses
  %i.bh = zext nneg i32 %i.bf to i64              ; 8 uses
  %i.bi = zext i32 %2 to i64                      ; 4 uses
  %wide.trip.count.i = zext i32 %3 to i64         ; 2 uses
  %i.bj = sub nsw i64 %wide.trip.count, %i.z
  %xtraiter = and i64 %i.bj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.bk = getelementptr inbounds nuw [36 x i8], ptr %i.bg, i64 %i.bi ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bh
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !12
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bh
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12
  %i.bq = fadd float %i.bn, %i.bp
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float 5.000000e-01, float 0.000000e+00) ; 2 uses
  %indvars.iv.next.i.prol = add nuw nsw i64 %i.bi, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.lcssa.unr = phi float [ poison, %.lr.ph.i ], [ %i.br, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.i.unr = phi i64 [ %i.bi, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit.unr-lcssa ]
  %.04446.i.unr = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.br, %.prol.loopexit.unr-lcssa ]
  %i.bs = add nsw i64 %wide.trip.count, -1
  %i.bt = icmp eq i64 %i.bs, %i.z
  br i1 %i.bt, label %.lr.ph51.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 3 uses
  %.04446.i = phi float [ %i.ck, %.lr.ph.i.new ], [ %.04446.i.unr, %.prol.loopexit ]
  %i.bu = getelementptr inbounds nuw [36 x i8], ptr %i.bg, i64 %indvars.iv.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bh
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !12
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bh
  %i.bz = load float, ptr %i.by, align 4, !tbaa !12
  %i.ca = fadd float %i.bx, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float 5.000000e-01, float %.04446.i)
  %i.cc = getelementptr inbounds nuw [36 x i8], ptr %i.bg, i64 %indvars.iv.i ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 36
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 52
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bh
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !12
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.bh
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !12
  %i.cj = fadd float %i.cg, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float 5.000000e-01, float %i.cb) ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.lr.ph51.i, label %.lr.ph.i.new

.lr.ph51.i:                                       ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.lcssa = phi float [ %.lcssa.unr, %.prol.loopexit ], [ %i.ck, %.lr.ph.i.new ]
  %i.cl = uitofp i32 %i.c to float
  %i.cm = fdiv float %.lcssa, %i.cl
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph51.i
  %i.cn = phi ptr [ %i.bg, %.lr.ph51.i ], [ %i.dc, %bb.g ] ; 3 uses
  %indvars.iv55.i = phi i64 [ %i.bi, %.lr.ph51.i ], [ %indvars.iv.next56.i, %bb.g ] ; 2 uses
  %.04248.i = phi i32 [ %2, %.lr.ph51.i ], [ %.143.i, %bb.g ] ; 3 uses
  %i.co = getelementptr inbounds nuw [36 x i8], ptr %i.cn, i64 %indvars.iv55.i ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.bh
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !12
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.bh
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !12
  %i.cu = fadd float %i.cr, %i.ct
  %i.cv = fmul float %i.cu, 5.000000e-01
  %i.cw = fcmp ogt float %i.cv, %i.cm
  br i1 %i.cw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cx = zext i32 %.04248.i to i64
  %.sroa.0.i.i.i.sroa.0.0.copyload54 = load <16 x i8>, ptr %i.co, align 4, !tbaa !14
  %.sroa.0.i.i.i.sroa.0.0.vec.expand = shufflevector <16 x i8> %.sroa.0.i.i.i.sroa.0.0.copyload54, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0.i.i.i.sroa.0.16.copyload = load <16 x i8>, ptr %i.cp, align 4, !tbaa !14
  %.sroa.0.i.i.i.sroa.0.16.vec.expand = shufflevector <16 x i8> %.sroa.0.i.i.i.sroa.0.16.copyload, <16 x i8> poison, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.sroa.0.i.i.i.sroa.0.16.vecblend = shufflevector <32 x i8> %.sroa.0.i.i.i.sroa.0.0.vec.expand, <32 x i8> %.sroa.0.i.i.i.sroa.0.16.vec.expand, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !15
  %i.da = getelementptr inbounds nuw [36 x i8], ptr %i.cn, i64 %i.cx ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.co, ptr noundef nonnull align 4 dereferenceable(36) %i.da, i64 36, i1 false), !tbaa.struct !19
  store <32 x i8> %.sroa.0.i.i.i.sroa.0.16.vecblend, ptr %i.da, align 4
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store i32 %i.cz, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !tbaa !4
  %i.db = add i32 %.04248.i, 1
  %.pre = load ptr, ptr %1, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dc = phi ptr [ %.pre, %bb.f ], [ %i.cn, %bb.e ]
  %.143.i = phi i32 [ %i.db, %bb.f ], [ %.04248.i, %bb.e ] ; 2 uses
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count.i
  br i1 %exitcond59.not.i, label %_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj.exit.loopexit, label %bb.e

common.ret:                                       ; preds = %bb.b, %_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj.exit
  %.sink52 = phi i64 [ 44, %bb.b ], [ 40, %_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj.exit ]
  %.sink = phi i32 [ %i.r, %bb.b ], [ %i.dx, %_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj.exit ]
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.de = getelementptr inbounds nuw [48 x i8], ptr %i.dd, i64 %i.f
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sink52
  store i32 %.sink, ptr %i.df, align 4, !tbaa !4
  ret void

_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj.exit.loopexit: ; preds = %bb.g
  %.pre45 = load i32, ptr %0, align 8, !tbaa !20
  %.pre46 = load ptr, ptr %i.e, align 8, !tbaa !24
  br label %_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj.exit

_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj.exit: ; preds = %._crit_edge, %_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj.exit.loopexit
  %i.dg = phi ptr [ %i.g, %._crit_edge ], [ %.pre46, %_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj.exit.loopexit ]
  %i.dh = phi i32 [ %i.b, %._crit_edge ], [ %.pre45, %_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj.exit.loopexit ]
  %.042.lcssa.i = phi i32 [ %2, %._crit_edge ], [ %.143.i, %_ZN12GIM_BOX_TREE30_sort_and_calc_splitting_indexER9gim_arrayI13GIM_AABB_DATAEjjj.exit.loopexit ] ; 3 uses
  %i.di = udiv i32 %i.c, 3                        ; 2 uses
  %i.dj = add i32 %i.di, %2
  %.not.i = icmp ule i32 %.042.lcssa.i, %i.dj
  %i.dk = xor i32 %i.di, -1
  %i.dl = add i32 %3, %i.dk
  %i.dm = icmp uge i32 %.042.lcssa.i, %i.dl
  %i.dn = or i1 %.not.i, %i.dm
  %i.do = lshr i32 %i.c, 1
  %i.dp = add i32 %i.do, %2
  %.2.i = select i1 %i.dn, i32 %i.dp, i32 %.042.lcssa.i ; 2 uses
  %i.dq = getelementptr inbounds nuw [48 x i8], ptr %i.dg, i64 %i.f
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  store i32 %i.dh, ptr %i.dr, align 4, !tbaa !25
  tail call void @_ZN12GIM_BOX_TREE15_build_sub_treeER9gim_arrayI13GIM_AABB_DATAEjj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %.2.i)
  %i.ds = load i32, ptr %0, align 8, !tbaa !20
  %i.dt = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.du = getelementptr inbounds nuw [48 x i8], ptr %i.dt, i64 %i.f
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 36
  store i32 %i.ds, ptr %i.dv, align 4, !tbaa !27
  tail call void @_ZN12GIM_BOX_TREE15_build_sub_treeER9gim_arrayI13GIM_AABB_DATAEjj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.2.i, i32 noundef %3)
  %i.dw = load i32, ptr %0, align 8, !tbaa !20
  %i.dx = sub i32 %i.dw, %i.a
  br label %common.ret
}

; Function Attrs: uwtable
define dso_local void @_ZN12GIM_BOX_TREE10build_treeER9gim_arrayI13GIM_AABB_DATAE(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 4)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %i.d = shl i32 %i.c, 1                          ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31   ; 5 uses
  %i.g = icmp ugt i32 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  %.not.i.i = icmp ult i32 %i.i, %i.d
  br i1 %.not.i.i, label %bb.c, label %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE7reserveEj.exit.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.k = zext i32 %i.f to i64
  %i.l = mul nuw nsw i64 %i.k, 48
  %i.m = zext i32 %i.d to i64
  %i.n = mul nuw nsw i64 %i.m, 48
  %i.o = tail call noundef ptr @_Z11gim_reallocPvmm(ptr noundef %i.j, i64 noundef %i.l, i64 noundef %i.n)
  br label %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE10resizeDataEj.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = zext i32 %i.d to i64
  %i.q = mul nuw nsw i64 %i.p, 48
  %i.r = tail call noundef ptr @_Z9gim_allocm(i64 noundef %i.q)
  br label %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE10resizeDataEj.exit.i.i

_ZN9gim_arrayI17GIM_BOX_TREE_NODEE10resizeDataEj.exit.i.i: ; preds = %bb.e, %bb.d
  %storemerge.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.o, %bb.d ]
  store ptr %storemerge.i.i.i, ptr %i.a, align 8, !tbaa !24
  store i32 %i.d, ptr %i.h, align 4, !tbaa !32
  %.pre = load i32, ptr %i.e, align 8, !tbaa !31
  br label %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE7reserveEj.exit.i

_ZN9gim_arrayI17GIM_BOX_TREE_NODEE7reserveEj.exit.i: ; preds = %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE10resizeDataEj.exit.i.i, %bb.b
  %i.s = phi i32 [ %.pre, %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE10resizeDataEj.exit.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.t = icmp ult i32 %i.s, %i.d
  br i1 %i.t, label %.lr.ph.i, label %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE6resizeEjb.exit

.lr.ph.i:                                         ; preds = %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE7reserveEj.exit.i, %.lr.ph.i
  %i.u = phi i32 [ %i.aa, %.lr.ph.i ], [ %i.s, %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE7reserveEj.exit.i ]
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = load i32, ptr %i.e, align 8, !tbaa !31
  %i.aa = add i32 %i.z, 1                         ; 3 uses
  store i32 %i.aa, ptr %i.e, align 8, !tbaa !31
  %i.ab = icmp ult i32 %i.aa, %i.d
  br i1 %i.ab, label %.lr.ph.i, label %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE6resizeEjb.exit

bb.f:                                             ; preds = %bb.a
  %i.ac = icmp ult i32 %i.d, %i.f
  br i1 %i.ac, label %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE11clear_rangeEj.exit.i, label %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE6resizeEjb.exit

_ZN9gim_arrayI17GIM_BOX_TREE_NODEE11clear_rangeEj.exit.i: ; preds = %bb.f
  store i32 %i.d, ptr %i.e, align 8, !tbaa !31
  br label %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE6resizeEjb.exit

_ZN9gim_arrayI17GIM_BOX_TREE_NODEE6resizeEjb.exit: ; preds = %.lr.ph.i, %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE7reserveEj.exit.i, %bb.f, %_ZN9gim_arrayI17GIM_BOX_TREE_NODEE11clear_rangeEj.exit.i
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !30
  tail call void @_ZN12GIM_BOX_TREE15_build_sub_treeER9gim_arrayI13GIM_AABB_DATAEjj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef %i.ad)
  ret void
}

declare noundef ptr @_Z11gim_reallocPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare noundef ptr @_Z9gim_allocm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS9gim_arrayI13GIM_AABB_DATAE", !10, i64 0, !5, i64 8, !5, i64 12}
!10 = !{!"p1 _ZTS13GIM_AABB_DATA", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !6, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !5, i64 32}
!16 = !{!"_ZTS13GIM_AABB_DATA", !17, i64 0, !5, i64 32}
!17 = !{!"_ZTS8GIM_AABB", !18, i64 0, !18, i64 16}
!18 = !{!"_ZTS9btVector3", !6, i64 0}
!19 = !{i64 0, i64 16, !14, i64 16, i64 16, !14, i64 32, i64 4, !4}
!20 = !{!21, !5, i64 0}
!21 = !{!"_ZTS12GIM_BOX_TREE", !5, i64 0, !22, i64 8}
!22 = !{!"_ZTS9gim_arrayI17GIM_BOX_TREE_NODEE", !23, i64 0, !5, i64 8, !5, i64 12}
!23 = !{!"p1 _ZTS17GIM_BOX_TREE_NODE", !11, i64 0}
!24 = !{!22, !23, i64 0}
!25 = !{!26, !5, i64 32}
!26 = !{!"_ZTS17GIM_BOX_TREE_NODE", !17, i64 0, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44}
!27 = !{!26, !5, i64 36}
!28 = !{!26, !5, i64 40}
!29 = !{i64 0, i64 16, !14, i64 16, i64 16, !14}
!30 = !{!9, !5, i64 8}
!31 = !{!22, !5, i64 8}
!32 = !{!22, !5, i64 12}
end_hunk_0
