inline.NumInlined: 20
inline.NumDeleted: 7
begin_hunk_0_@main:bb.a
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.nd ; 4 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %wide.load249 = load <2 x double>, ptr %i.ng, align 8, !tbaa !8, !alias.scope !63
  %wide.load250 = load <2 x double>, ptr %i.nh, align 8, !tbaa !8, !alias.scope !63
  %i.ni = getelementptr i8, ptr %i.ng, i64 -8
  %i.nj = getelementptr i8, ptr %i.ng, i64 8
  %wide.load251 = load <2 x double>, ptr %i.ni, align 8, !tbaa !8, !alias.scope !63
  %wide.load252 = load <2 x double>, ptr %i.nj, align 8, !tbaa !8, !alias.scope !63
  %i.nk = fsub <2 x double> %wide.load249, %wide.load251
  %i.nl = fsub <2 x double> %wide.load250, %wide.load252
  %i.nm = fmul <2 x double> %i.nk, splat (double 5.000000e-01)
  %i.nn = fmul <2 x double> %i.nl, splat (double 5.000000e-01)
  %i.no = fsub <2 x double> %wide.load247, %i.nm
  %i.np = fsub <2 x double> %wide.load248, %i.nn
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
  %i.rr = load i64, ptr %i.ro, align 8, !tbaa !8  ; 4 uses
  %i.rs = lshr i64 %i.rr, 56
  %i.rt = trunc nuw i64 %i.rs to i8
  %2 = insertelement <2 x i64> poison, i64 %i.rr, i64 0
  %3 = shufflevector <2 x i64> %2, <2 x i64> poison, <2 x i32> zeroinitializer
  %4 = lshr <2 x i64> %3, <i64 40, i64 48>
  %5 = trunc <2 x i64> %4 to <2 x i8>
  %6 = insertelement <4 x i64> poison, i64 %i.rr, i64 0
  %7 = shufflevector <4 x i64> %6, <4 x i64> poison, <4 x i32> zeroinitializer
  %8 = lshr <4 x i64> %7, <i64 8, i64 16, i64 24, i64 32>
  %9 = trunc <4 x i64> %8 to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.rr to i8
  %i.ru = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %10 = shufflevector <4 x i8> %9, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %11 = shufflevector <8 x i8> %i.ru, <8 x i8> %10, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %12 = shufflevector <2 x i8> %5, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <8 x i8> %11, <8 x i8> %12, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.rv = insertelement <8 x i8> %13, i8 %i.rt, i64 7
  %i.rw = and <8 x i8> %i.rv, splat (i8 15)
  %i.rx = or disjoint <8 x i8> %i.rw, splat (i8 48)
  %i.ry = shufflevector <8 x i8> %i.rx, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.ry, ptr %i.rq, align 1, !tbaa !80
  %indvars.iv.next.i97 = add nuw nsw i64 %indvars.iv.i96, 1 ; 2 uses
  %exitcond.not.i98 = icmp eq i64 %indvars.iv.next.i97, 1200
  br i1 %exitcond.not.i98, label %bb.l, label %bb.k, !llvm.loop !81

bb.l:                                             ; preds = %bb.k
  %i.rz = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.sa = call i32 @fputs(ptr noundef nonnull %i.rl, ptr noundef %i.rz) #13 ; 0 uses
  %i.sb = getelementptr inbounds nuw [9600 x i8], ptr %i.ak, i64 %indvars.iv62.i
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %indvars.iv54.i = phi i64 [ 0, %bb.l ], [ %indvars.iv.next55.i, %bb.m ] ; 3 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %indvars.iv54.i
  %i.sd = shl nuw nsw i64 %indvars.iv54.i, 4
  %i.se = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.sd
  %i.sf = load i64, ptr %i.sc, align 8, !tbaa !8  ; 4 uses
  %i.sg = lshr i64 %i.sf, 56
  %i.sh = trunc nuw i64 %i.sg to i8
  %14 = insertelement <2 x i64> poison, i64 %i.sf, i64 0
  %15 = shufflevector <2 x i64> %14, <2 x i64> poison, <2 x i32> zeroinitializer
  %16 = lshr <2 x i64> %15, <i64 40, i64 48>
  %17 = trunc <2 x i64> %16 to <2 x i8>
  %18 = insertelement <4 x i64> poison, i64 %i.sf, i64 0
  %19 = shufflevector <4 x i64> %18, <4 x i64> poison, <4 x i32> zeroinitializer
  %20 = lshr <4 x i64> %19, <i64 8, i64 16, i64 24, i64 32>
  %21 = trunc <4 x i64> %20 to <4 x i8>
  %.sroa.0.0.extract.trunc.i35.i = trunc i64 %i.sf to i8
  %i.si = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i35.i, i64 0
  %22 = shufflevector <4 x i8> %21, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <8 x i8> %i.si, <8 x i8> %22, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <2 x i8> %17, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %25 = shufflevector <8 x i8> %23, <8 x i8> %24, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.sj = insertelement <8 x i8> %25, i8 %i.sh, i64 7
  %i.sk = and <8 x i8> %i.sj, splat (i8 15)
  %i.sl = or disjoint <8 x i8> %i.sk, splat (i8 48)
  %i.sm = shufflevector <8 x i8> %i.sl, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.sm, ptr %i.se, align 1, !tbaa !80
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next55.i, 1200
  br i1 %exitcond57.not.i, label %bb.n, label %bb.m, !llvm.loop !82

bb.n:                                             ; preds = %bb.m
  %i.sn = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.so = call i32 @fputs(ptr noundef nonnull %i.rl, ptr noundef %i.sn) #13 ; 0 uses
  %i.sp = getelementptr inbounds nuw [9600 x i8], ptr %i.ar, i64 %indvars.iv62.i
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv58.i = phi i64 [ 0, %bb.n ], [ %indvars.iv.next59.i, %bb.o ] ; 3 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %indvars.iv58.i
  %i.sr = shl nuw nsw i64 %indvars.iv58.i, 4
  %i.ss = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.sr
  %i.st = load i64, ptr %i.sq, align 8, !tbaa !8  ; 4 uses
  %i.su = lshr i64 %i.st, 56
  %i.sv = trunc nuw i64 %i.su to i8
  %26 = insertelement <2 x i64> poison, i64 %i.st, i64 0
  %27 = shufflevector <2 x i64> %26, <2 x i64> poison, <2 x i32> zeroinitializer
  %28 = lshr <2 x i64> %27, <i64 40, i64 48>
  %29 = trunc <2 x i64> %28 to <2 x i8>
  %30 = insertelement <4 x i64> poison, i64 %i.st, i64 0
  %31 = shufflevector <4 x i64> %30, <4 x i64> poison, <4 x i32> zeroinitializer
  %32 = lshr <4 x i64> %31, <i64 8, i64 16, i64 24, i64 32>
  %33 = trunc <4 x i64> %32 to <4 x i8>
  %.sroa.0.0.extract.trunc.i42.i = trunc i64 %i.st to i8
  %i.sw = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i42.i, i64 0
  %34 = shufflevector <4 x i8> %33, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %35 = shufflevector <8 x i8> %i.sw, <8 x i8> %34, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %36 = shufflevector <2 x i8> %29, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %37 = shufflevector <8 x i8> %35, <8 x i8> %36, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.sx = insertelement <8 x i8> %37, i8 %i.sv, i64 7
  %i.sy = and <8 x i8> %i.sx, splat (i8 15)
  %i.sz = or disjoint <8 x i8> %i.sy, splat (i8 48)
  %i.ta = shufflevector <8 x i8> %i.sz, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.ta, ptr %i.ss, align 1, !tbaa !80
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next59.i, 1200
  br i1 %exitcond61.not.i, label %bb.p, label %bb.o, !llvm.loop !83

bb.p:                                             ; preds = %bb.o
  %i.tb = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.tc = call i32 @fputs(ptr noundef nonnull %i.rl, ptr noundef %i.tb) #13 ; 0 uses
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
