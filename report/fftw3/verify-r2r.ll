Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/verify-r2r?download=true
inline.NumInlined: 111
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 79
begin_hunk_0_@verify_r2r:bb.a
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
  %.064103.us.i = phi i32 [ 1, %.lr.ph107.i ], [ %i.awp, %._crit_edge101.us.i ] ; 5 uses
  %.065102.us.i = phi double [ 0.000000e+00, %.lr.ph107.i ], [ %i.awn, %._crit_edge101.us.i ]
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
  %23 = shl nuw nsw i64 %i.sa, 3                  ; 3 uses
  %i.tc = add i64 %i.tb, %23
  %i.td = mul i64 %i.tc, %i.ry
  %i.te = shl nuw nsw i64 %wide.trip.count.i68.us.i, 3 ; 6 uses
  %24 = add i64 %i.td, %i.te
  %i.tf = shl nuw nsw i64 %i.sa, 3
  %25 = mul i64 %i.tf, %i.ry
  %26 = add i64 %i.tb, 8
  %i.tg = add i64 %26, %23
  %i.th = mul i64 %i.tg, %i.ry
  %27 = add i64 %i.th, %i.te
  %i.ti = shl nuw nsw i64 %i.sa, 3
  %i.tj = add nuw nsw i64 %i.ti, 8
  %i.tk = mul i64 %i.tj, %i.ry
  %i.tl = add i64 %i.tb, -8
  %i.tm = add i64 %i.tl, %23
  %i.tn = mul i64 %i.tm, %i.ry
  %i.to = shl nuw nsw i64 %i.sa, 3
  %i.tp = add nsw i64 %i.to, -8
  %i.tq = mul i64 %i.tp, %i.ry
  %i.tr = add i64 %i.tb, 8
  %i.ts = mul i64 %i.tr, %i.ry
  %28 = shl nsw i64 %i.ry, 3
  %i.tt = shl nsw i64 %i.sz, 3
  %29 = mul i64 %i.tt, %i.rz
  %i.tu = mul i64 %29, %i.ry
  %i.tv = shl nsw i64 %i.rz, 3
  %i.tw = mul i64 %i.tv, %i.ry
  %30 = add nsw i64 %wide.trip.count358.i.us.i, -1 ; 2 uses
  %i.tx = shl nsw i64 %30, 3
  %i.ty = mul i64 %i.tx, %i.rz                    ; 3 uses
  %i.tz = add i64 %i.ty, 8
  %i.ua = shl nuw nsw i64 %i.sa, 3                ; 2 uses
  %i.ub = add i64 %i.tz, %i.ua
  %i.uc = mul i64 %i.ub, %i.ry
  %i.ud = shl nuw nsw i64 %wide.trip.count.i68.us.i, 3 ; 5 uses
  %31 = add i64 %i.uc, %i.ud
  %i.ue = shl nuw nsw i64 %i.sa, 3
  %i.uf = add nuw nsw i64 %i.ue, 8
  %i.ug = mul i64 %i.uf, %i.ry
  %i.uh = add i64 %i.ty, %i.ua
  %i.ui = mul i64 %i.uh, %i.ry
  %i.uj = add i64 %i.ui, %i.ud
  %32 = shl nuw nsw i64 %i.sa, 3
  %i.uk = mul i64 %32, %i.ry
  %i.ul = add i64 %i.ty, 8
  %33 = mul i64 %i.ul, %i.ry
  %34 = shl nsw i64 %i.ry, 3
  %i.um = shl nsw i64 %30, 3
  %i.un = mul i64 %i.um, %i.rz
  %i.uo = mul i64 %i.un, %i.ry
  %i.up = shl nsw i64 %i.rz, 3
  %i.uq = mul i64 %i.up, %i.ry
  %i.ur = shl nuw nsw i64 %wide.trip.count358.i.us.i, 3
  %i.us = add nsw i64 %i.ur, -8
  %i.ut = mul i64 %i.us, %i.rz
  %i.uu = mul i64 %i.ut, %i.ry
  %i.uv = shl nuw nsw i64 %wide.trip.count.i68.us.i, 3 ; 2 uses
  %i.uw = add i64 %i.uu, %i.uv
  %i.ux = shl nsw i64 %i.ry, 3
  %i.uy = add nsw i64 %wide.trip.count.i68.us.i, -1 ; 2 uses
  %i.uz = getelementptr i8, ptr %i.ax, i64 %33
  %i.va = getelementptr i8, ptr %i.uz, i64 %i.ud
  %i.vb = getelementptr i8, ptr %i.ax, i64 %34
  %i.vc = getelementptr i8, ptr %i.az, i64 %i.uo
  %i.vd = getelementptr i8, ptr %i.vc, i64 %i.ud
  %i.ve = getelementptr i8, ptr %i.ax, i64 %i.tn
  %i.vf = getelementptr i8, ptr %i.ve, i64 %i.te
  %i.vg = getelementptr i8, ptr %i.ax, i64 %i.tq
  %i.vh = getelementptr i8, ptr %i.ax, i64 %i.ts
  %i.vi = getelementptr i8, ptr %i.vh, i64 %i.te
  %i.vj = getelementptr i8, ptr %i.ax, i64 %28
  %i.vk = getelementptr i8, ptr %i.az, i64 %i.tu
  %i.vl = getelementptr i8, ptr %i.vk, i64 %i.te
  %i.vm = getelementptr i8, ptr %i.ax, i64 %i.sk
  %i.vn = getelementptr i8, ptr %i.vm, i64 %i.sl
  %i.vo = getelementptr i8, ptr %i.az, i64 %i.sq
  %i.vp = getelementptr i8, ptr %i.vo, i64 %i.sl
  %i.vq = getelementptr i8, ptr %i.az, i64 %i.sh
  %min.iters.check998 = icmp ult i32 %i.rp, 4
  %.reass1118 = add i64 %i.ux, %invariant.op1117
  %diff.check1000 = icmp ugt i64 %.reass1118, -32
  %or.cond = select i1 %min.iters.check998, i1 true, i1 %diff.check1000
  %n.vec1002 = and i64 %wide.trip.count.i68.us.i, 2147483644 ; 3 uses
  %cmp.n1009 = icmp eq i64 %n.vec1002, %wide.trip.count.i68.us.i
  %xtraiter1074 = and i64 %wide.trip.count.i68.us.i, 3 ; 3 uses
  %i.vr = icmp ult i32 %i.rp, 4
  %unroll_iter = and i64 %wide.trip.count.i68.us.i, 2147483644
  %lcmp.mod1075.not = icmp eq i64 %xtraiter1074, 0
  %lcmp.mod1076 = icmp ne i64 %xtraiter1074, 0
  %xtraiter1078 = and i64 %wide.trip.count.i68.us.i, 1
  %i.vs = icmp eq i64 %i.uy, 0
  %unroll_iter1082 = and i64 %wide.trip.count.i68.us.i, 2147483646
  %lcmp.mod1080.not = icmp eq i64 %xtraiter1078, 0
  %lcmp.mod1081 = trunc i32 %i.rp to i1
  %min.iters.check962 = icmp ult i32 %i.rp, 10
  %stride.check967 = icmp slt i64 %i.uq, 0
  %n.vec985 = and i64 %wide.trip.count.i68.us.i, 2147483646 ; 3 uses
  %cmp.n993 = icmp eq i64 %n.vec985, %wide.trip.count.i68.us.i
  %min.iters.check840 = icmp ult i32 %i.rp, 14
  %i.vt = getelementptr i8, ptr %i.az, i64 %i.ud
  %stride.check845 = icmp slt i64 %i.tw, 0
  %n.vec915 = and i64 %wide.trip.count.i68.us.i, 2147483646 ; 3 uses
  %cmp.n928 = icmp eq i64 %n.vec915, %wide.trip.count.i68.us.i
  %min.iters.check637 = icmp ult i32 %i.rp, 20
  %i.vu = getelementptr i8, ptr %i.az, i64 %i.te
  %stride.check642 = icmp slt i64 %i.sy, 0
  %n.vec728 = and i64 %wide.trip.count.i68.us.i, 2147483646 ; 3 uses
  %cmp.n740 = icmp eq i64 %n.vec728, %wide.trip.count.i68.us.i
  %xtraiter1087 = and i64 %wide.trip.count.i68.us.i, 1
  %lcmp.mod1088.not = icmp eq i64 %xtraiter1087, 0
  %i.vv = add nsw i64 %wide.trip.count.i68.us.i, -1
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
  %.098.us.i = phi i32 [ 0, %.lr.ph100.us.i ], [ %i.awo, %racmp.exit.us.i ]
  %.16697.us.i = phi double [ %.065102.us.i, %.lr.ph100.us.i ], [ %i.awn, %racmp.exit.us.i ]
  br i1 %i.bt, label %.lr.ph.i.us.i, label %rarand.exit.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.r, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %.lr.ph.i.us.i ], [ 0, %bb.r ] ; 2 uses
  %i.vw = call double @mydrand() #11
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i.us.i
  store double %i.vw, ptr %i.vx, align 8, !tbaa !35
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i133
  br i1 %exitcond.not.i.us.i, label %rarand.exit.us.i, label %.lr.ph.i.us.i, !llvm.loop !53

rarand.exit.us.i:                                 ; preds = %.lr.ph.i.us.i, %bb.r
  br i1 %i.bw, label %.lr.ph.us.i, label %._crit_edge.split.us.i

.lr.ph.us.i:                                      ; preds = %rarand.exit.us.i
  %i.vy = load ptr, ptr %i.rf, align 8, !tbaa !24
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.vy, i64 %indvars.iv133.i
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !29
  br i1 %i.rq, label %.preheader275.lr.ph.i.us.i, label %._crit_edge.split.us.i

.preheader275.lr.ph.i.us.i:                       ; preds = %.lr.ph.us.i, %rarolr.exit.loopexit.us.i
  %indvars.iv.i135 = phi i64 [ %indvars.iv.next.i136, %rarolr.exit.loopexit.us.i ], [ 0, %.lr.ph.us.i ] ; 7 uses
  %i.wb = mul i64 %i.rk, %indvars.iv.i135         ; 3 uses
  %i.wc = add i64 %i.uw, %i.wb                    ; 2 uses
  %scevgep959 = getelementptr i8, ptr %i.ax, i64 %i.wc ; 2 uses
  %scevgep960 = getelementptr i8, ptr %i.az, i64 %i.wc ; 3 uses
  %i.wd = add i64 %i.uv, %i.wb
  %i.we = mul i64 %i.rj, %indvars.iv.i135         ; 8 uses
  %35 = add i64 %31, %i.we                        ; 2 uses
  %scevgep829.a = getelementptr i8, ptr %i.ax, i64 %35 ; 4 uses
  %i.wf = add i64 %i.ug, %i.we                    ; 2 uses
  %scevgep830.a = getelementptr i8, ptr %i.ax, i64 %i.wf ; 4 uses
  %i.wg = add i64 %i.uj, %i.we                    ; 2 uses
  %scevgep831.a = getelementptr i8, ptr %i.ax, i64 %i.wg ; 4 uses
  %i.wh = add i64 %i.uk, %i.we                    ; 2 uses
  %scevgep832.a = getelementptr i8, ptr %i.ax, i64 %i.wh ; 4 uses
  %scevgep832 = getelementptr i8, ptr %i.va, i64 %i.we ; 4 uses
  %scevgep833 = getelementptr i8, ptr %i.vb, i64 %i.we ; 4 uses
  %scevgep834 = getelementptr i8, ptr %i.az, i64 %35 ; 5 uses
  %scevgep835 = getelementptr i8, ptr %i.az, i64 %i.wf ; 5 uses
  %scevgep836 = getelementptr i8, ptr %i.az, i64 %i.wg ; 3 uses
  %scevgep837 = getelementptr i8, ptr %i.az, i64 %i.wh ; 3 uses
  %scevgep838 = getelementptr i8, ptr %i.vd, i64 %i.we ; 6 uses
  %i.wi = mul i64 %i.ri, %indvars.iv.i135         ; 10 uses
  %36 = add i64 %24, %i.wi                        ; 2 uses
  %scevgep624.a = getelementptr i8, ptr %i.ax, i64 %36 ; 4 uses
  %37 = add i64 %25, %i.wi                        ; 2 uses
  %scevgep626.a = getelementptr i8, ptr %i.ax, i64 %37 ; 4 uses
  %i.wj = add i64 %27, %i.wi                      ; 2 uses
  %scevgep627.a = getelementptr i8, ptr %i.ax, i64 %i.wj ; 3 uses
  %i.wk = add i64 %i.tk, %i.wi                    ; 2 uses
  %scevgep628.a = getelementptr i8, ptr %i.ax, i64 %i.wk ; 3 uses
  %scevgep627 = getelementptr i8, ptr %i.vf, i64 %i.wi ; 4 uses
  %scevgep629.a = getelementptr i8, ptr %i.vg, i64 %i.wi ; 4 uses
  %scevgep629 = getelementptr i8, ptr %i.vi, i64 %i.wi ; 4 uses
  %scevgep630 = getelementptr i8, ptr %i.vj, i64 %i.wi ; 4 uses
  %scevgep631 = getelementptr i8, ptr %i.az, i64 %i.wj ; 7 uses
  %scevgep632 = getelementptr i8, ptr %i.az, i64 %i.wk ; 7 uses
  %scevgep633 = getelementptr i8, ptr %i.az, i64 %36 ; 6 uses
  %scevgep634 = getelementptr i8, ptr %i.az, i64 %37 ; 6 uses
  %scevgep635 = getelementptr i8, ptr %i.vl, i64 %i.wi ; 2 uses
  %i.wl = mul i64 %i.rh, %indvars.iv.i135         ; 3 uses
  %i.wm = add i64 %i.sw, %i.wl                    ; 2 uses
  %scevgep483 = getelementptr i8, ptr %i.ax, i64 %i.wm ; 2 uses
  %scevgep484 = getelementptr i8, ptr %i.az, i64 %i.wm ; 3 uses
  %i.wn = add i64 %i.sv, %i.wl
  %i.wo = mul i64 %i.rg, %indvars.iv.i135         ; 4 uses
  %i.wp = mul nsw i64 %indvars.iv.i135, %i.re     ; 2 uses
  %i.wq = getelementptr [8 x i8], ptr %i.az, i64 %i.wp ; 63 uses
  %i.wr = getelementptr [8 x i8], ptr %i.ax, i64 %i.wp ; 55 uses
  %i.ws = insertelement <4 x ptr> poison, ptr %scevgep635, i64 0 ; 3 uses
  %i.wt = insertelement <4 x ptr> %i.ws, ptr %scevgep633, i64 1
  %i.wu = insertelement <4 x ptr> %i.wt, ptr %scevgep631, i64 2
  %i.wv = insertelement <4 x ptr> %i.wu, ptr %scevgep629, i64 3
  %i.ww = insertelement <4 x ptr> poison, ptr %i.wq, i64 0 ; 4 uses
  %i.wx = insertelement <4 x ptr> %i.ww, ptr %scevgep634, i64 1
  %i.wy = insertelement <4 x ptr> %i.wx, ptr %scevgep632, i64 2
  %i.wz = insertelement <4 x ptr> %i.wy, ptr %scevgep630, i64 3
  %i.xa = insertelement <4 x ptr> poison, ptr %scevgep628.a, i64 0 ; 2 uses
  %i.xb = insertelement <4 x ptr> %i.xa, ptr %i.wq, i64 1
  %i.xc = insertelement <4 x ptr> %i.xb, ptr %scevgep632, i64 2
  %i.xd = insertelement <4 x ptr> %i.xc, ptr %scevgep634, i64 3
  %i.xe = insertelement <4 x ptr> %i.ws, ptr %scevgep624.a, i64 1
  %i.xf = insertelement <4 x ptr> %i.xe, ptr %scevgep633, i64 2
  %i.xg = insertelement <4 x ptr> %i.xf, ptr %scevgep629, i64 3
  %i.xh = insertelement <4 x ptr> %i.ww, ptr %scevgep626.a, i64 1
  %i.xi = insertelement <4 x ptr> %i.xh, ptr %scevgep634, i64 2
  %i.xj = insertelement <4 x ptr> %i.xi, ptr %scevgep630, i64 3
  %i.xk = insertelement <4 x ptr> poison, ptr %scevgep627.a, i64 0 ; 2 uses
  %i.xl = insertelement <4 x ptr> %i.xk, ptr %scevgep635, i64 1
  %i.xm = insertelement <4 x ptr> %i.xl, ptr %scevgep631, i64 2
  %i.xn = insertelement <4 x ptr> %i.xm, ptr %scevgep633, i64 3
  %i.xo = insertelement <4 x ptr> %i.xa, ptr %scevgep634, i64 1
  %i.xp = insertelement <4 x ptr> %i.xo, ptr %scevgep630, i64 2
  %i.xq = insertelement <4 x ptr> %i.xp, ptr %scevgep632, i64 3
  %i.xr = insertelement <4 x ptr> poison, ptr %scevgep633, i64 0 ; 2 uses
  %i.xs = insertelement <4 x ptr> %i.xr, ptr %scevgep624.a, i64 1
  %i.xt = insertelement <4 x ptr> %i.xs, ptr %scevgep631, i64 2
  %i.xu = insertelement <4 x ptr> %i.xt, ptr %scevgep627, i64 3
  %i.xv = insertelement <4 x ptr> poison, ptr %scevgep634, i64 0 ; 2 uses
  %i.xw = insertelement <4 x ptr> %i.xv, ptr %scevgep626.a, i64 1
  %i.xx = insertelement <4 x ptr> %i.xw, ptr %scevgep632, i64 2
  %i.xy = insertelement <4 x ptr> %i.xx, ptr %scevgep629.a, i64 3
  %i.xz = insertelement <4 x ptr> %i.xk, ptr %scevgep633, i64 1
  %i.ya = insertelement <4 x ptr> %i.xz, ptr %scevgep629, i64 2
  %i.yb = insertelement <4 x ptr> %i.ya, ptr %scevgep631, i64 3
  %i.yc = shufflevector <4 x ptr> %i.ww, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.yd = insertelement <4 x ptr> %i.xr, ptr %scevgep631, i64 1
  %i.ye = insertelement <4 x ptr> %i.yd, ptr %scevgep629, i64 2
  %i.yf = insertelement <4 x ptr> %i.ye, ptr %scevgep627, i64 3
  %i.yg = insertelement <4 x ptr> %i.xv, ptr %scevgep632, i64 1
  %i.yh = insertelement <4 x ptr> %i.yg, ptr %scevgep630, i64 2
  %i.yi = insertelement <4 x ptr> %i.yh, ptr %scevgep629.a, i64 3
  %i.yj = shufflevector <4 x ptr> %i.ws, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.yk = insertelement <2 x ptr> poison, ptr %scevgep629.a, i64 0
  %i.yl = insertelement <2 x ptr> %i.yk, ptr %scevgep628.a, i64 1
  %i.ym = insertelement <2 x ptr> poison, ptr %scevgep633, i64 0
  %i.yn = insertelement <2 x ptr> %i.ym, ptr %scevgep631, i64 1
  %i.yo = insertelement <2 x ptr> poison, ptr %scevgep634, i64 0
  %i.yp = insertelement <2 x ptr> %i.yo, ptr %scevgep632, i64 1
  %i.yq = insertelement <2 x ptr> poison, ptr %scevgep627, i64 0
  %i.yr = insertelement <2 x ptr> %i.yq, ptr %scevgep627.a, i64 1
  %i.ys = insertelement <4 x ptr> poison, ptr %scevgep837, i64 0
  %i.yt = shufflevector <4 x ptr> %i.ys, <4 x ptr> poison, <4 x i32> zeroinitializer
  %38 = insertelement <4 x ptr> poison, ptr %scevgep834, i64 0
  %i.yu = insertelement <4 x ptr> %38, ptr %scevgep832, i64 1
  %i.yv = insertelement <4 x ptr> %i.yu, ptr %scevgep831.a, i64 2
  %i.yw = insertelement <4 x ptr> %i.yv, ptr %scevgep829.a, i64 3
  %i.yx = insertelement <4 x ptr> poison, ptr %scevgep835, i64 0
  %39 = insertelement <4 x ptr> %i.yx, ptr %scevgep833, i64 1
  %40 = insertelement <4 x ptr> %39, ptr %scevgep832.a, i64 2
  %i.yy = insertelement <4 x ptr> %40, ptr %scevgep830.a, i64 3
  %i.yz = insertelement <4 x ptr> poison, ptr %scevgep836, i64 0
  %41 = shufflevector <4 x ptr> %i.yz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.za = insertelement <4 x ptr> poison, ptr %scevgep838, i64 0
  %i.zb = insertelement <4 x ptr> %i.za, ptr %scevgep836, i64 1
  %i.zc = insertelement <4 x ptr> %i.zb, ptr %scevgep834, i64 2
  %42 = insertelement <4 x ptr> %i.zc, ptr %scevgep832, i64 3
  %43 = insertelement <4 x ptr> %i.ww, ptr %scevgep837, i64 1
  %44 = insertelement <4 x ptr> %43, ptr %scevgep835, i64 2
  %45 = insertelement <4 x ptr> %44, ptr %scevgep833, i64 3
  %46 = insertelement <2 x ptr> poison, ptr %scevgep833, i64 0
  %47 = insertelement <2 x ptr> %46, ptr %scevgep832.a, i64 1
  %48 = insertelement <2 x ptr> poison, ptr %scevgep834, i64 0
  %49 = shufflevector <2 x ptr> %48, <2 x ptr> poison, <2 x i32> zeroinitializer
  %50 = insertelement <2 x ptr> poison, ptr %scevgep835, i64 0
  %51 = shufflevector <2 x ptr> %50, <2 x ptr> poison, <2 x i32> zeroinitializer
  %52 = insertelement <2 x ptr> poison, ptr %scevgep832, i64 0
  %53 = insertelement <2 x ptr> %52, ptr %scevgep831.a, i64 1
  %i.zd = getelementptr i8, ptr %i.vn, i64 %i.wo
  %i.ze = getelementptr i8, ptr %i.ax, i64 %i.wo
  %i.zf = getelementptr i8, ptr %i.vp, i64 %i.wo
  %i.zg = getelementptr i8, ptr %i.vq, i64 %i.wo
  %bound0980.a = icmp ult ptr %i.wq, %scevgep959
  %bound1981.a = icmp ult ptr %i.wr, %scevgep960
  %found.conflict982.a = and i1 %bound0980.a, %bound1981.a
  %i.zh = getelementptr i8, ptr %i.vt, i64 %i.we
  %bound0866 = icmp ult ptr %i.wq, %scevgep836
  %bound1867 = icmp ult ptr %scevgep837, %scevgep838
  %found.conflict868 = and i1 %bound0866, %bound1867
  %bound0870 = icmp ult ptr %i.wq, %scevgep834
  %bound1871 = icmp ult ptr %scevgep835, %scevgep838
  %found.conflict872 = and i1 %bound0870, %bound1871
  %bound0874 = icmp ult ptr %i.wq, %scevgep832
  %bound1875 = icmp ult ptr %scevgep833, %scevgep838
  %found.conflict876 = and i1 %bound0874, %bound1875
  %bound0878 = icmp ult ptr %i.wq, %scevgep831.a
  %bound1879 = icmp ult ptr %scevgep832.a, %scevgep838
  %found.conflict880 = and i1 %bound0878, %bound1879
  %bound0882 = icmp ult ptr %i.wq, %scevgep829.a
  %bound1883 = icmp ult ptr %scevgep830.a, %scevgep838
  %found.conflict884 = and i1 %bound0882, %bound1883
  %i.zi = icmp ult <4 x ptr> %i.yt, %i.yw
  %i.zj = icmp ult <4 x ptr> %i.yy, %41
  %i.zk = icmp ult <2 x ptr> %51, %53
  %i.zl = icmp ult <2 x ptr> %47, %49
  %bound0910 = icmp ult ptr %scevgep835, %scevgep829.a
  %bound1911 = icmp ult ptr %scevgep830.a, %scevgep834
  %54 = shufflevector <2 x i1> %i.zk, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %55 = insertelement <8 x i1> %54, i1 %bound0910, i64 6
  %i.zm = insertelement <8 x i1> %55, i1 %stride.check845, i64 7
  %i.zn = shufflevector <4 x i1> %i.zi, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %56 = shufflevector <8 x i1> %i.zn, <8 x i1> %i.zm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.zo = shufflevector <2 x i1> %i.zl, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %57 = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.zo, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.zp = insertelement <8 x i1> %57, i1 %bound1911, i64 6
  %i.zq = shufflevector <4 x i1> %i.zj, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %58 = shufflevector <8 x i1> %i.zq, <8 x i1> %i.zp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.zr = and <8 x i1> %56, %58
  %i.zs = bitcast <8 x i1> %i.zr to i8
  %i.zt = icmp ne i8 %i.zs, 0
  %op.rdx1039 = or i1 %found.conflict872, %found.conflict876
  %op.rdx1040 = or i1 %found.conflict880, %found.conflict884
  %op.rdx1042 = or i1 %op.rdx1039, %op.rdx1040
  %invariant.op = or i1 %op.rdx1042, %i.zt
  %i.zu = getelementptr i8, ptr %i.vu, i64 %i.wi
  %i.zv = icmp ult <4 x ptr> %i.yc, %i.yf
  %i.zw = icmp ult <4 x ptr> %i.yi, %i.yj
  %i.zx = icmp ult <4 x ptr> %i.xj, %i.xn
  %i.zy = icmp ult <4 x ptr> %i.xd, %i.xg
  %i.zz = and <4 x i1> %i.zy, %i.zx
  %i.aaa = icmp ult <2 x ptr> %i.yp, %i.yr
  %i.aab = icmp ult <2 x ptr> %i.yl, %i.yn
  %i.aac = icmp ult <4 x ptr> %i.xy, %i.yb
  %i.aad = icmp ult <4 x ptr> %i.xq, %i.xu
  %i.aae = and <4 x i1> %i.aad, %i.aac
  %bound0723 = icmp ult ptr %scevgep632, %scevgep624.a
  %bound1724 = icmp ult ptr %scevgep626.a, %scevgep631
  %i.aaf = shufflevector <2 x i1> %i.aaa, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.aag = insertelement <8 x i1> %i.aaf, i1 %bound0723, i64 6
  %i.aah = insertelement <8 x i1> %i.aag, i1 %stride.check642, i64 7
  %i.aai = shufflevector <4 x i1> %i.zv, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aaj = shufflevector <8 x i1> %i.aai, <8 x i1> %i.aah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.aak = shufflevector <2 x i1> %i.aab, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aal = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.aak, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.aam = insertelement <8 x i1> %i.aal, i1 %bound1724, i64 6
  %i.aan = shufflevector <4 x i1> %i.zw, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aao = shufflevector <8 x i1> %i.aan, <8 x i1> %i.aam, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.aap = and <8 x i1> %i.aaj, %i.aao
  %invariant.op1103 = or <4 x i1> %i.zz, %i.aae
  %i.aaq = bitcast <8 x i1> %i.aap to i8
  %i.aar = icmp ne i8 %i.aaq, 0
  %bound0504.a = icmp ult ptr %i.wq, %scevgep483
  %bound1505.a = icmp ult ptr %i.wr, %scevgep484
  %found.conflict506.a = and i1 %bound0504.a, %bound1505.a
  br label %.preheader275.i.us.i

.preheader275.i.us.i:                             ; preds = %._crit_edge296.split.i.us.i, %.preheader275.lr.ph.i.us.i
  %indvars.iv355.i.us.i = phi i64 [ 0, %.preheader275.lr.ph.i.us.i ], [ %indvars.iv.next356.i.us.i, %._crit_edge296.split.i.us.i ] ; 10 uses
  %.0243300.i.us.i = phi i32 [ 0, %.preheader275.lr.ph.i.us.i ], [ %.2245372.i.us.i, %._crit_edge296.split.i.us.i ] ; 22 uses
  %.0246299.i.us.i = phi i32 [ 0, %.preheader275.lr.ph.i.us.i ], [ %.2248370.i.us.i, %._crit_edge296.split.i.us.i ] ; 20 uses
  %.0249298.i.us.i = phi i32 [ 0, %.preheader275.lr.ph.i.us.i ], [ %.2251368.i.us.i, %._crit_edge296.split.i.us.i ] ; 22 uses
  %.0252297.i.us.i = phi i32 [ 0, %.preheader275.lr.ph.i.us.i ], [ %.2254366.i.us.i, %._crit_edge296.split.i.us.i ] ; 20 uses
  %i.aas = mul i64 %i.sn, %indvars.iv355.i.us.i   ; 4 uses
  %scevgep = getelementptr i8, ptr %i.zd, i64 %i.aas
  %scevgep436 = getelementptr i8, ptr %i.ze, i64 %i.aas
  %scevgep437 = getelementptr i8, ptr %i.zf, i64 %i.aas
  %scevgep438 = getelementptr i8, ptr %i.zg, i64 %i.aas
  br i1 %i.rs, label %.preheader266.lr.ph.i.us.i, label %._crit_edge278.split.i.us.i

.preheader266.lr.ph.i.us.i:                       ; preds = %.preheader275.i.us.i
  %i.aat = mul nuw nsw i64 %indvars.iv355.i.us.i, %i.rz
  br i1 %i.rt, label %.preheader266.i.us.i, label %._crit_edge278.split.i.us.i

.preheader266.i.us.i:                             ; preds = %.preheader266.lr.ph.i.us.i, %._crit_edge.i.us.i
  %indvars.iv310.i.us.i = phi i64 [ %indvars.iv.next311.i.us.i, %._crit_edge.i.us.i ], [ 0, %.preheader266.lr.ph.i.us.i ] ; 2 uses
  %i.aau = add nuw nsw i64 %indvars.iv310.i.us.i, %i.aat ; 2 uses
  %i.aav = add nuw nsw i64 %i.aau, 1
  %i.aaw = mul nuw nsw i64 %i.aav, %i.ry
  %i.aax = mul nuw nsw i64 %i.aau, %i.ry
  %invariant.gep.i.us.i = getelementptr [8 x i8], ptr %i.wr, i64 %i.aaw ; 10 uses
  %invariant.gep391.i.us.i = getelementptr [8 x i8], ptr %i.wq, i64 %i.aax ; 10 uses
  br i1 %or.cond, label %scalar.ph997.preheader, label %vector.body1003

vector.body1003:                                  ; preds = %.preheader266.i.us.i, %vector.body1003
  %index1004 = phi i64 [ %index.next1007, %vector.body1003 ], [ 0, %.preheader266.i.us.i ] ; 3 uses
  %i.aay = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %index1004 ; 2 uses
  %i.aaz = getelementptr i8, ptr %i.aay, i64 16
  %wide.load1005 = load <2 x double>, ptr %i.aay, align 8, !tbaa !35
  %wide.load1006 = load <2 x double>, ptr %i.aaz, align 8, !tbaa !35
  %i.aba = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %index1004 ; 2 uses
  %i.abb = getelementptr i8, ptr %i.aba, i64 16
  store <2 x double> %wide.load1005, ptr %i.aba, align 8, !tbaa !35
  store <2 x double> %wide.load1006, ptr %i.abb, align 8, !tbaa !35
  %index.next1007 = add nuw i64 %index1004, 4     ; 2 uses
  %i.abc = icmp eq i64 %index.next1007, %n.vec1002
  br i1 %i.abc, label %middle.block1008, label %vector.body1003, !llvm.loop !76

middle.block1008:                                 ; preds = %vector.body1003
  br i1 %cmp.n1009, label %._crit_edge.i.us.i, label %scalar.ph997.preheader

scalar.ph997.preheader:                           ; preds = %.preheader266.i.us.i, %middle.block1008
  %indvars.iv.i70.us.i.ph = phi i64 [ 0, %.preheader266.i.us.i ], [ %n.vec1002, %middle.block1008 ] ; 4 uses
  %i.abd = sub nsw i64 %wide.trip.count.i68.us.i, %indvars.iv.i70.us.i.ph
  %i.abe = sub nsw i64 %i.uy, %indvars.iv.i70.us.i.ph
  %xtraiter1071 = and i64 %i.abd, 7               ; 2 uses
  %lcmp.mod1072.not = icmp eq i64 %xtraiter1071, 0
  br i1 %lcmp.mod1072.not, label %scalar.ph997.prol.loopexit, label %scalar.ph997.prol

scalar.ph997.prol:                                ; preds = %scalar.ph997.preheader, %scalar.ph997.prol
  %indvars.iv.i70.us.i.prol = phi i64 [ %indvars.iv.next.i71.us.i.prol, %scalar.ph997.prol ], [ %indvars.iv.i70.us.i.ph, %scalar.ph997.preheader ] ; 3 uses
  %prol.iter1073 = phi i64 [ %prol.iter1073.next, %scalar.ph997.prol ], [ 0, %scalar.ph997.preheader ]
  %gep.i.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.i70.us.i.prol
  %i.abf = load double, ptr %gep.i.us.i.prol, align 8, !tbaa !35
  %gep392.i.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.i70.us.i.prol
  store double %i.abf, ptr %gep392.i.us.i.prol, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i.prol = add nuw nsw i64 %indvars.iv.i70.us.i.prol, 1 ; 2 uses
  %prol.iter1073.next = add i64 %prol.iter1073, 1 ; 2 uses
  %prol.iter1073.cmp.not = icmp eq i64 %prol.iter1073.next, %xtraiter1071
  br i1 %prol.iter1073.cmp.not, label %scalar.ph997.prol.loopexit, label %scalar.ph997.prol, !llvm.loop !77

scalar.ph997.prol.loopexit:                       ; preds = %scalar.ph997.prol, %scalar.ph997.preheader
  %indvars.iv.i70.us.i.unr = phi i64 [ %indvars.iv.i70.us.i.ph, %scalar.ph997.preheader ], [ %indvars.iv.next.i71.us.i.prol, %scalar.ph997.prol ]
  %i.abg = icmp ult i64 %i.abe, 7
  br i1 %i.abg, label %._crit_edge.i.us.i, label %scalar.ph997

scalar.ph997:                                     ; preds = %scalar.ph997.prol.loopexit, %scalar.ph997
  %indvars.iv.i70.us.i = phi i64 [ %indvars.iv.next.i71.us.i.7, %scalar.ph997 ], [ %indvars.iv.i70.us.i.unr, %scalar.ph997.prol.loopexit ] ; 10 uses
  %gep.i.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.i70.us.i
  %i.abh = load double, ptr %gep.i.us.i, align 8, !tbaa !35
  %gep392.i.us.i = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.i70.us.i
  store double %i.abh, ptr %gep392.i.us.i, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i = add nuw nsw i64 %indvars.iv.i70.us.i, 1 ; 2 uses
  %gep.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.next.i71.us.i
  %i.abi = load double, ptr %gep.i.us.i.1, align 8, !tbaa !35
  %gep392.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.next.i71.us.i
  store double %i.abi, ptr %gep392.i.us.i.1, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i.1 = add nuw nsw i64 %indvars.iv.i70.us.i, 2 ; 2 uses
  %gep.i.us.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.next.i71.us.i.1
  %i.abj = load double, ptr %gep.i.us.i.2, align 8, !tbaa !35
  %gep392.i.us.i.2 = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.next.i71.us.i.1
  store double %i.abj, ptr %gep392.i.us.i.2, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i.2 = add nuw nsw i64 %indvars.iv.i70.us.i, 3 ; 2 uses
  %gep.i.us.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.next.i71.us.i.2
  %i.abk = load double, ptr %gep.i.us.i.3, align 8, !tbaa !35
  %gep392.i.us.i.3 = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.next.i71.us.i.2
  store double %i.abk, ptr %gep392.i.us.i.3, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i.3 = add nuw nsw i64 %indvars.iv.i70.us.i, 4 ; 2 uses
  %gep.i.us.i.4 = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.next.i71.us.i.3
  %i.abl = load double, ptr %gep.i.us.i.4, align 8, !tbaa !35
  %gep392.i.us.i.4 = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.next.i71.us.i.3
  store double %i.abl, ptr %gep392.i.us.i.4, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i.4 = add nuw nsw i64 %indvars.iv.i70.us.i, 5 ; 2 uses
  %gep.i.us.i.5 = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.next.i71.us.i.4
  %i.abm = load double, ptr %gep.i.us.i.5, align 8, !tbaa !35
  %gep392.i.us.i.5 = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.next.i71.us.i.4
  store double %i.abm, ptr %gep392.i.us.i.5, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i.5 = add nuw nsw i64 %indvars.iv.i70.us.i, 6 ; 2 uses
  %gep.i.us.i.6 = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.next.i71.us.i.5
  %i.abn = load double, ptr %gep.i.us.i.6, align 8, !tbaa !35
  %gep392.i.us.i.6 = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.next.i71.us.i.5
  store double %i.abn, ptr %gep392.i.us.i.6, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i.6 = add nuw nsw i64 %indvars.iv.i70.us.i, 7 ; 2 uses
  %gep.i.us.i.7 = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.next.i71.us.i.6
  %i.abo = load double, ptr %gep.i.us.i.7, align 8, !tbaa !35
  %gep392.i.us.i.7 = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.next.i71.us.i.6
  store double %i.abo, ptr %gep392.i.us.i.7, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i.7 = add nuw nsw i64 %indvars.iv.i70.us.i, 8 ; 2 uses
  %exitcond.not.i72.us.i.7 = icmp eq i64 %indvars.iv.next.i71.us.i.7, %wide.trip.count.i68.us.i
  br i1 %exitcond.not.i72.us.i.7, label %._crit_edge.i.us.i, label %scalar.ph997, !llvm.loop !78

._crit_edge.i.us.i:                               ; preds = %scalar.ph997.prol.loopexit, %scalar.ph997, %middle.block1008
  %indvars.iv.next311.i.us.i = add nuw nsw i64 %indvars.iv310.i.us.i, 1 ; 2 uses
  %exitcond314.not.i.us.i = icmp eq i64 %indvars.iv.next311.i.us.i, %wide.trip.count313.i.us.i
  br i1 %exitcond314.not.i.us.i, label %._crit_edge278.split.i.us.i, label %.preheader266.i.us.i, !llvm.loop !79

._crit_edge278.split.i.us.i:                      ; preds = %._crit_edge.i.us.i, %.preheader266.lr.ph.i.us.i, %.preheader275.i.us.i
  switch i32 %i.wa, label %.loopexit.i.us.i [
    i32 2, label %bb.ar
    i32 0, label %bb.ar
    i32 1, label %bb.ap
    i32 3, label %bb.y
    i32 4, label %bb.x
    i32 5, label %bb.w
    i32 6, label %bb.v
    i32 7, label %bb.z
    i32 8, label %bb.u
    i32 9, label %bb.t
    i32 10, label %bb.s
  ]

bb.s:                                             ; preds = %._crit_edge278.split.i.us.i
  br label %bb.z

bb.t:                                             ; preds = %._crit_edge278.split.i.us.i
  br label %bb.z

bb.u:                                             ; preds = %._crit_edge278.split.i.us.i
  br label %bb.z

bb.v:                                             ; preds = %._crit_edge278.split.i.us.i
  br label %bb.z

bb.w:                                             ; preds = %._crit_edge278.split.i.us.i
  br label %bb.z

bb.x:                                             ; preds = %._crit_edge278.split.i.us.i
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge278.split.i.us.i
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %._crit_edge278.split.i.us.i
  %.1253.i.us.i = phi i32 [ %.0252297.i.us.i, %bb.y ], [ %.0252297.i.us.i, %bb.x ], [ 1, %bb.w ], [ 1, %bb.v ], [ %.0252297.i.us.i, %._crit_edge278.split.i.us.i ], [ %.0252297.i.us.i, %bb.u ], [ -1, %bb.t ], [ -1, %bb.s ] ; 4 uses
  %.1250.i.us.i = phi i32 [ 1, %bb.y ], [ 1, %bb.x ], [ %.0249298.i.us.i, %bb.w ], [ %.0249298.i.us.i, %bb.v ], [ %.0249298.i.us.i, %._crit_edge278.split.i.us.i ], [ %.0249298.i.us.i, %bb.u ], [ %.0249298.i.us.i, %bb.t ], [ %.0249298.i.us.i, %bb.s ] ; 4 uses
  %.1247.i.us.i = phi i32 [ %.0246299.i.us.i, %bb.y ], [ %.0246299.i.us.i, %bb.x ], [ 1, %bb.w ], [ -1, %bb.v ], [ %.0246299.i.us.i, %._crit_edge278.split.i.us.i ], [ %.0246299.i.us.i, %bb.u ], [ -1, %bb.t ], [ 1, %bb.s ] ; 4 uses
  %.1244.i.us.i = phi i32 [ 1, %bb.y ], [ %.0243300.i.us.i, %bb.x ], [ %.0243300.i.us.i, %bb.w ], [ %.0243300.i.us.i, %bb.v ], [ %.0243300.i.us.i, %._crit_edge278.split.i.us.i ], [ 1, %bb.u ], [ %.0243300.i.us.i, %bb.t ], [ %.0243300.i.us.i, %bb.s ] ; 4 uses
  br i1 %i.rt, label %.lr.ph.i69.us.i, label %.loopexit.i.us.i

.lr.ph.i69.us.i:                                  ; preds = %bb.z
  %i.abp = sitofp i32 %.1247.i.us.i to double     ; 5 uses
  %i.abq = trunc i64 %indvars.iv355.i.us.i to i32
  %i.abr = add i32 %i.abq, 1
  %i.abs = mul i32 %i.abr, %i.ro                  ; 2 uses
  %i.abt = add nsw i32 %i.abs, -1
  %i.abu = mul nsw i32 %i.abt, %i.rp
  %i.abv = uitofp nneg i32 %.1244.i.us.i to double ; 5 uses
  %i.abw = add nsw i32 %i.abs, -2
  %i.abx = mul nsw i32 %i.abw, %i.rp
  %i.aby = sext i32 %i.abu to i64                 ; 5 uses
  %i.abz = sext i32 %i.abx to i64
  %invariant.gep393.i.us.i = getelementptr [8 x i8], ptr %i.wr, i64 %i.abz ; 5 uses
  br i1 %i.vr, label %.epil.preheader, label %.lr.ph.i69.us.i.new

.lr.ph.i69.us.i.new:                              ; preds = %.lr.ph.i69.us.i, %bb.ah
  %indvars.iv315.i.us.i = phi i64 [ %indvars.iv.next316.i.us.i.3, %bb.ah ], [ 0, %.lr.ph.i69.us.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %bb.ah ], [ 0, %.lr.ph.i69.us.i ]
  %i.aca = add nsw i64 %indvars.iv315.i.us.i, %i.aby ; 2 uses
  %i.acb = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.aca
  %i.acc = load double, ptr %i.acb, align 8, !tbaa !35
  br i1 %i.rs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i69.us.i.new
  %gep394.i.us.i = getelementptr [8 x i8], ptr %invariant.gep393.i.us.i, i64 %indvars.iv315.i.us.i
  %i.acd = load double, ptr %gep394.i.us.i, align 8, !tbaa !35
  %i.ace = fmul double %i.acd, %i.abv
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i69.us.i.new
  %i.acf = phi double [ %i.ace, %bb.aa ], [ 0.000000e+00, %.lr.ph.i69.us.i.new ]
  %i.acg = call double @llvm.fmuladd.f64(double %i.abp, double %i.acc, double %i.acf)
  %i.ach = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.aca
  store double %i.acg, ptr %i.ach, align 8, !tbaa !35
  %indvars.iv.next316.i.us.i = or disjoint i64 %indvars.iv315.i.us.i, 1 ; 2 uses
  %i.aci = add nsw i64 %indvars.iv.next316.i.us.i, %i.aby ; 2 uses
  %i.acj = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.aci
  %i.ack = load double, ptr %i.acj, align 8, !tbaa !35
  br i1 %i.rs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %gep394.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep393.i.us.i, i64 %indvars.iv.next316.i.us.i
  %i.acl = load double, ptr %gep394.i.us.i.1, align 8, !tbaa !35
  %i.acm = fmul double %i.acl, %i.abv
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.acn = phi double [ %i.acm, %bb.ac ], [ 0.000000e+00, %bb.ab ]
  %i.aco = call double @llvm.fmuladd.f64(double %i.abp, double %i.ack, double %i.acn)
  %i.acp = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.aci
  store double %i.aco, ptr %i.acp, align 8, !tbaa !35
  %indvars.iv.next316.i.us.i.1 = or disjoint i64 %indvars.iv315.i.us.i, 2 ; 2 uses
  %i.acq = add nsw i64 %indvars.iv.next316.i.us.i.1, %i.aby ; 2 uses
  %i.acr = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.acq
  %i.acs = load double, ptr %i.acr, align 8, !tbaa !35
  br i1 %i.rs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %gep394.i.us.i.2 = getelementptr [8 x i8], ptr %invariant.gep393.i.us.i, i64 %indvars.iv.next316.i.us.i.1
  %i.act = load double, ptr %gep394.i.us.i.2, align 8, !tbaa !35
  %i.acu = fmul double %i.act, %i.abv
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.acv = phi double [ %i.acu, %bb.ae ], [ 0.000000e+00, %bb.ad ]
  %i.acw = call double @llvm.fmuladd.f64(double %i.abp, double %i.acs, double %i.acv)
  %i.acx = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.acq
  store double %i.acw, ptr %i.acx, align 8, !tbaa !35
  %indvars.iv.next316.i.us.i.2 = or disjoint i64 %indvars.iv315.i.us.i, 3 ; 2 uses
  %i.acy = add nsw i64 %indvars.iv.next316.i.us.i.2, %i.aby ; 2 uses
  %i.acz = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.acy
  %i.ada = load double, ptr %i.acz, align 8, !tbaa !35
  br i1 %i.rs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %gep394.i.us.i.3 = getelementptr [8 x i8], ptr %invariant.gep393.i.us.i, i64 %indvars.iv.next316.i.us.i.2
  %i.adb = load double, ptr %gep394.i.us.i.3, align 8, !tbaa !35
  %i.adc = fmul double %i.adb, %i.abv
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.add = phi double [ %i.adc, %bb.ag ], [ 0.000000e+00, %bb.af ]
  %i.ade = call double @llvm.fmuladd.f64(double %i.abp, double %i.ada, double %i.add)
  %i.adf = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.acy
  store double %i.ade, ptr %i.adf, align 8, !tbaa !35
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
  %i.adg = add nsw i64 %indvars.iv315.i.us.i.epil, %i.aby ; 2 uses
  %i.adh = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.adg
  %i.adi = load double, ptr %i.adh, align 8, !tbaa !35
  br i1 %i.rs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %gep394.i.us.i.epil = getelementptr [8 x i8], ptr %invariant.gep393.i.us.i, i64 %indvars.iv315.i.us.i.epil
  %i.adj = load double, ptr %gep394.i.us.i.epil, align 8, !tbaa !35
  %i.adk = fmul double %i.adj, %i.abv
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.adl = phi double [ %i.adk, %bb.aj ], [ 0.000000e+00, %bb.ai ]
  %i.adm = call double @llvm.fmuladd.f64(double %i.abp, double %i.adi, double %i.adl)
  %i.adn = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.adg
  store double %i.adm, ptr %i.adn, align 8, !tbaa !35
  %indvars.iv.next316.i.us.i.epil = add nuw nsw i64 %indvars.iv315.i.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1074
  br i1 %epil.iter.cmp.not, label %.preheader273.i.us.i, label %bb.ai, !llvm.loop !81

.preheader273.i.us.i:                             ; preds = %bb.ak, %.preheader273.i.us.i.unr-lcssa
  %i.ado = sitofp i32 %.1253.i.us.i to double     ; 3 uses
  %i.adp = mul nsw i64 %indvars.iv355.i.us.i, %i.rz ; 2 uses
  %i.adq = mul nsw i64 %i.adp, %i.ry              ; 3 uses
  %i.adr = uitofp nneg i32 %.1250.i.us.i to double ; 3 uses
  %i.ads = add nuw nsw i64 %i.adp, 1
  %i.adt = mul nsw i64 %i.ads, %i.ry
  %invariant.gep395.i.us.i = getelementptr [8 x i8], ptr %i.wr, i64 %i.adt ; 3 uses
  br i1 %i.vs, label %.epil.preheader1077, label %.preheader273.i.us.i.new

.preheader273.i.us.i.new:                         ; preds = %.preheader273.i.us.i, %bb.ao
  %indvars.iv320.i.us.i = phi i64 [ %indvars.iv.next321.i.us.i.1, %bb.ao ], [ 0, %.preheader273.i.us.i ] ; 4 uses
  %niter1083 = phi i64 [ %niter1083.next.1, %bb.ao ], [ 0, %.preheader273.i.us.i ]
  %i.adu = add nsw i64 %indvars.iv320.i.us.i, %i.adq ; 2 uses
  %i.adv = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.adu
  %i.adw = load double, ptr %i.adv, align 8, !tbaa !35
  br i1 %i.rs, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.preheader273.i.us.i.new
  %gep396.i.us.i = getelementptr [8 x i8], ptr %invariant.gep395.i.us.i, i64 %indvars.iv320.i.us.i
  %i.adx = load double, ptr %gep396.i.us.i, align 8, !tbaa !35
  %i.ady = fmul double %i.adx, %i.adr
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.preheader273.i.us.i.new
  %i.adz = phi double [ %i.ady, %bb.al ], [ 0.000000e+00, %.preheader273.i.us.i.new ]
  %i.aea = call double @llvm.fmuladd.f64(double %i.ado, double %i.adw, double %i.adz)
  %i.aeb = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.adu ; 2 uses
  %i.aec = load double, ptr %i.aeb, align 8, !tbaa !35
  %i.aed = fadd double %i.aec, %i.aea
  store double %i.aed, ptr %i.aeb, align 8, !tbaa !35
  %indvars.iv.next321.i.us.i = or disjoint i64 %indvars.iv320.i.us.i, 1 ; 2 uses
  %i.aee = add nsw i64 %indvars.iv.next321.i.us.i, %i.adq ; 2 uses
  %i.aef = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.aee
  %i.aeg = load double, ptr %i.aef, align 8, !tbaa !35
  br i1 %i.rs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %gep396.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep395.i.us.i, i64 %indvars.iv.next321.i.us.i
  %i.aeh = load double, ptr %gep396.i.us.i.1, align 8, !tbaa !35
  %i.aei = fmul double %i.aeh, %i.adr
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.aej = phi double [ %i.aei, %bb.an ], [ 0.000000e+00, %bb.am ]
  %i.aek = call double @llvm.fmuladd.f64(double %i.ado, double %i.aeg, double %i.aej)
  %i.ael = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.aee ; 2 uses
  %i.aem = load double, ptr %i.ael, align 8, !tbaa !35
  %i.aen = fadd double %i.aem, %i.aek
  store double %i.aen, ptr %i.ael, align 8, !tbaa !35
  %indvars.iv.next321.i.us.i.1 = add nuw nsw i64 %indvars.iv320.i.us.i, 2 ; 2 uses
  %niter1083.next.1 = add i64 %niter1083, 2       ; 2 uses
  %niter1083.ncmp.1 = icmp eq i64 %niter1083.next.1, %unroll_iter1082
  br i1 %niter1083.ncmp.1, label %.loopexit.i.us.i.loopexit1048.unr-lcssa, label %.preheader273.i.us.i.new, !llvm.loop !82

bb.ap:                                            ; preds = %._crit_edge278.split.i.us.i
  br i1 %i.ru, label %bb.aq, label %.preheader271.i.us.i

.preheader271.i.us.i:                             ; preds = %bb.ap
  br i1 %i.rt, label %.lr.ph284.i.us.i, label %.loopexit.i.us.i

.lr.ph284.i.us.i:                                 ; preds = %.preheader271.i.us.i
  %i.aeo = mul nsw i64 %indvars.iv355.i.us.i, %i.rz ; 2 uses
  %i.aep = mul nsw i64 %i.aeo, %i.ry              ; 6 uses
  %i.aeq = trunc nsw i64 %i.aeo to i32
  %i.aer = add i32 %i.rr, %i.aeq
  %i.aes = mul nsw i32 %i.aer, %i.rp
  %i.aet = sext i32 %i.aes to i64                 ; 7 uses
  br i1 %min.iters.check962, label %scalar.ph961.preheader, label %vector.memcheck963

vector.memcheck963:                               ; preds = %.lr.ph284.i.us.i
  %i.aeu = shl nsw i64 %i.aet, 3                  ; 2 uses
  %i.aev = add i64 %i.wb, %i.aeu                  ; 2 uses
  %i.aew = getelementptr i8, ptr %i.az, i64 %i.aev ; 3 uses
  %i.aex = add i64 %i.wd, %i.aeu                  ; 2 uses
  %i.aey = getelementptr i8, ptr %i.az, i64 %i.aex ; 3 uses
  %i.aez = getelementptr i8, ptr %i.ax, i64 %i.aev ; 2 uses
  %i.afa = getelementptr i8, ptr %i.ax, i64 %i.aex ; 2 uses
  %bound0964 = icmp ult ptr %i.aew, %scevgep960
  %bound1965 = icmp ult ptr %i.wq, %i.aey
  %found.conflict966 = and i1 %bound0964, %bound1965
  %i.afb = or i1 %found.conflict966, %stride.check967
  %bound0968 = icmp ult ptr %i.aew, %scevgep959
  %bound1969 = icmp ult ptr %i.wr, %i.aey
  %found.conflict970 = and i1 %bound0968, %bound1969
  %conflict.rdx971 = or i1 %i.afb, %found.conflict970
  %bound0972 = icmp ult ptr %i.aew, %i.afa
  %bound1973 = icmp ult ptr %i.aez, %i.aey
  %found.conflict974 = and i1 %bound0972, %bound1973
  %conflict.rdx975 = or i1 %conflict.rdx971, %found.conflict974
  %conflict.rdx979 = or i1 %conflict.rdx975, %found.conflict982.a
  %bound1977 = icmp ult ptr %i.wq, %i.afa
  %bound1981 = icmp ult ptr %i.aez, %scevgep960
  %found.conflict982 = and i1 %bound1977, %bound1981
  %conflict.rdx983 = or i1 %conflict.rdx979, %found.conflict982
  br i1 %conflict.rdx983, label %scalar.ph961.preheader, label %vector.body986

vector.body986:                                   ; preds = %vector.memcheck963, %vector.body986
  %index987 = phi i64 [ %index.next991, %vector.body986 ], [ 0, %vector.memcheck963 ] ; 3 uses
  %i.afc = add nsw i64 %index987, %i.aep          ; 2 uses
  %i.afd = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.afc
  %wide.load988 = load <2 x double>, ptr %i.afd, align 8, !tbaa !35, !alias.scope !144
  %i.afe = add nsw i64 %index987, %i.aet          ; 2 uses
  %i.aff = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.afe
  store <2 x double> %wide.load988, ptr %i.aff, align 8, !tbaa !35, !alias.scope !145, !noalias !146
  %i.afg = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.afe
  %wide.load989 = load <2 x double>, ptr %i.afg, align 8, !tbaa !35, !alias.scope !147
  %i.afh = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.afc ; 2 uses
  %wide.load990 = load <2 x double>, ptr %i.afh, align 8, !tbaa !35, !alias.scope !148, !noalias !149
  %i.afi = fadd <2 x double> %wide.load989, %wide.load990
  store <2 x double> %i.afi, ptr %i.afh, align 8, !tbaa !35, !alias.scope !148, !noalias !149
  %index.next991 = add nuw i64 %index987, 2       ; 2 uses
  %i.afj = icmp eq i64 %index.next991, %n.vec985
  br i1 %i.afj, label %middle.block992, label %vector.body986, !llvm.loop !88

middle.block992:                                  ; preds = %vector.body986
  br i1 %cmp.n993, label %.loopexit.i.us.i, label %scalar.ph961.preheader

scalar.ph961.preheader:                           ; preds = %vector.memcheck963, %.lr.ph284.i.us.i, %middle.block992
  %indvars.iv325.i.us.i.ph = phi i64 [ 0, %vector.memcheck963 ], [ 0, %.lr.ph284.i.us.i ], [ %n.vec985, %middle.block992 ] ; 4 uses
  %i.afk = sub nsw i64 %wide.trip.count.i68.us.i, %indvars.iv325.i.us.i.ph
  %xtraiter1084 = and i64 %i.afk, 3               ; 2 uses
  %lcmp.mod1085.not = icmp eq i64 %xtraiter1084, 0
  br i1 %lcmp.mod1085.not, label %scalar.ph961.prol.loopexit, label %scalar.ph961.prol

scalar.ph961.prol:                                ; preds = %scalar.ph961.preheader, %scalar.ph961.prol
  %indvars.iv325.i.us.i.prol = phi i64 [ %indvars.iv.next326.i.us.i.prol, %scalar.ph961.prol ], [ %indvars.iv325.i.us.i.ph, %scalar.ph961.preheader ] ; 3 uses
  %prol.iter1086 = phi i64 [ %prol.iter1086.next, %scalar.ph961.prol ], [ 0, %scalar.ph961.preheader ]
  %i.afl = add nsw i64 %indvars.iv325.i.us.i.prol, %i.aep ; 2 uses
  %i.afm = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.afl
  %i.afn = load double, ptr %i.afm, align 8, !tbaa !35
  %i.afo = add nsw i64 %indvars.iv325.i.us.i.prol, %i.aet ; 2 uses
  %i.afp = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.afo
  store double %i.afn, ptr %i.afp, align 8, !tbaa !35
  %i.afq = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.afo
  %i.afr = load double, ptr %i.afq, align 8, !tbaa !35
  %i.afs = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.afl ; 2 uses
  %i.aft = load double, ptr %i.afs, align 8, !tbaa !35
  %i.afu = fadd double %i.afr, %i.aft
  store double %i.afu, ptr %i.afs, align 8, !tbaa !35
  %indvars.iv.next326.i.us.i.prol = add nuw nsw i64 %indvars.iv325.i.us.i.prol, 1 ; 2 uses
  %prol.iter1086.next = add i64 %prol.iter1086, 1 ; 2 uses
  %prol.iter1086.cmp.not = icmp eq i64 %prol.iter1086.next, %xtraiter1084
  br i1 %prol.iter1086.cmp.not, label %scalar.ph961.prol.loopexit, label %scalar.ph961.prol, !llvm.loop !89

scalar.ph961.prol.loopexit:                       ; preds = %scalar.ph961.prol, %scalar.ph961.preheader
  %indvars.iv325.i.us.i.unr = phi i64 [ %indvars.iv325.i.us.i.ph, %scalar.ph961.preheader ], [ %indvars.iv.next326.i.us.i.prol, %scalar.ph961.prol ]
  %i.afv = sub nsw i64 %indvars.iv325.i.us.i.ph, %wide.trip.count.i68.us.i
  %i.afw = icmp ugt i64 %i.afv, -4
  br i1 %i.afw, label %.loopexit.i.us.i, label %scalar.ph961

scalar.ph961:                                     ; preds = %scalar.ph961.prol.loopexit, %scalar.ph961
  %indvars.iv325.i.us.i = phi i64 [ %indvars.iv.next326.i.us.i.3, %scalar.ph961 ], [ %indvars.iv325.i.us.i.unr, %scalar.ph961.prol.loopexit ] ; 6 uses
  %i.afx = add nsw i64 %indvars.iv325.i.us.i, %i.aep ; 2 uses
  %i.afy = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.afx
  %i.afz = load double, ptr %i.afy, align 8, !tbaa !35
  %i.aga = add nsw i64 %indvars.iv325.i.us.i, %i.aet ; 2 uses
  %i.agb = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.aga
  store double %i.afz, ptr %i.agb, align 8, !tbaa !35
  %i.agc = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.aga
  %i.agd = load double, ptr %i.agc, align 8, !tbaa !35
  %i.age = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.afx ; 2 uses
  %i.agf = load double, ptr %i.age, align 8, !tbaa !35
  %i.agg = fadd double %i.agd, %i.agf
  store double %i.agg, ptr %i.age, align 8, !tbaa !35
  %indvars.iv.next326.i.us.i = add nuw nsw i64 %indvars.iv325.i.us.i, 1 ; 2 uses
  %i.agh = add nsw i64 %indvars.iv.next326.i.us.i, %i.aep ; 2 uses
  %i.agi = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.agh
  %i.agj = load double, ptr %i.agi, align 8, !tbaa !35
  %i.agk = add nsw i64 %indvars.iv.next326.i.us.i, %i.aet ; 2 uses
  %i.agl = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.agk
  store double %i.agj, ptr %i.agl, align 8, !tbaa !35
  %i.agm = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.agk
  %i.agn = load double, ptr %i.agm, align 8, !tbaa !35
  %i.ago = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.agh ; 2 uses
  %i.agp = load double, ptr %i.ago, align 8, !tbaa !35
  %i.agq = fadd double %i.agn, %i.agp
  store double %i.agq, ptr %i.ago, align 8, !tbaa !35
  %indvars.iv.next326.i.us.i.1 = add nuw nsw i64 %indvars.iv325.i.us.i, 2 ; 2 uses
  %i.agr = add nsw i64 %indvars.iv.next326.i.us.i.1, %i.aep ; 2 uses
  %i.ags = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.agr
  %i.agt = load double, ptr %i.ags, align 8, !tbaa !35
  %i.agu = add nsw i64 %indvars.iv.next326.i.us.i.1, %i.aet ; 2 uses
  %i.agv = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.agu
  store double %i.agt, ptr %i.agv, align 8, !tbaa !35
  %i.agw = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.agu
  %i.agx = load double, ptr %i.agw, align 8, !tbaa !35
  %i.agy = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.agr ; 2 uses
  %i.agz = load double, ptr %i.agy, align 8, !tbaa !35
  %i.aha = fadd double %i.agx, %i.agz
  store double %i.aha, ptr %i.agy, align 8, !tbaa !35
  %indvars.iv.next326.i.us.i.2 = add nuw nsw i64 %indvars.iv325.i.us.i, 3 ; 2 uses
  %i.ahb = add nsw i64 %indvars.iv.next326.i.us.i.2, %i.aep ; 2 uses
  %i.ahc = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.ahb
  %i.ahd = load double, ptr %i.ahc, align 8, !tbaa !35
  %i.ahe = add nsw i64 %indvars.iv.next326.i.us.i.2, %i.aet ; 2 uses
  %i.ahf = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.ahe
  store double %i.ahd, ptr %i.ahf, align 8, !tbaa !35
  %i.ahg = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.ahe
  %i.ahh = load double, ptr %i.ahg, align 8, !tbaa !35
  %i.ahi = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.ahb ; 2 uses
  %i.ahj = load double, ptr %i.ahi, align 8, !tbaa !35
  %i.ahk = fadd double %i.ahh, %i.ahj
  store double %i.ahk, ptr %i.ahi, align 8, !tbaa !35
  %indvars.iv.next326.i.us.i.3 = add nuw nsw i64 %indvars.iv325.i.us.i, 4 ; 2 uses
  %exitcond329.not.i.us.i.3 = icmp eq i64 %indvars.iv.next326.i.us.i.3, %wide.trip.count.i68.us.i
  br i1 %exitcond329.not.i.us.i.3, label %.loopexit.i.us.i, label %scalar.ph961, !llvm.loop !90

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.rw, label %.preheader267.i.us.i, label %.preheader269.i.us.i

.preheader269.i.us.i:                             ; preds = %bb.aq
  br i1 %i.rt, label %.lr.ph286.i.us.i, label %._crit_edge296.split.i.us.i

.lr.ph286.i.us.i:                                 ; preds = %.preheader269.i.us.i
  %i.ahl = mul nuw nsw i64 %indvars.iv355.i.us.i, %i.rz ; 6 uses
  %i.ahm = trunc nsw i64 %i.ahl to i32
  %i.ahn = add i32 %i.rr, %i.ahm
  %i.aho = mul nsw i32 %i.ahn, %i.rp
  %i.ahp = add nuw nsw i64 %i.ahl, 1
  %i.ahq = mul nuw nsw i64 %i.ahp, %i.ry
  %i.ahr = mul nuw nsw i64 %i.ahl, %i.ry
  %i.ahs = add nuw nsw i64 %i.ahl, %i.sa          ; 2 uses
  %i.aht = mul nuw nsw i64 %i.ahs, %i.ry          ; 2 uses
  %i.ahu = add nuw nsw i64 %i.ahs, 1
  %i.ahv = mul nuw nsw i64 %i.ahu, %i.ry          ; 2 uses
  %i.ahw = sext i32 %i.aho to i64                 ; 2 uses
  %invariant.gep397.i.us.i = getelementptr [8 x i8], ptr %i.wq, i64 %i.ahw ; 5 uses
  %invariant.gep399.i.us.i = getelementptr [8 x i8], ptr %i.wr, i64 %i.ahq ; 2 uses
  %invariant.gep401.i.us.i = getelementptr [8 x i8], ptr %i.wq, i64 %i.ahr ; 2 uses
  br i1 %min.iters.check840, label %scalar.ph839.preheader, label %vector.memcheck841

vector.memcheck841:                               ; preds = %.lr.ph286.i.us.i
  %i.ahx = shl nsw i64 %i.ahw, 3
  %i.ahy = getelementptr i8, ptr %i.zh, i64 %i.ahx ; 3 uses
  %i.ahz = insertelement <4 x ptr> poison, ptr %invariant.gep397.i.us.i, i64 0
  %i.aia = shufflevector <4 x ptr> %i.ahz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aib = icmp ult <4 x ptr> %i.aia, %42
  %i.aic = insertelement <4 x ptr> poison, ptr %i.ahy, i64 0
  %i.aid = shufflevector <4 x ptr> %i.aic, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aie = icmp ult <4 x ptr> %45, %i.aid
  %i.aif = and <4 x i1> %i.aib, %i.aie
  %bound0858 = icmp ult ptr %invariant.gep397.i.us.i, %scevgep831.a
  %bound1859 = icmp ult ptr %scevgep832.a, %i.ahy
  %found.conflict860 = and i1 %bound0858, %bound1859
  %bound0862 = icmp ult ptr %invariant.gep397.i.us.i, %scevgep829.a
  %bound1863 = icmp ult ptr %scevgep830.a, %i.ahy
  %found.conflict864 = and i1 %bound0862, %bound1863
  %i.aig = bitcast <4 x i1> %i.aif to i4
  %i.aih = icmp ne i4 %i.aig, 0
  %op.rdx1037 = or i1 %i.aih, %found.conflict860
  %op.rdx1038 = or i1 %found.conflict864, %found.conflict868
  %op.rdx1041 = or i1 %op.rdx1037, %op.rdx1038
  %op.rdx1044.reass = or i1 %op.rdx1041, %invariant.op
  br i1 %op.rdx1044.reass, label %scalar.ph839.preheader, label %vector.body916

vector.body916:                                   ; preds = %vector.memcheck841, %vector.body916
  %index917 = phi i64 [ %index.next926, %vector.body916 ], [ 0, %vector.memcheck841 ] ; 6 uses
  %i.aii = getelementptr [8 x i8], ptr %invariant.gep397.i.us.i, i64 %index917
  store <2 x double> zeroinitializer, ptr %i.aii, align 8, !tbaa !35, !alias.scope !150, !noalias !151
  %i.aij = getelementptr [8 x i8], ptr %invariant.gep399.i.us.i, i64 %index917
  %wide.load918 = load <2 x double>, ptr %i.aij, align 8, !tbaa !35, !alias.scope !152
  %i.aik = getelementptr [8 x i8], ptr %invariant.gep401.i.us.i, i64 %index917 ; 2 uses
  %wide.load919 = load <2 x double>, ptr %i.aik, align 8, !tbaa !35, !alias.scope !153, !noalias !154
  %i.ail = fadd <2 x double> %wide.load918, %wide.load919
  store <2 x double> %i.ail, ptr %i.aik, align 8, !tbaa !35, !alias.scope !153, !noalias !154
  %i.aim = add nuw nsw i64 %index917, %i.aht      ; 2 uses
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.aim ; 2 uses
  %wide.load920 = load <2 x double>, ptr %i.ain, align 8, !tbaa !35, !alias.scope !155
  %i.aio = add nuw nsw i64 %index917, %i.ahv      ; 2 uses
  %i.aip = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.aio
  %wide.load921 = load <2 x double>, ptr %i.aip, align 8, !tbaa !35, !alias.scope !156 ; 2 uses
  %i.aiq = fsub <2 x double> %wide.load920, %wide.load921
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.aim ; 2 uses
  %wide.load922 = load <2 x double>, ptr %i.air, align 8, !tbaa !35, !alias.scope !157, !noalias !158
  %i.ais = fadd <2 x double> %wide.load922, %i.aiq
  store <2 x double> %i.ais, ptr %i.air, align 8, !tbaa !35, !alias.scope !157, !noalias !158
  %i.ait = fneg <2 x double> %wide.load921
  %wide.load924 = load <2 x double>, ptr %i.ain, align 8, !tbaa !35, !alias.scope !155
  %i.aiu = fsub <2 x double> %i.ait, %wide.load924
  %i.aiv = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.aio ; 2 uses
  %wide.load925 = load <2 x double>, ptr %i.aiv, align 8, !tbaa !35, !alias.scope !159, !noalias !160
  %i.aiw = fadd <2 x double> %wide.load925, %i.aiu
  store <2 x double> %i.aiw, ptr %i.aiv, align 8, !tbaa !35, !alias.scope !159, !noalias !160
  %index.next926 = add nuw i64 %index917, 2       ; 2 uses
  %i.aix = icmp eq i64 %index.next926, %n.vec915
  br i1 %i.aix, label %middle.block927, label %vector.body916, !llvm.loop !99

middle.block927:                                  ; preds = %vector.body916
  br i1 %cmp.n928, label %.preheader.preheader.i.us.i, label %scalar.ph839.preheader

scalar.ph839.preheader:                           ; preds = %vector.memcheck841, %.lr.ph286.i.us.i, %middle.block927
  %indvars.iv330.i.us.i.ph = phi i64 [ 0, %vector.memcheck841 ], [ 0, %.lr.ph286.i.us.i ], [ %n.vec915, %middle.block927 ]
  br label %scalar.ph839

scalar.ph839:                                     ; preds = %scalar.ph839.preheader, %scalar.ph839
  %indvars.iv330.i.us.i = phi i64 [ %indvars.iv.next331.i.us.i, %scalar.ph839 ], [ %indvars.iv330.i.us.i.ph, %scalar.ph839.preheader ] ; 6 uses
  %gep398.i.us.i = getelementptr [8 x i8], ptr %invariant.gep397.i.us.i, i64 %indvars.iv330.i.us.i
  store double 0.000000e+00, ptr %gep398.i.us.i, align 8, !tbaa !35
  %gep400.i.us.i = getelementptr [8 x i8], ptr %invariant.gep399.i.us.i, i64 %indvars.iv330.i.us.i
  %i.aiy = load double, ptr %gep400.i.us.i, align 8, !tbaa !35
  %gep402.i.us.i = getelementptr [8 x i8], ptr %invariant.gep401.i.us.i, i64 %indvars.iv330.i.us.i ; 2 uses
  %i.aiz = load double, ptr %gep402.i.us.i, align 8, !tbaa !35
  %i.aja = fadd double %i.aiy, %i.aiz
  store double %i.aja, ptr %gep402.i.us.i, align 8, !tbaa !35
  %i.ajb = add nuw nsw i64 %indvars.iv330.i.us.i, %i.aht ; 2 uses
  %i.ajc = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.ajb ; 2 uses
  %i.ajd = load double, ptr %i.ajc, align 8, !tbaa !35
  %i.aje = add nuw nsw i64 %indvars.iv330.i.us.i, %i.ahv ; 2 uses
  %i.ajf = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.aje ; 2 uses
  %i.ajg = load double, ptr %i.ajf, align 8, !tbaa !35
  %i.ajh = fsub double %i.ajd, %i.ajg
  %i.aji = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.ajb ; 2 uses
  %i.ajj = load double, ptr %i.aji, align 8, !tbaa !35
  %i.ajk = fadd double %i.ajj, %i.ajh
  store double %i.ajk, ptr %i.aji, align 8, !tbaa !35
  %i.ajl = load double, ptr %i.ajf, align 8, !tbaa !35
  %i.ajm = fneg double %i.ajl
  %i.ajn = load double, ptr %i.ajc, align 8, !tbaa !35
  %i.ajo = fsub double %i.ajm, %i.ajn
  %i.ajp = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.aje ; 2 uses
  %i.ajq = load double, ptr %i.ajp, align 8, !tbaa !35
  %i.ajr = fadd double %i.ajq, %i.ajo
  store double %i.ajr, ptr %i.ajp, align 8, !tbaa !35
  %indvars.iv.next331.i.us.i = add nuw nsw i64 %indvars.iv330.i.us.i, 1 ; 2 uses
  %exitcond334.not.i.us.i = icmp eq i64 %indvars.iv.next331.i.us.i, %wide.trip.count.i68.us.i
  br i1 %exitcond334.not.i.us.i, label %.preheader.preheader.i.us.i, label %scalar.ph839, !llvm.loop !100

.preheader267.i.us.i:                             ; preds = %bb.aq
  br i1 %i.rt, label %.lr.ph288.i.us.i, label %._crit_edge296.split.i.us.i

.lr.ph288.i.us.i:                                 ; preds = %.preheader267.i.us.i
  %i.ajs = mul nuw nsw i64 %indvars.iv355.i.us.i, %i.rz ; 7 uses
  %i.ajt = trunc nsw i64 %i.ajs to i32
  %i.aju = add i32 %i.rr, %i.ajt
  %i.ajv = mul nsw i32 %i.aju, %i.rp
  %i.ajw = or disjoint i64 %i.ajs, 1
  %i.ajx = mul nuw nsw i64 %i.ajw, %i.ry
  %i.ajy = mul nuw nsw i64 %i.ajs, %i.ry
  %i.ajz = add nuw nsw i64 %i.ajs, %i.sa          ; 3 uses
  %i.aka = add nsw i64 %i.ajz, -1
  %i.akb = mul nsw i64 %i.aka, %i.ry
  %i.akc = add nuw nsw i64 %i.ajz, 1
  %i.akd = mul nuw nsw i64 %i.akc, %i.ry          ; 4 uses
  %i.ake = mul nuw nsw i64 %i.ajz, %i.ry          ; 4 uses
  %i.akf = sext i32 %i.ajv to i64                 ; 2 uses
  %invariant.gep403.i.us.i = getelementptr [8 x i8], ptr %i.wq, i64 %i.akf ; 8 uses
  %invariant.gep405.i.us.i = getelementptr [8 x i8], ptr %i.wr, i64 %i.ajx ; 4 uses
  %invariant.gep407.i.us.i = getelementptr [8 x i8], ptr %i.wq, i64 %i.ajy ; 4 uses
  %invariant.gep409.i.us.i = getelementptr [8 x i8], ptr %i.wr, i64 %i.akb ; 4 uses
  br i1 %min.iters.check637, label %scalar.ph636.preheader, label %vector.memcheck638

vector.memcheck638:                               ; preds = %.lr.ph288.i.us.i
  %i.akg = shl nsw i64 %i.akf, 3
  %i.akh = getelementptr i8, ptr %i.zu, i64 %i.akg ; 4 uses
  %i.aki = insertelement <4 x ptr> poison, ptr %invariant.gep403.i.us.i, i64 0
  %i.akj = shufflevector <4 x ptr> %i.aki, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.akk = icmp ult <4 x ptr> %i.akj, %i.wv
  %i.akl = insertelement <4 x ptr> poison, ptr %i.akh, i64 0
  %i.akm = shufflevector <4 x ptr> %i.akl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.akn = icmp ult <4 x ptr> %i.wz, %i.akm
  %i.ako = and <4 x i1> %i.akk, %i.akn
  %bound0655 = icmp ult ptr %invariant.gep403.i.us.i, %scevgep627
  %bound1656 = icmp ult ptr %scevgep629.a, %i.akh
  %found.conflict657 = and i1 %bound0655, %bound1656
  %bound0659 = icmp ult ptr %invariant.gep403.i.us.i, %scevgep627.a
  %bound1660 = icmp ult ptr %scevgep628.a, %i.akh
  %found.conflict661 = and i1 %bound0659, %bound1660
  %bound0663 = icmp ult ptr %invariant.gep403.i.us.i, %scevgep624.a
  %bound1664 = icmp ult ptr %scevgep626.a, %i.akh
  %found.conflict665 = and i1 %bound0663, %bound1664
  %rdx.op1012.reass = or <4 x i1> %i.ako, %invariant.op1103
  %i.akp = bitcast <4 x i1> %rdx.op1012.reass to i4
  %i.akq = icmp ne i4 %i.akp, 0
  %op.rdx1023 = or i1 %i.aar, %found.conflict657
  %op.rdx1024 = or i1 %found.conflict661, %found.conflict665
  %op.rdx1025 = or i1 %op.rdx1023, %op.rdx1024
  %op.rdx1026 = or i1 %op.rdx1025, %i.akq
  br i1 %op.rdx1026, label %scalar.ph636.preheader, label %vector.body729

vector.body729:                                   ; preds = %vector.memcheck638, %vector.body729
  %index730 = phi i64 [ %index.next738, %vector.body729 ], [ 0, %vector.memcheck638 ] ; 7 uses
  %i.akr = getelementptr [8 x i8], ptr %invariant.gep403.i.us.i, i64 %index730
  store <2 x double> zeroinitializer, ptr %i.akr, align 8, !tbaa !35, !alias.scope !161, !noalias !162
  %i.aks = getelementptr [8 x i8], ptr %invariant.gep405.i.us.i, i64 %index730
  %wide.load731 = load <2 x double>, ptr %i.aks, align 8, !tbaa !35, !alias.scope !163
  %i.akt = getelementptr [8 x i8], ptr %invariant.gep407.i.us.i, i64 %index730 ; 2 uses
  %wide.load732 = load <2 x double>, ptr %i.akt, align 8, !tbaa !35, !alias.scope !164, !noalias !165
  %i.aku = fadd <2 x double> %wide.load731, %wide.load732
  store <2 x double> %i.aku, ptr %i.akt, align 8, !tbaa !35, !alias.scope !164, !noalias !165
  %i.akv = getelementptr [8 x i8], ptr %invariant.gep409.i.us.i, i64 %index730
  %wide.load733 = load <2 x double>, ptr %i.akv, align 8, !tbaa !35, !alias.scope !166
  %i.akw = add nuw nsw i64 %index730, %i.akd      ; 2 uses
  %i.akx = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.akw
  %wide.load734 = load <2 x double>, ptr %i.akx, align 8, !tbaa !35, !alias.scope !167
  %i.aky = fsub <2 x double> %wide.load733, %wide.load734
  %i.akz = add nuw nsw i64 %index730, %i.ake      ; 2 uses
  %i.ala = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.akz ; 2 uses
  %wide.load735 = load <2 x double>, ptr %i.ala, align 8, !tbaa !35, !alias.scope !168, !noalias !169
  %i.alb = fadd <2 x double> %wide.load735, %i.aky
  store <2 x double> %i.alb, ptr %i.ala, align 8, !tbaa !35, !alias.scope !168, !noalias !169
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.akz
  %wide.load736 = load <2 x double>, ptr %i.alc, align 8, !tbaa !35, !alias.scope !170
  %i.ald = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.akw ; 2 uses
  %wide.load737 = load <2 x double>, ptr %i.ald, align 8, !tbaa !35, !alias.scope !171, !noalias !172
  %i.ale = fsub <2 x double> %wide.load737, %wide.load736
  store <2 x double> %i.ale, ptr %i.ald, align 8, !tbaa !35, !alias.scope !171, !noalias !172
  %index.next738 = add nuw i64 %index730, 2       ; 2 uses
  %i.alf = icmp eq i64 %index.next738, %n.vec728
  br i1 %i.alf, label %middle.block739, label %vector.body729, !llvm.loop !110

middle.block739:                                  ; preds = %vector.body729
  br i1 %cmp.n740, label %.preheader.preheader.i.us.i, label %scalar.ph636.preheader

scalar.ph636.preheader:                           ; preds = %vector.memcheck638, %.lr.ph288.i.us.i, %middle.block739
  %indvars.iv335.i.us.i.ph = phi i64 [ 0, %vector.memcheck638 ], [ 0, %.lr.ph288.i.us.i ], [ %n.vec728, %middle.block739 ] ; 9 uses
  br i1 %lcmp.mod1088.not, label %scalar.ph636.prol.loopexit, label %scalar.ph636.prol

scalar.ph636.prol:                                ; preds = %scalar.ph636.preheader
  %gep404.i.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep403.i.us.i, i64 %indvars.iv335.i.us.i.ph
  store double 0.000000e+00, ptr %gep404.i.us.i.prol, align 8, !tbaa !35
  %gep406.i.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep405.i.us.i, i64 %indvars.iv335.i.us.i.ph
  %i.alg = load double, ptr %gep406.i.us.i.prol, align 8, !tbaa !35
  %gep408.i.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep407.i.us.i, i64 %indvars.iv335.i.us.i.ph ; 2 uses
  %i.alh = load double, ptr %gep408.i.us.i.prol, align 8, !tbaa !35
  %i.ali = fadd double %i.alg, %i.alh
  store double %i.ali, ptr %gep408.i.us.i.prol, align 8, !tbaa !35
  %gep410.i.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep409.i.us.i, i64 %indvars.iv335.i.us.i.ph
  %i.alj = load double, ptr %gep410.i.us.i.prol, align 8, !tbaa !35
  %i.alk = add nuw nsw i64 %indvars.iv335.i.us.i.ph, %i.akd ; 2 uses
  %i.all = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.alk
  %i.alm = load double, ptr %i.all, align 8, !tbaa !35
  %i.aln = fsub double %i.alj, %i.alm
  %i.alo = add nuw nsw i64 %indvars.iv335.i.us.i.ph, %i.ake ; 2 uses
  %i.alp = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.alo ; 2 uses
  %i.alq = load double, ptr %i.alp, align 8, !tbaa !35
  %i.alr = fadd double %i.alq, %i.aln
  store double %i.alr, ptr %i.alp, align 8, !tbaa !35
  %i.als = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.alo
  %i.alt = load double, ptr %i.als, align 8, !tbaa !35
  %i.alu = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.alk ; 2 uses
  %i.alv = load double, ptr %i.alu, align 8, !tbaa !35
  %i.alw = fsub double %i.alv, %i.alt
  store double %i.alw, ptr %i.alu, align 8, !tbaa !35
  %indvars.iv.next336.i.us.i.prol = or disjoint i64 %indvars.iv335.i.us.i.ph, 1
  br label %scalar.ph636.prol.loopexit

scalar.ph636.prol.loopexit:                       ; preds = %scalar.ph636.prol, %scalar.ph636.preheader
  %indvars.iv335.i.us.i.unr = phi i64 [ %indvars.iv335.i.us.i.ph, %scalar.ph636.preheader ], [ %indvars.iv.next336.i.us.i.prol, %scalar.ph636.prol ]
  %i.alx = icmp eq i64 %indvars.iv335.i.us.i.ph, %i.vv
  br i1 %i.alx, label %.preheader.preheader.i.us.i, label %scalar.ph636

scalar.ph636:                                     ; preds = %scalar.ph636.prol.loopexit, %scalar.ph636
  %indvars.iv335.i.us.i = phi i64 [ %indvars.iv.next336.i.us.i.1, %scalar.ph636 ], [ %indvars.iv335.i.us.i.unr, %scalar.ph636.prol.loopexit ] ; 8 uses
  %gep404.i.us.i = getelementptr [8 x i8], ptr %invariant.gep403.i.us.i, i64 %indvars.iv335.i.us.i
  store double 0.000000e+00, ptr %gep404.i.us.i, align 8, !tbaa !35
  %gep406.i.us.i = getelementptr [8 x i8], ptr %invariant.gep405.i.us.i, i64 %indvars.iv335.i.us.i
  %i.aly = load double, ptr %gep406.i.us.i, align 8, !tbaa !35
  %gep408.i.us.i = getelementptr [8 x i8], ptr %invariant.gep407.i.us.i, i64 %indvars.iv335.i.us.i ; 2 uses
  %i.alz = load double, ptr %gep408.i.us.i, align 8, !tbaa !35
  %i.ama = fadd double %i.aly, %i.alz
  store double %i.ama, ptr %gep408.i.us.i, align 8, !tbaa !35
  %gep410.i.us.i = getelementptr [8 x i8], ptr %invariant.gep409.i.us.i, i64 %indvars.iv335.i.us.i
  %i.amb = load double, ptr %gep410.i.us.i, align 8, !tbaa !35
  %i.amc = add nuw nsw i64 %indvars.iv335.i.us.i, %i.akd ; 2 uses
  %i.amd = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.amc
  %i.ame = load double, ptr %i.amd, align 8, !tbaa !35
  %i.amf = fsub double %i.amb, %i.ame
  %i.amg = add nuw nsw i64 %indvars.iv335.i.us.i, %i.ake ; 2 uses
  %i.amh = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.amg ; 2 uses
  %i.ami = load double, ptr %i.amh, align 8, !tbaa !35
  %i.amj = fadd double %i.ami, %i.amf
  store double %i.amj, ptr %i.amh, align 8, !tbaa !35
  %i.amk = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.amg
  %i.aml = load double, ptr %i.amk, align 8, !tbaa !35
  %i.amm = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.amc ; 2 uses
  %i.amn = load double, ptr %i.amm, align 8, !tbaa !35
  %i.amo = fsub double %i.amn, %i.aml
  store double %i.amo, ptr %i.amm, align 8, !tbaa !35
  %indvars.iv.next336.i.us.i = add nuw nsw i64 %indvars.iv335.i.us.i, 1 ; 6 uses
  %gep404.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep403.i.us.i, i64 %indvars.iv.next336.i.us.i
  store double 0.000000e+00, ptr %gep404.i.us.i.1, align 8, !tbaa !35
  %gep406.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep405.i.us.i, i64 %indvars.iv.next336.i.us.i
  %i.amp = load double, ptr %gep406.i.us.i.1, align 8, !tbaa !35
  %gep408.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep407.i.us.i, i64 %indvars.iv.next336.i.us.i ; 2 uses
  %i.amq = load double, ptr %gep408.i.us.i.1, align 8, !tbaa !35
  %i.amr = fadd double %i.amp, %i.amq
  store double %i.amr, ptr %gep408.i.us.i.1, align 8, !tbaa !35
  %gep410.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep409.i.us.i, i64 %indvars.iv.next336.i.us.i
  %i.ams = load double, ptr %gep410.i.us.i.1, align 8, !tbaa !35
  %i.amt = add nuw nsw i64 %indvars.iv.next336.i.us.i, %i.akd ; 2 uses
  %i.amu = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.amt
  %i.amv = load double, ptr %i.amu, align 8, !tbaa !35
  %i.amw = fsub double %i.ams, %i.amv
  %i.amx = add nuw nsw i64 %indvars.iv.next336.i.us.i, %i.ake ; 2 uses
  %i.amy = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.amx ; 2 uses
  %i.amz = load double, ptr %i.amy, align 8, !tbaa !35
  %i.ana = fadd double %i.amz, %i.amw
  store double %i.ana, ptr %i.amy, align 8, !tbaa !35
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.amx
  %i.anc = load double, ptr %i.anb, align 8, !tbaa !35
  %i.and = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.amt ; 2 uses
  %i.ane = load double, ptr %i.and, align 8, !tbaa !35
  %i.anf = fsub double %i.ane, %i.anc
  store double %i.anf, ptr %i.and, align 8, !tbaa !35
  %indvars.iv.next336.i.us.i.1 = add nuw nsw i64 %indvars.iv335.i.us.i, 2 ; 2 uses
  %exitcond339.not.i.us.i.1 = icmp eq i64 %indvars.iv.next336.i.us.i.1, %wide.trip.count.i68.us.i
  br i1 %exitcond339.not.i.us.i.1, label %.preheader.preheader.i.us.i, label %scalar.ph636, !llvm.loop !111

bb.ar:                                            ; preds = %._crit_edge278.split.i.us.i, %._crit_edge278.split.i.us.i
  br i1 %i.rt, label %.lr.ph291.i.us.i, label %.loopexit.i.us.i

.lr.ph291.i.us.i:                                 ; preds = %bb.ar
  %i.ang = mul nsw i64 %indvars.iv355.i.us.i, %i.rz ; 2 uses
  %i.anh = mul nsw i64 %i.ang, %i.ry              ; 6 uses
  %i.ani = trunc nsw i64 %i.ang to i32
  %i.anj = add i32 %i.rr, %i.ani
  %i.ank = mul nsw i32 %i.anj, %i.rp
  %i.anl = sext i32 %i.ank to i64                 ; 7 uses
  br i1 %min.iters.check486, label %scalar.ph485.preheader, label %vector.memcheck487

vector.memcheck487:                               ; preds = %.lr.ph291.i.us.i
  %i.anm = shl nsw i64 %i.anl, 3                  ; 2 uses
  %i.ann = add i64 %i.wl, %i.anm                  ; 2 uses
  %i.ano = getelementptr i8, ptr %i.az, i64 %i.ann ; 3 uses
  %i.anp = add i64 %i.wn, %i.anm                  ; 2 uses
  %i.anq = getelementptr i8, ptr %i.az, i64 %i.anp ; 3 uses
  %i.anr = getelementptr i8, ptr %i.ax, i64 %i.ann ; 2 uses
  %i.ans = getelementptr i8, ptr %i.ax, i64 %i.anp ; 2 uses
  %bound0488 = icmp ult ptr %i.ano, %scevgep484
  %bound1489 = icmp ult ptr %i.wq, %i.anq
  %found.conflict490 = and i1 %bound0488, %bound1489
  %i.ant = or i1 %found.conflict490, %stride.check491
  %bound0492 = icmp ult ptr %i.ano, %scevgep483
  %bound1493 = icmp ult ptr %i.wr, %i.anq
  %found.conflict494 = and i1 %bound0492, %bound1493
  %conflict.rdx495 = or i1 %i.ant, %found.conflict494
  %bound0496 = icmp ult ptr %i.ano, %i.ans
  %bound1497 = icmp ult ptr %i.anr, %i.anq
  %found.conflict498 = and i1 %bound0496, %bound1497
  %conflict.rdx499 = or i1 %conflict.rdx495, %found.conflict498
  %conflict.rdx503 = or i1 %conflict.rdx499, %found.conflict506.a
  %bound1501 = icmp ult ptr %i.wq, %i.ans
  %bound1505 = icmp ult ptr %i.anr, %scevgep484
  %found.conflict506 = and i1 %bound1501, %bound1505
  %conflict.rdx507 = or i1 %conflict.rdx503, %found.conflict506
  br i1 %conflict.rdx507, label %scalar.ph485.preheader, label %vector.body510

vector.body510:                                   ; preds = %vector.memcheck487, %vector.body510
  %index511 = phi i64 [ %index.next515, %vector.body510 ], [ 0, %vector.memcheck487 ] ; 3 uses
  %i.anu = add nsw i64 %index511, %i.anh          ; 2 uses
  %i.anv = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.anu
  %wide.load512 = load <2 x double>, ptr %i.anv, align 8, !tbaa !35, !alias.scope !173
  %i.anw = add nsw i64 %index511, %i.anl          ; 2 uses
  %i.anx = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.anw
  store <2 x double> %wide.load512, ptr %i.anx, align 8, !tbaa !35, !alias.scope !174, !noalias !175
  %i.any = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.anw
  %wide.load513 = load <2 x double>, ptr %i.any, align 8, !tbaa !35, !alias.scope !176
  %i.anz = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.anu ; 2 uses
  %wide.load514 = load <2 x double>, ptr %i.anz, align 8, !tbaa !35, !alias.scope !177, !noalias !178
  %i.aoa = fadd <2 x double> %wide.load513, %wide.load514
  store <2 x double> %i.aoa, ptr %i.anz, align 8, !tbaa !35, !alias.scope !177, !noalias !178
  %index.next515 = add nuw i64 %index511, 2       ; 2 uses
  %i.aob = icmp eq i64 %index.next515, %n.vec509
  br i1 %i.aob, label %middle.block516, label %vector.body510, !llvm.loop !117

middle.block516:                                  ; preds = %vector.body510
  br i1 %cmp.n517, label %.loopexit.i.us.i, label %scalar.ph485.preheader

scalar.ph485.preheader:                           ; preds = %vector.memcheck487, %.lr.ph291.i.us.i, %middle.block516
  %indvars.iv340.i.us.i.ph = phi i64 [ 0, %vector.memcheck487 ], [ 0, %.lr.ph291.i.us.i ], [ %n.vec509, %middle.block516 ] ; 4 uses
  %i.aoc = sub nsw i64 %wide.trip.count.i68.us.i, %indvars.iv340.i.us.i.ph
  %xtraiter1090 = and i64 %i.aoc, 3               ; 2 uses
  %lcmp.mod1091.not = icmp eq i64 %xtraiter1090, 0
  br i1 %lcmp.mod1091.not, label %scalar.ph485.prol.loopexit, label %scalar.ph485.prol

scalar.ph485.prol:                                ; preds = %scalar.ph485.preheader, %scalar.ph485.prol
  %indvars.iv340.i.us.i.prol = phi i64 [ %indvars.iv.next341.i.us.i.prol, %scalar.ph485.prol ], [ %indvars.iv340.i.us.i.ph, %scalar.ph485.preheader ] ; 3 uses
  %prol.iter1092 = phi i64 [ %prol.iter1092.next, %scalar.ph485.prol ], [ 0, %scalar.ph485.preheader ]
  %i.aod = add nsw i64 %indvars.iv340.i.us.i.prol, %i.anh ; 2 uses
  %i.aoe = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.aod
  %i.aof = load double, ptr %i.aoe, align 8, !tbaa !35
  %i.aog = add nsw i64 %indvars.iv340.i.us.i.prol, %i.anl ; 2 uses
  %i.aoh = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.aog
  store double %i.aof, ptr %i.aoh, align 8, !tbaa !35
  %i.aoi = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.aog
  %i.aoj = load double, ptr %i.aoi, align 8, !tbaa !35
  %i.aok = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.aod ; 2 uses
  %i.aol = load double, ptr %i.aok, align 8, !tbaa !35
  %i.aom = fadd double %i.aoj, %i.aol
  store double %i.aom, ptr %i.aok, align 8, !tbaa !35
  %indvars.iv.next341.i.us.i.prol = add nuw nsw i64 %indvars.iv340.i.us.i.prol, 1 ; 2 uses
  %prol.iter1092.next = add i64 %prol.iter1092, 1 ; 2 uses
  %prol.iter1092.cmp.not = icmp eq i64 %prol.iter1092.next, %xtraiter1090
  br i1 %prol.iter1092.cmp.not, label %scalar.ph485.prol.loopexit, label %scalar.ph485.prol, !llvm.loop !118

scalar.ph485.prol.loopexit:                       ; preds = %scalar.ph485.prol, %scalar.ph485.preheader
  %indvars.iv340.i.us.i.unr = phi i64 [ %indvars.iv340.i.us.i.ph, %scalar.ph485.preheader ], [ %indvars.iv.next341.i.us.i.prol, %scalar.ph485.prol ]
  %i.aon = sub nsw i64 %indvars.iv340.i.us.i.ph, %wide.trip.count.i68.us.i
  %i.aoo = icmp ugt i64 %i.aon, -4
  br i1 %i.aoo, label %.loopexit.i.us.i, label %scalar.ph485

scalar.ph485:                                     ; preds = %scalar.ph485.prol.loopexit, %scalar.ph485
  %indvars.iv340.i.us.i = phi i64 [ %indvars.iv.next341.i.us.i.3, %scalar.ph485 ], [ %indvars.iv340.i.us.i.unr, %scalar.ph485.prol.loopexit ] ; 6 uses
  %i.aop = add nsw i64 %indvars.iv340.i.us.i, %i.anh ; 2 uses
  %i.aoq = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.aop
  %i.aor = load double, ptr %i.aoq, align 8, !tbaa !35
  %i.aos = add nsw i64 %indvars.iv340.i.us.i, %i.anl ; 2 uses
  %i.aot = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.aos
  store double %i.aor, ptr %i.aot, align 8, !tbaa !35
  %i.aou = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.aos
  %i.aov = load double, ptr %i.aou, align 8, !tbaa !35
  %i.aow = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.aop ; 2 uses
  %i.aox = load double, ptr %i.aow, align 8, !tbaa !35
  %i.aoy = fadd double %i.aov, %i.aox
  store double %i.aoy, ptr %i.aow, align 8, !tbaa !35
  %indvars.iv.next341.i.us.i = add nuw nsw i64 %indvars.iv340.i.us.i, 1 ; 2 uses
  %i.aoz = add nsw i64 %indvars.iv.next341.i.us.i, %i.anh ; 2 uses
  %i.apa = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.aoz
  %i.apb = load double, ptr %i.apa, align 8, !tbaa !35
  %i.apc = add nsw i64 %indvars.iv.next341.i.us.i, %i.anl ; 2 uses
  %i.apd = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.apc
  store double %i.apb, ptr %i.apd, align 8, !tbaa !35
  %i.ape = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.apc
  %i.apf = load double, ptr %i.ape, align 8, !tbaa !35
  %i.apg = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.aoz ; 2 uses
  %i.aph = load double, ptr %i.apg, align 8, !tbaa !35
  %i.api = fadd double %i.apf, %i.aph
  store double %i.api, ptr %i.apg, align 8, !tbaa !35
  %indvars.iv.next341.i.us.i.1 = add nuw nsw i64 %indvars.iv340.i.us.i, 2 ; 2 uses
  %i.apj = add nsw i64 %indvars.iv.next341.i.us.i.1, %i.anh ; 2 uses
  %i.apk = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.apj
  %i.apl = load double, ptr %i.apk, align 8, !tbaa !35
  %i.apm = add nsw i64 %indvars.iv.next341.i.us.i.1, %i.anl ; 2 uses
  %i.apn = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.apm
  store double %i.apl, ptr %i.apn, align 8, !tbaa !35
  %i.apo = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.apm
  %i.app = load double, ptr %i.apo, align 8, !tbaa !35
  %i.apq = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.apj ; 2 uses
  %i.apr = load double, ptr %i.apq, align 8, !tbaa !35
  %i.aps = fadd double %i.app, %i.apr
  store double %i.aps, ptr %i.apq, align 8, !tbaa !35
  %indvars.iv.next341.i.us.i.2 = add nuw nsw i64 %indvars.iv340.i.us.i, 3 ; 2 uses
  %i.apt = add nsw i64 %indvars.iv.next341.i.us.i.2, %i.anh ; 2 uses
  %i.apu = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.apt
  %i.apv = load double, ptr %i.apu, align 8, !tbaa !35
  %i.apw = add nsw i64 %indvars.iv.next341.i.us.i.2, %i.anl ; 2 uses
  %i.apx = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.apw
  store double %i.apv, ptr %i.apx, align 8, !tbaa !35
  %i.apy = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.apw
  %i.apz = load double, ptr %i.apy, align 8, !tbaa !35
  %i.aqa = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.apt ; 2 uses
  %i.aqb = load double, ptr %i.aqa, align 8, !tbaa !35
  %i.aqc = fadd double %i.apz, %i.aqb
  store double %i.aqc, ptr %i.aqa, align 8, !tbaa !35
  %indvars.iv.next341.i.us.i.3 = add nuw nsw i64 %indvars.iv340.i.us.i, 4 ; 2 uses
  %exitcond344.not.i.us.i.3 = icmp eq i64 %indvars.iv.next341.i.us.i.3, %wide.trip.count.i68.us.i
  br i1 %exitcond344.not.i.us.i.3, label %.loopexit.i.us.i, label %scalar.ph485, !llvm.loop !119

.loopexit.i.us.i.loopexit1048.unr-lcssa:          ; preds = %bb.ao
  br i1 %lcmp.mod1080.not, label %.loopexit.i.us.i, label %.epil.preheader1077

.epil.preheader1077:                              ; preds = %.loopexit.i.us.i.loopexit1048.unr-lcssa, %.preheader273.i.us.i
  %indvars.iv320.i.us.i.epil.init = phi i64 [ 0, %.preheader273.i.us.i ], [ %indvars.iv.next321.i.us.i.1, %.loopexit.i.us.i.loopexit1048.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1081)
  %i.aqd = add nsw i64 %indvars.iv320.i.us.i.epil.init, %i.adq ; 2 uses
  %i.aqe = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.aqd
  %i.aqf = load double, ptr %i.aqe, align 8, !tbaa !35
  br i1 %i.rs, label %bb.as, label %.loopexit.i.us.i.loopexit1048.epilog-lcssa

bb.as:                                            ; preds = %.epil.preheader1077
  %gep396.i.us.i.epil = getelementptr [8 x i8], ptr %invariant.gep395.i.us.i, i64 %indvars.iv320.i.us.i.epil.init
  %i.aqg = load double, ptr %gep396.i.us.i.epil, align 8, !tbaa !35
  %i.aqh = fmul double %i.aqg, %i.adr
  br label %.loopexit.i.us.i.loopexit1048.epilog-lcssa

.loopexit.i.us.i.loopexit1048.epilog-lcssa:       ; preds = %bb.as, %.epil.preheader1077
  %i.aqi = phi double [ %i.aqh, %bb.as ], [ 0.000000e+00, %.epil.preheader1077 ]
  %i.aqj = call double @llvm.fmuladd.f64(double %i.ado, double %i.aqf, double %i.aqi)
  %i.aqk = getelementptr inbounds [8 x i8], ptr %i.wq, i64 %i.aqd ; 2 uses
  %i.aql = load double, ptr %i.aqk, align 8, !tbaa !35
  %i.aqm = fadd double %i.aql, %i.aqj
  store double %i.aqm, ptr %i.aqk, align 8, !tbaa !35
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
  %.pre-phi.i = phi i64 [ %.pre136.i, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i ], [ %i.ajs, %middle.block739 ], [ %i.ahl, %middle.block927 ], [ %i.ajs, %scalar.ph636.prol.loopexit ], [ %i.ajs, %scalar.ph636 ], [ %i.ahl, %scalar.ph839 ]
  %.2254367381.i.us.i = phi i32 [ %.2254.i.us.i, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i ], [ %.0252297.i.us.i, %middle.block739 ], [ %.0252297.i.us.i, %middle.block927 ], [ %.0252297.i.us.i, %scalar.ph636.prol.loopexit ], [ %.0252297.i.us.i, %scalar.ph636 ], [ %.0252297.i.us.i, %scalar.ph839 ]
  %.2251369380.i.us.i = phi i32 [ %.2251.i.us.i, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i ], [ %.0249298.i.us.i, %middle.block739 ], [ %.0249298.i.us.i, %middle.block927 ], [ %.0249298.i.us.i, %scalar.ph636.prol.loopexit ], [ %.0249298.i.us.i, %scalar.ph636 ], [ %.0249298.i.us.i, %scalar.ph839 ]
  %.2248371379.i.us.i = phi i32 [ %.2248.i.us.i, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i ], [ %.0246299.i.us.i, %middle.block739 ], [ %.0246299.i.us.i, %middle.block927 ], [ %.0246299.i.us.i, %scalar.ph636.prol.loopexit ], [ %.0246299.i.us.i, %scalar.ph636 ], [ %.0246299.i.us.i, %scalar.ph839 ]
  %.2245373378.i.us.i = phi i32 [ %.2245.i.us.i, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i ], [ %.0243300.i.us.i, %middle.block739 ], [ %.0243300.i.us.i, %middle.block927 ], [ %.0243300.i.us.i, %scalar.ph636.prol.loopexit ], [ %.0243300.i.us.i, %scalar.ph636 ], [ %.0243300.i.us.i, %scalar.ph839 ]
  %bound0 = icmp ult ptr %scevgep438, %scevgep
  %bound1 = icmp ult ptr %scevgep436, %scevgep437
  %found.conflict = and i1 %bound0, %bound1
  %i.aqn = or i1 %found.conflict, %stride.check
  br label %.preheader.i.us.i

.preheader.i.us.i:                                ; preds = %._crit_edge294.i.us.i, %.preheader.preheader.i.us.i
  %indvars.iv350.i.us.i = phi i64 [ 1, %.preheader.preheader.i.us.i ], [ %indvars.iv.next351.i.us.i, %._crit_edge294.i.us.i ] ; 2 uses
  %i.aqo = add nuw nsw i64 %indvars.iv350.i.us.i, %.pre-phi.i ; 2 uses
  %i.aqp = add nsw i64 %i.aqo, -1
  %i.aqq = mul nsw i64 %i.aqp, %i.ry
  %i.aqr = mul nuw nsw i64 %i.aqo, %i.ry
  %invariant.gep411.i.us.i = getelementptr [8 x i8], ptr %i.wr, i64 %i.aqq ; 10 uses
  %invariant.gep413.i.us.i = getelementptr [8 x i8], ptr %i.wq, i64 %i.aqr ; 10 uses
  %brmerge1122 = select i1 %min.iters.check440, i1 true, i1 %i.aqn
  br i1 %brmerge1122, label %scalar.ph439.preheader, label %vector.body444

vector.body444:                                   ; preds = %.preheader.i.us.i, %vector.body444
  %index445 = phi i64 [ %index.next450, %vector.body444 ], [ 0, %.preheader.i.us.i ] ; 3 uses
  %i.aqs = getelementptr [8 x i8], ptr %invariant.gep411.i.us.i, i64 %index445 ; 2 uses
  %i.aqt = getelementptr i8, ptr %i.aqs, i64 16
  %wide.load446 = load <2 x double>, ptr %i.aqs, align 8, !tbaa !35, !alias.scope !179
  %wide.load447 = load <2 x double>, ptr %i.aqt, align 8, !tbaa !35, !alias.scope !179
  %i.aqu = getelementptr [8 x i8], ptr %invariant.gep413.i.us.i, i64 %index445 ; 3 uses
  %i.aqv = getelementptr i8, ptr %i.aqu, i64 16   ; 2 uses
  %wide.load448 = load <2 x double>, ptr %i.aqu, align 8, !tbaa !35, !alias.scope !180, !noalias !179
  %wide.load449 = load <2 x double>, ptr %i.aqv, align 8, !tbaa !35, !alias.scope !180, !noalias !179
  %i.aqw = fadd <2 x double> %wide.load446, %wide.load448
  %i.aqx = fadd <2 x double> %wide.load447, %wide.load449
  store <2 x double> %i.aqw, ptr %i.aqu, align 8, !tbaa !35, !alias.scope !180, !noalias !179
  store <2 x double> %i.aqx, ptr %i.aqv, align 8, !tbaa !35, !alias.scope !180, !noalias !179
  %index.next450 = add nuw i64 %index445, 4       ; 2 uses
  %i.aqy = icmp eq i64 %index.next450, %n.vec443
  br i1 %i.aqy, label %middle.block451, label %vector.body444, !llvm.loop !123

middle.block451:                                  ; preds = %vector.body444
  br i1 %cmp.n452, label %._crit_edge294.i.us.i, label %scalar.ph439.preheader

scalar.ph439.preheader:                           ; preds = %.preheader.i.us.i, %middle.block451
  %indvars.iv345.i.us.i.ph = phi i64 [ %n.vec443, %middle.block451 ], [ 0, %.preheader.i.us.i ] ; 4 uses
  %i.aqz = sub nsw i64 %wide.trip.count.i68.us.i, %indvars.iv345.i.us.i.ph
end_hunk_0
begin_hunk_1_@after_problem_rcopy_from
declare void @after_problem_rcopy_from(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @doit(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @after_problem_rcopy_to(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cpyr0(ptr nofree noundef readonly captures(none) %0, i32 %1, i32 noundef %2, i32 noundef %3, i32 %4) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load double, ptr %i.d, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = sext i32 %3 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  store double %i.e, ptr %i.i, align 8, !tbaa !35
  ret void
}

declare void @bench_dotens2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ovtpvt_err(ptr noundef, ...) local_unnamed_addr #2

declare void @bench_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #4 = { nofree norecurse nosync nounwind memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = distinct !{!3, !34}
!4 = distinct !{!4, !34}
!5 = distinct !{!5, !34}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"double", !11, i64 0}
!18 = !{!"", !12, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !12, i64 84, !16, i64 88, !15, i64 96, !12, i64 104, !12, i64 108, !15, i64 112, !15, i64 120, !17, i64 128}
!19 = !{!18, !15, i64 16}
!20 = !{!18, !15, i64 24}
!21 = !{!"", !12, i64 0, !15, i64 8}
!22 = !{!21, !12, i64 0}
!23 = !{!21, !15, i64 8}
!24 = !{!18, !15, i64 8}
!25 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8}
!26 = !{!25, !12, i64 0}
!27 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !15, i64 16, !15, i64 24}
!28 = !{!27, !12, i64 0}
!29 = !{!12, !12, i64 0}
!30 = !{!27, !12, i64 4}
!31 = !{!27, !12, i64 8}
!32 = !{!27, !12, i64 12}
!33 = !{!27, !15, i64 16}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!17, !17, i64 0}
!36 = !{!18, !15, i64 48}
!37 = !{!"dotens2_closure_s", !15, i64 0}
!38 = !{!"p1 double", !15, i64 0}
!39 = !{!"", !37, i64 0, !38, i64 8, !38, i64 16}
!40 = !{!39, !38, i64 8}
!41 = !{!39, !38, i64 16}
!42 = !{!18, !15, i64 56}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!"dofft_closure_s", !15, i64 0, !12, i64 8}
!47 = !{!"", !46, i64 0, !15, i64 16, !12, i64 24}
!48 = !{!47, !12, i64 8}
!49 = !{!47, !15, i64 16}
!50 = !{!47, !12, i64 24}
!51 = distinct !{!51, !34}
!52 = distinct !{!52, !34}
!53 = distinct !{!53, !34}
!54 = distinct !{!54, !34, !43, !44}
!55 = distinct !{!55, !45}
!56 = distinct !{!56, !34, !43}
!57 = distinct !{!57, !34, !43, !44}
!58 = distinct !{!58, !45}
!59 = distinct !{!59, !34, !43}
!60 = distinct !{!60, !34}
!61 = distinct !{!61, !34, !43, !44}
!62 = distinct !{!62, !34, !44, !43}
!63 = distinct !{!63, !34, !43, !44}
!64 = distinct !{!64, !34, !44, !43}
!65 = distinct !{!65, !34, !43, !44}
!66 = distinct !{!66, !45}
!67 = distinct !{!67, !34, !43}
!68 = distinct !{!68, !34, !43, !44}
!69 = distinct !{!69, !34, !44, !43}
!70 = distinct !{!70, !34, !43, !44}
!71 = distinct !{!71, !34, !44, !43}
!72 = distinct !{!72, !34, !43, !44}
!73 = distinct !{!73, !45}
!74 = distinct !{!74, !34, !43}
!75 = distinct !{!75, !34}
!76 = distinct !{!76, !34, !43, !44}
!77 = distinct !{!77, !45}
!78 = distinct !{!78, !34, !43}
!79 = distinct !{!79, !34}
!80 = distinct !{!80, !34}
!81 = distinct !{!81, !45}
!82 = distinct !{!82, !34}
!83 = distinct !{!83, i1 false, !"LVerDomain"}
!84 = distinct !{!84, !83}
!85 = distinct !{!85, !83}
!86 = distinct !{!86, !83}
!87 = distinct !{!87, !83}
!88 = distinct !{!88, !34, !43, !44}
!89 = distinct !{!89, !45}
!90 = distinct !{!90, !34, !43}
!91 = distinct !{!91, i1 false, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !91}
!95 = distinct !{!95, !91}
!96 = distinct !{!96, !91}
!97 = distinct !{!97, !91}
!98 = distinct !{!98, !91}
!99 = distinct !{!99, !34, !43, !44}
!100 = distinct !{!100, !34, !43}
!101 = distinct !{!101, i1 false, !"LVerDomain"}
!102 = distinct !{!102, !101}
!103 = distinct !{!103, !101}
!104 = distinct !{!104, !101}
!105 = distinct !{!105, !101}
!106 = distinct !{!106, !101}
!107 = distinct !{!107, !101}
!108 = distinct !{!108, !101}
!109 = distinct !{!109, !101}
!110 = distinct !{!110, !34, !43, !44}
!111 = distinct !{!111, !34, !43}
!112 = distinct !{!112, i1 false, !"LVerDomain"}
!113 = distinct !{!113, !112}
!114 = distinct !{!114, !112}
!115 = distinct !{!115, !112}
!116 = distinct !{!116, !112}
!117 = distinct !{!117, !34, !43, !44}
!118 = distinct !{!118, !45}
!119 = distinct !{!119, !34, !43}
!120 = distinct !{!120, i1 false, !"LVerDomain"}
!121 = distinct !{!121, !120}
!122 = distinct !{!122, !120}
!123 = distinct !{!123, !34, !43, !44}
!124 = distinct !{!124, !45}
!125 = distinct !{!125, !34, !43}
!126 = distinct !{!126, !34}
!127 = distinct !{!127, !34}
!128 = distinct !{!128, !34}
!129 = distinct !{null, null}
!130 = distinct !{!130, !34}
!131 = distinct !{!131, !34}
!132 = distinct !{!132, !34}
!133 = distinct !{!133, !34, !43, !44}
!134 = distinct !{!134, !45}
!135 = distinct !{!135, !34, !43}
!136 = distinct !{!136, !34}
!137 = distinct !{!137, !34}
!138 = distinct !{!138, !34}
!139 = !{!27, !15, i64 24}
!140 = !{!39, !15, i64 0}
!141 = !{!"", !17, i64 0, !17, i64 8, !17, i64 16}
!142 = !{!141, !17, i64 8}
!143 = !{!141, !17, i64 0}
!144 = !{!84}
!145 = !{!85}
!146 = !{!87, !84, !86}
!147 = !{!86}
!148 = !{!87}
!149 = !{!84, !86}
!150 = !{!92}
!151 = !{!98, !97, !96, !95, !94, !93}
!152 = !{!95}
!153 = !{!98}
!154 = !{!97, !96, !95, !94, !93}
!155 = !{!94}
!156 = !{!93}
!157 = !{!97}
!158 = !{!96, !95, !94, !93}
!159 = !{!96}
!160 = !{!95, !94, !93}
!161 = !{!102}
!162 = !{!109, !108, !107, !106, !105, !104, !103}
!163 = !{!106}
!164 = !{!109}
!165 = !{!108, !107, !106, !105, !104, !103}
!166 = !{!105}
!167 = !{!104}
!168 = !{!108}
!169 = !{!107, !106, !105, !104, !103}
!170 = !{!103}
!171 = !{!107}
!172 = !{!106, !105, !104, !103}
!173 = !{!113}
!174 = !{!114}
!175 = !{!116, !113, !115}
!176 = !{!115}
!177 = !{!116}
!178 = !{!113, !115}
!179 = !{!121}
!180 = !{!122}
!181 = !{!141, !17, i64 16}
!182 = !{!18, !12, i64 36}
!183 = !{!18, !12, i64 40}
!184 = !{!18, !12, i64 0}
!185 = !{!47, !15, i64 0}
!186 = distinct !{!186, i1 false, !"LVerDomain"}
!187 = distinct !{!187, !186}
!188 = distinct !{!188, !186}
!189 = distinct !{!189, !34, !43, !44}
!190 = distinct !{!190, !45}
!191 = distinct !{!191, !34, !43}
!192 = distinct !{!192, i1 false, !"LVerDomain"}
!193 = distinct !{!193, !192}
!194 = distinct !{!194, !192}
!195 = distinct !{!195, !34, !43, !44}
!196 = distinct !{!196, !45}
!197 = distinct !{!197, !34, !43}
!198 = distinct !{!198, i1 false, !"LVerDomain"}
!199 = distinct !{!199, !198}
!200 = distinct !{!200, !198}
!201 = distinct !{!201, !34, !43, !44}
!202 = distinct !{!202, !45}
!203 = distinct !{!203, !34, !43}
!204 = distinct !{!204, i1 false, !"LVerDomain"}
!205 = distinct !{!205, !204}
!206 = distinct !{!206, !204}
!207 = distinct !{!207, !34, !43, !44}
!208 = distinct !{!208, !45}
!209 = distinct !{!209, !34, !43}
!210 = distinct !{!210, i1 false, !"LVerDomain"}
!211 = distinct !{!211, !210}
!212 = distinct !{!212, !210}
!213 = distinct !{!213, !34, !43, !44}
!214 = distinct !{!214, !45}
!215 = distinct !{!215, !34, !43}
!216 = distinct !{!216, i1 false, !"LVerDomain"}
!217 = distinct !{!217, !216}
!218 = distinct !{!218, !216}
!219 = distinct !{!219, !34, !43, !44}
!220 = distinct !{!220, !45}
!221 = distinct !{!221, !34, !43}
!222 = distinct !{!222, i1 false, !"LVerDomain"}
!223 = distinct !{!223, !222}
!224 = distinct !{!224, !222}
!225 = distinct !{!225, !34, !43, !44}
!226 = distinct !{!226, !45}
!227 = distinct !{!227, !34, !43}
!228 = distinct !{!228, i1 false, !"LVerDomain"}
!229 = distinct !{!229, !228}
!230 = distinct !{!230, !228}
!231 = distinct !{!231, !34, !43, !44}
!232 = distinct !{!232, !45}
!233 = distinct !{!233, !34, !43}
!234 = distinct !{!234, i1 false, !"LVerDomain"}
!235 = distinct !{!235, !234}
!236 = distinct !{!236, !234}
!237 = distinct !{!237, !34, !43, !44}
!238 = distinct !{!238, !45}
!239 = distinct !{!239, !34, !43}
!240 = distinct !{!240, i1 false, !"LVerDomain"}
!241 = distinct !{!241, !240}
!242 = distinct !{!242, !240}
!243 = distinct !{!243, !34, !43, !44}
!244 = distinct !{!244, !45}
!245 = distinct !{!245, !34, !43}
!246 = distinct !{!246, i1 false, !"LVerDomain"}
!247 = distinct !{!247, !246}
!248 = distinct !{!248, !246}
!249 = distinct !{!249, !34, !43, !44}
!250 = distinct !{!250, !45}
!251 = distinct !{!251, !34, !43}
!252 = distinct !{!252, !34}
!253 = distinct !{!253, !45}
!254 = distinct !{!254, !45}
!255 = distinct !{!255, !45}
!256 = distinct !{!256, !45}
!257 = distinct !{!257, !45}
!258 = distinct !{!258, !45}
!259 = distinct !{!259, !45}
!260 = distinct !{!260, !45}
!261 = distinct !{!261, !45}
!262 = distinct !{!262, !45}
!263 = distinct !{!263, !45}
!264 = distinct !{!264, !45}
!265 = distinct !{!265, !45}
!266 = distinct !{!266, !45}
!267 = distinct !{!267, !45}
!268 = distinct !{!268, !45}
!269 = distinct !{!269, !45}
!270 = distinct !{!270, !45}
!271 = distinct !{!271, !45}
!272 = distinct !{!272, !45}
!273 = distinct !{!273, !45}
!274 = distinct !{!274, !45}
!275 = distinct !{!275, !45}
!276 = distinct !{!276, !45}
!277 = distinct !{!277, !45}
!278 = distinct !{!278, !45}
!279 = distinct !{!279, !45}
!280 = distinct !{!280, !45}
!281 = distinct !{!281, !45}
!282 = distinct !{!282, !45}
!283 = distinct !{!283, !45}
!284 = distinct !{!284, !45}
!285 = distinct !{!285, !45}
!286 = distinct !{!286, !45}
!287 = distinct !{!287, !45}
!288 = distinct !{!288, !45}
!289 = distinct !{!289, !45}
!290 = distinct !{!290, !45}
!291 = distinct !{!291, !45}
!292 = !{!25, !12, i64 4}
!293 = !{!25, !12, i64 8}
!294 = !{!187}
!295 = !{!188}
!296 = !{!193}
!297 = !{!194}
!298 = !{!199}
!299 = !{!200}
!300 = !{!205}
!301 = !{!206}
!302 = !{!211}
!303 = !{!212}
!304 = !{!217}
!305 = !{!218}
!306 = !{!223}
!307 = !{!224}
!308 = !{!229}
!309 = !{!230}
!310 = !{!235}
!311 = !{!236}
!312 = !{!241}
!313 = !{!242}
!314 = !{!247}
!315 = !{!248}
!316 = distinct !{!316, !45}
!317 = distinct !{!317, !45}
!318 = distinct !{!318, !45}
!319 = distinct !{!319, !45}
!320 = distinct !{!320, !45}
!321 = distinct !{!321, !45}
!322 = distinct !{!322, !45}
!323 = distinct !{!323, !45}
!324 = distinct !{!324, !45}
!325 = distinct !{!325, !45}
!326 = distinct !{!326, !45}
!327 = distinct !{!327, !45}
!328 = distinct !{!328, !45}
!329 = distinct !{!329, !45}
!330 = distinct !{!330, !45}
!331 = distinct !{!331, !45}
!332 = distinct !{!332, !45}
!333 = distinct !{!333, !34}
end_hunk_1
