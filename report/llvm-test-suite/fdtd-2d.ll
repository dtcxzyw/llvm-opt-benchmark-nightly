inline.NumInlined: 20
inline.NumDeleted: 7
begin_hunk_0_@main:bb.a
  store <2 x double> %i.no, ptr %i.ne, align 8, !tbaa !8, !alias.scope !60, !noalias !63
  store <2 x double> %i.np, ptr %i.nf, align 8, !tbaa !8, !alias.scope !60, !noalias !63
  %index.next253 = add nuw i64 %index246, 4       ; 2 uses
  %i.nq = icmp eq i64 %index.next253, 1196
  br i1 %i.nq, label %scalar.ph243.prol, label %vector.body245, !llvm.loop !65

scalar.ph243.prol:                                ; preds = %vector.body245, %.preheader75.i79
  %indvars.iv98.i81.ph = phi i64 [ 1, %.preheader75.i79 ], [ 1197, %vector.body245 ] ; 3 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %indvars.iv98.i81.ph ; 2 uses
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !8
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %indvars.iv98.i81.ph ; 2 uses
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !8
  %i.nv = getelementptr i8, ptr %i.nt, i64 -8
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !8
  %i.nx = fsub double %i.nu, %i.nw
  %i.ny = fmul double %i.nx, 5.000000e-01
  %i.nz = fsub double %i.ns, %i.ny
  store double %i.nz, ptr %i.nr, align 8, !tbaa !8
  %indvars.iv.next99.i82.prol = add nuw nsw i64 %indvars.iv98.i81.ph, 1
  br label %scalar.ph243

scalar.ph243:                                     ; preds = %scalar.ph243, %scalar.ph243.prol
  %indvars.iv98.i81 = phi i64 [ %indvars.iv.next99.i82.prol, %scalar.ph243.prol ], [ %indvars.iv.next99.i82.1, %scalar.ph243 ] ; 4 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %indvars.iv98.i81 ; 2 uses
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !8
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %indvars.iv98.i81 ; 2 uses
  %i.od = load double, ptr %i.oc, align 8, !tbaa !8
  %i.oe = getelementptr i8, ptr %i.oc, i64 -8
  %i.of = load double, ptr %i.oe, align 8, !tbaa !8
  %i.og = fsub double %i.od, %i.of
  %i.oh = fmul double %i.og, 5.000000e-01
  %i.oi = fsub double %i.ob, %i.oh
  store double %i.oi, ptr %i.oa, align 8, !tbaa !8
  %indvars.iv.next99.i82 = add nuw nsw i64 %indvars.iv98.i81, 1 ; 2 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %indvars.iv.next99.i82 ; 2 uses
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !8
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %indvars.iv.next99.i82 ; 2 uses
  %i.om = load double, ptr %i.ol, align 8, !tbaa !8
  %i.on = getelementptr i8, ptr %i.ol, i64 -8
  %i.oo = load double, ptr %i.on, align 8, !tbaa !8
  %i.op = fsub double %i.om, %i.oo
  %i.oq = fmul double %i.op, 5.000000e-01
  %i.or = fsub double %i.ok, %i.oq
  store double %i.or, ptr %i.oj, align 8, !tbaa !8
  %indvars.iv.next99.i82.1 = add nuw nsw i64 %indvars.iv98.i81, 2 ; 2 uses
  %exitcond101.not.i83.1 = icmp eq i64 %indvars.iv.next99.i82.1, 1200
  br i1 %exitcond101.not.i83.1, label %.unr-lcssa294, label %scalar.ph243, !llvm.loop !66

.unr-lcssa294:                                    ; preds = %scalar.ph243
  %indvars.iv.next103.i84 = add nuw nsw i64 %indvars.iv102.i80, 1 ; 2 uses
  %exitcond105.not.i85 = icmp eq i64 %indvars.iv.next103.i84, 1000
  br i1 %exitcond105.not.i85, label %.preheader.i86, label %.preheader75.i79, !llvm.loop !67

.preheader.i86:                                   ; preds = %.unr-lcssa294, %.unr-lcssa297
  %indvars.iv110.i87 = phi i64 [ %indvars.iv.next111.i91, %.unr-lcssa297 ], [ 0, %.unr-lcssa294 ] ; 4 uses
  %i.os = getelementptr inbounds nuw [9600 x i8], ptr %i.ar, i64 %indvars.iv110.i87 ; 4 uses
  %i.ot = getelementptr inbounds nuw [9600 x i8], ptr %i.ad, i64 %indvars.iv110.i87 ; 8 uses
  %i.ou = getelementptr inbounds nuw [9600 x i8], ptr %i.ak, i64 %indvars.iv110.i87 ; 5 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 9600 ; 4 uses
  br i1 %conflict.rdx218, label %scalar.ph219.prol, label %vector.body221

vector.body221:                                   ; preds = %.preheader.i86, %vector.body221
  %index222 = phi i64 [ %index.next233, %vector.body221 ], [ 0, %.preheader.i86 ] ; 6 uses
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %index222 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16 ; 2 uses
  %wide.load223 = load <2 x double>, ptr %i.ow, align 8, !tbaa !8, !alias.scope !68, !noalias !71
  %wide.load224 = load <2 x double>, ptr %i.ox, align 8, !tbaa !8, !alias.scope !68, !noalias !71
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %index222 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  %wide.load225 = load <2 x double>, ptr %i.oz, align 8, !tbaa !8, !alias.scope !74
  %wide.load226 = load <2 x double>, ptr %i.pa, align 8, !tbaa !8, !alias.scope !74
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %index222 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %wide.load227 = load <2 x double>, ptr %i.pb, align 8, !tbaa !8, !alias.scope !74
  %wide.load228 = load <2 x double>, ptr %i.pc, align 8, !tbaa !8, !alias.scope !74
  %i.pd = fsub <2 x double> %wide.load225, %wide.load227
  %i.pe = fsub <2 x double> %wide.load226, %wide.load228
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.ov, i64 %index222 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %wide.load229 = load <2 x double>, ptr %i.pf, align 8, !tbaa !8, !alias.scope !75
  %wide.load230 = load <2 x double>, ptr %i.pg, align 8, !tbaa !8, !alias.scope !75
  %i.ph = fadd <2 x double> %i.pd, %wide.load229
  %i.pi = fadd <2 x double> %i.pe, %wide.load230
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %index222 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %wide.load231 = load <2 x double>, ptr %i.pj, align 8, !tbaa !8, !alias.scope !75
  %wide.load232 = load <2 x double>, ptr %i.pk, align 8, !tbaa !8, !alias.scope !75
  %i.pl = fsub <2 x double> %i.ph, %wide.load231
  %i.pm = fsub <2 x double> %i.pi, %wide.load232
  %i.pn = fmul <2 x double> %i.pl, splat (double f0x3FE6666666666666)
  %i.po = fmul <2 x double> %i.pm, splat (double f0x3FE6666666666666)
  %i.pp = fsub <2 x double> %wide.load223, %i.pn
  %i.pq = fsub <2 x double> %wide.load224, %i.po
  store <2 x double> %i.pp, ptr %i.ow, align 8, !tbaa !8, !alias.scope !68, !noalias !71
  store <2 x double> %i.pq, ptr %i.ox, align 8, !tbaa !8, !alias.scope !68, !noalias !71
  %index.next233 = add nuw i64 %index222, 4       ; 2 uses
  %i.pr = icmp eq i64 %index.next233, 1196
  br i1 %i.pr, label %scalar.ph219.prol, label %vector.body221, !llvm.loop !76

scalar.ph219.prol:                                ; preds = %vector.body221, %.preheader.i86
  %indvars.iv106.i88.ph = phi i64 [ 0, %.preheader.i86 ], [ 1196, %vector.body221 ] ; 5 uses
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %indvars.iv106.i88.ph ; 2 uses
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !8
  %indvars.iv.next107.i89.prol = or disjoint i64 %indvars.iv106.i88.ph, 1 ; 2 uses
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv.next107.i89.prol
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !8
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv106.i88.ph
  %i.px = load double, ptr %i.pw, align 8, !tbaa !8
  %i.py = fsub double %i.pv, %i.px
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.ov, i64 %indvars.iv106.i88.ph
  %i.qa = load double, ptr %i.pz, align 8, !tbaa !8
  %i.qb = fadd double %i.py, %i.qa
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %indvars.iv106.i88.ph
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !8
  %i.qe = fsub double %i.qb, %i.qd
  %i.qf = fmul double %i.qe, f0x3FE6666666666666
  %i.qg = fsub double %i.pt, %i.qf
  store double %i.qg, ptr %i.ps, align 8, !tbaa !8
  br label %scalar.ph219

scalar.ph219:                                     ; preds = %scalar.ph219, %scalar.ph219.prol
  %indvars.iv106.i88 = phi i64 [ %indvars.iv.next107.i89.prol, %scalar.ph219.prol ], [ %indvars.iv.next107.i89.1, %scalar.ph219 ] ; 6 uses
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %indvars.iv106.i88 ; 2 uses
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !8
  %indvars.iv.next107.i89 = add nuw nsw i64 %indvars.iv106.i88, 1 ; 5 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv.next107.i89
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !8
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv106.i88
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !8
  %i.qn = fsub double %i.qk, %i.qm
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.ov, i64 %indvars.iv106.i88
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !8
  %i.qq = fadd double %i.qn, %i.qp
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %indvars.iv106.i88
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !8
  %i.qt = fsub double %i.qq, %i.qs
  %i.qu = fmul double %i.qt, f0x3FE6666666666666
  %i.qv = fsub double %i.qi, %i.qu
  store double %i.qv, ptr %i.qh, align 8, !tbaa !8
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %indvars.iv.next107.i89 ; 2 uses
  %i.qx = load double, ptr %i.qw, align 8, !tbaa !8
  %indvars.iv.next107.i89.1 = add nuw nsw i64 %indvars.iv106.i88, 2 ; 3 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv.next107.i89.1
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !8
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv.next107.i89
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !8
  %i.rc = fsub double %i.qz, %i.rb
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.ov, i64 %indvars.iv.next107.i89
  %i.re = load double, ptr %i.rd, align 8, !tbaa !8
  %i.rf = fadd double %i.rc, %i.re
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %indvars.iv.next107.i89
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !8
  %i.ri = fsub double %i.rf, %i.rh
  %i.rj = fmul double %i.ri, f0x3FE6666666666666
  %i.rk = fsub double %i.qx, %i.rj
  store double %i.rk, ptr %i.qw, align 8, !tbaa !8
  %exitcond109.not.i90.1 = icmp eq i64 %indvars.iv.next107.i89.1, 1199
  br i1 %exitcond109.not.i90.1, label %.unr-lcssa297, label %scalar.ph219, !llvm.loop !77

.unr-lcssa297:                                    ; preds = %scalar.ph219
  %indvars.iv.next111.i91 = add nuw nsw i64 %indvars.iv110.i87, 1 ; 2 uses
  %exitcond113.not.i92 = icmp eq i64 %indvars.iv.next111.i91, 999
  br i1 %exitcond113.not.i92, label %bb.j, label %.preheader.i86, !llvm.loop !78

bb.j:                                             ; preds = %.unr-lcssa297
  %indvars.iv.next115.i93 = add nuw nsw i64 %indvars.iv114.i67, 1 ; 2 uses
  %exitcond117.not.i94 = icmp eq i64 %indvars.iv.next115.i93, 500
  br i1 %exitcond117.not.i94, label %kernel_fdtd_2d_StrictFP.exit, label %vector.ph275, !llvm.loop !79

kernel_fdtd_2d_StrictFP.exit:                     ; preds = %bb.j
  %i.rl = call noalias dereferenceable_or_null(19201) ptr @malloc(i64 noundef 19201) #15 ; 8 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 19200
  store i8 0, ptr %i.rm, align 1, !tbaa !80
  br label %.preheader.i95

.preheader.i95:                                   ; preds = %bb.p, %kernel_fdtd_2d_StrictFP.exit
  %indvars.iv62.i = phi i64 [ 0, %kernel_fdtd_2d_StrictFP.exit ], [ %indvars.iv.next63.i, %bb.p ] ; 4 uses
  %i.rn = getelementptr inbounds nuw [9600 x i8], ptr %i.ad, i64 %indvars.iv62.i
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader.i95
  %indvars.iv.i96 = phi i64 [ 0, %.preheader.i95 ], [ %indvars.iv.next.i97, %bb.k ] ; 3 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.rn, i64 %indvars.iv.i96
  %i.rp = shl nuw nsw i64 %indvars.iv.i96, 4
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rp
  %i.rr = load i64, ptr %i.ro, align 8, !tbaa !8  ; 8 uses
  %i.rs = lshr i64 %i.rr, 56
  %.sroa.0.6.extract.shift.i.i = lshr i64 %i.rr, 48
  %.sroa.0.5.extract.shift.i.i = lshr i64 %i.rr, 40
  %.sroa.0.4.extract.shift.i.i = lshr i64 %i.rr, 32
  %i.rt = lshr i64 %i.rr, 24
  %i.ru = lshr i64 %i.rr, 16
  %i.rv = lshr i64 %i.rr, 8
  %i.rw = trunc nuw i64 %i.rs to i8
  %.sroa.0.6.extract.trunc.i.i = trunc i64 %.sroa.0.6.extract.shift.i.i to i8
  %.sroa.0.5.extract.trunc.i.i = trunc i64 %.sroa.0.5.extract.shift.i.i to i8
  %.sroa.0.4.extract.trunc.i.i = trunc i64 %.sroa.0.4.extract.shift.i.i to i8
  %i.rx = trunc i64 %i.rt to i8
  %i.ry = trunc i64 %i.ru to i8
  %2 = trunc i64 %i.rv to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.rr to i8
  %3 = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %4 = insertelement <8 x i8> %3, i8 %2, i64 1
  %i.rz = insertelement <8 x i8> %4, i8 %i.ry, i64 2
  %i.sa = insertelement <8 x i8> %i.rz, i8 %i.rx, i64 3
  %i.sb = insertelement <8 x i8> %i.sa, i8 %.sroa.0.4.extract.trunc.i.i, i64 4
  %i.sc = insertelement <8 x i8> %i.sb, i8 %.sroa.0.5.extract.trunc.i.i, i64 5
  %i.sd = insertelement <8 x i8> %i.sc, i8 %.sroa.0.6.extract.trunc.i.i, i64 6
  %i.se = insertelement <8 x i8> %i.sd, i8 %i.rw, i64 7
  %i.sf = and <8 x i8> %i.se, splat (i8 15)
  %i.sg = or disjoint <8 x i8> %i.sf, splat (i8 48)
  %i.sh = shufflevector <8 x i8> %i.sg, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.sh, ptr %i.rq, align 1, !tbaa !80
  %indvars.iv.next.i97 = add nuw nsw i64 %indvars.iv.i96, 1 ; 2 uses
  %exitcond.not.i98 = icmp eq i64 %indvars.iv.next.i97, 1200
  br i1 %exitcond.not.i98, label %bb.l, label %bb.k, !llvm.loop !81

bb.l:                                             ; preds = %bb.k
  %i.si = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.sj = call i32 @fputs(ptr noundef nonnull %i.rl, ptr noundef %i.si) #13 ; 0 uses
  %i.sk = getelementptr inbounds nuw [9600 x i8], ptr %i.ak, i64 %indvars.iv62.i
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %indvars.iv54.i = phi i64 [ 0, %bb.l ], [ %indvars.iv.next55.i, %bb.m ] ; 3 uses
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %indvars.iv54.i
  %i.sm = shl nuw nsw i64 %indvars.iv54.i, 4
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.sm
  %i.so = load i64, ptr %i.sl, align 8, !tbaa !8  ; 8 uses
  %i.sp = lshr i64 %i.so, 56
  %.sroa.0.6.extract.shift.i40.i = lshr i64 %i.so, 48
  %.sroa.0.5.extract.shift.i38.i = lshr i64 %i.so, 40
  %.sroa.0.4.extract.shift.i36.i = lshr i64 %i.so, 32
  %i.sq = lshr i64 %i.so, 24
  %i.sr = lshr i64 %i.so, 16
  %i.ss = lshr i64 %i.so, 8
  %i.st = trunc nuw i64 %i.sp to i8
  %.sroa.0.6.extract.trunc.i41.i = trunc i64 %.sroa.0.6.extract.shift.i40.i to i8
  %.sroa.0.5.extract.trunc.i39.i = trunc i64 %.sroa.0.5.extract.shift.i38.i to i8
  %.sroa.0.4.extract.trunc.i37.i = trunc i64 %.sroa.0.4.extract.shift.i36.i to i8
  %i.su = trunc i64 %i.sq to i8
  %i.sv = trunc i64 %i.sr to i8
  %5 = trunc i64 %i.ss to i8
  %.sroa.0.0.extract.trunc.i35.i = trunc i64 %i.so to i8
  %6 = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i35.i, i64 0
  %7 = insertelement <8 x i8> %6, i8 %5, i64 1
  %i.sw = insertelement <8 x i8> %7, i8 %i.sv, i64 2
  %i.sx = insertelement <8 x i8> %i.sw, i8 %i.su, i64 3
  %i.sy = insertelement <8 x i8> %i.sx, i8 %.sroa.0.4.extract.trunc.i37.i, i64 4
  %i.sz = insertelement <8 x i8> %i.sy, i8 %.sroa.0.5.extract.trunc.i39.i, i64 5
  %i.ta = insertelement <8 x i8> %i.sz, i8 %.sroa.0.6.extract.trunc.i41.i, i64 6
  %i.tb = insertelement <8 x i8> %i.ta, i8 %i.st, i64 7
  %i.tc = and <8 x i8> %i.tb, splat (i8 15)
  %i.td = or disjoint <8 x i8> %i.tc, splat (i8 48)
  %i.te = shufflevector <8 x i8> %i.td, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.te, ptr %i.sn, align 1, !tbaa !80
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next55.i, 1200
  br i1 %exitcond57.not.i, label %bb.n, label %bb.m, !llvm.loop !82

bb.n:                                             ; preds = %bb.m
  %i.tf = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.tg = call i32 @fputs(ptr noundef nonnull %i.rl, ptr noundef %i.tf) #13 ; 0 uses
  %i.th = getelementptr inbounds nuw [9600 x i8], ptr %i.ar, i64 %indvars.iv62.i
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv58.i = phi i64 [ 0, %bb.n ], [ %indvars.iv.next59.i, %bb.o ] ; 3 uses
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv58.i
  %i.tj = shl nuw nsw i64 %indvars.iv58.i, 4
  %i.tk = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.tj
  %i.tl = load i64, ptr %i.ti, align 8, !tbaa !8  ; 8 uses
  %i.tm = lshr i64 %i.tl, 56
  %.sroa.0.6.extract.shift.i47.i = lshr i64 %i.tl, 48
  %.sroa.0.5.extract.shift.i45.i = lshr i64 %i.tl, 40
  %.sroa.0.4.extract.shift.i43.i = lshr i64 %i.tl, 32
  %i.tn = lshr i64 %i.tl, 24
  %i.to = lshr i64 %i.tl, 16
  %i.tp = lshr i64 %i.tl, 8
  %i.tq = trunc nuw i64 %i.tm to i8
  %.sroa.0.6.extract.trunc.i48.i = trunc i64 %.sroa.0.6.extract.shift.i47.i to i8
  %.sroa.0.5.extract.trunc.i46.i = trunc i64 %.sroa.0.5.extract.shift.i45.i to i8
  %.sroa.0.4.extract.trunc.i44.i = trunc i64 %.sroa.0.4.extract.shift.i43.i to i8
  %i.tr = trunc i64 %i.tn to i8
  %i.ts = trunc i64 %i.to to i8
  %8 = trunc i64 %i.tp to i8
  %.sroa.0.0.extract.trunc.i42.i = trunc i64 %i.tl to i8
  %9 = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i42.i, i64 0
  %10 = insertelement <8 x i8> %9, i8 %8, i64 1
  %i.tt = insertelement <8 x i8> %10, i8 %i.ts, i64 2
  %i.tu = insertelement <8 x i8> %i.tt, i8 %i.tr, i64 3
  %i.tv = insertelement <8 x i8> %i.tu, i8 %.sroa.0.4.extract.trunc.i44.i, i64 4
  %i.tw = insertelement <8 x i8> %i.tv, i8 %.sroa.0.5.extract.trunc.i46.i, i64 5
  %i.tx = insertelement <8 x i8> %i.tw, i8 %.sroa.0.6.extract.trunc.i48.i, i64 6
  %i.ty = insertelement <8 x i8> %i.tx, i8 %i.tq, i64 7
  %i.tz = and <8 x i8> %i.ty, splat (i8 15)
  %i.ua = or disjoint <8 x i8> %i.tz, splat (i8 48)
  %i.ub = shufflevector <8 x i8> %i.ua, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.ub, ptr %i.tk, align 1, !tbaa !80
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next59.i, 1200
  br i1 %exitcond61.not.i, label %bb.p, label %bb.o, !llvm.loop !83

bb.p:                                             ; preds = %bb.o
  %i.uc = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ud = call i32 @fputs(ptr noundef nonnull %i.rl, ptr noundef %i.uc) #13 ; 0 uses
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next63.i, 1000
  br i1 %exitcond65.not.i, label %print_array.exit, label %.preheader.i95, !llvm.loop !84

print_array.exit:                                 ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.rl) #12
  call void @free(ptr noundef %i.i) #12
  call void @free(ptr noundef %i.p) #12
  call void @free(ptr noundef %i.w) #12
  call void @free(ptr noundef nonnull %i.ad) #12
  call void @free(ptr noundef nonnull %i.ak) #12
  call void @free(ptr noundef nonnull %i.ar) #12
  call void @free(ptr noundef %i.ay) #12
  ret i32 0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind allocsize(0) }

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
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !15, !16}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15, !16, !17}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !15, !16, !17}
!27 = distinct !{!27, !15, !16}
!28 = distinct !{!28, !15}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !15, !16, !17}
!35 = distinct !{!35, !15, !16}
!36 = distinct !{!36, !15}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41, !42}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !39}
!43 = !{!41}
!44 = !{!42}
!45 = distinct !{!45, !15, !16, !17}
!46 = distinct !{!46, !15, !16}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15, !16, !17}
!50 = distinct !{!50, !15, !16}
!51 = distinct !{!51, !15, !16, !17}
!52 = !{!53}
!53 = distinct !{!53, !54}
!54 = distinct !{!54, !"LVerDomain"}
!55 = !{!56}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !15, !16, !17}
!58 = distinct !{!58, !15, !16}
!59 = distinct !{!59, !15}
!60 = !{!61}
!61 = distinct !{!61, !62}
!62 = distinct !{!62, !"LVerDomain"}
!63 = !{!64}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !15, !16, !17}
!66 = distinct !{!66, !15, !16}
!67 = distinct !{!67, !15}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = !{!72, !73}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !70}
!74 = !{!72}
!75 = !{!73}
!76 = distinct !{!76, !15, !16, !17}
!77 = distinct !{!77, !15, !16}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !15}
!80 = !{!6, !6, i64 0}
!81 = distinct !{!81, !15}
!82 = distinct !{!82, !15}
!83 = distinct !{!83, !15}
!84 = distinct !{!84, !15}
end_hunk_0
