inline.NumInlined: 25
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@activate:bb.a
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !128 ; 2 uses
  %i.kr = zext i32 %i.kq to i64
  %i.ks = add i64 %.0381468.i.epil.init, %i.kr
  %i.kt = uitofp nsz i32 %i.kq to double
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !130
  %i.kw = call nsz double @llvm.fmuladd.f64(double %i.kt, double %i.kv, double %.0382467.i.epil.init)
  br label %bb.ae

bb.ae:                                            ; preds = %.unr-lcssa, %.epil.preheader187
  %.lcssa158 = phi i64 [ %i.lj, %.unr-lcssa ], [ %i.ks, %.epil.preheader187 ] ; 2 uses
  %.lcssa157 = phi double [ %i.ln, %.unr-lcssa ], [ %i.kw, %.epil.preheader187 ]
  %.not414.i = icmp eq i64 %.lcssa158, 0
  br i1 %.not414.i, label %bb.aj, label %bb.ag

bb.af:                                            ; preds = %bb.af, %.new
  %indvars.iv549.i = phi i64 [ %umin.i, %.new ], [ %indvars.iv.next550.i.1, %bb.af ] ; 3 uses
  %.0381468.i = phi i64 [ 0, %.new ], [ %i.lj, %bb.af ]
  %.0382467.i = phi double [ 0.000000e+00, %.new ], [ %i.ln, %bb.af ]
  %niter195 = phi i64 [ 0, %.new ], [ %niter195.next.1, %bb.af ]
  %i.kx = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %indvars.iv549.i ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !128 ; 2 uses
  %i.kz = zext i32 %i.ky to i64
  %i.la = add i64 %.0381468.i, %i.kz
  %i.lb = uitofp nsz i32 %i.ky to double
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !130
  %i.le = call nsz double @llvm.fmuladd.f64(double %i.lb, double %i.ld, double %.0382467.i)
  %i.lf = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %indvars.iv549.i ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !128 ; 2 uses
  %i.li = zext i32 %i.lh to i64
  %i.lj = add i64 %i.la, %i.li                    ; 3 uses
  %i.lk = uitofp nsz i32 %i.lh to double
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !130
  %i.ln = call nsz double @llvm.fmuladd.f64(double %i.lk, double %i.lm, double %i.le) ; 3 uses
  %indvars.iv.next550.i.1 = add nuw nsw i64 %indvars.iv549.i, 2 ; 2 uses
  %niter195.next.1 = add i64 %niter195, 2         ; 2 uses
  %niter195.ncmp.1 = icmp eq i64 %niter195.next.1, %unroll_iter194
  br i1 %niter195.ncmp.1, label %.unr-lcssa, label %bb.af, !llvm.loop !131

bb.ag:                                            ; preds = %bb.ae
  %i.lo = uitofp nsz i64 %.lcssa158 to double
  %i.lp = fdiv nsz double %.lcssa157, %i.lo
  %i.lq = call nsz double @llvm.log10.f64(double %i.lp)
  %i.lr = call nsz double @llvm.fmuladd.f64(double %i.lq, double 1.000000e+01, double -6.910000e-01) ; 2 uses
  store double %i.lr, ptr %i.dx, align 8, !tbaa !65
  br i1 %i.dy, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ls = load i32, ptr %i.dz, align 8, !tbaa !61
  %.not415.i = icmp eq i32 %i.ls, 0
  br i1 %.not415.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.lt = load double, ptr %i.ea, align 8, !tbaa !62
  %i.lu = fsub nsz double %i.lr, %i.lt
  store double %i.lu, ptr %i.dx, align 8, !tbaa !65
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.ac
  %i.lv = fcmp nsz ult double %i.jl, -7.000000e+01
  br i1 %i.lv, label %bb.av, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lw = load ptr, ptr %i.eb, align 8, !tbaa !124 ; 9 uses
  %i.lx = load double, ptr %i.ec, align 8, !tbaa !125
  %i.ly = fadd nsz double %.1386.i, %i.lx         ; 2 uses
  store double %i.ly, ptr %i.ec, align 8, !tbaa !125
  %i.lz = load i32, ptr %i.ed, align 8, !tbaa !126
  %i.ma = add nsw i32 %i.lz, 1                    ; 2 uses
  store i32 %i.ma, ptr %i.ed, align 8, !tbaa !126
  %i.mb = sitofp nsz i32 %i.ma to double
  %i.mc = fdiv nsz double %i.ly, %i.mb            ; 2 uses
  %i.md = fcmp nsz une double %i.mc, 0.000000e+00
  %i.me = call nsz double @llvm.log10.f64(double %i.mc)
  %i.mf = call nsz double @llvm.fmuladd.f64(double %i.me, double 1.000000e+01, double -6.910000e-01)
  %i.mg = fadd nsz double %i.mf, -2.000000e+01
  %i.mh = select i1 %i.md, double %i.mg, double -1.406910e+02 ; 2 uses
  store double %i.mh, ptr %i.ee, align 8, !tbaa !127
  %i.mi = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.mj = insertelement <2 x double> %i.mi, double %i.mh, i64 1
  %i.mk = fadd nsz <2 x double> %i.mj, splat (double 7.000000e+01)
  %i.ml = fmul nsz <2 x double> %i.mk, splat (double 1.000000e+02)
  %i.mm = fptosi <2 x double> %i.ml to <2 x i32>
  %i.mn = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.mm, <2 x i32> zeroinitializer) ; 2 uses
  %i.mo = extractelement <2 x i32> %i.mn, i64 0
  %i.mp = call i32 @llvm.umin.i32(i32 %i.mo, i32 8000)
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %i.mq ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !128
  %i.mt = add i32 %i.ms, 1
  store i32 %i.mt, ptr %i.mr, align 8, !tbaa !128
  %i.mu = extractelement <2 x i32> %i.mn, i64 1
  %i.mv = call i32 @llvm.umin.i32(i32 %i.mu, i32 8000) ; 2 uses
  %umin553.i = zext nneg i32 %i.mv to i64         ; 4 uses
  %i.mw = sub nsw i64 8001, %umin553.i            ; 2 uses
  %xtraiter199 = and i64 %i.mw, 3                 ; 3 uses
  %i.mx = add nsw i32 %i.mv, -7998
  %i.my = icmp ult i32 %i.mx, 3
  br i1 %i.my, label %.epil.preheader198, label %.new196

.new196:                                          ; preds = %bb.ak
  %unroll_iter205 = and i64 %i.mw, -4
  br label %bb.am

.unr-lcssa197:                                    ; preds = %bb.am
  %lcmp.mod201.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod201.not, label %.epilog-lcssa202, label %.epil.preheader198

.epil.preheader198:                               ; preds = %.unr-lcssa197, %bb.ak
  %indvars.iv554.i.epil.init = phi i64 [ %umin553.i, %bb.ak ], [ %indvars.iv.next555.i.3, %.unr-lcssa197 ]
  %.0379470.i.epil.init = phi i64 [ 0, %bb.ak ], [ %i.nv, %.unr-lcssa197 ]
  %lcmp.mod204 = icmp ne i64 %xtraiter199, 0
  call void @llvm.assume(i1 %lcmp.mod204)
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader198
  %indvars.iv554.i.epil = phi i64 [ %indvars.iv554.i.epil.init, %.epil.preheader198 ], [ %indvars.iv.next555.i.epil, %bb.al ] ; 2 uses
  %.0379470.i.epil = phi i64 [ %.0379470.i.epil.init, %.epil.preheader198 ], [ %i.nc, %bb.al ]
  %epil.iter200 = phi i64 [ 0, %.epil.preheader198 ], [ %epil.iter200.next, %bb.al ]
  %i.mz = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %indvars.iv554.i.epil
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !128
  %i.nb = zext i32 %i.na to i64
  %i.nc = add i64 %.0379470.i.epil, %i.nb         ; 2 uses
  %indvars.iv.next555.i.epil = add nuw nsw i64 %indvars.iv554.i.epil, 1
  %epil.iter200.next = add i64 %epil.iter200, 1   ; 2 uses
  %epil.iter200.cmp.not = icmp eq i64 %epil.iter200.next, %xtraiter199
  br i1 %epil.iter200.cmp.not, label %.epilog-lcssa202, label %bb.al, !llvm.loop !132

.epilog-lcssa202:                                 ; preds = %bb.al, %.unr-lcssa197
  %.lcssa159 = phi i64 [ %i.nv, %.unr-lcssa197 ], [ %i.nc, %bb.al ] ; 4 uses
  %.not416.i = icmp eq i64 %.lcssa159, 0
  br i1 %.not416.i, label %bb.av, label %bb.an

bb.am:                                            ; preds = %bb.am, %.new196
  %indvars.iv554.i = phi i64 [ %umin553.i, %.new196 ], [ %indvars.iv.next555.i.3, %bb.am ] ; 5 uses
  %.0379470.i = phi i64 [ 0, %.new196 ], [ %i.nv, %bb.am ]
  %niter206 = phi i64 [ 0, %.new196 ], [ %niter206.next.3, %bb.am ]
  %i.nd = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %indvars.iv554.i
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !128
  %i.nf = zext i32 %i.ne to i64
  %i.ng = add i64 %.0379470.i, %i.nf
  %i.nh = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %indvars.iv554.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !128
  %i.nk = zext i32 %i.nj to i64
  %i.nl = add i64 %i.ng, %i.nk
  %i.nm = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %indvars.iv554.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 48
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !128
  %i.np = zext i32 %i.no to i64
  %i.nq = add i64 %i.nl, %i.np
  %i.nr = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %indvars.iv554.i
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 72
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !128
  %i.nu = zext i32 %i.nt to i64
  %i.nv = add i64 %i.nq, %i.nu                    ; 3 uses
  %indvars.iv.next555.i.3 = add nuw nsw i64 %indvars.iv554.i, 4 ; 2 uses
  %niter206.next.3 = add i64 %niter206, 4         ; 2 uses
  %niter206.ncmp.3 = icmp eq i64 %niter206.next.3, %unroll_iter205
  br i1 %niter206.ncmp.3, label %.unr-lcssa197, label %bb.am, !llvm.loop !133

bb.an:                                            ; preds = %.epilog-lcssa202
  %i.nw = mul i64 %.lcssa159, 10
  %i.nx = uitofp nsz i64 %i.nw to double
  %i.ny = call nsz double @llvm.fmuladd.f64(double %i.nx, double 1.000000e-02, double 5.000000e-01)
  %i.nz = fptoui double %i.ny to i64
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %indvars.iv.next559.i = add nuw nsw i64 %indvars.iv558.i, 1 ; 2 uses
  %exitcond561.not.i = icmp eq i64 %indvars.iv.next559.i, 8001
  br i1 %exitcond561.not.i, label %.loopexit443.i, label %bb.ap, !llvm.loop !134

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %indvars.iv558.i = phi i64 [ %umin553.i, %bb.an ], [ %indvars.iv.next559.i, %bb.ao ] ; 2 uses
  %.0376472.i = phi i64 [ 0, %bb.an ], [ %i.od, %bb.ao ]
  %i.oa = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %indvars.iv558.i ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !128
  %i.oc = zext i32 %i.ob to i64
  %i.od = add i64 %.0376472.i, %i.oc              ; 2 uses
  %.not417.i = icmp ult i64 %i.od, %i.nz
  br i1 %.not417.i, label %bb.ao, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.of = load double, ptr %i.oe, align 8, !tbaa !135
  store double %i.of, ptr %i.ef, align 8, !tbaa !67
  br label %.loopexit443.i

.loopexit443.i:                                   ; preds = %bb.ao, %bb.aq
  %i.og = mul i64 %.lcssa159, 95
  %i.oh = uitofp nsz i64 %i.og to double
  %i.oi = call nsz double @llvm.fmuladd.f64(double %i.oh, double 1.000000e-02, double 5.000000e-01)
  %i.oj = fptoui double %i.oi to i64              ; 2 uses
  br label %bb.au

bb.ar:                                            ; preds = %bb.au
  %.not628.i = icmp eq i32 %.0374475.i, 0
  br i1 %.not628.i, label %.loopexit.loopexit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %1 = sext i32 %.0374475.i to i64
  %i.ok = getelementptr [24 x i8], ptr %i.lw, i64 %1 ; 2 uses
  %i.ol = getelementptr i8, ptr %i.ok, i64 -24
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !128
  %i.on = zext i32 %i.om to i64
  %i.oo = call i64 @llvm.usub.sat.i64(i64 %i.ot, i64 %i.on) ; 2 uses
  %i.op = icmp ult i64 %i.oo, %i.oj
  br i1 %i.op, label %.split.loop.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %2 = add nsw i32 %.0374475.i, -2
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.loopexit443.i
  %.0374475.i = phi i32 [ 8000, %.loopexit443.i ], [ %2, %bb.at ] ; 4 uses
  %.1377474.i = phi i64 [ %.lcssa159, %.loopexit443.i ], [ %i.oo, %bb.at ]
  %3 = zext nneg i32 %.0374475.i to i64
  %i.oq = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %3 ; 2 uses
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !128
  %i.os = zext i32 %i.or to i64
  %i.ot = call i64 @llvm.usub.sat.i64(i64 %.1377474.i, i64 %i.os) ; 2 uses
  %i.ou = icmp ult i64 %i.ot, %i.oj
  br i1 %i.ou, label %.split.loop.exit223, label %bb.ar

.split.loop.exit:                                 ; preds = %bb.as
  %i.ov = getelementptr i8, ptr %i.ok, i64 -24
  br label %.split.loop.exit223

.split.loop.exit223:                              ; preds = %bb.au, %.split.loop.exit
  %.lcssa162 = phi ptr [ %i.ov, %.split.loop.exit ], [ %i.oq, %bb.au ]
  %i.ow = getelementptr inbounds nuw i8, ptr %.lcssa162, i64 16
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !135 ; 2 uses
  store double %i.ox, ptr %i.eg, align 8, !tbaa !68
  br label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.ar
  %.pre600.i = load double, ptr %i.eg, align 8, !tbaa !68
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.split.loop.exit223
  %i.oy = phi double [ %.pre600.i, %.loopexit.loopexit.i ], [ %i.ox, %.split.loop.exit223 ]
  %i.oz = load double, ptr %i.ef, align 8, !tbaa !67
  %i.pa = fsub nsz double %i.oy, %i.oz
  store double %i.pa, ptr %i.eh, align 8, !tbaa !66
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.i, %.epilog-lcssa202, %bb.aj
  br i1 %i.dy, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.pb = load i32, ptr %i.dz, align 8, !tbaa !61
  %.not418.i = icmp eq i32 %i.pb, 0
  br i1 %.not418.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.pc = load double, ptr %i.ea, align 8, !tbaa !62 ; 2 uses
  %i.pd = fsub nsz double %i.ie, %i.pc
  %i.pe = fsub nsz double %i.jl, %i.pc
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.0390.i = phi nsz double [ %i.pd, %bb.ax ], [ %i.ie, %bb.aw ], [ %i.ie, %bb.av ] ; 6 uses
  %.0389.i = phi nsz double [ %i.pe, %bb.ax ], [ %i.jl, %bb.aw ], [ %i.jl, %bb.av ] ; 6 uses
  %.not419.i = icmp eq i32 %i.gp, 0
  br i1 %.not419.i, label %bb.bg, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pf = load i32, ptr %i.ei, align 4, !tbaa !136
  %i.pg = icmp eq i32 %i.pf, 0
  %i.ph = load i32, ptr %i.ej, align 8, !tbaa !137
  %i.pi = sitofp nsz i32 %i.ph to double          ; 2 uses
  %i.pj = fsub nsz double %.0389.i, %i.pi         ; 2 uses
  %i.pk = fsub nsz double %.0390.i, %i.pi
  %.0368.i = select nsz i1 %i.pg, double %i.pk, double %i.pj
  %i.pl = load i32, ptr %i.ek, align 8, !tbaa !51
  %i.pm = shl nsw i32 %i.pl, 1
  %i.pn = sitofp nsz i32 %i.pm to double
  %i.po = load i32, ptr %i.el, align 4, !tbaa !52 ; 2 uses
  %i.pp = sitofp nsz i32 %i.po to float
  %i.pq = sitofp nsz i32 %i.po to double
  %i.pr = load i32, ptr %i.em, align 4, !tbaa !138
  %i.ps = sitofp nsz i32 %i.pr to double
  %i.pt = insertelement <2 x double> poison, double %i.pj, i64 0
  %i.pu = insertelement <2 x double> %i.pt, double %.0368.i, i64 1
  %i.pv = insertelement <2 x double> poison, double %i.pn, i64 0
  %i.pw = shufflevector <2 x double> %i.pv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.px = fadd nsz <2 x double> %i.pu, %i.pw      ; 2 uses
  %i.py = fptrunc <2 x double> %i.px to <2 x float>
  %i.pz = fcmp nsz ogt <2 x double> %i.px, splat (double f0x3690000000000000)
  %i.qa = select <2 x i1> %i.pz, <2 x float> %i.py, <2 x float> zeroinitializer ; 2 uses
  %i.qb = insertelement <2 x float> poison, float %i.pp, i64 0
  %i.qc = shufflevector <2 x float> %i.qb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qd = fcmp nsz ogt <2 x float> %i.qa, %i.qc
  %i.qe = select <2 x i1> %i.qd, <2 x float> %i.qc, <2 x float> %i.qa
  %i.qf = fpext <2 x float> %i.qe to <2 x double>
  %i.qg = insertelement <2 x double> poison, double %i.pq, i64 0
  %i.qh = shufflevector <2 x double> %i.qg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qi = fsub nsz <2 x double> %i.qh, %i.qf
  %i.qj = insertelement <2 x double> poison, double %i.ps, i64 0
  %i.qk = shufflevector <2 x double> %i.qj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ql = fmul nsz <2 x double> %i.qi, %i.qk
  %i.qm = fdiv nsz <2 x double> %i.ql, %i.qh      ; 2 uses
  %i.qn = extractelement <2 x double> %i.qm, i64 0
  %i.qo = fptosi double %i.qn to i32
  %i.qp = extractelement <2 x double> %i.qm, i64 1
  %i.qq = fptosi double %i.qp to i32
  %i.qr = call i32 @ff_inlink_make_frame_writable(ptr noundef %i.gm, ptr noundef nonnull %i.en) #14 ; 2 uses
  %i.qs = icmp slt i32 %i.qr, 0
  br i1 %i.qs, label %.thread437.i, label %bb.ba

.thread437.i:                                     ; preds = %bb.az
  call void @av_frame_free(ptr noundef nonnull %i.a) #14
  %i.qt = getelementptr inbounds nuw i8, ptr %i.am, i64 320
  store ptr null, ptr %i.qt, align 8, !tbaa !78
  br label %filter_frame.exit

bb.ba:                                            ; preds = %bb.az
  %i.qu = load ptr, ptr %i.en, align 8, !tbaa !139 ; 8 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !55 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 64 ; 3 uses
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !57 ; 2 uses
  %i.qy = load i32, ptr %i.em, align 4, !tbaa !138
  %i.qz = icmp sgt i32 %i.qy, 0
  br i1 %i.qz, label %.lr.ph479.preheader.i, label %._crit_edge480.i

.lr.ph479.preheader.i:                            ; preds = %bb.ba
  %i.ra = load i32, ptr %i.ep, align 4, !tbaa !140
  %i.rb = mul nsw i32 %i.ra, %i.qx
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds i8, ptr %i.qv, i64 %i.rc
  %i.re = load i32, ptr %i.eo, align 8, !tbaa !141
  %i.rf = mul nsw i32 %i.re, 3
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr inbounds i8, ptr %i.rd, i64 %i.rg
  %i.ri = sext i32 %i.qo to i64
  br label %.lr.ph479.i

.lr.ph479.i:                                      ; preds = %get_graph_color.exit.i, %.lr.ph479.preheader.i
  %indvars.iv562.i.a = phi i64 [ 0, %.lr.ph479.preheader.i ], [ %indvars.iv.next563.i, %get_graph_color.exit.i ] ; 6 uses
  %.0369477.i = phi ptr [ %i.rh, %.lr.ph479.preheader.i ], [ %i.sr, %get_graph_color.exit.i ] ; 4 uses
  %i.rj = load i32, ptr %i.eq, align 4, !tbaa !142
  %i.rk = load i32, ptr %i.er, align 8, !tbaa !143
  %i.rl = load ptr, ptr %i.es, align 8, !tbaa !144
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %indvars.iv562.i.a
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !57
  %.not.i.i = icmp eq i32 %i.rn, 0
  br i1 %.not.i.i, label %bb.bb, label %get_graph_color.exit.i

bb.bb:                                            ; preds = %.lr.ph479.i
  %i.ro = load i32, ptr %i.et, align 8, !tbaa !145
  %i.rp = zext i32 %i.ro to i64
  %i.rq = icmp eq i64 %indvars.iv562.i.a, %i.rp
  %i.rr = select i1 %i.rq, i64 4, i64 0
  br label %get_graph_color.exit.i

get_graph_color.exit.i:                           ; preds = %bb.bb, %.lr.ph479.i
  %i.rs = phi i64 [ 4, %.lr.ph479.i ], [ %i.rr, %bb.bb ]
  %.not14.i.i = icmp slt i64 %indvars.iv562.i.a, %i.ri
  %i.rt = sext i32 %i.rk to i64
  %i.ru = icmp slt i64 %indvars.iv562.i.a, %i.rt
  %i.rv = sext i32 %i.rj to i64
  %i.rw = icmp sgt i64 %indvars.iv562.i.a, %i.rv
  %i.rx = zext i1 %i.rw to i64
  %i.ry = select i1 %i.ru, i64 8, i64 0
  %i.rz = select i1 %.not14.i.i, i64 0, i64 2
  %i.sa = or disjoint i64 %i.rz, %i.rx
  %i.sb = or disjoint i64 %i.sa, %i.ry
  %i.sc = or disjoint i64 %i.sb, %i.rs
  %i.sd = mul nuw nsw i64 %i.sc, 3
  %i.se = getelementptr inbounds nuw i8, ptr @graph_colors, i64 %i.sd
  %i.sf = getelementptr inbounds nuw i8, ptr %.0369477.i, i64 3
  %i.sg = load i32, ptr %i.eu, align 8, !tbaa !146
  %i.sh = mul i32 %i.sg, 3
  %i.si = add i32 %i.sh, -3
  %i.sj = sext i32 %i.si to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0369477.i, ptr nonnull align 1 %i.sf, i64 %i.sj, i1 false)
  %i.sk = load i32, ptr %i.eu, align 8, !tbaa !146
  %i.sl = mul i32 %i.sk, 3
  %i.sm = add i32 %i.sl, -3
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds i8, ptr %.0369477.i, i64 %i.sn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.so, ptr noundef nonnull align 1 dereferenceable(3) %i.se, i64 3, i1 false)
  %i.sp = load i32, ptr %i.qw, align 8, !tbaa !57 ; 2 uses
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr inbounds i8, ptr %.0369477.i, i64 %i.sq
  %indvars.iv.next563.i = add nuw nsw i64 %indvars.iv562.i.a, 1 ; 2 uses
  %i.ss = load i32, ptr %i.em, align 4, !tbaa !138
  %i.st = sext i32 %i.ss to i64
  %i.su = icmp slt i64 %indvars.iv.next563.i, %i.st
  br i1 %i.su, label %.lr.ph479.i, label %._crit_edge480.loopexit.i, !llvm.loop !147

._crit_edge480.loopexit.i:                        ; preds = %get_graph_color.exit.i
  %.pre601.i = load ptr, ptr %i.qu, align 8, !tbaa !55
  br label %._crit_edge480.i

._crit_edge480.i:                                 ; preds = %._crit_edge480.loopexit.i, %bb.ba
  %i.sv = phi i32 [ %i.sp, %._crit_edge480.loopexit.i ], [ %i.qx, %bb.ba ] ; 2 uses
  %i.sw = phi ptr [ %.pre601.i, %._crit_edge480.loopexit.i ], [ %i.qv, %bb.ba ]
  %i.sx = load i32, ptr %i.ex, align 4, !tbaa !148 ; 2 uses
  %i.sy = icmp sgt i32 %i.sx, 0
  br i1 %i.sy, label %.lr.ph487.preheader.i, label %._crit_edge488.i

.lr.ph487.preheader.i:                            ; preds = %._crit_edge480.i
  %i.sz = load i32, ptr %i.ew, align 4, !tbaa !149
  %i.ta = mul nsw i32 %i.sz, %i.sv
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds i8, ptr %i.sw, i64 %i.tb
  %i.td = load i32, ptr %i.ev, align 8, !tbaa !150
  %i.te = mul nsw i32 %i.td, 3
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds i8, ptr %i.tc, i64 %i.tf
  %i.th = sext i32 %i.qq to i64
  br label %.lr.ph487.i

.lr.ph487.i:                                      ; preds = %._crit_edge483.i, %.lr.ph487.preheader.i
  %i.ti = phi i32 [ %i.sx, %.lr.ph487.preheader.i ], [ %i.un, %._crit_edge483.i ]
  %i.tj = phi i32 [ %i.sv, %.lr.ph487.preheader.i ], [ %i.uo, %._crit_edge483.i ]
  %indvars.iv568.i.a = phi i64 [ 0, %.lr.ph487.preheader.i ], [ %indvars.iv.next569.i, %._crit_edge483.i ] ; 6 uses
end_hunk_0
