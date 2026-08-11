inline.NumInlined: 74
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@PSolve:bb.a
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index
  %wide.load117 = load <2 x double>, ptr %i.y, align 8, !tbaa !28 ; 2 uses
  %i.z = fadd <2 x double> %wide.load, %wide.load117
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.z, <2 x double> splat (double 1.000000e+00))
  %i.ab = fdiv <2 x double> splat (double 1.000000e+00), %i.aa ; 3 uses
  %i.ac = fmul <2 x double> %broadcast.splat116, %wide.load
  %i.ad = fmul <2 x double> %i.ac, %i.ab          ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  store <2 x double> %i.ad, ptr %i.ae, align 16, !tbaa !28
  %i.af = fmul <2 x double> %i.ad, splat (double 2.000000e+00)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index
  store <2 x double> %i.af, ptr %i.ag, align 16, !tbaa !28
  %i.ah = fmul <2 x double> %broadcast.splat116, %wide.load117
  %i.ai = fmul <2 x double> %i.ah, %i.ab          ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index
  store <2 x double> %i.ai, ptr %i.aj, align 16, !tbaa !28
  %i.ak = fmul <2 x double> %i.ai, splat (double 2.000000e+00)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  store <2 x double> %i.ak, ptr %i.al, align 16, !tbaa !28
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index
  store <2 x double> %i.ab, ptr %i.am, align 16, !tbaa !28
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader389.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader389.i:                                  ; preds = %scalar.ph, %middle.block, %bb.a
  %i.ao = icmp sgt i32 %i.q, 0
  br i1 %i.ao, label %.lr.ph394.i, label %.preheader389.._crit_edge395.split_crit_edge.i

.preheader389.._crit_edge395.split_crit_edge.i:   ; preds = %.preheader389.i
  %.pre.i = zext nneg i32 %i.m to i64
  br label %._crit_edge395.split.i

.lr.ph394.i:                                      ; preds = %.preheader389.i
  %i.ap = icmp slt i32 %i.o, 1
  %i.aq = icmp slt i32 %i.m, 1
  %wide.trip.count.i.i = zext i32 %i.m to i64     ; 8 uses
  %brmerge.i = or i1 %i.aq, %i.ap
  br i1 %brmerge.i, label %._crit_edge395.split.i, label %.lr.ph392.preheader.i

.lr.ph392.preheader.i:                            ; preds = %.lr.ph394.i
  %i.ar = sext i32 %i.s to i64
  %wide.trip.count444.i = zext nneg i32 %i.q to i64
  %wide.trip.count439.i = zext nneg i32 %i.o to i64
  %min.iters.check119 = icmp ult i32 %i.m, 4
  %i.as = sub i64 %i.k, %i.i
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = select i1 %min.iters.check119, i1 true, i1 %diff.check
  %n.vec121 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n130 = icmp eq i64 %n.vec121, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph392.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 8 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !28 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !28 ; 2 uses
  %i.ax = fadd double %i.au, %i.aw
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.w, double %i.ax, double 1.000000e+00)
  %i.az = fdiv double 1.000000e+00, %i.ay         ; 3 uses
  %i.ba = fmul double %5, %i.au
  %i.bb = fmul double %i.ba, %i.az                ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store double %i.bb, ptr %i.bc, align 8, !tbaa !28
  %i.bd = fmul double %i.bb, 2.000000e+00
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store double %i.bd, ptr %i.be, align 8, !tbaa !28
  %i.bf = fmul double %5, %i.aw
  %i.bg = fmul double %i.bf, %i.az                ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  store double %i.bg, ptr %i.bh, align 8, !tbaa !28
  %i.bi = fmul double %i.bg, 2.000000e+00
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  store double %i.bi, ptr %i.bj, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  store double %i.az, ptr %i.bk, align 8, !tbaa !28
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader389.i, label %scalar.ph, !llvm.loop !116

.lr.ph392.i:                                      ; preds = %._crit_edge.i, %.lr.ph392.preheader.i
  %indvars.iv441.i = phi i64 [ 0, %.lr.ph392.preheader.i ], [ %indvars.iv.next442.i, %._crit_edge.i ] ; 2 uses
  %i.bl = mul nsw i64 %indvars.iv441.i, %i.ar
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %v_prod.exit.loopexit.i, %.lr.ph392.i
  %indvars.iv436.i = phi i64 [ 0, %.lr.ph392.i ], [ %indvars.iv.next437.i, %v_prod.exit.loopexit.i ] ; 2 uses
  %i.bm = mul nuw nsw i64 %indvars.iv436.i, %wide.trip.count.i.i
  %i.bn = add nsw i64 %i.bm, %i.bl                ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bn ; 6 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bn ; 6 uses
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.body122

vector.body122:                                   ; preds = %.lr.ph.preheader.i.i, %vector.body122
  %index123 = phi i64 [ %index.next128, %vector.body122 ], [ 0, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index123 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load124 = load <2 x double>, ptr %i.bq, align 16, !tbaa !28
  %wide.load125 = load <2 x double>, ptr %i.br, align 16, !tbaa !28
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index123 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load126 = load <2 x double>, ptr %i.bs, align 8, !tbaa !28
  %wide.load127 = load <2 x double>, ptr %i.bt, align 8, !tbaa !28
  %i.bu = fmul <2 x double> %wide.load124, %wide.load126
  %i.bv = fmul <2 x double> %wide.load125, %wide.load127
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index123 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x double> %i.bu, ptr %i.bw, align 8, !tbaa !28
  store <2 x double> %i.bv, ptr %i.bx, align 8, !tbaa !28
  %index.next128 = add nuw i64 %index123, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next128, %n.vec121
  br i1 %i.by, label %middle.block129, label %vector.body122, !llvm.loop !117

middle.block129:                                  ; preds = %vector.body122
  br i1 %cmp.n130, label %v_prod.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block129
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec121, %middle.block129 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i.prol
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !28
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i.i.prol
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !28
  %i.cd = fmul double %i.ca, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i.i.prol
  store double %i.cd, ptr %i.ce, align 8, !tbaa !28
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !118

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.cf = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.cg = icmp ugt i64 %i.cf, -4
  br i1 %i.cg, label %v_prod.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !28
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i.i
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !28
  %i.cl = fmul double %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i.i
  store double %i.cl, ptr %i.cm, align 8, !tbaa !28
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i
  %i.co = load double, ptr %i.cn, align 8, !tbaa !28
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !28
  %i.cr = fmul double %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i
  store double %i.cr, ptr %i.cs, align 8, !tbaa !28
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.1
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !28
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i.1
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !28
  %i.cx = fmul double %i.cu, %i.cw
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i.1
  store double %i.cx, ptr %i.cy, align 8, !tbaa !28
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.2
  %i.da = load double, ptr %i.cz, align 8, !tbaa !28
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i.2
  %i.dc = load double, ptr %i.db, align 8, !tbaa !28
  %i.dd = fmul double %i.da, %i.dc
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i.2
  store double %i.dd, ptr %i.de, align 8, !tbaa !28
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %v_prod.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !120

v_prod.exit.loopexit.i:                           ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block129
  %indvars.iv.next437.i = add nuw nsw i64 %indvars.iv436.i, 1 ; 2 uses
  %exitcond440.not.i = icmp eq i64 %indvars.iv.next437.i, %wide.trip.count439.i
  br i1 %exitcond440.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i.i

._crit_edge.i:                                    ; preds = %v_prod.exit.loopexit.i
  %indvars.iv.next442.i = add nuw nsw i64 %indvars.iv441.i, 1 ; 2 uses
  %exitcond445.not.i = icmp eq i64 %indvars.iv.next442.i, %wide.trip.count444.i
  br i1 %exitcond445.not.i, label %._crit_edge395.split.i, label %.lr.ph392.i

._crit_edge395.split.i:                           ; preds = %._crit_edge.i, %.lr.ph394.i, %.preheader389.._crit_edge395.split_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.preheader389.._crit_edge395.split_crit_edge.i ], [ %wide.trip.count.i.i, %.lr.ph394.i ], [ %wide.trip.count.i.i, %._crit_edge.i ] ; 135 uses
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %4) #11
  %i.df = icmp slt i32 %i.q, 1                    ; 2 uses
  %i.dg = icmp slt i32 %i.o, 1                    ; 2 uses
  %i.dh = add nsw i32 %i.o, -1
  %i.di = add nsw i32 %i.q, -1
  %i.dj = shl nuw nsw i64 %.pre-phi.i, 3
  %i.dk = sext i32 %i.m to i64                    ; 33 uses
  %i.dl = sext i32 %i.s to i64                    ; 34 uses
  %i.dm = sub nsw i64 0, %i.dk                    ; 6 uses
  %i.dn = sub nsw i64 0, %i.dl                    ; 6 uses
  %i.do = zext i32 %i.dh to i64                   ; 2 uses
  %i.dp = zext i32 %i.di to i64                   ; 2 uses
  %wide.trip.count454.i = zext nneg i32 %i.q to i64 ; 2 uses
  %wide.trip.count449.i = zext i32 %i.o to i64    ; 20 uses
  %brmerge420.i = select i1 %i.df, i1 true, i1 %i.dg
  %i.dq = shl nsw i64 %i.dl, 3
  %i.dr = add nuw nsw i64 %wide.trip.count449.i, 2305843009213693951
  %i.ds = mul i64 %i.dr, %i.dk
  %i.dt = add i64 %i.ds, %.pre-phi.i              ; 2 uses
  %i.du = shl i64 %i.dt, 3
  %i.dv = sub i64 %i.dt, %i.dl
  %i.dw = shl i64 %i.dv, 3
  %i.dx = shl nsw i64 %i.dl, 3
  %i.dy = add nuw nsw i64 %wide.trip.count449.i, 2305843009213693951
  %i.dz = mul i64 %i.dy, %i.dk
  %i.ea = shl nuw nsw i64 %.pre-phi.i, 3
  %i.eb = add i64 %i.dz, %.pre-phi.i
  %i.ec = shl i64 %i.eb, 3
  %i.ed = shl nuw nsw i64 %wide.trip.count449.i, 3
  %i.ee = add nsw i64 %i.ed, -16
  %i.ef = mul i64 %i.ee, %i.dk
  %i.eg = shl nsw i64 %i.dl, 3
  %i.eh = add nuw nsw i64 %wide.trip.count449.i, 2305843009213693951
  %i.ei = mul i64 %i.eh, %i.dk
  %i.ej = shl nuw nsw i64 %.pre-phi.i, 3
  %i.ek = add i64 %i.ei, %.pre-phi.i
  %i.el = shl i64 %i.ek, 3
  %i.em = shl nuw nsw i64 %wide.trip.count449.i, 3
  %i.en = add nsw i64 %i.em, -16
  %i.eo = mul i64 %i.en, %i.dk
  %i.ep = shl nsw i64 %i.dl, 3
  %i.eq = add nuw nsw i64 %wide.trip.count449.i, 2305843009213693951
  %i.er = mul i64 %i.eq, %i.dk
  %i.es = shl nuw nsw i64 %.pre-phi.i, 3
  %i.et = add i64 %i.er, %.pre-phi.i
  %i.eu = shl i64 %i.et, 3
  %i.ev = shl nuw nsw i64 %wide.trip.count449.i, 3
  %i.ew = add nsw i64 %i.ev, -16
  %i.ex = mul i64 %i.ew, %i.dk
  %i.ey = shl nsw i64 %i.dl, 3
  %i.ez = add nuw nsw i64 %wide.trip.count449.i, 2305843009213693951
  %i.fa = mul i64 %i.ez, %i.dk
  %i.fb = add i64 %i.fa, %.pre-phi.i              ; 2 uses
  %i.fc = shl i64 %i.fb, 3
  %i.fd = sub i64 %i.fb, %i.dl
  %i.fe = shl i64 %i.fd, 3
  %i.ff = shl nsw i64 %i.dl, 3
  %i.fg = add nuw nsw i64 %wide.trip.count449.i, 2305843009213693951
  %i.fh = mul i64 %i.fg, %i.dk
  %i.fi = add i64 %i.fh, %.pre-phi.i              ; 2 uses
  %i.fj = shl i64 %i.fi, 3
  %i.fk = sub i64 %i.fi, %i.dl
  %i.fl = shl i64 %i.fk, 3
  %i.fm = shl nsw i64 %i.dl, 3
  %i.fn = add nuw nsw i64 %wide.trip.count449.i, 2305843009213693951
  %i.fo = mul i64 %i.fn, %i.dk
  %i.fp = shl nuw nsw i64 %.pre-phi.i, 3
  %i.fq = add i64 %i.fo, %.pre-phi.i
  %i.fr = shl i64 %i.fq, 3
  %i.fs = shl nuw nsw i64 %wide.trip.count449.i, 3
  %i.ft = add nsw i64 %i.fs, -16
  %i.fu = mul i64 %i.ft, %i.dk
  %i.fv = shl nsw i64 %i.dl, 3
  %i.fw = add nuw nsw i64 %wide.trip.count449.i, 2305843009213693951
  %i.fx = mul i64 %i.fw, %i.dk
  %i.fy = add i64 %i.fx, %.pre-phi.i              ; 2 uses
  %i.fz = shl i64 %i.fy, 3
  %i.ga = sub i64 %i.fy, %i.dl
  %i.gb = shl i64 %i.ga, 3
  %i.gc = shl nsw i64 %i.dl, 3
  %i.gd = add nuw nsw i64 %wide.trip.count449.i, 2305843009213693951
  %i.ge = mul i64 %i.gd, %i.dk
  %i.gf = shl nuw nsw i64 %.pre-phi.i, 3
  %i.gg = add i64 %i.ge, %.pre-phi.i
  %i.gh = shl i64 %i.gg, 3
  %i.gi = shl nuw nsw i64 %wide.trip.count449.i, 3
  %i.gj = add nsw i64 %i.gi, -16
  %i.gk = mul i64 %i.gj, %i.dk
  %i.gl = shl nsw i64 %i.dl, 3
  %i.gm = add nuw nsw i64 %wide.trip.count449.i, 2305843009213693951
  %i.gn = mul i64 %i.gm, %i.dk
  %i.go = add i64 %i.gn, %.pre-phi.i              ; 2 uses
  %i.gp = shl i64 %i.go, 3
  %i.gq = sub i64 %i.go, %i.dl
  %i.gr = shl i64 %i.gq, 3
  %i.gs = shl nsw i64 %i.dl, 3
  %i.gt = add nuw nsw i64 %wide.trip.count449.i, 2305843009213693951
  %i.gu = mul i64 %i.gt, %i.dk
  %i.gv = add i64 %i.gu, %.pre-phi.i              ; 2 uses
  %i.gw = shl i64 %i.gv, 3
  %i.gx = sub i64 %i.gv, %i.dl
  %i.gy = shl i64 %i.gx, 3
  %i.gz = shl nsw i64 %i.dl, 3
  %i.ha = add nuw nsw i64 %wide.trip.count449.i, 2305843009213693951
  %i.hb = mul i64 %i.ha, %i.dk
  %i.hc = shl nuw nsw i64 %.pre-phi.i, 3
  %i.hd = add i64 %i.hb, %.pre-phi.i
  %i.he = shl i64 %i.hd, 3
  %9 = mul nsw i64 %i.dk, -8                      ; 5 uses
  %10 = shl nuw nsw i64 %wide.trip.count449.i, 3
  %11 = add nsw i64 %10, -16
  %i.hf = mul i64 %11, %i.dk
  %i.hg = mul nsw i64 %i.dl, -8                   ; 6 uses
  %min.iters.check573 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec575 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n584 = icmp eq i64 %.pre-phi.i, %n.vec575
  %min.iters.check559 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec561 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n570 = icmp eq i64 %.pre-phi.i, %n.vec561
  %min.iters.check545 = icmp samesign ult i64 %.pre-phi.i, 4
  %i.hh = add nsw i64 %i.hg, -1
  %diff.check543 = icmp ult i64 %i.hh, 31
  %or.cond587 = select i1 %min.iters.check545, i1 true, i1 %diff.check543
  %n.vec547 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n556 = icmp eq i64 %.pre-phi.i, %n.vec547
  %xtraiter618 = and i64 %.pre-phi.i, 3           ; 2 uses
  %lcmp.mod619.not = icmp eq i64 %xtraiter618, 0
  %min.iters.check525 = icmp samesign ult i64 %.pre-phi.i, 4
  %diff.check521 = icmp ult i64 %9, 32
  %i.hi = add nsw i64 %i.hg, -1
  %diff.check522 = icmp ult i64 %i.hi, 31
  %conflict.rdx523 = or i1 %diff.check521, %diff.check522
  %n.vec527 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n540 = icmp eq i64 %.pre-phi.i, %n.vec527
  %xtraiter621 = and i64 %.pre-phi.i, 1
  %lcmp.mod622.not = icmp eq i64 %xtraiter621, 0
  %min.iters.check503 = icmp samesign ult i64 %.pre-phi.i, 4
  %diff.check499 = icmp ult i64 %9, 32
  %i.hj = add nsw i64 %i.hg, -1
  %diff.check500 = icmp ult i64 %i.hj, 31
  %conflict.rdx501 = or i1 %diff.check499, %diff.check500
  %n.vec505 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n518 = icmp eq i64 %.pre-phi.i, %n.vec505
  %xtraiter624 = and i64 %.pre-phi.i, 1
  %lcmp.mod625.not = icmp eq i64 %xtraiter624, 0
  %min.iters.check485 = icmp samesign ult i64 %.pre-phi.i, 4
  %i.hk = add nsw i64 %i.hg, -1
  %diff.check483 = icmp ult i64 %i.hk, 31
  %or.cond586 = select i1 %min.iters.check485, i1 true, i1 %diff.check483
  %n.vec487 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n496 = icmp eq i64 %.pre-phi.i, %n.vec487
  %xtraiter627 = and i64 %.pre-phi.i, 3           ; 2 uses
  %lcmp.mod628.not = icmp eq i64 %xtraiter627, 0
  %min.iters.check465 = icmp samesign ult i64 %.pre-phi.i, 4
  %diff.check461 = icmp ult i64 %9, 32
  %i.hl = add nsw i64 %i.hg, -1
  %diff.check462 = icmp ult i64 %i.hl, 31
  %conflict.rdx463 = or i1 %diff.check461, %diff.check462
  %n.vec467 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n480 = icmp eq i64 %.pre-phi.i, %n.vec467
  %xtraiter630 = and i64 %.pre-phi.i, 1
  %lcmp.mod631.not = icmp eq i64 %xtraiter630, 0
  %min.iters.check443 = icmp samesign ult i64 %.pre-phi.i, 4
  %diff.check440 = icmp ult i64 %9, 32
  %i.hm = add nsw i64 %i.hg, -1
  %diff.check441 = icmp ult i64 %i.hm, 31
  %conflict.rdx = or i1 %diff.check440, %diff.check441
  %n.vec445 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n458 = icmp eq i64 %.pre-phi.i, %n.vec445
  %xtraiter633 = and i64 %.pre-phi.i, 1
  %lcmp.mod634.not = icmp eq i64 %xtraiter633, 0
  %i.hn = getelementptr i8, ptr %i.h, i64 %i.he
  %12 = getelementptr i8, ptr %i.h, i64 %9
  %i.ho = getelementptr i8, ptr %i.h, i64 %i.hf
  %i.hp = getelementptr i8, ptr %i.ho, i64 %i.hc
  %i.hq = getelementptr i8, ptr %i.h, i64 %i.gw
  %i.hr = shl nsw i64 %i.dl, 3
  %i.hs = getelementptr i8, ptr %i.h, i64 %i.gy
  %i.ht = getelementptr i8, ptr %i.h, i64 %i.gp
  %i.hu = shl nsw i64 %i.dl, 3
  %i.hv = getelementptr i8, ptr %i.h, i64 %i.gr
  %i.hw = getelementptr i8, ptr %i.h, i64 %i.gh
  %i.hx = shl nsw i64 %i.dk, 3
  %i.hy = getelementptr i8, ptr %i.h, i64 %i.gk
  %i.hz = getelementptr i8, ptr %i.hy, i64 %i.gf
  %i.ia = getelementptr i8, ptr %i.h, i64 %i.fz
  %i.ib = shl nsw i64 %i.dl, 3
  %i.ic = getelementptr i8, ptr %i.h, i64 %i.gb
  %i.id = getelementptr i8, ptr %i.h, i64 %i.fr
  %i.ie = shl nsw i64 %i.dk, 3
  %i.if = getelementptr i8, ptr %i.h, i64 %i.fu
  %i.ig = getelementptr i8, ptr %i.if, i64 %i.fp
  %i.ih = getelementptr i8, ptr %i.h, i64 %i.fj
  %i.ii = shl nsw i64 %i.dl, 3
  %i.ij = getelementptr i8, ptr %i.h, i64 %i.fl
  %i.ik = getelementptr i8, ptr %i.h, i64 %i.fc
  %i.il = shl nsw i64 %i.dl, 3
  %i.im = getelementptr i8, ptr %i.h, i64 %i.fe
  %i.in = getelementptr i8, ptr %i.h, i64 %i.eu
  %i.io = shl nsw i64 %i.dk, 3
  %i.ip = getelementptr i8, ptr %i.h, i64 %i.ex
  %i.iq = getelementptr i8, ptr %i.ip, i64 %i.es
  %i.ir = getelementptr i8, ptr %i.h, i64 %i.el
  %i.is = shl nsw i64 %i.dk, 3
  %i.it = getelementptr i8, ptr %i.h, i64 %i.eo
  %i.iu = getelementptr i8, ptr %i.it, i64 %i.ej
  %i.iv = getelementptr i8, ptr %i.h, i64 %i.ec
  %i.iw = shl nsw i64 %i.dk, 3
  %i.ix = getelementptr i8, ptr %i.h, i64 %i.ef
  %i.iy = getelementptr i8, ptr %i.ix, i64 %i.ea
  %i.iz = getelementptr i8, ptr %i.h, i64 %i.du
  %i.ja = shl nsw i64 %i.dl, 3
  %i.jb = getelementptr i8, ptr %i.h, i64 %i.dw
  %min.iters.check424 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec426 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n437 = icmp eq i64 %.pre-phi.i, %n.vec426
  %xtraiter636 = and i64 %.pre-phi.i, 1
  %lcmp.mod637.not = icmp eq i64 %xtraiter636, 0
  %min.iters.check398 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec400 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n411 = icmp eq i64 %.pre-phi.i, %n.vec400
  %xtraiter639 = and i64 %.pre-phi.i, 1
  %lcmp.mod640.not = icmp eq i64 %xtraiter639, 0
  %min.iters.check372 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec374 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n385 = icmp eq i64 %.pre-phi.i, %n.vec374
  %xtraiter642 = and i64 %.pre-phi.i, 1
  %lcmp.mod643.not = icmp eq i64 %xtraiter642, 0
  %min.iters.check346 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec348 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n359 = icmp eq i64 %.pre-phi.i, %n.vec348
  %xtraiter645 = and i64 %.pre-phi.i, 1
  %lcmp.mod646.not = icmp eq i64 %xtraiter645, 0
  %min.iters.check320 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec322 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n333 = icmp eq i64 %.pre-phi.i, %n.vec322
  %xtraiter648 = and i64 %.pre-phi.i, 1
  %lcmp.mod649.not = icmp eq i64 %xtraiter648, 0
  %min.iters.check294 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec296 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n307 = icmp eq i64 %.pre-phi.i, %n.vec296
  %xtraiter651 = and i64 %.pre-phi.i, 1
  %lcmp.mod652.not = icmp eq i64 %xtraiter651, 0
  %min.iters.check268 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec270 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n281 = icmp eq i64 %.pre-phi.i, %n.vec270
  %xtraiter654 = and i64 %.pre-phi.i, 1
  %lcmp.mod655.not = icmp eq i64 %xtraiter654, 0
  %min.iters.check242 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec244 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n255 = icmp eq i64 %.pre-phi.i, %n.vec244
  %xtraiter657 = and i64 %.pre-phi.i, 1
  %lcmp.mod658.not = icmp eq i64 %xtraiter657, 0
  %min.iters.check216 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec218 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n229 = icmp eq i64 %.pre-phi.i, %n.vec218
  %xtraiter660 = and i64 %.pre-phi.i, 1
  %lcmp.mod661.not = icmp eq i64 %xtraiter660, 0
  %min.iters.check190 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec192 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n203 = icmp eq i64 %.pre-phi.i, %n.vec192
  %xtraiter663 = and i64 %.pre-phi.i, 1
  %lcmp.mod664.not = icmp eq i64 %xtraiter663, 0
  %min.iters.check164 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec166 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n177 = icmp eq i64 %.pre-phi.i, %n.vec166
  %xtraiter666 = and i64 %.pre-phi.i, 1
  %lcmp.mod667.not = icmp eq i64 %xtraiter666, 0
  %min.iters.check138 = icmp samesign ult i64 %.pre-phi.i, 4
  %n.vec140 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n151 = icmp eq i64 %.pre-phi.i, %n.vec140
  %xtraiter669 = and i64 %.pre-phi.i, 1
  %lcmp.mod670.not = icmp eq i64 %xtraiter669, 0
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge410.split.i, %._crit_edge395.split.i
  %.0231411.i = phi i32 [ 1, %._crit_edge395.split.i ], [ %i.amr, %._crit_edge410.split.i ] ; 2 uses
  %i.jc = icmp samesign ult i32 %.0231411.i, 2
  %brmerge415.i = select i1 %i.jc, i1 true, i1 %i.df
  %brmerge417.i = select i1 %brmerge415.i, i1 true, i1 %i.dg
  br i1 %brmerge417.i, label %.loopexit.i, label %.lr.ph399.i

.lr.ph399.i:                                      ; preds = %bb.b, %._crit_edge400.i
  %indvars.iv451.i = phi i64 [ %indvars.iv.next452.i, %._crit_edge400.i ], [ 0, %bb.b ] ; 4 uses
  %i.jd = mul nsw i64 %indvars.iv451.i, %i.dl
  %i.je = icmp eq i64 %indvars.iv451.i, 0
  %i.jf = icmp eq i64 %indvars.iv451.i, %i.dp
  %i.jg = select i1 %i.jf, i32 6, i32 3
  %i.jh = select i1 %i.je, i32 0, i32 %i.jg
  br label %bb.c

bb.c:                                             ; preds = %v_sum_prods.exit.i, %.lr.ph399.i
  %indvars.iv446.i = phi i64 [ 0, %.lr.ph399.i ], [ %indvars.iv.next447.i, %v_sum_prods.exit.i ] ; 4 uses
  %i.ji = mul nsw i64 %indvars.iv446.i, %i.dk
  %i.jj = add nsw i64 %i.ji, %i.jd                ; 9 uses
  %i.jk = icmp eq i64 %indvars.iv446.i, 0
  %i.jl = icmp eq i64 %indvars.iv446.i, %i.do
  %i.jm = select i1 %i.jl, i32 2, i32 1
  %i.jn = select i1 %i.jk, i32 0, i32 %i.jm
  %i.jo = add nuw nsw i32 %i.jn, %i.jh
  switch i32 %i.jo, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jj ; 6 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.dk ; 4 uses
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.dl ; 4 uses
  br i1 %i.v, label %.lr.ph.i238.i.preheader, label %v_sum_prods.exit.i

.lr.ph.i238.i.preheader:                          ; preds = %bb.d
  %brmerge = select i1 %min.iters.check443, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph.i238.i.preheader603, label %vector.body446

vector.body446:                                   ; preds = %.lr.ph.i238.i.preheader, %vector.body446
  %index447 = phi i64 [ %index.next456, %vector.body446 ], [ 0, %.lr.ph.i238.i.preheader ] ; 6 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index447 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %wide.load448 = load <2 x double>, ptr %i.js, align 16, !tbaa !28
  %wide.load449 = load <2 x double>, ptr %i.jt, align 16, !tbaa !28
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %index447 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %wide.load450 = load <2 x double>, ptr %i.ju, align 8, !tbaa !28
  %wide.load451 = load <2 x double>, ptr %i.jv, align 8, !tbaa !28
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index447 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %wide.load452 = load <2 x double>, ptr %i.jw, align 16, !tbaa !28
  %wide.load453 = load <2 x double>, ptr %i.jx, align 16, !tbaa !28
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %index447 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %wide.load454 = load <2 x double>, ptr %i.jy, align 8, !tbaa !28
  %wide.load455 = load <2 x double>, ptr %i.jz, align 8, !tbaa !28
  %i.ka = fmul <2 x double> %wide.load452, %wide.load454
  %i.kb = fmul <2 x double> %wide.load453, %wide.load455
  %i.kc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load448, <2 x double> %wide.load450, <2 x double> %i.ka)
  %i.kd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load449, <2 x double> %wide.load451, <2 x double> %i.kb)
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %index447 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  store <2 x double> %i.kc, ptr %i.ke, align 8, !tbaa !28
  store <2 x double> %i.kd, ptr %i.kf, align 8, !tbaa !28
  %index.next456 = add nuw i64 %index447, 4       ; 2 uses
  %i.kg = icmp eq i64 %index.next456, %n.vec445
  br i1 %i.kg, label %middle.block457, label %vector.body446, !llvm.loop !121

middle.block457:                                  ; preds = %vector.body446
  br i1 %cmp.n458, label %v_sum_prods.exit.i, label %.lr.ph.i238.i.preheader603

.lr.ph.i238.i.preheader603:                       ; preds = %.lr.ph.i238.i.preheader, %middle.block457
  %indvars.iv.i239.i.ph = phi i64 [ %n.vec445, %middle.block457 ], [ 0, %.lr.ph.i238.i.preheader ] ; 8 uses
  %.neg674 = or disjoint i64 %indvars.iv.i239.i.ph, 1
  br i1 %lcmp.mod634.not, label %.lr.ph.i238.i.prol.loopexit, label %.lr.ph.i238.i.prol

.lr.ph.i238.i.prol:                               ; preds = %.lr.ph.i238.i.preheader603
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i239.i.ph
  %i.ki = load double, ptr %i.kh, align 16, !tbaa !28
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %indvars.iv.i239.i.ph
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !28
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i239.i.ph
  %i.km = load double, ptr %i.kl, align 16, !tbaa !28
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv.i239.i.ph
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !28
  %i.kp = fmul double %i.km, %i.ko
  %i.kq = tail call double @llvm.fmuladd.f64(double %i.ki, double %i.kk, double %i.kp)
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv.i239.i.ph
  store double %i.kq, ptr %i.kr, align 8, !tbaa !28
  %indvars.iv.next.i240.i.prol = or disjoint i64 %indvars.iv.i239.i.ph, 1
  br label %.lr.ph.i238.i.prol.loopexit

.lr.ph.i238.i.prol.loopexit:                      ; preds = %.lr.ph.i238.i.prol, %.lr.ph.i238.i.preheader603
  %indvars.iv.i239.i.unr = phi i64 [ %indvars.iv.i239.i.ph, %.lr.ph.i238.i.preheader603 ], [ %indvars.iv.next.i240.i.prol, %.lr.ph.i238.i.prol ]
  %i.ks = icmp eq i64 %.pre-phi.i, %.neg674
  br i1 %i.ks, label %v_sum_prods.exit.i, label %.lr.ph.i238.i

.lr.ph.i238.i:                                    ; preds = %.lr.ph.i238.i.prol.loopexit, %.lr.ph.i238.i
  %indvars.iv.i239.i = phi i64 [ %indvars.iv.next.i240.i.1, %.lr.ph.i238.i ], [ %indvars.iv.i239.i.unr, %.lr.ph.i238.i.prol.loopexit ] ; 7 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i239.i
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !28
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %indvars.iv.i239.i
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !28
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i239.i
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !28
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv.i239.i
  %i.la = load double, ptr %i.kz, align 8, !tbaa !28
  %i.lb = fmul double %i.ky, %i.la
  %i.lc = tail call double @llvm.fmuladd.f64(double %i.ku, double %i.kw, double %i.lb)
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv.i239.i
  store double %i.lc, ptr %i.ld, align 8, !tbaa !28
  %indvars.iv.next.i240.i = add nuw nsw i64 %indvars.iv.i239.i, 1 ; 5 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i240.i
  %i.lf = load double, ptr %i.le, align 8, !tbaa !28
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %indvars.iv.next.i240.i
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !28
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i240.i
  %i.lj = load double, ptr %i.li, align 8, !tbaa !28
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv.next.i240.i
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !28
  %i.lm = fmul double %i.lj, %i.ll
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.lf, double %i.lh, double %i.lm)
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv.next.i240.i
  store double %i.ln, ptr %i.lo, align 8, !tbaa !28
  %indvars.iv.next.i240.i.1 = add nuw nsw i64 %indvars.iv.i239.i, 2 ; 2 uses
  %exitcond.not.i241.i.1 = icmp eq i64 %indvars.iv.next.i240.i.1, %.pre-phi.i
  br i1 %exitcond.not.i241.i.1, label %v_sum_prods.exit.i, label %.lr.ph.i238.i, !llvm.loop !122

bb.e:                                             ; preds = %bb.c
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jj ; 6 uses
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.dk ; 4 uses
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.dl ; 4 uses
  br i1 %i.v, label %.lr.ph.i244.i.preheader, label %v_sum_prods.exit.i

.lr.ph.i244.i.preheader:                          ; preds = %bb.e
  %brmerge687 = select i1 %min.iters.check465, i1 true, i1 %conflict.rdx463
  br i1 %brmerge687, label %.lr.ph.i244.i.preheader604, label %vector.body468

vector.body468:                                   ; preds = %.lr.ph.i244.i.preheader, %vector.body468
  %index469 = phi i64 [ %index.next478, %vector.body468 ], [ 0, %.lr.ph.i244.i.preheader ] ; 6 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index469 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %wide.load470 = load <2 x double>, ptr %i.ls, align 16, !tbaa !28
  %wide.load471 = load <2 x double>, ptr %i.lt, align 16, !tbaa !28
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %index469 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %wide.load472 = load <2 x double>, ptr %i.lu, align 8, !tbaa !28
  %wide.load473 = load <2 x double>, ptr %i.lv, align 8, !tbaa !28
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index469 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %wide.load474 = load <2 x double>, ptr %i.lw, align 16, !tbaa !28
  %wide.load475 = load <2 x double>, ptr %i.lx, align 16, !tbaa !28
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %index469 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %wide.load476 = load <2 x double>, ptr %i.ly, align 8, !tbaa !28
  %wide.load477 = load <2 x double>, ptr %i.lz, align 8, !tbaa !28
  %i.ma = fmul <2 x double> %wide.load474, %wide.load476
  %i.mb = fmul <2 x double> %wide.load475, %wide.load477
  %i.mc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load470, <2 x double> %wide.load472, <2 x double> %i.ma)
  %i.md = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load471, <2 x double> %wide.load473, <2 x double> %i.mb)
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %index469 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store <2 x double> %i.mc, ptr %i.me, align 8, !tbaa !28
  store <2 x double> %i.md, ptr %i.mf, align 8, !tbaa !28
  %index.next478 = add nuw i64 %index469, 4       ; 2 uses
  %i.mg = icmp eq i64 %index.next478, %n.vec467
  br i1 %i.mg, label %middle.block479, label %vector.body468, !llvm.loop !123

middle.block479:                                  ; preds = %vector.body468
  br i1 %cmp.n480, label %v_sum_prods.exit.i, label %.lr.ph.i244.i.preheader604

.lr.ph.i244.i.preheader604:                       ; preds = %.lr.ph.i244.i.preheader, %middle.block479
  %indvars.iv.i245.i.ph = phi i64 [ %n.vec467, %middle.block479 ], [ 0, %.lr.ph.i244.i.preheader ] ; 8 uses
  %.neg673 = or disjoint i64 %indvars.iv.i245.i.ph, 1
  br i1 %lcmp.mod631.not, label %.lr.ph.i244.i.prol.loopexit, label %.lr.ph.i244.i.prol

.lr.ph.i244.i.prol:                               ; preds = %.lr.ph.i244.i.preheader604
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i245.i.ph
  %i.mi = load double, ptr %i.mh, align 16, !tbaa !28
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %indvars.iv.i245.i.ph
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !28
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i245.i.ph
  %i.mm = load double, ptr %i.ml, align 16, !tbaa !28
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %indvars.iv.i245.i.ph
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !28
  %i.mp = fmul double %i.mm, %i.mo
  %i.mq = tail call double @llvm.fmuladd.f64(double %i.mi, double %i.mk, double %i.mp)
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv.i245.i.ph
  store double %i.mq, ptr %i.mr, align 8, !tbaa !28
  %indvars.iv.next.i246.i.prol = or disjoint i64 %indvars.iv.i245.i.ph, 1
  br label %.lr.ph.i244.i.prol.loopexit

.lr.ph.i244.i.prol.loopexit:                      ; preds = %.lr.ph.i244.i.prol, %.lr.ph.i244.i.preheader604
  %indvars.iv.i245.i.unr = phi i64 [ %indvars.iv.i245.i.ph, %.lr.ph.i244.i.preheader604 ], [ %indvars.iv.next.i246.i.prol, %.lr.ph.i244.i.prol ]
  %i.ms = icmp eq i64 %.pre-phi.i, %.neg673
  br i1 %i.ms, label %v_sum_prods.exit.i, label %.lr.ph.i244.i

.lr.ph.i244.i:                                    ; preds = %.lr.ph.i244.i.prol.loopexit, %.lr.ph.i244.i
  %indvars.iv.i245.i = phi i64 [ %indvars.iv.next.i246.i.1, %.lr.ph.i244.i ], [ %indvars.iv.i245.i.unr, %.lr.ph.i244.i.prol.loopexit ] ; 7 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i245.i
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !28
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %indvars.iv.i245.i
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !28
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i245.i
  %i.my = load double, ptr %i.mx, align 8, !tbaa !28
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %indvars.iv.i245.i
  %i.na = load double, ptr %i.mz, align 8, !tbaa !28
  %i.nb = fmul double %i.my, %i.na
  %i.nc = tail call double @llvm.fmuladd.f64(double %i.mu, double %i.mw, double %i.nb)
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv.i245.i
  store double %i.nc, ptr %i.nd, align 8, !tbaa !28
  %indvars.iv.next.i246.i = add nuw nsw i64 %indvars.iv.i245.i, 1 ; 5 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i246.i
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !28
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %indvars.iv.next.i246.i
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !28
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i246.i
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !28
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %indvars.iv.next.i246.i
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !28
  %i.nm = fmul double %i.nj, %i.nl
  %i.nn = tail call double @llvm.fmuladd.f64(double %i.nf, double %i.nh, double %i.nm)
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %indvars.iv.next.i246.i
  store double %i.nn, ptr %i.no, align 8, !tbaa !28
  %indvars.iv.next.i246.i.1 = add nuw nsw i64 %indvars.iv.i245.i, 2 ; 2 uses
  %exitcond.not.i247.i.1 = icmp eq i64 %indvars.iv.next.i246.i.1, %.pre-phi.i
  br i1 %exitcond.not.i247.i.1, label %v_sum_prods.exit.i, label %.lr.ph.i244.i, !llvm.loop !124

bb.f:                                             ; preds = %bb.c
  %i.np = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jj ; 7 uses
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.np, i64 %i.dl ; 6 uses
  br i1 %i.v, label %.lr.ph.i251.i.preheader, label %v_sum_prods.exit.i

.lr.ph.i251.i.preheader:                          ; preds = %bb.f
  br i1 %or.cond586, label %.lr.ph.i251.i.preheader606, label %vector.body488

vector.body488:                                   ; preds = %.lr.ph.i251.i.preheader, %vector.body488
  %index489 = phi i64 [ %index.next494, %vector.body488 ], [ 0, %.lr.ph.i251.i.preheader ] ; 4 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index489 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %wide.load490 = load <2 x double>, ptr %i.nr, align 16, !tbaa !28
  %wide.load491 = load <2 x double>, ptr %i.ns, align 16, !tbaa !28
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %index489 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %wide.load492 = load <2 x double>, ptr %i.nt, align 8, !tbaa !28
  %wide.load493 = load <2 x double>, ptr %i.nu, align 8, !tbaa !28
  %i.nv = fmul <2 x double> %wide.load490, %wide.load492
  %i.nw = fmul <2 x double> %wide.load491, %wide.load493
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %index489 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  store <2 x double> %i.nv, ptr %i.nx, align 8, !tbaa !28
  store <2 x double> %i.nw, ptr %i.ny, align 8, !tbaa !28
  %index.next494 = add nuw i64 %index489, 4       ; 2 uses
  %i.nz = icmp eq i64 %index.next494, %n.vec487
  br i1 %i.nz, label %middle.block495, label %vector.body488, !llvm.loop !125

middle.block495:                                  ; preds = %vector.body488
  br i1 %cmp.n496, label %v_sum_prods.exit.i, label %.lr.ph.i251.i.preheader606

.lr.ph.i251.i.preheader606:                       ; preds = %.lr.ph.i251.i.preheader, %middle.block495
  %indvars.iv.i252.i.ph = phi i64 [ 0, %.lr.ph.i251.i.preheader ], [ %n.vec487, %middle.block495 ] ; 3 uses
  br i1 %lcmp.mod628.not, label %.lr.ph.i251.i.prol.loopexit, label %.lr.ph.i251.i.prol

.lr.ph.i251.i.prol:                               ; preds = %.lr.ph.i251.i.preheader606, %.lr.ph.i251.i.prol
  %indvars.iv.i252.i.prol = phi i64 [ %indvars.iv.next.i253.i.prol, %.lr.ph.i251.i.prol ], [ %indvars.iv.i252.i.ph, %.lr.ph.i251.i.preheader606 ] ; 4 uses
  %prol.iter629 = phi i64 [ %prol.iter629.next, %.lr.ph.i251.i.prol ], [ 0, %.lr.ph.i251.i.preheader606 ]
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i252.i.prol
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !28
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv.i252.i.prol
  %i.od = load double, ptr %i.oc, align 8, !tbaa !28
  %i.oe = fmul double %i.ob, %i.od
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv.i252.i.prol
  store double %i.oe, ptr %i.of, align 8, !tbaa !28
  %indvars.iv.next.i253.i.prol = add nuw nsw i64 %indvars.iv.i252.i.prol, 1 ; 2 uses
  %prol.iter629.next = add i64 %prol.iter629, 1   ; 2 uses
  %prol.iter629.cmp.not = icmp eq i64 %prol.iter629.next, %xtraiter627
  br i1 %prol.iter629.cmp.not, label %.lr.ph.i251.i.prol.loopexit, label %.lr.ph.i251.i.prol, !llvm.loop !126

.lr.ph.i251.i.prol.loopexit:                      ; preds = %.lr.ph.i251.i.prol, %.lr.ph.i251.i.preheader606
  %indvars.iv.i252.i.unr = phi i64 [ %indvars.iv.i252.i.ph, %.lr.ph.i251.i.preheader606 ], [ %indvars.iv.next.i253.i.prol, %.lr.ph.i251.i.prol ]
  %i.og = sub nsw i64 %indvars.iv.i252.i.ph, %.pre-phi.i
  %i.oh = icmp ugt i64 %i.og, -4
  br i1 %i.oh, label %v_sum_prods.exit.i, label %.lr.ph.i251.i

.lr.ph.i251.i:                                    ; preds = %.lr.ph.i251.i.prol.loopexit, %.lr.ph.i251.i
  %indvars.iv.i252.i = phi i64 [ %indvars.iv.next.i253.i.3, %.lr.ph.i251.i ], [ %indvars.iv.i252.i.unr, %.lr.ph.i251.i.prol.loopexit ] ; 7 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i252.i
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !28
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv.i252.i
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !28
  %i.om = fmul double %i.oj, %i.ol
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv.i252.i
  store double %i.om, ptr %i.on, align 8, !tbaa !28
  %indvars.iv.next.i253.i = add nuw nsw i64 %indvars.iv.i252.i, 1 ; 3 uses
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i253.i
  %i.op = load double, ptr %i.oo, align 8, !tbaa !28
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv.next.i253.i
  %i.or = load double, ptr %i.oq, align 8, !tbaa !28
  %i.os = fmul double %i.op, %i.or
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv.next.i253.i
  store double %i.os, ptr %i.ot, align 8, !tbaa !28
  %indvars.iv.next.i253.i.1 = add nuw nsw i64 %indvars.iv.i252.i, 2 ; 3 uses
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i253.i.1
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !28
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv.next.i253.i.1
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !28
  %i.oy = fmul double %i.ov, %i.ox
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv.next.i253.i.1
  store double %i.oy, ptr %i.oz, align 8, !tbaa !28
  %indvars.iv.next.i253.i.2 = add nuw nsw i64 %indvars.iv.i252.i, 3 ; 3 uses
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i253.i.2
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !28
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv.next.i253.i.2
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !28
  %i.pe = fmul double %i.pb, %i.pd
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv.next.i253.i.2
  store double %i.pe, ptr %i.pf, align 8, !tbaa !28
  %indvars.iv.next.i253.i.3 = add nuw nsw i64 %indvars.iv.i252.i, 4 ; 2 uses
  %exitcond.not.i254.i.3 = icmp eq i64 %indvars.iv.next.i253.i.3, %.pre-phi.i
  br i1 %exitcond.not.i254.i.3, label %v_sum_prods.exit.i, label %.lr.ph.i251.i, !llvm.loop !127

bb.g:                                             ; preds = %bb.c
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jj ; 6 uses
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %i.dk ; 4 uses
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %i.dl ; 4 uses
  br i1 %i.v, label %.lr.ph.i258.i.preheader, label %v_sum_prods.exit.i

.lr.ph.i258.i.preheader:                          ; preds = %bb.g
  %brmerge688 = select i1 %min.iters.check503, i1 true, i1 %conflict.rdx501
  br i1 %brmerge688, label %.lr.ph.i258.i.preheader608, label %vector.body506

vector.body506:                                   ; preds = %.lr.ph.i258.i.preheader, %vector.body506
  %index507 = phi i64 [ %index.next516, %vector.body506 ], [ 0, %.lr.ph.i258.i.preheader ] ; 6 uses
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index507 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %wide.load508 = load <2 x double>, ptr %i.pj, align 16, !tbaa !28
  %wide.load509 = load <2 x double>, ptr %i.pk, align 16, !tbaa !28
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %index507 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %wide.load510 = load <2 x double>, ptr %i.pl, align 8, !tbaa !28
  %wide.load511 = load <2 x double>, ptr %i.pm, align 8, !tbaa !28
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index507 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %wide.load512 = load <2 x double>, ptr %i.pn, align 16, !tbaa !28
  %wide.load513 = load <2 x double>, ptr %i.po, align 16, !tbaa !28
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %index507 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %wide.load514 = load <2 x double>, ptr %i.pp, align 8, !tbaa !28
  %wide.load515 = load <2 x double>, ptr %i.pq, align 8, !tbaa !28
  %i.pr = fmul <2 x double> %wide.load512, %wide.load514
  %i.ps = fmul <2 x double> %wide.load513, %wide.load515
  %i.pt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load508, <2 x double> %wide.load510, <2 x double> %i.pr)
  %i.pu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load509, <2 x double> %wide.load511, <2 x double> %i.ps)
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %index507 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  store <2 x double> %i.pt, ptr %i.pv, align 8, !tbaa !28
  store <2 x double> %i.pu, ptr %i.pw, align 8, !tbaa !28
  %index.next516 = add nuw i64 %index507, 4       ; 2 uses
  %i.px = icmp eq i64 %index.next516, %n.vec505
  br i1 %i.px, label %middle.block517, label %vector.body506, !llvm.loop !128

middle.block517:                                  ; preds = %vector.body506
  br i1 %cmp.n518, label %v_sum_prods.exit.i, label %.lr.ph.i258.i.preheader608

.lr.ph.i258.i.preheader608:                       ; preds = %.lr.ph.i258.i.preheader, %middle.block517
  %indvars.iv.i259.i.ph = phi i64 [ %n.vec505, %middle.block517 ], [ 0, %.lr.ph.i258.i.preheader ] ; 8 uses
  %.neg672 = or disjoint i64 %indvars.iv.i259.i.ph, 1
  br i1 %lcmp.mod625.not, label %.lr.ph.i258.i.prol.loopexit, label %.lr.ph.i258.i.prol

.lr.ph.i258.i.prol:                               ; preds = %.lr.ph.i258.i.preheader608
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i259.i.ph
  %i.pz = load double, ptr %i.py, align 16, !tbaa !28
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv.i259.i.ph
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !28
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i259.i.ph
  %i.qd = load double, ptr %i.qc, align 16, !tbaa !28
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %indvars.iv.i259.i.ph
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !28
  %i.qg = fmul double %i.qd, %i.qf
  %i.qh = tail call double @llvm.fmuladd.f64(double %i.pz, double %i.qb, double %i.qg)
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %indvars.iv.i259.i.ph
  store double %i.qh, ptr %i.qi, align 8, !tbaa !28
  %indvars.iv.next.i260.i.prol = or disjoint i64 %indvars.iv.i259.i.ph, 1
  br label %.lr.ph.i258.i.prol.loopexit

.lr.ph.i258.i.prol.loopexit:                      ; preds = %.lr.ph.i258.i.prol, %.lr.ph.i258.i.preheader608
  %indvars.iv.i259.i.unr = phi i64 [ %indvars.iv.i259.i.ph, %.lr.ph.i258.i.preheader608 ], [ %indvars.iv.next.i260.i.prol, %.lr.ph.i258.i.prol ]
  %i.qj = icmp eq i64 %.pre-phi.i, %.neg672
  br i1 %i.qj, label %v_sum_prods.exit.i, label %.lr.ph.i258.i

.lr.ph.i258.i:                                    ; preds = %.lr.ph.i258.i.prol.loopexit, %.lr.ph.i258.i
  %indvars.iv.i259.i = phi i64 [ %indvars.iv.next.i260.i.1, %.lr.ph.i258.i ], [ %indvars.iv.i259.i.unr, %.lr.ph.i258.i.prol.loopexit ] ; 7 uses
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i259.i
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !28
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv.i259.i
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !28
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i259.i
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !28
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %indvars.iv.i259.i
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !28
  %i.qs = fmul double %i.qp, %i.qr
  %i.qt = tail call double @llvm.fmuladd.f64(double %i.ql, double %i.qn, double %i.qs)
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %indvars.iv.i259.i
  store double %i.qt, ptr %i.qu, align 8, !tbaa !28
  %indvars.iv.next.i260.i = add nuw nsw i64 %indvars.iv.i259.i, 1 ; 5 uses
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i260.i
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !28
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv.next.i260.i
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !28
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i260.i
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !28
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %indvars.iv.next.i260.i
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !28
  %i.rd = fmul double %i.ra, %i.rc
  %i.re = tail call double @llvm.fmuladd.f64(double %i.qw, double %i.qy, double %i.rd)
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %indvars.iv.next.i260.i
  store double %i.re, ptr %i.rf, align 8, !tbaa !28
  %indvars.iv.next.i260.i.1 = add nuw nsw i64 %indvars.iv.i259.i, 2 ; 2 uses
  %exitcond.not.i261.i.1 = icmp eq i64 %indvars.iv.next.i260.i.1, %.pre-phi.i
  br i1 %exitcond.not.i261.i.1, label %v_sum_prods.exit.i, label %.lr.ph.i258.i, !llvm.loop !129

bb.h:                                             ; preds = %bb.c
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jj ; 6 uses
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.rg, i64 %i.dk ; 4 uses
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.rg, i64 %i.dl ; 4 uses
  br i1 %i.v, label %.lr.ph.i265.i.preheader, label %v_sum_prods.exit.i

.lr.ph.i265.i.preheader:                          ; preds = %bb.h
  %brmerge689 = select i1 %min.iters.check525, i1 true, i1 %conflict.rdx523
  br i1 %brmerge689, label %.lr.ph.i265.i.preheader610, label %vector.body528

vector.body528:                                   ; preds = %.lr.ph.i265.i.preheader, %vector.body528
  %index529 = phi i64 [ %index.next538, %vector.body528 ], [ 0, %.lr.ph.i265.i.preheader ] ; 6 uses
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index529 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %wide.load530 = load <2 x double>, ptr %i.rj, align 16, !tbaa !28
  %wide.load531 = load <2 x double>, ptr %i.rk, align 16, !tbaa !28
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %index529 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  %wide.load532 = load <2 x double>, ptr %i.rl, align 8, !tbaa !28
  %wide.load533 = load <2 x double>, ptr %i.rm, align 8, !tbaa !28
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index529 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %wide.load534 = load <2 x double>, ptr %i.rn, align 16, !tbaa !28
  %wide.load535 = load <2 x double>, ptr %i.ro, align 16, !tbaa !28
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %index529 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %wide.load536 = load <2 x double>, ptr %i.rp, align 8, !tbaa !28
  %wide.load537 = load <2 x double>, ptr %i.rq, align 8, !tbaa !28
  %i.rr = fmul <2 x double> %wide.load534, %wide.load536
  %i.rs = fmul <2 x double> %wide.load535, %wide.load537
  %i.rt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load530, <2 x double> %wide.load532, <2 x double> %i.rr)
  %i.ru = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load531, <2 x double> %wide.load533, <2 x double> %i.rs)
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %index529 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  store <2 x double> %i.rt, ptr %i.rv, align 8, !tbaa !28
  store <2 x double> %i.ru, ptr %i.rw, align 8, !tbaa !28
  %index.next538 = add nuw i64 %index529, 4       ; 2 uses
  %i.rx = icmp eq i64 %index.next538, %n.vec527
  br i1 %i.rx, label %middle.block539, label %vector.body528, !llvm.loop !130

middle.block539:                                  ; preds = %vector.body528
  br i1 %cmp.n540, label %v_sum_prods.exit.i, label %.lr.ph.i265.i.preheader610

.lr.ph.i265.i.preheader610:                       ; preds = %.lr.ph.i265.i.preheader, %middle.block539
  %indvars.iv.i266.i.ph = phi i64 [ %n.vec527, %middle.block539 ], [ 0, %.lr.ph.i265.i.preheader ] ; 8 uses
  %.neg = or disjoint i64 %indvars.iv.i266.i.ph, 1
  br i1 %lcmp.mod622.not, label %.lr.ph.i265.i.prol.loopexit, label %.lr.ph.i265.i.prol

.lr.ph.i265.i.prol:                               ; preds = %.lr.ph.i265.i.preheader610
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i266.i.ph
  %i.rz = load double, ptr %i.ry, align 16, !tbaa !28
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %indvars.iv.i266.i.ph
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !28
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i266.i.ph
  %i.sd = load double, ptr %i.sc, align 16, !tbaa !28
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %indvars.iv.i266.i.ph
  %i.sf = load double, ptr %i.se, align 8, !tbaa !28
  %i.sg = fmul double %i.sd, %i.sf
  %i.sh = tail call double @llvm.fmuladd.f64(double %i.rz, double %i.sb, double %i.sg)
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %indvars.iv.i266.i.ph
  store double %i.sh, ptr %i.si, align 8, !tbaa !28
  %indvars.iv.next.i267.i.prol = or disjoint i64 %indvars.iv.i266.i.ph, 1
  br label %.lr.ph.i265.i.prol.loopexit

.lr.ph.i265.i.prol.loopexit:                      ; preds = %.lr.ph.i265.i.prol, %.lr.ph.i265.i.preheader610
  %indvars.iv.i266.i.unr = phi i64 [ %indvars.iv.i266.i.ph, %.lr.ph.i265.i.preheader610 ], [ %indvars.iv.next.i267.i.prol, %.lr.ph.i265.i.prol ]
  %i.sj = icmp eq i64 %.pre-phi.i, %.neg
  br i1 %i.sj, label %v_sum_prods.exit.i, label %.lr.ph.i265.i

.lr.ph.i265.i:                                    ; preds = %.lr.ph.i265.i.prol.loopexit, %.lr.ph.i265.i
  %indvars.iv.i266.i = phi i64 [ %indvars.iv.next.i267.i.1, %.lr.ph.i265.i ], [ %indvars.iv.i266.i.unr, %.lr.ph.i265.i.prol.loopexit ] ; 7 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i266.i
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !28
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %indvars.iv.i266.i
  %i.sn = load double, ptr %i.sm, align 8, !tbaa !28
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i266.i
  %i.sp = load double, ptr %i.so, align 8, !tbaa !28
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %indvars.iv.i266.i
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !28
  %i.ss = fmul double %i.sp, %i.sr
  %i.st = tail call double @llvm.fmuladd.f64(double %i.sl, double %i.sn, double %i.ss)
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %indvars.iv.i266.i
  store double %i.st, ptr %i.su, align 8, !tbaa !28
  %indvars.iv.next.i267.i = add nuw nsw i64 %indvars.iv.i266.i, 1 ; 5 uses
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i267.i
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !28
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %indvars.iv.next.i267.i
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !28
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i267.i
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !28
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %indvars.iv.next.i267.i
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !28
  %i.td = fmul double %i.ta, %i.tc
  %i.te = tail call double @llvm.fmuladd.f64(double %i.sw, double %i.sy, double %i.td)
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %indvars.iv.next.i267.i
  store double %i.te, ptr %i.tf, align 8, !tbaa !28
  %indvars.iv.next.i267.i.1 = add nuw nsw i64 %indvars.iv.i266.i, 2 ; 2 uses
  %exitcond.not.i268.i.1 = icmp eq i64 %indvars.iv.next.i267.i.1, %.pre-phi.i
  br i1 %exitcond.not.i268.i.1, label %v_sum_prods.exit.i, label %.lr.ph.i265.i, !llvm.loop !131

bb.i:                                             ; preds = %bb.c
  %i.tg = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jj ; 7 uses
  %i.th = getelementptr inbounds [8 x i8], ptr %i.tg, i64 %i.dl ; 6 uses
  br i1 %i.v, label %.lr.ph.i272.i.preheader, label %v_sum_prods.exit.i

.lr.ph.i272.i.preheader:                          ; preds = %bb.i
  br i1 %or.cond587, label %.lr.ph.i272.i.preheader612, label %vector.body548

vector.body548:                                   ; preds = %.lr.ph.i272.i.preheader, %vector.body548
  %index549 = phi i64 [ %index.next554, %vector.body548 ], [ 0, %.lr.ph.i272.i.preheader ] ; 4 uses
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index549 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  %wide.load550 = load <2 x double>, ptr %i.ti, align 16, !tbaa !28
  %wide.load551 = load <2 x double>, ptr %i.tj, align 16, !tbaa !28
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %index549 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %wide.load552 = load <2 x double>, ptr %i.tk, align 8, !tbaa !28
  %wide.load553 = load <2 x double>, ptr %i.tl, align 8, !tbaa !28
  %i.tm = fmul <2 x double> %wide.load550, %wide.load552
  %i.tn = fmul <2 x double> %wide.load551, %wide.load553
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %index549 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  store <2 x double> %i.tm, ptr %i.to, align 8, !tbaa !28
  store <2 x double> %i.tn, ptr %i.tp, align 8, !tbaa !28
  %index.next554 = add nuw i64 %index549, 4       ; 2 uses
  %i.tq = icmp eq i64 %index.next554, %n.vec547
  br i1 %i.tq, label %middle.block555, label %vector.body548, !llvm.loop !132

middle.block555:                                  ; preds = %vector.body548
  br i1 %cmp.n556, label %v_sum_prods.exit.i, label %.lr.ph.i272.i.preheader612

.lr.ph.i272.i.preheader612:                       ; preds = %.lr.ph.i272.i.preheader, %middle.block555
  %indvars.iv.i273.i.ph = phi i64 [ 0, %.lr.ph.i272.i.preheader ], [ %n.vec547, %middle.block555 ] ; 3 uses
  br i1 %lcmp.mod619.not, label %.lr.ph.i272.i.prol.loopexit, label %.lr.ph.i272.i.prol

.lr.ph.i272.i.prol:                               ; preds = %.lr.ph.i272.i.preheader612, %.lr.ph.i272.i.prol
  %indvars.iv.i273.i.prol = phi i64 [ %indvars.iv.next.i274.i.prol, %.lr.ph.i272.i.prol ], [ %indvars.iv.i273.i.ph, %.lr.ph.i272.i.preheader612 ] ; 4 uses
  %prol.iter620 = phi i64 [ %prol.iter620.next, %.lr.ph.i272.i.prol ], [ 0, %.lr.ph.i272.i.preheader612 ]
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i273.i.prol
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !28
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv.i273.i.prol
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !28
  %i.tv = fmul double %i.ts, %i.tu
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.i273.i.prol
  store double %i.tv, ptr %i.tw, align 8, !tbaa !28
  %indvars.iv.next.i274.i.prol = add nuw nsw i64 %indvars.iv.i273.i.prol, 1 ; 2 uses
  %prol.iter620.next = add i64 %prol.iter620, 1   ; 2 uses
  %prol.iter620.cmp.not = icmp eq i64 %prol.iter620.next, %xtraiter618
  br i1 %prol.iter620.cmp.not, label %.lr.ph.i272.i.prol.loopexit, label %.lr.ph.i272.i.prol, !llvm.loop !133

.lr.ph.i272.i.prol.loopexit:                      ; preds = %.lr.ph.i272.i.prol, %.lr.ph.i272.i.preheader612
  %indvars.iv.i273.i.unr = phi i64 [ %indvars.iv.i273.i.ph, %.lr.ph.i272.i.preheader612 ], [ %indvars.iv.next.i274.i.prol, %.lr.ph.i272.i.prol ]
  %i.tx = sub nsw i64 %indvars.iv.i273.i.ph, %.pre-phi.i
  %i.ty = icmp ugt i64 %i.tx, -4
  br i1 %i.ty, label %v_sum_prods.exit.i, label %.lr.ph.i272.i

.lr.ph.i272.i:                                    ; preds = %.lr.ph.i272.i.prol.loopexit, %.lr.ph.i272.i
  %indvars.iv.i273.i = phi i64 [ %indvars.iv.next.i274.i.3, %.lr.ph.i272.i ], [ %indvars.iv.i273.i.unr, %.lr.ph.i272.i.prol.loopexit ] ; 7 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i273.i
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !28
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv.i273.i
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !28
  %i.ud = fmul double %i.ua, %i.uc
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.i273.i
  store double %i.ud, ptr %i.ue, align 8, !tbaa !28
  %indvars.iv.next.i274.i = add nuw nsw i64 %indvars.iv.i273.i, 1 ; 3 uses
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i274.i
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !28
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv.next.i274.i
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !28
  %i.uj = fmul double %i.ug, %i.ui
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i274.i
  store double %i.uj, ptr %i.uk, align 8, !tbaa !28
  %indvars.iv.next.i274.i.1 = add nuw nsw i64 %indvars.iv.i273.i, 2 ; 3 uses
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i274.i.1
  %i.um = load double, ptr %i.ul, align 8, !tbaa !28
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv.next.i274.i.1
  %i.uo = load double, ptr %i.un, align 8, !tbaa !28
  %i.up = fmul double %i.um, %i.uo
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i274.i.1
  store double %i.up, ptr %i.uq, align 8, !tbaa !28
  %indvars.iv.next.i274.i.2 = add nuw nsw i64 %indvars.iv.i273.i, 3 ; 3 uses
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i274.i.2
  %i.us = load double, ptr %i.ur, align 8, !tbaa !28
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv.next.i274.i.2
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !28
  %i.uv = fmul double %i.us, %i.uu
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv.next.i274.i.2
  store double %i.uv, ptr %i.uw, align 8, !tbaa !28
  %indvars.iv.next.i274.i.3 = add nuw nsw i64 %indvars.iv.i273.i, 4 ; 2 uses
  %exitcond.not.i275.i.3 = icmp eq i64 %indvars.iv.next.i274.i.3, %.pre-phi.i
  br i1 %exitcond.not.i275.i.3, label %v_sum_prods.exit.i, label %.lr.ph.i272.i, !llvm.loop !134

bb.j:                                             ; preds = %bb.c
  %i.ux = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jj ; 3 uses
  %i.uy = getelementptr inbounds [8 x i8], ptr %i.ux, i64 %i.dk ; 2 uses
  br i1 %i.v, label %.lr.ph.i279.i.preheader, label %v_sum_prods.exit.i

.lr.ph.i279.i.preheader:                          ; preds = %bb.j
  br i1 %min.iters.check559, label %.lr.ph.i279.i.preheader614, label %vector.body562

vector.body562:                                   ; preds = %.lr.ph.i279.i.preheader, %vector.body562
  %index563 = phi i64 [ %index.next568, %vector.body562 ], [ 0, %.lr.ph.i279.i.preheader ] ; 4 uses
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index563 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %wide.load564 = load <2 x double>, ptr %i.uz, align 16, !tbaa !28
  %wide.load565 = load <2 x double>, ptr %i.va, align 16, !tbaa !28
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %index563 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %wide.load566 = load <2 x double>, ptr %i.vb, align 8, !tbaa !28
  %wide.load567 = load <2 x double>, ptr %i.vc, align 8, !tbaa !28
  %i.vd = fmul <2 x double> %wide.load564, %wide.load566
  %i.ve = fmul <2 x double> %wide.load565, %wide.load567
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %index563 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  store <2 x double> %i.vd, ptr %i.vf, align 8, !tbaa !28
  store <2 x double> %i.ve, ptr %i.vg, align 8, !tbaa !28
  %index.next568 = add nuw i64 %index563, 4       ; 2 uses
  %i.vh = icmp eq i64 %index.next568, %n.vec561
  br i1 %i.vh, label %middle.block569, label %vector.body562, !llvm.loop !135

middle.block569:                                  ; preds = %vector.body562
  br i1 %cmp.n570, label %v_sum_prods.exit.i, label %.lr.ph.i279.i.preheader614

.lr.ph.i279.i.preheader614:                       ; preds = %.lr.ph.i279.i.preheader, %middle.block569
  %indvars.iv.i280.i.ph = phi i64 [ 0, %.lr.ph.i279.i.preheader ], [ %n.vec561, %middle.block569 ]
  br label %.lr.ph.i279.i

.lr.ph.i279.i:                                    ; preds = %.lr.ph.i279.i.preheader614, %.lr.ph.i279.i
  %indvars.iv.i280.i = phi i64 [ %indvars.iv.next.i281.i, %.lr.ph.i279.i ], [ %indvars.iv.i280.i.ph, %.lr.ph.i279.i.preheader614 ] ; 4 uses
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i280.i
  %i.vj = load double, ptr %i.vi, align 8, !tbaa !28
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %indvars.iv.i280.i
  %i.vl = load double, ptr %i.vk, align 8, !tbaa !28
  %i.vm = fmul double %i.vj, %i.vl
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %indvars.iv.i280.i
  store double %i.vm, ptr %i.vn, align 8, !tbaa !28
  %indvars.iv.next.i281.i = add nuw nsw i64 %indvars.iv.i280.i, 1 ; 2 uses
  %exitcond.not.i282.i = icmp eq i64 %indvars.iv.next.i281.i, %.pre-phi.i
  br i1 %exitcond.not.i282.i, label %v_sum_prods.exit.i, label %.lr.ph.i279.i, !llvm.loop !136

bb.k:                                             ; preds = %bb.c
  %i.vo = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jj ; 3 uses
  %i.vp = getelementptr inbounds [8 x i8], ptr %i.vo, i64 %i.dk ; 2 uses
  br i1 %i.v, label %.lr.ph.i286.i.preheader, label %v_sum_prods.exit.i

.lr.ph.i286.i.preheader:                          ; preds = %bb.k
  br i1 %min.iters.check573, label %.lr.ph.i286.i.preheader616, label %vector.body576

vector.body576:                                   ; preds = %.lr.ph.i286.i.preheader, %vector.body576
  %index577 = phi i64 [ %index.next582, %vector.body576 ], [ 0, %.lr.ph.i286.i.preheader ] ; 4 uses
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index577 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 16
  %wide.load578 = load <2 x double>, ptr %i.vq, align 16, !tbaa !28
  %wide.load579 = load <2 x double>, ptr %i.vr, align 16, !tbaa !28
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %index577 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %wide.load580 = load <2 x double>, ptr %i.vs, align 8, !tbaa !28
  %wide.load581 = load <2 x double>, ptr %i.vt, align 8, !tbaa !28
  %i.vu = fmul <2 x double> %wide.load578, %wide.load580
  %i.vv = fmul <2 x double> %wide.load579, %wide.load581
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %index577 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  store <2 x double> %i.vu, ptr %i.vw, align 8, !tbaa !28
  store <2 x double> %i.vv, ptr %i.vx, align 8, !tbaa !28
  %index.next582 = add nuw i64 %index577, 4       ; 2 uses
  %i.vy = icmp eq i64 %index.next582, %n.vec575
  br i1 %i.vy, label %middle.block583, label %vector.body576, !llvm.loop !137

middle.block583:                                  ; preds = %vector.body576
  br i1 %cmp.n584, label %v_sum_prods.exit.i, label %.lr.ph.i286.i.preheader616

.lr.ph.i286.i.preheader616:                       ; preds = %.lr.ph.i286.i.preheader, %middle.block583
  %indvars.iv.i287.i.ph = phi i64 [ 0, %.lr.ph.i286.i.preheader ], [ %n.vec575, %middle.block583 ]
  br label %.lr.ph.i286.i

.lr.ph.i286.i:                                    ; preds = %.lr.ph.i286.i.preheader616, %.lr.ph.i286.i
  %indvars.iv.i287.i = phi i64 [ %indvars.iv.next.i288.i, %.lr.ph.i286.i ], [ %indvars.iv.i287.i.ph, %.lr.ph.i286.i.preheader616 ] ; 4 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i287.i
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !28
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %indvars.iv.i287.i
  %i.wc = load double, ptr %i.wb, align 8, !tbaa !28
  %i.wd = fmul double %i.wa, %i.wc
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %indvars.iv.i287.i
  store double %i.wd, ptr %i.we, align 8, !tbaa !28
  %indvars.iv.next.i288.i = add nuw nsw i64 %indvars.iv.i287.i, 1 ; 2 uses
  %exitcond.not.i289.i = icmp eq i64 %indvars.iv.next.i288.i, %.pre-phi.i
  br i1 %exitcond.not.i289.i, label %v_sum_prods.exit.i, label %.lr.ph.i286.i, !llvm.loop !138

bb.l:                                             ; preds = %bb.c
  br i1 %i.v, label %.lr.ph.preheader.i291.i, label %v_sum_prods.exit.i

.lr.ph.preheader.i291.i:                          ; preds = %bb.l
  %i.wf = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.jj
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.wf, i8 0, i64 %i.dj, i1 false), !tbaa !28
  br label %v_sum_prods.exit.i

default.unreachable:                              ; preds = %bb.c
  unreachable

v_sum_prods.exit.i:                               ; preds = %.lr.ph.i286.i, %.lr.ph.i279.i, %.lr.ph.i272.i.prol.loopexit, %.lr.ph.i272.i, %.lr.ph.i265.i.prol.loopexit, %.lr.ph.i265.i, %.lr.ph.i258.i.prol.loopexit, %.lr.ph.i258.i, %.lr.ph.i251.i.prol.loopexit, %.lr.ph.i251.i, %.lr.ph.i244.i.prol.loopexit, %.lr.ph.i244.i, %.lr.ph.i238.i.prol.loopexit, %.lr.ph.i238.i, %middle.block583, %middle.block569, %middle.block555, %middle.block539, %middle.block517, %middle.block495, %middle.block479, %middle.block457, %.lr.ph.preheader.i291.i, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv.next447.i = add nuw nsw i64 %indvars.iv446.i, 1 ; 2 uses
  %exitcond450.not.i = icmp eq i64 %indvars.iv.next447.i, %wide.trip.count449.i
  br i1 %exitcond450.not.i, label %._crit_edge400.i, label %bb.c

._crit_edge400.i:                                 ; preds = %v_sum_prods.exit.i
  %indvars.iv.next452.i = add nuw nsw i64 %indvars.iv451.i, 1 ; 2 uses
  %exitcond455.not.i = icmp eq i64 %indvars.iv.next452.i, %wide.trip.count454.i
  br i1 %exitcond455.not.i, label %.loopexit.i, label %.lr.ph399.i

.loopexit.i:                                      ; preds = %._crit_edge400.i, %bb.b
  br i1 %brmerge420.i, label %._crit_edge410.split.i, label %.lr.ph405.i

.lr.ph405.i:                                      ; preds = %.loopexit.i, %._crit_edge406.i
  %indvars.iv461.i = phi i64 [ %indvars.iv.next462.i, %._crit_edge406.i ], [ 0, %.loopexit.i ] ; 16 uses
  %i.wg = mul i64 %i.gz, %indvars.iv461.i         ; 4 uses
  %scevgep414 = getelementptr i8, ptr %i.h, i64 %i.wg
  %scevgep415 = getelementptr i8, ptr %i.hn, i64 %i.wg
  %scevgep416 = getelementptr i8, ptr %12, i64 %i.wg
  %scevgep417 = getelementptr i8, ptr %i.hp, i64 %i.wg
  %i.wh = mul i64 %i.gs, %indvars.iv461.i         ; 4 uses
  %scevgep388 = getelementptr i8, ptr %i.h, i64 %i.wh
  %scevgep389 = getelementptr i8, ptr %i.hq, i64 %i.wh
  %i.wi = sub i64 %i.wh, %i.hr
  %scevgep390 = getelementptr i8, ptr %i.h, i64 %i.wi
  %scevgep391 = getelementptr i8, ptr %i.hs, i64 %i.wh
  %i.wj = mul i64 %i.gl, %indvars.iv461.i         ; 4 uses
  %scevgep362 = getelementptr i8, ptr %i.h, i64 %i.wj
  %scevgep363 = getelementptr i8, ptr %i.ht, i64 %i.wj
  %i.wk = sub i64 %i.wj, %i.hu
  %scevgep364 = getelementptr i8, ptr %i.h, i64 %i.wk
  %scevgep365 = getelementptr i8, ptr %i.hv, i64 %i.wj
  %i.wl = mul i64 %i.gc, %indvars.iv461.i         ; 4 uses
  %scevgep336 = getelementptr i8, ptr %i.h, i64 %i.wl
  %scevgep337 = getelementptr i8, ptr %i.hw, i64 %i.wl
  %i.wm = sub i64 %i.wl, %i.hx
  %scevgep338 = getelementptr i8, ptr %i.h, i64 %i.wm
  %scevgep339 = getelementptr i8, ptr %i.hz, i64 %i.wl
  %i.wn = mul i64 %i.fv, %indvars.iv461.i         ; 4 uses
  %scevgep310 = getelementptr i8, ptr %i.h, i64 %i.wn
  %scevgep311 = getelementptr i8, ptr %i.ia, i64 %i.wn
  %i.wo = sub i64 %i.wn, %i.ib
  %scevgep312 = getelementptr i8, ptr %i.h, i64 %i.wo
  %scevgep313 = getelementptr i8, ptr %i.ic, i64 %i.wn
  %i.wp = mul i64 %i.fm, %indvars.iv461.i         ; 4 uses
  %scevgep284 = getelementptr i8, ptr %i.h, i64 %i.wp
  %scevgep285 = getelementptr i8, ptr %i.id, i64 %i.wp
  %i.wq = sub i64 %i.wp, %i.ie
  %scevgep286 = getelementptr i8, ptr %i.h, i64 %i.wq
  %scevgep287 = getelementptr i8, ptr %i.ig, i64 %i.wp
  %i.wr = mul i64 %i.ff, %indvars.iv461.i         ; 4 uses
  %scevgep258 = getelementptr i8, ptr %i.h, i64 %i.wr
  %scevgep259 = getelementptr i8, ptr %i.ih, i64 %i.wr
  %i.ws = sub i64 %i.wr, %i.ii
  %scevgep260 = getelementptr i8, ptr %i.h, i64 %i.ws
  %scevgep261 = getelementptr i8, ptr %i.ij, i64 %i.wr
  %i.wt = mul i64 %i.ey, %indvars.iv461.i         ; 4 uses
  %scevgep232 = getelementptr i8, ptr %i.h, i64 %i.wt
  %scevgep233 = getelementptr i8, ptr %i.ik, i64 %i.wt
  %i.wu = sub i64 %i.wt, %i.il
  %scevgep234 = getelementptr i8, ptr %i.h, i64 %i.wu
  %scevgep235 = getelementptr i8, ptr %i.im, i64 %i.wt
  %i.wv = mul i64 %i.ep, %indvars.iv461.i         ; 4 uses
  %scevgep206 = getelementptr i8, ptr %i.h, i64 %i.wv
  %scevgep207 = getelementptr i8, ptr %i.in, i64 %i.wv
  %i.ww = sub i64 %i.wv, %i.io
  %scevgep208 = getelementptr i8, ptr %i.h, i64 %i.ww
  %scevgep209 = getelementptr i8, ptr %i.iq, i64 %i.wv
  %i.wx = mul i64 %i.eg, %indvars.iv461.i         ; 4 uses
  %scevgep180 = getelementptr i8, ptr %i.h, i64 %i.wx
  %scevgep181 = getelementptr i8, ptr %i.ir, i64 %i.wx
  %i.wy = sub i64 %i.wx, %i.is
  %scevgep182 = getelementptr i8, ptr %i.h, i64 %i.wy
  %scevgep183 = getelementptr i8, ptr %i.iu, i64 %i.wx
  %i.wz = mul i64 %i.dx, %indvars.iv461.i         ; 4 uses
  %scevgep154 = getelementptr i8, ptr %i.h, i64 %i.wz
  %scevgep155 = getelementptr i8, ptr %i.iv, i64 %i.wz
  %i.xa = sub i64 %i.wz, %i.iw
  %scevgep156 = getelementptr i8, ptr %i.h, i64 %i.xa
  %scevgep157 = getelementptr i8, ptr %i.iy, i64 %i.wz
  %i.xb = mul i64 %i.dq, %indvars.iv461.i         ; 4 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.xb
  %scevgep133 = getelementptr i8, ptr %i.iz, i64 %i.xb
  %i.xc = sub i64 %i.xb, %i.ja
  %scevgep134 = getelementptr i8, ptr %i.h, i64 %i.xc
  %scevgep135 = getelementptr i8, ptr %i.jb, i64 %i.xb
  %i.xd = mul nsw i64 %indvars.iv461.i, %i.dl
  %i.xe = icmp eq i64 %indvars.iv461.i, 0
  %i.xf = icmp eq i64 %indvars.iv461.i, %i.dp
  %i.xg = select i1 %i.xf, i32 6, i32 3
  %i.xh = select i1 %i.xe, i32 0, i32 %i.xg
  %bound0418 = icmp ult ptr %scevgep414, %scevgep417
  %bound1419 = icmp ult ptr %scevgep416, %scevgep415
  %found.conflict420 = and i1 %bound0418, %bound1419
  %bound0392 = icmp ult ptr %scevgep388, %scevgep391
  %bound1393 = icmp ult ptr %scevgep390, %scevgep389
  %found.conflict394 = and i1 %bound0392, %bound1393
  %bound0366 = icmp ult ptr %scevgep362, %scevgep365
  %bound1367 = icmp ult ptr %scevgep364, %scevgep363
  %found.conflict368 = and i1 %bound0366, %bound1367
  %bound0340 = icmp ult ptr %scevgep336, %scevgep339
  %bound1341 = icmp ult ptr %scevgep338, %scevgep337
  %found.conflict342 = and i1 %bound0340, %bound1341
  %bound0314 = icmp ult ptr %scevgep310, %scevgep313
  %bound1315 = icmp ult ptr %scevgep312, %scevgep311
  %found.conflict316 = and i1 %bound0314, %bound1315
  %bound0288 = icmp ult ptr %scevgep284, %scevgep287
  %bound1289 = icmp ult ptr %scevgep286, %scevgep285
  %found.conflict290 = and i1 %bound0288, %bound1289
  %bound0262 = icmp ult ptr %scevgep258, %scevgep261
  %bound1263 = icmp ult ptr %scevgep260, %scevgep259
  %found.conflict264 = and i1 %bound0262, %bound1263
  %bound0236 = icmp ult ptr %scevgep232, %scevgep235
  %bound1237 = icmp ult ptr %scevgep234, %scevgep233
  %found.conflict238 = and i1 %bound0236, %bound1237
  %bound0210 = icmp ult ptr %scevgep206, %scevgep209
  %bound1211 = icmp ult ptr %scevgep208, %scevgep207
  %found.conflict212 = and i1 %bound0210, %bound1211
  %bound0184 = icmp ult ptr %scevgep180, %scevgep183
  %bound1185 = icmp ult ptr %scevgep182, %scevgep181
  %found.conflict186 = and i1 %bound0184, %bound1185
  %bound0158 = icmp ult ptr %scevgep154, %scevgep157
  %bound1159 = icmp ult ptr %scevgep156, %scevgep155
  %found.conflict160 = and i1 %bound0158, %bound1159
  %bound0 = icmp ult ptr %scevgep, %scevgep135
  %bound1 = icmp ult ptr %scevgep134, %scevgep133
  %found.conflict = and i1 %bound0, %bound1
  br label %bb.m

bb.m:                                             ; preds = %v_inc_by_prod.exit.i, %.lr.ph405.i
  %indvars.iv456.i = phi i64 [ 0, %.lr.ph405.i ], [ %indvars.iv.next457.i, %v_inc_by_prod.exit.i ] ; 4 uses
  %i.xi = mul nsw i64 %indvars.iv456.i, %i.dk
  %i.xj = add nsw i64 %i.xi, %i.xd                ; 8 uses
  %i.xk = icmp eq i64 %indvars.iv456.i, 0
  %i.xl = icmp eq i64 %indvars.iv456.i, %i.do
  %i.xm = select i1 %i.xl, i32 2, i32 1
  %i.xn = select i1 %i.xk, i32 0, i32 %i.xm
  %i.xo = add nuw nsw i32 %i.xn, %i.xh
  switch i32 %i.xo, label %v_inc_by_prod.exit.i [
    i32 8, label %bb.u
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
    i32 4, label %bb.q
    i32 5, label %bb.r
    i32 6, label %bb.s
    i32 7, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.xp = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.xj ; 5 uses
  %i.xq = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.dm ; 4 uses
  br i1 %i.v, label %.lr.ph.i294.i.preheader, label %v_inc_by_prod.exit.i

.lr.ph.i294.i.preheader:                          ; preds = %bb.n
  %brmerge690 = select i1 %min.iters.check190, i1 true, i1 %found.conflict186
  br i1 %brmerge690, label %.lr.ph.i294.i.preheader589, label %vector.body193

vector.body193:                                   ; preds = %.lr.ph.i294.i.preheader, %vector.body193
  %index194 = phi i64 [ %index.next201, %vector.body193 ], [ 0, %.lr.ph.i294.i.preheader ] ; 4 uses
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index194 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 16
  %wide.load195 = load <2 x double>, ptr %i.xr, align 16, !tbaa !28
  %wide.load196 = load <2 x double>, ptr %i.xs, align 16, !tbaa !28
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %index194 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %wide.load197 = load <2 x double>, ptr %i.xt, align 8, !tbaa !28, !alias.scope !139
  %wide.load198 = load <2 x double>, ptr %i.xu, align 8, !tbaa !28, !alias.scope !139
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %index194 ; 3 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 16 ; 2 uses
  %wide.load199 = load <2 x double>, ptr %i.xv, align 8, !tbaa !28, !alias.scope !142, !noalias !139
  %wide.load200 = load <2 x double>, ptr %i.xw, align 8, !tbaa !28, !alias.scope !142, !noalias !139
  %i.xx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load195, <2 x double> %wide.load197, <2 x double> %wide.load199)
  %i.xy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load196, <2 x double> %wide.load198, <2 x double> %wide.load200)
  store <2 x double> %i.xx, ptr %i.xv, align 8, !tbaa !28, !alias.scope !142, !noalias !139
  store <2 x double> %i.xy, ptr %i.xw, align 8, !tbaa !28, !alias.scope !142, !noalias !139
  %index.next201 = add nuw i64 %index194, 4       ; 2 uses
  %i.xz = icmp eq i64 %index.next201, %n.vec192
  br i1 %i.xz, label %middle.block202, label %vector.body193, !llvm.loop !144

middle.block202:                                  ; preds = %vector.body193
  br i1 %cmp.n203, label %v_inc_by_prod.exit.i, label %.lr.ph.i294.i.preheader589

.lr.ph.i294.i.preheader589:                       ; preds = %.lr.ph.i294.i.preheader, %middle.block202
  %indvars.iv.i295.i.ph = phi i64 [ %n.vec192, %middle.block202 ], [ 0, %.lr.ph.i294.i.preheader ] ; 6 uses
  %.neg684 = or disjoint i64 %indvars.iv.i295.i.ph, 1
  br i1 %lcmp.mod664.not, label %.lr.ph.i294.i.prol.loopexit, label %.lr.ph.i294.i.prol

.lr.ph.i294.i.prol:                               ; preds = %.lr.ph.i294.i.preheader589
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i295.i.ph
  %i.yb = load double, ptr %i.ya, align 16, !tbaa !28
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %indvars.iv.i295.i.ph
  %i.yd = load double, ptr %i.yc, align 8, !tbaa !28
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %indvars.iv.i295.i.ph ; 2 uses
  %i.yf = load double, ptr %i.ye, align 8, !tbaa !28
  %i.yg = tail call double @llvm.fmuladd.f64(double %i.yb, double %i.yd, double %i.yf)
  store double %i.yg, ptr %i.ye, align 8, !tbaa !28
  %indvars.iv.next.i296.i.prol = or disjoint i64 %indvars.iv.i295.i.ph, 1
  br label %.lr.ph.i294.i.prol.loopexit

.lr.ph.i294.i.prol.loopexit:                      ; preds = %.lr.ph.i294.i.prol, %.lr.ph.i294.i.preheader589
  %indvars.iv.i295.i.unr = phi i64 [ %indvars.iv.i295.i.ph, %.lr.ph.i294.i.preheader589 ], [ %indvars.iv.next.i296.i.prol, %.lr.ph.i294.i.prol ]
  %i.yh = icmp eq i64 %.pre-phi.i, %.neg684
  br i1 %i.yh, label %v_inc_by_prod.exit.i, label %.lr.ph.i294.i

.lr.ph.i294.i:                                    ; preds = %.lr.ph.i294.i.prol.loopexit, %.lr.ph.i294.i
  %indvars.iv.i295.i = phi i64 [ %indvars.iv.next.i296.i.1, %.lr.ph.i294.i ], [ %indvars.iv.i295.i.unr, %.lr.ph.i294.i.prol.loopexit ] ; 5 uses
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i295.i
  %i.yj = load double, ptr %i.yi, align 8, !tbaa !28
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %indvars.iv.i295.i
  %i.yl = load double, ptr %i.yk, align 8, !tbaa !28
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %indvars.iv.i295.i ; 2 uses
  %i.yn = load double, ptr %i.ym, align 8, !tbaa !28
  %i.yo = tail call double @llvm.fmuladd.f64(double %i.yj, double %i.yl, double %i.yn)
  store double %i.yo, ptr %i.ym, align 8, !tbaa !28
  %indvars.iv.next.i296.i = add nuw nsw i64 %indvars.iv.i295.i, 1 ; 3 uses
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i296.i
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !28
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %indvars.iv.next.i296.i
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !28
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %indvars.iv.next.i296.i ; 2 uses
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !28
  %i.yv = tail call double @llvm.fmuladd.f64(double %i.yq, double %i.ys, double %i.yu)
  store double %i.yv, ptr %i.yt, align 8, !tbaa !28
  %indvars.iv.next.i296.i.1 = add nuw nsw i64 %indvars.iv.i295.i, 2 ; 2 uses
  %exitcond.not.i297.i.1 = icmp eq i64 %indvars.iv.next.i296.i.1, %.pre-phi.i
  br i1 %exitcond.not.i297.i.1, label %v_inc_by_prod.exit.i, label %.lr.ph.i294.i, !llvm.loop !145

bb.o:                                             ; preds = %bb.m
  %i.yw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.xj ; 5 uses
  %i.yx = getelementptr inbounds [8 x i8], ptr %i.yw, i64 %i.dm ; 4 uses
  br i1 %i.v, label %.lr.ph.i300.i.preheader, label %v_inc_by_prod.exit.i

.lr.ph.i300.i.preheader:                          ; preds = %bb.o
  %brmerge691 = select i1 %min.iters.check216, i1 true, i1 %found.conflict212
  br i1 %brmerge691, label %.lr.ph.i300.i.preheader591, label %vector.body219

vector.body219:                                   ; preds = %.lr.ph.i300.i.preheader, %vector.body219
  %index220 = phi i64 [ %index.next227, %vector.body219 ], [ 0, %.lr.ph.i300.i.preheader ] ; 4 uses
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index220 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  %wide.load221 = load <2 x double>, ptr %i.yy, align 16, !tbaa !28
  %wide.load222 = load <2 x double>, ptr %i.yz, align 16, !tbaa !28
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.yx, i64 %index220 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 16
  %wide.load223 = load <2 x double>, ptr %i.za, align 8, !tbaa !28, !alias.scope !146
  %wide.load224 = load <2 x double>, ptr %i.zb, align 8, !tbaa !28, !alias.scope !146
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %index220 ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16 ; 2 uses
  %wide.load225 = load <2 x double>, ptr %i.zc, align 8, !tbaa !28, !alias.scope !149, !noalias !146
  %wide.load226 = load <2 x double>, ptr %i.zd, align 8, !tbaa !28, !alias.scope !149, !noalias !146
  %i.ze = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load221, <2 x double> %wide.load223, <2 x double> %wide.load225)
  %i.zf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load222, <2 x double> %wide.load224, <2 x double> %wide.load226)
  store <2 x double> %i.ze, ptr %i.zc, align 8, !tbaa !28, !alias.scope !149, !noalias !146
  store <2 x double> %i.zf, ptr %i.zd, align 8, !tbaa !28, !alias.scope !149, !noalias !146
  %index.next227 = add nuw i64 %index220, 4       ; 2 uses
  %i.zg = icmp eq i64 %index.next227, %n.vec218
  br i1 %i.zg, label %middle.block228, label %vector.body219, !llvm.loop !151

middle.block228:                                  ; preds = %vector.body219
  br i1 %cmp.n229, label %v_inc_by_prod.exit.i, label %.lr.ph.i300.i.preheader591

.lr.ph.i300.i.preheader591:                       ; preds = %.lr.ph.i300.i.preheader, %middle.block228
  %indvars.iv.i301.i.ph = phi i64 [ %n.vec218, %middle.block228 ], [ 0, %.lr.ph.i300.i.preheader ] ; 6 uses
  %.neg683 = or disjoint i64 %indvars.iv.i301.i.ph, 1
  br i1 %lcmp.mod661.not, label %.lr.ph.i300.i.prol.loopexit, label %.lr.ph.i300.i.prol

.lr.ph.i300.i.prol:                               ; preds = %.lr.ph.i300.i.preheader591
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i301.i.ph
  %i.zi = load double, ptr %i.zh, align 16, !tbaa !28
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.yx, i64 %indvars.iv.i301.i.ph
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !28
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %indvars.iv.i301.i.ph ; 2 uses
  %i.zm = load double, ptr %i.zl, align 8, !tbaa !28
  %i.zn = tail call double @llvm.fmuladd.f64(double %i.zi, double %i.zk, double %i.zm)
  store double %i.zn, ptr %i.zl, align 8, !tbaa !28
  %indvars.iv.next.i302.i.prol = or disjoint i64 %indvars.iv.i301.i.ph, 1
  br label %.lr.ph.i300.i.prol.loopexit

.lr.ph.i300.i.prol.loopexit:                      ; preds = %.lr.ph.i300.i.prol, %.lr.ph.i300.i.preheader591
  %indvars.iv.i301.i.unr = phi i64 [ %indvars.iv.i301.i.ph, %.lr.ph.i300.i.preheader591 ], [ %indvars.iv.next.i302.i.prol, %.lr.ph.i300.i.prol ]
  %i.zo = icmp eq i64 %.pre-phi.i, %.neg683
  br i1 %i.zo, label %v_inc_by_prod.exit.i, label %.lr.ph.i300.i

.lr.ph.i300.i:                                    ; preds = %.lr.ph.i300.i.prol.loopexit, %.lr.ph.i300.i
  %indvars.iv.i301.i = phi i64 [ %indvars.iv.next.i302.i.1, %.lr.ph.i300.i ], [ %indvars.iv.i301.i.unr, %.lr.ph.i300.i.prol.loopexit ] ; 5 uses
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i301.i
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !28
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.yx, i64 %indvars.iv.i301.i
  %i.zs = load double, ptr %i.zr, align 8, !tbaa !28
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %indvars.iv.i301.i ; 2 uses
  %i.zu = load double, ptr %i.zt, align 8, !tbaa !28
  %i.zv = tail call double @llvm.fmuladd.f64(double %i.zq, double %i.zs, double %i.zu)
  store double %i.zv, ptr %i.zt, align 8, !tbaa !28
  %indvars.iv.next.i302.i = add nuw nsw i64 %indvars.iv.i301.i, 1 ; 3 uses
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i302.i
  %i.zx = load double, ptr %i.zw, align 8, !tbaa !28
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.yx, i64 %indvars.iv.next.i302.i
  %i.zz = load double, ptr %i.zy, align 8, !tbaa !28
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %indvars.iv.next.i302.i ; 2 uses
  %i.aab = load double, ptr %i.aaa, align 8, !tbaa !28
  %i.aac = tail call double @llvm.fmuladd.f64(double %i.zx, double %i.zz, double %i.aab)
  store double %i.aac, ptr %i.aaa, align 8, !tbaa !28
  %indvars.iv.next.i302.i.1 = add nuw nsw i64 %indvars.iv.i301.i, 2 ; 2 uses
  %exitcond.not.i303.i.1 = icmp eq i64 %indvars.iv.next.i302.i.1, %.pre-phi.i
  br i1 %exitcond.not.i303.i.1, label %v_inc_by_prod.exit.i, label %.lr.ph.i300.i, !llvm.loop !152

bb.p:                                             ; preds = %bb.m
  %i.aad = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.xj ; 5 uses
  %i.aae = getelementptr inbounds [8 x i8], ptr %i.aad, i64 %i.dn ; 4 uses
  br i1 %i.v, label %.lr.ph.i307.i.preheader, label %v_inc_by_prod.exit.i

.lr.ph.i307.i.preheader:                          ; preds = %bb.p
  %brmerge692 = select i1 %min.iters.check242, i1 true, i1 %found.conflict238
  br i1 %brmerge692, label %.lr.ph.i307.i.preheader593, label %vector.body245

vector.body245:                                   ; preds = %.lr.ph.i307.i.preheader, %vector.body245
  %index246 = phi i64 [ %index.next253, %vector.body245 ], [ 0, %.lr.ph.i307.i.preheader ] ; 4 uses
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index246 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16
  %wide.load247 = load <2 x double>, ptr %i.aaf, align 16, !tbaa !28
  %wide.load248 = load <2 x double>, ptr %i.aag, align 16, !tbaa !28
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.aae, i64 %index246 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %wide.load249 = load <2 x double>, ptr %i.aah, align 8, !tbaa !28, !alias.scope !153
  %wide.load250 = load <2 x double>, ptr %i.aai, align 8, !tbaa !28, !alias.scope !153
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.aad, i64 %index246 ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16 ; 2 uses
  %wide.load251 = load <2 x double>, ptr %i.aaj, align 8, !tbaa !28, !alias.scope !156, !noalias !153
  %wide.load252 = load <2 x double>, ptr %i.aak, align 8, !tbaa !28, !alias.scope !156, !noalias !153
  %i.aal = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load247, <2 x double> %wide.load249, <2 x double> %wide.load251)
  %i.aam = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load248, <2 x double> %wide.load250, <2 x double> %wide.load252)
end_hunk_0
