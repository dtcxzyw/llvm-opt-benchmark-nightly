inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@generate_window_func:bb.a
  %exitcond515.not = icmp eq i64 %indvars.iv.next512, %wide.trip.count514
  br i1 %exitcond515.not, label %._crit_edge451, label %scalar.ph659, !llvm.loop !96

scalar.ph645:                                     ; preds = %scalar.ph645.preheader, %scalar.ph645
  %indvars.iv506 = phi i64 [ %indvars.iv.next507, %scalar.ph645 ], [ %indvars.iv506.ph, %scalar.ph645.preheader ] ; 3 uses
  %i.ni = trunc nuw nsw i64 %indvars.iv506 to i32
  %i.nj = uitofp nneg i32 %i.ni to double         ; 2 uses
  %i.nk = insertelement <2 x double> poison, double %i.nj, i64 0
  %i.nl = shufflevector <2 x double> %i.nk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nm = fmul nnan nsz <2 x double> %i.nl, <double f0x401921FB54442D18, double f0x402921FB54442D18>
  %i.nn = fdiv nsz <2 x double> %i.nm, %i.dp      ; 2 uses
  %i.no = extractelement <2 x double> %i.nn, i64 0
  %i.np = tail call nsz double @llvm.cos.f64(double %i.no)
  %i.nq = tail call nsz double @llvm.fmuladd.f64(double %i.np, double f0xBFDF4EAF251C193B, double f0x3FD744ED047AB904)
  %i.nr = extractelement <2 x double> %i.nn, i64 1
  %i.ns = tail call nsz double @llvm.cos.f64(double %i.nr)
  %i.nt = tail call nsz double @llvm.fmuladd.f64(double %i.ns, double f0x3FC17C17A89331A1, double %i.nq)
  %i.nu = fmul nnan nsz double %i.nj, f0x4032D97C7F3321D2
  %i.nv = fdiv nsz double %i.nu, %i.cx
  %i.nw = tail call nsz double @llvm.cos.f64(double %i.nv)
  %i.nx = tail call nsz double @llvm.fmuladd.f64(double %i.nw, double -1.064110e-02, double %i.nt)
  %i.ny = fptrunc nsz double %i.nx to float
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv506
  store float %i.ny, ptr %i.nz, align 4, !tbaa !49
  %indvars.iv.next507 = add nuw nsw i64 %indvars.iv506, 1 ; 2 uses
  %exitcond510.not = icmp eq i64 %indvars.iv.next507, %wide.trip.count509
  br i1 %exitcond510.not, label %._crit_edge451, label %scalar.ph645, !llvm.loop !97

scalar.ph631:                                     ; preds = %scalar.ph631.preheader, %scalar.ph631
  %indvars.iv501 = phi i64 [ %indvars.iv.next502, %scalar.ph631 ], [ %indvars.iv501.ph, %scalar.ph631.preheader ] ; 3 uses
  %i.oa = trunc nuw nsw i64 %indvars.iv501 to i32
  %i.ob = uitofp nneg i32 %i.oa to double
  %i.oc = insertelement <2 x double> poison, double %i.ob, i64 0
  %i.od = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oe = fmul nnan nsz <2 x double> %i.od, <double 1.000000e+00, double f0x401921FB54442D18>
  %i.of = fdiv nsz <2 x double> %i.oe, %i.cu      ; 2 uses
  %i.og = extractelement <2 x double> %i.of, i64 0
  %i.oh = fadd nsz double %i.og, -5.000000e-01
  %i.oi = tail call nsz double @llvm.fabs.f64(double %i.oh)
  %i.oj = tail call nsz double @llvm.fmuladd.f64(double %i.oi, double -4.800000e-01, double 6.200000e-01)
  %i.ok = extractelement <2 x double> %i.of, i64 1
  %i.ol = tail call nsz double @llvm.cos.f64(double %i.ok)
  %i.om = tail call nsz double @llvm.fmuladd.f64(double %i.ol, double -3.800000e-01, double %i.oj)
  %i.on = fptrunc nsz double %i.om to float
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv501
  store float %i.on, ptr %i.oo, align 4, !tbaa !49
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, 1 ; 2 uses
  %exitcond505.not = icmp eq i64 %indvars.iv.next502, %wide.trip.count504
  br i1 %exitcond505.not, label %._crit_edge451, label %scalar.ph631, !llvm.loop !98

scalar.ph617:                                     ; preds = %scalar.ph617.preheader, %scalar.ph617
  %indvars.iv496 = phi i64 [ %indvars.iv.next497, %scalar.ph617 ], [ %indvars.iv496.ph, %scalar.ph617.preheader ] ; 3 uses
  %i.op = trunc nuw nsw i64 %indvars.iv496 to i32
  %i.oq = uitofp nneg i32 %i.op to double
  %i.or = fmul nnan nsz double %i.oq, f0x400921FB54442D18
  %i.os = fdiv nsz double %i.or, %i.bw
  %i.ot = tail call nsz double @llvm.sin.f64(double %i.os)
  %i.ou = fptrunc nsz double %i.ot to float
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv496
  store float %i.ou, ptr %i.ov, align 4, !tbaa !49
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %exitcond500.not = icmp eq i64 %indvars.iv.next497, %wide.trip.count499
  br i1 %exitcond500.not, label %._crit_edge451, label %scalar.ph617, !llvm.loop !99

scalar.ph603:                                     ; preds = %scalar.ph603.preheader, %scalar.ph603
  %indvars.iv491 = phi i64 [ %indvars.iv.next492, %scalar.ph603 ], [ %indvars.iv491.ph, %scalar.ph603.preheader ] ; 3 uses
  %i.ow = trunc nuw nsw i64 %indvars.iv491 to i32
  %i.ox = uitofp nneg i32 %i.ow to double         ; 2 uses
  %i.oy = insertelement <2 x double> poison, double %i.ox, i64 0
  %i.oz = shufflevector <2 x double> %i.oy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pa = fmul nnan nsz <2 x double> %i.oz, <double f0x401921FB54442D18, double f0x402921FB54442D18>
  %i.pb = fdiv nsz <2 x double> %i.pa, %i.bt      ; 2 uses
  %i.pc = extractelement <2 x double> %i.pb, i64 0
  %i.pd = tail call nsz double @llvm.cos.f64(double %i.pc)
  %i.pe = tail call nsz double @llvm.fmuladd.f64(double %i.pd, double -4.873960e-01, double 3.557680e-01)
  %i.pf = extractelement <2 x double> %i.pb, i64 1
  %i.pg = tail call nsz double @llvm.cos.f64(double %i.pf)
  %i.ph = tail call nsz double @llvm.fmuladd.f64(double %i.pg, double 1.442320e-01, double %i.pe)
  %i.pi = fmul nnan nsz double %i.ox, f0x4032D97C7F3321D2
  %i.pj = fdiv nsz double %i.pi, %i.bb
  %i.pk = tail call nsz double @llvm.cos.f64(double %i.pj)
  %i.pl = tail call nsz double @llvm.fmuladd.f64(double %i.pk, double -1.260400e-02, double %i.ph)
  %i.pm = fptrunc nsz double %i.pl to float
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv491
  store float %i.pm, ptr %i.pn, align 4, !tbaa !49
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %exitcond495.not = icmp eq i64 %indvars.iv.next492, %wide.trip.count494
  br i1 %exitcond495.not, label %._crit_edge451, label %scalar.ph603, !llvm.loop !100

bb.b:                                             ; preds = %.lr.ph414, %bb.d
  %indvars.iv486 = phi i64 [ 0, %.lr.ph414 ], [ %indvars.iv.next487, %bb.d ] ; 3 uses
  %indvars.iv486.tr = trunc i64 %indvars.iv486 to i32
  %i.po = shl i32 %indvars.iv486.tr, 1
  %i.pp = uitofp i32 %i.po to double
  %i.pq = fdiv nsz double %i.pp, %i.ay
  %i.pr = fadd nsz double %i.pq, -1.000000e+00    ; 2 uses
  %i.ps = fcmp nsz une double %i.pr, 0.000000e+00
  br i1 %i.ps, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.pt = fmul nsz double %i.pr, f0x400921FB54442D18 ; 2 uses
  %i.pu = tail call nsz double @llvm.sin.f64(double %i.pt)
  %i.pv = fdiv nsz double %i.pu, %i.pt
  %i.pw = fptrunc nsz double %i.pv to float
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.px = phi float [ %i.pw, %bb.c ], [ 1.000000e+00, %bb.b ]
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv486
  store float %i.px, ptr %i.py, align 4, !tbaa !49
  %indvars.iv.next487 = add nuw nsw i64 %indvars.iv486, 1 ; 2 uses
  %exitcond490.not = icmp eq i64 %indvars.iv.next487, %wide.trip.count489
  br i1 %exitcond490.not, label %._crit_edge451, label %bb.b, !llvm.loop !101

scalar.ph587:                                     ; preds = %scalar.ph587.preheader, %scalar.ph587
  %indvars.iv481 = phi i64 [ %indvars.iv.next482, %scalar.ph587 ], [ %indvars.iv481.ph, %scalar.ph587.preheader ] ; 3 uses
  %i.pz = trunc nuw nsw i64 %indvars.iv481 to i32
  %i.qa = sub i32 %i.pz, %.neg560566
  %i.qb = sitofp nsz i32 %i.qa to double
  %i.qc = fdiv nsz double %i.qb, %i.am            ; 2 uses
  %i.qd = fmul nsz double %i.qc, %i.qc
  %i.qe = fmul nsz double %i.qd, -5.000000e-01
  %i.qf = tail call nsz double @llvm.exp.f64(double %i.qe)
  %i.qg = fptrunc nsz double %i.qf to float
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv481
  store float %i.qg, ptr %i.qh, align 4, !tbaa !49
  %indvars.iv.next482 = add nuw nsw i64 %indvars.iv481, 1 ; 2 uses
  %exitcond485.not = icmp eq i64 %indvars.iv.next482, %wide.trip.count484
  br i1 %exitcond485.not, label %._crit_edge451, label %scalar.ph587, !llvm.loop !102

bb.e:                                             ; preds = %.lr.ph408, %bb.g
  %indvars.iv476 = phi i64 [ 0, %.lr.ph408 ], [ %indvars.iv.next477, %bb.g ] ; 3 uses
  %i.qi = trunc nuw nsw i64 %indvars.iv476 to i32
  %i.qj = uitofp nneg i32 %i.qi to float
  %i.qk = fsub nsz float %i.qj, %i.ae
  %i.ql = tail call nsz float @llvm.fabs.f32(float %i.qk)
  %i.qm = fpext nsz float %i.ql to double         ; 2 uses
  %i.qn = fcmp nsz ugt double %i.ag, %i.qm
  br i1 %i.qn, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.qo = tail call nsz double @llvm.fmuladd.f64(double %i.af, double -3.000000e-01, double %i.qm)
  %i.qp = fmul nsz double %i.qo, f0x400921FB54442D18
  %i.qq = fdiv nsz double %i.qp, %i.ah
  %i.qr = tail call nsz double @llvm.cos.f64(double %i.qq)
  %i.qs = fadd nsz double %i.qr, 1.000000e+00
  %i.qt = fmul nsz double %i.qs, 5.000000e-01
  %i.qu = fptrunc nsz double %i.qt to float
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi float [ %i.qu, %bb.f ], [ 1.000000e+00, %bb.e ]
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv476
  store float %.sink, ptr %i.qv, align 4, !tbaa !49
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %exitcond480.not = icmp eq i64 %indvars.iv.next477, %wide.trip.count479
  br i1 %exitcond480.not, label %._crit_edge451, label %bb.e, !llvm.loop !103

bb.h:                                             ; preds = %bb.a
  %i.qw = add nsw i32 %1, -1                      ; 3 uses
  %i.qx = sitofp nsz i32 %i.qw to double
  %i.qy = fdiv nsz double f0x401E6752E8A84ED4, %i.qx
  %i.qz = tail call nsz double @llvm.cosh.f64(double %i.qy) ; 2 uses
  %i.ra = fmul nnan nsz double %i.qz, %i.qz
  %i.rb = fdiv nnan nsz double 1.000000e+00, %i.ra
  %i.rc = fsub nnan nsz double 1.000000e+00, %i.rb
  %i.rd = icmp sgt i32 %1, -1
  br i1 %i.rd, label %.lr.ph405.preheader, label %._crit_edge451

.lr.ph405.preheader:                              ; preds = %bb.h
  %i.re = sdiv i32 %i.qw, 2
  %i.rf = zext nneg i32 %i.re to i64
  %i.rg = sext i32 %i.qw to i64
  br label %.lr.ph405

.lr.ph405:                                        ; preds = %.lr.ph405.preheader, %._crit_edge401
  %indvars.iv473 = phi i64 [ %i.rf, %.lr.ph405.preheader ], [ %indvars.iv.next474, %._crit_edge401 ] ; 7 uses
  %.0328402 = phi double [ 0.000000e+00, %.lr.ph405.preheader ], [ %i.sh, %._crit_edge401 ] ; 2 uses
  %i.rh = icmp eq i64 %indvars.iv473, 0
  %i.ri = uitofp i1 %i.rh to double               ; 2 uses
  %.not = icmp eq i64 %indvars.iv473, 0           ; 2 uses
  br i1 %.not, label %._crit_edge401, label %.lr.ph400

.lr.ph400:                                        ; preds = %.lr.ph405
  %i.rj = trunc nsw i64 %indvars.iv473 to i32     ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph400, %bb.i
  %.0327398 = phi i32 [ 1, %.lr.ph400 ], [ %i.rx, %bb.i ] ; 5 uses
  %.0330397 = phi double [ %i.ri, %.lr.ph400 ], [ %i.rs, %bb.i ] ; 2 uses
  %.0331396 = phi double [ 1.000000e+00, %.lr.ph400 ], [ %i.rw, %bb.i ]
  %i.rk = add nuw nsw i32 %.0327398, %i.rj
  %i.rl = sub i32 %1, %i.rk
  %i.rm = sitofp nsz i32 %i.rl to double
  %i.rn = fmul nsz double %i.rc, %i.rm
  %i.ro = uitofp nneg i32 %.0327398 to double
  %i.rp = fdiv nsz double 1.000000e+00, %i.ro     ; 2 uses
  %i.rq = fmul nsz double %i.rp, %i.rn
  %i.rr = fmul nsz double %.0331396, %i.rq        ; 2 uses
  %i.rs = fadd nsz double %.0330397, %i.rr        ; 3 uses
  %i.rt = sub nsw i32 %i.rj, %.0327398
  %i.ru = sitofp nsz i32 %i.rt to double
  %i.rv = fmul nsz double %i.rp, %i.ru
  %i.rw = fmul nsz double %i.rv, %i.rr
  %i.rx = add nuw nsw i32 %.0327398, 1
  %i.ry = zext nneg i32 %.0327398 to i64
  %i.rz = icmp samesign ugt i64 %indvars.iv473, %i.ry
  %i.sa = fcmp nsz une double %i.rs, %.0330397
  %i.sb = select i1 %i.rz, i1 %i.sa, i1 false
  br i1 %i.sb, label %bb.i, label %._crit_edge401, !llvm.loop !104

._crit_edge401:                                   ; preds = %bb.i, %.lr.ph405
  %.0330.lcssa = phi double [ %i.ri, %.lr.ph405 ], [ %i.rs, %bb.i ]
  %i.sc = sub nsw i64 %i.rg, %indvars.iv473       ; 2 uses
  %i.sd = trunc nsw i64 %i.sc to i32
  %i.se = sitofp nsz i32 %i.sd to double
  %i.sf = fdiv nsz double %.0330.lcssa, %i.se     ; 2 uses
  %i.sg = fcmp nsz une double %.0328402, 0.000000e+00
  %i.sh = select nsz i1 %i.sg, double %.0328402, double %i.sf ; 2 uses
  %i.si = fdiv nsz double %i.sf, %i.sh
  %i.sj = fptrunc nsz double %i.si to float       ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv473
  store float %i.sj, ptr %i.sk, align 4, !tbaa !49
  %i.sl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.sc
  store float %i.sj, ptr %i.sl, align 4, !tbaa !49
  %indvars.iv.next474 = add nsw i64 %indvars.iv473, -1
  br i1 %.not, label %._crit_edge451, label %.lr.ph405, !llvm.loop !105

bb.j:                                             ; preds = %.lr.ph394, %bb.l
  %indvars.iv468 = phi i64 [ 0, %.lr.ph394 ], [ %indvars.iv.next469, %bb.l ] ; 3 uses
  %i.sm = trunc nuw nsw i64 %indvars.iv468 to i32
  %i.sn = uitofp nneg i32 %i.sm to double
  %i.so = fdiv nsz double %i.sn, %i.z
  %i.sp = fadd nsz double %i.so, -5.000000e-01
  %i.sq = fmul nsz double %i.sp, 2.000000e+00     ; 3 uses
  %i.sr = tail call nsz double @llvm.fabs.f64(double %i.sq)
  %or.cond = fcmp nsz ult double %i.sr, 5.000000e-01
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ss = fmul nsz double %i.sq, 6.400000e+01
  %i.st = tail call nsz double @llvm.fmuladd.f64(double %i.ss, double %i.sq, double 1.000000e+00)
  %i.su = fdiv nsz double 1.000000e+00, %i.st     ; 2 uses
  %i.sv = tail call nsz double @llvm.fabs.f64(double %i.su)
  %i.sw = fcmp nsz olt double %i.sv, 1.000000e+00
  %i.sx = fptrunc double %i.su to float
  %i.sy = tail call nsz float @llvm.fabs.f32(float %i.sx)
  %i.sz = select i1 %i.sw, float %i.sy, float 1.000000e+00
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sink551 = phi float [ %i.sz, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv468
  store float %.sink551, ptr %i.ta, align 4, !tbaa !49
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next469, %wide.trip.count471
  br i1 %exitcond472.not, label %._crit_edge451, label %bb.j, !llvm.loop !106

bb.m:                                             ; preds = %.lr.ph391, %bb.u
  %indvars.iv463 = phi i64 [ 0, %.lr.ph391 ], [ %indvars.iv.next464, %bb.u ] ; 3 uses
  %i.tb = trunc nuw nsw i64 %indvars.iv463 to i32
  %i.tc = uitofp nneg i32 %i.tb to double
  %i.td = fdiv nsz double %i.tc, %i.w
  %i.te = fadd nsz double %i.td, -5.000000e-01
  %i.tf = fmul nsz double %i.te, 2.000000e+00     ; 20 uses
  %i.tg = fcmp nsz ogt double %i.tf, 2.500000e-01
  %i.th = fcmp nsz ole double %i.tf, 5.000000e-01
  %or.cond3 = and i1 %i.tg, %i.th
  br i1 %or.cond3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ti = tail call nsz double @llvm.fmuladd.f64(double %i.tf, double 2.000000e+00, double -1.000000e+00)
  %i.tj = fptrunc nsz double %i.ti to float
  %i.tk = tail call nsz float @llvm.pow.f32(float %i.tj, float 3.000000e+00)
  %i.tl = fmul nsz float %i.tk, -2.000000e+00
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.tm = fcmp nsz oge double %i.tf, -5.000000e-01
  %i.tn = fcmp nsz olt double %i.tf, -2.500000e-01
  %or.cond5 = and i1 %i.tm, %i.tn
  br i1 %or.cond5, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.to = tail call nsz double @llvm.fmuladd.f64(double %i.tf, double 2.000000e+00, double 1.000000e+00)
  %i.tp = fptrunc nsz double %i.to to float
  %i.tq = tail call nsz float @llvm.pow.f32(float %i.tp, float 3.000000e+00)
  %i.tr = fmul nsz float %i.tq, 2.000000e+00
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.ts = fcmp nsz oge double %i.tf, -2.500000e-01
  %i.tt = fcmp nsz olt double %i.tf, 0.000000e+00
  %or.cond7 = and i1 %i.ts, %i.tt
  br i1 %or.cond7, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.tu = fmul nnan nsz double %i.tf, -2.400000e+01
  %i.tv = tail call nsz double @llvm.fmuladd.f64(double %i.tu, double %i.tf, double 1.000000e+00)
  %i.tw = fmul nnan nsz double %i.tf, 4.800000e+01
  %i.tx = fneg nsz double %i.tf
  %i.ty = fmul nnan nsz double %i.tw, %i.tx
  %i.tz = tail call nsz double @llvm.fmuladd.f64(double %i.ty, double %i.tf, double %i.tv)
  %i.ua = fptrunc nsz double %i.tz to float
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.ub = fcmp nsz oge double %i.tf, 0.000000e+00
  %i.uc = fcmp nsz ole double %i.tf, 2.500000e-01
  %or.cond9 = and i1 %i.ub, %i.uc
  br i1 %or.cond9, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ud = fmul nnan nsz double %i.tf, -2.400000e+01
  %i.ue = tail call nsz double @llvm.fmuladd.f64(double %i.ud, double %i.tf, double 1.000000e+00)
  %i.uf = fmul nnan nsz double %i.tf, 4.800000e+01
  %i.ug = fmul nsz double %i.tf, %i.uf
  %i.uh = tail call nsz double @llvm.fmuladd.f64(double %i.ug, double %i.tf, double %i.ue)
  %i.ui = fptrunc nsz double %i.uh to float
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.p, %bb.t, %bb.r, %bb.n
  %.sink561 = phi float [ %i.tr, %bb.p ], [ %i.ui, %bb.t ], [ %i.tl, %bb.n ], [ %i.ua, %bb.r ], [ 0.000000e+00, %bb.s ]
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv463
  store float %.sink561, ptr %i.uj, align 4, !tbaa !49
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %exitcond467.not = icmp eq i64 %indvars.iv.next464, %wide.trip.count466
  br i1 %exitcond467.not, label %._crit_edge451, label %bb.m, !llvm.loop !107

bb.v:                                             ; preds = %.lr.ph388, %bb.z
  %indvars.iv458 = phi i64 [ 0, %.lr.ph388 ], [ %indvars.iv.next459, %bb.z ] ; 3 uses
  %i.uk = trunc nuw nsw i64 %indvars.iv458 to i32
  %i.ul = uitofp nneg i32 %i.uk to double
  %i.um = fdiv nsz double %i.ul, %i.t
  %i.un = fadd nsz double %i.um, -5.000000e-01
  %i.uo = fmul nsz double %i.un, 2.000000e+00     ; 6 uses
  %i.up = fcmp nsz oge double %i.uo, 0.000000e+00
  %i.uq = fcmp nsz ole double %i.uo, 5.000000e-01
  %or.cond11 = and i1 %i.up, %i.uq
  br i1 %or.cond11, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ur = fmul nnan nsz double %i.uo, -6.000000e+00
  %i.us = tail call nsz double @llvm.exp.f64(double %i.ur)
  %i.ut = fptrunc nsz double %i.us to float
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.uu = fcmp nsz olt double %i.uo, 0.000000e+00
  %i.uv = fcmp nsz oge double %i.uo, -5.000000e-01
  %or.cond13 = and i1 %i.uu, %i.uv
  br i1 %or.cond13, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.uw = fmul nnan nsz double %i.uo, 6.000000e+00
  %i.ux = tail call nsz double @llvm.exp.f64(double %i.uw)
  %i.uy = fptrunc nsz double %i.ux to float
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  %.sink563 = phi float [ %i.uy, %bb.y ], [ %i.ut, %bb.w ], [ 0.000000e+00, %bb.x ]
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv458
  store float %.sink563, ptr %i.uz, align 4, !tbaa !49
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvars.iv.next459, %wide.trip.count461
  br i1 %exitcond462.not, label %._crit_edge451, label %bb.v, !llvm.loop !108

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv453 = phi i64 [ %indvars.iv.next454, %scalar.ph ], [ %indvars.iv453.ph, %scalar.ph.preheader ] ; 3 uses
  %i.va = trunc nuw nsw i64 %indvars.iv453 to i32
  %i.vb = uitofp nneg i32 %i.va to double
  %i.vc = fdiv nsz double %i.vb, %i.c
  %i.vd = tail call nsz double @llvm.fmuladd.f64(double %i.vc, double 2.000000e+00, double -1.000000e+00)
  %i.ve = tail call nsz double @llvm.fabs.f64(double %i.vd) ; 2 uses
  %i.vf = fsub nsz double 1.000000e+00, %i.ve
  %i.vg = fmul nsz double %i.ve, f0x400921FB54442D18
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.vg) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  %i.vh = fmul nsz double %sin, f0x3FD45F306DC9C883
  %i.vi = tail call nsz double @llvm.fmuladd.f64(double %i.vf, double %cos, double %i.vh)
  %i.vj = fptrunc nsz double %i.vi to float
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv453
  store float %i.vj, ptr %i.vk, align 4, !tbaa !49
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, 1 ; 2 uses
  %exitcond457.not = icmp eq i64 %indvars.iv.next454, %wide.trip.count456
  br i1 %exitcond457.not, label %._crit_edge451, label %scalar.ph, !llvm.loop !109

bb.aa:                                            ; preds = %bb.a
  %i.vl = tail call nsz double @av_bessel_i0(double noundef 1.200000e+01) #9
  %i.vm = fdiv nsz double 1.000000e+00, %i.vl
  %i.vn = icmp sgt i32 %1, 0
  br i1 %i.vn, label %.lr.ph, label %._crit_edge451

.lr.ph:                                           ; preds = %bb.aa
  %i.vo = add nsw i32 %1, -1
  %i.vp = uitofp nneg i32 %i.vo to double
  %i.vq = fdiv nsz double 2.000000e+00, %i.vp
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.ab

end_hunk_0
begin_hunk_1_@config_eq_output:bb.a
  %i.am = phi i32 [ %.pre, %._crit_edge299 ], [ %i.aj, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.f, align 4, !tbaa !53  ; 2 uses
  %.not224 = icmp ne i32 %i.an, %i.am
  %i.ao = icmp slt i32 %i.an, 2
  %or.cond = or i1 %i.ao, %.not224
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.84) #9
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !115
  %i.ar = sitofp nsz i32 %i.aq to float
  %i.as = fmul nnan nsz float %i.ar, 5.000000e-01 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !57
  %i.av = zext nneg i32 %i.am to i64              ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.au, i64 %i.av ; 2 uses
  store float %i.as, ptr %i.aw, align 4, !tbaa !49
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !64
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %i.av ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !49
  store float %i.bb, ptr %i.az, align 4, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 6 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !20 ; 2 uses
  %i.be = shl i32 %i.bd, 1                        ; 9 uses
  %i.bf = getelementptr i8, ptr %i.aw, i64 -4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !49 ; 2 uses
  %i.bh = fcmp nsz ogt float %i.as, %i.bg
  %. = select nsz i1 %i.bh, float %i.bg, float %i.as
  %i.bi = sitofp nsz i32 %i.be to float           ; 5 uses
  %i.bj = fdiv nsz float %., %i.bi                ; 2 uses
  %i.bk = zext i32 %i.be to i64
  %i.bl = tail call i64 @av_cpu_max_align() #9
  %i.bm = add nuw nsw i64 %i.bk, 4294967295
  %i.bn = add i64 %i.bm, %i.bl
  %i.bo = tail call i64 @av_cpu_max_align() #9
  %i.bp = sub i64 0, %i.bo
  %i.bq = and i64 %i.bn, %i.bp                    ; 7 uses
  %i.br = trunc i64 %i.bq to i32                  ; 3 uses
  %i.bs = shl nsw i32 %i.br, 1
  %i.bt = sext i32 %i.bs to i64
  %i.bu = tail call noalias ptr @av_calloc(i64 noundef %i.bt, i64 noundef 8) #9 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 7 uses
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !61
  %.not225 = icmp eq ptr %i.bu, null
  br i1 %.not225, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !49
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 4 uses
  %i.by = call i32 @av_tx_init(ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bx, i32 noundef 0, i32 noundef 1, i32 noundef %i.be, ptr noundef nonnull %i.a, i64 noundef 0) #9 ; 2 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = load i32, ptr %i.bc, align 8, !tbaa !20
  %i.cb = sext i32 %i.ca to i64
  %i.cc = call noalias ptr @av_calloc(i64 noundef %i.cb, i64 noundef 4) #9 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 3 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !34
  %.not226 = icmp eq ptr %i.cc, null
  br i1 %.not226, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !61 ; 6 uses
  %i.cf = load ptr, ptr %i.at, align 8, !tbaa !57 ; 6 uses
  %i.cg = load ptr, ptr %i.ax, align 8, !tbaa !64 ; 7 uses
  %i.ch = load i32, ptr %i.bc, align 8, !tbaa !20 ; 4 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.critedge.preheader.lr.ph.i, label %eq_interp.exit

.critedge.preheader.lr.ph.i:                      ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !116
  %i.cl = load i32, ptr %i.f, align 4, !tbaa !53  ; 3 uses
  %i.cm = icmp eq i32 %i.ck, 0
  %i.cn = add nsw i32 %i.ch, -1
  %i.co = shl nuw nsw i32 %i.ch, 1
  %smax158.i = call i32 @llvm.smax.i32(i32 %i.cl, i32 0)
  %i.cp = zext nneg i32 %i.co to i64
  %wide.trip.count164.i = zext nneg i32 %i.ch to i64 ; 2 uses
  %wide.trip.count159.i = zext nneg i32 %smax158.i to i64 ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.ce, i64 %i.cp ; 2 uses
  br i1 %i.cm, label %.critedge.preheader.us.i.preheader, label %.critedge.preheader.i.preheader

.critedge.preheader.i.preheader:                  ; preds = %.critedge.preheader.lr.ph.i
  %exitcond.not.i342 = icmp slt i32 %i.cl, 1
  br label %.critedge.preheader.i

.critedge.preheader.us.i.preheader:               ; preds = %.critedge.preheader.lr.ph.i
  %exitcond160.not.i345 = icmp slt i32 %i.cl, 1
  br label %.critedge.preheader.us.i

.critedge.preheader.us.i:                         ; preds = %.critedge.preheader.us.i.preheader, %.loopexit.us.i
  %indvars.iv161.i = phi i64 [ %indvars.iv.next162.i, %.loopexit.us.i ], [ 0, %.critedge.preheader.us.i.preheader ] ; 4 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv161.i to i32
  %i.cs = uitofp nneg i32 %i.cr to float
  %i.ct = fmul nsz float %i.bj, %i.cs             ; 3 uses
  br i1 %exitcond160.not.i345, label %.loopexit.us.i, label %.lr.ph347

.critedge.us.i:                                   ; preds = %.lr.ph347
  %exitcond160.not.i = icmp eq i64 %indvars.iv.next156.i, %wide.trip.count159.i
  br i1 %exitcond160.not.i, label %.loopexit.us.i, label %.lr.ph347, !llvm.loop !117

.lr.ph347:                                        ; preds = %.critedge.preheader.us.i, %.critedge.us.i
  %indvars.iv155.i346 = phi i64 [ %indvars.iv.next156.i, %.critedge.us.i ], [ 0, %.critedge.preheader.us.i ] ; 3 uses
  %indvars.iv.next156.i = add nuw nsw i64 %indvars.iv155.i346, 1 ; 4 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next156.i
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !49 ; 3 uses
  %i.cw = fcmp nsz ugt float %i.ct, %i.cv
  br i1 %i.cw, label %.critedge.us.i, label %bb.n, !llvm.loop !117

bb.n:                                             ; preds = %.lr.ph347
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv155.i346
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !49 ; 2 uses
  %i.cz = fsub nsz float %i.ct, %i.cy             ; 2 uses
  %i.da = fsub nsz float %i.cv, %i.ct             ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv155.i346
  %i.dc = load float, ptr %i.db, align 4, !tbaa !49 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next156.i
  %i.de = load float, ptr %i.dd, align 4, !tbaa !49 ; 2 uses
  %i.df = fcmp nsz une float %i.cz, 0.000000e+00  ; 2 uses
  %i.dg = fcmp nsz une float %i.da, 0.000000e+00
  %or.cond.us.i = and i1 %i.dg, %i.df
  br i1 %or.cond.us.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %..us.i = select nsz i1 %i.df, float %i.de, float %i.dc
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dh = fsub nsz float %i.cv, %i.cy
  %i.di = fmul nsz float %i.da, %i.dc
  %i.dj = call nsz float @llvm.fmuladd.f32(float %i.cz, float %i.de, float %i.di)
  %i.dk = fdiv nsz float %i.dj, %i.dh
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.us.i = phi nsz float [ %i.dk, %bb.p ], [ %..us.i, %bb.o ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv161.i ; 2 uses
  store float %.1.us.i, ptr %i.dl, align 4, !tbaa !68
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store float 0.000000e+00, ptr %i.dm, align 4, !tbaa !112
  %i.dn = xor i64 %indvars.iv161.i, -1
  %i.do = getelementptr [8 x i8], ptr %i.cq, i64 %i.dn ; 2 uses
  store float %.1.us.i, ptr %i.do, align 4, !tbaa !68
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store float 0.000000e+00, ptr %i.dp, align 4, !tbaa !112
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.critedge.us.i, %.critedge.preheader.us.i, %bb.q
  %indvars.iv.next162.i = add nuw nsw i64 %indvars.iv161.i, 1 ; 2 uses
  %exitcond165.not.i = icmp eq i64 %indvars.iv.next162.i, %wide.trip.count164.i
  br i1 %exitcond165.not.i, label %eq_interp.exit, label %.critedge.preheader.us.i, !llvm.loop !118

.critedge.preheader.i:                            ; preds = %.critedge.preheader.i.preheader, %.loopexit.i
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i, %.loopexit.i ], [ 0, %.critedge.preheader.i.preheader ] ; 4 uses
  %i.dq = trunc nuw nsw i64 %indvars.iv150.i to i32
  %i.dr = uitofp nneg i32 %i.dq to float
  %i.ds = fmul nsz float %i.bj, %i.dr             ; 3 uses
  br i1 %exitcond.not.i342, label %.loopexit.i, label %.lr.ph344

.critedge.i:                                      ; preds = %.lr.ph344
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count159.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph344, !llvm.loop !117

.lr.ph344:                                        ; preds = %.critedge.preheader.i, %.critedge.i
  %indvars.iv.i343 = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ 0, %.critedge.preheader.i ] ; 8 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i343, 1 ; 4 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i
  %i.du = load float, ptr %i.dt, align 4, !tbaa !49 ; 3 uses
  %i.dv = fcmp nsz ugt float %i.ds, %i.du
  br i1 %i.dv, label %.critedge.i, label %bb.r, !llvm.loop !117

bb.r:                                             ; preds = %.lr.ph344
  %i.dw = trunc nuw nsw i64 %indvars.iv.i343 to i32
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i343
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !49 ; 4 uses
  %i.dz = fcmp nsz ugt float %i.ds, %i.dy
  br i1 %i.dz, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i343
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !49
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.ec = fsub nsz float %i.du, %i.dy             ; 3 uses
  %.not.i = icmp eq i64 %indvars.iv.i343, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i343
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !49 ; 5 uses
  br i1 %.not.i, label %._crit_edge166.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %1 = shl i64 %indvars.iv.i343, 32
  %sext.i = add i64 %1, -4294967296
  %2 = ashr exact i64 %sext.i, 32                 ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %2
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !49
  %i.ef = fsub nsz float %.pre.i, %i.ee
  %i.eg = fmul nsz float %i.ec, %i.ef
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %2
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !49
  %i.ej = fsub nsz float %i.dy, %i.ei
  %i.ek = fdiv nsz float %i.eg, %i.ej
  br label %._crit_edge166.i

._crit_edge166.i:                                 ; preds = %bb.u, %bb.t
  %i.el = phi nsz float [ %i.ek, %bb.u ], [ 0.000000e+00, %bb.t ] ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next.i
  %i.en = load float, ptr %i.em, align 4, !tbaa !49 ; 4 uses
  %i.eo = fsub nsz float %i.en, %.pre.i           ; 3 uses
  %.not138.i = icmp eq i32 %i.cn, %i.dw
  br i1 %.not138.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge166.i
  %i.ep = add nuw i64 %indvars.iv.i343, 2
  %i.eq = and i64 %i.ep, 4294967295               ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.eq
  %i.es = load float, ptr %i.er, align 4, !tbaa !49
  %i.et = fsub nsz float %i.es, %i.en
  %i.eu = fmul nsz float %i.ec, %i.et
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.eq
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !49
  %i.ex = fsub nsz float %i.ew, %i.du
  %i.ey = fdiv nsz float %i.eu, %i.ex
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge166.i
  %i.ez = phi nsz float [ %i.ey, %bb.v ], [ 0.000000e+00, %._crit_edge166.i ] ; 2 uses
  %i.fa = call nsz float @llvm.fabs.f32(float %i.el) ; 2 uses
  %i.fb = call nsz float @llvm.fabs.f32(float %i.eo) ; 4 uses
  %i.fc = fadd nsz float %i.fa, %i.fb             ; 2 uses
  %i.fd = fcmp nsz ogt float %i.fc, 0.000000e+00
  %i.fe = fmul nsz float %i.el, %i.fb
  %i.ff = call nsz float @llvm.fmuladd.f32(float %i.fa, float %i.eo, float %i.fe)
  %i.fg = fdiv nsz float %i.ff, %i.fc
  %i.fh = select nsz i1 %i.fd, float %i.fg, float 0.000000e+00 ; 3 uses
  %i.fi = call nsz float @llvm.fabs.f32(float %i.ez) ; 2 uses
  %i.fj = fadd nsz float %i.fb, %i.fi             ; 2 uses
  %i.fk = fcmp nsz ogt float %i.fj, 0.000000e+00
  %i.fl = fmul nsz float %i.eo, %i.fi
  %i.fm = call nsz float @llvm.fmuladd.f32(float %i.fb, float %i.ez, float %i.fl)
  %i.fn = fneg nsz float %i.fm
  %.neg.i = fdiv nsz float %i.fn, %i.fj
  %i.fo = select nsz i1 %i.fk, float %.neg.i, float -0.000000e+00
  %i.fp = call nsz float @llvm.fmuladd.f32(float %i.en, float 3.000000e+00, float %i.fo)
  %i.fq = call nsz float @llvm.fmuladd.f32(float %i.fh, float -2.000000e+00, float %i.fp)
  %i.fr = call nsz float @llvm.fmuladd.f32(float %.pre.i, float -3.000000e+00, float %i.fq) ; 2 uses
  %i.fs = fsub nsz float %i.en, %i.fr
  %i.ft = fsub nsz float %i.fs, %i.fh
  %i.fu = fsub nsz float %i.ft, %.pre.i
  %i.fv = fsub nsz float %i.ds, %i.dy
  %i.fw = fdiv nsz float %i.fv, %i.ec             ; 4 uses
  %i.fx = fmul nsz float %i.fw, %i.fw             ; 2 uses
  %i.fy = fmul nsz float %i.fw, %i.fx
  %i.fz = fmul nsz float %i.fx, %i.fr
  %i.ga = call nsz float @llvm.fmuladd.f32(float %i.fu, float %i.fy, float %i.fz)
  %i.gb = call nsz float @llvm.fmuladd.f32(float %i.fh, float %i.fw, float %i.ga)
  %i.gc = fadd nsz float %.pre.i, %i.gb
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %.1.i = phi nsz float [ %i.gc, %bb.w ], [ %i.eb, %bb.s ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv150.i ; 2 uses
  store float %.1.i, ptr %i.gd, align 4, !tbaa !68
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store float 0.000000e+00, ptr %i.ge, align 4, !tbaa !112
  %i.gf = xor i64 %indvars.iv150.i, -1
  %i.gg = getelementptr [8 x i8], ptr %i.cq, i64 %i.gf ; 2 uses
  store float %.1.i, ptr %i.gg, align 4, !tbaa !68
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store float 0.000000e+00, ptr %i.gh, align 4, !tbaa !112
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.critedge.i, %.critedge.preheader.i, %bb.x
  %indvars.iv.next151.i = add nuw nsw i64 %indvars.iv150.i, 1 ; 2 uses
  %exitcond154.not.i = icmp eq i64 %indvars.iv.next151.i, %wide.trip.count164.i
  br i1 %exitcond154.not.i, label %eq_interp.exit, label %.critedge.preheader.i, !llvm.loop !118

eq_interp.exit:                                   ; preds = %.loopexit.i, %.loopexit.us.i, %bb.m
  %i.gi = icmp sgt i32 %i.bd, 0                   ; 4 uses
  br i1 %i.gi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %eq_interp.exit
  %smax = call i32 @llvm.smax.i32(i32 %i.be, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %eq_interp.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !119
  %.not227 = icmp eq i32 %i.gk, 0
  br i1 %.not227, label %bb.ae, label %bb.y

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !68
  %i.gn = fdiv nsz float %i.gm, 2.000000e+01
  %i.go = fpext nsz float %i.gn to double
  %i.gp = fmul nsz double %i.go, f0x400A934F0979A371
  %i.gq = fptrunc nsz double %i.gp to float
  %i.gr = call nsz float @llvm.exp2.f32(float %i.gq)
  store float %i.gr, ptr %i.gl, align 4, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !120

bb.y:                                             ; preds = %._crit_edge
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !49
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.gu = call i32 @av_tx_init(ptr noundef nonnull %i.gs, ptr noundef nonnull %i.gt, i32 noundef 0, i32 noundef 0, i32 noundef %i.be, ptr noundef nonnull %i.a, i64 noundef 0) #9 ; 2 uses
  %i.gv = icmp sgt i32 %i.gu, -1
  br i1 %i.gv, label %.preheader234, label %.thread

.preheader234:                                    ; preds = %bb.y
  %.pre300 = load ptr, ptr %i.bv, align 8, !tbaa !61 ; 3 uses
  br i1 %i.gi, label %.lr.ph242, label %._crit_edge243

.lr.ph242:                                        ; preds = %.preheader234
  %smax269 = call i32 @llvm.smax.i32(i32 %i.be, i32 1)
  %wide.trip.count270 = zext nneg i32 %smax269 to i64
  br label %bb.z

._crit_edge243:                                   ; preds = %bb.z, %.preheader234
  %i.gw = load ptr, ptr %i.bx, align 8, !tbaa !121
  %i.gx = load ptr, ptr %i.bw, align 8, !tbaa !122
  %sext228 = shl i64 %i.bq, 32
  %i.gy = ashr exact i64 %sext228, 32             ; 3 uses
  %i.gz = getelementptr inbounds [8 x i8], ptr %.pre300, i64 %i.gy
  call void %i.gw(ptr noundef %i.gx, ptr noundef %i.gz, ptr noundef %.pre300, i64 noundef 4) #9
  %.pre301.pre = load ptr, ptr %i.bv, align 8, !tbaa !61 ; 6 uses
  br i1 %i.gi, label %.lr.ph246, label %.preheader

.lr.ph246:                                        ; preds = %._crit_edge243
  %sext320 = shl i64 %i.bq, 32
  %smax275 = call i32 @llvm.smax.i32(i32 %i.be, i32 1)
  %wide.trip.count276 = zext nneg i32 %smax275 to i64
  %i.ha = ashr exact i64 %sext320, 29
  %invariant.gep = getelementptr i8, ptr %.pre301.pre, i64 %i.ha
  %i.hb = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph242, %bb.z
  %indvars.iv266 = phi i64 [ 0, %.lr.ph242 ], [ %indvars.iv.next267, %bb.z ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.pre300, i64 %indvars.iv266 ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !68 ; 2 uses
  %i.hf = fcmp nsz olt float %i.he, f0x3727C5AC
  %i.hg = call nsz float @llvm.log.f32(float %i.he)
  %i.hh = select nsz i1 %i.hf, float f0xC13834F1, float %i.hg
  store float %i.hh, ptr %i.hd, align 4, !tbaa !68
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count270
  br i1 %exitcond271.not, label %._crit_edge243, label %bb.z, !llvm.loop !123

.preheader:                                       ; preds = %bb.aa, %._crit_edge243
  %i.hi = load i32, ptr %i.bc, align 8, !tbaa !20 ; 3 uses
  %i.hj = icmp sgt i32 %i.hi, 1
  br i1 %i.hj, label %.lr.ph248, label %._crit_edge249

.lr.ph248:                                        ; preds = %.preheader
  %i.hk = add nsw i32 %i.be, %i.br
  %sext321 = shl i64 %i.bq, 32
  %wide.trip.count281 = zext nneg i32 %i.hi to i64
  %i.hl = ashr exact i64 %sext321, 29
  %invariant.gep329 = getelementptr i8, ptr %.pre301.pre, i64 %i.hl
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph246, %bb.aa
  %indvars.iv272 = phi i64 [ 0, %.lr.ph246 ], [ %indvars.iv.next273, %bb.aa ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv272 ; 2 uses
  %i.hm = load <2 x float>, ptr %gep, align 4, !tbaa !49
  %i.hn = fdiv nsz <2 x float> %i.hm, %i.hc
  store <2 x float> %i.hn, ptr %gep, align 4, !tbaa !49
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count276
  br i1 %exitcond277.not, label %.preheader, label %bb.aa, !llvm.loop !124

._crit_edge249:                                   ; preds = %bb.ab, %.preheader
  %i.ho = add nsw i32 %i.hi, %i.br
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr [8 x i8], ptr %.pre301.pre, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 -4     ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !112
  %i.ht = fneg nsz float %i.hs
  store float %i.ht, ptr %i.hr, align 4, !tbaa !112
  %i.hu = load ptr, ptr %i.gt, align 8, !tbaa !66
  %i.hv = load ptr, ptr %i.gs, align 8, !tbaa !67
  %i.hw = getelementptr inbounds [8 x i8], ptr %.pre301.pre, i64 %i.gy
  call void %i.hu(ptr noundef %i.hv, ptr noundef %.pre301.pre, ptr noundef %i.hw, i64 noundef 4) #9
  %.pre302 = load ptr, ptr %i.bv, align 8, !tbaa !61 ; 3 uses
  br i1 %i.gi, label %.lr.ph252, label %._crit_edge253

.lr.ph252:                                        ; preds = %._crit_edge249
  %smax286 = call i32 @llvm.smax.i32(i32 %i.be, i32 1)
  %wide.trip.count287 = zext nneg i32 %smax286 to i64
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph248, %bb.ab
  %indvars.iv278 = phi i64 [ 1, %.lr.ph248 ], [ %indvars.iv.next279, %bb.ab ] ; 3 uses
  %i.hx = trunc nuw nsw i64 %indvars.iv278 to i32
  %i.hy = sub i32 %i.hk, %i.hx
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %.pre301.pre, i64 %i.hz ; 2 uses
  %gep330 = getelementptr [8 x i8], ptr %invariant.gep329, i64 %indvars.iv278 ; 2 uses
  %i.ib = load <2 x float>, ptr %i.ia, align 4, !tbaa !49 ; 2 uses
  %i.ic = load <2 x float>, ptr %gep330, align 4, !tbaa !49 ; 2 uses
  %i.id = fadd nsz <2 x float> %i.ic, %i.ib
  %i.ie = fsub nsz <2 x float> %i.ic, %i.ib
  %i.if = shufflevector <2 x float> %i.id, <2 x float> %i.ie, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.if, ptr %gep330, align 4, !tbaa !49
  store <2 x float> zeroinitializer, ptr %i.ia, align 4, !tbaa !49
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count281
  br i1 %exitcond282.not, label %._crit_edge249, label %bb.ab, !llvm.loop !125

._crit_edge253:                                   ; preds = %bb.ac, %._crit_edge249
  %i.ig = load ptr, ptr %i.bx, align 8, !tbaa !121
  %i.ih = load ptr, ptr %i.bw, align 8, !tbaa !122
  %i.ii = getelementptr inbounds [8 x i8], ptr %.pre302, i64 %i.gy
  call void %i.ig(ptr noundef %i.ih, ptr noundef %i.ii, ptr noundef %.pre302, i64 noundef 4) #9
  %i.ij = load i32, ptr %i.bc, align 8, !tbaa !20 ; 2 uses
  %i.ik = icmp sgt i32 %i.ij, 0
  br i1 %i.ik, label %.lr.ph256, label %.loopexit

.lr.ph256:                                        ; preds = %._crit_edge253
  %i.il = load ptr, ptr %i.bv, align 8, !tbaa !61
  %i.im = load ptr, ptr %i.cd, align 8, !tbaa !34
  %sext322 = shl i64 %i.bq, 32
  %wide.trip.count292 = zext nneg i32 %i.ij to i64
  %i.in = ashr exact i64 %sext322, 29
  %invariant.gep331 = getelementptr i8, ptr %i.il, i64 %i.in
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph252, %bb.ac
  %indvars.iv283 = phi i64 [ 0, %.lr.ph252 ], [ %indvars.iv.next284, %bb.ac ] ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.pre302, i64 %indvars.iv283 ; 3 uses
  %i.ip = load float, ptr %i.io, align 4, !tbaa !68
  %i.iq = call nsz float @llvm.exp.f32(float %i.ip) ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 4 ; 2 uses
  %i.is = load float, ptr %i.ir, align 4, !tbaa !112
  %sincos = call nsz { float, float } @llvm.sincos.f32(float %i.is) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.it = fmul nsz float %i.iq, %cos
  store float %i.it, ptr %i.io, align 4, !tbaa !68
  %i.iu = fmul nsz float %i.iq, %sin
  store float %i.iu, ptr %i.ir, align 4, !tbaa !112
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count287
  br i1 %exitcond288.not, label %._crit_edge253, label %bb.ac, !llvm.loop !126

bb.ad:                                            ; preds = %.lr.ph256, %bb.ad
  %indvars.iv289 = phi i64 [ 0, %.lr.ph256 ], [ %indvars.iv.next290, %bb.ad ] ; 3 uses
  %gep332 = getelementptr [8 x i8], ptr %invariant.gep331, i64 %indvars.iv289
  %i.iv = load float, ptr %gep332, align 4, !tbaa !68
  %i.iw = fdiv nsz float %i.iv, %i.bi
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv289
  store float %i.iw, ptr %i.ix, align 4, !tbaa !49
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count292
  br i1 %exitcond293.not, label %.loopexit, label %bb.ad, !llvm.loop !127

bb.ae:                                            ; preds = %._crit_edge
  %i.iy = load ptr, ptr %i.bx, align 8, !tbaa !121
  %i.iz = load ptr, ptr %i.bw, align 8, !tbaa !122
  %sext = shl i64 %i.bq, 32
  %i.ja = ashr exact i64 %sext, 29
  %i.jb = getelementptr inbounds i8, ptr %i.ce, i64 %i.ja
  call void %i.iy(ptr noundef %i.iz, ptr noundef %i.jb, ptr noundef %i.ce, i64 noundef 4) #9
  %i.jc = load i32, ptr %i.bc, align 8, !tbaa !20 ; 2 uses
  %i.jd = icmp sgt i32 %i.jc, 1
  br i1 %i.jd, label %.lr.ph259, label %.loopexit

.lr.ph259:                                        ; preds = %bb.ae
  %i.je = lshr i32 %i.jc, 1                       ; 2 uses
  %i.jf = load ptr, ptr %i.bv, align 8, !tbaa !61
  %i.jg = load ptr, ptr %i.cd, align 8, !tbaa !34 ; 2 uses
  %sext323 = shl i64 %i.bq, 32
  %i.jh = zext nneg i32 %i.je to i64              ; 2 uses
  %wide.trip.count297 = zext nneg i32 %i.je to i64
  %i.ji = ashr exact i64 %sext323, 29
  %invariant.gep333 = getelementptr i8, ptr %i.jf, i64 %i.ji
  %invariant.gep335 = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jh
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph259, %bb.af
  %indvars.iv294 = phi i64 [ 0, %.lr.ph259 ], [ %indvars.iv.next295, %bb.af ] ; 4 uses
  %gep334 = getelementptr [8 x i8], ptr %invariant.gep333, i64 %indvars.iv294 ; 2 uses
  %i.jj = load float, ptr %gep334, align 4, !tbaa !68
  %i.jk = fdiv nsz float %i.jj, %i.bi
  %i.jl = sub nsw i64 %i.jh, %indvars.iv294
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jl
  store float %i.jk, ptr %i.jm, align 4, !tbaa !49
  %i.jn = load float, ptr %gep334, align 4, !tbaa !68
  %i.jo = fdiv nsz float %i.jn, %i.bi
  %gep336 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep335, i64 %indvars.iv294
  store float %i.jo, ptr %gep336, align 4, !tbaa !49
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %.loopexit, label %bb.af, !llvm.loop !128

.loopexit:                                        ; preds = %bb.ad, %bb.af, %._crit_edge253, %bb.ae
  %i.jp = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store i64 0, ptr %i.jp, align 8, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %bb.y, %bb.f, %bb.e, %bb.d, %bb.l, %bb.k, %bb.j, %bb.c, %bb.b, %.loopexit, %bb.i
  %.3 = phi i32 [ -12, %bb.d ], [ %i.n, %bb.b ], [ -22, %bb.i ], [ -12, %bb.j ], [ 0, %.loopexit ], [ %i.gu, %bb.y ], [ %i.by, %bb.k ], [ %i.t, %bb.c ], [ -12, %bb.l ], [ -12, %bb.f ], [ %i.y, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.3
}

declare noalias ptr @av_strdup(ptr noundef) local_unnamed_addr #3

declare void @av_free(ptr noundef) local_unnamed_addr #3

declare i64 @av_cpu_max_align() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <4 x double>, <4 x double> } @llvm.sincos.v4f64(<4 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.exp.v4f64(<4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.cos.v4f64(<4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.sin.v4f64(<4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 72}
!10 = !{!"AVFilterContext", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !6, i64 40, !15, i64 48, !16, i64 56, !6, i64 64, !12, i64 72, !18, i64 80, !6, i64 88, !6, i64 92, !14, i64 96, !6, i64 104, !19, i64 112, !6, i64 120}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!16 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!20 = !{!21, !6, i64 32}
!21 = !{!"AudioFIRSourceContext", !11, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !22, i64 64, !23, i64 72, !23, i64 80, !23, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !23, i64 120, !23, i64 128, !24, i64 136, !25, i64 144, !25, i64 152, !12, i64 160, !12, i64 168}
!22 = !{!"p1 _ZTS14AVComplexFloat", !12, i64 0}
!23 = !{!"p1 float", !12, i64 0}
!24 = !{!"long", !7, i64 0}
!25 = !{!"p1 _ZTS11AVTXContext", !12, i64 0}
!26 = !{!21, !6, i64 36}
!27 = !{!6, !6, i64 0}
!28 = !{!10, !16, i64 56}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!31 = !{!21, !6, i64 40}
!32 = !{!21, !24, i64 136}
!33 = !{!14, !14, i64 0}
!34 = !{!21, !23, i64 120}
!35 = !{!36, !24, i64 136}
!36 = !{!"AVFrame", !7, i64 0, !7, i64 64, !37, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !38, i64 124, !24, i64 136, !24, i64 144, !38, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !39, i64 248, !6, i64 256, !40, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !24, i64 304, !41, i64 312, !6, i64 320, !19, i64 328, !19, i64 336, !24, i64 344, !24, i64 352, !24, i64 360, !24, i64 368, !12, i64 376, !42, i64 384, !24, i64 408, !6, i64 416}
!37 = !{!"p2 omnipotent char", !17, i64 0}
!38 = !{!"AVRational", !6, i64 0, !6, i64 4}
!39 = !{!"p2 _ZTS11AVBufferRef", !17, i64 0}
!40 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!41 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!42 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!43 = !{!44, !45, i64 0}
!44 = !{!"AVFilterLink", !45, i64 0, !15, i64 8, !45, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !38, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !42, i64 72, !38, i64 96, !40, i64 104, !6, i64 112, !6, i64 116, !46, i64 120, !46, i64 168}
!45 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!46 = !{!"AVFilterFormatsConfig", !47, i64 0, !47, i64 8, !48, i64 16, !47, i64 24, !47, i64 32, !47, i64 40}
!47 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!48 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"float", !7, i64 0}
!51 = !{!21, !6, i64 116}
!52 = !{!21, !6, i64 112}
!53 = !{!21, !6, i64 108}
!54 = !{!21, !14, i64 8}
!55 = !{!21, !14, i64 16}
!56 = !{!21, !14, i64 24}
!57 = !{!21, !23, i64 72}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!7, !7, i64 0}
!61 = !{!21, !22, i64 64}
!62 = !{!21, !23, i64 128}
!63 = !{!21, !6, i64 44}
!64 = !{!21, !23, i64 80}
!65 = !{!21, !23, i64 88}
!66 = !{!21, !12, i64 160}
!67 = !{!21, !25, i64 144}
!68 = !{!69, !50, i64 0}
!69 = !{!"AVComplexFloat", !50, i64 0, !50, i64 4}
!70 = distinct !{!70, !59}
!71 = !{!23, !23, i64 0}
!72 = distinct !{!72, !59}
!73 = distinct !{!73, !59, !74, !75}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = distinct !{!76, !59, !74, !75}
!77 = distinct !{!77, !59, !74, !75}
!78 = distinct !{!78, !59, !74, !75}
!79 = distinct !{!79, !59, !74, !75}
!80 = distinct !{!80, !59, !74, !75}
!81 = distinct !{!81, !59, !74, !75}
!82 = distinct !{!82, !59, !74, !75}
!83 = distinct !{!83, !59, !74, !75}
!84 = distinct !{!84, !59, !74, !75}
!85 = distinct !{!85, !59, !74, !75}
!86 = distinct !{!86, !59, !74, !75}
!87 = distinct !{!87, !59, !74, !75}
!88 = distinct !{!88, !59, !74, !75}
!89 = distinct !{!89, !59, !75, !74}
!90 = distinct !{!90, !59, !75, !74}
!91 = distinct !{!91, !59, !75, !74}
!92 = distinct !{!92, !59, !75, !74}
!93 = distinct !{!93, !59, !75, !74}
!94 = distinct !{!94, !59, !75, !74}
!95 = distinct !{!95, !59, !75, !74}
!96 = distinct !{!96, !59, !75, !74}
!97 = distinct !{!97, !59, !75, !74}
!98 = distinct !{!98, !59, !75, !74}
!99 = distinct !{!99, !59, !75, !74}
!100 = distinct !{!100, !59, !75, !74}
!101 = distinct !{!101, !59}
!102 = distinct !{!102, !59, !75, !74}
!103 = distinct !{!103, !59}
!104 = distinct !{!104, !59}
!105 = distinct !{!105, !59}
!106 = distinct !{!106, !59}
!107 = distinct !{!107, !59}
!108 = distinct !{!108, !59}
!109 = distinct !{!109, !59, !75, !74}
!110 = distinct !{!110, !59}
!111 = distinct !{!111, !59}
end_hunk_1
