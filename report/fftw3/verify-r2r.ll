Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/verify-r2r?download=true
inline.NumInlined: 111
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 79
begin_hunk_0_@verify_r2r:bb.a
.lr.ph.i84.i.prol.loopexit:                       ; preds = %.lr.ph.i84.i.prol, %.lr.ph.i84.i.preheader880
  %indvars.iv.i85.i.unr = phi i64 [ %indvars.iv.i85.i.ph, %.lr.ph.i84.i.preheader880 ], [ %indvars.iv.next.i86.i.prol, %.lr.ph.i84.i.prol ]
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

raadd.exit88.i:                                   ; preds = %.lr.ph.i84.i.prol.loopexit, %.lr.ph.i84.i, %middle.block326, %rarand.exit48.i
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
  %invariant.op944 = sub i64 %i.ay, %i.ba
  %i.rl = sub i64 %i.be, %i.bk
  %diff.check402 = icmp ugt i64 %i.rl, -32
  br label %.lr.ph100.us.i

.lr.ph100.us.i:                                   ; preds = %._crit_edge101.us.i, %.lr.ph107.i
  %indvars.iv133.i = phi i64 [ 0, %.lr.ph107.i ], [ %indvars.iv.next134.i, %._crit_edge101.us.i ] ; 4 uses
  %.063104.us.i = phi i32 [ %i.e, %.lr.ph107.i ], [ %i.rp, %._crit_edge101.us.i ]
  %.064103.us.i = phi i32 [ 1, %.lr.ph107.i ], [ %i.ayd, %._crit_edge101.us.i ] ; 5 uses
  %.065102.us.i = phi double [ 0.000000e+00, %.lr.ph107.i ], [ %i.ayb, %._crit_edge101.us.i ]
  %i.rm = load ptr, ptr %i.qt, align 8, !tbaa !23
  %i.rn = getelementptr inbounds nuw [12 x i8], ptr %i.rm, i64 %indvars.iv133.i
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !26 ; 16 uses
  %i.rp = sdiv i32 %.063104.us.i, %i.ro           ; 27 uses
  %i.rq = icmp sgt i32 %.064103.us.i, 0
  %i.rr = add i32 %i.ro, -1                       ; 9 uses
  %i.rs = icmp sgt i32 %i.ro, 1                   ; 10 uses
  %i.rt = icmp sgt i32 %i.rp, 0                   ; 8 uses
  %i.ru = icmp sgt i32 %i.ro, 2
  %i.rv = and i32 %i.ro, 1
  %i.rw = icmp eq i32 %i.rv, 0
  %i.rx = lshr i32 %i.ro, 1
  %i.ry = sext i32 %i.rp to i64                   ; 44 uses
  %i.rz = sext i32 %i.ro to i64                   ; 18 uses
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
  %i.si = shl nsw i64 %i.rz, 3
  %i.sj = mul i64 %i.si, %i.ry
  %i.sk = shl nuw nsw i64 %wide.trip.count353.i.us.i, 3
  %i.sl = add nsw i64 %i.sk, -8
  %i.sm = mul i64 %i.sl, %i.ry
  %i.sn = shl nuw nsw i64 %wide.trip.count.i68.us.i, 3 ; 2 uses
  %i.so = shl nuw nsw i64 %wide.trip.count353.i.us.i, 3
  %i.sp = add nsw i64 %i.so, -16
  %i.sq = mul i64 %i.sp, %i.ry
  %i.sr = mul i32 %i.rp, %i.rr
  %i.ss = mul i32 %i.ro, %i.rp
  %i.st = shl nuw nsw i64 %wide.trip.count.i68.us.i, 3 ; 2 uses
  %i.su = shl nuw nsw i64 %wide.trip.count358.i.us.i, 3
  %i.sv = add nsw i64 %i.su, -8
  %i.sw = mul i64 %i.sv, %i.rz
  %i.sx = mul i64 %i.sw, %i.ry
  %i.sy = add i64 %i.sx, %i.st
  %i.sz = shl nsw i64 %i.rz, 3
  %i.ta = mul i64 %i.sz, %i.ry
  %i.tb = shl nuw nsw i64 %wide.trip.count.i68.us.i, 3 ; 6 uses
  %i.tc = mul i32 %i.rp, %i.rr
  %i.td = mul i32 %i.ro, %i.rp
  %i.te = add nsw i64 %wide.trip.count358.i.us.i, -1 ; 2 uses
  %i.tf = shl nsw i64 %i.te, 3
  %i.tg = mul i64 %i.tf, %i.rz
  %i.th = mul i64 %i.tg, %i.ry
  %i.ti = shl nsw i64 %i.rz, 3
  %i.tj = mul i64 %i.ti, %i.ry                    ; 2 uses
  %i.tk = shl nuw nsw i64 %i.sa, 3
  %i.tl = mul i64 %i.tk, %i.ry
  %i.tm = shl nsw i64 %i.te, 3
  %i.tn = mul i64 %i.tm, %i.rz                    ; 4 uses
  %i.to = shl nuw nsw i64 %i.sa, 3                ; 3 uses
  %i.tp = add i64 %i.tn, %i.to
  %i.tq = mul i64 %i.tp, %i.ry
  %i.tr = add i64 %i.tq, %i.tb
  %i.ts = shl nuw nsw i64 %i.sa, 3
  %i.tt = add nuw nsw i64 %i.ts, 8
  %i.tu = mul i64 %i.tt, %i.ry
  %i.tv = add i64 %i.tn, 8
  %i.tw = add i64 %i.tv, %i.to
  %i.tx = mul i64 %i.tw, %i.ry
  %i.ty = add i64 %i.tx, %i.tb
  %i.tz = shl nuw nsw i64 %i.sa, 3
  %i.ua = add nsw i64 %i.tz, -8
  %i.ub = mul i64 %i.ua, %i.ry
  %i.uc = add i64 %i.tn, -8
  %i.ud = add i64 %i.uc, %i.to
  %i.ue = mul i64 %i.ud, %i.ry
  %i.uf = shl nsw i64 %i.ry, 3
  %i.ug = add i64 %i.tn, 8
  %i.uh = mul i64 %i.ug, %i.ry
  %i.ui = shl nuw nsw i64 %wide.trip.count.i68.us.i, 3 ; 5 uses
  %i.uj = mul i32 %i.rp, %i.rr
  %i.uk = mul i32 %i.ro, %i.rp
  %i.ul = add nsw i64 %wide.trip.count358.i.us.i, -1 ; 2 uses
  %i.um = shl nsw i64 %i.ul, 3
  %i.un = mul i64 %i.um, %i.rz
  %i.uo = mul i64 %i.un, %i.ry
  %i.up = shl nsw i64 %i.rz, 3
  %i.uq = mul i64 %i.up, %i.ry                    ; 3 uses
  %i.ur = shl nuw nsw i64 %i.sa, 3
  %i.us = mul i64 %i.ur, %i.ry
  %i.ut = shl nsw i64 %i.ul, 3
  %i.uu = mul i64 %i.ut, %i.rz                    ; 2 uses
  %i.uv = shl nuw nsw i64 %i.sa, 3                ; 2 uses
  %i.uw = add i64 %i.uu, %i.uv
  %i.ux = mul i64 %i.uw, %i.ry
  %i.uy = add i64 %i.ux, %i.ui
  %i.uz = shl nuw nsw i64 %i.sa, 3
  %i.va = add nuw nsw i64 %i.uz, 8
  %i.vb = mul i64 %i.va, %i.ry
  %i.vc = add i64 %i.uu, 8                        ; 2 uses
  %i.vd = add i64 %i.vc, %i.uv
  %i.ve = mul i64 %i.vd, %i.ry
  %i.vf = add i64 %i.ve, %i.ui
  %i.vg = shl nsw i64 %i.ry, 3
  %i.vh = mul i64 %i.vc, %i.ry
  %i.vi = mul i32 %i.rp, %i.rr
  %i.vj = mul i32 %i.ro, %i.rp
  %i.vk = shl nuw nsw i64 %wide.trip.count.i68.us.i, 3 ; 2 uses
  %i.vl = shl nuw nsw i64 %wide.trip.count358.i.us.i, 3
  %i.vm = add nsw i64 %i.vl, -8
  %i.vn = mul i64 %i.vm, %i.rz
  %i.vo = mul i64 %i.vn, %i.ry
  %i.vp = add i64 %i.vo, %i.vk
  %i.vq = shl nsw i64 %i.rz, 3
  %i.vr = mul i64 %i.vq, %i.ry
  %i.vs = shl nsw i64 %i.ry, 3
  %i.vt = add nsw i64 %wide.trip.count.i68.us.i, -1 ; 3 uses
  %i.vu = getelementptr i8, ptr %i.az, i64 %i.ui
  %i.vv = getelementptr i8, ptr %i.az, i64 %i.uo
  %i.vw = getelementptr i8, ptr %i.vv, i64 %i.ui
  %i.vx = getelementptr i8, ptr %i.ax, i64 %i.vg
  %i.vy = getelementptr i8, ptr %i.ax, i64 %i.vh
  %i.vz = getelementptr i8, ptr %i.vy, i64 %i.ui
  %i.wa = getelementptr i8, ptr %i.az, i64 %i.tb
  %i.wb = getelementptr i8, ptr %i.az, i64 %i.th
  %i.wc = getelementptr i8, ptr %i.wb, i64 %i.tb
  %i.wd = getelementptr i8, ptr %i.ax, i64 %i.ub
  %i.we = getelementptr i8, ptr %i.ax, i64 %i.ue
  %i.wf = getelementptr i8, ptr %i.we, i64 %i.tb
  %i.wg = getelementptr i8, ptr %i.ax, i64 %i.uf
  %i.wh = getelementptr i8, ptr %i.ax, i64 %i.uh
  %i.wi = getelementptr i8, ptr %i.wh, i64 %i.tb
  %i.wj = getelementptr i8, ptr %i.az, i64 %i.sh
  %i.wk = getelementptr i8, ptr %i.az, i64 %i.sm
  %i.wl = getelementptr i8, ptr %i.wk, i64 %i.sn
  %i.wm = getelementptr i8, ptr %i.ax, i64 %i.sq
  %i.wn = getelementptr i8, ptr %i.wm, i64 %i.sn
  %min.iters.check821 = icmp ult i32 %i.rp, 4
  %.reass945 = add i64 %i.vs, %invariant.op944
  %diff.check819 = icmp ugt i64 %.reass945, -32
  %or.cond = select i1 %min.iters.check821, i1 true, i1 %diff.check819
  %n.vec823 = and i64 %wide.trip.count.i68.us.i, 2147483644 ; 3 uses
  %cmp.n830 = icmp eq i64 %n.vec823, %wide.trip.count.i68.us.i
  %xtraiter902 = and i64 %wide.trip.count.i68.us.i, 3 ; 3 uses
  %i.wo = icmp ult i64 %i.vt, 3
  %unroll_iter = and i64 %wide.trip.count.i68.us.i, 2147483644
  %lcmp.mod903.not = icmp eq i64 %xtraiter902, 0
  %lcmp.mod904 = icmp ne i64 %xtraiter902, 0
  %xtraiter906 = and i64 %wide.trip.count.i68.us.i, 1
  %i.wp = icmp eq i64 %i.vt, 0
  %unroll_iter910 = and i64 %wide.trip.count.i68.us.i, 2147483646
  %lcmp.mod908.not = icmp eq i64 %xtraiter906, 0
  %lcmp.mod909 = trunc i32 %i.rp to i1
  %min.iters.check806 = icmp ult i32 %i.rp, 14
  %stride.check784 = icmp slt i64 %i.vr, 0
  %n.vec808 = and i64 %wide.trip.count.i68.us.i, 2147483646 ; 3 uses
  %cmp.n816 = icmp eq i64 %n.vec808, %wide.trip.count.i68.us.i
  %min.iters.check755 = icmp ult i32 %i.rp, 22
  %stride.check660 = icmp slt i64 %i.uq, 0
  %23 = insertelement <8 x i1> poison, i1 %stride.check660, i64 7
  %stride.check703 = icmp slt i64 %i.uq, 0
  %stride.check751 = icmp slt i64 %i.uq, 0
  %24 = insertelement <8 x i1> poison, i1 %stride.check703, i64 5
  %i.wq = insertelement <8 x i1> %24, i1 %stride.check751, i64 6
  %n.vec757 = and i64 %wide.trip.count.i68.us.i, 2147483646 ; 3 uses
  %cmp.n770 = icmp eq i64 %n.vec757, %wide.trip.count.i68.us.i
  %min.iters.check623 = icmp ult i32 %i.rp, 32
  %stride.check547 = icmp slt i64 %i.tj, 0
  %stride.check505 = icmp slt i64 %i.tj, 0
  %n.vec625 = and i64 %wide.trip.count.i68.us.i, 2147483646 ; 3 uses
  %cmp.n637 = icmp eq i64 %n.vec625, %wide.trip.count.i68.us.i
  %xtraiter915 = and i64 %wide.trip.count.i68.us.i, 1
  %lcmp.mod916.not = icmp eq i64 %xtraiter915, 0
  %i.wr = add nsw i64 %wide.trip.count.i68.us.i, -1
  %min.iters.check470 = icmp ult i32 %i.rp, 14
  %stride.check448 = icmp slt i64 %i.ta, 0
  %n.vec472 = and i64 %wide.trip.count.i68.us.i, 2147483646 ; 3 uses
  %cmp.n480 = icmp eq i64 %n.vec472, %wide.trip.count.i68.us.i
  %min.iters.check423 = icmp ult i32 %i.rp, 6
  %stride.check = icmp slt i32 %i.rp, 0
  %n.vec425 = and i64 %wide.trip.count.i68.us.i, 2147483644 ; 3 uses
  %cmp.n434 = icmp eq i64 %n.vec425, %wide.trip.count.i68.us.i
  %min.iters.check404 = icmp ult i32 %i.rp, 4
  %or.cond832 = select i1 %min.iters.check404, i1 true, i1 %diff.check402
  %n.vec406 = and i64 %wide.trip.count.i68.us.i, 2147483644 ; 3 uses
  %cmp.n415 = icmp eq i64 %n.vec406, %wide.trip.count.i68.us.i
  br label %bb.r

bb.r:                                             ; preds = %racmp.exit.us.i, %.lr.ph100.us.i
  %.098.us.i = phi i32 [ 0, %.lr.ph100.us.i ], [ %i.ayc, %racmp.exit.us.i ]
  %.16697.us.i = phi double [ %.065102.us.i, %.lr.ph100.us.i ], [ %i.ayb, %racmp.exit.us.i ]
  br i1 %i.bt, label %.lr.ph.i.us.i, label %rarand.exit.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.r, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %.lr.ph.i.us.i ], [ 0, %bb.r ] ; 2 uses
  %i.ws = call double @mydrand() #11
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i.us.i
  store double %i.ws, ptr %i.wt, align 8, !tbaa !35
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i133
  br i1 %exitcond.not.i.us.i, label %rarand.exit.us.i, label %.lr.ph.i.us.i, !llvm.loop !53

rarand.exit.us.i:                                 ; preds = %.lr.ph.i.us.i, %bb.r
  br i1 %i.bw, label %.lr.ph.us.i, label %._crit_edge.split.us.i

.lr.ph.us.i:                                      ; preds = %rarand.exit.us.i
  %i.wu = load ptr, ptr %i.rf, align 8, !tbaa !24
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv133.i
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !29
  br i1 %i.rq, label %.preheader275.lr.ph.i.us.i, label %._crit_edge.split.us.i

.preheader275.lr.ph.i.us.i:                       ; preds = %.lr.ph.us.i, %rarolr.exit.loopexit.us.i
  %indvars.iv.i135 = phi i64 [ %indvars.iv.next.i136, %rarolr.exit.loopexit.us.i ], [ 0, %.lr.ph.us.i ] ; 7 uses
  %i.wx = mul i64 %i.rk, %indvars.iv.i135         ; 2 uses
  %i.wy = add i64 %i.vk, %i.wx                    ; 2 uses
  %scevgep774 = getelementptr i8, ptr %i.az, i64 %i.wy
  %i.wz = add i64 %i.vp, %i.wx                    ; 2 uses
  %scevgep776 = getelementptr i8, ptr %i.az, i64 %i.wz ; 3 uses
  %scevgep778 = getelementptr i8, ptr %i.ax, i64 %i.wy
  %scevgep780 = getelementptr i8, ptr %i.ax, i64 %i.wz ; 2 uses
  %i.xa = mul i64 %i.rj, %indvars.iv.i135         ; 8 uses
  %scevgep640 = getelementptr i8, ptr %i.vu, i64 %i.xa
  %scevgep642 = getelementptr i8, ptr %i.vw, i64 %i.xa ; 3 uses
  %i.xb = add i64 %i.us, %i.xa                    ; 2 uses
  %scevgep643 = getelementptr i8, ptr %i.az, i64 %i.xb
  %i.xc = add i64 %i.uy, %i.xa                    ; 2 uses
  %scevgep644 = getelementptr i8, ptr %i.az, i64 %i.xc
  %i.xd = add i64 %i.vb, %i.xa                    ; 2 uses
  %scevgep645 = getelementptr i8, ptr %i.az, i64 %i.xd ; 4 uses
  %i.xe = add i64 %i.vf, %i.xa                    ; 2 uses
  %scevgep646 = getelementptr i8, ptr %i.az, i64 %i.xe ; 4 uses
  %scevgep647 = getelementptr i8, ptr %i.ax, i64 %i.xd ; 4 uses
  %scevgep648 = getelementptr i8, ptr %i.ax, i64 %i.xe ; 4 uses
  %scevgep649 = getelementptr i8, ptr %i.ax, i64 %i.xb ; 4 uses
  %scevgep650 = getelementptr i8, ptr %i.ax, i64 %i.xc ; 4 uses
  %scevgep651 = getelementptr i8, ptr %i.vx, i64 %i.xa ; 4 uses
  %scevgep652 = getelementptr i8, ptr %i.vz, i64 %i.xa ; 4 uses
  %i.xf = mul i64 %i.ri, %indvars.iv.i135         ; 10 uses
  %scevgep483.a = getelementptr i8, ptr %i.wa, i64 %i.xf
  %scevgep485.a = getelementptr i8, ptr %i.wc, i64 %i.xf ; 3 uses
  %i.xg = add i64 %i.tl, %i.xf                    ; 2 uses
  %scevgep486.a = getelementptr i8, ptr %i.az, i64 %i.xg ; 5 uses
  %i.xh = add i64 %i.tr, %i.xf                    ; 2 uses
  %scevgep487.a = getelementptr i8, ptr %i.az, i64 %i.xh ; 5 uses
  %i.xi = add i64 %i.tu, %i.xf                    ; 2 uses
  %scevgep488.a = getelementptr i8, ptr %i.az, i64 %i.xi ; 7 uses
  %i.xj = add i64 %i.ty, %i.xf                    ; 2 uses
  %scevgep489.a = getelementptr i8, ptr %i.az, i64 %i.xj ; 7 uses
  %scevgep490.a = getelementptr i8, ptr %i.ax, i64 %i.xg ; 4 uses
  %scevgep491.a = getelementptr i8, ptr %i.ax, i64 %i.xh ; 4 uses
  %scevgep492.a = getelementptr i8, ptr %i.ax, i64 %i.xi ; 4 uses
  %scevgep493 = getelementptr i8, ptr %i.ax, i64 %i.xj ; 4 uses
  %scevgep494 = getelementptr i8, ptr %i.wd, i64 %i.xf ; 3 uses
  %scevgep495 = getelementptr i8, ptr %i.wf, i64 %i.xf ; 3 uses
  %scevgep496 = getelementptr i8, ptr %i.wg, i64 %i.xf ; 4 uses
  %scevgep497 = getelementptr i8, ptr %i.wi, i64 %i.xf ; 4 uses
  %i.xk = mul i64 %i.rh, %indvars.iv.i135         ; 2 uses
  %i.xl = add i64 %i.st, %i.xk                    ; 2 uses
  %scevgep438.a = getelementptr i8, ptr %i.az, i64 %i.xl
  %i.xm = add i64 %i.sy, %i.xk                    ; 2 uses
  %scevgep440.a = getelementptr i8, ptr %i.az, i64 %i.xm ; 3 uses
  %scevgep442.a = getelementptr i8, ptr %i.ax, i64 %i.xl
  %scevgep444 = getelementptr i8, ptr %i.ax, i64 %i.xm ; 2 uses
  %i.xn = mul i64 %i.rg, %indvars.iv.i135         ; 4 uses
  %i.xo = mul nsw i64 %indvars.iv.i135, %i.re     ; 2 uses
  %i.xp = getelementptr [8 x i8], ptr %i.az, i64 %i.xo ; 63 uses
  %i.xq = getelementptr [8 x i8], ptr %i.ax, i64 %i.xo ; 57 uses
  %i.xr = insertelement <4 x ptr> poison, ptr %scevgep487.a, i64 0 ; 3 uses
  %i.xs = insertelement <4 x ptr> %i.xr, ptr %scevgep485.a, i64 1
  %i.xt = insertelement <4 x ptr> %i.xs, ptr %scevgep489.a, i64 2
  %i.xu = insertelement <4 x ptr> %i.xt, ptr %scevgep491.a, i64 3
  %i.xv = insertelement <4 x ptr> poison, ptr %scevgep486.a, i64 0 ; 3 uses
  %i.xw = insertelement <4 x ptr> %i.xv, ptr %i.xp, i64 1
  %i.xx = insertelement <4 x ptr> %i.xw, ptr %scevgep488.a, i64 2
  %i.xy = insertelement <4 x ptr> %i.xx, ptr %scevgep490.a, i64 3
  %i.xz = insertelement <4 x ptr> poison, ptr %scevgep494, i64 0 ; 2 uses
  %i.ya = insertelement <4 x ptr> %i.xz, ptr %i.xp, i64 1
  %i.yb = insertelement <4 x ptr> %i.ya, ptr %scevgep488.a, i64 2
  %i.yc = insertelement <4 x ptr> %i.yb, ptr %scevgep486.a, i64 3
  %i.yd = insertelement <4 x ptr> poison, ptr %scevgep485.a, i64 0 ; 2 uses
  %i.ye = insertelement <4 x ptr> %i.yd, ptr %scevgep497, i64 1
  %i.yf = insertelement <4 x ptr> %i.ye, ptr %scevgep487.a, i64 2
  %i.yg = insertelement <4 x ptr> %i.yf, ptr %scevgep491.a, i64 3
  %i.yh = insertelement <4 x ptr> poison, ptr %i.xp, i64 0 ; 2 uses
  %i.yi = insertelement <4 x ptr> %i.yh, ptr %scevgep496, i64 1
  %i.yj = insertelement <4 x ptr> %i.yi, ptr %scevgep486.a, i64 2
  %i.yk = insertelement <4 x ptr> %i.yj, ptr %scevgep490.a, i64 3
  %i.yl = insertelement <4 x ptr> poison, ptr %scevgep495, i64 0 ; 2 uses
  %i.ym = insertelement <4 x ptr> %i.yl, ptr %scevgep485.a, i64 1
  %i.yn = insertelement <4 x ptr> %i.ym, ptr %scevgep489.a, i64 2
  %i.yo = insertelement <4 x ptr> %i.yn, ptr %scevgep487.a, i64 3
  %i.yp = insertelement <4 x ptr> %i.xz, ptr %scevgep486.a, i64 1
  %i.yq = insertelement <4 x ptr> %i.yp, ptr %scevgep490.a, i64 2
  %i.yr = insertelement <4 x ptr> %i.yq, ptr %scevgep488.a, i64 3
  %i.ys = insertelement <4 x ptr> %i.xr, ptr %scevgep497, i64 1
  %i.yt = insertelement <4 x ptr> %i.ys, ptr %scevgep489.a, i64 2
  %i.yu = insertelement <4 x ptr> %i.yt, ptr %scevgep493, i64 3
  %i.yv = insertelement <4 x ptr> %i.xv, ptr %scevgep496, i64 1
  %i.yw = insertelement <4 x ptr> %i.yv, ptr %scevgep488.a, i64 2
  %i.yx = insertelement <4 x ptr> %i.yw, ptr %scevgep492.a, i64 3
  %i.yy = insertelement <4 x ptr> %i.yl, ptr %scevgep487.a, i64 1
  %i.yz = insertelement <4 x ptr> %i.yy, ptr %scevgep491.a, i64 2
  %i.za = insertelement <4 x ptr> %i.yz, ptr %scevgep489.a, i64 3
  %i.zb = shufflevector <4 x ptr> %i.yh, <4 x ptr> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.zc = insertelement <4 x ptr> %i.xr, ptr %scevgep489.a, i64 1
  %i.zd = insertelement <4 x ptr> %i.zc, ptr %scevgep491.a, i64 2
  %i.ze = insertelement <4 x ptr> %i.zd, ptr %scevgep493, i64 3
  %i.zf = insertelement <4 x ptr> %i.xv, ptr %scevgep488.a, i64 1
  %i.zg = insertelement <4 x ptr> %i.zf, ptr %scevgep490.a, i64 2
  %i.zh = insertelement <4 x ptr> %i.zg, ptr %scevgep492.a, i64 3
  %i.zi = shufflevector <4 x ptr> %i.yd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.zj = insertelement <2 x ptr> poison, ptr %scevgep492.a, i64 0
  %i.zk = insertelement <2 x ptr> %i.zj, ptr %scevgep494, i64 1
  %i.zl = insertelement <2 x ptr> poison, ptr %scevgep487.a, i64 0
  %i.zm = insertelement <2 x ptr> %i.zl, ptr %scevgep489.a, i64 1
  %i.zn = insertelement <2 x ptr> poison, ptr %scevgep486.a, i64 0
  %i.zo = insertelement <2 x ptr> %i.zn, ptr %scevgep488.a, i64 1
  %i.zp = insertelement <2 x ptr> poison, ptr %scevgep493, i64 0
  %i.zq = insertelement <2 x ptr> %i.zp, ptr %scevgep495, i64 1
  %i.zr = insertelement <4 x ptr> poison, ptr %scevgep643, i64 0 ; 3 uses
  %i.zs = shufflevector <4 x ptr> %i.zr, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.zt = insertelement <4 x ptr> poison, ptr %scevgep646, i64 0 ; 2 uses
  %i.zu = insertelement <4 x ptr> %i.zt, ptr %scevgep648, i64 1
  %i.zv = insertelement <4 x ptr> %i.zu, ptr %scevgep650, i64 2
  %i.zw = insertelement <4 x ptr> %i.zv, ptr %scevgep652, i64 3
  %i.zx = insertelement <2 x ptr> poison, ptr %scevgep648, i64 0
  %i.zy = insertelement <2 x ptr> %i.zx, ptr %scevgep650, i64 1
  %i.zz = insertelement <4 x ptr> poison, ptr %scevgep645, i64 0 ; 2 uses
  %i.aaa = insertelement <4 x ptr> %i.zz, ptr %scevgep647, i64 1
  %i.aab = insertelement <4 x ptr> %i.aaa, ptr %scevgep649, i64 2
  %i.aac = insertelement <4 x ptr> %i.aab, ptr %scevgep651, i64 3
  %i.aad = insertelement <4 x ptr> poison, ptr %scevgep644, i64 0 ; 3 uses
  %i.aae = shufflevector <4 x ptr> %i.aad, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aaf = insertelement <2 x ptr> poison, ptr %scevgep647, i64 0
  %i.aag = insertelement <2 x ptr> %i.aaf, ptr %scevgep649, i64 1
  %i.aah = shufflevector <4 x ptr> %i.zt, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.aai = shufflevector <4 x ptr> %i.zz, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.aaj = insertelement <4 x ptr> %i.aad, ptr %scevgep646, i64 1
  %i.aak = insertelement <4 x ptr> %i.aaj, ptr %scevgep648, i64 2
  %i.aal = insertelement <4 x ptr> %i.aak, ptr %scevgep650, i64 3
  %i.aam = insertelement <4 x ptr> %i.zr, ptr %scevgep645, i64 1
  %i.aan = insertelement <4 x ptr> %i.aam, ptr %scevgep647, i64 2
  %i.aao = insertelement <4 x ptr> %i.aan, ptr %scevgep649, i64 3
  %i.aap = insertelement <4 x ptr> poison, ptr %scevgep642, i64 0
  %25 = shufflevector <4 x ptr> %i.aap, <4 x ptr> poison, <4 x i32> zeroinitializer
  %26 = insertelement <4 x ptr> %i.aad, ptr %scevgep642, i64 1
  %27 = insertelement <4 x ptr> %26, ptr %scevgep646, i64 2
  %28 = insertelement <4 x ptr> %27, ptr %scevgep648, i64 3
  %29 = insertelement <4 x ptr> %i.zr, ptr %i.xp, i64 1
  %30 = insertelement <4 x ptr> %29, ptr %scevgep645, i64 2
  %31 = insertelement <4 x ptr> %30, ptr %scevgep647, i64 3
  %32 = getelementptr i8, ptr %i.wj, i64 %i.xn
  %33 = getelementptr i8, ptr %i.wl, i64 %i.xn
  %34 = getelementptr i8, ptr %i.ax, i64 %i.xn
  %35 = getelementptr i8, ptr %i.wn, i64 %i.xn
  %bound0799 = icmp ult ptr %i.xp, %scevgep780
  %bound1800 = icmp ult ptr %i.xq, %scevgep776
  %found.conflict801 = and i1 %bound0799, %bound1800
  %36 = icmp ult <4 x ptr> %i.zb, %i.aal
  %37 = icmp ult <4 x ptr> %i.aao, %25
  %bound0706 = icmp ult ptr %i.xp, %scevgep652
  %bound1707 = icmp ult ptr %scevgep651, %scevgep642
  %i.aaq = icmp ult <4 x ptr> %i.zs, %i.zw
  %i.aar = icmp ult <4 x ptr> %i.aac, %i.aae
  %i.aas = icmp ult <2 x ptr> %i.aai, %i.zy
  %i.aat = icmp ult <2 x ptr> %i.aag, %i.aah
  %bound0748 = icmp ult ptr %scevgep645, %scevgep652
  %bound1749 = icmp ult ptr %scevgep651, %scevgep646
  %i.aau = insertelement <8 x i1> %23, i1 %bound0748, i64 6
  %i.aav = shufflevector <4 x i1> %i.aaq, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aaw = shufflevector <8 x i1> %i.aav, <8 x i1> %i.aau, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.aax = shufflevector <2 x i1> %i.aas, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aay = shufflevector <8 x i1> %i.aaw, <8 x i1> %i.aax, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.aaz = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1749, i64 6
  %i.aba = shufflevector <4 x i1> %i.aar, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abb = shufflevector <8 x i1> %i.aba, <8 x i1> %i.aaz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.abc = shufflevector <2 x i1> %i.aat, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abd = shufflevector <8 x i1> %i.abb, <8 x i1> %i.abc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.abe = and <8 x i1> %i.aay, %i.abd
  %i.abf = bitcast <8 x i1> %i.abe to i8
  %i.abg = icmp ne i8 %i.abf, 0
  %38 = insertelement <8 x i1> %i.wq, i1 %bound0706, i64 4
  %39 = insertelement <8 x i1> %38, i1 %i.abg, i64 7
  %40 = shufflevector <4 x i1> %36, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %41 = shufflevector <8 x i1> %40, <8 x i1> %39, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %42 = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true, i1 true>, i1 %bound1707, i64 4
  %43 = shufflevector <4 x i1> %37, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %44 = shufflevector <8 x i1> %43, <8 x i1> %42, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %45 = and <8 x i1> %41, %44
  %46 = bitcast <8 x i1> %45 to i8
  %47 = icmp ne i8 %46, 0
  %i.abh = icmp ult <4 x ptr> %i.zb, %i.ze
  %i.abi = icmp ult <4 x ptr> %i.zh, %i.zi
  %i.abj = icmp ult <4 x ptr> %i.yk, %i.yo
  %i.abk = icmp ult <4 x ptr> %i.yc, %i.yg
  %i.abl = and <4 x i1> %i.abk, %i.abj
  %i.abm = icmp ult <2 x ptr> %i.zo, %i.zq
  %i.abn = icmp ult <2 x ptr> %i.zk, %i.zm
  %i.abo = icmp ult <4 x ptr> %i.yx, %i.za
  %i.abp = icmp ult <4 x ptr> %i.yr, %i.yu
  %i.abq = and <4 x i1> %i.abp, %i.abo
  %bound0616 = icmp ult ptr %scevgep488.a, %scevgep497
  %bound1617 = icmp ult ptr %scevgep496, %scevgep489.a
  %i.abr = shufflevector <2 x i1> %i.abm, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.abs = insertelement <8 x i1> %i.abr, i1 %bound0616, i64 6
  %i.abt = insertelement <8 x i1> %i.abs, i1 %stride.check505, i64 7
  %i.abu = shufflevector <4 x i1> %i.abh, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abv = shufflevector <8 x i1> %i.abu, <8 x i1> %i.abt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.abw = shufflevector <2 x i1> %i.abn, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abx = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.abw, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.aby = insertelement <8 x i1> %i.abx, i1 %bound1617, i64 6
  %i.abz = shufflevector <4 x i1> %i.abi, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aca = shufflevector <8 x i1> %i.abz, <8 x i1> %i.aby, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.acb = and <8 x i1> %i.abv, %i.aca
  %invariant.op.a = or <4 x i1> %i.abl, %i.abq
  %i.acc = bitcast <8 x i1> %i.acb to i8
  %i.acd = icmp ne i8 %i.acc, 0
  %bound0463 = icmp ult ptr %i.xp, %scevgep444
  %bound1464 = icmp ult ptr %i.xq, %scevgep440.a
  %found.conflict465 = and i1 %bound0463, %bound1464
  br label %.preheader275.i.us.i

.preheader275.i.us.i:                             ; preds = %._crit_edge296.split.i.us.i, %.preheader275.lr.ph.i.us.i
  %indvars.iv355.i.us.i = phi i64 [ 0, %.preheader275.lr.ph.i.us.i ], [ %indvars.iv.next356.i.us.i, %._crit_edge296.split.i.us.i ] ; 14 uses
  %.0243300.i.us.i = phi i32 [ 0, %.preheader275.lr.ph.i.us.i ], [ %.2245372.i.us.i, %._crit_edge296.split.i.us.i ] ; 22 uses
  %.0246299.i.us.i = phi i32 [ 0, %.preheader275.lr.ph.i.us.i ], [ %.2248370.i.us.i, %._crit_edge296.split.i.us.i ] ; 20 uses
  %.0249298.i.us.i = phi i32 [ 0, %.preheader275.lr.ph.i.us.i ], [ %.2251368.i.us.i, %._crit_edge296.split.i.us.i ] ; 22 uses
  %.0252297.i.us.i = phi i32 [ 0, %.preheader275.lr.ph.i.us.i ], [ %.2254366.i.us.i, %._crit_edge296.split.i.us.i ] ; 20 uses
  %i.ace = trunc i64 %indvars.iv355.i.us.i to i32
  %i.acf = mul i32 %i.vj, %i.ace
  %i.acg = add i32 %i.acf, %i.vi
  %i.ach = sext i32 %i.acg to i64
  %i.aci = shl nsw i64 %i.ach, 3                  ; 4 uses
  %scevgep773 = getelementptr i8, ptr %i.xp, i64 %i.aci ; 3 uses
  %scevgep775 = getelementptr i8, ptr %scevgep774, i64 %i.aci ; 3 uses
  %scevgep777 = getelementptr i8, ptr %i.xq, i64 %i.aci ; 2 uses
  %scevgep779 = getelementptr i8, ptr %scevgep778, i64 %i.aci ; 2 uses
  %i.acj = trunc i64 %indvars.iv355.i.us.i to i32
  %i.ack = mul i32 %i.uk, %i.acj
  %i.acl = add i32 %i.ack, %i.uj
  %i.acm = sext i32 %i.acl to i64
  %i.acn = shl nsw i64 %i.acm, 3
  %scevgep641 = getelementptr i8, ptr %scevgep640, i64 %i.acn ; 3 uses
  %i.aco = trunc i64 %indvars.iv355.i.us.i to i32
  %i.acp = mul i32 %i.td, %i.aco
  %i.acq = add i32 %i.acp, %i.tc
  %i.acr = sext i32 %i.acq to i64
  %i.acs = shl nsw i64 %i.acr, 3
  %scevgep484 = getelementptr i8, ptr %scevgep483.a, i64 %i.acs ; 4 uses
  %i.act = trunc i64 %indvars.iv355.i.us.i to i32
  %i.acu = mul i32 %i.ss, %i.act
  %i.acv = add i32 %i.acu, %i.sr
  %i.acw = sext i32 %i.acv to i64
  %i.acx = shl nsw i64 %i.acw, 3                  ; 4 uses
  %scevgep437 = getelementptr i8, ptr %i.xp, i64 %i.acx ; 3 uses
  %scevgep439 = getelementptr i8, ptr %scevgep438.a, i64 %i.acx ; 3 uses
  %scevgep441 = getelementptr i8, ptr %i.xq, i64 %i.acx ; 2 uses
  %scevgep443 = getelementptr i8, ptr %scevgep442.a, i64 %i.acx ; 2 uses
  %i.acy = mul i64 %i.sj, %indvars.iv355.i.us.i   ; 4 uses
  %scevgep = getelementptr i8, ptr %32, i64 %i.acy
  %scevgep418 = getelementptr i8, ptr %33, i64 %i.acy
  %scevgep419 = getelementptr i8, ptr %34, i64 %i.acy
  %scevgep420 = getelementptr i8, ptr %35, i64 %i.acy
  br i1 %i.rs, label %.preheader266.lr.ph.i.us.i, label %._crit_edge278.split.i.us.i

.preheader266.lr.ph.i.us.i:                       ; preds = %.preheader275.i.us.i
  %i.acz = mul nuw nsw i64 %indvars.iv355.i.us.i, %i.rz
  br i1 %i.rt, label %.preheader266.i.us.i, label %._crit_edge278.split.i.us.i

.preheader266.i.us.i:                             ; preds = %.preheader266.lr.ph.i.us.i, %._crit_edge.i.us.i
  %indvars.iv310.i.us.i = phi i64 [ %indvars.iv.next311.i.us.i, %._crit_edge.i.us.i ], [ 0, %.preheader266.lr.ph.i.us.i ] ; 2 uses
  %i.ada = add nuw nsw i64 %indvars.iv310.i.us.i, %i.acz ; 2 uses
  %i.adb = add nuw nsw i64 %i.ada, 1
  %i.adc = mul nuw nsw i64 %i.adb, %i.ry
  %i.add = mul nuw nsw i64 %i.ada, %i.ry
  %invariant.gep.i.us.i = getelementptr [8 x i8], ptr %i.xq, i64 %i.adc ; 10 uses
  %invariant.gep391.i.us.i = getelementptr [8 x i8], ptr %i.xp, i64 %i.add ; 10 uses
  br i1 %or.cond, label %scalar.ph820.preheader, label %vector.body824

vector.body824:                                   ; preds = %.preheader266.i.us.i, %vector.body824
  %index825 = phi i64 [ %index.next828, %vector.body824 ], [ 0, %.preheader266.i.us.i ] ; 3 uses
  %i.ade = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %index825 ; 2 uses
  %i.adf = getelementptr i8, ptr %i.ade, i64 16
  %wide.load826 = load <2 x double>, ptr %i.ade, align 8, !tbaa !35
  %wide.load827 = load <2 x double>, ptr %i.adf, align 8, !tbaa !35
  %i.adg = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %index825 ; 2 uses
  %i.adh = getelementptr i8, ptr %i.adg, i64 16
  store <2 x double> %wide.load826, ptr %i.adg, align 8, !tbaa !35
  store <2 x double> %wide.load827, ptr %i.adh, align 8, !tbaa !35
  %index.next828 = add nuw i64 %index825, 4       ; 2 uses
  %i.adi = icmp eq i64 %index.next828, %n.vec823
  br i1 %i.adi, label %middle.block829, label %vector.body824, !llvm.loop !76

middle.block829:                                  ; preds = %vector.body824
  br i1 %cmp.n830, label %._crit_edge.i.us.i, label %scalar.ph820.preheader

scalar.ph820.preheader:                           ; preds = %.preheader266.i.us.i, %middle.block829
  %indvars.iv.i70.us.i.ph = phi i64 [ 0, %.preheader266.i.us.i ], [ %n.vec823, %middle.block829 ] ; 4 uses
  %i.adj = sub nsw i64 %wide.trip.count.i68.us.i, %indvars.iv.i70.us.i.ph
  %i.adk = sub nsw i64 %i.vt, %indvars.iv.i70.us.i.ph
  %xtraiter899 = and i64 %i.adj, 7                ; 2 uses
  %lcmp.mod900.not = icmp eq i64 %xtraiter899, 0
  br i1 %lcmp.mod900.not, label %scalar.ph820.prol.loopexit, label %scalar.ph820.prol

scalar.ph820.prol:                                ; preds = %scalar.ph820.preheader, %scalar.ph820.prol
  %indvars.iv.i70.us.i.prol = phi i64 [ %indvars.iv.next.i71.us.i.prol, %scalar.ph820.prol ], [ %indvars.iv.i70.us.i.ph, %scalar.ph820.preheader ] ; 3 uses
  %prol.iter901 = phi i64 [ %prol.iter901.next, %scalar.ph820.prol ], [ 0, %scalar.ph820.preheader ]
  %gep.i.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.i70.us.i.prol
  %i.adl = load double, ptr %gep.i.us.i.prol, align 8, !tbaa !35
  %gep392.i.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.i70.us.i.prol
  store double %i.adl, ptr %gep392.i.us.i.prol, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i.prol = add nuw nsw i64 %indvars.iv.i70.us.i.prol, 1 ; 2 uses
  %prol.iter901.next = add i64 %prol.iter901, 1   ; 2 uses
  %prol.iter901.cmp.not = icmp eq i64 %prol.iter901.next, %xtraiter899
  br i1 %prol.iter901.cmp.not, label %scalar.ph820.prol.loopexit, label %scalar.ph820.prol, !llvm.loop !77

scalar.ph820.prol.loopexit:                       ; preds = %scalar.ph820.prol, %scalar.ph820.preheader
  %indvars.iv.i70.us.i.unr = phi i64 [ %indvars.iv.i70.us.i.ph, %scalar.ph820.preheader ], [ %indvars.iv.next.i71.us.i.prol, %scalar.ph820.prol ]
  %i.adm = icmp ult i64 %i.adk, 7
  br i1 %i.adm, label %._crit_edge.i.us.i, label %scalar.ph820

scalar.ph820:                                     ; preds = %scalar.ph820.prol.loopexit, %scalar.ph820
  %indvars.iv.i70.us.i = phi i64 [ %indvars.iv.next.i71.us.i.7, %scalar.ph820 ], [ %indvars.iv.i70.us.i.unr, %scalar.ph820.prol.loopexit ] ; 10 uses
  %gep.i.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.i70.us.i
  %i.adn = load double, ptr %gep.i.us.i, align 8, !tbaa !35
  %gep392.i.us.i = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.i70.us.i
  store double %i.adn, ptr %gep392.i.us.i, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i = add nuw nsw i64 %indvars.iv.i70.us.i, 1 ; 2 uses
  %gep.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.next.i71.us.i
  %i.ado = load double, ptr %gep.i.us.i.1, align 8, !tbaa !35
  %gep392.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.next.i71.us.i
  store double %i.ado, ptr %gep392.i.us.i.1, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i.1 = add nuw nsw i64 %indvars.iv.i70.us.i, 2 ; 2 uses
  %gep.i.us.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.next.i71.us.i.1
  %i.adp = load double, ptr %gep.i.us.i.2, align 8, !tbaa !35
  %gep392.i.us.i.2 = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.next.i71.us.i.1
  store double %i.adp, ptr %gep392.i.us.i.2, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i.2 = add nuw nsw i64 %indvars.iv.i70.us.i, 3 ; 2 uses
  %gep.i.us.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.next.i71.us.i.2
  %i.adq = load double, ptr %gep.i.us.i.3, align 8, !tbaa !35
  %gep392.i.us.i.3 = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.next.i71.us.i.2
  store double %i.adq, ptr %gep392.i.us.i.3, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i.3 = add nuw nsw i64 %indvars.iv.i70.us.i, 4 ; 2 uses
  %gep.i.us.i.4 = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.next.i71.us.i.3
  %i.adr = load double, ptr %gep.i.us.i.4, align 8, !tbaa !35
  %gep392.i.us.i.4 = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.next.i71.us.i.3
  store double %i.adr, ptr %gep392.i.us.i.4, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i.4 = add nuw nsw i64 %indvars.iv.i70.us.i, 5 ; 2 uses
  %gep.i.us.i.5 = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.next.i71.us.i.4
  %i.ads = load double, ptr %gep.i.us.i.5, align 8, !tbaa !35
  %gep392.i.us.i.5 = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.next.i71.us.i.4
  store double %i.ads, ptr %gep392.i.us.i.5, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i.5 = add nuw nsw i64 %indvars.iv.i70.us.i, 6 ; 2 uses
  %gep.i.us.i.6 = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.next.i71.us.i.5
  %i.adt = load double, ptr %gep.i.us.i.6, align 8, !tbaa !35
  %gep392.i.us.i.6 = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.next.i71.us.i.5
  store double %i.adt, ptr %gep392.i.us.i.6, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i.6 = add nuw nsw i64 %indvars.iv.i70.us.i, 7 ; 2 uses
  %gep.i.us.i.7 = getelementptr [8 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.next.i71.us.i.6
  %i.adu = load double, ptr %gep.i.us.i.7, align 8, !tbaa !35
  %gep392.i.us.i.7 = getelementptr [8 x i8], ptr %invariant.gep391.i.us.i, i64 %indvars.iv.next.i71.us.i.6
  store double %i.adu, ptr %gep392.i.us.i.7, align 8, !tbaa !35
  %indvars.iv.next.i71.us.i.7 = add nuw nsw i64 %indvars.iv.i70.us.i, 8 ; 2 uses
  %exitcond.not.i72.us.i.7 = icmp eq i64 %indvars.iv.next.i71.us.i.7, %wide.trip.count.i68.us.i
  br i1 %exitcond.not.i72.us.i.7, label %._crit_edge.i.us.i, label %scalar.ph820, !llvm.loop !78

._crit_edge.i.us.i:                               ; preds = %scalar.ph820.prol.loopexit, %scalar.ph820, %middle.block829
  %indvars.iv.next311.i.us.i = add nuw nsw i64 %indvars.iv310.i.us.i, 1 ; 2 uses
  %exitcond314.not.i.us.i = icmp eq i64 %indvars.iv.next311.i.us.i, %wide.trip.count313.i.us.i
  br i1 %exitcond314.not.i.us.i, label %._crit_edge278.split.i.us.i, label %.preheader266.i.us.i, !llvm.loop !79

._crit_edge278.split.i.us.i:                      ; preds = %._crit_edge.i.us.i, %.preheader266.lr.ph.i.us.i, %.preheader275.i.us.i
  switch i32 %i.ww, label %.loopexit.i.us.i [
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
  %i.adv = sitofp i32 %.1247.i.us.i to double     ; 5 uses
  %i.adw = trunc i64 %indvars.iv355.i.us.i to i32
  %i.adx = add i32 %i.adw, 1
  %i.ady = mul i32 %i.adx, %i.ro                  ; 2 uses
  %i.adz = add nsw i32 %i.ady, -1
  %i.aea = mul nsw i32 %i.adz, %i.rp
  %i.aeb = uitofp nneg i32 %.1244.i.us.i to double ; 5 uses
  %i.aec = add nsw i32 %i.ady, -2
  %i.aed = mul nsw i32 %i.aec, %i.rp
  %i.aee = sext i32 %i.aea to i64                 ; 5 uses
  %i.aef = sext i32 %i.aed to i64
  %invariant.gep393.i.us.i = getelementptr [8 x i8], ptr %i.xq, i64 %i.aef ; 5 uses
  br i1 %i.wo, label %.epil.preheader, label %.lr.ph.i69.us.i.new

.lr.ph.i69.us.i.new:                              ; preds = %.lr.ph.i69.us.i, %bb.ah
  %indvars.iv315.i.us.i = phi i64 [ %indvars.iv.next316.i.us.i.3, %bb.ah ], [ 0, %.lr.ph.i69.us.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %bb.ah ], [ 0, %.lr.ph.i69.us.i ]
  %i.aeg = add nsw i64 %indvars.iv315.i.us.i, %i.aee ; 2 uses
  %i.aeh = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.aeg
  %i.aei = load double, ptr %i.aeh, align 8, !tbaa !35
  br i1 %i.rs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i69.us.i.new
  %gep394.i.us.i = getelementptr [8 x i8], ptr %invariant.gep393.i.us.i, i64 %indvars.iv315.i.us.i
  %i.aej = load double, ptr %gep394.i.us.i, align 8, !tbaa !35
  %i.aek = fmul double %i.aej, %i.aeb
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i69.us.i.new
  %i.ael = phi double [ %i.aek, %bb.aa ], [ 0.000000e+00, %.lr.ph.i69.us.i.new ]
  %i.aem = call double @llvm.fmuladd.f64(double %i.adv, double %i.aei, double %i.ael)
  %i.aen = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.aeg
  store double %i.aem, ptr %i.aen, align 8, !tbaa !35
  %indvars.iv.next316.i.us.i = or disjoint i64 %indvars.iv315.i.us.i, 1 ; 2 uses
  %i.aeo = add nsw i64 %indvars.iv.next316.i.us.i, %i.aee ; 2 uses
  %i.aep = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.aeo
  %i.aeq = load double, ptr %i.aep, align 8, !tbaa !35
  br i1 %i.rs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %gep394.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep393.i.us.i, i64 %indvars.iv.next316.i.us.i
  %i.aer = load double, ptr %gep394.i.us.i.1, align 8, !tbaa !35
  %i.aes = fmul double %i.aer, %i.aeb
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.aet = phi double [ %i.aes, %bb.ac ], [ 0.000000e+00, %bb.ab ]
  %i.aeu = call double @llvm.fmuladd.f64(double %i.adv, double %i.aeq, double %i.aet)
  %i.aev = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.aeo
  store double %i.aeu, ptr %i.aev, align 8, !tbaa !35
  %indvars.iv.next316.i.us.i.1 = or disjoint i64 %indvars.iv315.i.us.i, 2 ; 2 uses
  %i.aew = add nsw i64 %indvars.iv.next316.i.us.i.1, %i.aee ; 2 uses
  %i.aex = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.aew
  %i.aey = load double, ptr %i.aex, align 8, !tbaa !35
  br i1 %i.rs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %gep394.i.us.i.2 = getelementptr [8 x i8], ptr %invariant.gep393.i.us.i, i64 %indvars.iv.next316.i.us.i.1
  %i.aez = load double, ptr %gep394.i.us.i.2, align 8, !tbaa !35
  %i.afa = fmul double %i.aez, %i.aeb
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.afb = phi double [ %i.afa, %bb.ae ], [ 0.000000e+00, %bb.ad ]
  %i.afc = call double @llvm.fmuladd.f64(double %i.adv, double %i.aey, double %i.afb)
  %i.afd = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.aew
  store double %i.afc, ptr %i.afd, align 8, !tbaa !35
  %indvars.iv.next316.i.us.i.2 = or disjoint i64 %indvars.iv315.i.us.i, 3 ; 2 uses
  %i.afe = add nsw i64 %indvars.iv.next316.i.us.i.2, %i.aee ; 2 uses
  %i.aff = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.afe
  %i.afg = load double, ptr %i.aff, align 8, !tbaa !35
  br i1 %i.rs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %gep394.i.us.i.3 = getelementptr [8 x i8], ptr %invariant.gep393.i.us.i, i64 %indvars.iv.next316.i.us.i.2
  %i.afh = load double, ptr %gep394.i.us.i.3, align 8, !tbaa !35
  %i.afi = fmul double %i.afh, %i.aeb
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.afj = phi double [ %i.afi, %bb.ag ], [ 0.000000e+00, %bb.af ]
  %i.afk = call double @llvm.fmuladd.f64(double %i.adv, double %i.afg, double %i.afj)
  %i.afl = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.afe
  store double %i.afk, ptr %i.afl, align 8, !tbaa !35
  %indvars.iv.next316.i.us.i.3 = add nuw nsw i64 %indvars.iv315.i.us.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader273.i.us.i.unr-lcssa, label %.lr.ph.i69.us.i.new, !llvm.loop !80

.preheader273.i.us.i.unr-lcssa:                   ; preds = %bb.ah
  br i1 %lcmp.mod903.not, label %.preheader273.i.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader273.i.us.i.unr-lcssa, %.lr.ph.i69.us.i
  %indvars.iv315.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.i69.us.i ], [ %indvars.iv.next316.i.us.i.3, %.preheader273.i.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod904)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.epil.preheader
  %indvars.iv315.i.us.i.epil = phi i64 [ %indvars.iv315.i.us.i.epil.init, %.epil.preheader ], [ %indvars.iv.next316.i.us.i.epil, %bb.ak ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ak ]
  %i.afm = add nsw i64 %indvars.iv315.i.us.i.epil, %i.aee ; 2 uses
  %i.afn = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.afm
  %i.afo = load double, ptr %i.afn, align 8, !tbaa !35
  br i1 %i.rs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %gep394.i.us.i.epil = getelementptr [8 x i8], ptr %invariant.gep393.i.us.i, i64 %indvars.iv315.i.us.i.epil
  %i.afp = load double, ptr %gep394.i.us.i.epil, align 8, !tbaa !35
  %i.afq = fmul double %i.afp, %i.aeb
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.afr = phi double [ %i.afq, %bb.aj ], [ 0.000000e+00, %bb.ai ]
  %i.afs = call double @llvm.fmuladd.f64(double %i.adv, double %i.afo, double %i.afr)
  %i.aft = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.afm
  store double %i.afs, ptr %i.aft, align 8, !tbaa !35
  %indvars.iv.next316.i.us.i.epil = add nuw nsw i64 %indvars.iv315.i.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter902
  br i1 %epil.iter.cmp.not, label %.preheader273.i.us.i, label %bb.ai, !llvm.loop !81

.preheader273.i.us.i:                             ; preds = %bb.ak, %.preheader273.i.us.i.unr-lcssa
  %i.afu = sitofp i32 %.1253.i.us.i to double     ; 3 uses
  %i.afv = mul nsw i64 %indvars.iv355.i.us.i, %i.rz ; 2 uses
  %i.afw = mul nsw i64 %i.afv, %i.ry              ; 3 uses
  %i.afx = uitofp nneg i32 %.1250.i.us.i to double ; 3 uses
  %i.afy = add nuw nsw i64 %i.afv, 1
  %i.afz = mul nsw i64 %i.afy, %i.ry
  %invariant.gep395.i.us.i = getelementptr [8 x i8], ptr %i.xq, i64 %i.afz ; 3 uses
  br i1 %i.wp, label %.epil.preheader905, label %.preheader273.i.us.i.new

.preheader273.i.us.i.new:                         ; preds = %.preheader273.i.us.i, %bb.ao
  %indvars.iv320.i.us.i = phi i64 [ %indvars.iv.next321.i.us.i.1, %bb.ao ], [ 0, %.preheader273.i.us.i ] ; 4 uses
  %niter911 = phi i64 [ %niter911.next.1, %bb.ao ], [ 0, %.preheader273.i.us.i ]
  %i.aga = add nsw i64 %indvars.iv320.i.us.i, %i.afw ; 2 uses
  %i.agb = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.aga
  %i.agc = load double, ptr %i.agb, align 8, !tbaa !35
  br i1 %i.rs, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.preheader273.i.us.i.new
  %gep396.i.us.i = getelementptr [8 x i8], ptr %invariant.gep395.i.us.i, i64 %indvars.iv320.i.us.i
  %i.agd = load double, ptr %gep396.i.us.i, align 8, !tbaa !35
  %i.age = fmul double %i.agd, %i.afx
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.preheader273.i.us.i.new
  %i.agf = phi double [ %i.age, %bb.al ], [ 0.000000e+00, %.preheader273.i.us.i.new ]
  %i.agg = call double @llvm.fmuladd.f64(double %i.afu, double %i.agc, double %i.agf)
  %i.agh = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.aga ; 2 uses
  %i.agi = load double, ptr %i.agh, align 8, !tbaa !35
  %i.agj = fadd double %i.agi, %i.agg
  store double %i.agj, ptr %i.agh, align 8, !tbaa !35
  %indvars.iv.next321.i.us.i = or disjoint i64 %indvars.iv320.i.us.i, 1 ; 2 uses
  %i.agk = add nsw i64 %indvars.iv.next321.i.us.i, %i.afw ; 2 uses
  %i.agl = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.agk
  %i.agm = load double, ptr %i.agl, align 8, !tbaa !35
  br i1 %i.rs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %gep396.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep395.i.us.i, i64 %indvars.iv.next321.i.us.i
  %i.agn = load double, ptr %gep396.i.us.i.1, align 8, !tbaa !35
  %i.ago = fmul double %i.agn, %i.afx
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.agp = phi double [ %i.ago, %bb.an ], [ 0.000000e+00, %bb.am ]
  %i.agq = call double @llvm.fmuladd.f64(double %i.afu, double %i.agm, double %i.agp)
  %i.agr = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.agk ; 2 uses
  %i.ags = load double, ptr %i.agr, align 8, !tbaa !35
  %i.agt = fadd double %i.ags, %i.agq
  store double %i.agt, ptr %i.agr, align 8, !tbaa !35
  %indvars.iv.next321.i.us.i.1 = add nuw nsw i64 %indvars.iv320.i.us.i, 2 ; 2 uses
  %niter911.next.1 = add i64 %niter911, 2         ; 2 uses
  %niter911.ncmp.1 = icmp eq i64 %niter911.next.1, %unroll_iter910
  br i1 %niter911.ncmp.1, label %.loopexit.i.us.i.loopexit876.unr-lcssa, label %.preheader273.i.us.i.new, !llvm.loop !82

bb.ap:                                            ; preds = %._crit_edge278.split.i.us.i
  br i1 %i.ru, label %bb.aq, label %.preheader271.i.us.i

.preheader271.i.us.i:                             ; preds = %bb.ap
  br i1 %i.rt, label %.lr.ph284.i.us.i, label %.loopexit.i.us.i

.lr.ph284.i.us.i:                                 ; preds = %.preheader271.i.us.i
  %i.agu = mul nsw i64 %indvars.iv355.i.us.i, %i.rz ; 2 uses
  %i.agv = mul nsw i64 %i.agu, %i.ry              ; 6 uses
  %i.agw = trunc nsw i64 %i.agu to i32
  %i.agx = add i32 %i.rr, %i.agw
  %i.agy = mul nsw i32 %i.agx, %i.rp
  %i.agz = sext i32 %i.agy to i64                 ; 6 uses
  br i1 %min.iters.check806, label %scalar.ph805.preheader, label %vector.memcheck772

vector.memcheck772:                               ; preds = %.lr.ph284.i.us.i
  %bound0781 = icmp ult ptr %scevgep773, %scevgep776
  %bound1782 = icmp ult ptr %i.xp, %scevgep775
  %found.conflict783 = and i1 %bound0781, %bound1782
  %i.aha = or i1 %found.conflict783, %stride.check784
  %bound0785 = icmp ult ptr %scevgep773, %scevgep779
  %bound1786 = icmp ult ptr %scevgep777, %scevgep775
  %found.conflict787 = and i1 %bound0785, %bound1786
  %conflict.rdx788 = or i1 %i.aha, %found.conflict787
  %bound0789 = icmp ult ptr %scevgep773, %scevgep780
  %bound1790 = icmp ult ptr %i.xq, %scevgep775
  %found.conflict791 = and i1 %bound0789, %bound1790
  %conflict.rdx793 = or i1 %found.conflict791, %conflict.rdx788
  %bound0794 = icmp ult ptr %i.xp, %scevgep779
  %bound1795 = icmp ult ptr %scevgep777, %scevgep776
  %found.conflict796 = and i1 %bound0794, %bound1795
  %conflict.rdx798 = or i1 %found.conflict796, %conflict.rdx793
  %conflict.rdx804 = or i1 %found.conflict801, %conflict.rdx798
  br i1 %conflict.rdx804, label %scalar.ph805.preheader, label %vector.body809

vector.body809:                                   ; preds = %vector.memcheck772, %vector.body809
  %index810 = phi i64 [ %index.next814, %vector.body809 ], [ 0, %vector.memcheck772 ] ; 3 uses
  %i.ahb = add nsw i64 %index810, %i.agv          ; 2 uses
  %i.ahc = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.ahb
  %wide.load811 = load <2 x double>, ptr %i.ahc, align 8, !tbaa !35, !alias.scope !144
  %i.ahd = add nsw i64 %index810, %i.agz          ; 2 uses
  %i.ahe = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.ahd
  store <2 x double> %wide.load811, ptr %i.ahe, align 8, !tbaa !35, !alias.scope !145, !noalias !146
  %i.ahf = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.ahd
  %wide.load812 = load <2 x double>, ptr %i.ahf, align 8, !tbaa !35, !alias.scope !147
  %i.ahg = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.ahb ; 2 uses
  %wide.load813 = load <2 x double>, ptr %i.ahg, align 8, !tbaa !35, !alias.scope !148, !noalias !149
  %i.ahh = fadd <2 x double> %wide.load812, %wide.load813
  store <2 x double> %i.ahh, ptr %i.ahg, align 8, !tbaa !35, !alias.scope !148, !noalias !149
  %index.next814 = add nuw i64 %index810, 2       ; 2 uses
  %i.ahi = icmp eq i64 %index.next814, %n.vec808
  br i1 %i.ahi, label %middle.block815, label %vector.body809, !llvm.loop !88

middle.block815:                                  ; preds = %vector.body809
  br i1 %cmp.n816, label %.loopexit.i.us.i, label %scalar.ph805.preheader

scalar.ph805.preheader:                           ; preds = %vector.memcheck772, %.lr.ph284.i.us.i, %middle.block815
  %indvars.iv325.i.us.i.ph = phi i64 [ 0, %vector.memcheck772 ], [ 0, %.lr.ph284.i.us.i ], [ %n.vec808, %middle.block815 ] ; 4 uses
  %i.ahj = sub nsw i64 %wide.trip.count.i68.us.i, %indvars.iv325.i.us.i.ph
  %xtraiter912 = and i64 %i.ahj, 3                ; 2 uses
  %lcmp.mod913.not = icmp eq i64 %xtraiter912, 0
  br i1 %lcmp.mod913.not, label %scalar.ph805.prol.loopexit, label %scalar.ph805.prol

scalar.ph805.prol:                                ; preds = %scalar.ph805.preheader, %scalar.ph805.prol
  %indvars.iv325.i.us.i.prol = phi i64 [ %indvars.iv.next326.i.us.i.prol, %scalar.ph805.prol ], [ %indvars.iv325.i.us.i.ph, %scalar.ph805.preheader ] ; 3 uses
  %prol.iter914 = phi i64 [ %prol.iter914.next, %scalar.ph805.prol ], [ 0, %scalar.ph805.preheader ]
  %i.ahk = add nsw i64 %indvars.iv325.i.us.i.prol, %i.agv ; 2 uses
  %i.ahl = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.ahk
  %i.ahm = load double, ptr %i.ahl, align 8, !tbaa !35
  %i.ahn = add nsw i64 %indvars.iv325.i.us.i.prol, %i.agz ; 2 uses
  %i.aho = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.ahn
  store double %i.ahm, ptr %i.aho, align 8, !tbaa !35
  %i.ahp = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.ahn
  %i.ahq = load double, ptr %i.ahp, align 8, !tbaa !35
  %i.ahr = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.ahk ; 2 uses
  %i.ahs = load double, ptr %i.ahr, align 8, !tbaa !35
  %i.aht = fadd double %i.ahq, %i.ahs
  store double %i.aht, ptr %i.ahr, align 8, !tbaa !35
  %indvars.iv.next326.i.us.i.prol = add nuw nsw i64 %indvars.iv325.i.us.i.prol, 1 ; 2 uses
  %prol.iter914.next = add i64 %prol.iter914, 1   ; 2 uses
  %prol.iter914.cmp.not = icmp eq i64 %prol.iter914.next, %xtraiter912
  br i1 %prol.iter914.cmp.not, label %scalar.ph805.prol.loopexit, label %scalar.ph805.prol, !llvm.loop !89

scalar.ph805.prol.loopexit:                       ; preds = %scalar.ph805.prol, %scalar.ph805.preheader
  %indvars.iv325.i.us.i.unr = phi i64 [ %indvars.iv325.i.us.i.ph, %scalar.ph805.preheader ], [ %indvars.iv.next326.i.us.i.prol, %scalar.ph805.prol ]
  %i.ahu = sub nsw i64 %indvars.iv325.i.us.i.ph, %wide.trip.count.i68.us.i
  %i.ahv = icmp ugt i64 %i.ahu, -4
  br i1 %i.ahv, label %.loopexit.i.us.i, label %scalar.ph805

scalar.ph805:                                     ; preds = %scalar.ph805.prol.loopexit, %scalar.ph805
  %indvars.iv325.i.us.i = phi i64 [ %indvars.iv.next326.i.us.i.3, %scalar.ph805 ], [ %indvars.iv325.i.us.i.unr, %scalar.ph805.prol.loopexit ] ; 6 uses
  %i.ahw = add nsw i64 %indvars.iv325.i.us.i, %i.agv ; 2 uses
  %i.ahx = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.ahw
  %i.ahy = load double, ptr %i.ahx, align 8, !tbaa !35
  %i.ahz = add nsw i64 %indvars.iv325.i.us.i, %i.agz ; 2 uses
  %i.aia = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.ahz
  store double %i.ahy, ptr %i.aia, align 8, !tbaa !35
  %i.aib = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.ahz
  %i.aic = load double, ptr %i.aib, align 8, !tbaa !35
  %i.aid = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.ahw ; 2 uses
  %i.aie = load double, ptr %i.aid, align 8, !tbaa !35
  %i.aif = fadd double %i.aic, %i.aie
  store double %i.aif, ptr %i.aid, align 8, !tbaa !35
  %indvars.iv.next326.i.us.i = add nuw nsw i64 %indvars.iv325.i.us.i, 1 ; 2 uses
  %i.aig = add nsw i64 %indvars.iv.next326.i.us.i, %i.agv ; 2 uses
  %i.aih = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.aig
  %i.aii = load double, ptr %i.aih, align 8, !tbaa !35
  %i.aij = add nsw i64 %indvars.iv.next326.i.us.i, %i.agz ; 2 uses
  %i.aik = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.aij
  store double %i.aii, ptr %i.aik, align 8, !tbaa !35
  %i.ail = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.aij
  %i.aim = load double, ptr %i.ail, align 8, !tbaa !35
  %i.ain = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.aig ; 2 uses
  %i.aio = load double, ptr %i.ain, align 8, !tbaa !35
  %i.aip = fadd double %i.aim, %i.aio
  store double %i.aip, ptr %i.ain, align 8, !tbaa !35
  %indvars.iv.next326.i.us.i.1 = add nuw nsw i64 %indvars.iv325.i.us.i, 2 ; 2 uses
  %i.aiq = add nsw i64 %indvars.iv.next326.i.us.i.1, %i.agv ; 2 uses
  %i.air = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.aiq
  %i.ais = load double, ptr %i.air, align 8, !tbaa !35
  %i.ait = add nsw i64 %indvars.iv.next326.i.us.i.1, %i.agz ; 2 uses
  %i.aiu = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.ait
  store double %i.ais, ptr %i.aiu, align 8, !tbaa !35
  %i.aiv = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.ait
  %i.aiw = load double, ptr %i.aiv, align 8, !tbaa !35
  %i.aix = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.aiq ; 2 uses
  %i.aiy = load double, ptr %i.aix, align 8, !tbaa !35
  %i.aiz = fadd double %i.aiw, %i.aiy
  store double %i.aiz, ptr %i.aix, align 8, !tbaa !35
  %indvars.iv.next326.i.us.i.2 = add nuw nsw i64 %indvars.iv325.i.us.i, 3 ; 2 uses
  %i.aja = add nsw i64 %indvars.iv.next326.i.us.i.2, %i.agv ; 2 uses
  %i.ajb = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.aja
  %i.ajc = load double, ptr %i.ajb, align 8, !tbaa !35
  %i.ajd = add nsw i64 %indvars.iv.next326.i.us.i.2, %i.agz ; 2 uses
  %i.aje = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.ajd
  store double %i.ajc, ptr %i.aje, align 8, !tbaa !35
  %i.ajf = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.ajd
  %i.ajg = load double, ptr %i.ajf, align 8, !tbaa !35
  %i.ajh = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.aja ; 2 uses
  %i.aji = load double, ptr %i.ajh, align 8, !tbaa !35
  %i.ajj = fadd double %i.ajg, %i.aji
  store double %i.ajj, ptr %i.ajh, align 8, !tbaa !35
  %indvars.iv.next326.i.us.i.3 = add nuw nsw i64 %indvars.iv325.i.us.i, 4 ; 2 uses
  %exitcond329.not.i.us.i.3 = icmp eq i64 %indvars.iv.next326.i.us.i.3, %wide.trip.count.i68.us.i
  br i1 %exitcond329.not.i.us.i.3, label %.loopexit.i.us.i, label %scalar.ph805, !llvm.loop !90

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.rw, label %.preheader267.i.us.i, label %.preheader269.i.us.i

.preheader269.i.us.i:                             ; preds = %bb.aq
  br i1 %i.rt, label %.lr.ph286.i.us.i, label %._crit_edge296.split.i.us.i

.lr.ph286.i.us.i:                                 ; preds = %.preheader269.i.us.i
  %i.ajk = mul nuw nsw i64 %indvars.iv355.i.us.i, %i.rz ; 6 uses
  %i.ajl = trunc nsw i64 %i.ajk to i32
  %i.ajm = add i32 %i.rr, %i.ajl
  %i.ajn = mul nsw i32 %i.ajm, %i.rp
  %i.ajo = add nuw nsw i64 %i.ajk, 1
  %i.ajp = mul nuw nsw i64 %i.ajo, %i.ry
  %i.ajq = mul nuw nsw i64 %i.ajk, %i.ry
  %i.ajr = add nuw nsw i64 %i.ajk, %i.sa          ; 2 uses
  %i.ajs = mul nuw nsw i64 %i.ajr, %i.ry          ; 2 uses
  %i.ajt = add nuw nsw i64 %i.ajr, 1
  %i.aju = mul nuw nsw i64 %i.ajt, %i.ry          ; 2 uses
  %i.ajv = sext i32 %i.ajn to i64
  %invariant.gep397.i.us.i = getelementptr [8 x i8], ptr %i.xp, i64 %i.ajv ; 5 uses
  %invariant.gep399.i.us.i = getelementptr [8 x i8], ptr %i.xq, i64 %i.ajp ; 2 uses
  %invariant.gep401.i.us.i = getelementptr [8 x i8], ptr %i.xp, i64 %i.ajq ; 2 uses
  br i1 %min.iters.check755, label %scalar.ph754.preheader, label %vector.memcheck639

vector.memcheck639:                               ; preds = %.lr.ph286.i.us.i
  %i.ajw = insertelement <4 x ptr> poison, ptr %invariant.gep397.i.us.i, i64 0
  %i.ajx = shufflevector <4 x ptr> %i.ajw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ajy = icmp ult <4 x ptr> %i.ajx, %28
  %i.ajz = insertelement <4 x ptr> poison, ptr %scevgep641, i64 0
  %i.aka = shufflevector <4 x ptr> %i.ajz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.akb = icmp ult <4 x ptr> %31, %i.aka
  %i.akc = and <4 x i1> %i.ajy, %i.akb
  %bound0672 = icmp ult ptr %invariant.gep397.i.us.i, %scevgep650
  %bound1673 = icmp ult ptr %scevgep649, %scevgep641
  %found.conflict674 = and i1 %bound0672, %bound1673
  %bound0677 = icmp ult ptr %invariant.gep397.i.us.i, %scevgep652
  %bound1678 = icmp ult ptr %scevgep651, %scevgep641
  %found.conflict679 = and i1 %bound0677, %bound1678
  %i.akd = bitcast <4 x i1> %i.akc to i4
  %i.ake = icmp ne i4 %i.akd, 0
  %op.rdx = or i1 %i.ake, %found.conflict674
  %op.rdx870 = or i1 %found.conflict679, %47
  %op.rdx871 = or i1 %op.rdx, %op.rdx870
  br i1 %op.rdx871, label %scalar.ph754.preheader, label %vector.body758

vector.body758:                                   ; preds = %vector.memcheck639, %vector.body758
  %index759 = phi i64 [ %index.next768, %vector.body758 ], [ 0, %vector.memcheck639 ] ; 6 uses
  %i.akf = getelementptr [8 x i8], ptr %invariant.gep397.i.us.i, i64 %index759
  store <2 x double> zeroinitializer, ptr %i.akf, align 8, !tbaa !35, !alias.scope !150, !noalias !151
  %i.akg = getelementptr [8 x i8], ptr %invariant.gep399.i.us.i, i64 %index759
  %wide.load760 = load <2 x double>, ptr %i.akg, align 8, !tbaa !35, !alias.scope !152
  %i.akh = getelementptr [8 x i8], ptr %invariant.gep401.i.us.i, i64 %index759 ; 2 uses
  %wide.load761 = load <2 x double>, ptr %i.akh, align 8, !tbaa !35, !alias.scope !153, !noalias !154
  %i.aki = fadd <2 x double> %wide.load760, %wide.load761
  store <2 x double> %i.aki, ptr %i.akh, align 8, !tbaa !35, !alias.scope !153, !noalias !154
  %i.akj = add nuw nsw i64 %index759, %i.ajs      ; 2 uses
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %i.akj ; 2 uses
  %wide.load762 = load <2 x double>, ptr %i.akk, align 8, !tbaa !35, !alias.scope !155
  %i.akl = add nuw nsw i64 %index759, %i.aju      ; 2 uses
  %i.akm = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.akl
  %wide.load763 = load <2 x double>, ptr %i.akm, align 8, !tbaa !35, !alias.scope !156 ; 2 uses
  %i.akn = fsub <2 x double> %wide.load762, %wide.load763
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.akj ; 2 uses
  %wide.load764 = load <2 x double>, ptr %i.ako, align 8, !tbaa !35, !alias.scope !157, !noalias !158
  %i.akp = fadd <2 x double> %wide.load764, %i.akn
  store <2 x double> %i.akp, ptr %i.ako, align 8, !tbaa !35, !alias.scope !157, !noalias !158
  %i.akq = fneg <2 x double> %wide.load763
  %wide.load766 = load <2 x double>, ptr %i.akk, align 8, !tbaa !35, !alias.scope !155
  %i.akr = fsub <2 x double> %i.akq, %wide.load766
  %i.aks = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.akl ; 2 uses
  %wide.load767 = load <2 x double>, ptr %i.aks, align 8, !tbaa !35, !alias.scope !159, !noalias !160
  %i.akt = fadd <2 x double> %wide.load767, %i.akr
  store <2 x double> %i.akt, ptr %i.aks, align 8, !tbaa !35, !alias.scope !159, !noalias !160
  %index.next768 = add nuw i64 %index759, 2       ; 2 uses
  %i.aku = icmp eq i64 %index.next768, %n.vec757
  br i1 %i.aku, label %middle.block769, label %vector.body758, !llvm.loop !99

middle.block769:                                  ; preds = %vector.body758
  br i1 %cmp.n770, label %.preheader.preheader.i.us.i, label %scalar.ph754.preheader

scalar.ph754.preheader:                           ; preds = %vector.memcheck639, %.lr.ph286.i.us.i, %middle.block769
  %indvars.iv330.i.us.i.ph = phi i64 [ 0, %vector.memcheck639 ], [ 0, %.lr.ph286.i.us.i ], [ %n.vec757, %middle.block769 ]
  br label %scalar.ph754

scalar.ph754:                                     ; preds = %scalar.ph754.preheader, %scalar.ph754
  %indvars.iv330.i.us.i = phi i64 [ %indvars.iv.next331.i.us.i, %scalar.ph754 ], [ %indvars.iv330.i.us.i.ph, %scalar.ph754.preheader ] ; 6 uses
  %gep398.i.us.i = getelementptr [8 x i8], ptr %invariant.gep397.i.us.i, i64 %indvars.iv330.i.us.i
  store double 0.000000e+00, ptr %gep398.i.us.i, align 8, !tbaa !35
  %gep400.i.us.i = getelementptr [8 x i8], ptr %invariant.gep399.i.us.i, i64 %indvars.iv330.i.us.i
  %i.akv = load double, ptr %gep400.i.us.i, align 8, !tbaa !35
  %gep402.i.us.i = getelementptr [8 x i8], ptr %invariant.gep401.i.us.i, i64 %indvars.iv330.i.us.i ; 2 uses
  %i.akw = load double, ptr %gep402.i.us.i, align 8, !tbaa !35
  %i.akx = fadd double %i.akv, %i.akw
  store double %i.akx, ptr %gep402.i.us.i, align 8, !tbaa !35
  %i.aky = add nuw nsw i64 %indvars.iv330.i.us.i, %i.ajs ; 2 uses
  %i.akz = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %i.aky ; 2 uses
  %i.ala = load double, ptr %i.akz, align 8, !tbaa !35
  %i.alb = add nuw nsw i64 %indvars.iv330.i.us.i, %i.aju ; 2 uses
  %i.alc = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.alb ; 2 uses
  %i.ald = load double, ptr %i.alc, align 8, !tbaa !35
  %i.ale = fsub double %i.ala, %i.ald
  %i.alf = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.aky ; 2 uses
  %i.alg = load double, ptr %i.alf, align 8, !tbaa !35
  %i.alh = fadd double %i.alg, %i.ale
  store double %i.alh, ptr %i.alf, align 8, !tbaa !35
  %i.ali = load double, ptr %i.alc, align 8, !tbaa !35
  %i.alj = fneg double %i.ali
  %i.alk = load double, ptr %i.akz, align 8, !tbaa !35
  %i.all = fsub double %i.alj, %i.alk
  %i.alm = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.alb ; 2 uses
  %i.aln = load double, ptr %i.alm, align 8, !tbaa !35
  %i.alo = fadd double %i.aln, %i.all
  store double %i.alo, ptr %i.alm, align 8, !tbaa !35
  %indvars.iv.next331.i.us.i = add nuw nsw i64 %indvars.iv330.i.us.i, 1 ; 2 uses
  %exitcond334.not.i.us.i = icmp eq i64 %indvars.iv.next331.i.us.i, %wide.trip.count.i68.us.i
  br i1 %exitcond334.not.i.us.i, label %.preheader.preheader.i.us.i, label %scalar.ph754, !llvm.loop !100

.preheader267.i.us.i:                             ; preds = %bb.aq
  br i1 %i.rt, label %.lr.ph288.i.us.i, label %._crit_edge296.split.i.us.i

.lr.ph288.i.us.i:                                 ; preds = %.preheader267.i.us.i
  %i.alp = mul nuw nsw i64 %indvars.iv355.i.us.i, %i.rz ; 7 uses
  %i.alq = trunc nsw i64 %i.alp to i32
  %i.alr = add i32 %i.rr, %i.alq
  %i.als = mul nsw i32 %i.alr, %i.rp
  %i.alt = or disjoint i64 %i.alp, 1
  %i.alu = mul nuw nsw i64 %i.alt, %i.ry
  %i.alv = mul nuw nsw i64 %i.alp, %i.ry
  %i.alw = add nuw nsw i64 %i.alp, %i.sa          ; 3 uses
  %i.alx = add nsw i64 %i.alw, -1
  %i.aly = mul nsw i64 %i.alx, %i.ry
  %i.alz = add nuw nsw i64 %i.alw, 1
  %i.ama = mul nuw nsw i64 %i.alz, %i.ry          ; 4 uses
  %i.amb = mul nuw nsw i64 %i.alw, %i.ry          ; 4 uses
  %i.amc = sext i32 %i.als to i64
  %invariant.gep403.i.us.i = getelementptr [8 x i8], ptr %i.xp, i64 %i.amc ; 8 uses
  %invariant.gep405.i.us.i = getelementptr [8 x i8], ptr %i.xq, i64 %i.alu ; 4 uses
  %invariant.gep407.i.us.i = getelementptr [8 x i8], ptr %i.xp, i64 %i.alv ; 4 uses
  %invariant.gep409.i.us.i = getelementptr [8 x i8], ptr %i.xq, i64 %i.aly ; 4 uses
  br i1 %min.iters.check623, label %scalar.ph622.preheader, label %vector.memcheck482

vector.memcheck482:                               ; preds = %.lr.ph288.i.us.i
  %i.amd = insertelement <4 x ptr> poison, ptr %invariant.gep403.i.us.i, i64 0
  %i.ame = shufflevector <4 x ptr> %i.amd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.amf = icmp ult <4 x ptr> %i.ame, %i.xu
  %i.amg = insertelement <4 x ptr> poison, ptr %scevgep484, i64 0
  %i.amh = shufflevector <4 x ptr> %i.amg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ami = icmp ult <4 x ptr> %i.xy, %i.amh
  %i.amj = and <4 x i1> %i.amf, %i.ami
  %bound0517.a = icmp ult ptr %invariant.gep403.i.us.i, %scevgep493
  %bound1518.a = icmp ult ptr %scevgep492.a, %scevgep484
  %found.conflict519.a = and i1 %bound0517.a, %bound1518.a
  %bound0522 = icmp ult ptr %invariant.gep403.i.us.i, %scevgep495
  %bound1523 = icmp ult ptr %scevgep494, %scevgep484
  %found.conflict524 = and i1 %bound0522, %bound1523
  %bound0527 = icmp ult ptr %invariant.gep403.i.us.i, %scevgep497
  %bound1528 = icmp ult ptr %scevgep496, %scevgep484
  %found.conflict529 = and i1 %bound0527, %bound1528
  %rdx.op833.reass = or <4 x i1> %i.amj, %invariant.op.a
  %i.amk = bitcast <4 x i1> %rdx.op833.reass to i4
  %i.aml = icmp ne i4 %i.amk, 0
  %op.rdx846 = or i1 %i.acd, %found.conflict519.a
  %op.rdx847 = or i1 %found.conflict524, %found.conflict529
  %op.rdx849 = or i1 %op.rdx846, %op.rdx847
  %op.rdx850 = or i1 %stride.check547, %i.aml
  %op.rdx851 = or i1 %op.rdx849, %op.rdx850
  br i1 %op.rdx851, label %scalar.ph622.preheader, label %vector.body626

vector.body626:                                   ; preds = %vector.memcheck482, %vector.body626
  %index627 = phi i64 [ %index.next635, %vector.body626 ], [ 0, %vector.memcheck482 ] ; 7 uses
  %i.amm = getelementptr [8 x i8], ptr %invariant.gep403.i.us.i, i64 %index627
  store <2 x double> zeroinitializer, ptr %i.amm, align 8, !tbaa !35, !alias.scope !161, !noalias !162
  %i.amn = getelementptr [8 x i8], ptr %invariant.gep405.i.us.i, i64 %index627
  %wide.load628 = load <2 x double>, ptr %i.amn, align 8, !tbaa !35, !alias.scope !163
  %i.amo = getelementptr [8 x i8], ptr %invariant.gep407.i.us.i, i64 %index627 ; 2 uses
  %wide.load629 = load <2 x double>, ptr %i.amo, align 8, !tbaa !35, !alias.scope !164, !noalias !165
  %i.amp = fadd <2 x double> %wide.load628, %wide.load629
  store <2 x double> %i.amp, ptr %i.amo, align 8, !tbaa !35, !alias.scope !164, !noalias !165
  %i.amq = getelementptr [8 x i8], ptr %invariant.gep409.i.us.i, i64 %index627
  %wide.load630 = load <2 x double>, ptr %i.amq, align 8, !tbaa !35, !alias.scope !166
  %i.amr = add nuw nsw i64 %index627, %i.ama      ; 2 uses
  %i.ams = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.amr
  %wide.load631 = load <2 x double>, ptr %i.ams, align 8, !tbaa !35, !alias.scope !167
  %i.amt = fsub <2 x double> %wide.load630, %wide.load631
  %i.amu = add nuw nsw i64 %index627, %i.amb      ; 2 uses
  %i.amv = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.amu ; 2 uses
  %wide.load632 = load <2 x double>, ptr %i.amv, align 8, !tbaa !35, !alias.scope !168, !noalias !169
  %i.amw = fadd <2 x double> %wide.load632, %i.amt
  store <2 x double> %i.amw, ptr %i.amv, align 8, !tbaa !35, !alias.scope !168, !noalias !169
  %i.amx = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %i.amu
  %wide.load633 = load <2 x double>, ptr %i.amx, align 8, !tbaa !35, !alias.scope !170
  %i.amy = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.amr ; 2 uses
  %wide.load634 = load <2 x double>, ptr %i.amy, align 8, !tbaa !35, !alias.scope !171, !noalias !172
  %i.amz = fsub <2 x double> %wide.load634, %wide.load633
  store <2 x double> %i.amz, ptr %i.amy, align 8, !tbaa !35, !alias.scope !171, !noalias !172
  %index.next635 = add nuw i64 %index627, 2       ; 2 uses
  %i.ana = icmp eq i64 %index.next635, %n.vec625
  br i1 %i.ana, label %middle.block636, label %vector.body626, !llvm.loop !110

middle.block636:                                  ; preds = %vector.body626
  br i1 %cmp.n637, label %.preheader.preheader.i.us.i, label %scalar.ph622.preheader

scalar.ph622.preheader:                           ; preds = %vector.memcheck482, %.lr.ph288.i.us.i, %middle.block636
  %indvars.iv335.i.us.i.ph = phi i64 [ 0, %vector.memcheck482 ], [ 0, %.lr.ph288.i.us.i ], [ %n.vec625, %middle.block636 ] ; 9 uses
  br i1 %lcmp.mod916.not, label %scalar.ph622.prol.loopexit, label %scalar.ph622.prol

scalar.ph622.prol:                                ; preds = %scalar.ph622.preheader
  %gep404.i.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep403.i.us.i, i64 %indvars.iv335.i.us.i.ph
  store double 0.000000e+00, ptr %gep404.i.us.i.prol, align 8, !tbaa !35
  %gep406.i.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep405.i.us.i, i64 %indvars.iv335.i.us.i.ph
  %i.anb = load double, ptr %gep406.i.us.i.prol, align 8, !tbaa !35
  %gep408.i.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep407.i.us.i, i64 %indvars.iv335.i.us.i.ph ; 2 uses
  %i.anc = load double, ptr %gep408.i.us.i.prol, align 8, !tbaa !35
  %i.and = fadd double %i.anb, %i.anc
  store double %i.and, ptr %gep408.i.us.i.prol, align 8, !tbaa !35
  %gep410.i.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep409.i.us.i, i64 %indvars.iv335.i.us.i.ph
  %i.ane = load double, ptr %gep410.i.us.i.prol, align 8, !tbaa !35
  %i.anf = add nuw nsw i64 %indvars.iv335.i.us.i.ph, %i.ama ; 2 uses
  %i.ang = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.anf
  %i.anh = load double, ptr %i.ang, align 8, !tbaa !35
  %i.ani = fsub double %i.ane, %i.anh
  %i.anj = add nuw nsw i64 %indvars.iv335.i.us.i.ph, %i.amb ; 2 uses
  %i.ank = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.anj ; 2 uses
  %i.anl = load double, ptr %i.ank, align 8, !tbaa !35
  %i.anm = fadd double %i.anl, %i.ani
  store double %i.anm, ptr %i.ank, align 8, !tbaa !35
  %i.ann = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %i.anj
  %i.ano = load double, ptr %i.ann, align 8, !tbaa !35
  %i.anp = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.anf ; 2 uses
  %i.anq = load double, ptr %i.anp, align 8, !tbaa !35
  %i.anr = fsub double %i.anq, %i.ano
  store double %i.anr, ptr %i.anp, align 8, !tbaa !35
  %indvars.iv.next336.i.us.i.prol = or disjoint i64 %indvars.iv335.i.us.i.ph, 1
  br label %scalar.ph622.prol.loopexit

scalar.ph622.prol.loopexit:                       ; preds = %scalar.ph622.prol, %scalar.ph622.preheader
  %indvars.iv335.i.us.i.unr = phi i64 [ %indvars.iv335.i.us.i.ph, %scalar.ph622.preheader ], [ %indvars.iv.next336.i.us.i.prol, %scalar.ph622.prol ]
  %i.ans = icmp eq i64 %indvars.iv335.i.us.i.ph, %i.wr
  br i1 %i.ans, label %.preheader.preheader.i.us.i, label %scalar.ph622

scalar.ph622:                                     ; preds = %scalar.ph622.prol.loopexit, %scalar.ph622
  %indvars.iv335.i.us.i = phi i64 [ %indvars.iv.next336.i.us.i.1, %scalar.ph622 ], [ %indvars.iv335.i.us.i.unr, %scalar.ph622.prol.loopexit ] ; 8 uses
  %gep404.i.us.i = getelementptr [8 x i8], ptr %invariant.gep403.i.us.i, i64 %indvars.iv335.i.us.i
  store double 0.000000e+00, ptr %gep404.i.us.i, align 8, !tbaa !35
  %gep406.i.us.i = getelementptr [8 x i8], ptr %invariant.gep405.i.us.i, i64 %indvars.iv335.i.us.i
  %i.ant = load double, ptr %gep406.i.us.i, align 8, !tbaa !35
  %gep408.i.us.i = getelementptr [8 x i8], ptr %invariant.gep407.i.us.i, i64 %indvars.iv335.i.us.i ; 2 uses
  %i.anu = load double, ptr %gep408.i.us.i, align 8, !tbaa !35
  %i.anv = fadd double %i.ant, %i.anu
  store double %i.anv, ptr %gep408.i.us.i, align 8, !tbaa !35
  %gep410.i.us.i = getelementptr [8 x i8], ptr %invariant.gep409.i.us.i, i64 %indvars.iv335.i.us.i
  %i.anw = load double, ptr %gep410.i.us.i, align 8, !tbaa !35
  %i.anx = add nuw nsw i64 %indvars.iv335.i.us.i, %i.ama ; 2 uses
  %i.any = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.anx
  %i.anz = load double, ptr %i.any, align 8, !tbaa !35
  %i.aoa = fsub double %i.anw, %i.anz
  %i.aob = add nuw nsw i64 %indvars.iv335.i.us.i, %i.amb ; 2 uses
  %i.aoc = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.aob ; 2 uses
  %i.aod = load double, ptr %i.aoc, align 8, !tbaa !35
  %i.aoe = fadd double %i.aod, %i.aoa
  store double %i.aoe, ptr %i.aoc, align 8, !tbaa !35
  %i.aof = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %i.aob
  %i.aog = load double, ptr %i.aof, align 8, !tbaa !35
  %i.aoh = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.anx ; 2 uses
  %i.aoi = load double, ptr %i.aoh, align 8, !tbaa !35
  %i.aoj = fsub double %i.aoi, %i.aog
  store double %i.aoj, ptr %i.aoh, align 8, !tbaa !35
  %indvars.iv.next336.i.us.i = add nuw nsw i64 %indvars.iv335.i.us.i, 1 ; 6 uses
  %gep404.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep403.i.us.i, i64 %indvars.iv.next336.i.us.i
  store double 0.000000e+00, ptr %gep404.i.us.i.1, align 8, !tbaa !35
  %gep406.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep405.i.us.i, i64 %indvars.iv.next336.i.us.i
  %i.aok = load double, ptr %gep406.i.us.i.1, align 8, !tbaa !35
  %gep408.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep407.i.us.i, i64 %indvars.iv.next336.i.us.i ; 2 uses
  %i.aol = load double, ptr %gep408.i.us.i.1, align 8, !tbaa !35
  %i.aom = fadd double %i.aok, %i.aol
  store double %i.aom, ptr %gep408.i.us.i.1, align 8, !tbaa !35
  %gep410.i.us.i.1 = getelementptr [8 x i8], ptr %invariant.gep409.i.us.i, i64 %indvars.iv.next336.i.us.i
  %i.aon = load double, ptr %gep410.i.us.i.1, align 8, !tbaa !35
  %i.aoo = add nuw nsw i64 %indvars.iv.next336.i.us.i, %i.ama ; 2 uses
  %i.aop = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.aoo
  %i.aoq = load double, ptr %i.aop, align 8, !tbaa !35
  %i.aor = fsub double %i.aon, %i.aoq
  %i.aos = add nuw nsw i64 %indvars.iv.next336.i.us.i, %i.amb ; 2 uses
  %i.aot = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.aos ; 2 uses
  %i.aou = load double, ptr %i.aot, align 8, !tbaa !35
  %i.aov = fadd double %i.aou, %i.aor
  store double %i.aov, ptr %i.aot, align 8, !tbaa !35
  %i.aow = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %i.aos
  %i.aox = load double, ptr %i.aow, align 8, !tbaa !35
  %i.aoy = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.aoo ; 2 uses
  %i.aoz = load double, ptr %i.aoy, align 8, !tbaa !35
  %i.apa = fsub double %i.aoz, %i.aox
  store double %i.apa, ptr %i.aoy, align 8, !tbaa !35
  %indvars.iv.next336.i.us.i.1 = add nuw nsw i64 %indvars.iv335.i.us.i, 2 ; 2 uses
  %exitcond339.not.i.us.i.1 = icmp eq i64 %indvars.iv.next336.i.us.i.1, %wide.trip.count.i68.us.i
  br i1 %exitcond339.not.i.us.i.1, label %.preheader.preheader.i.us.i, label %scalar.ph622, !llvm.loop !111

bb.ar:                                            ; preds = %._crit_edge278.split.i.us.i, %._crit_edge278.split.i.us.i
  br i1 %i.rt, label %.lr.ph291.i.us.i, label %.loopexit.i.us.i

.lr.ph291.i.us.i:                                 ; preds = %bb.ar
  %i.apb = mul nsw i64 %indvars.iv355.i.us.i, %i.rz ; 2 uses
  %i.apc = mul nsw i64 %i.apb, %i.ry              ; 6 uses
  %i.apd = trunc nsw i64 %i.apb to i32
  %i.ape = add i32 %i.rr, %i.apd
  %i.apf = mul nsw i32 %i.ape, %i.rp
  %i.apg = sext i32 %i.apf to i64                 ; 6 uses
  br i1 %min.iters.check470, label %scalar.ph469.preheader, label %vector.memcheck436

vector.memcheck436:                               ; preds = %.lr.ph291.i.us.i
  %bound0445 = icmp ult ptr %scevgep437, %scevgep440.a
  %bound1446 = icmp ult ptr %i.xp, %scevgep439
  %found.conflict447 = and i1 %bound0445, %bound1446
  %i.aph = or i1 %found.conflict447, %stride.check448
  %bound0449 = icmp ult ptr %scevgep437, %scevgep443
  %bound1450 = icmp ult ptr %scevgep441, %scevgep439
  %found.conflict451 = and i1 %bound0449, %bound1450
  %conflict.rdx452 = or i1 %i.aph, %found.conflict451
  %bound0453 = icmp ult ptr %scevgep437, %scevgep444
  %bound1454 = icmp ult ptr %i.xq, %scevgep439
  %found.conflict455 = and i1 %bound0453, %bound1454
  %conflict.rdx457 = or i1 %found.conflict455, %conflict.rdx452
  %bound0458 = icmp ult ptr %i.xp, %scevgep443
  %bound1459 = icmp ult ptr %scevgep441, %scevgep440.a
  %found.conflict460 = and i1 %bound0458, %bound1459
  %conflict.rdx462 = or i1 %found.conflict460, %conflict.rdx457
  %conflict.rdx468 = or i1 %found.conflict465, %conflict.rdx462
  br i1 %conflict.rdx468, label %scalar.ph469.preheader, label %vector.body473

vector.body473:                                   ; preds = %vector.memcheck436, %vector.body473
  %index474 = phi i64 [ %index.next478, %vector.body473 ], [ 0, %vector.memcheck436 ] ; 3 uses
  %i.api = add nsw i64 %index474, %i.apc          ; 2 uses
  %i.apj = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.api
  %wide.load475 = load <2 x double>, ptr %i.apj, align 8, !tbaa !35, !alias.scope !173
  %i.apk = add nsw i64 %index474, %i.apg          ; 2 uses
  %i.apl = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.apk
  store <2 x double> %wide.load475, ptr %i.apl, align 8, !tbaa !35, !alias.scope !174, !noalias !175
  %i.apm = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.apk
  %wide.load476 = load <2 x double>, ptr %i.apm, align 8, !tbaa !35, !alias.scope !176
  %i.apn = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.api ; 2 uses
  %wide.load477 = load <2 x double>, ptr %i.apn, align 8, !tbaa !35, !alias.scope !177, !noalias !178
  %i.apo = fadd <2 x double> %wide.load476, %wide.load477
  store <2 x double> %i.apo, ptr %i.apn, align 8, !tbaa !35, !alias.scope !177, !noalias !178
  %index.next478 = add nuw i64 %index474, 2       ; 2 uses
  %i.app = icmp eq i64 %index.next478, %n.vec472
  br i1 %i.app, label %middle.block479, label %vector.body473, !llvm.loop !117

middle.block479:                                  ; preds = %vector.body473
  br i1 %cmp.n480, label %.loopexit.i.us.i, label %scalar.ph469.preheader

scalar.ph469.preheader:                           ; preds = %vector.memcheck436, %.lr.ph291.i.us.i, %middle.block479
  %indvars.iv340.i.us.i.ph = phi i64 [ 0, %vector.memcheck436 ], [ 0, %.lr.ph291.i.us.i ], [ %n.vec472, %middle.block479 ] ; 4 uses
  %i.apq = sub nsw i64 %wide.trip.count.i68.us.i, %indvars.iv340.i.us.i.ph
  %xtraiter918 = and i64 %i.apq, 3                ; 2 uses
  %lcmp.mod919.not = icmp eq i64 %xtraiter918, 0
  br i1 %lcmp.mod919.not, label %scalar.ph469.prol.loopexit, label %scalar.ph469.prol

scalar.ph469.prol:                                ; preds = %scalar.ph469.preheader, %scalar.ph469.prol
  %indvars.iv340.i.us.i.prol = phi i64 [ %indvars.iv.next341.i.us.i.prol, %scalar.ph469.prol ], [ %indvars.iv340.i.us.i.ph, %scalar.ph469.preheader ] ; 3 uses
  %prol.iter920 = phi i64 [ %prol.iter920.next, %scalar.ph469.prol ], [ 0, %scalar.ph469.preheader ]
  %i.apr = add nsw i64 %indvars.iv340.i.us.i.prol, %i.apc ; 2 uses
  %i.aps = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.apr
  %i.apt = load double, ptr %i.aps, align 8, !tbaa !35
  %i.apu = add nsw i64 %indvars.iv340.i.us.i.prol, %i.apg ; 2 uses
  %i.apv = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.apu
  store double %i.apt, ptr %i.apv, align 8, !tbaa !35
  %i.apw = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.apu
  %i.apx = load double, ptr %i.apw, align 8, !tbaa !35
  %i.apy = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.apr ; 2 uses
  %i.apz = load double, ptr %i.apy, align 8, !tbaa !35
  %i.aqa = fadd double %i.apx, %i.apz
  store double %i.aqa, ptr %i.apy, align 8, !tbaa !35
  %indvars.iv.next341.i.us.i.prol = add nuw nsw i64 %indvars.iv340.i.us.i.prol, 1 ; 2 uses
  %prol.iter920.next = add i64 %prol.iter920, 1   ; 2 uses
  %prol.iter920.cmp.not = icmp eq i64 %prol.iter920.next, %xtraiter918
  br i1 %prol.iter920.cmp.not, label %scalar.ph469.prol.loopexit, label %scalar.ph469.prol, !llvm.loop !118

scalar.ph469.prol.loopexit:                       ; preds = %scalar.ph469.prol, %scalar.ph469.preheader
  %indvars.iv340.i.us.i.unr = phi i64 [ %indvars.iv340.i.us.i.ph, %scalar.ph469.preheader ], [ %indvars.iv.next341.i.us.i.prol, %scalar.ph469.prol ]
  %i.aqb = sub nsw i64 %indvars.iv340.i.us.i.ph, %wide.trip.count.i68.us.i
  %i.aqc = icmp ugt i64 %i.aqb, -4
  br i1 %i.aqc, label %.loopexit.i.us.i, label %scalar.ph469

scalar.ph469:                                     ; preds = %scalar.ph469.prol.loopexit, %scalar.ph469
  %indvars.iv340.i.us.i = phi i64 [ %indvars.iv.next341.i.us.i.3, %scalar.ph469 ], [ %indvars.iv340.i.us.i.unr, %scalar.ph469.prol.loopexit ] ; 6 uses
  %i.aqd = add nsw i64 %indvars.iv340.i.us.i, %i.apc ; 2 uses
  %i.aqe = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.aqd
  %i.aqf = load double, ptr %i.aqe, align 8, !tbaa !35
  %i.aqg = add nsw i64 %indvars.iv340.i.us.i, %i.apg ; 2 uses
  %i.aqh = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.aqg
  store double %i.aqf, ptr %i.aqh, align 8, !tbaa !35
  %i.aqi = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.aqg
  %i.aqj = load double, ptr %i.aqi, align 8, !tbaa !35
  %i.aqk = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.aqd ; 2 uses
  %i.aql = load double, ptr %i.aqk, align 8, !tbaa !35
  %i.aqm = fadd double %i.aqj, %i.aql
  store double %i.aqm, ptr %i.aqk, align 8, !tbaa !35
  %indvars.iv.next341.i.us.i = add nuw nsw i64 %indvars.iv340.i.us.i, 1 ; 2 uses
  %i.aqn = add nsw i64 %indvars.iv.next341.i.us.i, %i.apc ; 2 uses
  %i.aqo = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.aqn
  %i.aqp = load double, ptr %i.aqo, align 8, !tbaa !35
  %i.aqq = add nsw i64 %indvars.iv.next341.i.us.i, %i.apg ; 2 uses
  %i.aqr = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.aqq
  store double %i.aqp, ptr %i.aqr, align 8, !tbaa !35
  %i.aqs = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.aqq
  %i.aqt = load double, ptr %i.aqs, align 8, !tbaa !35
  %i.aqu = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.aqn ; 2 uses
  %i.aqv = load double, ptr %i.aqu, align 8, !tbaa !35
  %i.aqw = fadd double %i.aqt, %i.aqv
  store double %i.aqw, ptr %i.aqu, align 8, !tbaa !35
  %indvars.iv.next341.i.us.i.1 = add nuw nsw i64 %indvars.iv340.i.us.i, 2 ; 2 uses
  %i.aqx = add nsw i64 %indvars.iv.next341.i.us.i.1, %i.apc ; 2 uses
  %i.aqy = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.aqx
  %i.aqz = load double, ptr %i.aqy, align 8, !tbaa !35
  %i.ara = add nsw i64 %indvars.iv.next341.i.us.i.1, %i.apg ; 2 uses
  %i.arb = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.ara
  store double %i.aqz, ptr %i.arb, align 8, !tbaa !35
  %i.arc = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.ara
  %i.ard = load double, ptr %i.arc, align 8, !tbaa !35
  %i.are = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.aqx ; 2 uses
  %i.arf = load double, ptr %i.are, align 8, !tbaa !35
  %i.arg = fadd double %i.ard, %i.arf
  store double %i.arg, ptr %i.are, align 8, !tbaa !35
  %indvars.iv.next341.i.us.i.2 = add nuw nsw i64 %indvars.iv340.i.us.i, 3 ; 2 uses
  %i.arh = add nsw i64 %indvars.iv.next341.i.us.i.2, %i.apc ; 2 uses
  %i.ari = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.arh
  %i.arj = load double, ptr %i.ari, align 8, !tbaa !35
  %i.ark = add nsw i64 %indvars.iv.next341.i.us.i.2, %i.apg ; 2 uses
  %i.arl = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.ark
  store double %i.arj, ptr %i.arl, align 8, !tbaa !35
  %i.arm = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.ark
  %i.arn = load double, ptr %i.arm, align 8, !tbaa !35
  %i.aro = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.arh ; 2 uses
  %i.arp = load double, ptr %i.aro, align 8, !tbaa !35
  %i.arq = fadd double %i.arn, %i.arp
  store double %i.arq, ptr %i.aro, align 8, !tbaa !35
  %indvars.iv.next341.i.us.i.3 = add nuw nsw i64 %indvars.iv340.i.us.i, 4 ; 2 uses
  %exitcond344.not.i.us.i.3 = icmp eq i64 %indvars.iv.next341.i.us.i.3, %wide.trip.count.i68.us.i
  br i1 %exitcond344.not.i.us.i.3, label %.loopexit.i.us.i, label %scalar.ph469, !llvm.loop !119

.loopexit.i.us.i.loopexit876.unr-lcssa:           ; preds = %bb.ao
  br i1 %lcmp.mod908.not, label %.loopexit.i.us.i, label %.epil.preheader905

.epil.preheader905:                               ; preds = %.loopexit.i.us.i.loopexit876.unr-lcssa, %.preheader273.i.us.i
  %indvars.iv320.i.us.i.epil.init = phi i64 [ 0, %.preheader273.i.us.i ], [ %indvars.iv.next321.i.us.i.1, %.loopexit.i.us.i.loopexit876.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod909)
  %i.arr = add nsw i64 %indvars.iv320.i.us.i.epil.init, %i.afw ; 2 uses
  %i.ars = getelementptr inbounds [8 x i8], ptr %i.xq, i64 %i.arr
  %i.art = load double, ptr %i.ars, align 8, !tbaa !35
  br i1 %i.rs, label %bb.as, label %.loopexit.i.us.i.loopexit876.epilog-lcssa

bb.as:                                            ; preds = %.epil.preheader905
  %gep396.i.us.i.epil = getelementptr [8 x i8], ptr %invariant.gep395.i.us.i, i64 %indvars.iv320.i.us.i.epil.init
  %i.aru = load double, ptr %gep396.i.us.i.epil, align 8, !tbaa !35
  %i.arv = fmul double %i.aru, %i.afx
  br label %.loopexit.i.us.i.loopexit876.epilog-lcssa

.loopexit.i.us.i.loopexit876.epilog-lcssa:        ; preds = %bb.as, %.epil.preheader905
  %i.arw = phi double [ %i.arv, %bb.as ], [ 0.000000e+00, %.epil.preheader905 ]
  %i.arx = call double @llvm.fmuladd.f64(double %i.afu, double %i.art, double %i.arw)
  %i.ary = getelementptr inbounds [8 x i8], ptr %i.xp, i64 %i.arr ; 2 uses
  %i.arz = load double, ptr %i.ary, align 8, !tbaa !35
  %i.asa = fadd double %i.arz, %i.arx
  store double %i.asa, ptr %i.ary, align 8, !tbaa !35
  br label %.loopexit.i.us.i

.loopexit.i.us.i:                                 ; preds = %.loopexit.i.us.i.loopexit876.epilog-lcssa, %.loopexit.i.us.i.loopexit876.unr-lcssa, %scalar.ph805.prol.loopexit, %scalar.ph805, %scalar.ph469.prol.loopexit, %scalar.ph469, %middle.block815, %middle.block479, %bb.ar, %.preheader271.i.us.i, %bb.z, %._crit_edge278.split.i.us.i
  %.2254.i.us.i = phi i32 [ %.0252297.i.us.i, %._crit_edge278.split.i.us.i ], [ %.0252297.i.us.i, %middle.block815 ], [ %.0252297.i.us.i, %.preheader271.i.us.i ], [ %.0252297.i.us.i, %bb.ar ], [ %.1253.i.us.i, %bb.z ], [ %.0252297.i.us.i, %middle.block479 ], [ %.0252297.i.us.i, %scalar.ph469.prol.loopexit ], [ %.0252297.i.us.i, %scalar.ph805.prol.loopexit ], [ %.0252297.i.us.i, %scalar.ph469 ], [ %.0252297.i.us.i, %scalar.ph805 ], [ %.1253.i.us.i, %.loopexit.i.us.i.loopexit876.unr-lcssa ], [ %.1253.i.us.i, %.loopexit.i.us.i.loopexit876.epilog-lcssa ] ; 3 uses
  %.2251.i.us.i = phi i32 [ %.0249298.i.us.i, %._crit_edge278.split.i.us.i ], [ %.0249298.i.us.i, %middle.block815 ], [ %.0249298.i.us.i, %.preheader271.i.us.i ], [ %.0249298.i.us.i, %bb.ar ], [ %.1250.i.us.i, %bb.z ], [ %.0249298.i.us.i, %middle.block479 ], [ %.0249298.i.us.i, %scalar.ph469.prol.loopexit ], [ %.0249298.i.us.i, %scalar.ph805.prol.loopexit ], [ %.0249298.i.us.i, %scalar.ph469 ], [ %.0249298.i.us.i, %scalar.ph805 ], [ %.1250.i.us.i, %.loopexit.i.us.i.loopexit876.unr-lcssa ], [ %.1250.i.us.i, %.loopexit.i.us.i.loopexit876.epilog-lcssa ] ; 3 uses
  %.2248.i.us.i = phi i32 [ %.0246299.i.us.i, %._crit_edge278.split.i.us.i ], [ %.0246299.i.us.i, %middle.block815 ], [ %.0246299.i.us.i, %.preheader271.i.us.i ], [ %.0246299.i.us.i, %bb.ar ], [ %.1247.i.us.i, %bb.z ], [ %.0246299.i.us.i, %middle.block479 ], [ %.0246299.i.us.i, %scalar.ph469.prol.loopexit ], [ %.0246299.i.us.i, %scalar.ph805.prol.loopexit ], [ %.0246299.i.us.i, %scalar.ph469 ], [ %.0246299.i.us.i, %scalar.ph805 ], [ %.1247.i.us.i, %.loopexit.i.us.i.loopexit876.unr-lcssa ], [ %.1247.i.us.i, %.loopexit.i.us.i.loopexit876.epilog-lcssa ] ; 3 uses
  %.2245.i.us.i = phi i32 [ %.0243300.i.us.i, %._crit_edge278.split.i.us.i ], [ %.0243300.i.us.i, %middle.block815 ], [ %.0243300.i.us.i, %.preheader271.i.us.i ], [ %.0243300.i.us.i, %bb.ar ], [ %.1244.i.us.i, %bb.z ], [ %.0243300.i.us.i, %middle.block479 ], [ %.0243300.i.us.i, %scalar.ph469.prol.loopexit ], [ %.0243300.i.us.i, %scalar.ph805.prol.loopexit ], [ %.0243300.i.us.i, %scalar.ph469 ], [ %.0243300.i.us.i, %scalar.ph805 ], [ %.1244.i.us.i, %.loopexit.i.us.i.loopexit876.unr-lcssa ], [ %.1244.i.us.i, %.loopexit.i.us.i.loopexit876.epilog-lcssa ] ; 3 uses
  br i1 %i.rs, label %.preheader.lr.ph.i.us.i, label %._crit_edge296.split.i.us.i

.preheader.lr.ph.i.us.i:                          ; preds = %.loopexit.i.us.i
  br i1 %i.rt, label %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i, label %._crit_edge296.split.i.us.i

.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i: ; preds = %.preheader.lr.ph.i.us.i
  %.pre136.i = mul nuw nsw i64 %indvars.iv355.i.us.i, %i.rz
  br label %.preheader.preheader.i.us.i

.preheader.preheader.i.us.i:                      ; preds = %scalar.ph754, %scalar.ph622.prol.loopexit, %scalar.ph622, %middle.block769, %middle.block636, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre136.i, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i ], [ %i.alp, %middle.block636 ], [ %i.ajk, %middle.block769 ], [ %i.alp, %scalar.ph622.prol.loopexit ], [ %i.alp, %scalar.ph622 ], [ %i.ajk, %scalar.ph754 ]
  %.2254367381.i.us.i = phi i32 [ %.2254.i.us.i, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i ], [ %.0252297.i.us.i, %middle.block636 ], [ %.0252297.i.us.i, %middle.block769 ], [ %.0252297.i.us.i, %scalar.ph622.prol.loopexit ], [ %.0252297.i.us.i, %scalar.ph622 ], [ %.0252297.i.us.i, %scalar.ph754 ]
  %.2251369380.i.us.i = phi i32 [ %.2251.i.us.i, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i ], [ %.0249298.i.us.i, %middle.block636 ], [ %.0249298.i.us.i, %middle.block769 ], [ %.0249298.i.us.i, %scalar.ph622.prol.loopexit ], [ %.0249298.i.us.i, %scalar.ph622 ], [ %.0249298.i.us.i, %scalar.ph754 ]
  %.2248371379.i.us.i = phi i32 [ %.2248.i.us.i, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i ], [ %.0246299.i.us.i, %middle.block636 ], [ %.0246299.i.us.i, %middle.block769 ], [ %.0246299.i.us.i, %scalar.ph622.prol.loopexit ], [ %.0246299.i.us.i, %scalar.ph622 ], [ %.0246299.i.us.i, %scalar.ph754 ]
  %.2245373378.i.us.i = phi i32 [ %.2245.i.us.i, %.preheader.lr.ph.i.us..preheader.preheader.i.us_crit_edge.i ], [ %.0243300.i.us.i, %middle.block636 ], [ %.0243300.i.us.i, %middle.block769 ], [ %.0243300.i.us.i, %scalar.ph622.prol.loopexit ], [ %.0243300.i.us.i, %scalar.ph622 ], [ %.0243300.i.us.i, %scalar.ph754 ]
  %bound0 = icmp ult ptr %scevgep, %scevgep420
  %bound1 = icmp ult ptr %scevgep419, %scevgep418
  %found.conflict = and i1 %bound0, %bound1
  %i.asb = or i1 %found.conflict, %stride.check
  br label %.preheader.i.us.i

.preheader.i.us.i:                                ; preds = %._crit_edge294.i.us.i, %.preheader.preheader.i.us.i
  %indvars.iv350.i.us.i = phi i64 [ 1, %.preheader.preheader.i.us.i ], [ %indvars.iv.next351.i.us.i, %._crit_edge294.i.us.i ] ; 2 uses
  %i.asc = add nuw nsw i64 %indvars.iv350.i.us.i, %.pre-phi.i ; 2 uses
  %i.asd = add nsw i64 %i.asc, -1
  %i.ase = mul nsw i64 %i.asd, %i.ry
  %i.asf = mul nuw nsw i64 %i.asc, %i.ry
  %invariant.gep411.i.us.i = getelementptr [8 x i8], ptr %i.xq, i64 %i.ase ; 10 uses
  %invariant.gep413.i.us.i = getelementptr [8 x i8], ptr %i.xp, i64 %i.asf ; 10 uses
  %brmerge949 = select i1 %min.iters.check423, i1 true, i1 %i.asb
  br i1 %brmerge949, label %scalar.ph422.preheader, label %vector.body426

vector.body426:                                   ; preds = %.preheader.i.us.i, %vector.body426
  %index427 = phi i64 [ %index.next432, %vector.body426 ], [ 0, %.preheader.i.us.i ] ; 3 uses
  %i.asg = getelementptr [8 x i8], ptr %invariant.gep411.i.us.i, i64 %index427 ; 2 uses
  %i.ash = getelementptr i8, ptr %i.asg, i64 16
  %wide.load428.a = load <2 x double>, ptr %i.asg, align 8, !tbaa !35, !alias.scope !179
  %wide.load429.a = load <2 x double>, ptr %i.ash, align 8, !tbaa !35, !alias.scope !179
  %i.asi = getelementptr [8 x i8], ptr %invariant.gep413.i.us.i, i64 %index427 ; 3 uses
  %i.asj = getelementptr i8, ptr %i.asi, i64 16   ; 2 uses
  %wide.load430.a = load <2 x double>, ptr %i.asi, align 8, !tbaa !35, !alias.scope !180, !noalias !179
  %wide.load431 = load <2 x double>, ptr %i.asj, align 8, !tbaa !35, !alias.scope !180, !noalias !179
  %i.ask = fadd <2 x double> %wide.load428.a, %wide.load430.a
  %i.asl = fadd <2 x double> %wide.load429.a, %wide.load431
  store <2 x double> %i.ask, ptr %i.asi, align 8, !tbaa !35, !alias.scope !180, !noalias !179
  store <2 x double> %i.asl, ptr %i.asj, align 8, !tbaa !35, !alias.scope !180, !noalias !179
  %index.next432 = add nuw i64 %index427, 4       ; 2 uses
  %i.asm = icmp eq i64 %index.next432, %n.vec425
  br i1 %i.asm, label %middle.block433, label %vector.body426, !llvm.loop !123

middle.block433:                                  ; preds = %vector.body426
  br i1 %cmp.n434, label %._crit_edge294.i.us.i, label %scalar.ph422.preheader

scalar.ph422.preheader:                           ; preds = %.preheader.i.us.i, %middle.block433
  %indvars.iv345.i.us.i.ph = phi i64 [ %n.vec425, %middle.block433 ], [ 0, %.preheader.i.us.i ] ; 4 uses
  %i.asn = sub nsw i64 %wide.trip.count.i68.us.i, %indvars.iv345.i.us.i.ph
end_hunk_0
