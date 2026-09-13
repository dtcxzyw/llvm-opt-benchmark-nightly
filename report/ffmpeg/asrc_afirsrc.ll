Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/asrc_afirsrc?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@generate_window_func:bb.a
  %i.ks = fdiv nsz double %i.kr, %i.gl
  %i.kt = fsub nsz double 1.000000e+00, %i.ks
  %i.ku = fptrunc nsz double %i.kt to float
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv521
  store float %i.ku, ptr %i.kv, align 4, !tbaa !40
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %exitcond525.not = icmp eq i64 %indvars.iv.next522, %wide.trip.count524
  br i1 %exitcond525.not, label %._crit_edge451, label %scalar.ph687, !llvm.loop !93

scalar.ph673:                                     ; preds = %scalar.ph673.preheader, %scalar.ph673
  %indvars.iv516 = phi i64 [ %indvars.iv.next517, %scalar.ph673 ], [ %indvars.iv516.ph, %scalar.ph673.preheader ] ; 3 uses
  %i.kw = trunc nuw nsw i64 %indvars.iv516 to i32
  %i.kx = uitofp nneg i32 %i.kw to double
  %i.ky = insertelement <2 x double> poison, double %i.kx, i64 0
  %i.kz = shufflevector <2 x double> %i.ky, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.la = fmul nnan nsz <2 x double> %i.kz, <double f0x401921FB54442D18, double f0x402921FB54442D18>
  %i.lb = fdiv nsz <2 x double> %i.la, %i.gh      ; 2 uses
  %i.lc = extractelement <2 x double> %i.lb, i64 0
  %i.ld = tail call nsz double @llvm.cos.f64(double %i.lc)
  %i.le = tail call nsz double @llvm.fmuladd.f64(double %i.ld, double f0xBFFFC60487BC5429, double 1.000000e+00)
  %i.lf = extractelement <2 x double> %i.lb, i64 1
  %i.lg = tail call nsz double @llvm.cos.f64(double %i.lf)
  %i.lh = tail call nsz double @llvm.fmuladd.f64(double %i.lg, double f0x3FFCA8A8A00BFC02, double %i.le)
  %i.li = fmul nnan nsz <2 x double> %i.kz, <double f0x4032D97C7F3321D2, double f0x403921FB54442D18>
  %i.lj = fdiv nsz <2 x double> %i.li, %i.gh      ; 2 uses
  %i.lk = extractelement <2 x double> %i.lj, i64 0
  %i.ll = tail call nsz double @llvm.cos.f64(double %i.lk)
  %i.lm = tail call nsz double @llvm.fmuladd.f64(double %i.ll, double f0xBFF483615F7CFB71, double %i.lh)
  %i.ln = extractelement <2 x double> %i.lj, i64 1
  %i.lo = tail call nsz double @llvm.cos.f64(double %i.ln)
  %i.lp = tail call nsz double @llvm.fmuladd.f64(double %i.lo, double f0x3FE55E6EFBAFE037, double %i.lm)
  %i.lq = fmul nnan nsz <2 x double> %i.kz, <double f0x403F6A7A2955385E, double f0x4042D97C7F3321D2>
  %i.lr = fdiv nsz <2 x double> %i.lq, %i.gh      ; 2 uses
  %i.ls = extractelement <2 x double> %i.lr, i64 0
  %i.lt = tail call nsz double @llvm.cos.f64(double %i.ls)
  %i.lu = tail call nsz double @llvm.fmuladd.f64(double %i.lt, double f0xBFCEBD96C789A119, double %i.lp)
  %i.lv = extractelement <2 x double> %i.lr, i64 1
  %i.lw = tail call nsz double @llvm.cos.f64(double %i.lv)
  %i.lx = tail call nsz double @llvm.fmuladd.f64(double %i.lw, double f0x3FAD0210B59277DF, double %i.lu)
  %i.ly = fmul nnan nsz <2 x double> %i.kz, <double f0x4045FDBBE9BBA775, double f0x404921FB54442D18>
  %i.lz = fdiv nsz <2 x double> %i.ly, %i.gh      ; 2 uses
  %i.ma = extractelement <2 x double> %i.lz, i64 0
  %i.mb = tail call nsz double @llvm.cos.f64(double %i.ma)
  %i.mc = tail call nsz double @llvm.fmuladd.f64(double %i.mb, double f0xBF80A911CABA9273, double %i.lx)
  %i.md = extractelement <2 x double> %i.lz, i64 1
  %i.me = tail call nsz double @llvm.cos.f64(double %i.md)
  %i.mf = tail call nsz double @llvm.fmuladd.f64(double %i.me, double f0x3F44770F6C5EC1E5, double %i.mc)
  %i.mg = fmul nnan nsz <2 x double> %i.kz, <double f0x404C463ABECCB2BB, double f0x404F6A7A2955385E>
  %i.mh = fdiv nsz <2 x double> %i.mg, %i.gh      ; 2 uses
  %i.mi = extractelement <2 x double> %i.mh, i64 0
  %i.mj = tail call nsz double @llvm.cos.f64(double %i.mi)
  %i.mk = tail call nsz double @llvm.fmuladd.f64(double %i.mj, double f0xBEF4C56FFA2B6206, double %i.mf)
  %i.ml = extractelement <2 x double> %i.mh, i64 1
  %i.mm = tail call nsz double @llvm.cos.f64(double %i.ml)
  %i.mn = tail call nsz double @llvm.fmuladd.f64(double %i.mm, double 1.329740e-07, double %i.mk)
  %i.mo = fptrunc nsz double %i.mn to float
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv516
  store float %i.mo, ptr %i.mp, align 4, !tbaa !40
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1 ; 2 uses
  %exitcond520.not = icmp eq i64 %indvars.iv.next517, %wide.trip.count519
  br i1 %exitcond520.not, label %._crit_edge451, label %scalar.ph673, !llvm.loop !94

scalar.ph659:                                     ; preds = %scalar.ph659.preheader, %scalar.ph659
  %indvars.iv511 = phi i64 [ %indvars.iv.next512, %scalar.ph659 ], [ %indvars.iv511.ph, %scalar.ph659.preheader ] ; 3 uses
  %i.mq = trunc nuw nsw i64 %indvars.iv511 to i32
  %i.mr = uitofp nneg i32 %i.mq to double         ; 2 uses
  %i.ms = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.mt = shufflevector <2 x double> %i.ms, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mu = fmul nnan nsz <2 x double> %i.mt, <double f0x401921FB54442D18, double f0x402921FB54442D18>
  %i.mv = fdiv nsz <2 x double> %i.mu, %i.ek      ; 2 uses
  %i.mw = extractelement <2 x double> %i.mv, i64 0
  %i.mx = tail call nsz double @llvm.cos.f64(double %i.mw)
  %i.my = tail call nsz double @llvm.fmuladd.f64(double %i.mx, double -4.882900e-01, double 3.587500e-01)
  %i.mz = extractelement <2 x double> %i.mv, i64 1
  %i.na = tail call nsz double @llvm.cos.f64(double %i.mz)
  %i.nb = tail call nsz double @llvm.fmuladd.f64(double %i.na, double 1.412800e-01, double %i.my)
  %i.nc = fmul nnan nsz double %i.mr, f0x4032D97C7F3321D2
  %i.nd = fdiv nsz double %i.nc, %i.ds
  %i.ne = tail call nsz double @llvm.cos.f64(double %i.nd)
  %i.nf = tail call nsz double @llvm.fmuladd.f64(double %i.ne, double -1.168000e-02, double %i.nb)
  %i.ng = fptrunc nsz double %i.nf to float
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv511
  store float %i.ng, ptr %i.nh, align 4, !tbaa !40
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, 1 ; 2 uses
  %exitcond515.not = icmp eq i64 %indvars.iv.next512, %wide.trip.count514
  br i1 %exitcond515.not, label %._crit_edge451, label %scalar.ph659, !llvm.loop !95

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
  store float %i.ny, ptr %i.nz, align 4, !tbaa !40
  %indvars.iv.next507 = add nuw nsw i64 %indvars.iv506, 1 ; 2 uses
  %exitcond510.not = icmp eq i64 %indvars.iv.next507, %wide.trip.count509
  br i1 %exitcond510.not, label %._crit_edge451, label %scalar.ph645, !llvm.loop !96

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
  store float %i.on, ptr %i.oo, align 4, !tbaa !40
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, 1 ; 2 uses
  %exitcond505.not = icmp eq i64 %indvars.iv.next502, %wide.trip.count504
  br i1 %exitcond505.not, label %._crit_edge451, label %scalar.ph631, !llvm.loop !97

scalar.ph617:                                     ; preds = %scalar.ph617.preheader, %scalar.ph617
  %indvars.iv496 = phi i64 [ %indvars.iv.next497, %scalar.ph617 ], [ %indvars.iv496.ph, %scalar.ph617.preheader ] ; 3 uses
  %i.op = trunc nuw nsw i64 %indvars.iv496 to i32
  %i.oq = uitofp nneg i32 %i.op to double
  %i.or = fmul nnan nsz double %i.oq, f0x400921FB54442D18
  %i.os = fdiv nsz double %i.or, %i.bw
  %i.ot = tail call nsz double @llvm.sin.f64(double %i.os)
  %i.ou = fptrunc nsz double %i.ot to float
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv496
  store float %i.ou, ptr %i.ov, align 4, !tbaa !40
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %exitcond500.not = icmp eq i64 %indvars.iv.next497, %wide.trip.count499
  br i1 %exitcond500.not, label %._crit_edge451, label %scalar.ph617, !llvm.loop !98

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
  store float %i.pm, ptr %i.pn, align 4, !tbaa !40
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %exitcond495.not = icmp eq i64 %indvars.iv.next492, %wide.trip.count494
  br i1 %exitcond495.not, label %._crit_edge451, label %scalar.ph603, !llvm.loop !99

bb.b:                                             ; preds = %.lr.ph414, %bb.d
  %indvars.iv486 = phi i64 [ 0, %.lr.ph414 ], [ %indvars.iv.next487, %bb.d ] ; 3 uses
  %indvars.iv486.tr = trunc nuw i64 %indvars.iv486 to i32
  %i.po = shl nuw i32 %indvars.iv486.tr, 1
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
  store float %i.px, ptr %i.py, align 4, !tbaa !40
  %indvars.iv.next487 = add nuw nsw i64 %indvars.iv486, 1 ; 2 uses
  %exitcond490.not = icmp eq i64 %indvars.iv.next487, %wide.trip.count489
  br i1 %exitcond490.not, label %._crit_edge451, label %bb.b, !llvm.loop !100

scalar.ph587:                                     ; preds = %scalar.ph587.preheader, %scalar.ph587
  %indvars.iv481 = phi i64 [ %indvars.iv.next482, %scalar.ph587 ], [ %indvars.iv481.ph, %scalar.ph587.preheader ] ; 3 uses
  %i.pz = trunc i64 %indvars.iv481 to i32
  %i.qa = sub i32 %i.pz, %.neg560566
  %i.qb = sitofp nsz i32 %i.qa to double
  %i.qc = fdiv nsz double %i.qb, %i.am            ; 2 uses
  %i.qd = fmul nsz double %i.qc, %i.qc
  %i.qe = fmul nsz double %i.qd, -5.000000e-01
  %i.qf = tail call nsz double @llvm.exp.f64(double %i.qe)
  %i.qg = fptrunc nsz double %i.qf to float
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv481
  store float %i.qg, ptr %i.qh, align 4, !tbaa !40
  %indvars.iv.next482 = add nuw nsw i64 %indvars.iv481, 1 ; 2 uses
  %exitcond485.not = icmp eq i64 %indvars.iv.next482, %wide.trip.count484
  br i1 %exitcond485.not, label %._crit_edge451, label %scalar.ph587, !llvm.loop !101

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
  store float %.sink, ptr %i.qv, align 4, !tbaa !40
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %exitcond480.not = icmp eq i64 %indvars.iv.next477, %wide.trip.count479
  br i1 %exitcond480.not, label %._crit_edge451, label %bb.e, !llvm.loop !102

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
  %i.rt = sub nuw nsw i32 %i.rj, %.0327398
  %i.ru = sitofp nsz i32 %i.rt to double
  %i.rv = fmul nsz double %i.rp, %i.ru
  %i.rw = fmul nsz double %i.rv, %i.rr
  %i.rx = add nuw nsw i32 %.0327398, 1
  %i.ry = zext nneg i32 %.0327398 to i64
  %i.rz = icmp samesign ugt i64 %indvars.iv473, %i.ry
  %i.sa = fcmp nsz une double %i.rs, %.0330397
  %i.sb = select i1 %i.rz, i1 %i.sa, i1 false
  br i1 %i.sb, label %bb.i, label %._crit_edge401, !llvm.loop !103

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
  store float %i.sj, ptr %i.sk, align 4, !tbaa !40
  %i.sl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.sc
  store float %i.sj, ptr %i.sl, align 4, !tbaa !40
  %indvars.iv.next474 = add nsw i64 %indvars.iv473, -1
  br i1 %.not, label %._crit_edge451, label %.lr.ph405, !llvm.loop !104

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
  store float %.sink551, ptr %i.ta, align 4, !tbaa !40
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next469, %wide.trip.count471
  br i1 %exitcond472.not, label %._crit_edge451, label %bb.j, !llvm.loop !105

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
  store float %.sink561, ptr %i.uj, align 4, !tbaa !40
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %exitcond467.not = icmp eq i64 %indvars.iv.next464, %wide.trip.count466
  br i1 %exitcond467.not, label %._crit_edge451, label %bb.m, !llvm.loop !106

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
  store float %.sink563, ptr %i.uz, align 4, !tbaa !40
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvars.iv.next459, %wide.trip.count461
  br i1 %exitcond462.not, label %._crit_edge451, label %bb.v, !llvm.loop !107

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
  store float %i.vj, ptr %i.vk, align 4, !tbaa !40
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, 1 ; 2 uses
  %exitcond457.not = icmp eq i64 %indvars.iv.next454, %wide.trip.count456
  br i1 %exitcond457.not, label %._crit_edge451, label %scalar.ph, !llvm.loop !108

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

bb.ab:                                            ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 3 uses
  %i.vr = trunc nuw nsw i64 %indvars.iv to i32
  %i.vs = uitofp nneg i32 %i.vr to double
  %i.vt = tail call nsz double @llvm.fmuladd.f64(double %i.vs, double %i.vq, double -1.000000e+00) ; 2 uses
  %i.vu = fneg nsz double %i.vt
  %i.vv = tail call nsz double @llvm.fmuladd.f64(double %i.vu, double %i.vt, double 1.000000e+00)
  %i.vw = tail call nsz double @llvm.sqrt.f64(double %i.vv)
  %i.vx = fmul nsz double %i.vw, 1.200000e+01
  %i.vy = tail call nsz double @av_bessel_i0(double noundef %i.vx) #9
  %i.vz = fmul nsz double %i.vm, %i.vy
  %i.wa = fptrunc nsz double %i.vz to float
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.wa, ptr %i.wb, align 4, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge451, label %bb.ab, !llvm.loop !109

bb.ac:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 232) #9
  tail call void @abort() #10
  unreachable

._crit_edge451:                                   ; preds = %bb.ab, %scalar.ph, %bb.z, %bb.u, %bb.l, %._crit_edge401, %bb.g, %scalar.ph587, %bb.d, %scalar.ph603, %scalar.ph617, %scalar.ph631, %scalar.ph645, %scalar.ph659, %scalar.ph673, %scalar.ph687, %scalar.ph701, %scalar.ph715, %scalar.ph729, %scalar.ph743, %.lr.ph450, %middle.block, %middle.block600, %middle.block614, %middle.block628, %middle.block642, %middle.block656, %middle.block670, %middle.block684, %middle.block698, %middle.block712, %middle.block726, %middle.block740, %middle.block754, %middle.block764, %bb.aa, %.preheader382, %.preheader381, %.preheader380, %.preheader379, %bb.h, %.preheader378, %.preheader377, %.preheader376, %.preheader375, %.preheader374, %.preheader373, %.preheader372, %.preheader371, %.preheader370, %.preheader369, %.preheader368, %.preheader367, %.preheader366, %.preheader365, %.preheader
  %.sink565 = phi float [ 7.500000e-01, %.preheader382 ], [ 7.500000e-01, %.preheader381 ], [ 7.500000e-01, %.preheader380 ], [ 7.500000e-01, %.preheader379 ], [ 5.000000e-01, %bb.h ], [ 3.300000e-01, %.preheader378 ], [ 7.500000e-01, %.preheader377 ], [ 7.500000e-01, %.preheader376 ], [ 6.630000e-01, %.preheader375 ], [ 7.500000e-01, %.preheader374 ], [ 5.000000e-01, %.preheader373 ], [ 6.610000e-01, %.preheader372 ], [ 6.610000e-01, %.preheader371 ], [ 8.410000e-01, %.preheader370 ], [ 2.930000e-01, %.preheader369 ], [ 6.610000e-01, %.preheader368 ], [ 5.000000e-01, %.preheader367 ], [ 5.000000e-01, %.preheader366 ], [ 5.000000e-01, %.preheader365 ], [ 0.000000e+00, %.preheader ], [ 7.500000e-01, %bb.aa ], [ 7.500000e-01, %middle.block ], [ 0.000000e+00, %middle.block764 ], [ 5.000000e-01, %middle.block754 ], [ 5.000000e-01, %middle.block740 ], [ 5.000000e-01, %middle.block726 ], [ 6.610000e-01, %middle.block712 ], [ 2.930000e-01, %middle.block698 ], [ 8.410000e-01, %middle.block684 ], [ 6.610000e-01, %middle.block670 ], [ 6.610000e-01, %middle.block656 ], [ 5.000000e-01, %middle.block642 ], [ 7.500000e-01, %middle.block628 ], [ 6.630000e-01, %middle.block614 ], [ 7.500000e-01, %scalar.ph617 ], [ 7.500000e-01, %middle.block600 ], [ 7.500000e-01, %bb.d ], [ 7.500000e-01, %scalar.ph587 ], [ 3.300000e-01, %bb.g ], [ 5.000000e-01, %._crit_edge401 ], [ 7.500000e-01, %bb.l ], [ 7.500000e-01, %bb.z ], [ 7.500000e-01, %scalar.ph ], [ 0.000000e+00, %.lr.ph450 ], [ 5.000000e-01, %scalar.ph743 ], [ 5.000000e-01, %scalar.ph729 ], [ 5.000000e-01, %scalar.ph715 ], [ 6.610000e-01, %scalar.ph701 ], [ 2.930000e-01, %scalar.ph687 ], [ 8.410000e-01, %scalar.ph673 ], [ 6.610000e-01, %scalar.ph659 ], [ 6.610000e-01, %scalar.ph645 ], [ 5.000000e-01, %scalar.ph631 ], [ 6.630000e-01, %scalar.ph603 ], [ 7.500000e-01, %bb.u ], [ 7.500000e-01, %bb.ab ]
  store float %.sink565, ptr %3, align 4, !tbaa !40
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @lininterp(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef range(i32 -1073741824, 1073741824) %5) unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 1
  %i.c = uitofp nneg i32 %5 to float
  br i1 %i.b, label %.preheader.us.preheader, label %._crit_edge

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count65 = zext nneg i32 %5 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv62 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next63, %..loopexit_crit_edge.us ] ; 3 uses
  %i.d = trunc nuw nsw i64 %indvars.iv62 to i32
  %i.e = uitofp nneg i32 %i.d to float
  %i.f = fdiv nsz float %i.e, %i.c                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %.critedge.us
  %indvars.iv = phi i64 [ 1, %.preheader.us ], [ %indvars.iv.next, %.critedge.us ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.h = load float, ptr %i.g, align 4, !tbaa !40 ; 2 uses
  %i.i = fcmp nsz ugt float %i.f, %i.h
  br i1 %i.i, label %.critedge.us, label %bb.c

.critedge.us:                                     ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !112

bb.c:                                             ; preds = %bb.b
  %sext = add nuw i64 %indvars.iv, 4294967295
  %6 = and i64 %sext, 4294967295                  ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %6
  %i.k = load float, ptr %i.j, align 4, !tbaa !40 ; 2 uses
  %i.l = fsub nsz float %i.f, %i.k
  %i.m = fsub nsz float %i.h, %i.k
  %i.n = fdiv nsz float %i.l, %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %6
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !40 ; 2 uses
  %i.r = load <2 x float>, ptr %i.p, align 4, !tbaa !40 ; 2 uses
  %i.s = shufflevector <2 x float> %i.q, <2 x float> %i.r, <2 x i32> <i32 1, i32 3>
  %i.t = shufflevector <2 x float> %i.q, <2 x float> %i.r, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.u = fsub nsz <2 x float> %i.s, %i.t
  %i.v = insertelement <2 x float> poison, float %i.n, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.u, <2 x float> %i.t) ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 1
  %sincos.us = tail call nsz { float, float } @llvm.sincos.f32(float %i.y) ; 2 uses
  %sin.us = extractvalue { float, float } %sincos.us, 0
  %cos.us = extractvalue { float, float } %sincos.us, 1
  %i.z = extractelement <2 x float> %i.x, i64 0   ; 2 uses
  %i.aa = fmul nsz float %i.z, %cos.us
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv62 ; 2 uses
  store float %i.aa, ptr %i.ab, align 4, !tbaa !53
  %i.ac = fmul nsz float %i.z, %sin.us
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store float %i.ac, ptr %i.ad, align 4, !tbaa !54
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %.critedge.us, %bb.c
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %._crit_edge, label %.preheader.us, !llvm.loop !113

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %.preheader.lr.ph, %bb.a
  ret void
}

declare ptr @av_fast_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare double @av_strtod(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cosh.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #6

declare double @av_bessel_i0(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare ptr @av_default_item_name(ptr noundef) #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #3

declare i32 @ff_set_sample_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_set_common_channel_layouts_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_set_common_samplerates_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @config_eq_output(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 108 ; 5 uses
  store <2 x i32> zeroinitializer, ptr %i.f, align 4, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !123
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.n = tail call fastcc i32 @parse_string(ptr noundef %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.f, ptr noundef nonnull %i.m) ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.t = tail call fastcc i32 @parse_string(ptr noundef %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.e, ptr noundef nonnull %i.s) ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.thread, label %._crit_edge299

._crit_edge299:                                   ; preds = %bb.c
  %.pre = load i32, ptr %i.e, align 8, !tbaa !44
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  store i32 16, ptr %i.e, align 8, !tbaa !44
  %i.v = tail call noalias ptr @av_strdup(ptr noundef nonnull @.str.83) #9 ; 3 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.y = tail call fastcc i32 @parse_string(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %i.f, ptr noundef nonnull %i.x) ; 2 uses
  tail call void @av_free(ptr noundef nonnull %i.v) #9
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.e, align 8, !tbaa !44
  %i.ab = add nsw i32 %i.aa, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = tail call noalias ptr @av_calloc(i64 noundef %i.ac, i64 noundef 4) #9 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !49
  %.not223 = icmp eq ptr %i.ad, null
  br i1 %.not223, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr %i.g, align 8, !tbaa !123
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [80 x i8], ptr @eq_presets, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr nonnull align 16 %i.ai, i64 %i.al, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge299, %bb.g
  %i.am = phi i32 [ %.pre, %._crit_edge299 ], [ %i.aj, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.f, align 4, !tbaa !43  ; 2 uses
  %.not224 = icmp ne i32 %i.an, %i.am
  %i.ao = icmp slt i32 %i.an, 2
  %or.cond = or i1 %i.ao, %.not224
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.84) #9
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !124
  %i.ar = sitofp nsz i32 %i.aq to float
  %i.as = fmul nnan nsz float %i.ar, 5.000000e-01 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !45
  %i.av = zext nneg i32 %i.am to i64              ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %i.au, i64 %i.av ; 2 uses
  store float %i.as, ptr %i.aw, align 4, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !49
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %i.av ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !40
  store float %i.bb, ptr %i.az, align 4, !tbaa !40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 6 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !25 ; 2 uses
  %i.be = shl i32 %i.bd, 1                        ; 9 uses
  %i.bf = getelementptr i8, ptr %i.aw, i64 -4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !40 ; 2 uses
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
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !48
  %.not225 = icmp eq ptr %i.bu, null
  br i1 %.not225, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !40
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 4 uses
  %i.by = call i32 @av_tx_init(ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bx, i32 noundef 0, i32 noundef 1, i32 noundef %i.be, ptr noundef nonnull %i.a, i64 noundef 0) #9 ; 2 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = load i32, ptr %i.bc, align 8, !tbaa !25
  %i.cb = sext i32 %i.ca to i64
  %i.cc = call noalias ptr @av_calloc(i64 noundef %i.cb, i64 noundef 4) #9 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 3 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !29
  %.not226 = icmp eq ptr %i.cc, null
  br i1 %.not226, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !48 ; 6 uses
  %i.cf = load ptr, ptr %i.at, align 8, !tbaa !45 ; 6 uses
  %i.cg = load ptr, ptr %i.ax, align 8, !tbaa !49 ; 7 uses
  %i.ch = load i32, ptr %i.bc, align 8, !tbaa !25 ; 4 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.critedge.preheader.lr.ph.i, label %eq_interp.exit

.critedge.preheader.lr.ph.i:                      ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !125
  %i.cl = load i32, ptr %i.f, align 4, !tbaa !43  ; 3 uses
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
  br i1 %exitcond160.not.i, label %.loopexit.us.i, label %.lr.ph347, !llvm.loop !114

.lr.ph347:                                        ; preds = %.critedge.preheader.us.i, %.critedge.us.i
  %indvars.iv155.i346 = phi i64 [ %indvars.iv.next156.i, %.critedge.us.i ], [ 0, %.critedge.preheader.us.i ] ; 3 uses
  %indvars.iv.next156.i = add nuw nsw i64 %indvars.iv155.i346, 1 ; 4 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next156.i
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !40 ; 3 uses
  %i.cw = fcmp nsz ugt float %i.ct, %i.cv
  br i1 %i.cw, label %.critedge.us.i, label %bb.n, !llvm.loop !114

bb.n:                                             ; preds = %.lr.ph347
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv155.i346
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !40 ; 2 uses
  %i.cz = fsub nsz float %i.ct, %i.cy             ; 2 uses
  %i.da = fsub nsz float %i.cv, %i.ct             ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv155.i346
  %i.dc = load float, ptr %i.db, align 4, !tbaa !40 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next156.i
  %i.de = load float, ptr %i.dd, align 4, !tbaa !40 ; 2 uses
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
  store float %.1.us.i, ptr %i.dl, align 4, !tbaa !53
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store float 0.000000e+00, ptr %i.dm, align 4, !tbaa !54
  %i.dn = xor i64 %indvars.iv161.i, -1
  %i.do = getelementptr [8 x i8], ptr %i.cq, i64 %i.dn ; 2 uses
  store float %.1.us.i, ptr %i.do, align 4, !tbaa !53
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store float 0.000000e+00, ptr %i.dp, align 4, !tbaa !54
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.critedge.us.i, %.critedge.preheader.us.i, %bb.q
  %indvars.iv.next162.i = add nuw nsw i64 %indvars.iv161.i, 1 ; 2 uses
  %exitcond165.not.i = icmp eq i64 %indvars.iv.next162.i, %wide.trip.count164.i
  br i1 %exitcond165.not.i, label %eq_interp.exit, label %.critedge.preheader.us.i, !llvm.loop !115

.critedge.preheader.i:                            ; preds = %.critedge.preheader.i.preheader, %.loopexit.i
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i, %.loopexit.i ], [ 0, %.critedge.preheader.i.preheader ] ; 4 uses
  %i.dq = trunc nuw nsw i64 %indvars.iv150.i to i32
  %i.dr = uitofp nneg i32 %i.dq to float
  %i.ds = fmul nsz float %i.bj, %i.dr             ; 3 uses
  br i1 %exitcond.not.i342, label %.loopexit.i, label %.lr.ph344

.critedge.i:                                      ; preds = %.lr.ph344
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count159.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph344, !llvm.loop !114

.lr.ph344:                                        ; preds = %.critedge.preheader.i, %.critedge.i
  %indvars.iv.i343 = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ 0, %.critedge.preheader.i ] ; 8 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i343, 1 ; 4 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i
  %i.du = load float, ptr %i.dt, align 4, !tbaa !40 ; 3 uses
  %i.dv = fcmp nsz ugt float %i.ds, %i.du
  br i1 %i.dv, label %.critedge.i, label %bb.r, !llvm.loop !114

bb.r:                                             ; preds = %.lr.ph344
  %i.dw = trunc nuw nsw i64 %indvars.iv.i343 to i32
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i343
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !40 ; 4 uses
  %i.dz = fcmp nsz ugt float %i.ds, %i.dy
  br i1 %i.dz, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i343
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !40
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.ec = fsub nsz float %i.du, %i.dy             ; 3 uses
  %.not.i = icmp eq i64 %indvars.iv.i343, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i343
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !40 ; 5 uses
  br i1 %.not.i, label %._crit_edge166.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %sext.i = add nuw i64 %indvars.iv.i343, 4294967295
  %1 = and i64 %sext.i, 4294967295                ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %1
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !40
  %i.ef = fsub nsz float %.pre.i, %i.ee
  %i.eg = fmul nsz float %i.ec, %i.ef
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %1
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !40
  %i.ej = fsub nsz float %i.dy, %i.ei
  %i.ek = fdiv nsz float %i.eg, %i.ej
  br label %._crit_edge166.i

._crit_edge166.i:                                 ; preds = %bb.u, %bb.t
  %i.el = phi nsz float [ %i.ek, %bb.u ], [ 0.000000e+00, %bb.t ] ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next.i
  %i.en = load float, ptr %i.em, align 4, !tbaa !40 ; 4 uses
  %i.eo = fsub nsz float %i.en, %.pre.i           ; 3 uses
  %.not138.i = icmp eq i32 %i.cn, %i.dw
  br i1 %.not138.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge166.i
  %i.ep = add nuw i64 %indvars.iv.i343, 2
  %i.eq = and i64 %i.ep, 4294967295               ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.eq
  %i.es = load float, ptr %i.er, align 4, !tbaa !40
  %i.et = fsub nsz float %i.es, %i.en
  %i.eu = fmul nsz float %i.ec, %i.et
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.eq
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !40
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
  store float %.1.i, ptr %i.gd, align 4, !tbaa !53
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store float 0.000000e+00, ptr %i.ge, align 4, !tbaa !54
  %i.gf = xor i64 %indvars.iv150.i, -1
  %i.gg = getelementptr [8 x i8], ptr %i.cq, i64 %i.gf ; 2 uses
  store float %.1.i, ptr %i.gg, align 4, !tbaa !53
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store float 0.000000e+00, ptr %i.gh, align 4, !tbaa !54
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.critedge.i, %.critedge.preheader.i, %bb.x
  %indvars.iv.next151.i = add nuw nsw i64 %indvars.iv150.i, 1 ; 2 uses
  %exitcond154.not.i = icmp eq i64 %indvars.iv.next151.i, %wide.trip.count164.i
  br i1 %exitcond154.not.i, label %eq_interp.exit, label %.critedge.preheader.i, !llvm.loop !115

eq_interp.exit:                                   ; preds = %.loopexit.i, %.loopexit.us.i, %bb.m
  %i.gi = icmp sgt i32 %i.bd, 0                   ; 4 uses
  br i1 %i.gi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %eq_interp.exit
  %smax = call i32 @llvm.smax.i32(i32 %i.be, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %eq_interp.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !126
  %.not227 = icmp eq i32 %i.gk, 0
  br i1 %.not227, label %bb.ae, label %bb.y

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !53
  %i.gn = fdiv nsz float %i.gm, 2.000000e+01
  %i.go = fpext nsz float %i.gn to double
  %i.gp = fmul nsz double %i.go, f0x400A934F0979A371
  %i.gq = fptrunc nsz double %i.gp to float
  %i.gr = call nsz float @llvm.exp2.f32(float %i.gq)
  store float %i.gr, ptr %i.gl, align 4, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !116

bb.y:                                             ; preds = %._crit_edge
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !40
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.gu = call i32 @av_tx_init(ptr noundef nonnull %i.gs, ptr noundef nonnull %i.gt, i32 noundef 0, i32 noundef 0, i32 noundef %i.be, ptr noundef nonnull %i.a, i64 noundef 0) #9 ; 2 uses
  %i.gv = icmp sgt i32 %i.gu, -1
  br i1 %i.gv, label %.preheader234, label %.thread

.preheader234:                                    ; preds = %bb.y
  %.pre300 = load ptr, ptr %i.bv, align 8, !tbaa !48 ; 3 uses
  br i1 %i.gi, label %.lr.ph242, label %._crit_edge243

.lr.ph242:                                        ; preds = %.preheader234
  %smax269 = call i32 @llvm.smax.i32(i32 %i.be, i32 1)
  %wide.trip.count270 = zext nneg i32 %smax269 to i64
  br label %bb.z

._crit_edge243:                                   ; preds = %bb.z, %.preheader234
  %i.gw = load ptr, ptr %i.bx, align 8, !tbaa !127
  %i.gx = load ptr, ptr %i.bw, align 8, !tbaa !128
  %sext228 = shl i64 %i.bq, 32
  %i.gy = ashr exact i64 %sext228, 32             ; 3 uses
  %i.gz = getelementptr inbounds [8 x i8], ptr %.pre300, i64 %i.gy
  call void %i.gw(ptr noundef %i.gx, ptr noundef %i.gz, ptr noundef %.pre300, i64 noundef 4) #9
  %.pre301.pre = load ptr, ptr %i.bv, align 8, !tbaa !48 ; 6 uses
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
  %i.he = load float, ptr %i.hd, align 4, !tbaa !53 ; 2 uses
  %i.hf = fcmp nsz olt float %i.he, f0x3727C5AC
  %i.hg = call nsz float @llvm.log.f32(float %i.he)
  %i.hh = select nsz i1 %i.hf, float f0xC13834F1, float %i.hg
  store float %i.hh, ptr %i.hd, align 4, !tbaa !53
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count270
  br i1 %exitcond271.not, label %._crit_edge243, label %bb.z, !llvm.loop !117

.preheader:                                       ; preds = %bb.aa, %._crit_edge243
  %i.hi = load i32, ptr %i.bc, align 8, !tbaa !25 ; 3 uses
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
  %i.hm = load <2 x float>, ptr %gep, align 4, !tbaa !40
  %i.hn = fdiv nsz <2 x float> %i.hm, %i.hc
  store <2 x float> %i.hn, ptr %gep, align 4, !tbaa !40
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count276
  br i1 %exitcond277.not, label %.preheader, label %bb.aa, !llvm.loop !118

._crit_edge249:                                   ; preds = %bb.ab, %.preheader
  %i.ho = add nsw i32 %i.hi, %i.br
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr [8 x i8], ptr %.pre301.pre, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 -4     ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !54
  %i.ht = fneg nsz float %i.hs
  store float %i.ht, ptr %i.hr, align 4, !tbaa !54
  %i.hu = load ptr, ptr %i.gt, align 8, !tbaa !50
  %i.hv = load ptr, ptr %i.gs, align 8, !tbaa !51
  %i.hw = getelementptr inbounds [8 x i8], ptr %.pre301.pre, i64 %i.gy
  call void %i.hu(ptr noundef %i.hv, ptr noundef %.pre301.pre, ptr noundef %i.hw, i64 noundef 4) #9
  %.pre302 = load ptr, ptr %i.bv, align 8, !tbaa !48 ; 3 uses
  br i1 %i.gi, label %.lr.ph252, label %._crit_edge253

.lr.ph252:                                        ; preds = %._crit_edge249
  %smax286 = call i32 @llvm.smax.i32(i32 %i.be, i32 1)
  %wide.trip.count287 = zext nneg i32 %smax286 to i64
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph248, %bb.ab
end_hunk_0
