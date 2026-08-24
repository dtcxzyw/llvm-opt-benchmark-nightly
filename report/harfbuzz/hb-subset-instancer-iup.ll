Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-instancer-iup?download=true
inline.NumInlined: 278
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z18iup_delta_optimizeRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RS2_IbLb0EER13iup_scratch_td:bb.a
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.bf = add i32 %i.bd, 1
  store i32 %i.bf, ptr %i.ai, align 4, !tbaa !28
  %i.bg = zext i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bg
  %i.bi = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !38
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %.critedge.i, %bb.m, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.j, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.v, %.critedge.i59.3, %.preheader
  %i.bj = load i32, ptr %4, align 8, !tbaa !25
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %.critedge, label %bb.w

bb.n:                                             ; preds = %.lr.ph136
  %i.bl = add i32 %i.as, 1
  %i.bm = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.bl, i1 noundef zeroext false)
  br i1 %i.bm, label %..critedge_crit_edge.i57, label %bb.o, !prof !29

..critedge_crit_edge.i57:                         ; preds = %bb.n
  %.pre.i58 = load i32, ptr %i.ai, align 4, !tbaa !28
  br label %.critedge.i59

bb.o:                                             ; preds = %bb.n
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %bb.p

.critedge.i59:                                    ; preds = %..critedge_crit_edge.i57, %.lr.ph136
  %i.bn = phi i32 [ %.pre.i58, %..critedge_crit_edge.i57 ], [ %i.as, %.lr.ph136 ] ; 2 uses
  %i.bo = load ptr, ptr %i.ar, align 8, !tbaa !37
  %i.bp = add i32 %i.bn, 1
  store i32 %i.bp, ptr %i.ai, align 4, !tbaa !28
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bq
  store i32 %i.al, ptr %i.br, align 4, !tbaa !38
  br label %bb.p

bb.p:                                             ; preds = %.critedge.i59, %bb.o
  %i.bs = add i32 %i.aj, -3
  %i.bt = load i32, ptr %i.ai, align 4, !tbaa !28 ; 3 uses
  %i.bu = load i32, ptr %4, align 8, !tbaa !25
  %.not.i55.1 = icmp slt i32 %i.bt, %i.bu
  br i1 %.not.i55.1, label %.critedge.i59.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = add i32 %i.bt, 1
  %i.bw = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.bv, i1 noundef zeroext false)
  br i1 %i.bw, label %..critedge_crit_edge.i57.1, label %bb.r, !prof !29

bb.r:                                             ; preds = %bb.q
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1

..critedge_crit_edge.i57.1:                       ; preds = %bb.q
  %.pre.i58.1 = load i32, ptr %i.ai, align 4, !tbaa !28
  br label %.critedge.i59.1

.critedge.i59.1:                                  ; preds = %..critedge_crit_edge.i57.1, %bb.p
  %i.bx = phi i32 [ %.pre.i58.1, %..critedge_crit_edge.i57.1 ], [ %i.bt, %bb.p ] ; 2 uses
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !37
  %i.bz = add i32 %i.bx, 1
  store i32 %i.bz, ptr %i.ai, align 4, !tbaa !28
  %i.ca = zext i32 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ca
  store i32 %i.bs, ptr %i.cb, align 4, !tbaa !38
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1: ; preds = %.critedge.i59.1, %bb.r
  %i.cc = add i32 %i.aj, -2
  %i.cd = load i32, ptr %i.ai, align 4, !tbaa !28 ; 3 uses
  %i.ce = load i32, ptr %4, align 8, !tbaa !25
  %.not.i55.2 = icmp slt i32 %i.cd, %i.ce
  br i1 %.not.i55.2, label %.critedge.i59.2, label %bb.s

bb.s:                                             ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1
  %i.cf = add i32 %i.cd, 1
  %i.cg = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.cf, i1 noundef zeroext false)
  br i1 %i.cg, label %..critedge_crit_edge.i57.2, label %bb.t, !prof !29

bb.t:                                             ; preds = %bb.s
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2

..critedge_crit_edge.i57.2:                       ; preds = %bb.s
  %.pre.i58.2 = load i32, ptr %i.ai, align 4, !tbaa !28
  br label %.critedge.i59.2

.critedge.i59.2:                                  ; preds = %..critedge_crit_edge.i57.2, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1
  %i.ch = phi i32 [ %.pre.i58.2, %..critedge_crit_edge.i57.2 ], [ %i.cd, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1 ] ; 2 uses
  %i.ci = load ptr, ptr %i.ar, align 8, !tbaa !37
  %i.cj = add i32 %i.ch, 1
  store i32 %i.cj, ptr %i.ai, align 4, !tbaa !28
  %i.ck = zext i32 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ck
  store i32 %i.cc, ptr %i.cl, align 4, !tbaa !38
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2: ; preds = %.critedge.i59.2, %bb.t
  %i.cm = add i32 %i.aj, -1
  %i.cn = load i32, ptr %i.ai, align 4, !tbaa !28 ; 3 uses
  %i.co = load i32, ptr %4, align 8, !tbaa !25
  %.not.i55.3 = icmp slt i32 %i.cn, %i.co
  br i1 %.not.i55.3, label %.critedge.i59.3, label %bb.u

bb.u:                                             ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2
  %i.cp = add i32 %i.cn, 1
  %i.cq = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.cp, i1 noundef zeroext false)
  br i1 %i.cq, label %..critedge_crit_edge.i57.3, label %bb.v, !prof !29

bb.v:                                             ; preds = %bb.u
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %._crit_edge

..critedge_crit_edge.i57.3:                       ; preds = %bb.u
  %.pre.i58.3 = load i32, ptr %i.ai, align 4, !tbaa !28
  br label %.critedge.i59.3

.critedge.i59.3:                                  ; preds = %..critedge_crit_edge.i57.3, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2
  %i.cr = phi i32 [ %.pre.i58.3, %..critedge_crit_edge.i57.3 ], [ %i.cn, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2 ] ; 2 uses
  %i.cs = load ptr, ptr %i.ar, align 8, !tbaa !37
  %i.ct = add i32 %i.cr, 1
  store i32 %i.ct, ptr %i.ai, align 4, !tbaa !28
  %i.cu = zext i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cu
  store i32 %i.cm, ptr %i.cv, align 4, !tbaa !38
  br label %._crit_edge

bb.w:                                             ; preds = %._crit_edge
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !37 ; 2 uses
  %i.cy = load i32, ptr %i.ai, align 4, !tbaa !28 ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %.idx = shl nuw nsw i64 %i.cz, 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx
  %.not137 = icmp eq i32 %i.cy, 0
  br i1 %.not137, label %.critedge, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dh = fmul double %5, %5                      ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 100
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 116
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 132 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.sroa.237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 88
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph141, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread
  %.048139 = phi i32 [ 0, %.lr.ph141 ], [ %.ph, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread ] ; 6 uses
  %.050138 = phi ptr [ %i.cx, %.lr.ph141 ], [ %i.rv, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread ] ; 2 uses
  %i.eu = load i32, ptr %.050138, align 4, !tbaa !38 ; 2 uses
  %i.ev = sub i32 %i.eu, %.048139
  %i.ew = add i32 %i.ev, 1                        ; 4 uses
  %i.ex = load ptr, ptr %i.db, align 8, !tbaa !30
  %i.ey = load i32, ptr %i.a, align 4, !tbaa !8
  %storemerge.i.i = call i32 @llvm.usub.sat.i32(i32 %i.ey, i32 %.048139)
  %.sroa.speculated.i.i = call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.ew) ; 24 uses
  %i.ez = zext i32 %.048139 to i64                ; 5 uses
  %i.fa = getelementptr inbounds nuw [12 x i8], ptr %i.ex, i64 %i.ez ; 8 uses
  %.sroa.3.8.insert.ext.i.i = zext i32 %.sroa.speculated.i.i to i64 ; 5 uses
  %i.fb = load ptr, ptr %i.dc, align 8, !tbaa !40
  %i.fc = load i32, ptr %i.dd, align 4, !tbaa !42
  %storemerge.i.i66 = call i32 @llvm.usub.sat.i32(i32 %i.fc, i32 %.048139)
  %.sroa.speculated.i.i67 = call i32 @llvm.umin.i32(i32 %storemerge.i.i66, i32 %i.ew)
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ez ; 8 uses
  %i.fe = load ptr, ptr %i.de, align 8, !tbaa !40
  %i.ff = load i32, ptr %i.df, align 4, !tbaa !42
  %storemerge.i.i74 = call i32 @llvm.usub.sat.i32(i32 %i.ff, i32 %.048139)
  %.sroa.speculated.i.i75 = call i32 @llvm.umin.i32(i32 %storemerge.i.i74, i32 %i.ew)
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.ez ; 9 uses
  %i.fh = load ptr, ptr %i.dg, align 8, !tbaa !18 ; 2 uses
  %i.fi = ptrtoaddr ptr %i.fh to i64
  %i.fj = load i32, ptr %i.w, align 4, !tbaa !19
  %storemerge.i.i82 = call i32 @llvm.usub.sat.i32(i32 %i.fj, i32 %.048139)
  %.sroa.speculated.i.i83 = call i32 @llvm.umin.i32(i32 %storemerge.i.i82, i32 %i.ew) ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ez ; 16 uses
  %.sroa.3.8.insert.ext.i.i84 = zext i32 %.sroa.speculated.i.i83 to i64 ; 14 uses
  %.not.i87 = icmp eq i32 %.sroa.speculated.i.i83, %.sroa.speculated.i.i
  %.not161.i = icmp eq i32 %.sroa.speculated.i.i67, %.sroa.speculated.i.i
  %or.cond.i = select i1 %.not.i87, i1 %.not161.i, i1 false
  %.not162.i = icmp eq i32 %.sroa.speculated.i.i75, %.sroa.speculated.i.i
  %or.cond168.i = select i1 %or.cond.i, i1 %.not162.i, i1 false ; 3 uses
  br i1 %or.cond168.i, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.fl = add i32 %.sroa.speculated.i.i, -513
  %or.cond = icmp ult i32 %i.fl, -512
  br i1 %or.cond, label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread, label %.lr.ph.i, !prof !43

bb.z:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.3.8.insert.ext.i.i84
  br i1 %exitcond.not.i, label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread, label %.lr.ph.i, !llvm.loop !44

.lr.ph.i:                                         ; preds = %bb.y, %bb.z
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.z ], [ 0, %bb.y ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !38
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !38
  %i.fq = sitofp i32 %i.fn to double              ; 2 uses
  %i.fr = sitofp i32 %i.fp to double              ; 2 uses
  %i.fs = fmul nnan double %i.fr, %i.fr
  %i.ft = call double @llvm.fmuladd.f64(double %i.fq, double %i.fq, double %i.fs)
  %i.fu = fcmp ule double %i.ft, %i.dh
  br i1 %i.fu, label %bb.z, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  %i.fv = icmp eq i32 %.sroa.speculated.i.i, 1
  br i1 %i.fv, label %bb.ab, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %bb.aa
  %i.fw = load i32, ptr %i.fd, align 4, !tbaa !38 ; 2 uses
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.fk, align 1, !tbaa !45
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread

bb.ac:                                            ; preds = %bb.ae
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next64.i, %.sroa.3.8.insert.ext.i.i84
  br i1 %exitcond67.not.i, label %.critedge.i93, label %bb.ad, !llvm.loop !46

bb.ad:                                            ; preds = %bb.ac, %.lr.ph38.i
  %indvars.iv63.i = phi i64 [ 1, %.lr.ph38.i ], [ %indvars.iv.next64.i, %bb.ac ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv63.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !38
  %.not163.i = icmp eq i32 %i.fy, %i.fw
  br i1 %.not163.i, label %bb.ae, label %.lr.ph.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv63.i
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !38
  %i.gb = load i32, ptr %i.fg, align 4, !tbaa !38
  %.not164.i = icmp eq i32 %i.ga, %i.gb
  br i1 %.not164.i, label %bb.ac, label %.lr.ph.i.i

.critedge.i93:                                    ; preds = %bb.ac
  store i8 1, ptr %i.fk, align 1, !tbaa !45
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.di, i8 0, i64 64, i1 false), !tbaa !47
  %.084116.i.i = add nsw i32 %.sroa.speculated.i.i, -1 ; 5 uses
  %i.gc = zext nneg i32 %.084116.i.i to i64
  %.079.in.pre.i.i = load float, ptr %i.fa, align 4, !tbaa !49
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %.076.i.i = phi i32 [ %i.fw, %.lr.ph.i.i ], [ %.078.i.i, %.loopexit.i.i ] ; 5 uses
  %i.gd = phi i32 [ 0, %.lr.ph.i.i ], [ %i.kc, %.loopexit.i.i ] ; 10 uses
  %.079.in.i.i = phi float [ %.079.in.pre.i.i, %.lr.ph.i.i ], [ %.081.in.i.i, %.loopexit.i.i ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %i.gc, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 9 uses
  %.085117.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.i.i, %.loopexit.i.i ] ; 2 uses
  %i.ge = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.gf = add i32 %.084116.i.i, %i.ge
  %i.gg = urem i32 %i.gf, %.sroa.speculated.i.i
  %i.gh = getelementptr inbounds nuw [12 x i8], ptr %i.fa, i64 %indvars.iv.i.i ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i.i
  %i.gk = zext nneg i32 %i.gg to i64              ; 3 uses
  %i.gl = getelementptr inbounds nuw [12 x i8], ptr %i.fa, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.gk
  %i.go = getelementptr inbounds nuw [12 x i8], ptr %i.fa, i64 %.085117.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.085117.i.i
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i.i
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.gk
  %.077.i.i = load i32, ptr %i.gs, align 4, !tbaa !38 ; 5 uses
  %.078.i.i = load i32, ptr %i.gr, align 4, !tbaa !38 ; 8 uses
  %.079.i.i = fpext float %.079.in.i.i to double  ; 2 uses
  %.080.in.i.i = load float, ptr %i.gl, align 4, !tbaa !49 ; 3 uses
  %.080.i.i = fpext float %.080.in.i.i to double  ; 2 uses
  %.081.in.i.i = load float, ptr %i.gh, align 4, !tbaa !49 ; 2 uses
  %.081.i.i = fpext float %.081.in.i.i to double  ; 3 uses
  %i.gt = fcmp ugt float %.080.in.i.i, %.079.in.i.i ; 4 uses
  %.076..077.i.i = select i1 %i.gt, i32 %.076.i.i, i32 %.077.i.i ; 5 uses
  %.077..076.i.i = select i1 %i.gt, i32 %.077.i.i, i32 %.076.i.i ; 5 uses
  %.079..080.i.i = select i1 %i.gt, double %.079.i.i, double %.080.i.i ; 2 uses
  %i.gu = fcmp oeq float %.079.in.i.i, %.080.in.i.i
  br i1 %i.gu, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gv = sub nsw i32 %.076..077.i.i, %.077..076.i.i
  %i.gw = call i32 @llvm.abs.i32(i32 %i.gv, i1 true)
  %i.gx = uitofp nneg i32 %i.gw to double
  %i.gy = fcmp olt double %5, %i.gx
  br i1 %i.gy, label %bb.ah, label %.critedge.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.gz = call i32 @llvm.abs.i32(i32 %.078.i.i, i1 true)
  %i.ha = uitofp nneg i32 %i.gz to double
  %i.hb = fcmp olt double %5, %i.ha
  br i1 %i.hb, label %.critedge96.i.i, label %.critedge.i.i

bb.ai:                                            ; preds = %bb.af
  %.080..079.i.i = select i1 %i.gt, double %.080.i.i, double %.079.i.i
  %i.hc = fcmp ugt double %.079..080.i.i, %.081.i.i
  %i.hd = fcmp ult double %.080..079.i.i, %.081.i.i
  %or.cond.i.i = or i1 %i.hc, %i.hd
  br i1 %or.cond.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.speculated103.i.i = call i32 @llvm.smin.i32(i32 %.076.i.i, i32 %.077.i.i)
  %i.he = sitofp i32 %.sroa.speculated103.i.i to double
  %i.hf = fsub double %i.he, %5
  %i.hg = sitofp i32 %.078.i.i to double          ; 2 uses
  %i.hh = fcmp ugt double %i.hf, %i.hg
  br i1 %i.hh, label %.critedge96.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.sroa.speculated.i.i88 = call i32 @llvm.smax.i32(i32 %.076.i.i, i32 %.077.i.i)
  %i.hi = sitofp i32 %.sroa.speculated.i.i88 to double
  %i.hj = fadd double %5, %i.hi
  %i.hk = fcmp ult double %i.hj, %i.hg
  br i1 %i.hk, label %.critedge96.i.i, label %.critedge.i.i

bb.al:                                            ; preds = %bb.ai
  %.not.i.i92 = icmp eq i32 %.076.i.i, %.077.i.i
  br i1 %.not.i.i92, label %.critedge.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hl = fcmp ogt double %.079..080.i.i, %.081.i.i
  %i.hm = call i32 @llvm.abs.i32(i32 %.078.i.i, i1 true)
  %i.hn = uitofp nneg i32 %i.hm to double
  %i.ho = fcmp olt double %5, %i.hn               ; 2 uses
  br i1 %i.hl, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  br i1 %i.ho, label %bb.ao, label %.critedge.i.i

bb.ao:                                            ; preds = %bb.an
  %i.hp = sub nsw i32 %.078.i.i, %.076..077.i.i
  %i.hq = call i32 @llvm.abs.i32(i32 %i.hp, i1 true)
  %i.hr = uitofp nneg i32 %i.hq to double
  %i.hs = fcmp olt double %5, %i.hr
  br i1 %i.hs, label %bb.ar, label %.critedge.i.i

bb.ap:                                            ; preds = %bb.am
  br i1 %i.ho, label %bb.aq, label %.critedge.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.ht = sub nsw i32 %.078.i.i, %.077..076.i.i
  %i.hu = call i32 @llvm.abs.i32(i32 %i.ht, i1 true)
  %i.hv = uitofp nneg i32 %i.hu to double
  %i.hw = fcmp olt double %5, %i.hv
  br i1 %i.hw, label %.split.i.i, label %.critedge.i.i

.split.i.i:                                       ; preds = %bb.aq
  %i.hx = sitofp i32 %.077..076.i.i to double
  %i.hy = sitofp i32 %.078.i.i to double
  %i.hz = fadd double %5, %i.hy
  %i.ia = fcmp ogt double %i.hz, %i.hx
  %i.ib = icmp slt i32 %.076..077.i.i, %.077..076.i.i
  %not..not91.i.i = xor i1 %i.ib, %i.ia
  br i1 %not..not91.i.i, label %.critedge96.i.i, label %.critedge.i.i

bb.ar:                                            ; preds = %bb.ao
  %i.ic = sitofp i32 %.078.i.i to double
  %i.id = fsub double %i.ic, %5
  %i.ie = sitofp i32 %.076..077.i.i to double
  %i.if = fcmp olt double %i.id, %i.ie
  %i.ig = icmp slt i32 %.076..077.i.i, %.077..076.i.i
  %not..not92.i.i = xor i1 %i.ig, %i.if
  br i1 %not..not92.i.i, label %.critedge96.i.i, label %.critedge.i.i

.critedge96.i.i:                                  ; preds = %bb.bd, %bb.bb, %.split.1.i.i, %bb.au, %bb.at, %bb.ar, %.split.i.i, %bb.ak, %bb.aj, %bb.ah
  %i.ih = and i64 %indvars.iv.i.i, 63
  %i.ii = shl nuw i64 1, %i.ih
  %i.ij = lshr i64 %indvars.iv.i.i, 6
  %i.ik = and i64 %i.ij, 7
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.ik ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !47
  %i.in = or i64 %i.im, %i.ii
  store i64 %i.in, ptr %i.il, align 8, !tbaa !47
  br label %.loopexit.i.i

.critedge.i.i:                                    ; preds = %bb.ar, %.split.i.i, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.ah, %bb.ag
  %.076.1.i.i = load i32, ptr %i.gq, align 4, !tbaa !38 ; 5 uses
  %.077.1.i.i = load i32, ptr %i.gn, align 4, !tbaa !38 ; 5 uses
  %.078.1.i.i = load i32, ptr %i.gj, align 4, !tbaa !38 ; 7 uses
  %.079.in.1.i.i = load float, ptr %i.gp, align 4, !tbaa !49 ; 3 uses
  %.079.1.i.i = fpext float %.079.in.1.i.i to double ; 2 uses
  %.080.in.1.i.i = load float, ptr %i.gm, align 4, !tbaa !49 ; 3 uses
  %.080.1.i.i = fpext float %.080.in.1.i.i to double ; 2 uses
  %.081.in.1.i.i = load float, ptr %i.gi, align 4, !tbaa !49
  %.081.1.i.i = fpext float %.081.in.1.i.i to double ; 3 uses
  %i.io = fcmp ugt float %.080.in.1.i.i, %.079.in.1.i.i ; 4 uses
  %.076..077.1.i.i = select i1 %i.io, i32 %.076.1.i.i, i32 %.077.1.i.i ; 5 uses
  %.077..076.1.i.i = select i1 %i.io, i32 %.077.1.i.i, i32 %.076.1.i.i ; 5 uses
  %.079..080.1.i.i = select i1 %i.io, double %.079.1.i.i, double %.080.1.i.i ; 2 uses
  %i.ip = fcmp oeq float %.079.in.1.i.i, %.080.in.1.i.i
  br i1 %i.ip, label %bb.bc, label %bb.as

bb.as:                                            ; preds = %.critedge.i.i
  %.080..079.1.i.i = select i1 %i.io, double %.080.1.i.i, double %.079.1.i.i
  %i.iq = fcmp ugt double %.079..080.1.i.i, %.081.1.i.i
  %i.ir = fcmp ult double %.080..079.1.i.i, %.081.1.i.i
  %or.cond.1.i.i = or i1 %i.iq, %i.ir
  br i1 %or.cond.1.i.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.speculated103.1.i.i = call i32 @llvm.smin.i32(i32 %.076.1.i.i, i32 %.077.1.i.i)
  %i.is = sitofp i32 %.sroa.speculated103.1.i.i to double
  %i.it = fsub double %i.is, %5
  %i.iu = sitofp i32 %.078.1.i.i to double        ; 2 uses
  %i.iv = fcmp ugt double %i.it, %i.iu
  br i1 %i.iv, label %.critedge96.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.sroa.speculated.1.i.i = call i32 @llvm.smax.i32(i32 %.076.1.i.i, i32 %.077.1.i.i)
  %i.iw = sitofp i32 %.sroa.speculated.1.i.i to double
  %i.ix = fadd double %5, %i.iw
  %i.iy = fcmp ult double %i.ix, %i.iu
  br i1 %i.iy, label %.critedge96.i.i, label %.loopexit.i.i

bb.av:                                            ; preds = %bb.as
  %.not.1.i.i = icmp eq i32 %.076.1.i.i, %.077.1.i.i
  br i1 %.not.1.i.i, label %.loopexit.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.iz = fcmp ogt double %.079..080.1.i.i, %.081.1.i.i
  %i.ja = call i32 @llvm.abs.i32(i32 %.078.1.i.i, i1 true)
  %i.jb = uitofp nneg i32 %i.ja to double
  %i.jc = fcmp olt double %5, %i.jb               ; 2 uses
  br i1 %i.iz, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.jc, label %bb.ay, label %.loopexit.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.jd = sub nsw i32 %.078.1.i.i, %.077..076.1.i.i
  %i.je = call i32 @llvm.abs.i32(i32 %i.jd, i1 true)
  %i.jf = uitofp nneg i32 %i.je to double
  %i.jg = fcmp olt double %5, %i.jf
  br i1 %i.jg, label %.split.1.i.i, label %.loopexit.i.i

.split.1.i.i:                                     ; preds = %bb.ay
  %i.jh = sitofp i32 %.077..076.1.i.i to double
  %i.ji = sitofp i32 %.078.1.i.i to double
  %i.jj = fadd double %5, %i.ji
  %i.jk = fcmp ogt double %i.jj, %i.jh
  %i.jl = icmp slt i32 %.076..077.1.i.i, %.077..076.1.i.i
  %not..not91.1.i.i = xor i1 %i.jl, %i.jk
end_hunk_0
begin_hunk_1_@_Z18iup_delta_optimizeRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RS2_IbLb0EER13iup_scratch_td:bb.a
bb.cg:                                            ; preds = %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread.i, %_ZN11hb_vector_tIiLb0EE5resetEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.of = shl nuw nsw i32 %.sroa.speculated.i.i, 1 ; 6 uses
  br label %.preheader.i.i89

.preheader.i.i89:                                 ; preds = %.preheader.i.i89, %bb.cg
  %.043.i.i = phi i32 [ %i.oi, %.preheader.i.i89 ], [ 0, %bb.cg ] ; 2 uses
  %i.og = lshr i32 %.043.i.i, 1
  %i.oh = add i32 %.043.i.i, 8
  %i.oi = add i32 %i.oh, %i.og                    ; 8 uses
  %i.oj = icmp ugt i32 %i.of, %i.oi
  br i1 %i.oj, label %.preheader.i.i89, label %.thread.i.i, !llvm.loop !81

.thread.i.i:                                      ; preds = %.preheader.i.i89
  %i.ok = icmp ugt i32 %i.oi, 1073741823
  br i1 %i.ok, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i, !prof !12

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i: ; preds = %.thread.i.i
  %i.ol = shl nuw i32 %i.oi, 2
  %i.om = zext i32 %i.ol to i64
  %i.on = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.om) #8 ; 9 uses
  %.not22.i.i90 = icmp eq ptr %i.on, null
  br i1 %.not22.i.i90, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i, label %bb.ch, !prof !82

bb.ch:                                            ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i
  store ptr %i.on, ptr %i.du, align 8, !tbaa !40
  store i32 %i.oi, ptr %11, align 8, !tbaa !51
  store i32 %i.of, ptr %i.dv, align 4, !tbaa !42
  br label %.preheader.i224.i

.preheader.i224.i:                                ; preds = %.preheader.i224.i, %bb.ch
  %.043.i225.i = phi i32 [ %i.oq, %.preheader.i224.i ], [ 0, %bb.ch ] ; 2 uses
  %i.oo = lshr i32 %.043.i225.i, 1
  %i.op = add i32 %.043.i225.i, 8
  %i.oq = add i32 %i.op, %i.oo                    ; 5 uses
  %i.or = icmp ugt i32 %i.of, %i.oq
  br i1 %i.or, label %.preheader.i224.i, label %.thread.i226.i, !llvm.loop !81

.thread.i226.i:                                   ; preds = %.preheader.i224.i
  %i.os = icmp ugt i32 %i.oq, 1073741823
  br i1 %i.os, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i, !prof !12

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i: ; preds = %.thread.i226.i
  %i.ot = shl nuw i32 %i.oq, 2
  %i.ou = zext i32 %i.ot to i64
  %i.ov = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ou) #8 ; 7 uses
  %.not22.i230.i = icmp eq ptr %i.ov, null
  br i1 %.not22.i230.i, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i, label %bb.ci, !prof !82

bb.ci:                                            ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i
  store ptr %i.ov, ptr %i.dw, align 8, !tbaa !40
  store i32 %i.oq, ptr %12, align 8, !tbaa !51
  store i32 %i.of, ptr %i.dx, align 4, !tbaa !42
  br label %.preheader.i245.i

.preheader.i245.i:                                ; preds = %.preheader.i245.i, %bb.ci
  %.043.i246.i = phi i32 [ %i.oy, %.preheader.i245.i ], [ 0, %bb.ci ] ; 2 uses
  %i.ow = lshr i32 %.043.i246.i, 1
  %i.ox = add i32 %.043.i246.i, 8
  %i.oy = add i32 %i.ox, %i.ow                    ; 5 uses
  %i.oz = icmp ugt i32 %i.of, %i.oy
  br i1 %i.oz, label %.preheader.i245.i, label %.thread.i247.i, !llvm.loop !83

.thread.i247.i:                                   ; preds = %.preheader.i245.i
  %i.pa = icmp ugt i32 %i.oy, 357913941
  br i1 %i.pa, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i, !prof !12

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i: ; preds = %.thread.i247.i
  %i.pb = zext nneg i32 %i.oy to i64
  %i.pc = mul nuw nsw i64 %i.pb, 12
  %i.pd = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.pc) #8 ; 6 uses
  %.not22.i250.i = icmp eq ptr %i.pd, null
  br i1 %.not22.i250.i, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE12resize_dirtyEi.exit.i, !prof !82

_ZN11hb_vector_tI15contour_point_tLb0EE12resize_dirtyEi.exit.i: ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i
  store ptr %i.pd, ptr %i.dy, align 8, !tbaa !30
  store i32 %i.oy, ptr %13, align 8, !tbaa !55
  store i32 %i.of, ptr %i.dz, align 4, !tbaa !8
  %i.pe = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i, 2 ; 4 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %.sroa.3.8.insert.ext.i.i
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %.sroa.3.8.insert.ext.i.i
  %i.ph = mul nuw nsw i64 %.sroa.3.8.insert.ext.i.i, 12 ; 2 uses
  %i.pi = getelementptr inbounds nuw [12 x i8], ptr %i.pd, i64 %.sroa.3.8.insert.ext.i.i
  br label %_ZL9hb_memcpyPvPKvm.exit204.i

bb.cj:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit204.i
  %i.pj = call fastcc noundef zeroext i1 @_ZL24_iup_contour_optimize_dpRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RK13hb_bit_page_tdjRS2_IjLb0EERS3_RS2_IdLb0EESD_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(72) %6, double noundef %i.dh, i32 noundef %.sroa.speculated.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.eb)
  br i1 %i.pj, label %bb.ck, label %_ZN11hb_vector_tIiLb0EED2Ev.exit219.i

_ZL9hb_memcpyPvPKvm.exit204.i:                    ; preds = %_ZL9hb_memcpyPvPKvm.exit204.i, %_ZN11hb_vector_tI15contour_point_tLb0EE12resize_dirtyEi.exit.i
  %.013940.i = phi i32 [ 0, %_ZN11hb_vector_tI15contour_point_tLb0EE12resize_dirtyEi.exit.i ], [ %i.pk, %_ZL9hb_memcpyPvPKvm.exit204.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.on, ptr nonnull readonly align 4 %i.fd, i64 range(i64 0, 51539607541) %i.pe, i1 false), !alias.scope !84
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pf, ptr nonnull readonly align 4 %i.fd, i64 range(i64 0, 51539607541) %i.pe, i1 false), !alias.scope !88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ov, ptr readonly align 1 %i.fg, i64 range(i64 0, 51539607541) %i.pe, i1 false), !alias.scope !92
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pg, ptr readonly align 1 %i.fg, i64 range(i64 0, 51539607541) %i.pe, i1 false), !alias.scope !96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pd, ptr nonnull readonly align 4 %i.fa, i64 range(i64 0, 51539607541) %i.ph, i1 false), !alias.scope !100
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pi, ptr nonnull readonly align 4 %i.fa, i64 range(i64 0, 51539607541) %i.ph, i1 false), !alias.scope !104
  %i.pk = add nuw nsw i32 %.013940.i, 1           ; 2 uses
  %exitcond68.not.i = icmp eq i32 %i.pk, %.sroa.speculated.i.i
  br i1 %exitcond68.not.i, label %bb.cj, label %_ZL9hb_memcpyPvPKvm.exit204.i, !llvm.loop !108

bb.ck:                                            ; preds = %bb.cj
  %i.pl = load i32, ptr %i.dk, align 4, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ec, i8 0, i64 64, i1 false), !tbaa !47
  %.not57.i = icmp slt i32 %i.pl, %.sroa.speculated.i.i
  br i1 %.not57.i, label %.preheader.i, label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %bb.ck
  %i.pm = add nuw nsw i32 %.sroa.speculated.i.i, 1
  %i.pn = load ptr, ptr %i.ee, align 8, !tbaa !40
  br label %.lr.ph44.i

.preheader.i:                                     ; preds = %bb.cq, %bb.ck
  %min.iters.check243 = icmp ult i32 %.sroa.speculated.i.i83, 4
  br i1 %min.iters.check243, label %scalar.ph.preheader, label %vector.ph244

vector.ph244:                                     ; preds = %.preheader.i
  %n.vec245 = and i64 %.sroa.3.8.insert.ext.i.i84, 4294967292 ; 3 uses
  br label %vector.body246

vector.body246:                                   ; preds = %pred.store.continue255, %vector.ph244
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next256, %pred.store.continue255 ] ; 7 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph244 ], [ %vec.ind.next, %pred.store.continue255 ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.po = lshr i64 %index247, 6
  %i.pp = lshr i64 %index247, 6
  %i.pq = and i64 %i.po, 7
  %i.pr = and i64 %i.pp, 7
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.pq
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.pr
  %i.pu = load i64, ptr %i.ps, align 8, !tbaa !47
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.pu, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.pv = load i64, ptr %i.pt, align 8, !tbaa !47
  %broadcast.splatinsert248 = insertelement <2 x i64> poison, i64 %i.pv, i64 0
  %broadcast.splat249 = shufflevector <2 x i64> %broadcast.splatinsert248, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.pw = and <2 x i64> %vec.ind, splat (i64 63)
  %i.px = and <2 x i64> %step.add, splat (i64 63)
  %i.py = shl nuw <2 x i64> splat (i64 1), %i.pw
  %i.pz = shl nuw <2 x i64> splat (i64 1), %i.px
  %i.qa = and <2 x i64> %i.py, %broadcast.splat
  %i.qb = and <2 x i64> %i.pz, %broadcast.splat249
  %i.qc = icmp ne <2 x i64> %i.qa, zeroinitializer ; 2 uses
  %i.qd = icmp ne <2 x i64> %i.qb, zeroinitializer ; 2 uses
  %i.qe = extractelement <2 x i1> %i.qc, i64 0
  br i1 %i.qe, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body246
  %i.qf = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index247
  store i8 1, ptr %i.qf, align 1, !tbaa !45
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body246
  %i.qg = extractelement <2 x i1> %i.qc, i64 1
  br i1 %i.qg, label %pred.store.if250, label %pred.store.continue251

pred.store.if250:                                 ; preds = %pred.store.continue
  %i.qh = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index247
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 1
  store i8 1, ptr %i.qi, align 1, !tbaa !45
  br label %pred.store.continue251

pred.store.continue251:                           ; preds = %pred.store.if250, %pred.store.continue
  %i.qj = extractelement <2 x i1> %i.qd, i64 0
  br i1 %i.qj, label %pred.store.if252, label %pred.store.continue253

pred.store.if252:                                 ; preds = %pred.store.continue251
  %i.qk = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index247
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 2
  store i8 1, ptr %i.ql, align 1, !tbaa !45
  br label %pred.store.continue253

pred.store.continue253:                           ; preds = %pred.store.if252, %pred.store.continue251
  %i.qm = extractelement <2 x i1> %i.qd, i64 1
  br i1 %i.qm, label %pred.store.if254, label %pred.store.continue255

pred.store.if254:                                 ; preds = %pred.store.continue253
  %i.qn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index247
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 3
  store i8 1, ptr %i.qo, align 1, !tbaa !45
  br label %pred.store.continue255

pred.store.continue255:                           ; preds = %pred.store.if254, %pred.store.continue253
  %index.next256 = add nuw i64 %index247, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.qp = icmp eq i64 %index.next256, %n.vec245
  br i1 %i.qp, label %middle.block257, label %vector.body246, !llvm.loop !109

middle.block257:                                  ; preds = %pred.store.continue255
  %cmp.n258 = icmp eq i64 %n.vec245, %.sroa.3.8.insert.ext.i.i84
  br i1 %cmp.n258, label %_ZN11hb_vector_tIiLb0EED2Ev.exit207.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block257
  %indvars.iv73.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec245, %middle.block257 ]
  br label %scalar.ph

.lr.ph44.i:                                       ; preds = %bb.cq, %.lr.ph49.i
  %.013747.i = phi i32 [ %.084116.i.i, %.lr.ph49.i ], [ %20, %bb.cq ] ; 4 uses
  %.013846.i = phi i32 [ %i.pm, %.lr.ph49.i ], [ %.2.i, %bb.cq ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ed, i8 0, i64 64, i1 false), !tbaa !47
  %16 = sub nsw i32 %.013747.i, %.sroa.speculated.i.i ; 4 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.lr.ph44.i
  %.013643.i = phi i32 [ %.013747.i, %.lr.ph44.i ], [ %i.ra, %bb.cl ] ; 2 uses
  %i.qq = urem i32 %.013643.i, %.sroa.speculated.i.i ; 2 uses
  %i.qr = and i32 %i.qq, 63
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = shl nuw i64 1, %i.qs
  %i.qu = lshr i32 %i.qq, 6
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.qv ; 2 uses
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !47
  %i.qy = or i64 %i.qt, %i.qx
  store i64 %i.qy, ptr %i.qw, align 8, !tbaa !47
  %17 = zext nneg i32 %.013643.i to i64
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %17
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !38 ; 3 uses
  %18 = icmp sgt i32 %i.ra, %16
  br i1 %18, label %bb.cl, label %._crit_edge.i, !llvm.loop !110

._crit_edge.i:                                    ; preds = %bb.cl
  store i32 -1, ptr %15, align 8
  %i.rb = icmp eq i32 %i.ra, %16
  br i1 %i.rb, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %._crit_edge.i
  %i.rc = icmp slt i32 %16, 0
  %.pre.i91 = load ptr, ptr %i.ef, align 8, !tbaa !37 ; 2 uses
  br i1 %i.rc, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.rd = zext nneg i32 %16 to i64
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %.pre.i91, i64 %i.rd
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !38
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.rg = phi i32 [ %i.rf, %bb.cn ], [ 0, %bb.cm ]
  %19 = zext nneg i32 %.013747.i to i64
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %.pre.i91, i64 %19
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !38
  %i.rj = sub i32 %i.ri, %i.rg                    ; 2 uses
  %.not167.i = icmp ugt i32 %i.rj, %.013846.i
  br i1 %.not167.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, i64 72, i1 false), !tbaa.struct !111
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %._crit_edge.i
  %.2.i = phi i32 [ %.013846.i, %._crit_edge.i ], [ %i.rj, %bb.cp ], [ %.013846.i, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  %20 = add nsw i32 %.013747.i, 1                 ; 2 uses
  %exitcond72.not.i = icmp eq i32 %20, %i.pl
  br i1 %exitcond72.not.i, label %.preheader.i, label %.lr.ph44.i, !llvm.loop !113

_ZN11hb_vector_tIiLb0EED2Ev.exit207.i:            ; preds = %bb.cs, %middle.block257
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @hb_free(ptr noundef nonnull %i.pd) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @hb_free(ptr noundef nonnull %i.ov) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @hb_free(ptr noundef nonnull %i.on) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.cs
  %indvars.iv73.i = phi i64 [ %indvars.iv.next74.i, %bb.cs ], [ %indvars.iv73.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.rk = lshr i64 %indvars.iv73.i, 6
  %i.rl = and i64 %i.rk, 7
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.rl
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !47
  %i.ro = and i64 %indvars.iv73.i, 63
  %i.rp = shl nuw i64 1, %i.ro
  %i.rq = and i64 %i.rp, %i.rn
  %.not27.i = icmp eq i64 %i.rq, 0
  br i1 %.not27.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %scalar.ph
  %i.rr = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv73.i
  store i8 1, ptr %i.rr, align 1, !tbaa !45
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %scalar.ph
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next74.i, %.sroa.3.8.insert.ext.i.i84
  br i1 %exitcond77.not.i, label %_ZN11hb_vector_tIiLb0EED2Ev.exit207.i, label %scalar.ph, !llvm.loop !114

_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i: ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i, %.thread.i226.i, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i, %.thread.i.i
  %.ph.i = phi ptr [ null, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i ], [ null, %.thread.i.i ], [ %i.on, %.thread.i226.i ], [ %i.on, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i ]
  %.ph123.i = phi i32 [ -1, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i ], [ -1, %.thread.i.i ], [ %i.oi, %.thread.i226.i ], [ %i.oi, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit211.i

_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i: ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i, %.thread.i247.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @hb_free(ptr noundef nonnull %i.ov) #8
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit211.i

_ZN11hb_vector_tIiLb0EED2Ev.exit211.i:            ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i, %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i
  %i.rs = phi i32 [ %.ph123.i, %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i ], [ %i.oi, %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i ]
  %i.rt = phi ptr [ %.ph.i, %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i ], [ %i.on, %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %i.ru = add nsw i32 %i.rs, -1
  %spec.select.i.i.i212.i = icmp ult i32 %i.ru, -2
  br i1 %spec.select.i.i.i212.i, label %bb.ct, label %_ZN11hb_vector_tIiLb0EED2Ev.exit213.i

bb.ct:                                            ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit211.i
  call void @hb_free(ptr noundef %i.rt) #8
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit213.i

_ZN11hb_vector_tIiLb0EED2Ev.exit213.i:            ; preds = %bb.ct, %_ZN11hb_vector_tIiLb0EED2Ev.exit211.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116

_ZN11hb_vector_tIiLb0EED2Ev.exit219.i:            ; preds = %bb.cj
  call void @hb_free(ptr noundef nonnull %i.pd) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @hb_free(ptr noundef nonnull %i.ov) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @hb_free(ptr noundef nonnull %i.on) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116

.critedge170.critedge.i:                          ; preds = %bb.bt, %bb.by, %bb.bx, %bb.bw, %_ZL9hb_memcpyPvPKvm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116

_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116: ; preds = %_ZNK13hb_bit_page_t7get_maxEv.exit.i, %.critedge170.critedge.i, %bb.cf, %_ZN11hb_vector_tIiLb0EED2Ev.exit219.i, %_ZN11hb_vector_tIiLb0EED2Ev.exit213.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %.critedge

_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit: ; preds = %.critedge179.i, %_ZN11hb_vector_tIiLb0EED2Ev.exit207.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread

_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread: ; preds = %bb.z, %.critedge.i93, %bb.ab, %bb.y, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit
  %.ph = add i32 %i.eu, 1
  %i.rv = getelementptr inbounds nuw i8, ptr %.050138, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.rv, %i.da
  br i1 %.not, label %.critedge, label %bb.x

.critedge:                                        ; preds = %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread, %bb.x, %bb.w, %bb.b, %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i, %bb.a, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116, %_ZN11hb_vector_tIjLb0EE5resetEv.exit, %._crit_edge
  %.5 = phi i1 [ false, %bb.b ], [ false, %._crit_edge ], [ false, %_ZN11hb_vector_tIjLb0EE5resetEv.exit ], [ false, %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i ], [ false, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116 ], [ false, %bb.a ], [ true, %bb.w ], [ %or.cond168.i, %bb.x ], [ %or.cond168.i, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread ]
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !25     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !12

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !115

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !12

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  tail call void @hb_free(ptr noundef %i.m) #8
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #8 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 51539607541) %i.v, i1 false), !alias.scope !116
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #8 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, !prof !82

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !25    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_ZL5beginIR13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %.not.3.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.3.i.i.i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !47   ; 2 uses
  %.not.4.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.4.i.i.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47   ; 2 uses
  %.not.5.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.5.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %.not.6.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.6.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !47   ; 2 uses
  %.not.7.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.7.i.i.i.i, label %"_ZNK3$_8clIR13hb_bit_page_tEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOS3_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0712.lcssa.wide.i.i.i.i = phi i32 [ 0, %bb.a ], [ 64, %bb.b ], [ 128, %bb.c ], [ 192, %bb.d ], [ 256, %bb.e ], [ 320, %bb.f ], [ 384, %bb.g ], [ 448, %bb.h ]
  %.lcssa.i.i.i.i = phi i64 [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.n, %bb.g ], [ %i.p, %bb.h ]
  %i.q = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i.i, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = or disjoint i32 %.0712.lcssa.wide.i.i.i.i, %i.r
  br label %"_ZNK3$_8clIR13hb_bit_page_tEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOS3_.exit"

"_ZNK3$_8clIR13hb_bit_page_tEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOS3_.exit": ; preds = %bb.h, %bb.i
  %i.t = phi i32 [ %i.s, %bb.i ], [ -1, %bb.h ]
  %.fca.0.insert.i.i = insertvalue { ptr, i32 } poison, ptr %0, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i32 } %.fca.0.insert.i.i, i32 %i.t, 1
  ret { ptr, i32 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !38
  %i.d = add i32 %i.c, 1                          ; 3 uses
  %i.e = and i32 %i.d, 511                        ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.b, label %.lr.ph.preheader.i.i

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %i.b, align 4, !tbaa !38
  br label %_ZN13hb_bit_page_t6iter_t8__next__Ev.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !154
  %i.g = lshr i32 %i.e, 6                         ; 2 uses
  %i.h = and i32 %i.d, 63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = zext nneg i32 %i.g to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47
  %i.m = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.m
  %i.n = and i64 %i.l, %notmask.i.i
  store i64 %i.n, ptr %i.a, align 8, !tbaa !47
  %i.o = lshr i32 %i.d, 6
  %i.p = and i32 %i.o, 7                          ; 2 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = or disjoint i32 %i.p, 8
  %i.s = sub nuw nsw i32 %i.r, %i.g
  %wide.trip.count.i.i = zext nneg i32 %i.s to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.q, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %.027.i.i = phi ptr [ %i.a, %.lr.ph.preheader.i.i ], [ %i.z, %bb.d ]
  %i.t = load i64, ptr %.027.i.i, align 8, !tbaa !47 ; 2 uses
  %.not20.not.i.not.i = icmp eq i64 %i.t, 0
  br i1 %.not20.not.i.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.u = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.v = shl nuw nsw i32 %i.u, 6
  %i.w = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.t, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = or disjoint i32 %i.v, %i.x
  br label %.critedge.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !128

.critedge.i.i:                                    ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi i32 [ %i.y, %bb.c ], [ -1, %bb.d ]
  store i32 %storemerge.i.i, ptr %i.b, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN13hb_bit_page_t6iter_t8__next__Ev.exit

_ZN13hb_bit_page_t6iter_t8__next__Ev.exit:        ; preds = %bb.b, %.critedge.i.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12rotate_arrayIbTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEbRK10hb_array_tIKS1_EiR11hb_vector_tIS1_Lb0EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 -2147483647, 1) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68   ; 8 uses
  %or.cond = icmp slt i32 %i.b, 1
  br i1 %or.cond, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 8, !tbaa !13     ; 4 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp samesign ugt i32 %i.b, %i.c
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h, !prof !12

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.g, %.preheader.i.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.e = lshr i32 %.053.i.i, 1
  %i.f = add nuw i32 %.053.i.i, 8
  %i.g = add nuw i32 %i.f, %i.e                   ; 6 uses
  %i.h = icmp ugt i32 %i.b, %i.g
  br i1 %i.h, label %.preheader.i.i, label %.thread39.i.i, !llvm.loop !16

.thread39.i.i:                                    ; preds = %.preheader.i.i
  %.not8.i.i.i.i = icmp eq i32 %i.c, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  br i1 %.not8.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i

bb.d:                                             ; preds = %.thread39.i.i
  %.not9.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = zext i32 %i.g to i64
  %i.l = tail call ptr @hb_malloc(i64 noundef %i.k) #8 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr readonly align 1 %i.p, i64 range(i64 0, 51539607541) %i.o, i1 false), !alias.scope !155
  br label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.d, %.thread39.i.i
  %i.q = phi ptr [ null, %bb.d ], [ %i.j, %.thread39.i.i ]
  %i.r = zext i32 %i.g to i64
  %i.s = tail call ptr @hb_realloc(ptr noundef %i.q, i64 noundef %i.r) #8 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.s, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, !prof !24

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i: ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %bb.e
  %i.t = load i32, ptr %2, align 8, !tbaa !13     ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.g, %i.t
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i, label %bb.h, !prof !159

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i:  ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %bb.g, %bb.f
  %.1.i.i52.i.i = phi ptr [ %i.s, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ %i.l, %bb.f ], [ %i.l, %bb.g ]
  store ptr %.1.i.i52.i.i, ptr %i.i, align 8, !tbaa !18
  store i32 %i.g, ptr %2, align 8, !tbaa !13
  br label %bb.h

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i:          ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i
  %i.u = xor i32 %i.t, -1
  store i32 %i.u, ptr %2, align 8, !tbaa !13
  br label %_ZL9hb_memcpyPvPKvm.exit26

bb.h:                                             ; preds = %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.b, ptr %i.v, align 4, !tbaa !19
  %i.w = icmp slt i32 %1, 0
  br i1 %i.w, label %_ZL9hb_memcpyPvPKvm.exit, label %_ZL9hb_memcpyPvPKvm.exit.thread

_ZL9hb_memcpyPvPKvm.exit.thread:                  ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.h
  %i.y = sub nsw i32 0, %1
  %i.z = urem i32 %i.y, %i.b                      ; 2 uses
  %i.aa = sub nsw i32 %i.b, %i.z                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = zext i32 %i.aa to i64                   ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !66
  %i.ae = zext nneg i32 %i.b to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ag = sub nsw i64 0, %i.ac
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull readonly align 1 %i.ah, i64 range(i64 0, 51539607541) %i.ac, i1 false), !alias.scope !160
  %.not.i25 = icmp eq i32 %i.z, 0
  br i1 %.not.i25, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.i, !prof !164

bb.i:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit.thread, %_ZL9hb_memcpyPvPKvm.exit
  %.0223041 = phi i32 [ 0, %_ZL9hb_memcpyPvPKvm.exit.thread ], [ %i.aa, %_ZL9hb_memcpyPvPKvm.exit ]
  %i.aj = phi ptr [ %i.x, %_ZL9hb_memcpyPvPKvm.exit.thread ], [ %i.ab, %_ZL9hb_memcpyPvPKvm.exit ]
  %i.ak = phi i64 [ 0, %_ZL9hb_memcpyPvPKvm.exit.thread ], [ %i.ac, %_ZL9hb_memcpyPvPKvm.exit ]
  %i.al = sub i32 %i.b, %.0223041
  %i.am = zext i32 %i.al to i64
  %i.an = load ptr, ptr %0, align 8, !tbaa !66
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr readonly align 1 %i.an, i64 range(i64 0, 51539607541) %i.am, i1 false), !alias.scope !165
  br label %_ZL9hb_memcpyPvPKvm.exit26

_ZL9hb_memcpyPvPKvm.exit26:                       ; preds = %bb.b, %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i, %bb.i, %_ZL9hb_memcpyPvPKvm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @hb_free(ptr noundef) local_unnamed_addr #7

declare ptr @hb_malloc(i64 noundef) local_unnamed_addr #7

declare ptr @hb_realloc(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !51     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !12

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !81

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !12

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  tail call void @hb_free(ptr noundef %i.m) #8
  br label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #8 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !42   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 51539607541) %i.v, i1 false), !alias.scope !169
  br label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #8 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, !prof !82

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !51    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !40
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !51
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !55     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !12

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !83

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 357913941
  br i1 %i.j, label %.critedge, label %bb.e, !prof !12

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30
  tail call void @hb_free(ptr noundef %i.m) #8
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_2
