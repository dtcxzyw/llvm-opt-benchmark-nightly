Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsFoodWeb_ASAp_kry?download=true
inline.NumInlined: 58
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 46
begin_hunk_0_@GSIter:bb.a
  %wide.load504 = load <2 x double>, ptr %i.w, align 8, !tbaa !22 ; 2 uses
  %i.x = fadd <2 x double> %wide.load, %wide.load504
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.x, <2 x double> splat (double 1.000000e+00))
  %i.z = fdiv <2 x double> splat (double 1.000000e+00), %i.y ; 3 uses
  %i.aa = fmul <2 x double> %broadcast.splat503, %wide.load
  %i.ab = fmul <2 x double> %i.aa, %i.z           ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  store <2 x double> %i.ab, ptr %i.ac, align 16, !tbaa !22
  %i.ad = fmul <2 x double> %i.ab, splat (double 2.000000e+00)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index
  store <2 x double> %i.ad, ptr %i.ae, align 16, !tbaa !22
  %i.af = fmul <2 x double> %broadcast.splat503, %wide.load504
  %i.ag = fmul <2 x double> %i.af, %i.z           ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index
  store <2 x double> %i.ag, ptr %i.ah, align 16, !tbaa !22
  %i.ai = fmul <2 x double> %i.ag, splat (double 2.000000e+00)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  store <2 x double> %i.ai, ptr %i.aj, align 16, !tbaa !22
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index
  store <2 x double> %i.z, ptr %i.ak, align 16, !tbaa !22
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader389, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader389:                                    ; preds = %scalar.ph, %middle.block, %bb.a
  %i.am = icmp sgt i32 %i.o, 0
  br i1 %i.am, label %.lr.ph394, label %.preheader389.._crit_edge395.split_crit_edge

.preheader389.._crit_edge395.split_crit_edge:     ; preds = %.preheader389
  %.pre = zext nneg i32 %i.k to i64
  br label %._crit_edge395.split

.lr.ph394:                                        ; preds = %.preheader389
  %i.an = icmp slt i32 %i.m, 1
  %i.ao = icmp slt i32 %i.k, 1
  %wide.trip.count.i = zext i32 %i.k to i64       ; 5 uses
  %brmerge = or i1 %i.an, %i.ao
  br i1 %brmerge, label %._crit_edge395.split, label %.lr.ph392.preheader

.lr.ph392.preheader:                              ; preds = %.lr.ph394
  %i.ap = zext nneg i32 %i.k to i64               ; 3 uses
  %i.aq = sext i32 %i.q to i64
  %wide.trip.count444 = zext nneg i32 %i.o to i64
  %wide.trip.count439 = zext nneg i32 %i.m to i64
  %min.iters.check506 = icmp ult i32 %i.k, 4
  %i.ar = sub i64 %i.i, %i.g
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %n.vec508 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n517 = icmp eq i64 %n.vec508, %wide.trip.count.i
  %xtraiter = and i64 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph392

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 8 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.at = load double, ptr %i.as, align 8, !tbaa !22 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.av = load double, ptr %i.au, align 8, !tbaa !22 ; 2 uses
  %i.aw = fadd double %i.at, %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.u, double %i.aw, double 1.000000e+00)
  %i.ay = fdiv double 1.000000e+00, %i.ax         ; 3 uses
  %i.az = fmul double %0, %i.at
  %i.ba = fmul double %i.az, %i.ay                ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store double %i.ba, ptr %i.bb, align 8, !tbaa !22
  %i.bc = fmul double %i.ba, 2.000000e+00
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store double %i.bc, ptr %i.bd, align 8, !tbaa !22
  %i.be = fmul double %0, %i.av
  %i.bf = fmul double %i.be, %i.ay                ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.bf, ptr %i.bg, align 8, !tbaa !22
  %i.bh = fmul double %i.bf, 2.000000e+00
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.bh, ptr %i.bi, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.ay, ptr %i.bj, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader389, label %scalar.ph, !llvm.loop !169

.lr.ph392:                                        ; preds = %.lr.ph392.preheader, %._crit_edge
  %indvars.iv441 = phi i64 [ 0, %.lr.ph392.preheader ], [ %indvars.iv.next442, %._crit_edge ] ; 2 uses
  %i.bk = mul nsw i64 %indvars.iv441, %i.aq
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph392, %v_prod.exit.loopexit
  %indvars.iv436 = phi i64 [ 0, %.lr.ph392 ], [ %indvars.iv.next437, %v_prod.exit.loopexit ] ; 2 uses
  %i.bl = mul nuw nsw i64 %indvars.iv436, %i.ap
  %i.bm = add nsw i64 %i.bl, %i.bk                ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bm ; 6 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bm ; 6 uses
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.body509

vector.body509:                                   ; preds = %.lr.ph.preheader.i, %vector.body509
  %index510 = phi i64 [ %index.next515, %vector.body509 ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index510 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load511 = load <2 x double>, ptr %i.bp, align 16, !tbaa !22
  %wide.load512 = load <2 x double>, ptr %i.bq, align 16, !tbaa !22
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index510 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load513 = load <2 x double>, ptr %i.br, align 8, !tbaa !22
  %wide.load514 = load <2 x double>, ptr %i.bs, align 8, !tbaa !22
  %i.bt = fmul <2 x double> %wide.load511, %wide.load513
  %i.bu = fmul <2 x double> %wide.load512, %wide.load514
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %index510 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x double> %i.bt, ptr %i.bv, align 8, !tbaa !22
  store <2 x double> %i.bu, ptr %i.bw, align 8, !tbaa !22
  %index.next515 = add nuw i64 %index510, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next515, %n.vec508
  br i1 %i.bx, label %middle.block516, label %vector.body509, !llvm.loop !170

middle.block516:                                  ; preds = %vector.body509
  br i1 %cmp.n517, label %v_prod.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block516
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec508, %middle.block516 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.prol
  %i.bz = load double, ptr %i.by, align 8, !tbaa !22
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i.prol
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !22
  %i.cc = fmul double %i.bz, %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.prol
  store double %i.cc, ptr %i.cd, align 8, !tbaa !22
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !171

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ce = sub nsw i64 %indvars.iv.i.ph, %i.ap
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %v_prod.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !22
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !22
  %i.ck = fmul double %i.ch, %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i
  store double %i.ck, ptr %i.cl, align 8, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !22
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i
  %i.cp = load double, ptr %i.co, align 8, !tbaa !22
  %i.cq = fmul double %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i
  store double %i.cq, ptr %i.cr, align 8, !tbaa !22
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.1
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !22
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i.1
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !22
  %i.cw = fmul double %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.1
  store double %i.cw, ptr %i.cx, align 8, !tbaa !22
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i.2
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !22
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i.2
  %i.db = load double, ptr %i.da, align 8, !tbaa !22
  %i.dc = fmul double %i.cz, %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.2
  store double %i.dc, ptr %i.dd, align 8, !tbaa !22
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %v_prod.exit.loopexit, label %.lr.ph.i, !llvm.loop !172

v_prod.exit.loopexit:                             ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block516
  %indvars.iv.next437 = add nuw nsw i64 %indvars.iv436, 1 ; 2 uses
  %exitcond440.not = icmp eq i64 %indvars.iv.next437, %wide.trip.count439
  br i1 %exitcond440.not, label %._crit_edge, label %.lr.ph.preheader.i

._crit_edge:                                      ; preds = %v_prod.exit.loopexit
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 2 uses
  %exitcond445.not = icmp eq i64 %indvars.iv.next442, %wide.trip.count444
  br i1 %exitcond445.not, label %._crit_edge395.split, label %.lr.ph392

._crit_edge395.split:                             ; preds = %._crit_edge, %.preheader389.._crit_edge395.split_crit_edge, %.lr.ph394
  %.pre-phi = phi i64 [ %.pre, %.preheader389.._crit_edge395.split_crit_edge ], [ %wide.trip.count.i, %.lr.ph394 ], [ %wide.trip.count.i, %._crit_edge ] ; 142 uses
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %1) #10
  %i.de = icmp slt i32 %i.o, 1                    ; 2 uses
  %i.df = icmp slt i32 %i.m, 1                    ; 2 uses
  %i.dg = add nsw i32 %i.m, -1
  %i.dh = add nsw i32 %i.o, -1
  %i.di = shl nuw nsw i64 %.pre-phi, 3
  %i.dj = sext i32 %i.q to i64                    ; 34 uses
  %i.dk = sext i32 %i.k to i64                    ; 24 uses
  %i.dl = sub nsw i64 0, %i.dk                    ; 6 uses
  %i.dm = sub nsw i64 0, %i.dj                    ; 6 uses
  %i.dn = zext i32 %i.dg to i64                   ; 2 uses
  %i.do = zext i32 %i.dh to i64                   ; 2 uses
  %wide.trip.count454 = zext nneg i32 %i.o to i64
  %wide.trip.count449 = zext i32 %i.m to i64      ; 16 uses
  %brmerge420 = select i1 %i.de, i1 true, i1 %i.df
  %wide.trip.count464 = zext nneg i32 %i.o to i64
  %wide.trip.count459 = zext nneg i32 %i.m to i64
  %i.dp = add nuw nsw i64 %wide.trip.count449, 2305843009213693951
  %i.dq = mul i64 %i.dp, %i.dk
  %i.dr = add i64 %i.dq, %.pre-phi                ; 2 uses
  %i.ds = shl i64 %i.dr, 3
  %i.dt = sub i64 %i.dr, %i.dj
  %i.du = shl i64 %i.dt, 3
  %i.dv = shl nsw i64 %i.dj, 3
  %i.dw = shl nuw nsw i64 %wide.trip.count449, 3
  %i.dx = add nsw i64 %i.dw, -16
  %i.dy = mul i64 %i.dx, %i.dk
  %i.dz = shl nuw nsw i64 %.pre-phi, 3
  %i.ea = shl nsw i64 %i.dj, 3
  %i.eb = add nuw nsw i64 %wide.trip.count449, 2305843009213693951
  %i.ec = mul i64 %i.eb, %i.dk
  %i.ed = add i64 %i.ec, %.pre-phi
  %i.ee = shl i64 %i.ed, 3
  %i.ef = shl nuw nsw i64 %wide.trip.count449, 3
  %i.eg = add nsw i64 %i.ef, -16
  %i.eh = mul i64 %i.eg, %i.dk
  %i.ei = shl nuw nsw i64 %.pre-phi, 3
  %i.ej = shl nsw i64 %i.dj, 3
  %i.ek = add nuw nsw i64 %wide.trip.count449, 2305843009213693951
  %i.el = mul i64 %i.ek, %i.dk
  %i.em = add i64 %i.el, %.pre-phi
  %i.en = shl i64 %i.em, 3
  %i.eo = shl nuw nsw i64 %wide.trip.count449, 3
  %i.ep = add nsw i64 %i.eo, -16
  %i.eq = mul i64 %i.ep, %i.dk
  %i.er = shl nuw nsw i64 %.pre-phi, 3
  %i.es = shl nsw i64 %i.dj, 3
  %i.et = add nuw nsw i64 %wide.trip.count449, 2305843009213693951
  %i.eu = mul i64 %i.et, %i.dk                    ; 2 uses
  %i.ev = add i64 %i.eu, %.pre-phi
  %i.ew = shl i64 %i.ev, 3
  %i.ex = add i64 %i.eu, %.pre-phi                ; 2 uses
  %i.ey = shl i64 %i.ex, 3
  %i.ez = sub i64 %i.ex, %i.dj
  %i.fa = shl i64 %i.ez, 3
  %i.fb = shl nsw i64 %i.dj, 3
  %i.fc = add nuw nsw i64 %wide.trip.count449, 2305843009213693951
  %i.fd = mul i64 %i.fc, %i.dk
  %i.fe = add i64 %i.fd, %.pre-phi                ; 2 uses
  %i.ff = shl i64 %i.fe, 3
  %i.fg = sub i64 %i.fe, %i.dj
  %i.fh = shl i64 %i.fg, 3
  %i.fi = shl nsw i64 %i.dj, 3
  %i.fj = shl nuw nsw i64 %wide.trip.count449, 3
  %i.fk = add nsw i64 %i.fj, -16
  %i.fl = mul i64 %i.fk, %i.dk
  %i.fm = shl nuw nsw i64 %.pre-phi, 3
  %i.fn = shl nsw i64 %i.dj, 3
  %i.fo = add nuw nsw i64 %wide.trip.count449, 2305843009213693951
  %i.fp = mul i64 %i.fo, %i.dk                    ; 2 uses
  %i.fq = add i64 %i.fp, %.pre-phi
  %i.fr = shl i64 %i.fq, 3
  %i.fs = add i64 %i.fp, %.pre-phi                ; 2 uses
  %i.ft = shl i64 %i.fs, 3
  %i.fu = sub i64 %i.fs, %i.dj
  %i.fv = shl i64 %i.fu, 3
  %i.fw = shl nsw i64 %i.dj, 3
  %i.fx = shl nuw nsw i64 %wide.trip.count449, 3
  %i.fy = add nsw i64 %i.fx, -16
  %i.fz = mul i64 %i.fy, %i.dk
  %i.ga = shl nuw nsw i64 %.pre-phi, 3
  %i.gb = shl nsw i64 %i.dj, 3
  %i.gc = add nuw nsw i64 %wide.trip.count449, 2305843009213693951
  %i.gd = mul i64 %i.gc, %i.dk                    ; 2 uses
  %i.ge = add i64 %i.gd, %.pre-phi
  %i.gf = shl i64 %i.ge, 3
  %i.gg = add i64 %i.gd, %.pre-phi                ; 2 uses
  %i.gh = shl i64 %i.gg, 3
  %i.gi = sub i64 %i.gg, %i.dj
  %i.gj = shl i64 %i.gi, 3
  %i.gk = shl nsw i64 %i.dj, 3
  %i.gl = add nuw nsw i64 %wide.trip.count449, 2305843009213693951
  %i.gm = mul i64 %i.gl, %i.dk
  %i.gn = add i64 %i.gm, %.pre-phi                ; 2 uses
  %i.go = shl i64 %i.gn, 3
  %i.gp = sub i64 %i.gn, %i.dj
  %i.gq = shl i64 %i.gp, 3
  %i.gr = shl nsw i64 %i.dj, 3
  %i.gs = shl nuw nsw i64 %wide.trip.count449, 3
  %i.gt = add nsw i64 %i.gs, -16
  %i.gu = mul i64 %i.gt, %i.dk
  %i.gv = shl nuw nsw i64 %.pre-phi, 3
  %i.gw = shl nsw i64 %i.dj, 3
  %i.gx = add nuw nsw i64 %wide.trip.count449, 2305843009213693951
  %i.gy = mul i64 %i.gx, %i.dk
  %i.gz = add i64 %i.gy, %.pre-phi
  %i.ha = shl i64 %i.gz, 3
  %4 = mul nsw i64 %i.dj, -8                      ; 6 uses
  %i.hb = mul nsw i64 %.pre-phi, -8               ; 4 uses
  %min.iters.check1070 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec1072 = and i64 %.pre-phi, 4294967292      ; 3 uses
  %cmp.n1081 = icmp eq i64 %.pre-phi, %n.vec1072
  %min.iters.check1056 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec1058 = and i64 %.pre-phi, 4294967292      ; 3 uses
  %cmp.n1067 = icmp eq i64 %.pre-phi, %n.vec1058
  %min.iters.check1040 = icmp samesign ult i64 %.pre-phi, 4
  %i.hc = add nsw i64 %4, -1
  %diff.check1042 = icmp ult i64 %i.hc, 31
  %or.cond1084 = select i1 %min.iters.check1040, i1 true, i1 %diff.check1042
  %n.vec1044 = and i64 %.pre-phi, 4294967292      ; 3 uses
  %cmp.n1053 = icmp eq i64 %.pre-phi, %n.vec1044
  %xtraiter1115 = and i64 %.pre-phi, 3            ; 2 uses
  %lcmp.mod1116.not = icmp eq i64 %xtraiter1115, 0
  %min.iters.check1016 = icmp samesign ult i64 %.pre-phi, 4
  %5 = add nsw i64 %i.hb, -1
  %diff.check1018 = icmp ult i64 %5, 31
  %i.hd = add nsw i64 %4, -1
  %diff.check1019 = icmp ult i64 %i.hd, 31
  %conflict.rdx1020 = or i1 %diff.check1018, %diff.check1019
  %n.vec1022 = and i64 %.pre-phi, 4294967292      ; 3 uses
  %cmp.n1035 = icmp eq i64 %.pre-phi, %n.vec1022
  %xtraiter1118 = and i64 %.pre-phi, 1
  %lcmp.mod1119.not = icmp eq i64 %xtraiter1118, 0
  %min.iters.check990 = icmp samesign ult i64 %.pre-phi, 4
  %6 = add nsw i64 %i.hb, -1
  %diff.check992 = icmp ult i64 %6, 31
  %i.he = add nsw i64 %4, -1
  %diff.check993 = icmp ult i64 %i.he, 31
  %conflict.rdx994 = or i1 %diff.check992, %diff.check993
  %n.vec996 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n1009 = icmp eq i64 %.pre-phi, %n.vec996
  %xtraiter1121 = and i64 %.pre-phi, 1
  %lcmp.mod1122.not = icmp eq i64 %xtraiter1121, 0
  %min.iters.check970 = icmp samesign ult i64 %.pre-phi, 4
  %i.hf = add nsw i64 %4, -1
  %diff.check972 = icmp ult i64 %i.hf, 31
  %or.cond1083 = select i1 %min.iters.check970, i1 true, i1 %diff.check972
  %n.vec974 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n983 = icmp eq i64 %.pre-phi, %n.vec974
  %xtraiter1124 = and i64 %.pre-phi, 3            ; 2 uses
  %lcmp.mod1125.not = icmp eq i64 %xtraiter1124, 0
  %min.iters.check946 = icmp samesign ult i64 %.pre-phi, 4
  %7 = add nsw i64 %i.hb, -1
  %diff.check948 = icmp ult i64 %7, 31
  %i.hg = add nsw i64 %4, -1
  %diff.check949 = icmp ult i64 %i.hg, 31
  %conflict.rdx950 = or i1 %diff.check948, %diff.check949
  %n.vec952 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n965 = icmp eq i64 %.pre-phi, %n.vec952
  %xtraiter1127 = and i64 %.pre-phi, 1
  %lcmp.mod1128.not = icmp eq i64 %xtraiter1127, 0
  %min.iters.check921 = icmp samesign ult i64 %.pre-phi, 4
  %8 = add nsw i64 %i.hb, -1
  %diff.check923 = icmp ult i64 %8, 31
  %i.hh = add nsw i64 %4, -1
  %diff.check924 = icmp ult i64 %i.hh, 31
  %conflict.rdx = or i1 %diff.check923, %diff.check924
  %n.vec926 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n939 = icmp eq i64 %.pre-phi, %n.vec926
  %xtraiter1130 = and i64 %.pre-phi, 1
  %lcmp.mod1131.not = icmp eq i64 %xtraiter1130, 0
  %i.hi = getelementptr i8, ptr %i.f, i64 %i.gu
  %i.hj = getelementptr i8, ptr %i.hi, i64 %i.gv
  %i.hk = shl nsw i64 %i.dk, 3
  %i.hl = getelementptr i8, ptr %i.f, i64 %i.ha
  %i.hm = getelementptr i8, ptr %i.f, i64 %i.gq
  %i.hn = shl nsw i64 %i.dj, 3
  %i.ho = getelementptr i8, ptr %i.f, i64 %i.go
  %i.hp = getelementptr i8, ptr %i.f, i64 %i.gj
  %i.hq = shl nsw i64 %i.dj, 3
  %i.hr = getelementptr i8, ptr %i.f, i64 %i.gh
  %i.hs = getelementptr i8, ptr %i.f, i64 %i.fz
  %i.ht = getelementptr i8, ptr %i.hs, i64 %i.ga
  %i.hu = shl nsw i64 %i.dk, 3
  %i.hv = getelementptr i8, ptr %i.f, i64 %i.gf
  %i.hw = getelementptr i8, ptr %i.f, i64 %i.fv
  %i.hx = shl nsw i64 %i.dj, 3
  %i.hy = getelementptr i8, ptr %i.f, i64 %i.ft
  %i.hz = getelementptr i8, ptr %i.f, i64 %i.fl
  %i.ia = getelementptr i8, ptr %i.hz, i64 %i.fm
  %i.ib = shl nsw i64 %i.dk, 3
  %i.ic = getelementptr i8, ptr %i.f, i64 %i.fr
  %i.id = getelementptr i8, ptr %i.f, i64 %i.fh
  %i.ie = shl nsw i64 %i.dj, 3
  %i.if = getelementptr i8, ptr %i.f, i64 %i.ff
  %i.ig = getelementptr i8, ptr %i.f, i64 %i.fa
  %i.ih = shl nsw i64 %i.dj, 3
  %i.ii = getelementptr i8, ptr %i.f, i64 %i.ey
  %i.ij = getelementptr i8, ptr %i.f, i64 %i.eq
  %i.ik = getelementptr i8, ptr %i.ij, i64 %i.er
  %i.il = shl nsw i64 %i.dk, 3
  %i.im = getelementptr i8, ptr %i.f, i64 %i.ew
  %i.in = getelementptr i8, ptr %i.f, i64 %i.eh
  %i.io = getelementptr i8, ptr %i.in, i64 %i.ei
  %i.ip = shl nsw i64 %i.dk, 3
  %i.iq = getelementptr i8, ptr %i.f, i64 %i.en
  %i.ir = getelementptr i8, ptr %i.f, i64 %i.dy
  %i.is = getelementptr i8, ptr %i.ir, i64 %i.dz
  %i.it = shl nsw i64 %i.dk, 3
  %i.iu = getelementptr i8, ptr %i.f, i64 %i.ee
  %i.iv = getelementptr i8, ptr %i.f, i64 %i.du
  %i.iw = shl nsw i64 %i.dj, 3
  %i.ix = getelementptr i8, ptr %i.f, i64 %i.ds
  %min.iters.check897 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec904 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n915 = icmp eq i64 %.pre-phi, %n.vec904
  %xtraiter1133 = and i64 %.pre-phi, 1
  %lcmp.mod1134.not = icmp eq i64 %xtraiter1133, 0
  %min.iters.check863 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec870 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n881 = icmp eq i64 %.pre-phi, %n.vec870
  %xtraiter1136 = and i64 %.pre-phi, 1
  %lcmp.mod1137.not = icmp eq i64 %xtraiter1136, 0
  %min.iters.check829 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec836 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n847 = icmp eq i64 %.pre-phi, %n.vec836
  %xtraiter1139 = and i64 %.pre-phi, 1
  %lcmp.mod1140.not = icmp eq i64 %xtraiter1139, 0
  %min.iters.check795 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec802 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n813 = icmp eq i64 %.pre-phi, %n.vec802
  %xtraiter1142 = and i64 %.pre-phi, 1
  %lcmp.mod1143.not = icmp eq i64 %xtraiter1142, 0
  %min.iters.check761 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec768 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n779 = icmp eq i64 %.pre-phi, %n.vec768
  %xtraiter1145 = and i64 %.pre-phi, 1
  %lcmp.mod1146.not = icmp eq i64 %xtraiter1145, 0
  %min.iters.check727 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec734 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n745 = icmp eq i64 %.pre-phi, %n.vec734
  %xtraiter1148 = and i64 %.pre-phi, 1
  %lcmp.mod1149.not = icmp eq i64 %xtraiter1148, 0
  %min.iters.check693 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec700 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n711 = icmp eq i64 %.pre-phi, %n.vec700
  %xtraiter1151 = and i64 %.pre-phi, 1
  %lcmp.mod1152.not = icmp eq i64 %xtraiter1151, 0
  %min.iters.check659 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec666 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n677 = icmp eq i64 %.pre-phi, %n.vec666
  %xtraiter1154 = and i64 %.pre-phi, 1
  %lcmp.mod1155.not = icmp eq i64 %xtraiter1154, 0
  %min.iters.check625 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec632 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n643 = icmp eq i64 %.pre-phi, %n.vec632
  %xtraiter1157 = and i64 %.pre-phi, 1
  %lcmp.mod1158.not = icmp eq i64 %xtraiter1157, 0
  %min.iters.check591 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec598 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n609 = icmp eq i64 %.pre-phi, %n.vec598
  %xtraiter1160 = and i64 %.pre-phi, 1
  %lcmp.mod1161.not = icmp eq i64 %xtraiter1160, 0
  %min.iters.check557 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec564 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n575 = icmp eq i64 %.pre-phi, %n.vec564
  %xtraiter1163 = and i64 %.pre-phi, 1
  %lcmp.mod1164.not = icmp eq i64 %xtraiter1163, 0
  %min.iters.check527 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec530 = and i64 %.pre-phi, 4294967292       ; 3 uses
  %cmp.n541 = icmp eq i64 %.pre-phi, %n.vec530
  %xtraiter1166 = and i64 %.pre-phi, 1
  %lcmp.mod1167.not = icmp eq i64 %xtraiter1166, 0
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge395.split, %._crit_edge410.split
  %.0230411 = phi i32 [ 1, %._crit_edge395.split ], [ %i.amo, %._crit_edge410.split ] ; 2 uses
  %i.iy = icmp samesign ult i32 %.0230411, 2
  %brmerge415 = select i1 %i.iy, i1 true, i1 %i.de
  %brmerge417 = select i1 %brmerge415, i1 true, i1 %i.df
  br i1 %brmerge417, label %.loopexit, label %.lr.ph399

.lr.ph399:                                        ; preds = %bb.b, %._crit_edge400
  %indvars.iv451 = phi i64 [ %indvars.iv.next452, %._crit_edge400 ], [ 0, %bb.b ] ; 4 uses
  %i.iz = mul nsw i64 %indvars.iv451, %i.dj
  %i.ja = icmp eq i64 %indvars.iv451, 0
  %i.jb = icmp eq i64 %indvars.iv451, %i.do
  %i.jc = select i1 %i.jb, i32 6, i32 3
  %i.jd = select i1 %i.ja, i32 0, i32 %i.jc
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph399, %v_sum_prods.exit
  %indvars.iv446 = phi i64 [ 0, %.lr.ph399 ], [ %indvars.iv.next447, %v_sum_prods.exit ] ; 4 uses
  %i.je = mul nsw i64 %indvars.iv446, %i.dk
  %i.jf = add nsw i64 %i.je, %i.iz                ; 9 uses
  %i.jg = icmp eq i64 %indvars.iv446, 0
  %i.jh = icmp eq i64 %indvars.iv446, %i.dn
  %i.ji = select i1 %i.jh, i32 2, i32 1
  %i.jj = select i1 %i.jg, i32 0, i32 %i.ji
  %i.jk = add nuw nsw i32 %i.jj, %i.jd
  switch i32 %i.jk, label %default.unreachable473 [
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
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jf ; 6 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %.pre-phi ; 4 uses
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.jl, i64 %i.dj ; 4 uses
  br i1 %i.t, label %.lr.ph.i238.preheader, label %v_sum_prods.exit

.lr.ph.i238.preheader:                            ; preds = %bb.d
  %brmerge1184 = select i1 %min.iters.check921, i1 true, i1 %conflict.rdx
  br i1 %brmerge1184, label %.lr.ph.i238.preheader1100, label %vector.body927

vector.body927:                                   ; preds = %.lr.ph.i238.preheader, %vector.body927
  %index928 = phi i64 [ %index.next937, %vector.body927 ], [ 0, %.lr.ph.i238.preheader ] ; 6 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index928 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %wide.load929.a = load <2 x double>, ptr %i.jo, align 16, !tbaa !22
  %wide.load930.a = load <2 x double>, ptr %i.jp, align 16, !tbaa !22
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %index928 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %wide.load931.a = load <2 x double>, ptr %i.jq, align 8, !tbaa !22
  %wide.load932.a = load <2 x double>, ptr %i.jr, align 8, !tbaa !22
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index928 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %wide.load933.a = load <2 x double>, ptr %i.js, align 16, !tbaa !22
  %wide.load934.a = load <2 x double>, ptr %i.jt, align 16, !tbaa !22
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %index928 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %wide.load935 = load <2 x double>, ptr %i.ju, align 8, !tbaa !22
  %wide.load936 = load <2 x double>, ptr %i.jv, align 8, !tbaa !22
  %i.jw = fmul <2 x double> %wide.load933.a, %wide.load935
  %i.jx = fmul <2 x double> %wide.load934.a, %wide.load936
  %i.jy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load929.a, <2 x double> %wide.load931.a, <2 x double> %i.jw)
  %i.jz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load930.a, <2 x double> %wide.load932.a, <2 x double> %i.jx)
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %index928 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store <2 x double> %i.jy, ptr %i.ka, align 8, !tbaa !22
  store <2 x double> %i.jz, ptr %i.kb, align 8, !tbaa !22
  %index.next937 = add nuw i64 %index928, 4       ; 2 uses
  %i.kc = icmp eq i64 %index.next937, %n.vec926
  br i1 %i.kc, label %middle.block938, label %vector.body927, !llvm.loop !173

middle.block938:                                  ; preds = %vector.body927
  br i1 %cmp.n939, label %v_sum_prods.exit, label %.lr.ph.i238.preheader1100

.lr.ph.i238.preheader1100:                        ; preds = %.lr.ph.i238.preheader, %middle.block938
  %indvars.iv.i239.ph = phi i64 [ %n.vec926, %middle.block938 ], [ 0, %.lr.ph.i238.preheader ] ; 8 uses
  %.neg1171.a = or disjoint i64 %indvars.iv.i239.ph, 1
  br i1 %lcmp.mod1131.not, label %.lr.ph.i238.prol.loopexit, label %.lr.ph.i238.prol

.lr.ph.i238.prol:                                 ; preds = %.lr.ph.i238.preheader1100
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i239.ph
  %i.ke = load double, ptr %i.kd, align 16, !tbaa !22
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv.i239.ph
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !22
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i239.ph
  %i.ki = load double, ptr %i.kh, align 16, !tbaa !22
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv.i239.ph
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !22
  %i.kl = fmul double %i.ki, %i.kk
  %i.km = tail call double @llvm.fmuladd.f64(double %i.ke, double %i.kg, double %i.kl)
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv.i239.ph
  store double %i.km, ptr %i.kn, align 8, !tbaa !22
  %indvars.iv.next.i240.prol = or disjoint i64 %indvars.iv.i239.ph, 1
  br label %.lr.ph.i238.prol.loopexit

.lr.ph.i238.prol.loopexit:                        ; preds = %.lr.ph.i238.prol, %.lr.ph.i238.preheader1100
  %indvars.iv.i239.unr = phi i64 [ %indvars.iv.i239.ph, %.lr.ph.i238.preheader1100 ], [ %indvars.iv.next.i240.prol, %.lr.ph.i238.prol ]
  %i.ko = icmp eq i64 %.pre-phi, %.neg1171.a
  br i1 %i.ko, label %v_sum_prods.exit, label %.lr.ph.i238

.lr.ph.i238:                                      ; preds = %.lr.ph.i238.prol.loopexit, %.lr.ph.i238
  %indvars.iv.i239 = phi i64 [ %indvars.iv.next.i240.1, %.lr.ph.i238 ], [ %indvars.iv.i239.unr, %.lr.ph.i238.prol.loopexit ] ; 7 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i239
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !22
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv.i239
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !22
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i239
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !22
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv.i239
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !22
  %i.kx = fmul double %i.ku, %i.kw
  %i.ky = tail call double @llvm.fmuladd.f64(double %i.kq, double %i.ks, double %i.kx)
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv.i239
  store double %i.ky, ptr %i.kz, align 8, !tbaa !22
  %indvars.iv.next.i240 = add nuw nsw i64 %indvars.iv.i239, 1 ; 5 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i240
  %i.lb = load double, ptr %i.la, align 8, !tbaa !22
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv.next.i240
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !22
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i240
  %i.lf = load double, ptr %i.le, align 8, !tbaa !22
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv.next.i240
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !22
  %i.li = fmul double %i.lf, %i.lh
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.lb, double %i.ld, double %i.li)
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv.next.i240
  store double %i.lj, ptr %i.lk, align 8, !tbaa !22
  %indvars.iv.next.i240.1 = add nuw nsw i64 %indvars.iv.i239, 2 ; 2 uses
  %exitcond.not.i241.1 = icmp eq i64 %indvars.iv.next.i240.1, %.pre-phi
  br i1 %exitcond.not.i241.1, label %v_sum_prods.exit, label %.lr.ph.i238, !llvm.loop !174

bb.e:                                             ; preds = %bb.c
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jf ; 6 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %.pre-phi ; 4 uses
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.ll, i64 %i.dj ; 4 uses
  br i1 %i.t, label %.lr.ph.i244.preheader, label %v_sum_prods.exit

.lr.ph.i244.preheader:                            ; preds = %bb.e
  %brmerge1185 = select i1 %min.iters.check946, i1 true, i1 %conflict.rdx950
  br i1 %brmerge1185, label %.lr.ph.i244.preheader1101, label %vector.body953

vector.body953:                                   ; preds = %.lr.ph.i244.preheader, %vector.body953
  %index954 = phi i64 [ %index.next963, %vector.body953 ], [ 0, %.lr.ph.i244.preheader ] ; 6 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index954 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %wide.load955.a = load <2 x double>, ptr %i.lo, align 16, !tbaa !22
  %wide.load956.a = load <2 x double>, ptr %i.lp, align 16, !tbaa !22
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %index954 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %wide.load957 = load <2 x double>, ptr %i.lq, align 8, !tbaa !22
  %wide.load958 = load <2 x double>, ptr %i.lr, align 8, !tbaa !22
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index954 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %wide.load959 = load <2 x double>, ptr %i.ls, align 16, !tbaa !22
  %wide.load960 = load <2 x double>, ptr %i.lt, align 16, !tbaa !22
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %index954 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %wide.load961 = load <2 x double>, ptr %i.lu, align 8, !tbaa !22
  %wide.load962 = load <2 x double>, ptr %i.lv, align 8, !tbaa !22
  %i.lw = fmul <2 x double> %wide.load959, %wide.load961
  %i.lx = fmul <2 x double> %wide.load960, %wide.load962
  %i.ly = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load955.a, <2 x double> %wide.load957, <2 x double> %i.lw)
  %i.lz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load956.a, <2 x double> %wide.load958, <2 x double> %i.lx)
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %index954 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store <2 x double> %i.ly, ptr %i.ma, align 8, !tbaa !22
  store <2 x double> %i.lz, ptr %i.mb, align 8, !tbaa !22
  %index.next963 = add nuw i64 %index954, 4       ; 2 uses
  %i.mc = icmp eq i64 %index.next963, %n.vec952
  br i1 %i.mc, label %middle.block964, label %vector.body953, !llvm.loop !175

middle.block964:                                  ; preds = %vector.body953
  br i1 %cmp.n965, label %v_sum_prods.exit, label %.lr.ph.i244.preheader1101

.lr.ph.i244.preheader1101:                        ; preds = %.lr.ph.i244.preheader, %middle.block964
  %indvars.iv.i245.ph = phi i64 [ %n.vec952, %middle.block964 ], [ 0, %.lr.ph.i244.preheader ] ; 8 uses
  %.neg1170.a = or disjoint i64 %indvars.iv.i245.ph, 1
  br i1 %lcmp.mod1128.not, label %.lr.ph.i244.prol.loopexit, label %.lr.ph.i244.prol

.lr.ph.i244.prol:                                 ; preds = %.lr.ph.i244.preheader1101
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i245.ph
  %i.me = load double, ptr %i.md, align 16, !tbaa !22
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv.i245.ph
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !22
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i245.ph
  %i.mi = load double, ptr %i.mh, align 16, !tbaa !22
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.i245.ph
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !22
  %i.ml = fmul double %i.mi, %i.mk
  %i.mm = tail call double @llvm.fmuladd.f64(double %i.me, double %i.mg, double %i.ml)
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv.i245.ph
  store double %i.mm, ptr %i.mn, align 8, !tbaa !22
  %indvars.iv.next.i246.prol = or disjoint i64 %indvars.iv.i245.ph, 1
  br label %.lr.ph.i244.prol.loopexit

.lr.ph.i244.prol.loopexit:                        ; preds = %.lr.ph.i244.prol, %.lr.ph.i244.preheader1101
  %indvars.iv.i245.unr = phi i64 [ %indvars.iv.i245.ph, %.lr.ph.i244.preheader1101 ], [ %indvars.iv.next.i246.prol, %.lr.ph.i244.prol ]
  %i.mo = icmp eq i64 %.pre-phi, %.neg1170.a
  br i1 %i.mo, label %v_sum_prods.exit, label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %.lr.ph.i244.prol.loopexit, %.lr.ph.i244
  %indvars.iv.i245 = phi i64 [ %indvars.iv.next.i246.1, %.lr.ph.i244 ], [ %indvars.iv.i245.unr, %.lr.ph.i244.prol.loopexit ] ; 7 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i245
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !22
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv.i245
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !22
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i245
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !22
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.i245
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !22
  %i.mx = fmul double %i.mu, %i.mw
  %i.my = tail call double @llvm.fmuladd.f64(double %i.mq, double %i.ms, double %i.mx)
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv.i245
  store double %i.my, ptr %i.mz, align 8, !tbaa !22
  %indvars.iv.next.i246 = add nuw nsw i64 %indvars.iv.i245, 1 ; 5 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i246
  %i.nb = load double, ptr %i.na, align 8, !tbaa !22
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv.next.i246
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !22
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i246
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !22
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.next.i246
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !22
  %i.ni = fmul double %i.nf, %i.nh
  %i.nj = tail call double @llvm.fmuladd.f64(double %i.nb, double %i.nd, double %i.ni)
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv.next.i246
  store double %i.nj, ptr %i.nk, align 8, !tbaa !22
  %indvars.iv.next.i246.1 = add nuw nsw i64 %indvars.iv.i245, 2 ; 2 uses
  %exitcond.not.i247.1 = icmp eq i64 %indvars.iv.next.i246.1, %.pre-phi
  br i1 %exitcond.not.i247.1, label %v_sum_prods.exit, label %.lr.ph.i244, !llvm.loop !176

bb.f:                                             ; preds = %bb.c
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jf ; 7 uses
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %i.dj ; 6 uses
  br i1 %i.t, label %.lr.ph.i251.preheader, label %v_sum_prods.exit

.lr.ph.i251.preheader:                            ; preds = %bb.f
  br i1 %or.cond1083, label %.lr.ph.i251.preheader1103, label %vector.body975

vector.body975:                                   ; preds = %.lr.ph.i251.preheader, %vector.body975
  %index976 = phi i64 [ %index.next981, %vector.body975 ], [ 0, %.lr.ph.i251.preheader ] ; 4 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index976 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %wide.load977 = load <2 x double>, ptr %i.nn, align 16, !tbaa !22
  %wide.load978 = load <2 x double>, ptr %i.no, align 16, !tbaa !22
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %index976 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  %wide.load979 = load <2 x double>, ptr %i.np, align 8, !tbaa !22
  %wide.load980 = load <2 x double>, ptr %i.nq, align 8, !tbaa !22
  %i.nr = fmul <2 x double> %wide.load977, %wide.load979
  %i.ns = fmul <2 x double> %wide.load978, %wide.load980
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %index976 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  store <2 x double> %i.nr, ptr %i.nt, align 8, !tbaa !22
  store <2 x double> %i.ns, ptr %i.nu, align 8, !tbaa !22
  %index.next981 = add nuw i64 %index976, 4       ; 2 uses
  %i.nv = icmp eq i64 %index.next981, %n.vec974
  br i1 %i.nv, label %middle.block982, label %vector.body975, !llvm.loop !177

middle.block982:                                  ; preds = %vector.body975
  br i1 %cmp.n983, label %v_sum_prods.exit, label %.lr.ph.i251.preheader1103

.lr.ph.i251.preheader1103:                        ; preds = %.lr.ph.i251.preheader, %middle.block982
  %indvars.iv.i252.ph = phi i64 [ 0, %.lr.ph.i251.preheader ], [ %n.vec974, %middle.block982 ] ; 3 uses
  br i1 %lcmp.mod1125.not, label %.lr.ph.i251.prol.loopexit, label %.lr.ph.i251.prol

.lr.ph.i251.prol:                                 ; preds = %.lr.ph.i251.preheader1103, %.lr.ph.i251.prol
  %indvars.iv.i252.prol = phi i64 [ %indvars.iv.next.i253.prol, %.lr.ph.i251.prol ], [ %indvars.iv.i252.ph, %.lr.ph.i251.preheader1103 ] ; 4 uses
  %prol.iter1126 = phi i64 [ %prol.iter1126.next, %.lr.ph.i251.prol ], [ 0, %.lr.ph.i251.preheader1103 ]
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i252.prol
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !22
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %indvars.iv.i252.prol
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !22
  %i.oa = fmul double %i.nx, %i.nz
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv.i252.prol
  store double %i.oa, ptr %i.ob, align 8, !tbaa !22
  %indvars.iv.next.i253.prol = add nuw nsw i64 %indvars.iv.i252.prol, 1 ; 2 uses
  %prol.iter1126.next = add i64 %prol.iter1126, 1 ; 2 uses
  %prol.iter1126.cmp.not = icmp eq i64 %prol.iter1126.next, %xtraiter1124
  br i1 %prol.iter1126.cmp.not, label %.lr.ph.i251.prol.loopexit, label %.lr.ph.i251.prol, !llvm.loop !178

.lr.ph.i251.prol.loopexit:                        ; preds = %.lr.ph.i251.prol, %.lr.ph.i251.preheader1103
  %indvars.iv.i252.unr = phi i64 [ %indvars.iv.i252.ph, %.lr.ph.i251.preheader1103 ], [ %indvars.iv.next.i253.prol, %.lr.ph.i251.prol ]
  %i.oc = sub nsw i64 %indvars.iv.i252.ph, %.pre-phi
  %i.od = icmp ugt i64 %i.oc, -4
  br i1 %i.od, label %v_sum_prods.exit, label %.lr.ph.i251

.lr.ph.i251:                                      ; preds = %.lr.ph.i251.prol.loopexit, %.lr.ph.i251
  %indvars.iv.i252 = phi i64 [ %indvars.iv.next.i253.3, %.lr.ph.i251 ], [ %indvars.iv.i252.unr, %.lr.ph.i251.prol.loopexit ] ; 7 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i252
  %i.of = load double, ptr %i.oe, align 8, !tbaa !22
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %indvars.iv.i252
  %i.oh = load double, ptr %i.og, align 8, !tbaa !22
  %i.oi = fmul double %i.of, %i.oh
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv.i252
  store double %i.oi, ptr %i.oj, align 8, !tbaa !22
  %indvars.iv.next.i253 = add nuw nsw i64 %indvars.iv.i252, 1 ; 3 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i253
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !22
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %indvars.iv.next.i253
  %i.on = load double, ptr %i.om, align 8, !tbaa !22
  %i.oo = fmul double %i.ol, %i.on
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv.next.i253
  store double %i.oo, ptr %i.op, align 8, !tbaa !22
  %indvars.iv.next.i253.1 = add nuw nsw i64 %indvars.iv.i252, 2 ; 3 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i253.1
  %i.or = load double, ptr %i.oq, align 8, !tbaa !22
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %indvars.iv.next.i253.1
  %i.ot = load double, ptr %i.os, align 8, !tbaa !22
  %i.ou = fmul double %i.or, %i.ot
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv.next.i253.1
  store double %i.ou, ptr %i.ov, align 8, !tbaa !22
  %indvars.iv.next.i253.2 = add nuw nsw i64 %indvars.iv.i252, 3 ; 3 uses
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i253.2
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !22
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %indvars.iv.next.i253.2
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !22
  %i.pa = fmul double %i.ox, %i.oz
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv.next.i253.2
  store double %i.pa, ptr %i.pb, align 8, !tbaa !22
  %indvars.iv.next.i253.3 = add nuw nsw i64 %indvars.iv.i252, 4 ; 2 uses
  %exitcond.not.i254.3 = icmp eq i64 %indvars.iv.next.i253.3, %.pre-phi
  br i1 %exitcond.not.i254.3, label %v_sum_prods.exit, label %.lr.ph.i251, !llvm.loop !179

bb.g:                                             ; preds = %bb.c
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jf ; 6 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %.pre-phi ; 4 uses
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.pc, i64 %i.dj ; 4 uses
  br i1 %i.t, label %.lr.ph.i258.preheader, label %v_sum_prods.exit

.lr.ph.i258.preheader:                            ; preds = %bb.g
  %brmerge1186 = select i1 %min.iters.check990, i1 true, i1 %conflict.rdx994
  br i1 %brmerge1186, label %.lr.ph.i258.preheader1105, label %vector.body997

vector.body997:                                   ; preds = %.lr.ph.i258.preheader, %vector.body997
  %index998 = phi i64 [ %index.next1007, %vector.body997 ], [ 0, %.lr.ph.i258.preheader ] ; 6 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index998 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %wide.load999 = load <2 x double>, ptr %i.pf, align 16, !tbaa !22
  %wide.load1000 = load <2 x double>, ptr %i.pg, align 16, !tbaa !22
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %index998 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %wide.load1001 = load <2 x double>, ptr %i.ph, align 8, !tbaa !22
  %wide.load1002 = load <2 x double>, ptr %i.pi, align 8, !tbaa !22
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index998 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %wide.load1003 = load <2 x double>, ptr %i.pj, align 16, !tbaa !22
  %wide.load1004 = load <2 x double>, ptr %i.pk, align 16, !tbaa !22
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %index998 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %wide.load1005 = load <2 x double>, ptr %i.pl, align 8, !tbaa !22
  %wide.load1006 = load <2 x double>, ptr %i.pm, align 8, !tbaa !22
  %i.pn = fmul <2 x double> %wide.load1003, %wide.load1005
  %i.po = fmul <2 x double> %wide.load1004, %wide.load1006
  %i.pp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load999, <2 x double> %wide.load1001, <2 x double> %i.pn)
  %i.pq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1000, <2 x double> %wide.load1002, <2 x double> %i.po)
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %index998 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  store <2 x double> %i.pp, ptr %i.pr, align 8, !tbaa !22
  store <2 x double> %i.pq, ptr %i.ps, align 8, !tbaa !22
  %index.next1007 = add nuw i64 %index998, 4      ; 2 uses
  %i.pt = icmp eq i64 %index.next1007, %n.vec996
  br i1 %i.pt, label %middle.block1008, label %vector.body997, !llvm.loop !180

middle.block1008:                                 ; preds = %vector.body997
  br i1 %cmp.n1009, label %v_sum_prods.exit, label %.lr.ph.i258.preheader1105

.lr.ph.i258.preheader1105:                        ; preds = %.lr.ph.i258.preheader, %middle.block1008
  %indvars.iv.i259.ph = phi i64 [ %n.vec996, %middle.block1008 ], [ 0, %.lr.ph.i258.preheader ] ; 8 uses
  %.neg1169.a = or disjoint i64 %indvars.iv.i259.ph, 1
  br i1 %lcmp.mod1122.not, label %.lr.ph.i258.prol.loopexit, label %.lr.ph.i258.prol

.lr.ph.i258.prol:                                 ; preds = %.lr.ph.i258.preheader1105
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i259.ph
  %i.pv = load double, ptr %i.pu, align 16, !tbaa !22
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %indvars.iv.i259.ph
  %i.px = load double, ptr %i.pw, align 8, !tbaa !22
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i259.ph
  %i.pz = load double, ptr %i.py, align 16, !tbaa !22
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv.i259.ph
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !22
  %i.qc = fmul double %i.pz, %i.qb
  %i.qd = tail call double @llvm.fmuladd.f64(double %i.pv, double %i.px, double %i.qc)
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %indvars.iv.i259.ph
  store double %i.qd, ptr %i.qe, align 8, !tbaa !22
  %indvars.iv.next.i260.prol = or disjoint i64 %indvars.iv.i259.ph, 1
  br label %.lr.ph.i258.prol.loopexit

.lr.ph.i258.prol.loopexit:                        ; preds = %.lr.ph.i258.prol, %.lr.ph.i258.preheader1105
  %indvars.iv.i259.unr = phi i64 [ %indvars.iv.i259.ph, %.lr.ph.i258.preheader1105 ], [ %indvars.iv.next.i260.prol, %.lr.ph.i258.prol ]
  %i.qf = icmp eq i64 %.pre-phi, %.neg1169.a
  br i1 %i.qf, label %v_sum_prods.exit, label %.lr.ph.i258

.lr.ph.i258:                                      ; preds = %.lr.ph.i258.prol.loopexit, %.lr.ph.i258
  %indvars.iv.i259 = phi i64 [ %indvars.iv.next.i260.1, %.lr.ph.i258 ], [ %indvars.iv.i259.unr, %.lr.ph.i258.prol.loopexit ] ; 7 uses
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i259
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !22
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %indvars.iv.i259
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !22
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i259
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !22
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv.i259
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !22
  %i.qo = fmul double %i.ql, %i.qn
  %i.qp = tail call double @llvm.fmuladd.f64(double %i.qh, double %i.qj, double %i.qo)
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %indvars.iv.i259
  store double %i.qp, ptr %i.qq, align 8, !tbaa !22
  %indvars.iv.next.i260 = add nuw nsw i64 %indvars.iv.i259, 1 ; 5 uses
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i260
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !22
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %indvars.iv.next.i260
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !22
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i260
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !22
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %indvars.iv.next.i260
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !22
  %i.qz = fmul double %i.qw, %i.qy
  %i.ra = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.qu, double %i.qz)
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %indvars.iv.next.i260
  store double %i.ra, ptr %i.rb, align 8, !tbaa !22
  %indvars.iv.next.i260.1 = add nuw nsw i64 %indvars.iv.i259, 2 ; 2 uses
  %exitcond.not.i261.1 = icmp eq i64 %indvars.iv.next.i260.1, %.pre-phi
  br i1 %exitcond.not.i261.1, label %v_sum_prods.exit, label %.lr.ph.i258, !llvm.loop !181

bb.h:                                             ; preds = %bb.c
  %i.rc = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jf ; 6 uses
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %.pre-phi ; 4 uses
  %i.re = getelementptr inbounds [8 x i8], ptr %i.rc, i64 %i.dj ; 4 uses
  br i1 %i.t, label %.lr.ph.i265.preheader, label %v_sum_prods.exit

.lr.ph.i265.preheader:                            ; preds = %bb.h
  %brmerge1187 = select i1 %min.iters.check1016, i1 true, i1 %conflict.rdx1020
  br i1 %brmerge1187, label %.lr.ph.i265.preheader1107, label %vector.body1023

vector.body1023:                                  ; preds = %.lr.ph.i265.preheader, %vector.body1023
  %index1024 = phi i64 [ %index.next1033, %vector.body1023 ], [ 0, %.lr.ph.i265.preheader ] ; 6 uses
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index1024 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %wide.load1025 = load <2 x double>, ptr %i.rf, align 16, !tbaa !22
  %wide.load1026 = load <2 x double>, ptr %i.rg, align 16, !tbaa !22
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %index1024 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %wide.load1027 = load <2 x double>, ptr %i.rh, align 8, !tbaa !22
  %wide.load1028 = load <2 x double>, ptr %i.ri, align 8, !tbaa !22
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index1024 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %wide.load1029 = load <2 x double>, ptr %i.rj, align 16, !tbaa !22
  %wide.load1030 = load <2 x double>, ptr %i.rk, align 16, !tbaa !22
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %index1024 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  %wide.load1031 = load <2 x double>, ptr %i.rl, align 8, !tbaa !22
  %wide.load1032 = load <2 x double>, ptr %i.rm, align 8, !tbaa !22
  %i.rn = fmul <2 x double> %wide.load1029, %wide.load1031
  %i.ro = fmul <2 x double> %wide.load1030, %wide.load1032
  %i.rp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1025, <2 x double> %wide.load1027, <2 x double> %i.rn)
  %i.rq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1026, <2 x double> %wide.load1028, <2 x double> %i.ro)
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %index1024 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  store <2 x double> %i.rp, ptr %i.rr, align 8, !tbaa !22
  store <2 x double> %i.rq, ptr %i.rs, align 8, !tbaa !22
  %index.next1033 = add nuw i64 %index1024, 4     ; 2 uses
  %i.rt = icmp eq i64 %index.next1033, %n.vec1022
  br i1 %i.rt, label %middle.block1034, label %vector.body1023, !llvm.loop !182

middle.block1034:                                 ; preds = %vector.body1023
  br i1 %cmp.n1035, label %v_sum_prods.exit, label %.lr.ph.i265.preheader1107

.lr.ph.i265.preheader1107:                        ; preds = %.lr.ph.i265.preheader, %middle.block1034
  %indvars.iv.i266.ph = phi i64 [ %n.vec1022, %middle.block1034 ], [ 0, %.lr.ph.i265.preheader ] ; 8 uses
  %.neg = or disjoint i64 %indvars.iv.i266.ph, 1
  br i1 %lcmp.mod1119.not, label %.lr.ph.i265.prol.loopexit, label %.lr.ph.i265.prol

.lr.ph.i265.prol:                                 ; preds = %.lr.ph.i265.preheader1107
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i266.ph
  %i.rv = load double, ptr %i.ru, align 16, !tbaa !22
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %indvars.iv.i266.ph
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !22
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i266.ph
  %i.rz = load double, ptr %i.ry, align 16, !tbaa !22
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %indvars.iv.i266.ph
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !22
  %i.sc = fmul double %i.rz, %i.sb
  %i.sd = tail call double @llvm.fmuladd.f64(double %i.rv, double %i.rx, double %i.sc)
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %indvars.iv.i266.ph
  store double %i.sd, ptr %i.se, align 8, !tbaa !22
  %indvars.iv.next.i267.prol = or disjoint i64 %indvars.iv.i266.ph, 1
  br label %.lr.ph.i265.prol.loopexit

.lr.ph.i265.prol.loopexit:                        ; preds = %.lr.ph.i265.prol, %.lr.ph.i265.preheader1107
  %indvars.iv.i266.unr = phi i64 [ %indvars.iv.i266.ph, %.lr.ph.i265.preheader1107 ], [ %indvars.iv.next.i267.prol, %.lr.ph.i265.prol ]
  %i.sf = icmp eq i64 %.pre-phi, %.neg
  br i1 %i.sf, label %v_sum_prods.exit, label %.lr.ph.i265

.lr.ph.i265:                                      ; preds = %.lr.ph.i265.prol.loopexit, %.lr.ph.i265
  %indvars.iv.i266 = phi i64 [ %indvars.iv.next.i267.1, %.lr.ph.i265 ], [ %indvars.iv.i266.unr, %.lr.ph.i265.prol.loopexit ] ; 7 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i266
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !22
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %indvars.iv.i266
  %i.sj = load double, ptr %i.si, align 8, !tbaa !22
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i266
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !22
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %indvars.iv.i266
  %i.sn = load double, ptr %i.sm, align 8, !tbaa !22
  %i.so = fmul double %i.sl, %i.sn
  %i.sp = tail call double @llvm.fmuladd.f64(double %i.sh, double %i.sj, double %i.so)
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %indvars.iv.i266
  store double %i.sp, ptr %i.sq, align 8, !tbaa !22
  %indvars.iv.next.i267 = add nuw nsw i64 %indvars.iv.i266, 1 ; 5 uses
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i267
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !22
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %indvars.iv.next.i267
  %i.su = load double, ptr %i.st, align 8, !tbaa !22
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i267
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !22
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %indvars.iv.next.i267
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !22
  %i.sz = fmul double %i.sw, %i.sy
  %i.ta = tail call double @llvm.fmuladd.f64(double %i.ss, double %i.su, double %i.sz)
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %indvars.iv.next.i267
  store double %i.ta, ptr %i.tb, align 8, !tbaa !22
  %indvars.iv.next.i267.1 = add nuw nsw i64 %indvars.iv.i266, 2 ; 2 uses
  %exitcond.not.i268.1 = icmp eq i64 %indvars.iv.next.i267.1, %.pre-phi
  br i1 %exitcond.not.i268.1, label %v_sum_prods.exit, label %.lr.ph.i265, !llvm.loop !183

bb.i:                                             ; preds = %bb.c
  %i.tc = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jf ; 7 uses
  %i.td = getelementptr inbounds [8 x i8], ptr %i.tc, i64 %i.dj ; 6 uses
  br i1 %i.t, label %.lr.ph.i272.preheader, label %v_sum_prods.exit

.lr.ph.i272.preheader:                            ; preds = %bb.i
  br i1 %or.cond1084, label %.lr.ph.i272.preheader1109, label %vector.body1045.a

vector.body1045.a:                                ; preds = %.lr.ph.i272.preheader, %vector.body1045.a
  %index1046.a = phi i64 [ %index.next1051.a, %vector.body1045.a ], [ 0, %.lr.ph.i272.preheader ] ; 4 uses
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index1046.a ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  %wide.load1047.a = load <2 x double>, ptr %i.te, align 16, !tbaa !22
  %wide.load1048.a = load <2 x double>, ptr %i.tf, align 16, !tbaa !22
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %index1046.a ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %wide.load1049.a = load <2 x double>, ptr %i.tg, align 8, !tbaa !22
  %wide.load1050.a = load <2 x double>, ptr %i.th, align 8, !tbaa !22
  %i.ti = fmul <2 x double> %wide.load1047.a, %wide.load1049.a
  %i.tj = fmul <2 x double> %wide.load1048.a, %wide.load1050.a
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %index1046.a ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  store <2 x double> %i.ti, ptr %i.tk, align 8, !tbaa !22
  store <2 x double> %i.tj, ptr %i.tl, align 8, !tbaa !22
  %index.next1051.a = add nuw i64 %index1046.a, 4 ; 2 uses
  %i.tm = icmp eq i64 %index.next1051.a, %n.vec1044
  br i1 %i.tm, label %middle.block1052.a, label %vector.body1045.a, !llvm.loop !184

middle.block1052.a:                               ; preds = %vector.body1045.a
  br i1 %cmp.n1053, label %v_sum_prods.exit, label %.lr.ph.i272.preheader1109

.lr.ph.i272.preheader1109:                        ; preds = %.lr.ph.i272.preheader, %middle.block1052.a
  %indvars.iv.i273.ph = phi i64 [ 0, %.lr.ph.i272.preheader ], [ %n.vec1044, %middle.block1052.a ] ; 3 uses
  br i1 %lcmp.mod1116.not, label %.lr.ph.i272.prol.loopexit, label %.lr.ph.i272.prol

.lr.ph.i272.prol:                                 ; preds = %.lr.ph.i272.preheader1109, %.lr.ph.i272.prol
  %indvars.iv.i273.prol = phi i64 [ %indvars.iv.next.i274.prol, %.lr.ph.i272.prol ], [ %indvars.iv.i273.ph, %.lr.ph.i272.preheader1109 ] ; 4 uses
  %prol.iter1117 = phi i64 [ %prol.iter1117.next, %.lr.ph.i272.prol ], [ 0, %.lr.ph.i272.preheader1109 ]
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i273.prol
  %i.to = load double, ptr %i.tn, align 8, !tbaa !22
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %indvars.iv.i273.prol
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !22
  %i.tr = fmul double %i.to, %i.tq
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %indvars.iv.i273.prol
  store double %i.tr, ptr %i.ts, align 8, !tbaa !22
  %indvars.iv.next.i274.prol = add nuw nsw i64 %indvars.iv.i273.prol, 1 ; 2 uses
  %prol.iter1117.next = add i64 %prol.iter1117, 1 ; 2 uses
  %prol.iter1117.cmp.not = icmp eq i64 %prol.iter1117.next, %xtraiter1115
  br i1 %prol.iter1117.cmp.not, label %.lr.ph.i272.prol.loopexit, label %.lr.ph.i272.prol, !llvm.loop !185

.lr.ph.i272.prol.loopexit:                        ; preds = %.lr.ph.i272.prol, %.lr.ph.i272.preheader1109
  %indvars.iv.i273.unr = phi i64 [ %indvars.iv.i273.ph, %.lr.ph.i272.preheader1109 ], [ %indvars.iv.next.i274.prol, %.lr.ph.i272.prol ]
  %i.tt = sub nsw i64 %indvars.iv.i273.ph, %.pre-phi
  %i.tu = icmp ugt i64 %i.tt, -4
  br i1 %i.tu, label %v_sum_prods.exit, label %.lr.ph.i272

.lr.ph.i272:                                      ; preds = %.lr.ph.i272.prol.loopexit, %.lr.ph.i272
  %indvars.iv.i273 = phi i64 [ %indvars.iv.next.i274.3, %.lr.ph.i272 ], [ %indvars.iv.i273.unr, %.lr.ph.i272.prol.loopexit ] ; 7 uses
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i273
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !22
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %indvars.iv.i273
  %i.ty = load double, ptr %i.tx, align 8, !tbaa !22
  %i.tz = fmul double %i.tw, %i.ty
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %indvars.iv.i273
  store double %i.tz, ptr %i.ua, align 8, !tbaa !22
  %indvars.iv.next.i274 = add nuw nsw i64 %indvars.iv.i273, 1 ; 3 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i274
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !22
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %indvars.iv.next.i274
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !22
  %i.uf = fmul double %i.uc, %i.ue
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %indvars.iv.next.i274
  store double %i.uf, ptr %i.ug, align 8, !tbaa !22
  %indvars.iv.next.i274.1 = add nuw nsw i64 %indvars.iv.i273, 2 ; 3 uses
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i274.1
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !22
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %indvars.iv.next.i274.1
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !22
  %i.ul = fmul double %i.ui, %i.uk
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %indvars.iv.next.i274.1
  store double %i.ul, ptr %i.um, align 8, !tbaa !22
  %indvars.iv.next.i274.2 = add nuw nsw i64 %indvars.iv.i273, 3 ; 3 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i274.2
  %i.uo = load double, ptr %i.un, align 8, !tbaa !22
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %indvars.iv.next.i274.2
  %i.uq = load double, ptr %i.up, align 8, !tbaa !22
  %i.ur = fmul double %i.uo, %i.uq
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %indvars.iv.next.i274.2
  store double %i.ur, ptr %i.us, align 8, !tbaa !22
  %indvars.iv.next.i274.3 = add nuw nsw i64 %indvars.iv.i273, 4 ; 2 uses
  %exitcond.not.i275.3 = icmp eq i64 %indvars.iv.next.i274.3, %.pre-phi
  br i1 %exitcond.not.i275.3, label %v_sum_prods.exit, label %.lr.ph.i272, !llvm.loop !186

bb.j:                                             ; preds = %bb.c
  %i.ut = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jf ; 3 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %.pre-phi ; 2 uses
  br i1 %i.t, label %.lr.ph.i279.preheader, label %v_sum_prods.exit

.lr.ph.i279.preheader:                            ; preds = %bb.j
  br i1 %min.iters.check1056, label %.lr.ph.i279.preheader1111, label %vector.body1059.a

vector.body1059.a:                                ; preds = %.lr.ph.i279.preheader, %vector.body1059.a
  %index1060.a = phi i64 [ %index.next1065.a, %vector.body1059.a ], [ 0, %.lr.ph.i279.preheader ] ; 4 uses
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index1060.a ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  %wide.load1061.a = load <2 x double>, ptr %i.uv, align 16, !tbaa !22
  %wide.load1062.a = load <2 x double>, ptr %i.uw, align 16, !tbaa !22
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.uu, i64 %index1060.a ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  %wide.load1063.a = load <2 x double>, ptr %i.ux, align 8, !tbaa !22
  %wide.load1064.a = load <2 x double>, ptr %i.uy, align 8, !tbaa !22
  %i.uz = fmul <2 x double> %wide.load1061.a, %wide.load1063.a
  %i.va = fmul <2 x double> %wide.load1062.a, %wide.load1064.a
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %index1060.a ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  store <2 x double> %i.uz, ptr %i.vb, align 8, !tbaa !22
  store <2 x double> %i.va, ptr %i.vc, align 8, !tbaa !22
  %index.next1065.a = add nuw i64 %index1060.a, 4 ; 2 uses
  %i.vd = icmp eq i64 %index.next1065.a, %n.vec1058
  br i1 %i.vd, label %middle.block1066.a, label %vector.body1059.a, !llvm.loop !187

middle.block1066.a:                               ; preds = %vector.body1059.a
  br i1 %cmp.n1067, label %v_sum_prods.exit, label %.lr.ph.i279.preheader1111

.lr.ph.i279.preheader1111:                        ; preds = %.lr.ph.i279.preheader, %middle.block1066.a
  %indvars.iv.i280.ph = phi i64 [ 0, %.lr.ph.i279.preheader ], [ %n.vec1058, %middle.block1066.a ]
  br label %.lr.ph.i279

.lr.ph.i279:                                      ; preds = %.lr.ph.i279.preheader1111, %.lr.ph.i279
  %indvars.iv.i280 = phi i64 [ %indvars.iv.next.i281, %.lr.ph.i279 ], [ %indvars.iv.i280.ph, %.lr.ph.i279.preheader1111 ] ; 4 uses
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i280
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !22
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.uu, i64 %indvars.iv.i280
  %i.vh = load double, ptr %i.vg, align 8, !tbaa !22
  %i.vi = fmul double %i.vf, %i.vh
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %indvars.iv.i280
  store double %i.vi, ptr %i.vj, align 8, !tbaa !22
  %indvars.iv.next.i281 = add nuw nsw i64 %indvars.iv.i280, 1 ; 2 uses
  %exitcond.not.i282 = icmp eq i64 %indvars.iv.next.i281, %.pre-phi
  br i1 %exitcond.not.i282, label %v_sum_prods.exit, label %.lr.ph.i279, !llvm.loop !188

bb.k:                                             ; preds = %bb.c
  %i.vk = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jf ; 3 uses
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %.pre-phi ; 2 uses
  br i1 %i.t, label %.lr.ph.i286.preheader, label %v_sum_prods.exit
end_hunk_0
