Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/verify-r2r?download=true
inline.NumInlined: 111
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 79
begin_hunk_0_@verify_r2r:bb.a
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %index329 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %wide.load330 = load <2 x double>, ptr %i.nv, align 8, !tbaa !35
  %wide.load331 = load <2 x double>, ptr %i.nw, align 8, !tbaa !35
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index329 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %wide.load332 = load <2 x double>, ptr %i.nx, align 8, !tbaa !35
  %wide.load333 = load <2 x double>, ptr %i.ny, align 8, !tbaa !35
  %i.nz = fadd <2 x double> %wide.load330, %wide.load332
  %i.oa = fadd <2 x double> %wide.load331, %wide.load333
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index329 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  store <2 x double> %i.nz, ptr %i.ob, align 8, !tbaa !35
  store <2 x double> %i.oa, ptr %i.oc, align 8, !tbaa !35
  %index.next334 = add nuw i64 %index329, 4       ; 2 uses
  %i.od = icmp eq i64 %index.next334, %n.vec327
  br i1 %i.od, label %middle.block335, label %vector.body328, !llvm.loop !72

middle.block335:                                  ; preds = %vector.body328
  br i1 %cmp.n336, label %raadd.exit88.i, label %.lr.ph.i84.i.preheader1052

.lr.ph.i84.i.preheader1052:                       ; preds = %.lr.ph.i84.i.preheader, %middle.block335
  %indvars.iv.i85.i.ph = phi i64 [ %n.vec327, %middle.block335 ], [ 0, %.lr.ph.i84.i.preheader ] ; 4 uses
  %i.oe = sub nsw i64 %wide.trip.count.i.i, %indvars.iv.i85.i.ph
  %xtraiter1068 = and i64 %i.oe, 7                ; 2 uses
  %lcmp.mod1069.not = icmp eq i64 %xtraiter1068, 0
  br i1 %lcmp.mod1069.not, label %.lr.ph.i84.i.prol.loopexit, label %.lr.ph.i84.i.prol

.lr.ph.i84.i.prol:                                ; preds = %.lr.ph.i84.i.preheader1052, %.lr.ph.i84.i.prol
  %indvars.iv.i85.i.prol = phi i64 [ %indvars.iv.next.i86.i.prol, %.lr.ph.i84.i.prol ], [ %indvars.iv.i85.i.ph, %.lr.ph.i84.i.preheader1052 ] ; 4 uses
  %prol.iter1070 = phi i64 [ %prol.iter1070.next, %.lr.ph.i84.i.prol ], [ 0, %.lr.ph.i84.i.preheader1052 ]
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i85.i.prol
  %i.og = load double, ptr %i.of, align 8, !tbaa !35
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i85.i.prol
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !35
  %i.oj = fadd double %i.og, %i.oi
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i85.i.prol
  store double %i.oj, ptr %i.ok, align 8, !tbaa !35
  %indvars.iv.next.i86.i.prol = add nuw nsw i64 %indvars.iv.i85.i.prol, 1 ; 2 uses
  %prol.iter1070.next = add i64 %prol.iter1070, 1 ; 2 uses
  %prol.iter1070.cmp.not = icmp eq i64 %prol.iter1070.next, %xtraiter1068
  br i1 %prol.iter1070.cmp.not, label %.lr.ph.i84.i.prol.loopexit, label %.lr.ph.i84.i.prol, !llvm.loop !73

.lr.ph.i84.i.prol.loopexit:                       ; preds = %.lr.ph.i84.i.prol, %.lr.ph.i84.i.preheader1052
  %indvars.iv.i85.i.unr = phi i64 [ %indvars.iv.i85.i.ph, %.lr.ph.i84.i.preheader1052 ], [ %indvars.iv.next.i86.i.prol, %.lr.ph.i84.i.prol ]
  %i.ol = sub nsw i64 %indvars.iv.i85.i.ph, %wide.trip.count.i.i
  %i.om = icmp ugt i64 %i.ol, -8
  br i1 %i.om, label %raadd.exit88.i, label %.lr.ph.i84.i

.lr.ph.i84.i:                                     ; preds = %.lr.ph.i84.i.prol.loopexit, %.lr.ph.i84.i
  %indvars.iv.i85.i = phi i64 [ %indvars.iv.next.i86.i.7, %.lr.ph.i84.i ], [ %indvars.iv.i85.i.unr, %.lr.ph.i84.i.prol.loopexit ] ; 11 uses
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i85.i
  %i.oo = load double, ptr %i.on, align 8, !tbaa !35
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i85.i
  %i.oq = load double, ptr %i.op, align 8, !tbaa !35
  %i.or = fadd double %i.oo, %i.oq
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i85.i
  store double %i.or, ptr %i.os, align 8, !tbaa !35
  %indvars.iv.next.i86.i = add nuw nsw i64 %indvars.iv.i85.i, 1 ; 3 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i86.i
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !35
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next.i86.i
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !35
  %i.ox = fadd double %i.ou, %i.ow
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i86.i
  store double %i.ox, ptr %i.oy, align 8, !tbaa !35
  %indvars.iv.next.i86.i.1 = add nuw nsw i64 %indvars.iv.i85.i, 2 ; 3 uses
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i86.i.1
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !35
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next.i86.i.1
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !35
  %i.pd = fadd double %i.pa, %i.pc
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i86.i.1
  store double %i.pd, ptr %i.pe, align 8, !tbaa !35
  %indvars.iv.next.i86.i.2 = add nuw nsw i64 %indvars.iv.i85.i, 3 ; 3 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i86.i.2
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !35
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next.i86.i.2
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !35
  %i.pj = fadd double %i.pg, %i.pi
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i86.i.2
  store double %i.pj, ptr %i.pk, align 8, !tbaa !35
  %indvars.iv.next.i86.i.3 = add nuw nsw i64 %indvars.iv.i85.i, 4 ; 3 uses
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i86.i.3
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !35
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next.i86.i.3
  %i.po = load double, ptr %i.pn, align 8, !tbaa !35
  %i.pp = fadd double %i.pm, %i.po
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i86.i.3
  store double %i.pp, ptr %i.pq, align 8, !tbaa !35
  %indvars.iv.next.i86.i.4 = add nuw nsw i64 %indvars.iv.i85.i, 5 ; 3 uses
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i86.i.4
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !35
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next.i86.i.4
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !35
  %i.pv = fadd double %i.ps, %i.pu
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i86.i.4
  store double %i.pv, ptr %i.pw, align 8, !tbaa !35
  %indvars.iv.next.i86.i.5 = add nuw nsw i64 %indvars.iv.i85.i, 6 ; 3 uses
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i86.i.5
  %i.py = load double, ptr %i.px, align 8, !tbaa !35
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next.i86.i.5
  %i.qa = load double, ptr %i.pz, align 8, !tbaa !35
  %i.qb = fadd double %i.py, %i.qa
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i86.i.5
  store double %i.qb, ptr %i.qc, align 8, !tbaa !35
  %indvars.iv.next.i86.i.6 = add nuw nsw i64 %indvars.iv.i85.i, 7 ; 3 uses
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i86.i.6
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !35
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next.i86.i.6
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !35
  %i.qh = fadd double %i.qe, %i.qg
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next.i86.i.6
  store double %i.qh, ptr %i.qi, align 8, !tbaa !35
  %indvars.iv.next.i86.i.7 = add nuw nsw i64 %indvars.iv.i85.i, 8 ; 2 uses
  %exitcond.not.i87.i.7 = icmp eq i64 %indvars.iv.next.i86.i.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i87.i.7, label %raadd.exit88.i, label %.lr.ph.i84.i, !llvm.loop !74

raadd.exit88.i:                                   ; preds = %.lr.ph.i84.i.prol.loopexit, %.lr.ph.i84.i, %middle.block335, %rarand.exit48.i
  %i.qj = load ptr, ptr %i.ci, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store ptr @cpyr0, ptr %12, align 8, !tbaa !140
  store ptr %i.bb, ptr %i.jf, align 8, !tbaa !40
  store ptr %i.qj, ptr %i.jg, align 8, !tbaa !41
  call void @bench_dotens2(ptr noundef %i.bo, ptr noundef %i.bn, ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  %i.qk = load ptr, ptr %i.ci, align 8, !tbaa !36
  call void @after_problem_rcopy_from(ptr noundef nonnull %0, ptr noundef %i.qk) #11
  call void @doit(i32 noundef 1, ptr noundef nonnull %0) #11
  %i.ql = load ptr, ptr %i.cn, align 8, !tbaa !42
  call void @after_problem_rcopy_to(ptr noundef nonnull %0, ptr noundef %i.ql) #11
  %i.qm = load ptr, ptr %i.cn, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  store ptr @cpyr0, ptr %11, align 8, !tbaa !140
  store ptr %i.qm, ptr %i.jh, align 8, !tbaa !40
  store ptr %i.bh, ptr %i.ji, align 8, !tbaa !41
  call void @bench_dotens2(ptr noundef %i.bn, ptr noundef %i.bo, ptr noundef nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %i.qn = call fastcc double @racmp(ptr noundef %i.bh, ptr noundef %i.bj, i32 noundef %i.j, ptr noundef nonnull @.str.8, double noundef %2)
  %i.qo = call double @dmax(double noundef %.090.i, double noundef %i.qn) #11 ; 2 uses
  %i.qp = add nuw nsw i32 %.04189.i, 1            ; 2 uses
  %exitcond.not.i128 = icmp eq i32 %i.qp, %spec.store.select
  br i1 %exitcond.not.i128, label %rlinear.exit, label %bb.q, !llvm.loop !75

rlinear.exit:                                     ; preds = %raadd.exit88.i
  store double %i.qo, ptr %3, align 8, !tbaa !143
  %i.qq = load i32, ptr %i.bl, align 8, !tbaa !22
  %i.qr = icmp sgt i32 %i.qq, 0
  br i1 %i.qr, label %.lr.ph107.i, label %t_shift.exit

rlinear.exit.thread:                              ; preds = %._crit_edge.i
  %i.qs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.ct, ptr %i.qs, align 8, !tbaa !142
  store double 0.000000e+00, ptr %3, align 8, !tbaa !143
  br label %t_shift.exit

.lr.ph107.i:                                      ; preds = %rlinear.exit
  %i.qt = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %wide.trip.count.i.i133 = zext nneg i32 %i.j to i64 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.qv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.qw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.qx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.qy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.qz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ra = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.rb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.rc = icmp slt i32 %i.i, 1
  %i.rd = icmp sgt i32 %i.j, 300
  %sext230 = shl i64 %i.d, 32                     ; 6 uses
  %i.re = ashr exact i64 %sext230, 32             ; 2 uses
  %wide.trip.count.i134 = and i64 %i.h, 4294967295 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rg = ashr exact i64 %sext230, 29
  %i.rh = ashr exact i64 %sext230, 29
  %i.ri = ashr exact i64 %sext230, 29
  %i.rj = ashr exact i64 %sext230, 29
  %i.rk = ashr exact i64 %sext230, 29
  %invariant.op1117 = sub i64 %i.ay, %i.ba
  %i.rl = sub i64 %i.be, %i.bk
  %diff.check419 = icmp ugt i64 %i.rl, -32
  br label %.lr.ph100.us.i

.lr.ph100.us.i:                                   ; preds = %._crit_edge101.us.i, %.lr.ph107.i
  %indvars.iv133.i = phi i64 [ 0, %.lr.ph107.i ], [ %indvars.iv.next134.i, %._crit_edge101.us.i ] ; 4 uses
  %.063104.us.i = phi i32 [ %i.e, %.lr.ph107.i ], [ %i.rp, %._crit_edge101.us.i ]
  %.064103.us.i = phi i32 [ 1, %.lr.ph107.i ], [ %i.axo, %._crit_edge101.us.i ] ; 5 uses
  %.065102.us.i = phi double [ 0.000000e+00, %.lr.ph107.i ], [ %i.axm, %._crit_edge101.us.i ]
  %i.rm = load ptr, ptr %i.qt, align 8, !tbaa !23
  %i.rn = getelementptr inbounds nuw [12 x i8], ptr %i.rm, i64 %indvars.iv133.i
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !26 ; 12 uses
  %i.rp = sdiv i32 %.063104.us.i, %i.ro           ; 20 uses
  %i.rq = icmp sgt i32 %.064103.us.i, 0
  %i.rr = add i32 %i.ro, -1                       ; 5 uses
  %i.rs = icmp sgt i32 %i.ro, 1                   ; 10 uses
  %i.rt = icmp sgt i32 %i.rp, 0                   ; 8 uses
  %i.ru = icmp sgt i32 %i.ro, 2
  %i.rv = and i32 %i.ro, 1
  %i.rw = icmp eq i32 %i.rv, 0
  %i.rx = lshr i32 %i.ro, 1
  %i.ry = sext i32 %i.rp to i64                   ; 43 uses
  %i.rz = sext i32 %i.ro to i64                   ; 17 uses
  %i.sa = zext nneg i32 %i.rx to i64              ; 9 uses
  %wide.trip.count358.i.us.i = zext i32 %.064103.us.i to i64 ; 6 uses
  %wide.trip.count313.i.us.i = zext nneg i32 %i.rr to i64
  %wide.trip.count.i68.us.i = zext i32 %i.rp to i64 ; 43 uses
  %wide.trip.count353.i.us.i = zext i32 %i.ro to i64 ; 5 uses
  %i.sb = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv133.i ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 4 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 12 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 24 ; 2 uses
  %i.sf = icmp slt i32 %.064103.us.i, 1
  %i.sg = icmp slt i32 %i.ro, 1
  %or.cond.i.us.not115.i = or i1 %i.sf, %i.sg
  %brmerge.i = select i1 %i.rc, i1 true, i1 %or.cond.i.us.not115.i
  %i.sh = shl nsw i64 %i.ry, 3
  %i.si = shl nuw nsw i64 %wide.trip.count353.i.us.i, 3
  %i.sj = add nsw i64 %i.si, -16
  %i.sk = mul i64 %i.sj, %i.ry
  %i.sl = shl nuw nsw i64 %wide.trip.count.i68.us.i, 3 ; 2 uses
  %i.sm = shl nsw i64 %i.rz, 3
  %i.sn = mul i64 %i.sm, %i.ry                    ; 2 uses
  %i.so = shl nuw nsw i64 %wide.trip.count353.i.us.i, 3
  %i.sp = add nsw i64 %i.so, -8
  %i.sq = mul i64 %i.sp, %i.ry
  %i.sr = shl nuw nsw i64 %wide.trip.count358.i.us.i, 3
  %i.ss = add nsw i64 %i.sr, -8
  %i.st = mul i64 %i.ss, %i.rz
  %i.su = mul i64 %i.st, %i.ry
  %i.sv = shl nuw nsw i64 %wide.trip.count.i68.us.i, 3 ; 2 uses
  %i.sw = add i64 %i.su, %i.sv
  %i.sx = shl nsw i64 %i.rz, 3
  %i.sy = mul i64 %i.sx, %i.ry
  %i.sz = add nsw i64 %wide.trip.count358.i.us.i, -1 ; 2 uses
  %i.ta = shl nsw i64 %i.sz, 3
  %i.tb = mul i64 %i.ta, %i.rz                    ; 4 uses
  %i.tc = add i64 %i.tb, 8
  %i.td = mul i64 %i.tc, %i.ry
  %i.te = shl nuw nsw i64 %wide.trip.count.i68.us.i, 3 ; 6 uses
  %i.tf = shl nsw i64 %i.ry, 3
  %i.tg = add i64 %i.tb, -8
  %i.th = shl nuw nsw i64 %i.sa, 3                ; 3 uses
  %i.ti = add i64 %i.tg, %i.th
  %i.tj = mul i64 %i.ti, %i.ry
  %i.tk = shl nuw nsw i64 %i.sa, 3
  %i.tl = add nsw i64 %i.tk, -8
  %i.tm = mul i64 %i.tl, %i.ry
  %i.tn = add i64 %i.tb, 8
  %i.to = add i64 %i.tn, %i.th
  %i.tp = mul i64 %i.to, %i.ry
  %i.tq = add i64 %i.tp, %i.te
  %i.tr = shl nuw nsw i64 %i.sa, 3
  %i.ts = add nuw nsw i64 %i.tr, 8
  %i.tt = mul i64 %i.ts, %i.ry
  %i.tu = add i64 %i.tb, %i.th
  %i.tv = mul i64 %i.tu, %i.ry
  %i.tw = add i64 %i.tv, %i.te
  %i.tx = shl nuw nsw i64 %i.sa, 3
  %i.ty = mul i64 %i.tx, %i.ry
  %i.tz = shl nsw i64 %i.sz, 3
  %i.ua = mul i64 %i.tz, %i.rz
  %23 = mul i64 %i.ua, %i.ry
  %24 = shl nsw i64 %i.rz, 3
  %i.ub = mul i64 %24, %i.ry
  %i.uc = add nsw i64 %wide.trip.count358.i.us.i, -1 ; 2 uses
  %i.ud = shl nsw i64 %i.uc, 3
  %i.ue = mul i64 %i.ud, %i.rz                    ; 3 uses
  %i.uf = add i64 %i.ue, 8
  %i.ug = mul i64 %i.uf, %i.ry
  %i.uh = shl nuw nsw i64 %wide.trip.count.i68.us.i, 3 ; 5 uses
  %i.ui = shl nsw i64 %i.ry, 3
  %i.uj = shl nuw nsw i64 %i.sa, 3                ; 2 uses
  %i.uk = add i64 %i.ue, %i.uj
  %i.ul = mul i64 %i.uk, %i.ry
  %i.um = add i64 %i.ul, %i.uh
  %i.un = shl nuw nsw i64 %i.sa, 3
  %i.uo = mul i64 %i.un, %i.ry
  %i.up = add i64 %i.ue, 8
  %i.uq = add i64 %i.up, %i.uj
  %i.ur = mul i64 %i.uq, %i.ry
  %i.us = add i64 %i.ur, %i.uh
  %i.ut = shl nuw nsw i64 %i.sa, 3
  %i.uu = add nuw nsw i64 %i.ut, 8
  %i.uv = mul i64 %i.uu, %i.ry
  %i.uw = shl nsw i64 %i.uc, 3
  %i.ux = mul i64 %i.uw, %i.rz
  %25 = mul i64 %i.ux, %i.ry
  %26 = shl nsw i64 %i.rz, 3
  %i.uy = mul i64 %26, %i.ry
  %i.uz = shl nuw nsw i64 %wide.trip.count358.i.us.i, 3
  %i.va = add nsw i64 %i.uz, -8
  %i.vb = mul i64 %i.va, %i.rz
  %i.vc = mul i64 %i.vb, %i.ry
  %i.vd = shl nuw nsw i64 %wide.trip.count.i68.us.i, 3 ; 2 uses
  %i.ve = add i64 %i.vc, %i.vd
  %i.vf = shl nsw i64 %i.ry, 3
  %i.vg = add nsw i64 %wide.trip.count.i68.us.i, -1 ; 2 uses
  %i.vh = getelementptr i8, ptr %i.ax, i64 %i.ug
  %i.vi = getelementptr i8, ptr %i.vh, i64 %i.uh
  %i.vj = getelementptr i8, ptr %i.ax, i64 %i.ui
  %i.vk = getelementptr i8, ptr %i.az, i64 %25
  %i.vl = getelementptr i8, ptr %i.vk, i64 %i.uh
  %i.vm = getelementptr i8, ptr %i.ax, i64 %i.td
  %i.vn = getelementptr i8, ptr %i.vm, i64 %i.te
  %i.vo = getelementptr i8, ptr %i.ax, i64 %i.tf
  %i.vp = getelementptr i8, ptr %i.ax, i64 %i.tj
  %i.vq = getelementptr i8, ptr %i.vp, i64 %i.te
  %i.vr = getelementptr i8, ptr %i.ax, i64 %i.tm
  %i.vs = getelementptr i8, ptr %i.az, i64 %23
  %i.vt = getelementptr i8, ptr %i.vs, i64 %i.te
  %i.vu = getelementptr i8, ptr %i.ax, i64 %i.sk
  %i.vv = getelementptr i8, ptr %i.vu, i64 %i.sl
  %i.vw = getelementptr i8, ptr %i.az, i64 %i.sq
  %i.vx = getelementptr i8, ptr %i.vw, i64 %i.sl
  %i.vy = getelementptr i8, ptr %i.az, i64 %i.sh
  %min.iters.check998 = icmp ult i32 %i.rp, 4
  %.reass1118 = add i64 %i.vf, %invariant.op1117
  %diff.check1000 = icmp ugt i64 %.reass1118, -32
  %or.cond = select i1 %min.iters.check998, i1 true, i1 %diff.check1000
  %n.vec1002 = and i64 %wide.trip.count.i68.us.i, 2147483644 ; 3 uses
  %cmp.n1009 = icmp eq i64 %n.vec1002, %wide.trip.count.i68.us.i
  %xtraiter1074 = and i64 %wide.trip.count.i68.us.i, 3 ; 3 uses
  %i.vz = icmp ult i32 %i.rp, 4
  %unroll_iter = and i64 %wide.trip.count.i68.us.i, 2147483644
  %lcmp.mod1075.not = icmp eq i64 %xtraiter1074, 0
  %lcmp.mod1076 = icmp ne i64 %xtraiter1074, 0
  %xtraiter1078 = and i64 %wide.trip.count.i68.us.i, 1
  %i.wa = icmp eq i64 %i.vg, 0
  %unroll_iter1082 = and i64 %wide.trip.count.i68.us.i, 2147483646
  %lcmp.mod1080.not = icmp eq i64 %xtraiter1078, 0
  %lcmp.mod1081 = trunc i32 %i.rp to i1
  %min.iters.check962 = icmp ult i32 %i.rp, 10
  %stride.check967 = icmp slt i64 %i.uy, 0
  %n.vec985 = and i64 %wide.trip.count.i68.us.i, 2147483646 ; 3 uses
  %cmp.n993 = icmp eq i64 %n.vec985, %wide.trip.count.i68.us.i
  %min.iters.check840 = icmp ult i32 %i.rp, 14
  %i.wb = getelementptr i8, ptr %i.az, i64 %i.uh
  %stride.check845 = icmp slt i64 %i.ub, 0
  %i.wc = insertelement <8 x i1> poison, i1 %stride.check845, i64 7
  %n.vec915 = and i64 %wide.trip.count.i68.us.i, 2147483646 ; 3 uses
  %cmp.n928 = icmp eq i64 %n.vec915, %wide.trip.count.i68.us.i
  %min.iters.check637 = icmp ult i32 %i.rp, 20
  %i.wd = getelementptr i8, ptr %i.az, i64 %i.te
  %stride.check642 = icmp slt i64 %i.sy, 0
  %n.vec728 = and i64 %wide.trip.count.i68.us.i, 2147483646 ; 3 uses
  %cmp.n740 = icmp eq i64 %n.vec728, %wide.trip.count.i68.us.i
  %xtraiter1087 = and i64 %wide.trip.count.i68.us.i, 1
  %lcmp.mod1088.not = icmp eq i64 %xtraiter1087, 0
  %i.we = add nsw i64 %wide.trip.count.i68.us.i, -1
  %min.iters.check486 = icmp ult i32 %i.rp, 10
  %stride.check491 = icmp slt i64 %i.sn, 0
  %n.vec509 = and i64 %wide.trip.count.i68.us.i, 2147483646 ; 3 uses
  %cmp.n517 = icmp eq i64 %n.vec509, %wide.trip.count.i68.us.i
  %min.iters.check440 = icmp ult i32 %i.rp, 4
  %stride.check = icmp slt i32 %i.rp, 0
  %n.vec443 = and i64 %wide.trip.count.i68.us.i, 2147483644 ; 3 uses
  %cmp.n452 = icmp eq i64 %n.vec443, %wide.trip.count.i68.us.i
  %min.iters.check417 = icmp ult i32 %i.rp, 4
  %or.cond1011 = select i1 %min.iters.check417, i1 true, i1 %diff.check419
  %n.vec421 = and i64 %wide.trip.count.i68.us.i, 2147483644 ; 3 uses
  %cmp.n430 = icmp eq i64 %n.vec421, %wide.trip.count.i68.us.i
  br label %bb.r

bb.r:                                             ; preds = %racmp.exit.us.i, %.lr.ph100.us.i
  %.098.us.i = phi i32 [ 0, %.lr.ph100.us.i ], [ %i.axn, %racmp.exit.us.i ]
  %.16697.us.i = phi double [ %.065102.us.i, %.lr.ph100.us.i ], [ %i.axm, %racmp.exit.us.i ]
  br i1 %i.bt, label %.lr.ph.i.us.i, label %rarand.exit.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.r, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %.lr.ph.i.us.i ], [ 0, %bb.r ] ; 2 uses
  %i.wf = call double @mydrand() #11
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i.us.i
  store double %i.wf, ptr %i.wg, align 8, !tbaa !35
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i133
  br i1 %exitcond.not.i.us.i, label %rarand.exit.us.i, label %.lr.ph.i.us.i, !llvm.loop !53

rarand.exit.us.i:                                 ; preds = %.lr.ph.i.us.i, %bb.r
  br i1 %i.bw, label %.lr.ph.us.i, label %._crit_edge.split.us.i

.lr.ph.us.i:                                      ; preds = %rarand.exit.us.i
  %i.wh = load ptr, ptr %i.rf, align 8, !tbaa !24
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv133.i
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !29
  br i1 %i.rq, label %.preheader275.lr.ph.i.us.i, label %._crit_edge.split.us.i

.preheader275.lr.ph.i.us.i:                       ; preds = %.lr.ph.us.i, %rarolr.exit.loopexit.us.i
  %indvars.iv.i135 = phi i64 [ %indvars.iv.next.i136, %rarolr.exit.loopexit.us.i ], [ 0, %.lr.ph.us.i ] ; 7 uses
  %i.wk = mul i64 %i.rk, %indvars.iv.i135         ; 3 uses
  %i.wl = add i64 %i.ve, %i.wk                    ; 2 uses
  %scevgep959 = getelementptr i8, ptr %i.ax, i64 %i.wl ; 2 uses
  %scevgep960 = getelementptr i8, ptr %i.az, i64 %i.wl ; 3 uses
  %i.wm = add i64 %i.vd, %i.wk
  %i.wn = mul i64 %i.rj, %indvars.iv.i135         ; 8 uses
  %scevgep828 = getelementptr i8, ptr %i.vi, i64 %i.wn ; 4 uses
  %scevgep829 = getelementptr i8, ptr %i.vj, i64 %i.wn ; 4 uses
  %i.wo = add i64 %i.um, %i.wn                    ; 2 uses
  %scevgep830 = getelementptr i8, ptr %i.ax, i64 %i.wo ; 4 uses
  %i.wp = add i64 %i.uo, %i.wn                    ; 2 uses
  %scevgep831 = getelementptr i8, ptr %i.ax, i64 %i.wp ; 4 uses
  %i.wq = add i64 %i.us, %i.wn                    ; 2 uses
  %scevgep832 = getelementptr i8, ptr %i.ax, i64 %i.wq ; 4 uses
  %i.wr = add i64 %i.uv, %i.wn                    ; 2 uses
  %scevgep833 = getelementptr i8, ptr %i.ax, i64 %i.wr ; 4 uses
  %scevgep834 = getelementptr i8, ptr %i.az, i64 %i.wq ; 4 uses
  %scevgep835 = getelementptr i8, ptr %i.az, i64 %i.wr ; 4 uses
  %scevgep836 = getelementptr i8, ptr %i.az, i64 %i.wo ; 3 uses
  %scevgep837 = getelementptr i8, ptr %i.az, i64 %i.wp ; 3 uses
  %scevgep838 = getelementptr i8, ptr %i.vl, i64 %i.wn ; 6 uses
  %i.ws = mul i64 %i.ri, %indvars.iv.i135         ; 10 uses
  %scevgep623 = getelementptr i8, ptr %i.vn, i64 %i.ws ; 4 uses
  %scevgep624 = getelementptr i8, ptr %i.vo, i64 %i.ws ; 4 uses
  %scevgep625 = getelementptr i8, ptr %i.vq, i64 %i.ws ; 3 uses
  %scevgep626 = getelementptr i8, ptr %i.vr, i64 %i.ws ; 3 uses
  %i.wt = add i64 %i.tq, %i.ws                    ; 2 uses
  %scevgep627 = getelementptr i8, ptr %i.ax, i64 %i.wt ; 4 uses
  %i.wu = add i64 %i.tt, %i.ws                    ; 2 uses
  %scevgep628 = getelementptr i8, ptr %i.ax, i64 %i.wu ; 4 uses
  %i.wv = add i64 %i.tw, %i.ws                    ; 2 uses
  %scevgep629 = getelementptr i8, ptr %i.ax, i64 %i.wv ; 4 uses
  %i.ww = add i64 %i.ty, %i.ws                    ; 2 uses
  %scevgep630 = getelementptr i8, ptr %i.ax, i64 %i.ww ; 4 uses
  %scevgep631 = getelementptr i8, ptr %i.az, i64 %i.wt ; 7 uses
  %scevgep632 = getelementptr i8, ptr %i.az, i64 %i.wu ; 7 uses
  %scevgep633 = getelementptr i8, ptr %i.az, i64 %i.wv ; 6 uses
  %scevgep634 = getelementptr i8, ptr %i.az, i64 %i.ww ; 6 uses
  %scevgep635 = getelementptr i8, ptr %i.vt, i64 %i.ws ; 2 uses
  %i.wx = mul i64 %i.rh, %indvars.iv.i135         ; 3 uses
  %i.wy = add i64 %i.sw, %i.wx                    ; 2 uses
  %scevgep483 = getelementptr i8, ptr %i.ax, i64 %i.wy ; 2 uses
  %scevgep484 = getelementptr i8, ptr %i.az, i64 %i.wy ; 3 uses
  %i.wz = add i64 %i.sv, %i.wx
  %i.xa = mul i64 %i.rg, %indvars.iv.i135         ; 4 uses
  %i.xb = mul nsw i64 %indvars.iv.i135, %i.re     ; 2 uses
  %i.xc = getelementptr [8 x i8], ptr %i.az, i64 %i.xb ; 63 uses
  %i.xd = getelementptr [8 x i8], ptr %i.ax, i64 %i.xb ; 55 uses
  %i.xe = insertelement <4 x ptr> poison, ptr %scevgep635, i64 0 ; 3 uses
  %i.xf = insertelement <4 x ptr> %i.xe, ptr %scevgep633, i64 1
  %i.xg = insertelement <4 x ptr> %i.xf, ptr %scevgep631, i64 2
  %i.xh = insertelement <4 x ptr> %i.xg, ptr %scevgep629, i64 3
  %i.xi = insertelement <4 x ptr> poison, ptr %i.xc, i64 0 ; 4 uses
  %i.xj = insertelement <4 x ptr> %i.xi, ptr %scevgep634, i64 1
  %i.xk = insertelement <4 x ptr> %i.xj, ptr %scevgep632, i64 2
  %i.xl = insertelement <4 x ptr> %i.xk, ptr %scevgep630, i64 3
  %i.xm = insertelement <4 x ptr> poison, ptr %scevgep626, i64 0 ; 2 uses
  %i.xn = insertelement <4 x ptr> %i.xm, ptr %i.xc, i64 1
  %i.xo = insertelement <4 x ptr> %i.xn, ptr %scevgep632, i64 2
  %i.xp = insertelement <4 x ptr> %i.xo, ptr %scevgep634, i64 3
  %i.xq = insertelement <4 x ptr> %i.xe, ptr %scevgep623, i64 1
  %i.xr = insertelement <4 x ptr> %i.xq, ptr %scevgep633, i64 2
  %i.xs = insertelement <4 x ptr> %i.xr, ptr %scevgep629, i64 3
  %i.xt = insertelement <4 x ptr> %i.xi, ptr %scevgep624, i64 1
  %i.xu = insertelement <4 x ptr> %i.xt, ptr %scevgep634, i64 2
  %i.xv = insertelement <4 x ptr> %i.xu, ptr %scevgep630, i64 3
  %i.xw = insertelement <4 x ptr> poison, ptr %scevgep625, i64 0 ; 2 uses
  %i.xx = insertelement <4 x ptr> %i.xw, ptr %scevgep635, i64 1
  %i.xy = insertelement <4 x ptr> %i.xx, ptr %scevgep631, i64 2
  %i.xz = insertelement <4 x ptr> %i.xy, ptr %scevgep633, i64 3
  %i.ya = insertelement <4 x ptr> %i.xm, ptr %scevgep634, i64 1
  %i.yb = insertelement <4 x ptr> %i.ya, ptr %scevgep630, i64 2
  %i.yc = insertelement <4 x ptr> %i.yb, ptr %scevgep632, i64 3
  %i.yd = insertelement <4 x ptr> poison, ptr %scevgep633, i64 0 ; 2 uses
  %i.ye = insertelement <4 x ptr> %i.yd, ptr %scevgep623, i64 1
  %i.yf = insertelement <4 x ptr> %i.ye, ptr %scevgep631, i64 2
  %i.yg = insertelement <4 x ptr> %i.yf, ptr %scevgep627, i64 3
  %i.yh = insertelement <4 x ptr> poison, ptr %scevgep634, i64 0 ; 2 uses
  %i.yi = insertelement <4 x ptr> %i.yh, ptr %scevgep624, i64 1
  %i.yj = insertelement <4 x ptr> %i.yi, ptr %scevgep632, i64 2
  %i.yk = insertelement <4 x ptr> %i.yj, ptr %scevgep628, i64 3
  %i.yl = insertelement <4 x ptr> %i.xw, ptr %scevgep633, i64 1
  %i.ym = insertelement <4 x ptr> %i.yl, ptr %scevgep629, i64 2
  %i.yn = insertelement <4 x ptr> %i.ym, ptr %scevgep631, i64 3
  %i.yo = shufflevector <4 x ptr> %i.xi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.yp = insertelement <4 x ptr> %i.yd, ptr %scevgep631, i64 1
  %i.yq = insertelement <4 x ptr> %i.yp, ptr %scevgep629, i64 2
  %i.yr = insertelement <4 x ptr> %i.yq, ptr %scevgep627, i64 3
  %i.ys = insertelement <4 x ptr> %i.yh, ptr %scevgep632, i64 1
  %i.yt = insertelement <4 x ptr> %i.ys, ptr %scevgep630, i64 2
  %i.yu = insertelement <4 x ptr> %i.yt, ptr %scevgep628, i64 3
  %i.yv = shufflevector <4 x ptr> %i.xe, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.yw = insertelement <2 x ptr> poison, ptr %scevgep628, i64 0
  %i.yx = insertelement <2 x ptr> %i.yw, ptr %scevgep626, i64 1
  %i.yy = insertelement <2 x ptr> poison, ptr %scevgep633, i64 0
  %i.yz = insertelement <2 x ptr> %i.yy, ptr %scevgep631, i64 1
  %i.za = insertelement <2 x ptr> poison, ptr %scevgep634, i64 0
  %i.zb = insertelement <2 x ptr> %i.za, ptr %scevgep632, i64 1
  %i.zc = insertelement <2 x ptr> poison, ptr %scevgep627, i64 0
  %i.zd = insertelement <2 x ptr> %i.zc, ptr %scevgep625, i64 1
  %i.ze = insertelement <4 x ptr> poison, ptr %scevgep837, i64 0
  %i.zf = shufflevector <4 x ptr> %i.ze, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.zg = insertelement <4 x ptr> poison, ptr %scevgep834, i64 0 ; 2 uses
  %i.zh = insertelement <4 x ptr> %i.zg, ptr %scevgep832, i64 1
  %i.zi = insertelement <4 x ptr> %i.zh, ptr %scevgep830, i64 2
  %i.zj = insertelement <4 x ptr> %i.zi, ptr %scevgep828, i64 3
  %i.zk = insertelement <2 x ptr> poison, ptr %scevgep832, i64 0
  %i.zl = insertelement <2 x ptr> %i.zk, ptr %scevgep830, i64 1
  %i.zm = insertelement <4 x ptr> poison, ptr %scevgep835, i64 0 ; 2 uses
  %i.zn = insertelement <4 x ptr> %i.zm, ptr %scevgep833, i64 1
  %i.zo = insertelement <4 x ptr> %i.zn, ptr %scevgep831, i64 2
  %i.zp = insertelement <4 x ptr> %i.zo, ptr %scevgep829, i64 3
  %i.zq = insertelement <4 x ptr> poison, ptr %scevgep836, i64 0
  %i.zr = shufflevector <4 x ptr> %i.zq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.zs = insertelement <2 x ptr> poison, ptr %scevgep833, i64 0
  %i.zt = insertelement <2 x ptr> %i.zs, ptr %scevgep831, i64 1
  %i.zu = shufflevector <4 x ptr> %i.zg, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.zv = shufflevector <4 x ptr> %i.zm, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.zw = insertelement <4 x ptr> poison, ptr %scevgep838, i64 0
  %i.zx = insertelement <4 x ptr> %i.zw, ptr %scevgep836, i64 1
  %i.zy = insertelement <4 x ptr> %i.zx, ptr %scevgep834, i64 2
  %i.zz = insertelement <4 x ptr> %i.zy, ptr %scevgep832, i64 3
  %i.aaa = insertelement <4 x ptr> %i.xi, ptr %scevgep837, i64 1
  %i.aab = insertelement <4 x ptr> %i.aaa, ptr %scevgep835, i64 2
  %i.aac = insertelement <4 x ptr> %i.aab, ptr %scevgep833, i64 3
  %i.aad = getelementptr i8, ptr %i.vv, i64 %i.xa
  %i.aae = getelementptr i8, ptr %i.ax, i64 %i.xa
  %i.aaf = getelementptr i8, ptr %i.vx, i64 %i.xa
  %i.aag = getelementptr i8, ptr %i.vy, i64 %i.xa
  %bound0980 = icmp ult ptr %i.xc, %scevgep959
  %bound1981 = icmp ult ptr %i.xd, %scevgep960
  %found.conflict982 = and i1 %bound0980, %bound1981
  %i.aah = getelementptr i8, ptr %i.wb, i64 %i.wn
  %bound0866 = icmp ult ptr %i.xc, %scevgep836
  %bound1867 = icmp ult ptr %scevgep837, %scevgep838
  %found.conflict868 = and i1 %bound0866, %bound1867
  %bound0870 = icmp ult ptr %i.xc, %scevgep834
  %bound1871 = icmp ult ptr %scevgep835, %scevgep838
  %found.conflict872 = and i1 %bound0870, %bound1871
  %bound0874 = icmp ult ptr %i.xc, %scevgep832
  %bound1875 = icmp ult ptr %scevgep833, %scevgep838
  %found.conflict876 = and i1 %bound0874, %bound1875
  %bound0878 = icmp ult ptr %i.xc, %scevgep830
  %bound1879 = icmp ult ptr %scevgep831, %scevgep838
  %found.conflict880 = and i1 %bound0878, %bound1879
  %bound0882 = icmp ult ptr %i.xc, %scevgep828
  %bound1883 = icmp ult ptr %scevgep829, %scevgep838
  %found.conflict884 = and i1 %bound0882, %bound1883
  %i.aai = icmp ult <4 x ptr> %i.zf, %i.zj
  %i.aaj = icmp ult <4 x ptr> %i.zp, %i.zr
  %i.aak = icmp ult <2 x ptr> %i.zv, %i.zl
  %i.aal = icmp ult <2 x ptr> %i.zt, %i.zu
  %bound0910 = icmp ult ptr %scevgep835, %scevgep828
  %bound1911 = icmp ult ptr %scevgep829, %scevgep834
  %i.aam = insertelement <8 x i1> %i.wc, i1 %bound0910, i64 6
  %i.aan = shufflevector <4 x i1> %i.aai, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aao = shufflevector <8 x i1> %i.aan, <8 x i1> %i.aam, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.aap = shufflevector <2 x i1> %i.aak, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aaq = shufflevector <8 x i1> %i.aao, <8 x i1> %i.aap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.aar = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1911, i64 6
  %i.aas = shufflevector <4 x i1> %i.aaj, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aat = shufflevector <8 x i1> %i.aas, <8 x i1> %i.aar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.aau = shufflevector <2 x i1> %i.aal, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
end_hunk_0
begin_hunk_1_@verify_r2r:bb.a
  br i1 %i.rt, label %.lr.ph.i69.us.i, label %.loopexit.i.us.i

.lr.ph.i69.us.i:                                  ; preds = %bb.z
  %i.acu = sitofp i32 %.1247.i.us.i to double     ; 5 uses
  %i.acv = trunc i64 %indvars.iv355.i.us.i to i32
  %i.acw = add i32 %i.acv, 1
  %i.acx = mul i32 %i.acw, %i.ro                  ; 2 uses
  %i.acy = add nsw i32 %i.acx, -1
  %i.acz = mul nsw i32 %i.acy, %i.rp
  %i.ada = uitofp nneg i32 %.1244.i.us.i to double ; 5 uses
  %i.adb = add nsw i32 %i.acx, -2
  %i.adc = mul nsw i32 %i.adb, %i.rp
  %i.add = sext i32 %i.acz to i64                 ; 5 uses
  %i.ade = sext i32 %i.adc to i64
  %invariant.gep393.i.us.i = getelementptr [8 x i8], ptr %i.xd, i64 %i.ade ; 5 uses
  br i1 %i.vz, label %.epil.preheader, label %.lr.ph.i69.us.i.new

.lr.ph.i69.us.i.new:                              ; preds = %.lr.ph.i69.us.i, %bb.ah
  %indvars.iv315.i.us.i = phi i64 [ %indvars.iv.next316.i.us.i.3, %bb.ah ], [ 0, %.lr.ph.i69.us.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %bb.ah ], [ 0, %.lr.ph.i69.us.i ]
  %i.adf = add nsw i64 %indvars.iv315.i.us.i, %i.add ; 2 uses
  %i.adg = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.adf
  %i.adh = load double, ptr %i.adg, align 8, !tbaa !35
  br i1 %i.rs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i69.us.i.new
  %gep394.i.us.i = getelementptr [8 x i8], ptr %invariant.gep393.i.us.i, i64 %indvars.iv315.i.us.i
  %i.adi = load double, ptr %gep394.i.us.i, align 8, !tbaa !35
  %i.adj = fmul double %i.adi, %i.ada
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i69.us.i.new
  %i.adk = phi double [ %i.adj, %bb.aa ], [ 0.000000e+00, %.lr.ph.i69.us.i.new ]
  %i.adl = call double @llvm.fmuladd.f64(double %i.acu, double %i.adh, double %i.adk)
  %i.adm = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.adf
  store double %i.adl, ptr %i.adm, align 8, !tbaa !35
  %indvars.iv.next316.i.us.i = or disjoint i64 %indvars.iv315.i.us.i, 1 ; 2 uses
  %i.adn = add nsw i64 %indvars.iv.next316.i.us.i, %i.add ; 2 uses
  %i.ado = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.adn
  %i.adp = load double, ptr %i.ado, align 8, !tbaa !35
  br i1 %i.rs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %gep394.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep393.i.us.i, i64 %indvars.iv.next316.i.us.i
  %i.adq = load double, ptr %gep394.i.us.i.1, align 8, !tbaa !35
  %i.adr = fmul double %i.adq, %i.ada
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ads = phi double [ %i.adr, %bb.ac ], [ 0.000000e+00, %bb.ab ]
  %i.adt = call double @llvm.fmuladd.f64(double %i.acu, double %i.adp, double %i.ads)
  %i.adu = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.adn
  store double %i.adt, ptr %i.adu, align 8, !tbaa !35
  %indvars.iv.next316.i.us.i.1 = or disjoint i64 %indvars.iv315.i.us.i, 2 ; 2 uses
  %i.adv = add nsw i64 %indvars.iv.next316.i.us.i.1, %i.add ; 2 uses
  %i.adw = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.adv
  %i.adx = load double, ptr %i.adw, align 8, !tbaa !35
  br i1 %i.rs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %gep394.i.us.i.2 = getelementptr [8 x i8], ptr %invariant.gep393.i.us.i, i64 %indvars.iv.next316.i.us.i.1
  %i.ady = load double, ptr %gep394.i.us.i.2, align 8, !tbaa !35
  %i.adz = fmul double %i.ady, %i.ada
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.aea = phi double [ %i.adz, %bb.ae ], [ 0.000000e+00, %bb.ad ]
  %i.aeb = call double @llvm.fmuladd.f64(double %i.acu, double %i.adx, double %i.aea)
  %i.aec = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.adv
  store double %i.aeb, ptr %i.aec, align 8, !tbaa !35
  %indvars.iv.next316.i.us.i.2 = or disjoint i64 %indvars.iv315.i.us.i, 3 ; 2 uses
  %i.aed = add nsw i64 %indvars.iv.next316.i.us.i.2, %i.add ; 2 uses
  %i.aee = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.aed
  %i.aef = load double, ptr %i.aee, align 8, !tbaa !35
  br i1 %i.rs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %gep394.i.us.i.3 = getelementptr [8 x i8], ptr %invariant.gep393.i.us.i, i64 %indvars.iv.next316.i.us.i.2
  %i.aeg = load double, ptr %gep394.i.us.i.3, align 8, !tbaa !35
  %i.aeh = fmul double %i.aeg, %i.ada
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.aei = phi double [ %i.aeh, %bb.ag ], [ 0.000000e+00, %bb.af ]
  %i.aej = call double @llvm.fmuladd.f64(double %i.acu, double %i.aef, double %i.aei)
  %i.aek = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.aed
  store double %i.aej, ptr %i.aek, align 8, !tbaa !35
  %indvars.iv.next316.i.us.i.3 = add nuw nsw i64 %indvars.iv315.i.us.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader273.i.us.i.unr-lcssa, label %.lr.ph.i69.us.i.new, !llvm.loop !80

.preheader273.i.us.i.unr-lcssa:                   ; preds = %bb.ah
  br i1 %lcmp.mod1075.not, label %.preheader273.i.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader273.i.us.i.unr-lcssa, %.lr.ph.i69.us.i
  %indvars.iv315.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.i69.us.i ], [ %indvars.iv.next316.i.us.i.3, %.preheader273.i.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1076)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.epil.preheader
  %indvars.iv315.i.us.i.epil = phi i64 [ %indvars.iv315.i.us.i.epil.init, %.epil.preheader ], [ %indvars.iv.next316.i.us.i.epil, %bb.ak ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ak ]
  %i.ael = add nsw i64 %indvars.iv315.i.us.i.epil, %i.add ; 2 uses
  %i.aem = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.ael
  %i.aen = load double, ptr %i.aem, align 8, !tbaa !35
  br i1 %i.rs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %gep394.i.us.i.epil = getelementptr [8 x i8], ptr %invariant.gep393.i.us.i, i64 %indvars.iv315.i.us.i.epil
  %i.aeo = load double, ptr %gep394.i.us.i.epil, align 8, !tbaa !35
  %i.aep = fmul double %i.aeo, %i.ada
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.aeq = phi double [ %i.aep, %bb.aj ], [ 0.000000e+00, %bb.ai ]
  %i.aer = call double @llvm.fmuladd.f64(double %i.acu, double %i.aen, double %i.aeq)
  %i.aes = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.ael
  store double %i.aer, ptr %i.aes, align 8, !tbaa !35
  %indvars.iv.next316.i.us.i.epil = add nuw nsw i64 %indvars.iv315.i.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1074
  br i1 %epil.iter.cmp.not, label %.preheader273.i.us.i, label %bb.ai, !llvm.loop !81

.preheader273.i.us.i:                             ; preds = %bb.ak, %.preheader273.i.us.i.unr-lcssa
  %i.aet = sitofp i32 %.1253.i.us.i to double     ; 3 uses
  %i.aeu = mul nsw i64 %indvars.iv355.i.us.i, %i.rz ; 2 uses
  %i.aev = mul nsw i64 %i.aeu, %i.ry              ; 3 uses
  %i.aew = uitofp nneg i32 %.1250.i.us.i to double ; 3 uses
  %i.aex = add nuw nsw i64 %i.aeu, 1
  %i.aey = mul nsw i64 %i.aex, %i.ry
  %invariant.gep395.i.us.i = getelementptr [8 x i8], ptr %i.xd, i64 %i.aey ; 3 uses
  br i1 %i.wa, label %.epil.preheader1077, label %.preheader273.i.us.i.new

.preheader273.i.us.i.new:                         ; preds = %.preheader273.i.us.i, %bb.ao
  %indvars.iv320.i.us.i = phi i64 [ %indvars.iv.next321.i.us.i.1, %bb.ao ], [ 0, %.preheader273.i.us.i ] ; 4 uses
  %niter1083 = phi i64 [ %niter1083.next.1, %bb.ao ], [ 0, %.preheader273.i.us.i ]
  %i.aez = add nsw i64 %indvars.iv320.i.us.i, %i.aev ; 2 uses
  %i.afa = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.aez
  %i.afb = load double, ptr %i.afa, align 8, !tbaa !35
  br i1 %i.rs, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.preheader273.i.us.i.new
  %gep396.i.us.i = getelementptr [8 x i8], ptr %invariant.gep395.i.us.i, i64 %indvars.iv320.i.us.i
  %i.afc = load double, ptr %gep396.i.us.i, align 8, !tbaa !35
  %i.afd = fmul double %i.afc, %i.aew
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.preheader273.i.us.i.new
  %i.afe = phi double [ %i.afd, %bb.al ], [ 0.000000e+00, %.preheader273.i.us.i.new ]
  %i.aff = call double @llvm.fmuladd.f64(double %i.aet, double %i.afb, double %i.afe)
  %i.afg = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.aez ; 2 uses
  %i.afh = load double, ptr %i.afg, align 8, !tbaa !35
  %i.afi = fadd double %i.afh, %i.aff
  store double %i.afi, ptr %i.afg, align 8, !tbaa !35
  %indvars.iv.next321.i.us.i = or disjoint i64 %indvars.iv320.i.us.i, 1 ; 2 uses
  %i.afj = add nsw i64 %indvars.iv.next321.i.us.i, %i.aev ; 2 uses
  %i.afk = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.afj
  %i.afl = load double, ptr %i.afk, align 8, !tbaa !35
  br i1 %i.rs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %gep396.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep395.i.us.i, i64 %indvars.iv.next321.i.us.i
  %i.afm = load double, ptr %gep396.i.us.i.1, align 8, !tbaa !35
  %i.afn = fmul double %i.afm, %i.aew
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.afo = phi double [ %i.afn, %bb.an ], [ 0.000000e+00, %bb.am ]
  %i.afp = call double @llvm.fmuladd.f64(double %i.aet, double %i.afl, double %i.afo)
  %i.afq = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.afj ; 2 uses
  %i.afr = load double, ptr %i.afq, align 8, !tbaa !35
  %i.afs = fadd double %i.afr, %i.afp
  store double %i.afs, ptr %i.afq, align 8, !tbaa !35
  %indvars.iv.next321.i.us.i.1 = add nuw nsw i64 %indvars.iv320.i.us.i, 2 ; 2 uses
  %niter1083.next.1 = add i64 %niter1083, 2       ; 2 uses
  %niter1083.ncmp.1 = icmp eq i64 %niter1083.next.1, %unroll_iter1082
  br i1 %niter1083.ncmp.1, label %.loopexit.i.us.i.loopexit1048.unr-lcssa, label %.preheader273.i.us.i.new, !llvm.loop !82

bb.ap:                                            ; preds = %._crit_edge278.split.i.us.i
  br i1 %i.ru, label %bb.aq, label %.preheader271.i.us.i

.preheader271.i.us.i:                             ; preds = %bb.ap
  br i1 %i.rt, label %.lr.ph284.i.us.i, label %.loopexit.i.us.i

.lr.ph284.i.us.i:                                 ; preds = %.preheader271.i.us.i
  %i.aft = mul nsw i64 %indvars.iv355.i.us.i, %i.rz ; 2 uses
  %i.afu = mul nsw i64 %i.aft, %i.ry              ; 6 uses
  %i.afv = trunc nsw i64 %i.aft to i32
  %i.afw = add i32 %i.rr, %i.afv
  %i.afx = mul nsw i32 %i.afw, %i.rp
  %i.afy = sext i32 %i.afx to i64                 ; 7 uses
  br i1 %min.iters.check962, label %scalar.ph961.preheader, label %vector.memcheck963

vector.memcheck963:                               ; preds = %.lr.ph284.i.us.i
  %i.afz = shl nsw i64 %i.afy, 3                  ; 2 uses
  %i.aga = add i64 %i.wk, %i.afz                  ; 2 uses
  %i.agb = getelementptr i8, ptr %i.az, i64 %i.aga ; 3 uses
  %i.agc = add i64 %i.wm, %i.afz                  ; 2 uses
  %i.agd = getelementptr i8, ptr %i.az, i64 %i.agc ; 3 uses
  %27 = getelementptr i8, ptr %i.ax, i64 %i.aga   ; 2 uses
  %28 = getelementptr i8, ptr %i.ax, i64 %i.agc   ; 2 uses
  %bound0964 = icmp ult ptr %i.agb, %scevgep960
  %bound1965 = icmp ult ptr %i.xc, %i.agd
  %found.conflict966 = and i1 %bound0964, %bound1965
  %29 = or i1 %found.conflict966, %stride.check967
  %bound0968 = icmp ult ptr %i.agb, %28
  %bound1969 = icmp ult ptr %27, %i.agd
  %found.conflict970 = and i1 %bound0968, %bound1969
  %conflict.rdx971 = or i1 %29, %found.conflict970
  %bound0972 = icmp ult ptr %i.agb, %scevgep959
  %bound1973 = icmp ult ptr %i.xd, %i.agd
  %found.conflict974 = and i1 %bound0972, %bound1973
  %conflict.rdx975 = or i1 %conflict.rdx971, %found.conflict974
  %bound0976 = icmp ult ptr %i.xc, %28
  %bound1977 = icmp ult ptr %27, %scevgep960
  %found.conflict978 = and i1 %bound0976, %bound1977
  %conflict.rdx979 = or i1 %conflict.rdx975, %found.conflict978
  %conflict.rdx983 = or i1 %conflict.rdx979, %found.conflict982
  br i1 %conflict.rdx983, label %scalar.ph961.preheader, label %vector.body986

vector.body986:                                   ; preds = %vector.memcheck963, %vector.body986
  %index987 = phi i64 [ %index.next991, %vector.body986 ], [ 0, %vector.memcheck963 ] ; 3 uses
  %i.age = add nsw i64 %index987, %i.afu          ; 2 uses
  %i.agf = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.age
  %wide.load988 = load <2 x double>, ptr %i.agf, align 8, !tbaa !35, !alias.scope !144
  %i.agg = add nsw i64 %index987, %i.afy          ; 2 uses
  %i.agh = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.agg
  store <2 x double> %wide.load988, ptr %i.agh, align 8, !tbaa !35, !alias.scope !145, !noalias !146
  %i.agi = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.agg
  %wide.load989 = load <2 x double>, ptr %i.agi, align 8, !tbaa !35, !alias.scope !147
  %i.agj = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.age ; 2 uses
  %wide.load990 = load <2 x double>, ptr %i.agj, align 8, !tbaa !35, !alias.scope !148, !noalias !149
  %i.agk = fadd <2 x double> %wide.load989, %wide.load990
  store <2 x double> %i.agk, ptr %i.agj, align 8, !tbaa !35, !alias.scope !148, !noalias !149
  %index.next991 = add nuw i64 %index987, 2       ; 2 uses
  %i.agl = icmp eq i64 %index.next991, %n.vec985
  br i1 %i.agl, label %middle.block992, label %vector.body986, !llvm.loop !88

middle.block992:                                  ; preds = %vector.body986
  br i1 %cmp.n993, label %.loopexit.i.us.i, label %scalar.ph961.preheader

scalar.ph961.preheader:                           ; preds = %vector.memcheck963, %.lr.ph284.i.us.i, %middle.block992
  %indvars.iv325.i.us.i.ph = phi i64 [ 0, %vector.memcheck963 ], [ 0, %.lr.ph284.i.us.i ], [ %n.vec985, %middle.block992 ] ; 4 uses
  %i.agm = sub nsw i64 %wide.trip.count.i68.us.i, %indvars.iv325.i.us.i.ph
  %xtraiter1084 = and i64 %i.agm, 3               ; 2 uses
  %lcmp.mod1085.not = icmp eq i64 %xtraiter1084, 0
  br i1 %lcmp.mod1085.not, label %scalar.ph961.prol.loopexit, label %scalar.ph961.prol

scalar.ph961.prol:                                ; preds = %scalar.ph961.preheader, %scalar.ph961.prol
  %indvars.iv325.i.us.i.prol = phi i64 [ %indvars.iv.next326.i.us.i.prol, %scalar.ph961.prol ], [ %indvars.iv325.i.us.i.ph, %scalar.ph961.preheader ] ; 3 uses
  %prol.iter1086 = phi i64 [ %prol.iter1086.next, %scalar.ph961.prol ], [ 0, %scalar.ph961.preheader ]
  %i.agn = add nsw i64 %indvars.iv325.i.us.i.prol, %i.afu ; 2 uses
  %i.ago = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.agn
  %i.agp = load double, ptr %i.ago, align 8, !tbaa !35
  %i.agq = add nsw i64 %indvars.iv325.i.us.i.prol, %i.afy ; 2 uses
  %i.agr = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.agq
  store double %i.agp, ptr %i.agr, align 8, !tbaa !35
  %i.ags = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.agq
  %i.agt = load double, ptr %i.ags, align 8, !tbaa !35
  %i.agu = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.agn ; 2 uses
  %i.agv = load double, ptr %i.agu, align 8, !tbaa !35
  %i.agw = fadd double %i.agt, %i.agv
  store double %i.agw, ptr %i.agu, align 8, !tbaa !35
  %indvars.iv.next326.i.us.i.prol = add nuw nsw i64 %indvars.iv325.i.us.i.prol, 1 ; 2 uses
  %prol.iter1086.next = add i64 %prol.iter1086, 1 ; 2 uses
  %prol.iter1086.cmp.not = icmp eq i64 %prol.iter1086.next, %xtraiter1084
  br i1 %prol.iter1086.cmp.not, label %scalar.ph961.prol.loopexit, label %scalar.ph961.prol, !llvm.loop !89

scalar.ph961.prol.loopexit:                       ; preds = %scalar.ph961.prol, %scalar.ph961.preheader
  %indvars.iv325.i.us.i.unr = phi i64 [ %indvars.iv325.i.us.i.ph, %scalar.ph961.preheader ], [ %indvars.iv.next326.i.us.i.prol, %scalar.ph961.prol ]
  %i.agx = sub nsw i64 %indvars.iv325.i.us.i.ph, %wide.trip.count.i68.us.i
  %i.agy = icmp ugt i64 %i.agx, -4
  br i1 %i.agy, label %.loopexit.i.us.i, label %scalar.ph961

scalar.ph961:                                     ; preds = %scalar.ph961.prol.loopexit, %scalar.ph961
  %indvars.iv325.i.us.i = phi i64 [ %indvars.iv.next326.i.us.i.3, %scalar.ph961 ], [ %indvars.iv325.i.us.i.unr, %scalar.ph961.prol.loopexit ] ; 6 uses
  %i.agz = add nsw i64 %indvars.iv325.i.us.i, %i.afu ; 2 uses
  %i.aha = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.agz
  %i.ahb = load double, ptr %i.aha, align 8, !tbaa !35
  %i.ahc = add nsw i64 %indvars.iv325.i.us.i, %i.afy ; 2 uses
  %i.ahd = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.ahc
  store double %i.ahb, ptr %i.ahd, align 8, !tbaa !35
  %i.ahe = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.ahc
  %i.ahf = load double, ptr %i.ahe, align 8, !tbaa !35
  %i.ahg = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.agz ; 2 uses
  %i.ahh = load double, ptr %i.ahg, align 8, !tbaa !35
  %i.ahi = fadd double %i.ahf, %i.ahh
  store double %i.ahi, ptr %i.ahg, align 8, !tbaa !35
  %indvars.iv.next326.i.us.i = add nuw nsw i64 %indvars.iv325.i.us.i, 1 ; 2 uses
  %i.ahj = add nsw i64 %indvars.iv.next326.i.us.i, %i.afu ; 2 uses
  %i.ahk = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.ahj
  %i.ahl = load double, ptr %i.ahk, align 8, !tbaa !35
  %i.ahm = add nsw i64 %indvars.iv.next326.i.us.i, %i.afy ; 2 uses
  %i.ahn = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.ahm
  store double %i.ahl, ptr %i.ahn, align 8, !tbaa !35
  %i.aho = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.ahm
  %i.ahp = load double, ptr %i.aho, align 8, !tbaa !35
  %i.ahq = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.ahj ; 2 uses
  %i.ahr = load double, ptr %i.ahq, align 8, !tbaa !35
  %i.ahs = fadd double %i.ahp, %i.ahr
  store double %i.ahs, ptr %i.ahq, align 8, !tbaa !35
  %indvars.iv.next326.i.us.i.1 = add nuw nsw i64 %indvars.iv325.i.us.i, 2 ; 2 uses
  %i.aht = add nsw i64 %indvars.iv.next326.i.us.i.1, %i.afu ; 2 uses
  %i.ahu = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.aht
  %i.ahv = load double, ptr %i.ahu, align 8, !tbaa !35
  %i.ahw = add nsw i64 %indvars.iv.next326.i.us.i.1, %i.afy ; 2 uses
  %i.ahx = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.ahw
  store double %i.ahv, ptr %i.ahx, align 8, !tbaa !35
  %i.ahy = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.ahw
  %i.ahz = load double, ptr %i.ahy, align 8, !tbaa !35
  %i.aia = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.aht ; 2 uses
  %i.aib = load double, ptr %i.aia, align 8, !tbaa !35
  %i.aic = fadd double %i.ahz, %i.aib
  store double %i.aic, ptr %i.aia, align 8, !tbaa !35
  %indvars.iv.next326.i.us.i.2 = add nuw nsw i64 %indvars.iv325.i.us.i, 3 ; 2 uses
  %i.aid = add nsw i64 %indvars.iv.next326.i.us.i.2, %i.afu ; 2 uses
  %i.aie = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.aid
  %i.aif = load double, ptr %i.aie, align 8, !tbaa !35
  %i.aig = add nsw i64 %indvars.iv.next326.i.us.i.2, %i.afy ; 2 uses
  %i.aih = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.aig
  store double %i.aif, ptr %i.aih, align 8, !tbaa !35
  %i.aii = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.aig
  %i.aij = load double, ptr %i.aii, align 8, !tbaa !35
  %i.aik = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.aid ; 2 uses
  %i.ail = load double, ptr %i.aik, align 8, !tbaa !35
  %i.aim = fadd double %i.aij, %i.ail
  store double %i.aim, ptr %i.aik, align 8, !tbaa !35
  %indvars.iv.next326.i.us.i.3 = add nuw nsw i64 %indvars.iv325.i.us.i, 4 ; 2 uses
  %exitcond329.not.i.us.i.3 = icmp eq i64 %indvars.iv.next326.i.us.i.3, %wide.trip.count.i68.us.i
  br i1 %exitcond329.not.i.us.i.3, label %.loopexit.i.us.i, label %scalar.ph961, !llvm.loop !90

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.rw, label %.preheader267.i.us.i, label %.preheader269.i.us.i

.preheader269.i.us.i:                             ; preds = %bb.aq
  br i1 %i.rt, label %.lr.ph286.i.us.i, label %._crit_edge296.split.i.us.i

.lr.ph286.i.us.i:                                 ; preds = %.preheader269.i.us.i
  %i.ain = mul nuw nsw i64 %indvars.iv355.i.us.i, %i.rz ; 6 uses
  %i.aio = trunc nsw i64 %i.ain to i32
  %i.aip = add i32 %i.rr, %i.aio
  %i.aiq = mul nsw i32 %i.aip, %i.rp
  %i.air = add nuw nsw i64 %i.ain, 1
  %i.ais = mul nuw nsw i64 %i.air, %i.ry
  %i.ait = mul nuw nsw i64 %i.ain, %i.ry
  %i.aiu = add nuw nsw i64 %i.ain, %i.sa          ; 2 uses
  %i.aiv = mul nuw nsw i64 %i.aiu, %i.ry          ; 2 uses
  %i.aiw = add nuw nsw i64 %i.aiu, 1
  %i.aix = mul nuw nsw i64 %i.aiw, %i.ry          ; 2 uses
  %i.aiy = sext i32 %i.aiq to i64                 ; 2 uses
  %invariant.gep397.i.us.i = getelementptr [8 x i8], ptr %i.xc, i64 %i.aiy ; 5 uses
  %invariant.gep399.i.us.i = getelementptr [8 x i8], ptr %i.xd, i64 %i.ais ; 2 uses
  %invariant.gep401.i.us.i = getelementptr [8 x i8], ptr %i.xc, i64 %i.ait ; 2 uses
  br i1 %min.iters.check840, label %scalar.ph839.preheader, label %vector.memcheck841

vector.memcheck841:                               ; preds = %.lr.ph286.i.us.i
  %i.aiz = shl nsw i64 %i.aiy, 3
  %i.aja = getelementptr i8, ptr %i.aah, i64 %i.aiz ; 3 uses
  %i.ajb = insertelement <4 x ptr> poison, ptr %invariant.gep397.i.us.i, i64 0
  %i.ajc = shufflevector <4 x ptr> %i.ajb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ajd = icmp ult <4 x ptr> %i.ajc, %i.zz
  %i.aje = insertelement <4 x ptr> poison, ptr %i.aja, i64 0
  %i.ajf = shufflevector <4 x ptr> %i.aje, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ajg = icmp ult <4 x ptr> %i.aac, %i.ajf
  %i.ajh = and <4 x i1> %i.ajd, %i.ajg
  %bound0858 = icmp ult ptr %invariant.gep397.i.us.i, %scevgep830
  %bound1859 = icmp ult ptr %scevgep831, %i.aja
  %found.conflict860 = and i1 %bound0858, %bound1859
  %bound0862 = icmp ult ptr %invariant.gep397.i.us.i, %scevgep828
  %bound1863 = icmp ult ptr %scevgep829, %i.aja
  %found.conflict864 = and i1 %bound0862, %bound1863
  %i.aji = bitcast <4 x i1> %i.ajh to i4
  %i.ajj = icmp ne i4 %i.aji, 0
  %op.rdx1037 = or i1 %i.ajj, %found.conflict860
  %op.rdx1038 = or i1 %found.conflict864, %found.conflict868
  %op.rdx1041 = or i1 %op.rdx1037, %op.rdx1038
  %op.rdx1044.reass = or i1 %op.rdx1041, %invariant.op
  br i1 %op.rdx1044.reass, label %scalar.ph839.preheader, label %vector.body916

vector.body916:                                   ; preds = %vector.memcheck841, %vector.body916
  %index917 = phi i64 [ %index.next926, %vector.body916 ], [ 0, %vector.memcheck841 ] ; 6 uses
  %i.ajk = getelementptr [8 x i8], ptr %invariant.gep397.i.us.i, i64 %index917
  store <2 x double> zeroinitializer, ptr %i.ajk, align 8, !tbaa !35, !alias.scope !150, !noalias !151
  %i.ajl = getelementptr [8 x i8], ptr %invariant.gep399.i.us.i, i64 %index917
  %wide.load918 = load <2 x double>, ptr %i.ajl, align 8, !tbaa !35, !alias.scope !152
  %i.ajm = getelementptr [8 x i8], ptr %invariant.gep401.i.us.i, i64 %index917 ; 2 uses
  %wide.load919 = load <2 x double>, ptr %i.ajm, align 8, !tbaa !35, !alias.scope !153, !noalias !154
  %i.ajn = fadd <2 x double> %wide.load918, %wide.load919
  store <2 x double> %i.ajn, ptr %i.ajm, align 8, !tbaa !35, !alias.scope !153, !noalias !154
  %i.ajo = add nuw nsw i64 %index917, %i.aiv      ; 2 uses
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.ajo ; 2 uses
  %wide.load920 = load <2 x double>, ptr %i.ajp, align 8, !tbaa !35, !alias.scope !155
  %i.ajq = add nuw nsw i64 %index917, %i.aix      ; 2 uses
  %i.ajr = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.ajq
  %wide.load921 = load <2 x double>, ptr %i.ajr, align 8, !tbaa !35, !alias.scope !156 ; 2 uses
  %i.ajs = fsub <2 x double> %wide.load920, %wide.load921
  %i.ajt = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.ajo ; 2 uses
  %wide.load922 = load <2 x double>, ptr %i.ajt, align 8, !tbaa !35, !alias.scope !157, !noalias !158
  %i.aju = fadd <2 x double> %wide.load922, %i.ajs
  store <2 x double> %i.aju, ptr %i.ajt, align 8, !tbaa !35, !alias.scope !157, !noalias !158
  %i.ajv = fneg <2 x double> %wide.load921
  %wide.load924 = load <2 x double>, ptr %i.ajp, align 8, !tbaa !35, !alias.scope !155
  %i.ajw = fsub <2 x double> %i.ajv, %wide.load924
  %i.ajx = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.ajq ; 2 uses
  %wide.load925 = load <2 x double>, ptr %i.ajx, align 8, !tbaa !35, !alias.scope !159, !noalias !160
  %i.ajy = fadd <2 x double> %wide.load925, %i.ajw
  store <2 x double> %i.ajy, ptr %i.ajx, align 8, !tbaa !35, !alias.scope !159, !noalias !160
  %index.next926 = add nuw i64 %index917, 2       ; 2 uses
  %i.ajz = icmp eq i64 %index.next926, %n.vec915
  br i1 %i.ajz, label %middle.block927, label %vector.body916, !llvm.loop !99

middle.block927:                                  ; preds = %vector.body916
  br i1 %cmp.n928, label %.preheader.preheader.i.us.i, label %scalar.ph839.preheader

scalar.ph839.preheader:                           ; preds = %vector.memcheck841, %.lr.ph286.i.us.i, %middle.block927
end_hunk_1
begin_hunk_2_@verify_r2r:bb.a

.preheader267.i.us.i:                             ; preds = %bb.aq
  br i1 %i.rt, label %.lr.ph288.i.us.i, label %._crit_edge296.split.i.us.i

.lr.ph288.i.us.i:                                 ; preds = %.preheader267.i.us.i
  %i.aku = mul nuw nsw i64 %indvars.iv355.i.us.i, %i.rz ; 7 uses
  %i.akv = trunc nsw i64 %i.aku to i32
  %i.akw = add i32 %i.rr, %i.akv
  %i.akx = mul nsw i32 %i.akw, %i.rp
  %i.aky = or disjoint i64 %i.aku, 1
  %i.akz = mul nuw nsw i64 %i.aky, %i.ry
  %i.ala = mul nuw nsw i64 %i.aku, %i.ry
  %i.alb = add nuw nsw i64 %i.aku, %i.sa          ; 3 uses
  %i.alc = add nsw i64 %i.alb, -1
  %i.ald = mul nsw i64 %i.alc, %i.ry
  %i.ale = add nuw nsw i64 %i.alb, 1
  %i.alf = mul nuw nsw i64 %i.ale, %i.ry          ; 4 uses
  %i.alg = mul nuw nsw i64 %i.alb, %i.ry          ; 4 uses
  %i.alh = sext i32 %i.akx to i64                 ; 2 uses
  %invariant.gep403.i.us.i = getelementptr [8 x i8], ptr %i.xc, i64 %i.alh ; 8 uses
  %invariant.gep405.i.us.i = getelementptr [8 x i8], ptr %i.xd, i64 %i.akz ; 4 uses
  %invariant.gep407.i.us.i = getelementptr [8 x i8], ptr %i.xc, i64 %i.ala ; 4 uses
  %invariant.gep409.i.us.i = getelementptr [8 x i8], ptr %i.xd, i64 %i.ald ; 4 uses
  br i1 %min.iters.check637, label %scalar.ph636.preheader, label %vector.memcheck638

vector.memcheck638:                               ; preds = %.lr.ph288.i.us.i
  %i.ali = shl nsw i64 %i.alh, 3
  %i.alj = getelementptr i8, ptr %i.aaz, i64 %i.ali ; 4 uses
  %i.alk = insertelement <4 x ptr> poison, ptr %invariant.gep403.i.us.i, i64 0
  %i.all = shufflevector <4 x ptr> %i.alk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.alm = icmp ult <4 x ptr> %i.all, %i.xh
  %i.aln = insertelement <4 x ptr> poison, ptr %i.alj, i64 0
  %i.alo = shufflevector <4 x ptr> %i.aln, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.alp = icmp ult <4 x ptr> %i.xl, %i.alo
  %i.alq = and <4 x i1> %i.alm, %i.alp
  %bound0655 = icmp ult ptr %invariant.gep403.i.us.i, %scevgep627
  %bound1656 = icmp ult ptr %scevgep628, %i.alj
  %found.conflict657 = and i1 %bound0655, %bound1656
  %bound0659 = icmp ult ptr %invariant.gep403.i.us.i, %scevgep625
  %bound1660 = icmp ult ptr %scevgep626, %i.alj
  %found.conflict661 = and i1 %bound0659, %bound1660
  %bound0663 = icmp ult ptr %invariant.gep403.i.us.i, %scevgep623
  %bound1664 = icmp ult ptr %scevgep624, %i.alj
  %found.conflict665 = and i1 %bound0663, %bound1664
  %rdx.op1012.reass = or <4 x i1> %i.alq, %invariant.op1103
  %i.alr = bitcast <4 x i1> %rdx.op1012.reass to i4
  %i.als = icmp ne i4 %i.alr, 0
  %op.rdx1023 = or i1 %i.abw, %found.conflict657
  %op.rdx1024 = or i1 %found.conflict661, %found.conflict665
  %op.rdx1025 = or i1 %op.rdx1023, %op.rdx1024
  %op.rdx1026 = or i1 %op.rdx1025, %i.als
  br i1 %op.rdx1026, label %scalar.ph636.preheader, label %vector.body729

vector.body729:                                   ; preds = %vector.memcheck638, %vector.body729
  %index730 = phi i64 [ %index.next738, %vector.body729 ], [ 0, %vector.memcheck638 ] ; 7 uses
  %i.alt = getelementptr [8 x i8], ptr %invariant.gep403.i.us.i, i64 %index730
  store <2 x double> zeroinitializer, ptr %i.alt, align 8, !tbaa !35, !alias.scope !161, !noalias !162
  %i.alu = getelementptr [8 x i8], ptr %invariant.gep405.i.us.i, i64 %index730
  %wide.load731 = load <2 x double>, ptr %i.alu, align 8, !tbaa !35, !alias.scope !163
  %i.alv = getelementptr [8 x i8], ptr %invariant.gep407.i.us.i, i64 %index730 ; 2 uses
  %wide.load732 = load <2 x double>, ptr %i.alv, align 8, !tbaa !35, !alias.scope !164, !noalias !165
  %i.alw = fadd <2 x double> %wide.load731, %wide.load732
  store <2 x double> %i.alw, ptr %i.alv, align 8, !tbaa !35, !alias.scope !164, !noalias !165
  %i.alx = getelementptr [8 x i8], ptr %invariant.gep409.i.us.i, i64 %index730
  %wide.load733 = load <2 x double>, ptr %i.alx, align 8, !tbaa !35, !alias.scope !166
  %i.aly = add nuw nsw i64 %index730, %i.alf      ; 2 uses
  %i.alz = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.aly
  %wide.load734 = load <2 x double>, ptr %i.alz, align 8, !tbaa !35, !alias.scope !167
  %i.ama = fsub <2 x double> %wide.load733, %wide.load734
  %i.amb = add nuw nsw i64 %index730, %i.alg      ; 2 uses
  %i.amc = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.amb ; 2 uses
  %wide.load735 = load <2 x double>, ptr %i.amc, align 8, !tbaa !35, !alias.scope !168, !noalias !169
  %i.amd = fadd <2 x double> %wide.load735, %i.ama
  store <2 x double> %i.amd, ptr %i.amc, align 8, !tbaa !35, !alias.scope !168, !noalias !169
  %i.ame = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.amb
  %wide.load736 = load <2 x double>, ptr %i.ame, align 8, !tbaa !35, !alias.scope !170
  %i.amf = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.aly ; 2 uses
  %wide.load737 = load <2 x double>, ptr %i.amf, align 8, !tbaa !35, !alias.scope !171, !noalias !172
  %i.amg = fsub <2 x double> %wide.load737, %wide.load736
  store <2 x double> %i.amg, ptr %i.amf, align 8, !tbaa !35, !alias.scope !171, !noalias !172
  %index.next738 = add nuw i64 %index730, 2       ; 2 uses
  %i.amh = icmp eq i64 %index.next738, %n.vec728
  br i1 %i.amh, label %middle.block739, label %vector.body729, !llvm.loop !110

middle.block739:                                  ; preds = %vector.body729
  br i1 %cmp.n740, label %.preheader.preheader.i.us.i, label %scalar.ph636.preheader

scalar.ph636.preheader:                           ; preds = %vector.memcheck638, %.lr.ph288.i.us.i, %middle.block739
  %indvars.iv335.i.us.i.ph = phi i64 [ 0, %vector.memcheck638 ], [ 0, %.lr.ph288.i.us.i ], [ %n.vec728, %middle.block739 ] ; 9 uses
  br i1 %lcmp.mod1088.not, label %scalar.ph636.prol.loopexit, label %scalar.ph636.prol

scalar.ph636.prol:                                ; preds = %scalar.ph636.preheader
  %gep404.i.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep403.i.us.i, i64 %indvars.iv335.i.us.i.ph
  store double 0.000000e+00, ptr %gep404.i.us.i.prol, align 8, !tbaa !35
  %gep406.i.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep405.i.us.i, i64 %indvars.iv335.i.us.i.ph
  %i.ami = load double, ptr %gep406.i.us.i.prol, align 8, !tbaa !35
  %gep408.i.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep407.i.us.i, i64 %indvars.iv335.i.us.i.ph ; 2 uses
  %i.amj = load double, ptr %gep408.i.us.i.prol, align 8, !tbaa !35
  %i.amk = fadd double %i.ami, %i.amj
  store double %i.amk, ptr %gep408.i.us.i.prol, align 8, !tbaa !35
  %gep410.i.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep409.i.us.i, i64 %indvars.iv335.i.us.i.ph
  %i.aml = load double, ptr %gep410.i.us.i.prol, align 8, !tbaa !35
  %i.amm = add nuw nsw i64 %indvars.iv335.i.us.i.ph, %i.alf ; 2 uses
  %i.amn = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.amm
  %i.amo = load double, ptr %i.amn, align 8, !tbaa !35
  %i.amp = fsub double %i.aml, %i.amo
  %i.amq = add nuw nsw i64 %indvars.iv335.i.us.i.ph, %i.alg ; 2 uses
  %i.amr = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.amq ; 2 uses
  %i.ams = load double, ptr %i.amr, align 8, !tbaa !35
  %i.amt = fadd double %i.ams, %i.amp
  store double %i.amt, ptr %i.amr, align 8, !tbaa !35
  %i.amu = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.amq
  %i.amv = load double, ptr %i.amu, align 8, !tbaa !35
  %i.amw = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.amm ; 2 uses
  %i.amx = load double, ptr %i.amw, align 8, !tbaa !35
  %i.amy = fsub double %i.amx, %i.amv
  store double %i.amy, ptr %i.amw, align 8, !tbaa !35
  %indvars.iv.next336.i.us.i.prol = or disjoint i64 %indvars.iv335.i.us.i.ph, 1
  br label %scalar.ph636.prol.loopexit

scalar.ph636.prol.loopexit:                       ; preds = %scalar.ph636.prol, %scalar.ph636.preheader
  %indvars.iv335.i.us.i.unr = phi i64 [ %indvars.iv335.i.us.i.ph, %scalar.ph636.preheader ], [ %indvars.iv.next336.i.us.i.prol, %scalar.ph636.prol ]
  %i.amz = icmp eq i64 %indvars.iv335.i.us.i.ph, %i.we
  br i1 %i.amz, label %.preheader.preheader.i.us.i, label %scalar.ph636

scalar.ph636:                                     ; preds = %scalar.ph636.prol.loopexit, %scalar.ph636
  %indvars.iv335.i.us.i = phi i64 [ %indvars.iv.next336.i.us.i.1, %scalar.ph636 ], [ %indvars.iv335.i.us.i.unr, %scalar.ph636.prol.loopexit ] ; 8 uses
  %gep404.i.us.i = getelementptr [8 x i8], ptr %invariant.gep403.i.us.i, i64 %indvars.iv335.i.us.i
  store double 0.000000e+00, ptr %gep404.i.us.i, align 8, !tbaa !35
  %gep406.i.us.i = getelementptr [8 x i8], ptr %invariant.gep405.i.us.i, i64 %indvars.iv335.i.us.i
  %i.ana = load double, ptr %gep406.i.us.i, align 8, !tbaa !35
  %gep408.i.us.i = getelementptr [8 x i8], ptr %invariant.gep407.i.us.i, i64 %indvars.iv335.i.us.i ; 2 uses
  %i.anb = load double, ptr %gep408.i.us.i, align 8, !tbaa !35
  %i.anc = fadd double %i.ana, %i.anb
  store double %i.anc, ptr %gep408.i.us.i, align 8, !tbaa !35
  %gep410.i.us.i = getelementptr [8 x i8], ptr %invariant.gep409.i.us.i, i64 %indvars.iv335.i.us.i
  %i.and = load double, ptr %gep410.i.us.i, align 8, !tbaa !35
  %i.ane = add nuw nsw i64 %indvars.iv335.i.us.i, %i.alf ; 2 uses
  %i.anf = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.ane
  %i.ang = load double, ptr %i.anf, align 8, !tbaa !35
  %i.anh = fsub double %i.and, %i.ang
  %i.ani = add nuw nsw i64 %indvars.iv335.i.us.i, %i.alg ; 2 uses
  %i.anj = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.ani ; 2 uses
  %i.ank = load double, ptr %i.anj, align 8, !tbaa !35
  %i.anl = fadd double %i.ank, %i.anh
  store double %i.anl, ptr %i.anj, align 8, !tbaa !35
  %i.anm = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.ani
  %i.ann = load double, ptr %i.anm, align 8, !tbaa !35
  %i.ano = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.ane ; 2 uses
  %i.anp = load double, ptr %i.ano, align 8, !tbaa !35
  %i.anq = fsub double %i.anp, %i.ann
  store double %i.anq, ptr %i.ano, align 8, !tbaa !35
  %indvars.iv.next336.i.us.i = add nuw nsw i64 %indvars.iv335.i.us.i, 1 ; 6 uses
  %gep404.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep403.i.us.i, i64 %indvars.iv.next336.i.us.i
  store double 0.000000e+00, ptr %gep404.i.us.i.1, align 8, !tbaa !35
  %gep406.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep405.i.us.i, i64 %indvars.iv.next336.i.us.i
  %i.anr = load double, ptr %gep406.i.us.i.1, align 8, !tbaa !35
  %gep408.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep407.i.us.i, i64 %indvars.iv.next336.i.us.i ; 2 uses
  %i.ans = load double, ptr %gep408.i.us.i.1, align 8, !tbaa !35
  %i.ant = fadd double %i.anr, %i.ans
  store double %i.ant, ptr %gep408.i.us.i.1, align 8, !tbaa !35
  %gep410.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep409.i.us.i, i64 %indvars.iv.next336.i.us.i
  %i.anu = load double, ptr %gep410.i.us.i.1, align 8, !tbaa !35
  %i.anv = add nuw nsw i64 %indvars.iv.next336.i.us.i, %i.alf ; 2 uses
  %i.anw = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.anv
  %i.anx = load double, ptr %i.anw, align 8, !tbaa !35
  %i.any = fsub double %i.anu, %i.anx
  %i.anz = add nuw nsw i64 %indvars.iv.next336.i.us.i, %i.alg ; 2 uses
  %i.aoa = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.anz ; 2 uses
  %i.aob = load double, ptr %i.aoa, align 8, !tbaa !35
  %i.aoc = fadd double %i.aob, %i.any
  store double %i.aoc, ptr %i.aoa, align 8, !tbaa !35
  %i.aod = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.anz
  %i.aoe = load double, ptr %i.aod, align 8, !tbaa !35
  %i.aof = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.anv ; 2 uses
  %i.aog = load double, ptr %i.aof, align 8, !tbaa !35
  %i.aoh = fsub double %i.aog, %i.aoe
  store double %i.aoh, ptr %i.aof, align 8, !tbaa !35
  %indvars.iv.next336.i.us.i.1 = add nuw nsw i64 %indvars.iv335.i.us.i, 2 ; 2 uses
  %exitcond339.not.i.us.i.1 = icmp eq i64 %indvars.iv.next336.i.us.i.1, %wide.trip.count.i68.us.i
  br i1 %exitcond339.not.i.us.i.1, label %.preheader.preheader.i.us.i, label %scalar.ph636, !llvm.loop !111

bb.ar:                                            ; preds = %._crit_edge278.split.i.us.i, %._crit_edge278.split.i.us.i
  br i1 %i.rt, label %.lr.ph291.i.us.i, label %.loopexit.i.us.i

.lr.ph291.i.us.i:                                 ; preds = %bb.ar
  %i.aoi = mul nsw i64 %indvars.iv355.i.us.i, %i.rz ; 2 uses
  %i.aoj = mul nsw i64 %i.aoi, %i.ry              ; 6 uses
  %i.aok = trunc nsw i64 %i.aoi to i32
  %i.aol = add i32 %i.rr, %i.aok
  %i.aom = mul nsw i32 %i.aol, %i.rp
  %i.aon = sext i32 %i.aom to i64                 ; 7 uses
  br i1 %min.iters.check486, label %scalar.ph485.preheader, label %vector.memcheck487

vector.memcheck487:                               ; preds = %.lr.ph291.i.us.i
  %i.aoo = shl nsw i64 %i.aon, 3                  ; 2 uses
  %i.aop = add i64 %i.wx, %i.aoo                  ; 2 uses
  %i.aoq = getelementptr i8, ptr %i.az, i64 %i.aop ; 3 uses
  %i.aor = add i64 %i.wz, %i.aoo                  ; 2 uses
  %i.aos = getelementptr i8, ptr %i.az, i64 %i.aor ; 3 uses
  %30 = getelementptr i8, ptr %i.ax, i64 %i.aop   ; 2 uses
  %31 = getelementptr i8, ptr %i.ax, i64 %i.aor   ; 2 uses
  %bound0488 = icmp ult ptr %i.aoq, %scevgep484
  %bound1489 = icmp ult ptr %i.xc, %i.aos
  %found.conflict490 = and i1 %bound0488, %bound1489
  %32 = or i1 %found.conflict490, %stride.check491
  %bound0492 = icmp ult ptr %i.aoq, %31
  %bound1493 = icmp ult ptr %30, %i.aos
  %found.conflict494 = and i1 %bound0492, %bound1493
  %conflict.rdx495 = or i1 %32, %found.conflict494
  %bound0496 = icmp ult ptr %i.aoq, %scevgep483
  %bound1497 = icmp ult ptr %i.xd, %i.aos
  %found.conflict498 = and i1 %bound0496, %bound1497
  %conflict.rdx499 = or i1 %conflict.rdx495, %found.conflict498
  %bound0500 = icmp ult ptr %i.xc, %31
  %bound1501 = icmp ult ptr %30, %scevgep484
  %found.conflict502 = and i1 %bound0500, %bound1501
  %conflict.rdx503 = or i1 %conflict.rdx499, %found.conflict502
  %conflict.rdx507 = or i1 %conflict.rdx503, %found.conflict506
  br i1 %conflict.rdx507, label %scalar.ph485.preheader, label %vector.body510

vector.body510:                                   ; preds = %vector.memcheck487, %vector.body510
  %index511 = phi i64 [ %index.next515, %vector.body510 ], [ 0, %vector.memcheck487 ] ; 3 uses
  %i.aot = add nsw i64 %index511, %i.aoj          ; 2 uses
  %i.aou = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.aot
  %wide.load512 = load <2 x double>, ptr %i.aou, align 8, !tbaa !35, !alias.scope !173
  %i.aov = add nsw i64 %index511, %i.aon          ; 2 uses
  %i.aow = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.aov
  store <2 x double> %wide.load512, ptr %i.aow, align 8, !tbaa !35, !alias.scope !174, !noalias !175
  %i.aox = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.aov
  %wide.load513 = load <2 x double>, ptr %i.aox, align 8, !tbaa !35, !alias.scope !176
  %i.aoy = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.aot ; 2 uses
  %wide.load514 = load <2 x double>, ptr %i.aoy, align 8, !tbaa !35, !alias.scope !177, !noalias !178
  %i.aoz = fadd <2 x double> %wide.load513, %wide.load514
  store <2 x double> %i.aoz, ptr %i.aoy, align 8, !tbaa !35, !alias.scope !177, !noalias !178
  %index.next515 = add nuw i64 %index511, 2       ; 2 uses
  %i.apa = icmp eq i64 %index.next515, %n.vec509
  br i1 %i.apa, label %middle.block516, label %vector.body510, !llvm.loop !117

middle.block516:                                  ; preds = %vector.body510
  br i1 %cmp.n517, label %.loopexit.i.us.i, label %scalar.ph485.preheader

scalar.ph485.preheader:                           ; preds = %vector.memcheck487, %.lr.ph291.i.us.i, %middle.block516
  %indvars.iv340.i.us.i.ph = phi i64 [ 0, %vector.memcheck487 ], [ 0, %.lr.ph291.i.us.i ], [ %n.vec509, %middle.block516 ] ; 4 uses
  %i.apb = sub nsw i64 %wide.trip.count.i68.us.i, %indvars.iv340.i.us.i.ph
  %xtraiter1090 = and i64 %i.apb, 3               ; 2 uses
  %lcmp.mod1091.not = icmp eq i64 %xtraiter1090, 0
  br i1 %lcmp.mod1091.not, label %scalar.ph485.prol.loopexit, label %scalar.ph485.prol

scalar.ph485.prol:                                ; preds = %scalar.ph485.preheader, %scalar.ph485.prol
  %indvars.iv340.i.us.i.prol = phi i64 [ %indvars.iv.next341.i.us.i.prol, %scalar.ph485.prol ], [ %indvars.iv340.i.us.i.ph, %scalar.ph485.preheader ] ; 3 uses
  %prol.iter1092 = phi i64 [ %prol.iter1092.next, %scalar.ph485.prol ], [ 0, %scalar.ph485.preheader ]
  %i.apc = add nsw i64 %indvars.iv340.i.us.i.prol, %i.aoj ; 2 uses
  %i.apd = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.apc
  %i.ape = load double, ptr %i.apd, align 8, !tbaa !35
  %i.apf = add nsw i64 %indvars.iv340.i.us.i.prol, %i.aon ; 2 uses
  %i.apg = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.apf
  store double %i.ape, ptr %i.apg, align 8, !tbaa !35
  %i.aph = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.apf
  %i.api = load double, ptr %i.aph, align 8, !tbaa !35
  %i.apj = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.apc ; 2 uses
  %i.apk = load double, ptr %i.apj, align 8, !tbaa !35
  %i.apl = fadd double %i.api, %i.apk
  store double %i.apl, ptr %i.apj, align 8, !tbaa !35
  %indvars.iv.next341.i.us.i.prol = add nuw nsw i64 %indvars.iv340.i.us.i.prol, 1 ; 2 uses
  %prol.iter1092.next = add i64 %prol.iter1092, 1 ; 2 uses
  %prol.iter1092.cmp.not = icmp eq i64 %prol.iter1092.next, %xtraiter1090
  br i1 %prol.iter1092.cmp.not, label %scalar.ph485.prol.loopexit, label %scalar.ph485.prol, !llvm.loop !118

scalar.ph485.prol.loopexit:                       ; preds = %scalar.ph485.prol, %scalar.ph485.preheader
  %indvars.iv340.i.us.i.unr = phi i64 [ %indvars.iv340.i.us.i.ph, %scalar.ph485.preheader ], [ %indvars.iv.next341.i.us.i.prol, %scalar.ph485.prol ]
  %i.apm = sub nsw i64 %indvars.iv340.i.us.i.ph, %wide.trip.count.i68.us.i
  %i.apn = icmp ugt i64 %i.apm, -4
  br i1 %i.apn, label %.loopexit.i.us.i, label %scalar.ph485

scalar.ph485:                                     ; preds = %scalar.ph485.prol.loopexit, %scalar.ph485
  %indvars.iv340.i.us.i = phi i64 [ %indvars.iv.next341.i.us.i.3, %scalar.ph485 ], [ %indvars.iv340.i.us.i.unr, %scalar.ph485.prol.loopexit ] ; 6 uses
  %i.apo = add nsw i64 %indvars.iv340.i.us.i, %i.aoj ; 2 uses
  %i.app = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.apo
  %i.apq = load double, ptr %i.app, align 8, !tbaa !35
  %i.apr = add nsw i64 %indvars.iv340.i.us.i, %i.aon ; 2 uses
  %i.aps = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.apr
  store double %i.apq, ptr %i.aps, align 8, !tbaa !35
  %i.apt = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.apr
  %i.apu = load double, ptr %i.apt, align 8, !tbaa !35
  %i.apv = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.apo ; 2 uses
  %i.apw = load double, ptr %i.apv, align 8, !tbaa !35
  %i.apx = fadd double %i.apu, %i.apw
  store double %i.apx, ptr %i.apv, align 8, !tbaa !35
  %indvars.iv.next341.i.us.i = add nuw nsw i64 %indvars.iv340.i.us.i, 1 ; 2 uses
  %i.apy = add nsw i64 %indvars.iv.next341.i.us.i, %i.aoj ; 2 uses
  %i.apz = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.apy
  %i.aqa = load double, ptr %i.apz, align 8, !tbaa !35
  %i.aqb = add nsw i64 %indvars.iv.next341.i.us.i, %i.aon ; 2 uses
  %i.aqc = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.aqb
  store double %i.aqa, ptr %i.aqc, align 8, !tbaa !35
  %i.aqd = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.aqb
  %i.aqe = load double, ptr %i.aqd, align 8, !tbaa !35
  %i.aqf = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.apy ; 2 uses
  %i.aqg = load double, ptr %i.aqf, align 8, !tbaa !35
  %i.aqh = fadd double %i.aqe, %i.aqg
  store double %i.aqh, ptr %i.aqf, align 8, !tbaa !35
  %indvars.iv.next341.i.us.i.1 = add nuw nsw i64 %indvars.iv340.i.us.i, 2 ; 2 uses
  %i.aqi = add nsw i64 %indvars.iv.next341.i.us.i.1, %i.aoj ; 2 uses
  %i.aqj = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.aqi
  %i.aqk = load double, ptr %i.aqj, align 8, !tbaa !35
  %i.aql = add nsw i64 %indvars.iv.next341.i.us.i.1, %i.aon ; 2 uses
  %i.aqm = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.aql
  store double %i.aqk, ptr %i.aqm, align 8, !tbaa !35
  %i.aqn = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.aql
  %i.aqo = load double, ptr %i.aqn, align 8, !tbaa !35
  %i.aqp = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.aqi ; 2 uses
  %i.aqq = load double, ptr %i.aqp, align 8, !tbaa !35
  %i.aqr = fadd double %i.aqo, %i.aqq
  store double %i.aqr, ptr %i.aqp, align 8, !tbaa !35
  %indvars.iv.next341.i.us.i.2 = add nuw nsw i64 %indvars.iv340.i.us.i, 3 ; 2 uses
  %i.aqs = add nsw i64 %indvars.iv.next341.i.us.i.2, %i.aoj ; 2 uses
  %i.aqt = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.aqs
  %i.aqu = load double, ptr %i.aqt, align 8, !tbaa !35
  %i.aqv = add nsw i64 %indvars.iv.next341.i.us.i.2, %i.aon ; 2 uses
  %i.aqw = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.aqv
  store double %i.aqu, ptr %i.aqw, align 8, !tbaa !35
  %i.aqx = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.aqv
  %i.aqy = load double, ptr %i.aqx, align 8, !tbaa !35
  %i.aqz = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.aqs ; 2 uses
  %i.ara = load double, ptr %i.aqz, align 8, !tbaa !35
  %i.arb = fadd double %i.aqy, %i.ara
  store double %i.arb, ptr %i.aqz, align 8, !tbaa !35
  %indvars.iv.next341.i.us.i.3 = add nuw nsw i64 %indvars.iv340.i.us.i, 4 ; 2 uses
  %exitcond344.not.i.us.i.3 = icmp eq i64 %indvars.iv.next341.i.us.i.3, %wide.trip.count.i68.us.i
  br i1 %exitcond344.not.i.us.i.3, label %.loopexit.i.us.i, label %scalar.ph485, !llvm.loop !119

.loopexit.i.us.i.loopexit1048.unr-lcssa:          ; preds = %bb.ao
  br i1 %lcmp.mod1080.not, label %.loopexit.i.us.i, label %.epil.preheader1077

.epil.preheader1077:                              ; preds = %.loopexit.i.us.i.loopexit1048.unr-lcssa, %.preheader273.i.us.i
  %indvars.iv320.i.us.i.epil.init = phi i64 [ 0, %.preheader273.i.us.i ], [ %indvars.iv.next321.i.us.i.1, %.loopexit.i.us.i.loopexit1048.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1081)
  %i.arc = add nsw i64 %indvars.iv320.i.us.i.epil.init, %i.aev ; 2 uses
  %i.ard = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.arc
  %i.are = load double, ptr %i.ard, align 8, !tbaa !35
  br i1 %i.rs, label %bb.as, label %.loopexit.i.us.i.loopexit1048.epilog-lcssa

bb.as:                                            ; preds = %.epil.preheader1077
  %gep396.i.us.i.epil = getelementptr [8 x i8], ptr %invariant.gep395.i.us.i, i64 %indvars.iv320.i.us.i.epil.init
  %i.arf = load double, ptr %gep396.i.us.i.epil, align 8, !tbaa !35
  %i.arg = fmul double %i.arf, %i.aew
  br label %.loopexit.i.us.i.loopexit1048.epilog-lcssa

.loopexit.i.us.i.loopexit1048.epilog-lcssa:       ; preds = %bb.as, %.epil.preheader1077
  %i.arh = phi double [ %i.arg, %bb.as ], [ 0.000000e+00, %.epil.preheader1077 ]
  %i.ari = call double @llvm.fmuladd.f64(double %i.aet, double %i.are, double %i.arh)
  %i.arj = getelementptr inbounds [8 x i8], ptr %i.xc, i64 %i.arc ; 2 uses
  %i.ark = load double, ptr %i.arj, align 8, !tbaa !35
  %i.arl = fadd double %i.ark, %i.ari
  store double %i.arl, ptr %i.arj, align 8, !tbaa !35
  br label %.loopexit.i.us.i

.loopexit.i.us.i:                                 ; preds = %.loopexit.i.us.i.loopexit1048.epilog-lcssa, %.loopexit.i.us.i.loopexit1048.unr-lcssa, %scalar.ph961.prol.loopexit, %scalar.ph961, %scalar.ph485.prol.loopexit, %scalar.ph485, %middle.block992, %middle.block516, %bb.ar, %.preheader271.i.us.i, %bb.z, %._crit_edge278.split.i.us.i
  %.2254.i.us.i = phi i32 [ %.0252297.i.us.i, %._crit_edge278.split.i.us.i ], [ %.0252297.i.us.i, %middle.block992 ], [ %.0252297.i.us.i, %.preheader271.i.us.i ], [ %.0252297.i.us.i, %bb.ar ], [ %.1253.i.us.i, %bb.z ], [ %.0252297.i.us.i, %middle.block516 ], [ %.0252297.i.us.i, %scalar.ph485.prol.loopexit ], [ %.0252297.i.us.i, %scalar.ph961.prol.loopexit ], [ %.0252297.i.us.i, %scalar.ph485 ], [ %.0252297.i.us.i, %scalar.ph961 ], [ %.1253.i.us.i, %.loopexit.i.us.i.loopexit1048.unr-lcssa ], [ %.1253.i.us.i, %.loopexit.i.us.i.loopexit1048.epilog-lcssa ] ; 3 uses
  %.2251.i.us.i = phi i32 [ %.0249298.i.us.i, %._crit_edge278.split.i.us.i ], [ %.0249298.i.us.i, %middle.block992 ], [ %.0249298.i.us.i, %.preheader271.i.us.i ], [ %.0249298.i.us.i, %bb.ar ], [ %.1250.i.us.i, %bb.z ], [ %.0249298.i.us.i, %middle.block516 ], [ %.0249298.i.us.i, %scalar.ph485.prol.loopexit ], [ %.0249298.i.us.i, %scalar.ph961.prol.loopexit ], [ %.0249298.i.us.i, %scalar.ph485 ], [ %.0249298.i.us.i, %scalar.ph961 ], [ %.1250.i.us.i, %.loopexit.i.us.i.loopexit1048.unr-lcssa ], [ %.1250.i.us.i, %.loopexit.i.us.i.loopexit1048.epilog-lcssa ] ; 3 uses
  %.2248.i.us.i = phi i32 [ %.0246299.i.us.i, %._crit_edge278.split.i.us.i ], [ %.0246299.i.us.i, %middle.block992 ], [ %.0246299.i.us.i, %.preheader271.i.us.i ], [ %.0246299.i.us.i, %bb.ar ], [ %.1247.i.us.i, %bb.z ], [ %.0246299.i.us.i, %middle.block516 ], [ %.0246299.i.us.i, %scalar.ph485.prol.loopexit ], [ %.0246299.i.us.i, %scalar.ph961.prol.loopexit ], [ %.0246299.i.us.i, %scalar.ph485 ], [ %.0246299.i.us.i, %scalar.ph961 ], [ %.1247.i.us.i, %.loopexit.i.us.i.loopexit1048.unr-lcssa ], [ %.1247.i.us.i, %.loopexit.i.us.i.loopexit1048.epilog-lcssa ] ; 3 uses
  %.2245.i.us.i = phi i32 [ %.0243300.i.us.i, %._crit_edge278.split.i.us.i ], [ %.0243300.i.us.i, %middle.block992 ], [ %.0243300.i.us.i, %.preheader271.i.us.i ], [ %.0243300.i.us.i, %bb.ar ], [ %.1244.i.us.i, %bb.z ], [ %.0243300.i.us.i, %middle.block516 ], [ %.0243300.i.us.i, %scalar.ph485.prol.loopexit ], [ %.0243300.i.us.i, %scalar.ph961.prol.loopexit ], [ %.0243300.i.us.i, %scalar.ph485 ], [ %.0243300.i.us.i, %scalar.ph961 ], [ %.1244.i.us.i, %.loopexit.i.us.i.loopexit1048.unr-lcssa ], [ %.1244.i.us.i, %.loopexit.i.us.i.loopexit1048.epilog-lcssa ] ; 3 uses
  br i1 %i.rs, label %.preheader.lr.ph.i.us.i, label %._crit_edge296.split.i.us.i

.preheader.lr.ph.i.us.i:                          ; preds = %.loopexit.i.us.i
  br i1 %i.rt, label %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i, label %._crit_edge296.split.i.us.i

.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i: ; preds = %.preheader.lr.ph.i.us.i
  %.pre136.i = mul nuw nsw i64 %indvars.iv355.i.us.i, %i.rz
  br label %.preheader.preheader.i.us.i

.preheader.preheader.i.us.i:                      ; preds = %scalar.ph839, %scalar.ph636.prol.loopexit, %scalar.ph636, %middle.block927, %middle.block739, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre136.i, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i ], [ %i.aku, %middle.block739 ], [ %i.ain, %middle.block927 ], [ %i.aku, %scalar.ph636.prol.loopexit ], [ %i.aku, %scalar.ph636 ], [ %i.ain, %scalar.ph839 ]
  %.2254367381.i.us.i = phi i32 [ %.2254.i.us.i, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i ], [ %.0252297.i.us.i, %middle.block739 ], [ %.0252297.i.us.i, %middle.block927 ], [ %.0252297.i.us.i, %scalar.ph636.prol.loopexit ], [ %.0252297.i.us.i, %scalar.ph636 ], [ %.0252297.i.us.i, %scalar.ph839 ]
  %.2251369380.i.us.i = phi i32 [ %.2251.i.us.i, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i ], [ %.0249298.i.us.i, %middle.block739 ], [ %.0249298.i.us.i, %middle.block927 ], [ %.0249298.i.us.i, %scalar.ph636.prol.loopexit ], [ %.0249298.i.us.i, %scalar.ph636 ], [ %.0249298.i.us.i, %scalar.ph839 ]
  %.2248371379.i.us.i = phi i32 [ %.2248.i.us.i, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i ], [ %.0246299.i.us.i, %middle.block739 ], [ %.0246299.i.us.i, %middle.block927 ], [ %.0246299.i.us.i, %scalar.ph636.prol.loopexit ], [ %.0246299.i.us.i, %scalar.ph636 ], [ %.0246299.i.us.i, %scalar.ph839 ]
  %.2245373378.i.us.i = phi i32 [ %.2245.i.us.i, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i ], [ %.0243300.i.us.i, %middle.block739 ], [ %.0243300.i.us.i, %middle.block927 ], [ %.0243300.i.us.i, %scalar.ph636.prol.loopexit ], [ %.0243300.i.us.i, %scalar.ph636 ], [ %.0243300.i.us.i, %scalar.ph839 ]
  %bound0 = icmp ult ptr %scevgep438, %scevgep
  %bound1 = icmp ult ptr %scevgep436, %scevgep437
  %found.conflict = and i1 %bound0, %bound1
  %i.arm = or i1 %found.conflict, %stride.check
  br label %.preheader.i.us.i

.preheader.i.us.i:                                ; preds = %._crit_edge294.i.us.i, %.preheader.preheader.i.us.i
  %indvars.iv350.i.us.i = phi i64 [ 1, %.preheader.preheader.i.us.i ], [ %indvars.iv.next351.i.us.i, %._crit_edge294.i.us.i ] ; 2 uses
  %i.arn = add nuw nsw i64 %indvars.iv350.i.us.i, %.pre-phi.i ; 2 uses
  %i.aro = add nsw i64 %i.arn, -1
  %i.arp = mul nsw i64 %i.aro, %i.ry
  %i.arq = mul nuw nsw i64 %i.arn, %i.ry
  %invariant.gep411.i.us.i = getelementptr [8 x i8], ptr %i.xd, i64 %i.arp ; 10 uses
  %invariant.gep413.i.us.i = getelementptr [8 x i8], ptr %i.xc, i64 %i.arq ; 10 uses
  %brmerge1122 = select i1 %min.iters.check440, i1 true, i1 %i.arm
  br i1 %brmerge1122, label %scalar.ph439.preheader, label %vector.body444

vector.body444:                                   ; preds = %.preheader.i.us.i, %vector.body444
  %index445 = phi i64 [ %index.next450, %vector.body444 ], [ 0, %.preheader.i.us.i ] ; 3 uses
  %i.arr = getelementptr [8 x i8], ptr %invariant.gep411.i.us.i, i64 %index445 ; 2 uses
  %i.ars = getelementptr i8, ptr %i.arr, i64 16
  %wide.load446 = load <2 x double>, ptr %i.arr, align 8, !tbaa !35, !alias.scope !179
  %wide.load447 = load <2 x double>, ptr %i.ars, align 8, !tbaa !35, !alias.scope !179
  %i.art = getelementptr [8 x i8], ptr %invariant.gep413.i.us.i, i64 %index445 ; 3 uses
  %i.aru = getelementptr i8, ptr %i.art, i64 16   ; 2 uses
  %wide.load448 = load <2 x double>, ptr %i.art, align 8, !tbaa !35, !alias.scope !180, !noalias !179
  %wide.load449 = load <2 x double>, ptr %i.aru, align 8, !tbaa !35, !alias.scope !180, !noalias !179
  %i.arv = fadd <2 x double> %wide.load446, %wide.load448
  %i.arw = fadd <2 x double> %wide.load447, %wide.load449
  store <2 x double> %i.arv, ptr %i.art, align 8, !tbaa !35, !alias.scope !180, !noalias !179
  store <2 x double> %i.arw, ptr %i.aru, align 8, !tbaa !35, !alias.scope !180, !noalias !179
  %index.next450 = add nuw i64 %index445, 4       ; 2 uses
  %i.arx = icmp eq i64 %index.next450, %n.vec443
  br i1 %i.arx, label %middle.block451, label %vector.body444, !llvm.loop !123

middle.block451:                                  ; preds = %vector.body444
  br i1 %cmp.n452, label %._crit_edge294.i.us.i, label %scalar.ph439.preheader

end_hunk_2
