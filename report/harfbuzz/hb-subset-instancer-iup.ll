Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-instancer-iup?download=true
inline.NumInlined: 278
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z18iup_delta_optimizeRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RS2_IbLb0EER13iup_scratch_td:bb.a
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
  %.050138 = phi ptr [ %i.cx, %.lr.ph141 ], [ %i.rj, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread ] ; 2 uses
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
  %i.gd = phi i32 [ 0, %.lr.ph.i.i ], [ %20, %.loopexit.i.i ] ; 10 uses
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
  br i1 %i.gy, label %bb.ap, label %.critedge.i.i

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
  %16 = fcmp ogt double %.079..080.i.i, %.081.i.i
  %i.hi = call i32 @llvm.abs.i32(i32 %.078.i.i, i1 true)
  %i.hj = uitofp nneg i32 %i.hi to double
  %i.hk = fcmp olt double %5, %i.hj               ; 2 uses
  br i1 %16, label %bb.am, label %17

bb.am:                                            ; preds = %bb.al
  br i1 %i.hk, label %bb.an, label %.critedge.i.i

bb.an:                                            ; preds = %bb.am
  %i.hl = sub nsw i32 %.078.i.i, %.076..077.i.i
  %i.hm = call i32 @llvm.abs.i32(i32 %i.hl, i1 true)
  %i.hn = uitofp nneg i32 %i.hm to double
  %i.ho = fcmp olt double %5, %i.hn
  br i1 %i.ho, label %.split.i.i, label %.critedge.i.i

.split.i.i:                                       ; preds = %bb.an
  %i.hp = sitofp i32 %.078.i.i to double
  %i.hq = fsub double %i.hp, %5
  %i.hr = sitofp i32 %.076..077.i.i to double
  %i.hs = fcmp olt double %i.hq, %i.hr
  %i.ht = icmp slt i32 %.076..077.i.i, %.077..076.i.i
  %not..not92.i.i = xor i1 %i.ht, %i.hs
  br i1 %not..not92.i.i, label %.critedge97.i.i, label %.critedge.i.i

17:                                               ; preds = %bb.al
  br i1 %i.hk, label %bb.ao, label %.critedge.i.i

bb.ao:                                            ; preds = %17
  %i.hu = sub nsw i32 %.078.i.i, %.077..076.i.i
  %i.hv = call i32 @llvm.abs.i32(i32 %i.hu, i1 true)
  %i.hw = uitofp nneg i32 %i.hv to double
  %i.hx = fcmp olt double %5, %i.hw
  br i1 %i.hx, label %.split116.i.i, label %.critedge.i.i

.split116.i.i:                                    ; preds = %bb.ao
  %i.hy = sitofp i32 %.077..076.i.i to double
  %i.hz = sitofp i32 %.078.i.i to double
  %i.ia = fadd double %5, %i.hz
  %i.ib = fcmp ogt double %i.ia, %i.hy
  %i.ic = icmp slt i32 %.076..077.i.i, %.077..076.i.i
  %not..not91.i.i = xor i1 %i.ic, %i.ib
  br i1 %not..not91.i.i, label %.critedge97.i.i, label %.critedge.i.i

bb.ap:                                            ; preds = %bb.ag
  %i.id = call i32 @llvm.abs.i32(i32 %.078.i.i, i1 true)
  %i.ie = uitofp nneg i32 %i.id to double
  %i.if = fcmp olt double %5, %i.ie
  br i1 %i.if, label %.critedge97.i.i, label %.critedge.i.i

.critedge97.i.i:                                  ; preds = %bb.az, %.split.1.i.i, %.split116.1.i.i, %bb.as, %bb.ar, %bb.ap, %.split116.i.i, %.split.i.i, %bb.aj, %bb.ai
  %i.ig = and i64 %indvars.iv.i.i, 63
  %i.ih = shl nuw i64 1, %i.ig
  %i.ii = lshr i64 %indvars.iv.i.i, 6
  %i.ij = and i64 %i.ii, 7
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.ij ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !37
  %i.im = or i64 %i.il, %i.ih
  store i64 %i.im, ptr %i.ik, align 8, !tbaa !37
  br label %.loopexit.i.i

.critedge.i.i:                                    ; preds = %bb.ap, %.split116.i.i, %bb.ao, %17, %.split.i.i, %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ag
  %.076.1.i.i = load i32, ptr %i.gq, align 4, !tbaa !31 ; 5 uses
  %.077.1.i.i = load i32, ptr %i.gn, align 4, !tbaa !31 ; 5 uses
  %.078.1.i.i = load i32, ptr %i.gj, align 4, !tbaa !31 ; 7 uses
  %.079.in.1.i.i = load float, ptr %i.gp, align 4, !tbaa !38 ; 3 uses
  %.079.1.i.i = fpext float %.079.in.1.i.i to double ; 2 uses
  %.080.in.1.i.i = load float, ptr %i.gm, align 4, !tbaa !38 ; 3 uses
  %.080.1.i.i = fpext float %.080.in.1.i.i to double ; 2 uses
  %.081.in.1.i.i = load float, ptr %i.gi, align 4, !tbaa !38
  %.081.1.i.i = fpext float %.081.in.1.i.i to double ; 3 uses
  %i.in = fcmp ugt float %.080.in.1.i.i, %.079.in.1.i.i ; 4 uses
  %.076..077.1.i.i = select i1 %i.in, i32 %.076.1.i.i, i32 %.077.1.i.i ; 5 uses
  %.077..076.1.i.i = select i1 %i.in, i32 %.077.1.i.i, i32 %.076.1.i.i ; 5 uses
  %.079..080.1.i.i = select i1 %i.in, double %.079.1.i.i, double %.080.1.i.i ; 2 uses
  %i.io = fcmp oeq float %.079.in.1.i.i, %.080.in.1.i.i
  br i1 %i.io, label %bb.ay, label %bb.aq

bb.aq:                                            ; preds = %.critedge.i.i
  %.080..079.1.i.i = select i1 %i.in, double %.080.1.i.i, double %.079.1.i.i
  %i.ip = fcmp ugt double %.079..080.1.i.i, %.081.1.i.i
  %i.iq = fcmp ult double %.080..079.1.i.i, %.081.1.i.i
  %or.cond.1.i.i = or i1 %i.ip, %i.iq
  br i1 %or.cond.1.i.i, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.sroa.speculated104.1.i.i = call i32 @llvm.smin.i32(i32 %.076.1.i.i, i32 %.077.1.i.i)
  %i.ir = sitofp i32 %.sroa.speculated104.1.i.i to double
  %i.is = fsub double %i.ir, %5
  %i.it = sitofp i32 %.078.1.i.i to double        ; 2 uses
  %i.iu = fcmp ugt double %i.is, %i.it
  br i1 %i.iu, label %.critedge97.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.sroa.speculated.1.i.i = call i32 @llvm.smax.i32(i32 %.076.1.i.i, i32 %.077.1.i.i)
  %i.iv = sitofp i32 %.sroa.speculated.1.i.i to double
  %i.iw = fadd double %5, %i.iv
  %i.ix = fcmp ult double %i.iw, %i.it
  br i1 %i.ix, label %.critedge97.i.i, label %.loopexit.i.i

bb.at:                                            ; preds = %bb.aq
  %.not.1.i.i = icmp eq i32 %.076.1.i.i, %.077.1.i.i
  br i1 %.not.1.i.i, label %.loopexit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %18 = fcmp ogt double %.079..080.1.i.i, %.081.1.i.i
  %i.iy = call i32 @llvm.abs.i32(i32 %.078.1.i.i, i1 true)
  %i.iz = uitofp nneg i32 %i.iy to double
  %i.ja = fcmp olt double %5, %i.iz               ; 2 uses
  br i1 %18, label %bb.aw, label %19

19:                                               ; preds = %bb.au
  br i1 %i.ja, label %bb.av, label %.loopexit.i.i

bb.av:                                            ; preds = %19
  %i.jb = sub nsw i32 %.078.1.i.i, %.077..076.1.i.i
  %i.jc = call i32 @llvm.abs.i32(i32 %i.jb, i1 true)
  %i.jd = uitofp nneg i32 %i.jc to double
  %i.je = fcmp olt double %5, %i.jd
  br i1 %i.je, label %.split116.1.i.i, label %.loopexit.i.i

.split116.1.i.i:                                  ; preds = %bb.av
  %i.jf = sitofp i32 %.077..076.1.i.i to double
  %i.jg = sitofp i32 %.078.1.i.i to double
  %i.jh = fadd double %5, %i.jg
  %i.ji = fcmp ogt double %i.jh, %i.jf
  %i.jj = icmp slt i32 %.076..077.1.i.i, %.077..076.1.i.i
  %not..not91.1.i.i = xor i1 %i.jj, %i.ji
  br i1 %not..not91.1.i.i, label %.critedge97.i.i, label %.loopexit.i.i

bb.aw:                                            ; preds = %bb.au
  br i1 %i.ja, label %bb.ax, label %.loopexit.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.jk = sub nsw i32 %.078.1.i.i, %.076..077.1.i.i
  %i.jl = call i32 @llvm.abs.i32(i32 %i.jk, i1 true)
  %i.jm = uitofp nneg i32 %i.jl to double
  %i.jn = fcmp olt double %5, %i.jm
  br i1 %i.jn, label %.split.1.i.i, label %.loopexit.i.i

.split.1.i.i:                                     ; preds = %bb.ax
  %i.jo = sitofp i32 %.078.1.i.i to double
  %i.jp = fsub double %i.jo, %5
  %i.jq = sitofp i32 %.076..077.1.i.i to double
  %i.jr = fcmp olt double %i.jp, %i.jq
  %i.js = icmp slt i32 %.076..077.1.i.i, %.077..076.1.i.i
  %not..not92.1.i.i = xor i1 %i.js, %i.jr
  br i1 %not..not92.1.i.i, label %.critedge97.i.i, label %.loopexit.i.i

bb.ay:                                            ; preds = %.critedge.i.i
  %i.jt = sub nsw i32 %.076..077.1.i.i, %.077..076.1.i.i
  %i.ju = call i32 @llvm.abs.i32(i32 %i.jt, i1 true)
  %i.jv = uitofp nneg i32 %i.ju to double
  %i.jw = fcmp olt double %5, %i.jv
  br i1 %i.jw, label %bb.az, label %.loopexit.i.i

bb.az:                                            ; preds = %bb.ay
  %i.jx = call i32 @llvm.abs.i32(i32 %.078.1.i.i, i1 true)
  %i.jy = uitofp nneg i32 %i.jx to double
  %i.jz = fcmp olt double %5, %i.jy
  br i1 %i.jz, label %.critedge97.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.az, %bb.ay, %.split.1.i.i, %bb.ax, %bb.aw, %.split116.1.i.i, %bb.av, %19, %bb.at, %bb.as, %.critedge97.i.i
  %20 = phi i32 [ %i.gd, %bb.az ], [ %i.gd, %bb.ay ], [ %i.gd, %.split.1.i.i ], [ %i.gd, %bb.ax ], [ %i.gd, %bb.aw ], [ %i.gd, %.split116.1.i.i ], [ %i.gd, %bb.av ], [ %i.gd, %19 ], [ %i.gd, %bb.at ], [ %i.gd, %bb.as ], [ -1, %.critedge97.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.ka = icmp sgt i64 %indvars.iv.i.i, 0
  br i1 %i.ka, label %bb.af, label %_ZL29_iup_contour_bound_forced_set10hb_array_tIK15contour_point_tES_IKiES4_R13hb_bit_page_td.exit.i, !llvm.loop !61

_ZL29_iup_contour_bound_forced_set10hb_array_tIK15contour_point_tES_IKiES4_R13hb_bit_page_td.exit.i: ; preds = %.loopexit.i.i
  store i32 %20, ptr %6, align 8
  %i.kb = load i32, ptr %i.dj, align 8, !tbaa !26 ; 2 uses
  %i.kc = icmp slt i32 %i.kb, 0
  br i1 %i.kc, label %bb.ba, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i, !prof !16

bb.ba:                                            ; preds = %_ZL29_iup_contour_bound_forced_set10hb_array_tIK15contour_point_tES_IKiES4_R13hb_bit_page_td.exit.i
  %i.kd = xor i32 %i.kb, -1
  store i32 %i.kd, ptr %i.dj, align 8, !tbaa !26
  br label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i:           ; preds = %bb.ba, %_ZL29_iup_contour_bound_forced_set10hb_array_tIK15contour_point_tES_IKiES4_R13hb_bit_page_td.exit.i
  store i32 0, ptr %i.dk, align 4, !tbaa !27
  %i.ke = load i32, ptr %i.dl, align 8, !tbaa !39 ; 2 uses
  %i.kf = icmp slt i32 %i.ke, 0
  br i1 %i.kf, label %bb.bb, label %_ZN11hb_vector_tIiLb0EE5resetEv.exit.i, !prof !16

bb.bb:                                            ; preds = %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i
  %i.kg = xor i32 %i.ke, -1
  store i32 %i.kg, ptr %i.dl, align 8, !tbaa !39
  br label %_ZN11hb_vector_tIiLb0EE5resetEv.exit.i

_ZN11hb_vector_tIiLb0EE5resetEv.exit.i:           ; preds = %bb.bb, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i
  store i32 0, ptr %i.dm, align 4, !tbaa !34
  %i.kh = icmp eq i32 %20, -1
  br i1 %i.kh, label %bb.bc, label %bb.bu

bb.bc:                                            ; preds = %_ZN11hb_vector_tIiLb0EE5resetEv.exit.i
  %i.ki = load i64, ptr %i.di, align 8, !tbaa !37 ; 2 uses
  %.not.not.i.i.i = icmp ne i64 %i.ki, 0          ; 2 uses
  %i.kj = load i64, ptr %i.dn, align 8            ; 2 uses
  %.not.1.not.i.i.i = icmp ne i64 %i.kj, 0        ; 2 uses
  %or.cond.not27.i.i.i = select i1 %.not.not.i.i.i, i1 true, i1 %.not.1.not.i.i.i
  %i.kk = load i64, ptr %i.do, align 8            ; 2 uses
  %.not.2.not.i.i.i = icmp ne i64 %i.kk, 0        ; 4 uses
  %or.cond12.not26.i.i.i = select i1 %or.cond.not27.i.i.i, i1 true, i1 %.not.2.not.i.i.i
  %i.kl = load i64, ptr %i.dp, align 8            ; 2 uses
  %.not.3.not.i.i.i = icmp ne i64 %i.kl, 0        ; 2 uses
  %or.cond14.not25.i.i.i = select i1 %or.cond12.not26.i.i.i, i1 true, i1 %.not.3.not.i.i.i
  %i.km = load i64, ptr %i.dq, align 8            ; 2 uses
  %.not.4.not.i.i.i = icmp ne i64 %i.km, 0        ; 4 uses
  %or.cond16.not24.i.i.i = select i1 %or.cond14.not25.i.i.i, i1 true, i1 %.not.4.not.i.i.i
  %i.kn = load i64, ptr %i.dr, align 8            ; 2 uses
  %.not.5.not.i.i.i = icmp ne i64 %i.kn, 0        ; 2 uses
  %or.cond18.not23.i.i.i = select i1 %or.cond16.not24.i.i.i, i1 true, i1 %.not.5.not.i.i.i
  %i.ko = load i64, ptr %i.ds, align 8            ; 2 uses
  %.not.6.not.i.i.i = icmp ne i64 %i.ko, 0        ; 4 uses
  %or.cond20.not.i.i.i = select i1 %or.cond18.not23.i.i.i, i1 true, i1 %.not.6.not.i.i.i
  %i.kp = load i64, ptr %i.dt, align 8            ; 2 uses
  %.not.7.not.i.i.i = icmp ne i64 %i.kp, 0        ; 4 uses
  %or.cond22.i.i.i = select i1 %or.cond20.not.i.i.i, i1 true, i1 %.not.7.not.i.i.i
  br i1 %or.cond22.i.i.i, label %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread15.i, label %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread.i

_ZNK13hb_bit_page_t8is_emptyEv.exit.thread.i:     ; preds = %bb.bc
  store i32 0, ptr %6, align 8, !tbaa !42
  br label %bb.bu

_ZNK13hb_bit_page_t8is_emptyEv.exit.thread15.i:   ; preds = %bb.bc
  %brmerge = select i1 %.not.7.not.i.i.i, i1 true, i1 %.not.6.not.i.i.i
  %brmerge217 = select i1 %brmerge, i1 true, i1 %.not.5.not.i.i.i ; 3 uses
  %.mux = select i1 %.not.6.not.i.i.i, i64 %i.ko, i64 %i.kn
  %.mux.mux = select i1 %.not.7.not.i.i.i, i64 %i.kp, i64 %.mux
  %.mux216 = select i1 %.not.6.not.i.i.i, i32 384, i32 320
  %.mux216.mux = select i1 %.not.7.not.i.i.i, i32 448, i32 %.mux216
  %brmerge218 = select i1 %brmerge217, i1 true, i1 %.not.4.not.i.i.i
  %brmerge219 = select i1 %brmerge218, i1 true, i1 %.not.3.not.i.i.i ; 3 uses
  %.mux.mux.mux = select i1 %.not.4.not.i.i.i, i64 %i.km, i64 %i.kl
  %.mux.mux.mux.mux = select i1 %brmerge217, i64 %.mux.mux, i64 %.mux.mux.mux
  %.mux216.mux.mux = select i1 %.not.4.not.i.i.i, i32 256, i32 192
  %.mux216.mux.mux.mux = select i1 %brmerge217, i32 %.mux216.mux, i32 %.mux216.mux.mux
  %brmerge220 = select i1 %brmerge219, i1 true, i1 %.not.2.not.i.i.i
  %brmerge221 = select i1 %brmerge220, i1 true, i1 %.not.1.not.i.i.i ; 3 uses
  %.mux.mux.mux.mux.mux = select i1 %.not.2.not.i.i.i, i64 %i.kk, i64 %i.kj
  %.mux.mux.mux.mux.mux.mux = select i1 %brmerge219, i64 %.mux.mux.mux.mux, i64 %.mux.mux.mux.mux.mux
  %.mux216.mux.mux.mux.mux = select i1 %.not.2.not.i.i.i, i32 128, i32 64
  %.mux216.mux.mux.mux.mux.mux = select i1 %brmerge219, i32 %.mux216.mux.mux.mux, i32 %.mux216.mux.mux.mux.mux
  %brmerge222 = or i1 %brmerge221, %.not.not.i.i.i
  %.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge221, i64 %.mux.mux.mux.mux.mux.mux, i64 %i.ki
  %.mux216.mux.mux.mux.mux.mux.mux = select i1 %brmerge221, i32 %.mux216.mux.mux.mux.mux.mux, i32 0
  %i.kq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.mux.mux.mux.mux.mux.mux.mux, i1 true)
  %i.kr = trunc nuw nsw i64 %i.kq to i32
  %i.ks = or disjoint i32 %.mux216.mux.mux.mux.mux.mux.mux, %i.kr
  %i.kt = xor i32 %i.ks, 63
  %i.ku = select i1 %brmerge222, i32 %i.kt, i32 0
  %i.kv = sub nsw i32 %.084118.i.i, %i.ku         ; 6 uses
  %i.kw = icmp slt i32 %i.kv, 0
  br i1 %i.kw, label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116, label %bb.bd

bb.bd:                                            ; preds = %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread15.i
  %i.kx = load i32, ptr %i.eg, align 8, !tbaa !39 ; 2 uses
  %i.ky = icmp slt i32 %i.kx, 0
  br i1 %i.ky, label %bb.be, label %_ZN11hb_vector_tIiLb0EE5resetEv.exit189.i, !prof !16

bb.be:                                            ; preds = %bb.bd
  %i.kz = xor i32 %i.kx, -1
  store i32 %i.kz, ptr %i.eg, align 8, !tbaa !39
  br label %_ZN11hb_vector_tIiLb0EE5resetEv.exit189.i

_ZN11hb_vector_tIiLb0EE5resetEv.exit189.i:        ; preds = %bb.be, %bb.bd
  store i32 0, ptr %i.eh, align 4, !tbaa !34
  %i.la = load i32, ptr %i.ei, align 8, !tbaa !39 ; 2 uses
  %i.lb = icmp slt i32 %i.la, 0
  br i1 %i.lb, label %bb.bf, label %_ZN11hb_vector_tIiLb0EE5resetEv.exit190.i, !prof !16

bb.bf:                                            ; preds = %_ZN11hb_vector_tIiLb0EE5resetEv.exit189.i
  %i.lc = xor i32 %i.la, -1
  store i32 %i.lc, ptr %i.ei, align 8, !tbaa !39
  br label %_ZN11hb_vector_tIiLb0EE5resetEv.exit190.i

_ZN11hb_vector_tIiLb0EE5resetEv.exit190.i:        ; preds = %bb.bf, %_ZN11hb_vector_tIiLb0EE5resetEv.exit189.i
  store i32 0, ptr %i.ej, align 4, !tbaa !34
  %i.ld = load i32, ptr %i.ek, align 8, !tbaa !43 ; 2 uses
  %i.le = icmp slt i32 %i.ld, 0
  br i1 %i.le, label %bb.bg, label %bb.bh, !prof !16

bb.bg:                                            ; preds = %_ZN11hb_vector_tIiLb0EE5resetEv.exit190.i
  %i.lf = xor i32 %i.ld, -1
  store i32 %i.lf, ptr %i.ek, align 8, !tbaa !43
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN11hb_vector_tIiLb0EE5resetEv.exit190.i, %bb.bg
  store i32 0, ptr %i.el, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.em, i8 0, i64 64, i1 false), !tbaa !37
  store i32 0, ptr %7, align 8, !tbaa !42
  %i.lg = call noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i32 noundef %.sroa.speculated.i.i, i1 noundef zeroext false)
  br i1 %i.lg, label %bb.bi, label %.critedge170.critedge.i, !prof !44

bb.bi:                                            ; preds = %bb.bh
  store i32 %.sroa.speculated.i.i, ptr %i.el, align 4, !tbaa !15
  %i.lh = urem i32 %i.kv, %.sroa.speculated.i.i   ; 4 uses
  %i.li = zext nneg i32 %i.lh to i64              ; 2 uses
  %.not.i.i96 = icmp eq i32 %i.lh, 0
  br i1 %.not.i.i96, label %_ZL9hb_memcpyPvPKvm.exit.i, label %bb.bj, !prof !16

bb.bj:                                            ; preds = %bb.bi
  %i.lj = mul nuw nsw i32 %i.lh, 12
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [12 x i8], ptr %i.fa, i64 %.sroa.3.8.insert.ext.i.i84
  %i.lm = sub nsw i64 0, %i.li
  %i.ln = getelementptr inbounds [12 x i8], ptr %i.ll, i64 %i.lm
  %i.lo = load ptr, ptr %i.en, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lo, ptr nonnull readonly align 1 %i.ln, i64 range(i64 0, 51539607541) %i.lk, i1 false), !alias.scope !103
  br label %_ZL9hb_memcpyPvPKvm.exit.i

_ZL9hb_memcpyPvPKvm.exit.i:                       ; preds = %bb.bi, %bb.bj
  %i.lp = sub nuw nsw i32 %.sroa.speculated.i.i, %i.lh
  %i.lq = mul nuw nsw i32 %i.lp, 12
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = load ptr, ptr %i.en, align 8, !tbaa !28
  %i.lt = getelementptr inbounds nuw [12 x i8], ptr %i.ls, i64 %i.li
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lt, ptr nonnull readonly align 4 %i.fa, i64 range(i64 0, 51539607541) %i.lr, i1 false), !alias.scope !104
  %i.lu = call fastcc noundef zeroext i1 @_ZL12rotate_arrayIiTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEbRK10hb_array_tIKS1_EiR11hb_vector_tIS1_Lb0EE(ptr nonnull readonly %i.fd, i32 %.sroa.speculated.i.i, i32 noundef %i.kv, ptr noundef nonnull align 8 dereferenceable(16) %i.eg)
  br i1 %i.lu, label %bb.bk, label %.critedge170.critedge.i

bb.bk:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i
  %i.lv = call fastcc noundef zeroext i1 @_ZL12rotate_arrayIiTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEbRK10hb_array_tIKS1_EiR11hb_vector_tIS1_Lb0EE(ptr readonly %i.fg, i32 %.sroa.speculated.i.i, i32 noundef %i.kv, ptr noundef nonnull align 8 dereferenceable(16) %i.ei)
  br i1 %i.lv, label %bb.bl, label %.critedge170.critedge.i

bb.bl:                                            ; preds = %bb.bk
  %i.lw = call fastcc noundef zeroext i1 @_ZL10rotate_setRK13hb_bit_page_tijRS_(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.kv, i32 noundef %.sroa.speculated.i.i, ptr noundef nonnull align 8 dereferenceable(72) %7)
  br i1 %i.lw, label %bb.bm, label %.critedge170.critedge.i

bb.bm:                                            ; preds = %bb.bl
  %i.lx = call fastcc noundef zeroext i1 @_ZL24_iup_contour_optimize_dpRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RK13hb_bit_page_tdjRS2_IjLb0EERS3_RS2_IdLb0EESD_(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(72) %7, double noundef %i.dh, i32 noundef %.sroa.speculated.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.eb)
  br i1 %i.lx, label %bb.bn, label %.critedge170.critedge.i

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.eo, i8 0, i64 64, i1 false), !tbaa !37
  store i32 -1, ptr %8, align 8, !tbaa !42
  %i.ly = load ptr, ptr %i.ee, align 8, !tbaa !33
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.015351.i = phi i32 [ %.084118.i.i, %bb.bn ], [ %i.mk, %bb.bo ] ; 3 uses
  %i.lz = and i32 %.015351.i, 63
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = shl nuw i64 1, %i.ma
  %i.mc = lshr i32 %.015351.i, 6
  %i.md = and i32 %i.mc, 7
  %i.me = zext nneg i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.me ; 2 uses
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !37
  %i.mh = or i64 %i.mb, %i.mg
  store i64 %i.mh, ptr %i.mf, align 8, !tbaa !37
  %i.mi = sext i32 %.015351.i to i64
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.ly, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !31 ; 2 uses
  %.not166.i = icmp eq i32 %i.mk, -1
  br i1 %.not166.i, label %bb.bp, label %bb.bo, !llvm.loop !68

bb.bp:                                            ; preds = %bb.bo
  %i.ml = call noundef zeroext i1 @_ZNK13hb_bit_page_t8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %8)
  br i1 %i.ml, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mm = call noundef i32 @_ZNK13hb_bit_page_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
  %i.mn = call noundef i32 @_ZNK13hb_bit_page_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(72) %8)
  %i.mo = icmp ugt i32 %i.mm, %i.mn
  br i1 %i.mo, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.mp = call fastcc { ptr, i32 } @_ZL5beginIR13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_(ptr noundef nonnull align 8 dereferenceable(72) %8) ; 2 uses
  %.fca.0.extract34.i = extractvalue { ptr, i32 } %i.mp, 0
  %.fca.1.extract35.i = extractvalue { ptr, i32 } %i.mp, 1 ; 3 uses
  store ptr %.fca.0.extract34.i, ptr %9, align 8
  store i32 %.fca.1.extract35.i, ptr %.sroa.237.0..sroa_idx.i, align 8
  %.not2852.i = icmp eq i32 %.fca.1.extract35.i, -1
  br i1 %.not2852.i, label %._crit_edge55.i, label %.lr.ph54.i

._crit_edge55.i:                                  ; preds = %.lr.ph54.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %i.mq = load i32, ptr %i.ep, align 8, !tbaa !19 ; 2 uses
  %i.mr = icmp slt i32 %i.mq, 0
  br i1 %i.mr, label %bb.bs, label %iter.check, !prof !16

bb.bs:                                            ; preds = %._crit_edge55.i
  %i.ms = xor i32 %i.mq, -1
  store i32 %i.ms, ptr %i.ep, align 8, !tbaa !19
  br label %iter.check

iter.check:                                       ; preds = %bb.bs, %._crit_edge55.i
  store i32 0, ptr %i.eq, align 4, !tbaa !22
end_hunk_0
begin_hunk_1_@_ZN11hb_vector_tIiLb0EE5allocEjb:bb.a
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !33
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !39
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !43     ; 7 uses
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
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !2

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 357913941
  br i1 %i.j, label %.critedge, label %bb.e, !prof !16

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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  tail call void @hb_free(ptr noundef %i.m) #9
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %.138 to i64
  %i.q = mul nuw nsw i64 %i.p, 12
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #9 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !15   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 51539607541) %i.v, i1 false), !alias.scope !175
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = zext nneg i32 %.138 to i64
  %i.z = mul nuw nsw i64 %i.y, 12
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #9 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, !prof !52

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !43    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !28
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !43
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = distinct !{!3, !20}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS15contour_point_t", !12, i64 0}
!14 = !{!"_ZTS11hb_vector_tI15contour_point_tLb0EE", !9, i64 0, !9, i64 4, !13, i64 8}
!15 = !{!14, !9, i64 4}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{!"p1 bool", !12, i64 0}
!18 = !{!"_ZTS11hb_vector_tIbLb0EE", !9, i64 0, !9, i64 4, !17, i64 8}
!19 = !{!18, !9, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!18, !17, i64 8}
!22 = !{!18, !9, i64 4}
!23 = !{!"branch_weights", !"expected", i32 1913573, i32 2145570075}
!24 = !{!"p1 int", !12, i64 0}
!25 = !{!"_ZTS11hb_vector_tIjLb0EE", !9, i64 0, !9, i64 4, !24, i64 8}
!26 = !{!25, !9, i64 0}
!27 = !{!25, !9, i64 4}
!28 = !{!14, !13, i64 8}
!29 = !{!"float", !8, i64 0}
!30 = !{!25, !24, i64 8}
!31 = !{!9, !9, i64 0}
!32 = !{!"_ZTS11hb_vector_tIiLb0EE", !9, i64 0, !9, i64 4, !24, i64 8}
!33 = !{!32, !24, i64 8}
!34 = !{!32, !9, i64 4}
!35 = !{!"branch_weights", i32 2002, i32 2000}
!36 = !{!"long long", !8, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!29, !29, i64 0}
!39 = !{!32, !9, i64 0}
!40 = !{!"_ZTS16hb_vector_size_tIyLj64EE", !8, i64 0}
!41 = !{!"_ZTS13hb_bit_page_t", !9, i64 0, !40, i64 8}
!42 = !{!41, !9, i64 0}
!43 = !{!14, !9, i64 0}
!44 = !{!"branch_weights", i32 2146410443, i32 1073205}
!45 = !{!"_ZTS10hb_array_tIKbE", !17, i64 0, !9, i64 8, !9, i64 12}
!46 = !{!45, !17, i64 0}
!47 = !{!45, !9, i64 8}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!"p1 _ZTS13hb_bit_page_t", !12, i64 0}
!51 = !{!"_ZTSN13hb_bit_page_t6iter_tE", !50, i64 0, !9, i64 8}
!52 = !{!"branch_weights", !"expected", i32 1914245, i32 2145569403}
!53 = !{!8, !8, i64 0}
!54 = !{i64 0, i64 4, !31, i64 8, i64 64, !53}
!55 = distinct !{!55, !"_ZL9hb_memcpyPvPKvm"}
!56 = distinct !{!56, !55, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!57 = distinct !{!57, !55, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!58 = distinct !{!58, !20}
!59 = distinct !{!59, !20}
!60 = distinct !{!60, !20}
!61 = distinct !{!61, !20}
!62 = distinct !{!62, !"_ZL9hb_memcpyPvPKvm"}
!63 = distinct !{!63, !62, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!64 = distinct !{!64, !62, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!65 = distinct !{!65, !"_ZL9hb_memcpyPvPKvm"}
!66 = distinct !{!66, !65, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!67 = distinct !{!67, !65, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !20, !48, !49}
!70 = distinct !{!70, !20, !48, !49}
!71 = distinct !{!71, !107}
!72 = distinct !{!72, !20, !48}
!73 = distinct !{!73, !"_ZL9hb_memcpyPvPKvm"}
!74 = distinct !{!74, !73, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!75 = distinct !{!75, !73, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!76 = distinct !{!76, !"_ZL9hb_memcpyPvPKvm"}
!77 = distinct !{!77, !76, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!78 = distinct !{!78, !76, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!79 = distinct !{!79, !"_ZL9hb_memcpyPvPKvm"}
!80 = distinct !{!80, !79, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!81 = distinct !{!81, !79, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!82 = distinct !{!82, !"_ZL9hb_memcpyPvPKvm"}
!83 = distinct !{!83, !82, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!84 = distinct !{!84, !82, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!85 = distinct !{!85, !"_ZL9hb_memcpyPvPKvm"}
!86 = distinct !{!86, !85, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!87 = distinct !{!87, !85, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!88 = distinct !{!88, !"_ZL9hb_memcpyPvPKvm"}
!89 = distinct !{!89, !88, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!90 = distinct !{!90, !88, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20}
!94 = distinct !{!94, !20}
!95 = !{!57, !56}
!96 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!97 = !{!"bool", !8, i64 0}
!98 = !{!"_ZTS15contour_point_t", !29, i64 0, !29, i64 4, !8, i64 8, !97, i64 9}
!99 = !{!98, !97, i64 9}
!100 = !{i8 0, i8 2}
!101 = !{}
!102 = !{!97, !97, i64 0}
!103 = !{!64, !63}
!104 = !{!67, !66}
!105 = !{!45, !9, i64 12}
!106 = !{!"branch_weights", i32 4, i32 28}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = !{!51, !9, i64 8}
!109 = !{!75, !74}
!110 = !{!78, !77}
!111 = !{!81, !80}
!112 = !{!84, !83}
!113 = !{!87, !86}
!114 = !{!90, !89}
!115 = distinct !{!115, !20}
!116 = distinct !{!116, !"_ZL9hb_memcpyPvPKvm"}
!117 = distinct !{!117, !116, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!118 = distinct !{!118, !116, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!119 = !{!118, !117}
!120 = distinct !{!120, !"_ZL9hb_memcpyPvPKvm"}
!121 = distinct !{!121, !120, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!122 = distinct !{!122, !120, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!123 = distinct !{!123, !"_ZL9hb_memcpyPvPKvm"}
!124 = distinct !{!124, !123, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!125 = distinct !{!125, !123, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!126 = !{!122, !121}
!127 = !{!125, !124}
!128 = distinct !{!128, !20}
!129 = distinct !{!129, !"_ZL9hb_memcpyPvPKvm"}
!130 = distinct !{!130, !129, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!131 = distinct !{!131, !129, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!132 = distinct !{!132, !"_ZL9hb_memcpyPvPKvm"}
!133 = distinct !{!133, !132, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!134 = distinct !{!134, !132, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!135 = distinct !{!135, !20}
!136 = distinct !{!136, !20, !48, !49}
!137 = distinct !{!137, !20, !49, !48}
!138 = distinct !{!138, !20, !48, !49}
!139 = distinct !{!139, !20, !49, !48}
!140 = distinct !{!140, !20}
!141 = distinct !{!141, !20}
!142 = distinct !{!142, !20}
!143 = !{!"p1 double", !12, i64 0}
!144 = !{!"_ZTS11hb_vector_tIdLb0EE", !9, i64 0, !9, i64 4, !143, i64 8}
!145 = !{!144, !9, i64 0}
!146 = !{!144, !143, i64 8}
!147 = !{!144, !9, i64 4}
!148 = !{!131, !130}
!149 = !{!"branch_weights", i32 0, i32 -2147483648}
!150 = !{!134, !133}
!151 = !{!"double", !8, i64 0}
!152 = !{!151, !151, i64 0}
!153 = !{!51, !50, i64 0}
!154 = distinct !{!154, !"_ZL9hb_memcpyPvPKvm"}
!155 = distinct !{!155, !154, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!156 = distinct !{!156, !154, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!157 = distinct !{!157, !"_ZL9hb_memcpyPvPKvm"}
!158 = distinct !{!158, !157, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!159 = distinct !{!159, !157, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!160 = distinct !{!160, !"_ZL9hb_memcpyPvPKvm"}
!161 = distinct !{!161, !160, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!162 = distinct !{!162, !160, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!163 = !{!156, !155}
!164 = !{!"branch_weights", i32 1073205, i32 2146410443}
!165 = !{!159, !158}
!166 = !{!"branch_weights", !"expected", i32 2861879, i32 2144621769}
!167 = !{!162, !161}
!168 = distinct !{!168, !"_ZL9hb_memcpyPvPKvm"}
!169 = distinct !{!169, !168, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!170 = distinct !{!170, !168, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!171 = !{!170, !169}
!172 = distinct !{!172, !"_ZL9hb_memcpyPvPKvm"}
!173 = distinct !{!173, !172, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!174 = distinct !{!174, !172, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!175 = !{!174, !173}
end_hunk_1
