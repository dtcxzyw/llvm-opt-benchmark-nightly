Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-instancer-iup?download=true
inline.NumInlined: 278
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z18iup_delta_optimizeRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RS2_IbLb0EER13iup_scratch_td:bb.a

bb.n:                                             ; preds = %.lr.ph136
  %i.bl = add i32 %i.as, 1
  %i.bm = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.bl, i1 noundef zeroext false)
  br i1 %i.bm, label %..critedge_crit_edge.i57, label %bb.o, !prof !96

..critedge_crit_edge.i57:                         ; preds = %bb.n
  %.pre.i58 = load i32, ptr %i.ai, align 4, !tbaa !27
  br label %.critedge.i59

bb.o:                                             ; preds = %bb.n
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %bb.p

.critedge.i59:                                    ; preds = %..critedge_crit_edge.i57, %.lr.ph136
  %i.bn = phi i32 [ %.pre.i58, %..critedge_crit_edge.i57 ], [ %i.as, %.lr.ph136 ] ; 2 uses
  %i.bo = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.bp = add i32 %i.bn, 1
  store i32 %i.bp, ptr %i.ai, align 4, !tbaa !27
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bq
  store i32 %i.al, ptr %i.br, align 4, !tbaa !31
  br label %bb.p

bb.p:                                             ; preds = %.critedge.i59, %bb.o
  %i.bs = add i32 %i.aj, -3
  %i.bt = load i32, ptr %i.ai, align 4, !tbaa !27 ; 3 uses
  %i.bu = load i32, ptr %4, align 8, !tbaa !26
  %.not.i55.1 = icmp slt i32 %i.bt, %i.bu
  br i1 %.not.i55.1, label %.critedge.i59.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = add i32 %i.bt, 1
  %i.bw = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.bv, i1 noundef zeroext false)
  br i1 %i.bw, label %..critedge_crit_edge.i57.1, label %bb.r, !prof !96

bb.r:                                             ; preds = %bb.q
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1

..critedge_crit_edge.i57.1:                       ; preds = %bb.q
  %.pre.i58.1 = load i32, ptr %i.ai, align 4, !tbaa !27
  br label %.critedge.i59.1

.critedge.i59.1:                                  ; preds = %..critedge_crit_edge.i57.1, %bb.p
  %i.bx = phi i32 [ %.pre.i58.1, %..critedge_crit_edge.i57.1 ], [ %i.bt, %bb.p ] ; 2 uses
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.bz = add i32 %i.bx, 1
  store i32 %i.bz, ptr %i.ai, align 4, !tbaa !27
  %i.ca = zext i32 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ca
  store i32 %i.bs, ptr %i.cb, align 4, !tbaa !31
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1: ; preds = %.critedge.i59.1, %bb.r
  %i.cc = add i32 %i.aj, -2
  %i.cd = load i32, ptr %i.ai, align 4, !tbaa !27 ; 3 uses
  %i.ce = load i32, ptr %4, align 8, !tbaa !26
  %.not.i55.2 = icmp slt i32 %i.cd, %i.ce
  br i1 %.not.i55.2, label %.critedge.i59.2, label %bb.s

bb.s:                                             ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1
  %i.cf = add i32 %i.cd, 1
  %i.cg = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.cf, i1 noundef zeroext false)
  br i1 %i.cg, label %..critedge_crit_edge.i57.2, label %bb.t, !prof !96

bb.t:                                             ; preds = %bb.s
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2

..critedge_crit_edge.i57.2:                       ; preds = %bb.s
  %.pre.i58.2 = load i32, ptr %i.ai, align 4, !tbaa !27
  br label %.critedge.i59.2

.critedge.i59.2:                                  ; preds = %..critedge_crit_edge.i57.2, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1
  %i.ch = phi i32 [ %.pre.i58.2, %..critedge_crit_edge.i57.2 ], [ %i.cd, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1 ] ; 2 uses
  %i.ci = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.cj = add i32 %i.ch, 1
  store i32 %i.cj, ptr %i.ai, align 4, !tbaa !27
  %i.ck = zext i32 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ck
  store i32 %i.cc, ptr %i.cl, align 4, !tbaa !31
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2: ; preds = %.critedge.i59.2, %bb.t
  %i.cm = add i32 %i.aj, -1
  %i.cn = load i32, ptr %i.ai, align 4, !tbaa !27 ; 3 uses
  %i.co = load i32, ptr %4, align 8, !tbaa !26
  %.not.i55.3 = icmp slt i32 %i.cn, %i.co
  br i1 %.not.i55.3, label %.critedge.i59.3, label %bb.u

bb.u:                                             ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2
  %i.cp = add i32 %i.cn, 1
  %i.cq = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.cp, i1 noundef zeroext false)
  br i1 %i.cq, label %..critedge_crit_edge.i57.3, label %bb.v, !prof !96

bb.v:                                             ; preds = %bb.u
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %._crit_edge

..critedge_crit_edge.i57.3:                       ; preds = %bb.u
  %.pre.i58.3 = load i32, ptr %i.ai, align 4, !tbaa !27
  br label %.critedge.i59.3

.critedge.i59.3:                                  ; preds = %..critedge_crit_edge.i57.3, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2
  %i.cr = phi i32 [ %.pre.i58.3, %..critedge_crit_edge.i57.3 ], [ %i.cn, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2 ] ; 2 uses
  %i.cs = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.ct = add i32 %i.cr, 1
  store i32 %i.ct, ptr %i.ai, align 4, !tbaa !27
  %i.cu = zext i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cu
  store i32 %i.cm, ptr %i.cv, align 4, !tbaa !31
  br label %._crit_edge

bb.w:                                             ; preds = %._crit_edge
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !30 ; 2 uses
  %i.cy = load i32, ptr %i.ai, align 4, !tbaa !27 ; 2 uses
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
  %i.ec = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
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
  %.050138 = phi ptr [ %i.cx, %.lr.ph141 ], [ %i.rm, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread ] ; 2 uses
  %i.eu = load i32, ptr %.050138, align 4, !tbaa !31 ; 2 uses
  %i.ev = sub i32 %i.eu, %.048139
  %i.ew = add i32 %i.ev, 1                        ; 4 uses
  %i.ex = load ptr, ptr %i.db, align 8, !tbaa !28
  %i.ey = load i32, ptr %i.a, align 4, !tbaa !15
  %storemerge.i.i = call i32 @llvm.usub.sat.i32(i32 %i.ey, i32 %.048139)
  %.sroa.speculated.i.i = call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.ew) ; 23 uses
  %i.ez = zext i32 %.048139 to i64                ; 5 uses
  %i.fa = getelementptr inbounds nuw [12 x i8], ptr %i.ex, i64 %i.ez ; 8 uses
  %.sroa.3.8.insert.ext.i.i = zext i32 %.sroa.speculated.i.i to i64 ; 5 uses
  %i.fb = load ptr, ptr %i.dc, align 8, !tbaa !33
  %i.fc = load i32, ptr %i.dd, align 4, !tbaa !34
  %storemerge.i.i66 = call i32 @llvm.usub.sat.i32(i32 %i.fc, i32 %.048139)
  %.sroa.speculated.i.i67 = call i32 @llvm.umin.i32(i32 %storemerge.i.i66, i32 %i.ew)
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ez ; 8 uses
  %i.fe = load ptr, ptr %i.de, align 8, !tbaa !33
  %i.ff = load i32, ptr %i.df, align 4, !tbaa !34
  %storemerge.i.i74 = call i32 @llvm.usub.sat.i32(i32 %i.ff, i32 %.048139)
  %.sroa.speculated.i.i75 = call i32 @llvm.umin.i32(i32 %storemerge.i.i74, i32 %i.ew)
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.ez ; 9 uses
  %i.fh = load ptr, ptr %i.dg, align 8, !tbaa !21 ; 2 uses
  %i.fi = ptrtoaddr ptr %i.fh to i64
  %i.fj = load i32, ptr %i.w, align 4, !tbaa !22
  %storemerge.i.i82 = call i32 @llvm.usub.sat.i32(i32 %i.fj, i32 %.048139)
  %.sroa.speculated.i.i83 = call i32 @llvm.umin.i32(i32 %storemerge.i.i82, i32 %i.ew) ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ez ; 14 uses
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
  br i1 %or.cond, label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread, label %.lr.ph.i, !prof !35

bb.z:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.3.8.insert.ext.i.i84
  br i1 %exitcond.not.i, label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread, label %.lr.ph.i, !llvm.loop !59

.lr.ph.i:                                         ; preds = %bb.y, %bb.z
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.z ], [ 0, %bb.y ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !31
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !31
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
  %i.fw = load i32, ptr %i.fd, align 4, !tbaa !31 ; 2 uses
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.fk, align 1, !tbaa !102
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread

bb.ac:                                            ; preds = %bb.ae
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next64.i, %.sroa.3.8.insert.ext.i.i84
  br i1 %exitcond67.not.i, label %.critedge.i93, label %bb.ad, !llvm.loop !60

bb.ad:                                            ; preds = %bb.ac, %.lr.ph38.i
  %indvars.iv63.i = phi i64 [ 1, %.lr.ph38.i ], [ %indvars.iv.next64.i, %bb.ac ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv63.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !31
  %.not163.i = icmp eq i32 %i.fy, %i.fw
  br i1 %.not163.i, label %bb.ae, label %.lr.ph.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv63.i
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !31
  %i.gb = load i32, ptr %i.fg, align 4, !tbaa !31
  %.not164.i = icmp eq i32 %i.ga, %i.gb
  br i1 %.not164.i, label %bb.ac, label %.lr.ph.i.i

.critedge.i93:                                    ; preds = %bb.ac
  store i8 1, ptr %i.fk, align 1, !tbaa !102
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.di, i8 0, i64 64, i1 false), !tbaa !37
  %.084118.i.i = add nsw i32 %.sroa.speculated.i.i, -1 ; 4 uses
  %i.gc = zext nneg i32 %.084118.i.i to i64       ; 2 uses
  %.079.in.pre.i.i = load float, ptr %i.fa, align 4, !tbaa !38
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %.076.i.i = phi i32 [ %i.fw, %.lr.ph.i.i ], [ %.078.i.i, %.loopexit.i.i ] ; 5 uses
  %i.gd = phi i32 [ 0, %.lr.ph.i.i ], [ %i.kc, %.loopexit.i.i ] ; 10 uses
  %.079.in.i.i = phi float [ %.079.in.pre.i.i, %.lr.ph.i.i ], [ %.081.in.i.i, %.loopexit.i.i ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %i.gc, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 9 uses
  %.085119.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.i.i, %.loopexit.i.i ] ; 2 uses
  %i.ge = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.gf = add i32 %.084118.i.i, %i.ge
  %i.gg = urem i32 %i.gf, %.sroa.speculated.i.i
  %i.gh = getelementptr inbounds nuw [12 x i8], ptr %i.fa, i64 %indvars.iv.i.i ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i.i
  %i.gk = zext nneg i32 %i.gg to i64              ; 3 uses
  %i.gl = getelementptr inbounds nuw [12 x i8], ptr %i.fa, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.gk
  %i.go = getelementptr inbounds nuw [12 x i8], ptr %i.fa, i64 %.085119.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.085119.i.i
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i.i
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.gk
  %.077.i.i = load i32, ptr %i.gs, align 4, !tbaa !31 ; 5 uses
  %.078.i.i = load i32, ptr %i.gr, align 4, !tbaa !31 ; 8 uses
  %.079.i.i = fpext float %.079.in.i.i to double  ; 2 uses
  %.080.in.i.i = load float, ptr %i.gl, align 4, !tbaa !38 ; 3 uses
  %.080.i.i = fpext float %.080.in.i.i to double  ; 2 uses
  %.081.in.i.i = load float, ptr %i.gh, align 4, !tbaa !38 ; 2 uses
  %.081.i.i = fpext float %.081.in.i.i to double  ; 3 uses
  %i.gt = fcmp ugt float %.080.in.i.i, %.079.in.i.i ; 4 uses
  %.076..077.i.i = select i1 %i.gt, i32 %.076.i.i, i32 %.077.i.i ; 5 uses
  %.077..076.i.i = select i1 %i.gt, i32 %.077.i.i, i32 %.076.i.i ; 5 uses
  %.079..080.i.i = select i1 %i.gt, double %.079.i.i, double %.080.i.i ; 2 uses
  %i.gu = fcmp oeq float %.079.in.i.i, %.080.in.i.i
  br i1 %i.gu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gv = sub nsw i32 %.076..077.i.i, %.077..076.i.i
  %i.gw = call i32 @llvm.abs.i32(i32 %i.gv, i1 true)
  %i.gx = uitofp nneg i32 %i.gw to double
  %i.gy = fcmp olt double %5, %i.gx
  br i1 %i.gy, label %bb.aq, label %.critedge.i.i

bb.ah:                                            ; preds = %bb.af
  %.080..079.i.i = select i1 %i.gt, double %.080.i.i, double %.079.i.i
  %i.gz = fcmp ugt double %.079..080.i.i, %.081.i.i
  %i.ha = fcmp ult double %.080..079.i.i, %.081.i.i
  %or.cond.i.i = or i1 %i.gz, %i.ha
  br i1 %or.cond.i.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.speculated104.i.i = call i32 @llvm.smin.i32(i32 %.076.i.i, i32 %.077.i.i)
  %i.hb = sitofp i32 %.sroa.speculated104.i.i to double
  %i.hc = fsub double %i.hb, %5
  %i.hd = sitofp i32 %.078.i.i to double          ; 2 uses
  %i.he = fcmp ugt double %i.hc, %i.hd
  br i1 %i.he, label %.critedge97.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.speculated.i.i88 = call i32 @llvm.smax.i32(i32 %.076.i.i, i32 %.077.i.i)
  %i.hf = sitofp i32 %.sroa.speculated.i.i88 to double
  %i.hg = fadd double %5, %i.hf
  %i.hh = fcmp ult double %i.hg, %i.hd
  br i1 %i.hh, label %.critedge97.i.i, label %.critedge.i.i

bb.ak:                                            ; preds = %bb.ah
  %.not.i.i92 = icmp eq i32 %.076.i.i, %.077.i.i
  br i1 %.not.i.i92, label %.critedge.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hi = fcmp ogt double %.079..080.i.i, %.081.i.i
  %i.hj = call i32 @llvm.abs.i32(i32 %.078.i.i, i1 true)
  %i.hk = uitofp nneg i32 %i.hj to double
  %i.hl = fcmp olt double %5, %i.hk               ; 2 uses
  br i1 %i.hi, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  br i1 %i.hl, label %bb.an, label %.critedge.i.i

bb.an:                                            ; preds = %bb.am
  %i.hm = sub nsw i32 %.078.i.i, %.076..077.i.i
  %i.hn = call i32 @llvm.abs.i32(i32 %i.hm, i1 true)
  %i.ho = uitofp nneg i32 %i.hn to double
  %i.hp = fcmp olt double %5, %i.ho
  br i1 %i.hp, label %.split.i.i, label %.critedge.i.i

.split.i.i:                                       ; preds = %bb.an
  %i.hq = sitofp i32 %.078.i.i to double
  %i.hr = fsub double %i.hq, %5
  %i.hs = sitofp i32 %.076..077.i.i to double
  %i.ht = fcmp olt double %i.hr, %i.hs
  %i.hu = icmp slt i32 %.076..077.i.i, %.077..076.i.i
  %not..not92.i.i = xor i1 %i.hu, %i.ht
  br i1 %not..not92.i.i, label %.critedge97.i.i, label %.critedge.i.i

bb.ao:                                            ; preds = %bb.al
  br i1 %i.hl, label %bb.ap, label %.critedge.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.hv = sub nsw i32 %.078.i.i, %.077..076.i.i
  %i.hw = call i32 @llvm.abs.i32(i32 %i.hv, i1 true)
  %i.hx = uitofp nneg i32 %i.hw to double
  %i.hy = fcmp olt double %5, %i.hx
  br i1 %i.hy, label %.split116.i.i, label %.critedge.i.i

.split116.i.i:                                    ; preds = %bb.ap
  %i.hz = sitofp i32 %.077..076.i.i to double
  %i.ia = sitofp i32 %.078.i.i to double
  %i.ib = fadd double %5, %i.ia
  %i.ic = fcmp ogt double %i.ib, %i.hz
  %i.id = icmp slt i32 %.076..077.i.i, %.077..076.i.i
  %not..not91.i.i = xor i1 %i.id, %i.ic
  br i1 %not..not91.i.i, label %.critedge97.i.i, label %.critedge.i.i

bb.aq:                                            ; preds = %bb.ag
  %i.ie = call i32 @llvm.abs.i32(i32 %.078.i.i, i1 true)
  %i.if = uitofp nneg i32 %i.ie to double
  %i.ig = fcmp olt double %5, %i.if
  br i1 %i.ig, label %.critedge97.i.i, label %.critedge.i.i

.critedge97.i.i:                                  ; preds = %bb.bb, %.split.1.i.i, %.split116.1.i.i, %bb.at, %bb.as, %bb.aq, %.split116.i.i, %.split.i.i, %bb.aj, %bb.ai
  %i.ih = and i64 %indvars.iv.i.i, 63
  %i.ii = shl nuw i64 1, %i.ih
  %i.ij = lshr i64 %indvars.iv.i.i, 6
  %i.ik = and i64 %i.ij, 7
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.ik ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !37
  %i.in = or i64 %i.im, %i.ii
end_hunk_0
begin_hunk_1_@_Z18iup_delta_optimizeRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RS2_IbLb0EER13iup_scratch_td:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec237 = and i64 %.sroa.3.8.insert.ext.i.i84, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index238 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next240, %vec.epilog.vector.body ] ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mx, i64 %index238
  %wide.load239 = load <4 x i8>, ptr %i.nh, align 1, !tbaa !102
  %i.ni = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index238
  store <4 x i8> %wide.load239, ptr %i.ni, align 1, !tbaa !102
  %index.next240 = add nuw i64 %index238, 4       ; 2 uses
  %i.nj = icmp eq i64 %index.next240, %n.vec237
  br i1 %i.nj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n241 = icmp eq i64 %n.vec237, %.sroa.3.8.insert.ext.i.i84
  br i1 %cmp.n241, label %.critedge179.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv78.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec237, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter255 = and i64 %.sroa.3.8.insert.ext.i.i84, 3 ; 2 uses
  %lcmp.mod256.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod256.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv78.i.prol = phi i64 [ %indvars.iv.next79.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv78.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mx, i64 %indvars.iv78.i.prol
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !102, !range !100, !noundef !101
  %i.nm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv78.i.prol
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !102
  %indvars.iv.next79.i.prol = add nuw nsw i64 %indvars.iv78.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter255
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !71

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv78.i.unr = phi i64 [ %indvars.iv78.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next79.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.nn = sub nsw i64 %indvars.iv78.i.ph, %.sroa.3.8.insert.ext.i.i84
  %i.no = icmp ugt i64 %i.nn, -4
  br i1 %i.no, label %.critedge179.i, label %vec.epilog.scalar.ph

.lr.ph54.i:                                       ; preds = %bb.bt, %.lr.ph54.i
  %i.np = phi i32 [ %.pr.i, %.lr.ph54.i ], [ %.fca.1.extract35.i, %bb.bt ]
  %i.nq = zext i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.nq
  store i8 1, ptr %i.nr, align 1, !tbaa !102
  %i.ns = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv(ptr noundef nonnull align 1 dereferenceable(1) %9) ; 0 uses
  %.pr.i = load i32, ptr %.sroa.237.0..sroa_idx.i, align 8, !tbaa !108 ; 2 uses
  %.not28.i = icmp eq i32 %.pr.i, -1
  br i1 %.not28.i, label %._crit_edge55.i, label %.lr.ph54.i

.critedge179.i:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv78.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mx, i64 %indvars.iv78.i
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !102, !range !100, !noundef !101
  %i.nv = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv78.i
  store i8 %i.nu, ptr %i.nv, align 1, !tbaa !102
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mx, i64 %indvars.iv.next79.i
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !102, !range !100, !noundef !101
  %i.ny = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv.next79.i
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !102
  %indvars.iv.next79.i.1 = add nuw nsw i64 %indvars.iv78.i, 2 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mx, i64 %indvars.iv.next79.i.1
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !102, !range !100, !noundef !101
  %i.ob = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv.next79.i.1
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !102
  %indvars.iv.next79.i.2 = add nuw nsw i64 %indvars.iv78.i, 3 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mx, i64 %indvars.iv.next79.i.2
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !102, !range !100, !noundef !101
  %i.oe = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv.next79.i.2
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !102
  %indvars.iv.next79.i.3 = add nuw nsw i64 %indvars.iv78.i, 4 ; 2 uses
  %exitcond83.not.i.3 = icmp eq i64 %indvars.iv.next79.i.3, %.sroa.3.8.insert.ext.i.i84
  br i1 %exitcond83.not.i.3, label %.critedge179.i, label %vec.epilog.scalar.ph, !llvm.loop !72

bb.bv:                                            ; preds = %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116

bb.bw:                                            ; preds = %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread.i, %_ZN11hb_vector_tIiLb0EE5resetEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  %i.of = shl nuw nsw i32 %.sroa.speculated.i.i, 1 ; 6 uses
  br label %.preheader.i.i89

.preheader.i.i89:                                 ; preds = %.preheader.i.i89, %bb.bw
  %.043.i.i = phi i32 [ %i.oi, %.preheader.i.i89 ], [ 0, %bb.bw ] ; 2 uses
  %i.og = lshr i32 %.043.i.i, 1
  %i.oh = add i32 %.043.i.i, 8
  %i.oi = add i32 %i.oh, %i.og                    ; 8 uses
  %i.oj = icmp ugt i32 %i.of, %i.oi
  br i1 %i.oj, label %.preheader.i.i89, label %.thread.i.i, !llvm.loop !1

.thread.i.i:                                      ; preds = %.preheader.i.i89
  %i.ok = icmp ugt i32 %i.oi, 1073741823
  br i1 %i.ok, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i, !prof !16

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i: ; preds = %.thread.i.i
  %i.ol = shl nuw i32 %i.oi, 2
  %i.om = zext i32 %i.ol to i64
  %i.on = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.om) #9 ; 9 uses
  %.not22.i.i90 = icmp eq ptr %i.on, null
  br i1 %.not22.i.i90, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i, label %bb.bx, !prof !52

bb.bx:                                            ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i
  store ptr %i.on, ptr %i.du, align 8, !tbaa !33
  store i32 %i.oi, ptr %11, align 8, !tbaa !39
  store i32 %i.of, ptr %i.dv, align 4, !tbaa !34
  br label %.preheader.i224.i

.preheader.i224.i:                                ; preds = %.preheader.i224.i, %bb.bx
  %.043.i225.i = phi i32 [ %i.oq, %.preheader.i224.i ], [ 0, %bb.bx ] ; 2 uses
  %i.oo = lshr i32 %.043.i225.i, 1
  %i.op = add i32 %.043.i225.i, 8
  %i.oq = add i32 %i.op, %i.oo                    ; 5 uses
  %i.or = icmp ugt i32 %i.of, %i.oq
  br i1 %i.or, label %.preheader.i224.i, label %.thread.i226.i, !llvm.loop !1

.thread.i226.i:                                   ; preds = %.preheader.i224.i
  %i.os = icmp ugt i32 %i.oq, 1073741823
  br i1 %i.os, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i, !prof !16

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i: ; preds = %.thread.i226.i
  %i.ot = shl nuw i32 %i.oq, 2
  %i.ou = zext i32 %i.ot to i64
  %i.ov = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ou) #9 ; 7 uses
  %.not22.i230.i = icmp eq ptr %i.ov, null
  br i1 %.not22.i230.i, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i, label %bb.by, !prof !52

bb.by:                                            ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i
  store ptr %i.ov, ptr %i.dw, align 8, !tbaa !33
  store i32 %i.oq, ptr %12, align 8, !tbaa !39
  store i32 %i.of, ptr %i.dx, align 4, !tbaa !34
  br label %.preheader.i245.i

.preheader.i245.i:                                ; preds = %.preheader.i245.i, %bb.by
  %.043.i246.i = phi i32 [ %i.oy, %.preheader.i245.i ], [ 0, %bb.by ] ; 2 uses
  %i.ow = lshr i32 %.043.i246.i, 1
  %i.ox = add i32 %.043.i246.i, 8
  %i.oy = add i32 %i.ox, %i.ow                    ; 5 uses
  %i.oz = icmp ugt i32 %i.of, %i.oy
  br i1 %i.oz, label %.preheader.i245.i, label %.thread.i247.i, !llvm.loop !2

.thread.i247.i:                                   ; preds = %.preheader.i245.i
  %i.pa = icmp ugt i32 %i.oy, 357913941
  br i1 %i.pa, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i, !prof !16

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i: ; preds = %.thread.i247.i
  %i.pb = zext nneg i32 %i.oy to i64
  %i.pc = mul nuw nsw i64 %i.pb, 12
  %i.pd = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.pc) #9 ; 6 uses
  %.not22.i250.i = icmp eq ptr %i.pd, null
  br i1 %.not22.i250.i, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE12resize_dirtyEi.exit.i, !prof !52

_ZN11hb_vector_tI15contour_point_tLb0EE12resize_dirtyEi.exit.i: ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i
  store ptr %i.pd, ptr %i.dy, align 8, !tbaa !28
  store i32 %i.oy, ptr %13, align 8, !tbaa !43
  store i32 %i.of, ptr %i.dz, align 4, !tbaa !15
  %i.pe = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i, 2 ; 4 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %.sroa.3.8.insert.ext.i.i
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %.sroa.3.8.insert.ext.i.i
  %i.ph = mul nuw nsw i64 %.sroa.3.8.insert.ext.i.i, 12 ; 2 uses
  %i.pi = getelementptr inbounds nuw [12 x i8], ptr %i.pd, i64 %.sroa.3.8.insert.ext.i.i
  br label %_ZL9hb_memcpyPvPKvm.exit204.i

bb.bz:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit204.i
  %i.pj = call fastcc noundef zeroext i1 @_ZL24_iup_contour_optimize_dpRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RK13hb_bit_page_tdjRS2_IjLb0EERS3_RS2_IdLb0EESD_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(72) %6, double noundef %i.dh, i32 noundef %.sroa.speculated.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.eb)
  br i1 %i.pj, label %bb.ca, label %_ZN11hb_vector_tIiLb0EED2Ev.exit219.i

_ZL9hb_memcpyPvPKvm.exit204.i:                    ; preds = %_ZL9hb_memcpyPvPKvm.exit204.i, %_ZN11hb_vector_tI15contour_point_tLb0EE12resize_dirtyEi.exit.i
  %.013940.i = phi i32 [ 0, %_ZN11hb_vector_tI15contour_point_tLb0EE12resize_dirtyEi.exit.i ], [ %i.pk, %_ZL9hb_memcpyPvPKvm.exit204.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.on, ptr nonnull readonly align 4 %i.fd, i64 range(i64 0, 51539607541) %i.pe, i1 false), !alias.scope !109
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pf, ptr nonnull readonly align 4 %i.fd, i64 range(i64 0, 51539607541) %i.pe, i1 false), !alias.scope !110
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ov, ptr readonly align 1 %i.fg, i64 range(i64 0, 51539607541) %i.pe, i1 false), !alias.scope !111
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pg, ptr readonly align 1 %i.fg, i64 range(i64 0, 51539607541) %i.pe, i1 false), !alias.scope !112
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pd, ptr nonnull readonly align 4 %i.fa, i64 range(i64 0, 51539607541) %i.ph, i1 false), !alias.scope !113
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pi, ptr nonnull readonly align 4 %i.fa, i64 range(i64 0, 51539607541) %i.ph, i1 false), !alias.scope !114
  %i.pk = add nuw nsw i32 %.013940.i, 1           ; 2 uses
  %exitcond68.not.i = icmp eq i32 %i.pk, %.sroa.speculated.i.i
  br i1 %exitcond68.not.i, label %bb.bz, label %_ZL9hb_memcpyPvPKvm.exit204.i, !llvm.loop !91

bb.ca:                                            ; preds = %bb.bz
  %i.pl = load i32, ptr %i.dk, align 4, !tbaa !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ec, i8 0, i64 64, i1 false), !tbaa !37
  %.not57.i = icmp slt i32 %i.pl, %.sroa.speculated.i.i
  br i1 %.not57.i, label %.preheader.i.preheader, label %.lr.ph49.i

.preheader.i.preheader:                           ; preds = %bb.cg, %bb.ca
  %xtraiter = and i64 %.sroa.3.8.insert.ext.i.i84, 1
  %i.pm = icmp eq i32 %.sroa.speculated.i.i83, 1
  br i1 %i.pm, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %.sroa.3.8.insert.ext.i.i84, 4294967294
  br label %.preheader.i

.lr.ph49.i:                                       ; preds = %bb.ca
  %i.pn = add nuw nsw i32 %.sroa.speculated.i.i, 1
  %i.po = load ptr, ptr %i.ee, align 8, !tbaa !33
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %bb.cg, %.lr.ph49.i
  %indvars.iv69.i = phi i64 [ %i.gc, %.lr.ph49.i ], [ %indvars.iv.next70.i, %bb.cg ] ; 4 uses
  %.013846.i = phi i32 [ %i.pn, %.lr.ph49.i ], [ %.2.i, %bb.cg ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ed, i8 0, i64 64, i1 false), !tbaa !37
  %i.pp = sub nsw i64 %indvars.iv69.i, %.sroa.3.8.insert.ext.i.i84 ; 2 uses
  %i.pq = trunc nuw nsw i64 %indvars.iv69.i to i32
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.lr.ph44.i
  %.013643.i = phi i32 [ %i.pq, %.lr.ph44.i ], [ %i.qc, %bb.cb ] ; 2 uses
  %i.pr = urem i32 %.013643.i, %.sroa.speculated.i.i ; 2 uses
  %i.ps = and i32 %i.pr, 63
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = shl nuw i64 1, %i.pt
  %i.pv = lshr i32 %i.pr, 6
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.pw ; 2 uses
  %i.py = load i64, ptr %i.px, align 8, !tbaa !37
  %i.pz = or i64 %i.pu, %i.py
  store i64 %i.pz, ptr %i.px, align 8, !tbaa !37
  %i.qa = sext i32 %.013643.i to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.po, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !31 ; 5 uses
  %i.qd = sext i32 %i.qc to i64
  %i.qe = icmp slt i64 %i.pp, %i.qd
  br i1 %i.qe, label %bb.cb, label %._crit_edge.i, !llvm.loop !92

._crit_edge.i:                                    ; preds = %bb.cb
  store i32 -1, ptr %15, align 8
  %i.qf = trunc nsw i64 %i.pp to i32
  %i.qg = icmp eq i32 %i.qc, %i.qf
  br i1 %i.qg, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %._crit_edge.i
  %i.qh = icmp slt i32 %i.qc, 0
  %.pre.i91 = load ptr, ptr %i.ef, align 8, !tbaa !30 ; 2 uses
  br i1 %i.qh, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.qi = zext nneg i32 %i.qc to i64
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i91, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !31
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.ql = phi i32 [ %i.qk, %bb.cd ], [ 0, %bb.cc ]
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i91, i64 %indvars.iv69.i
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !31
  %i.qo = sub i32 %i.qn, %i.ql                    ; 2 uses
  %.not167.i = icmp ugt i32 %i.qo, %.013846.i
  br i1 %.not167.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, i64 72, i1 false), !tbaa.struct !54
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %._crit_edge.i
  %.2.i = phi i32 [ %.013846.i, %._crit_edge.i ], [ %i.qo, %bb.cf ], [ %.013846.i, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next70.i to i32
  %exitcond72.not.i = icmp eq i32 %i.pl, %lftr.wideiv.i
  br i1 %exitcond72.not.i, label %.preheader.i.preheader, label %.lr.ph44.i, !llvm.loop !93

_ZN11hb_vector_tIiLb0EED2Ev.exit207.i.unr-lcssa:  ; preds = %bb.ck
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11hb_vector_tIiLb0EED2Ev.exit207.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit207.i.unr-lcssa, %.preheader.i.preheader
  %indvars.iv73.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %indvars.iv.next74.i.1, %_ZN11hb_vector_tIiLb0EED2Ev.exit207.i.unr-lcssa ] ; 3 uses
  %lcmp.mod254 = trunc i32 %.sroa.speculated.i.i83 to i1
  call void @llvm.assume(i1 %lcmp.mod254)
  %i.qp = lshr i64 %indvars.iv73.i.epil.init, 6
  %i.qq = and i64 %i.qp, 7
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.qq
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !37
  %i.qt = and i64 %indvars.iv73.i.epil.init, 63
  %i.qu = shl nuw i64 1, %i.qt
  %i.qv = and i64 %i.qu, %i.qs
  %.not27.i.epil = icmp eq i64 %i.qv, 0
  br i1 %.not27.i.epil, label %_ZN11hb_vector_tIiLb0EED2Ev.exit207.i, label %bb.ch

bb.ch:                                            ; preds = %.preheader.i.epil.preheader
  %i.qw = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv73.i.epil.init
  store i8 1, ptr %i.qw, align 1, !tbaa !102
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit207.i

_ZN11hb_vector_tIiLb0EED2Ev.exit207.i:            ; preds = %.preheader.i.epil.preheader, %bb.ch, %_ZN11hb_vector_tIiLb0EED2Ev.exit207.i.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  call void @hb_free(ptr noundef nonnull %i.pd) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @hb_free(ptr noundef nonnull %i.ov) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @hb_free(ptr noundef nonnull %i.on) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit

.preheader.i:                                     ; preds = %bb.ck, %.preheader.i.preheader.new
  %indvars.iv73.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %indvars.iv.next74.i.1, %bb.ck ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %bb.ck ]
  %i.qx = lshr i64 %indvars.iv73.i, 6
  %i.qy = and i64 %i.qx, 7
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.qy
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !37 ; 2 uses
  %i.rb = and i64 %indvars.iv73.i, 62
  %i.rc = shl nuw nsw i64 1, %i.rb
  %i.rd = and i64 %i.rc, %i.ra
  %.not27.i = icmp eq i64 %i.rd, 0
  br i1 %.not27.i, label %.preheader.i.1, label %bb.ci

bb.ci:                                            ; preds = %.preheader.i
  %i.re = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv73.i
  store i8 1, ptr %i.re, align 1, !tbaa !102
  br label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.ci, %.preheader.i
  %indvars.iv.next74.i = or disjoint i64 %indvars.iv73.i, 1 ; 2 uses
  %i.rf = and i64 %indvars.iv.next74.i, 63
  %i.rg = shl nuw i64 1, %i.rf
  %i.rh = and i64 %i.rg, %i.ra
  %.not27.i.1 = icmp eq i64 %i.rh, 0
  br i1 %.not27.i.1, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.preheader.i.1
  %i.ri = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv.next74.i
  store i8 1, ptr %i.ri, align 1, !tbaa !102
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.preheader.i.1
  %indvars.iv.next74.i.1 = add nuw nsw i64 %indvars.iv73.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN11hb_vector_tIiLb0EED2Ev.exit207.i.unr-lcssa, label %.preheader.i, !llvm.loop !94

_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i: ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i, %.thread.i226.i, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i, %.thread.i.i
  %.ph.i = phi ptr [ null, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i ], [ null, %.thread.i.i ], [ %i.on, %.thread.i226.i ], [ %i.on, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i ]
  %.ph123.i = phi i32 [ -1, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i ], [ -1, %.thread.i.i ], [ %i.oi, %.thread.i226.i ], [ %i.oi, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit211.i

_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i: ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i, %.thread.i247.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @hb_free(ptr noundef nonnull %i.ov) #9
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit211.i

_ZN11hb_vector_tIiLb0EED2Ev.exit211.i:            ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i, %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i
  %i.rj = phi i32 [ %.ph123.i, %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i ], [ %i.oi, %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i ]
  %i.rk = phi ptr [ %.ph.i, %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i ], [ %i.on, %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  %i.rl = add nsw i32 %i.rj, -1
  %spec.select.i.i.i212.i = icmp ult i32 %i.rl, -2
  br i1 %spec.select.i.i.i212.i, label %bb.cl, label %_ZN11hb_vector_tIiLb0EED2Ev.exit213.i

bb.cl:                                            ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit211.i
  call void @hb_free(ptr noundef %i.rk) #9
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit213.i

_ZN11hb_vector_tIiLb0EED2Ev.exit213.i:            ; preds = %bb.cl, %_ZN11hb_vector_tIiLb0EED2Ev.exit211.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116

_ZN11hb_vector_tIiLb0EED2Ev.exit219.i:            ; preds = %bb.bz
  call void @hb_free(ptr noundef nonnull %i.pd) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  call void @hb_free(ptr noundef nonnull %i.ov) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @hb_free(ptr noundef nonnull %i.on) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116

.critedge170.critedge.i:                          ; preds = %bb.bj, %bb.bo, %bb.bn, %bb.bm, %_ZL9hb_memcpyPvPKvm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116

_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116: ; preds = %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread15.i, %.critedge170.critedge.i, %bb.bv, %_ZN11hb_vector_tIiLb0EED2Ev.exit219.i, %_ZN11hb_vector_tIiLb0EED2Ev.exit213.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %.critedge

_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit: ; preds = %.critedge179.i, %_ZN11hb_vector_tIiLb0EED2Ev.exit207.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread

_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread: ; preds = %bb.z, %.critedge.i93, %bb.ab, %bb.y, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit
  %.ph = add i32 %i.eu, 1
  %i.rm = getelementptr inbounds nuw i8, ptr %.050138, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.rm, %i.da
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
  %i.a = load i32, ptr %0, align 8, !tbaa !26     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !16

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
  br i1 %i.j, label %.critedge, label %bb.e, !prof !16

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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30
  tail call void @hb_free(ptr noundef %i.m) #9
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #9 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !16

end_hunk_1
