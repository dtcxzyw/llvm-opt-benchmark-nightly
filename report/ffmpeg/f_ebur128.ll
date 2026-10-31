Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/f_ebur128?download=true
inline.NumInlined: 25
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@activate:bb.a
  store double %i.mq, ptr %i.ee, align 8, !tbaa !160
  %i.mr = fadd nsz double %i.mq, 7.000000e+01
  %i.ms = fmul nsz double %i.mr, 1.000000e+02
  %i.mt = fptosi double %i.ms to i32              ; 2 uses
  %i.mu = call i32 @llvm.smax.i32(i32 %i.mt, i32 0)
  %i.mv = call i32 @llvm.umin.i32(i32 %i.mu, i32 8000)
  %umin553.i = zext nneg i32 %i.mv to i64         ; 4 uses
  %i.mw = sub nuw nsw i64 8001, %umin553.i        ; 2 uses
  %xtraiter199 = and i64 %i.mw, 3                 ; 3 uses
  %i.mx = icmp sgt i32 %i.mt, 7997
  br i1 %i.mx, label %.epil.preheader198, label %.new196

.new196:                                          ; preds = %bb.ak
  %unroll_iter205 = and i64 %i.mw, 8188
  br label %bb.am

.unr-lcssa197:                                    ; preds = %bb.am
  %lcmp.mod201.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod201.not, label %.epilog-lcssa202, label %.epil.preheader198

.epil.preheader198:                               ; preds = %.unr-lcssa197, %bb.ak
  %indvars.iv554.i.epil.init = phi i64 [ %umin553.i, %bb.ak ], [ %indvars.iv.next555.i.3, %.unr-lcssa197 ]
  %.0379470.i.epil.init = phi i64 [ 0, %bb.ak ], [ %i.nu, %.unr-lcssa197 ]
  %lcmp.mod204 = icmp ne i64 %xtraiter199, 0
  call void @llvm.assume(i1 %lcmp.mod204)
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader198
  %indvars.iv554.i.epil = phi i64 [ %indvars.iv554.i.epil.init, %.epil.preheader198 ], [ %indvars.iv.next555.i.epil, %bb.al ] ; 2 uses
  %.0379470.i.epil = phi i64 [ %.0379470.i.epil.init, %.epil.preheader198 ], [ %i.nb, %bb.al ]
  %epil.iter200 = phi i64 [ 0, %.epil.preheader198 ], [ %epil.iter200.next, %bb.al ]
  %i.my = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv554.i.epil
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !157
  %i.na = zext i32 %i.mz to i64
  %i.nb = add i64 %.0379470.i.epil, %i.na         ; 2 uses
  %indvars.iv.next555.i.epil = add nuw nsw i64 %indvars.iv554.i.epil, 1
  %epil.iter200.next = add i64 %epil.iter200, 1   ; 2 uses
  %epil.iter200.cmp.not = icmp eq i64 %epil.iter200.next, %xtraiter199
  br i1 %epil.iter200.cmp.not, label %.epilog-lcssa202, label %bb.al, !llvm.loop !123

.epilog-lcssa202:                                 ; preds = %bb.al, %.unr-lcssa197
  %.lcssa159 = phi i64 [ %i.nu, %.unr-lcssa197 ], [ %i.nb, %bb.al ] ; 4 uses
  %.not416.i = icmp eq i64 %.lcssa159, 0
  br i1 %.not416.i, label %bb.av, label %bb.an

bb.am:                                            ; preds = %bb.am, %.new196
  %indvars.iv554.i = phi i64 [ %umin553.i, %.new196 ], [ %indvars.iv.next555.i.3, %bb.am ] ; 5 uses
  %.0379470.i = phi i64 [ 0, %.new196 ], [ %i.nu, %bb.am ]
  %niter206 = phi i64 [ 0, %.new196 ], [ %niter206.next.3, %bb.am ]
  %i.nc = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv554.i
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !157
  %i.ne = zext i32 %i.nd to i64
  %i.nf = add i64 %.0379470.i, %i.ne
  %i.ng = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv554.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !157
  %i.nj = zext i32 %i.ni to i64
  %i.nk = add i64 %i.nf, %i.nj
  %i.nl = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv554.i
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 48
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !157
  %i.no = zext i32 %i.nn to i64
  %i.np = add i64 %i.nk, %i.no
  %i.nq = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv554.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 72
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !157
  %i.nt = zext i32 %i.ns to i64
  %i.nu = add i64 %i.np, %i.nt                    ; 3 uses
  %indvars.iv.next555.i.3 = add nuw nsw i64 %indvars.iv554.i, 4 ; 2 uses
  %niter206.next.3 = add i64 %niter206, 4         ; 2 uses
  %niter206.ncmp.3 = icmp eq i64 %niter206.next.3, %unroll_iter205
  br i1 %niter206.ncmp.3, label %.unr-lcssa197, label %bb.am, !llvm.loop !124

bb.an:                                            ; preds = %.epilog-lcssa202
  %i.nv = mul i64 %.lcssa159, 10
  %i.nw = uitofp nsz i64 %i.nv to double
  %i.nx = call nsz double @llvm.fmuladd.f64(double %i.nw, double 1.000000e-02, double 5.000000e-01)
  %i.ny = fptoui double %i.nx to i64
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %indvars.iv.next559.i = add nuw nsw i64 %indvars.iv558.i, 1 ; 2 uses
  %exitcond561.not.i = icmp eq i64 %indvars.iv.next559.i, 8001
  br i1 %exitcond561.not.i, label %.loopexit443.i, label %bb.ap, !llvm.loop !125

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %indvars.iv558.i = phi i64 [ %umin553.i, %bb.an ], [ %indvars.iv.next559.i, %bb.ao ] ; 2 uses
  %.0376472.i = phi i64 [ 0, %bb.an ], [ %i.oc, %bb.ao ]
  %i.nz = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv558.i ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !157
  %i.ob = zext i32 %i.oa to i64
  %i.oc = add i64 %.0376472.i, %i.ob              ; 2 uses
  %.not417.i = icmp ult i64 %i.oc, %i.ny
  br i1 %.not417.i, label %bb.ao, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.oe = load double, ptr %i.od, align 8, !tbaa !79
  store double %i.oe, ptr %i.ef, align 8, !tbaa !48
  br label %.loopexit443.i

.loopexit443.i:                                   ; preds = %bb.ao, %bb.aq
  %i.of = mul i64 %.lcssa159, 95
  %i.og = uitofp nsz i64 %i.of to double
  %i.oh = call nsz double @llvm.fmuladd.f64(double %i.og, double 1.000000e-02, double 5.000000e-01)
  %i.oi = fptoui double %i.oh to i64              ; 2 uses
  br label %bb.au

bb.ar:                                            ; preds = %bb.au
  %.not628.i = icmp eq i32 %.0374475.i, 0
  br i1 %.not628.i, label %.loopexit.loopexit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.oj = sext i32 %.0374475.i to i64
  %i.ok = getelementptr [24 x i8], ptr %i.mb, i64 %i.oj ; 2 uses
  %i.ol = getelementptr i8, ptr %i.ok, i64 -24
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !157
  %i.on = zext i32 %i.om to i64
  %i.oo = call i64 @llvm.usub.sat.i64(i64 %i.ov, i64 %i.on) ; 2 uses
  %i.op = icmp ult i64 %i.oo, %i.oi
  br i1 %i.op, label %.split.loop.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.oq = add nsw i32 %.0374475.i, -2
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.loopexit443.i
  %.0374475.i = phi i32 [ 8000, %.loopexit443.i ], [ %i.oq, %bb.at ] ; 4 uses
  %.1377474.i = phi i64 [ %.lcssa159, %.loopexit443.i ], [ %i.oo, %bb.at ]
  %i.or = zext nneg i32 %.0374475.i to i64
  %i.os = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %i.or ; 2 uses
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !157
  %i.ou = zext i32 %i.ot to i64
  %i.ov = call i64 @llvm.usub.sat.i64(i64 %.1377474.i, i64 %i.ou) ; 2 uses
  %i.ow = icmp ult i64 %i.ov, %i.oi
  br i1 %i.ow, label %.split.loop.exit223, label %bb.ar

.split.loop.exit:                                 ; preds = %bb.as
  %i.ox = getelementptr i8, ptr %i.ok, i64 -24
  br label %.split.loop.exit223

.split.loop.exit223:                              ; preds = %bb.au, %.split.loop.exit
  %.lcssa162 = phi ptr [ %i.ox, %.split.loop.exit ], [ %i.os, %bb.au ]
  %i.oy = getelementptr inbounds nuw i8, ptr %.lcssa162, i64 16
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !79 ; 2 uses
  store double %i.oz, ptr %i.eg, align 8, !tbaa !49
  br label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.ar
  %.pre600.i = load double, ptr %i.eg, align 8, !tbaa !49
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.split.loop.exit223
  %i.pa = phi double [ %.pre600.i, %.loopexit.loopexit.i ], [ %i.oz, %.split.loop.exit223 ]
  %i.pb = load double, ptr %i.ef, align 8, !tbaa !48
  %i.pc = fsub nsz double %i.pa, %i.pb
  store double %i.pc, ptr %i.eh, align 8, !tbaa !47
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.i, %.epilog-lcssa202, %bb.aj
  br i1 %i.dy, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.pd = load i32, ptr %i.dz, align 8, !tbaa !44
  %.not418.i = icmp eq i32 %i.pd, 0
  br i1 %.not418.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.pe = load double, ptr %i.ea, align 8, !tbaa !45 ; 2 uses
  %i.pf = fsub nsz double %i.ie, %i.pe
  %i.pg = fsub nsz double %i.jl, %i.pe
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.0390.i = phi nsz double [ %i.pf, %bb.ax ], [ %i.ie, %bb.aw ], [ %i.ie, %bb.av ] ; 6 uses
  %.0389.i = phi nsz double [ %i.pg, %bb.ax ], [ %i.jl, %bb.aw ], [ %i.jl, %bb.av ] ; 6 uses
  %.not419.i = icmp eq i32 %i.gp, 0
  br i1 %.not419.i, label %bb.bg, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ph = load i32, ptr %i.ei, align 4, !tbaa !161
  %i.pi = icmp eq i32 %i.ph, 0
  %i.pj = load i32, ptr %i.ej, align 8, !tbaa !162
  %i.pk = sitofp nsz i32 %i.pj to double          ; 2 uses
  %i.pl = fsub nsz double %.0389.i, %i.pk         ; 2 uses
  %i.pm = fsub nsz double %.0390.i, %i.pk
  %.0368.i = select nsz i1 %i.pi, double %i.pm, double %i.pl
  %i.pn = load i32, ptr %i.ek, align 8, !tbaa !39
  %i.po = shl nsw i32 %i.pn, 1
  %i.pp = sitofp nsz i32 %i.po to double
  %i.pq = load i32, ptr %i.el, align 4, !tbaa !40 ; 2 uses
  %i.pr = sitofp nsz i32 %i.pq to float
  %i.ps = load i32, ptr %i.em, align 4, !tbaa !80
  %i.pt = sitofp nsz i32 %i.pq to double
  %i.pu = sitofp nsz i32 %i.ps to double
  %i.pv = insertelement <2 x double> poison, double %i.pl, i64 0
  %i.pw = insertelement <2 x double> %i.pv, double %.0368.i, i64 1
  %i.px = insertelement <2 x double> poison, double %i.pp, i64 0
  %i.py = shufflevector <2 x double> %i.px, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pz = fadd nsz <2 x double> %i.pw, %i.py      ; 2 uses
  %i.qa = fptrunc <2 x double> %i.pz to <2 x float>
  %i.qb = fcmp nsz ogt <2 x double> %i.pz, splat (double f0x3690000000000000)
  %i.qc = select <2 x i1> %i.qb, <2 x float> %i.qa, <2 x float> zeroinitializer ; 2 uses
  %i.qd = insertelement <2 x float> poison, float %i.pr, i64 0
  %i.qe = shufflevector <2 x float> %i.qd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qf = fcmp nsz ogt <2 x float> %i.qc, %i.qe
  %i.qg = select <2 x i1> %i.qf, <2 x float> %i.qe, <2 x float> %i.qc
  %i.qh = fpext <2 x float> %i.qg to <2 x double>
  %i.qi = insertelement <2 x double> poison, double %i.pt, i64 0
  %i.qj = shufflevector <2 x double> %i.qi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qk = fsub nsz <2 x double> %i.qj, %i.qh
  %i.ql = insertelement <2 x double> poison, double %i.pu, i64 0
  %i.qm = shufflevector <2 x double> %i.ql, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qn = fmul nsz <2 x double> %i.qk, %i.qm
  %i.qo = fdiv nsz <2 x double> %i.qn, %i.qj      ; 2 uses
  %i.qp = extractelement <2 x double> %i.qo, i64 0
  %i.qq = fptosi double %i.qp to i32
  %i.qr = extractelement <2 x double> %i.qo, i64 1
  %i.qs = fptosi double %i.qr to i32
  %i.qt = call i32 @ff_inlink_make_frame_writable(ptr noundef %i.gm, ptr noundef nonnull %i.en) #14 ; 2 uses
  %i.qu = icmp slt i32 %i.qt, 0
  br i1 %i.qu, label %.thread437.i, label %bb.ba

.thread437.i:                                     ; preds = %bb.az
  call void @av_frame_free(ptr noundef nonnull %i.a) #14
  %i.qv = getelementptr inbounds nuw i8, ptr %i.am, i64 320
  store ptr null, ptr %i.qv, align 8, !tbaa !140
  br label %filter_frame.exit

bb.ba:                                            ; preds = %bb.az
  %i.qw = load ptr, ptr %i.en, align 8, !tbaa !81 ; 8 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !41 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 64 ; 3 uses
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !42 ; 2 uses
  %i.ra = load i32, ptr %i.em, align 4, !tbaa !80
  %i.rb = icmp sgt i32 %i.ra, 0
  br i1 %i.rb, label %.lr.ph479.preheader.i, label %._crit_edge480.i

.lr.ph479.preheader.i:                            ; preds = %bb.ba
  %i.rc = load i32, ptr %i.ep, align 4, !tbaa !82
  %i.rd = mul nsw i32 %i.rc, %i.qz
  %i.re = sext i32 %i.rd to i64
  %i.rf = getelementptr inbounds i8, ptr %i.qx, i64 %i.re
  %i.rg = load i32, ptr %i.eo, align 8, !tbaa !83
  %i.rh = mul nsw i32 %i.rg, 3
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds i8, ptr %i.rf, i64 %i.ri
  %i.rk = sext i32 %i.qq to i64
  br label %.lr.ph479.i

.lr.ph479.i:                                      ; preds = %get_graph_color.exit.i, %.lr.ph479.preheader.i
  %indvars.iv562.i = phi i64 [ 0, %.lr.ph479.preheader.i ], [ %indvars.iv.next563.i, %get_graph_color.exit.i ] ; 6 uses
  %.0369477.i = phi ptr [ %i.rj, %.lr.ph479.preheader.i ], [ %i.st, %get_graph_color.exit.i ] ; 4 uses
  %i.rl = load i32, ptr %i.eq, align 4, !tbaa !84
  %i.rm = load i32, ptr %i.er, align 8, !tbaa !85
  %i.rn = load ptr, ptr %i.es, align 8, !tbaa !86
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %indvars.iv562.i
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !42
  %.not.i.i = icmp eq i32 %i.rp, 0
  br i1 %.not.i.i, label %bb.bb, label %get_graph_color.exit.i

bb.bb:                                            ; preds = %.lr.ph479.i
  %i.rq = load i32, ptr %i.et, align 8, !tbaa !87
  %i.rr = zext i32 %i.rq to i64
  %i.rs = icmp eq i64 %indvars.iv562.i, %i.rr
  %i.rt = select i1 %i.rs, i64 4, i64 0
  br label %get_graph_color.exit.i

get_graph_color.exit.i:                           ; preds = %bb.bb, %.lr.ph479.i
  %i.ru = phi i64 [ 4, %.lr.ph479.i ], [ %i.rt, %bb.bb ]
  %.not14.i.i = icmp slt i64 %indvars.iv562.i, %i.rk
  %i.rv = sext i32 %i.rm to i64
  %i.rw = icmp slt i64 %indvars.iv562.i, %i.rv
  %i.rx = sext i32 %i.rl to i64
  %i.ry = icmp sgt i64 %indvars.iv562.i, %i.rx
  %i.rz = zext i1 %i.ry to i64
  %i.sa = select i1 %i.rw, i64 8, i64 0
  %i.sb = select i1 %.not14.i.i, i64 0, i64 2
  %i.sc = or disjoint i64 %i.sb, %i.rz
  %i.sd = or disjoint i64 %i.sc, %i.sa
  %i.se = or disjoint i64 %i.sd, %i.ru
  %i.sf = mul nuw nsw i64 %i.se, 3
  %i.sg = getelementptr inbounds nuw i8, ptr @graph_colors, i64 %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %.0369477.i, i64 3
  %i.si = load i32, ptr %i.eu, align 8, !tbaa !88
  %i.sj = mul i32 %i.si, 3
  %i.sk = add i32 %i.sj, -3
  %i.sl = sext i32 %i.sk to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0369477.i, ptr nonnull align 1 %i.sh, i64 %i.sl, i1 false)
  %i.sm = load i32, ptr %i.eu, align 8, !tbaa !88
  %i.sn = mul i32 %i.sm, 3
  %i.so = add i32 %i.sn, -3
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr inbounds i8, ptr %.0369477.i, i64 %i.sp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.sq, ptr noundef nonnull align 1 dereferenceable(3) %i.sg, i64 3, i1 false)
  %i.sr = load i32, ptr %i.qy, align 8, !tbaa !42 ; 2 uses
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds i8, ptr %.0369477.i, i64 %i.ss
  %indvars.iv.next563.i = add nuw nsw i64 %indvars.iv562.i, 1 ; 2 uses
  %i.su = load i32, ptr %i.em, align 4, !tbaa !80
  %i.sv = sext i32 %i.su to i64
  %i.sw = icmp slt i64 %indvars.iv.next563.i, %i.sv
  br i1 %i.sw, label %.lr.ph479.i, label %._crit_edge480.loopexit.i, !llvm.loop !126

._crit_edge480.loopexit.i:                        ; preds = %get_graph_color.exit.i
  %.pre601.i = load ptr, ptr %i.qw, align 8, !tbaa !41
  br label %._crit_edge480.i

._crit_edge480.i:                                 ; preds = %._crit_edge480.loopexit.i, %bb.ba
  %i.sx = phi i32 [ %i.sr, %._crit_edge480.loopexit.i ], [ %i.qz, %bb.ba ] ; 2 uses
  %i.sy = phi ptr [ %.pre601.i, %._crit_edge480.loopexit.i ], [ %i.qx, %bb.ba ]
  %i.sz = load i32, ptr %i.ex, align 4, !tbaa !89 ; 2 uses
  %i.ta = icmp sgt i32 %i.sz, 0
  br i1 %i.ta, label %.lr.ph487.preheader.i, label %._crit_edge488.i

.lr.ph487.preheader.i:                            ; preds = %._crit_edge480.i
  %i.tb = load i32, ptr %i.ew, align 4, !tbaa !90
  %i.tc = mul nsw i32 %i.tb, %i.sx
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds i8, ptr %i.sy, i64 %i.td
  %i.tf = load i32, ptr %i.ev, align 8, !tbaa !91
  %i.tg = mul nsw i32 %i.tf, 3
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds i8, ptr %i.te, i64 %i.th
  %i.tj = sext i32 %i.qs to i64
  br label %.lr.ph487.i

.lr.ph487.i:                                      ; preds = %._crit_edge483.i, %.lr.ph487.preheader.i
  %i.tk = phi i32 [ %i.sz, %.lr.ph487.preheader.i ], [ %i.up, %._crit_edge483.i ]
  %i.tl = phi i32 [ %i.sx, %.lr.ph487.preheader.i ], [ %i.uq, %._crit_edge483.i ]
  %indvars.iv568.i = phi i64 [ 0, %.lr.ph487.preheader.i ], [ %indvars.iv.next569.i, %._crit_edge483.i ] ; 6 uses
  %.1370485.i = phi ptr [ %i.ti, %.lr.ph487.preheader.i ], [ %i.us, %._crit_edge483.i ] ; 2 uses
  %i.tm = load i32, ptr %i.eq, align 4, !tbaa !84
  %i.tn = load i32, ptr %i.er, align 8, !tbaa !85
  %i.to = load ptr, ptr %i.es, align 8, !tbaa !86
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %indvars.iv568.i
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !42
  %.not.i431.i = icmp eq i32 %i.tq, 0
  br i1 %.not.i431.i, label %bb.bc, label %get_graph_color.exit433.i

bb.bc:                                            ; preds = %.lr.ph487.i
  %i.tr = load i32, ptr %i.et, align 8, !tbaa !87
  %i.ts = zext i32 %i.tr to i64
  %i.tt = icmp eq i64 %indvars.iv568.i, %i.ts
  %i.tu = select i1 %i.tt, i64 4, i64 0
  br label %get_graph_color.exit433.i

get_graph_color.exit433.i:                        ; preds = %bb.bc, %.lr.ph487.i
  %i.tv = phi i64 [ 4, %.lr.ph487.i ], [ %i.tu, %bb.bc ]
  %.not14.i432.i = icmp slt i64 %indvars.iv568.i, %i.tj
  %i.tw = sext i32 %i.tn to i64
  %i.tx = icmp slt i64 %indvars.iv568.i, %i.tw
  %i.ty = sext i32 %i.tm to i64
  %i.tz = icmp sgt i64 %indvars.iv568.i, %i.ty
  %i.ua = zext i1 %i.tz to i64
  %i.ub = select i1 %i.tx, i64 8, i64 0
  %i.uc = select i1 %.not14.i432.i, i64 0, i64 2
  %i.ud = or disjoint i64 %i.uc, %i.ua
  %i.ue = or disjoint i64 %i.ud, %i.ub
  %i.uf = or disjoint i64 %i.ue, %i.tv
  %i.ug = mul nuw nsw i64 %i.uf, 3
  %i.uh = getelementptr inbounds nuw i8, ptr @graph_colors, i64 %i.ug
  %i.ui = load i32, ptr %i.ey, align 8, !tbaa !92
  %i.uj = icmp sgt i32 %i.ui, 0
  br i1 %i.uj, label %.lr.ph482.i, label %._crit_edge483.i

.lr.ph482.i:                                      ; preds = %get_graph_color.exit433.i, %.lr.ph482.i
  %indvars.iv565.i = phi i64 [ %indvars.iv.next566.i, %.lr.ph482.i ], [ 0, %get_graph_color.exit433.i ] ; 2 uses
  %i.uk = mul nuw nsw i64 %indvars.iv565.i, 3
  %i.ul = getelementptr inbounds nuw i8, ptr %.1370485.i, i64 %i.uk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ul, ptr noundef nonnull align 1 dereferenceable(3) %i.uh, i64 3, i1 false)
  %indvars.iv.next566.i = add nuw nsw i64 %indvars.iv565.i, 1 ; 2 uses
  %i.um = load i32, ptr %i.ey, align 8, !tbaa !92
  %i.un = sext i32 %i.um to i64
  %i.uo = icmp slt i64 %indvars.iv.next566.i, %i.un
  br i1 %i.uo, label %.lr.ph482.i, label %._crit_edge483.loopexit.i, !llvm.loop !127

._crit_edge483.loopexit.i:                        ; preds = %.lr.ph482.i
  %.pre602.i = load i32, ptr %i.qy, align 8, !tbaa !42
  %.pre603.i = load i32, ptr %i.ex, align 4, !tbaa !89
  br label %._crit_edge483.i

._crit_edge483.i:                                 ; preds = %._crit_edge483.loopexit.i, %get_graph_color.exit433.i
  %i.up = phi i32 [ %.pre603.i, %._crit_edge483.loopexit.i ], [ %i.tk, %get_graph_color.exit433.i ] ; 2 uses
  %i.uq = phi i32 [ %.pre602.i, %._crit_edge483.loopexit.i ], [ %i.tl, %get_graph_color.exit433.i ] ; 2 uses
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds i8, ptr %.1370485.i, i64 %i.ur
  %indvars.iv.next569.i = add nuw nsw i64 %indvars.iv568.i, 1 ; 2 uses
  %i.ut = sext i32 %i.up to i64
  %i.uu = icmp slt i64 %indvars.iv.next569.i, %i.ut
  br i1 %i.uu, label %.lr.ph487.i, label %._crit_edge488.i, !llvm.loop !128

._crit_edge488.i:                                 ; preds = %._crit_edge483.i, %._crit_edge480.i
  %i.uv = load i32, ptr %i.ez, align 8, !tbaa !163
  %i.uw = icmp eq i32 %i.uv, 0
  %i.ux = load i32, ptr %i.ej, align 8, !tbaa !162 ; 3 uses
  br i1 %i.uw, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %._crit_edge488.i
  %i.uy = load double, ptr %i.dx, align 8, !tbaa !46
  %i.uz = load double, ptr %i.eh, align 8, !tbaa !47
  call void (ptr, i32, i32, i32, ptr, ptr, ...) @drawtext(ptr noundef nonnull %i.qw, i32 noundef 8, i32 noundef 4, i32 noundef 1, ptr noundef nonnull @font_colors, ptr noundef nonnull @.str.89, i32 noundef %i.ux, double noundef %.0390.i, double noundef %.0389.i, double noundef %i.uy, ptr noundef nonnull @.str.51, double noundef %i.uz)
  br label %bb.bf

bb.be:                                            ; preds = %._crit_edge488.i
  %i.va = sitofp nsz i32 %i.ux to double          ; 3 uses
  %i.vb = fsub nsz double %.0390.i, %i.va
  %i.vc = fsub nsz double %.0389.i, %i.va
end_hunk_0
begin_hunk_1_@get_histogram:bb.a

.preheader:                                       ; preds = %vector.body
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 192016
  store double 1.000000e+01, ptr %i.r, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 192008
  store double f0x40277305B959834B, ptr %i.s, align 8, !tbaa !78
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @config_video_output(ptr noundef %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 22 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 196 ; 4 uses
  %.pre240 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !182 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !183  ; 2 uses
  %i.f = icmp slt i32 %i.e, 640
  %i.g = icmp slt i32 %.pre240, 480
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %._crit_edge239, label %bb.b

._crit_edge239:                                   ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.71, i32 noundef %i.e, i32 noundef %.pre240) #14
  br label %drawline.exit209

bb.b:                                             ; preds = %bb.a
  %i.h = load <2 x i32>, ptr %i.d, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = shufflevector <2 x i32> %i.h, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.l = shufflevector <4 x i32> %i.k, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.l, ptr %i.i, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 4294967306, ptr %i.m, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 42949672961, ptr %i.n, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store i32 8, ptr %i.o, align 8, !tbaa !184
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  store i32 40, ptr %i.p, align 4, !tbaa !185
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store i32 24, ptr %i.q, align 8, !tbaa !186
  %i.r = load i32, ptr %.phi.trans.insert, align 4, !tbaa !182
  %i.s = add nsw i32 %i.r, -48                    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  store i32 %i.s, ptr %i.t, align 4, !tbaa !187
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 232 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 4 uses
  store i32 20, ptr %i.v, align 8, !tbaa !92
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 244 ; 4 uses
  store i32 %i.s, ptr %i.w, align 4, !tbaa !89
  %i.x = load i32, ptr %i.d, align 8, !tbaa !183  ; 2 uses
  %i.y = add nsw i32 %i.x, -28
  store i32 %i.y, ptr %i.u, align 8, !tbaa !91
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 236 ; 5 uses
  store i32 40, ptr %i.z, align 4, !tbaa !90
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 216 ; 6 uses
  store i32 40, ptr %i.aa, align 8, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 220 ; 7 uses
  store i32 40, ptr %i.ab, align 4, !tbaa !82
  %i.ac = add nsw i32 %i.x, -76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 224 ; 6 uses
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 228 ; 8 uses
  store i32 %i.s, ptr %i.ae, align 4, !tbaa !80
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 2 uses
  tail call void @av_frame_free(ptr noundef nonnull %i.af) #14
  %i.ag = load i32, ptr %i.i, align 8, !tbaa !188
  %i.ah = load i32, ptr %i.j, align 4, !tbaa !189
  %i.ai = tail call ptr @ff_get_video_buffer(ptr noundef nonnull %0, i32 noundef %i.ag, i32 noundef %i.ah) #14 ; 18 uses
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !81
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %drawline.exit209, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 124
  store i32 1, ptr %i.aj, align 4, !tbaa !42
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !42
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !80
  %i.al = add nsw i32 %i.ak, 1
  %i.am = sext i32 %i.al to i64
  %i.an = tail call noalias ptr @av_calloc(i64 noundef %i.am, i64 noundef 4) #14 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 3 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !86
  %.not155 = icmp eq ptr %i.an, null
  br i1 %.not155, label %drawline.exit209, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ap = load i32, ptr %.phi.trans.insert, align 4, !tbaa !182
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %.preheader
  tail call void (ptr, i32, i32, i32, ptr, ptr, ...) @drawtext(ptr noundef nonnull %i.ai, i32 noundef 8, i32 noundef 24, i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @font_colors, i64 3), ptr noundef nonnull @.str.75)
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !39 ; 5 uses
  %.neg214 = mul i32 %i.at, -2
  %.not156215 = icmp slt i32 %i.at, %.neg214
  br i1 %.not156215, label %._crit_edge219, label %.lr.ph218

.lr.ph218:                                        ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 260
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.0213 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %bb.d ] ; 2 uses
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.aw = load i32, ptr %i.ar, align 8, !tbaa !42
  %i.ax = mul nsw i32 %i.aw, %.0213
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 %i.ay
  %i.ba = load i32, ptr %i.d, align 8, !tbaa !183
  %i.bb = mul nsw i32 %i.ba, 3
  %i.bc = sext i32 %i.bb to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 0, i64 %i.bc, i1 false)
  %i.bd = add nuw nsw i32 %.0213, 1               ; 2 uses
  %i.be = load i32, ptr %.phi.trans.insert, align 4, !tbaa !182
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %._crit_edge, !llvm.loop !169

bb.e:                                             ; preds = %.lr.ph218, %bb.e
  %i.bg = phi i32 [ %i.at, %.lr.ph218 ], [ %i.co, %bb.e ]
  %.0149216 = phi i32 [ %i.at, %.lr.ph218 ], [ %i.cn, %bb.e ] ; 8 uses
  %i.bh = sitofp nsz i32 %.0149216 to double
  %i.bi = shl nsw i32 %i.bg, 1
  %i.bj = sitofp nsz i32 %i.bi to double
  %i.bk = fadd nsz double %i.bh, %i.bj
  %i.bl = fptrunc nsz double %i.bk to float       ; 2 uses
  %i.bm = load i32, ptr %i.au, align 4, !tbaa !40 ; 2 uses
  %i.bn = sitofp nsz i32 %i.bm to float           ; 2 uses
  %i.bo = fcmp nsz ogt float %i.bl, 0.000000e+00
  %i.bp = select nsz i1 %i.bo, float %i.bl, float 0.000000e+00 ; 2 uses
  %i.bq = fcmp nsz ogt float %i.bp, %i.bn
  %..i.i = select nsz i1 %i.bq, float %i.bn, float %i.bp
  %i.br = fpext nsz float %..i.i to double
  %i.bs = sitofp nsz i32 %i.bm to double          ; 2 uses
  %i.bt = fsub nsz double %i.bs, %i.br
  %i.bu = load i32, ptr %i.ae, align 4, !tbaa !80
  %i.bv = sitofp nsz i32 %i.bu to double
  %i.bw = fmul nsz double %i.bt, %i.bv
  %i.bx = fdiv nsz double %i.bw, %i.bs
  %i.by = fptosi double %i.bx to i32              ; 2 uses
  %i.bz = add i32 %.0149216, 9
  %i.ca = icmp ult i32 %i.bz, 19
  %i.cb = select i1 %i.ca, i32 16, i32 8
  %i.cc = load ptr, ptr %i.ao, align 8, !tbaa !86
  %i.cd = sext i32 %i.by to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  store i32 %.0149216, ptr %i.ce, align 4, !tbaa !42
  %i.cf = load i32, ptr %i.ab, align 4, !tbaa !82
  %i.cg = add i32 %i.cf, -4
  %i.ch = add i32 %i.cg, %i.by
  %i.ci = icmp slt i32 %.0149216, 0
  %i.cj = icmp sgt i32 %.0149216, 0
  %i.ck = select i1 %i.cj, i32 43, i32 32
  %i.cl = select i1 %i.ci, i32 45, i32 %i.ck
  %i.cm = tail call i32 @llvm.abs.i32(i32 %.0149216, i1 true)
  tail call void (ptr, i32, i32, i32, ptr, ptr, ...) @drawtext(ptr noundef nonnull %i.ai, i32 noundef %i.cb, i32 noundef %i.ch, i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @font_colors, i64 3), ptr noundef nonnull @.str.76, i32 noundef %i.cl, i32 noundef %i.cm)
  %i.cn = add nsw i32 %.0149216, -1
  %i.co = load i32, ptr %i.as, align 8, !tbaa !39 ; 3 uses
  %.neg = mul i32 %i.co, -2
  %.not156.not = icmp sgt i32 %.0149216, %.neg
  br i1 %.not156.not, label %bb.e, label %._crit_edge219, !llvm.loop !170

._crit_edge219:                                   ; preds = %bb.e, %._crit_edge
  %.lcssa = phi i32 [ %i.at, %._crit_edge ], [ %i.co, %bb.e ]
  %i.cp = shl nsw i32 %.lcssa, 1                  ; 3 uses
  %i.cq = sitofp nsz i32 %i.cp to double
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 260
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !40 ; 2 uses
  %i.ct = sitofp nsz i32 %i.cs to float           ; 3 uses
  %i.cu = load i32, ptr %i.ae, align 4, !tbaa !80 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 2 uses
  %i.cw = or disjoint i32 %i.cp, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 268
  %i.cy = sitofp nsz i32 %i.cs to double          ; 3 uses
  %i.cz = sitofp nsz i32 %i.cu to double          ; 2 uses
  %i.da = insertelement <2 x i32> poison, i32 %i.cp, i64 0
  %i.db = insertelement <2 x i32> %i.da, i32 %i.cw, i64 1 ; 2 uses
  %i.dc = sitofp <2 x i32> %i.db to <2 x float>
  %i.dd = icmp sgt <2 x i32> %i.db, zeroinitializer
  %i.de = select <2 x i1> %i.dd, <2 x float> %i.dc, <2 x float> zeroinitializer ; 2 uses
  %i.df = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dh = fcmp nsz ogt <2 x float> %i.de, %i.dg
  %i.di = select <2 x i1> %i.dh, <2 x float> %i.dg, <2 x float> %i.de
  %i.dj = fpext nnan <2 x float> %i.di to <2 x double>
  %i.dk = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dm = fsub nnan nsz <2 x double> %i.dl, %i.dj
  %i.dn = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = fmul nsz <2 x double> %i.dm, %i.do
  %i.dq = fdiv nsz <2 x double> %i.dp, %i.dl
  %i.dr = fptosi <2 x double> %i.dq to <2 x i32>
  store <2 x i32> %i.dr, ptr %i.cv, align 8, !tbaa !42
  %i.ds = fadd nsz double %i.cq, -1.000000e+00
  %i.dt = fptrunc nsz double %i.ds to float       ; 2 uses
  %i.du = fcmp nsz ogt float %i.dt, 0.000000e+00
  %i.dv = select nsz i1 %i.du, float %i.dt, float 0.000000e+00 ; 2 uses
  %i.dw = fcmp nsz ogt float %i.dv, %i.ct
  %..i.i174 = select nsz i1 %i.dw, float %i.ct, float %i.dv
  %i.dx = fpext nsz float %..i.i174 to double
  %i.dy = fsub nsz double %i.cy, %i.dx
  %i.dz = fmul nsz double %i.dy, %i.cz
  %i.ea = fdiv nsz double %i.dz, %i.cy
  %i.eb = fptosi double %i.ea to i32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  store i32 %i.eb, ptr %i.ec, align 8, !tbaa !85
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ai, i64 64 ; 9 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !42 ; 3 uses
  %i.ef = icmp sgt i32 %i.cu, 0
  br i1 %i.ef, label %.lr.ph226.preheader, label %._crit_edge219.._crit_edge227_crit_edge

._crit_edge219.._crit_edge227_crit_edge:          ; preds = %._crit_edge219
  %.pre234 = load i32, ptr %i.ad, align 8, !tbaa !88
  br label %._crit_edge227

.lr.ph226.preheader:                              ; preds = %._crit_edge219
  %i.eg = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.eh = load i32, ptr %i.ab, align 4, !tbaa !82
  %i.ei = mul nsw i32 %i.ee, %i.eh
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 %i.ej
  %i.el = load i32, ptr %i.aa, align 8, !tbaa !83
  %i.em = mul nsw i32 %i.el, 3
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %i.ek, i64 %i.en
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph226.preheader, %._crit_edge222
  %i.ep = phi i32 [ %i.cu, %.lr.ph226.preheader ], [ %i.ft, %._crit_edge222 ]
  %i.eq = phi i32 [ %i.ee, %.lr.ph226.preheader ], [ %i.fu, %._crit_edge222 ]
  %indvars.iv230 = phi i64 [ 0, %.lr.ph226.preheader ], [ %indvars.iv.next231, %._crit_edge222 ] ; 5 uses
  %.0152223 = phi ptr [ %i.eo, %.lr.ph226.preheader ], [ %i.fw, %._crit_edge222 ] ; 2 uses
  %i.er = load i32, ptr %i.cx, align 4, !tbaa !84
  %i.es = load i32, ptr %i.ec, align 8, !tbaa !85
  %i.et = load ptr, ptr %i.ao, align 8, !tbaa !86
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv230
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !42
  %.not.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i, label %bb.f, label %get_graph_color.exit

bb.f:                                             ; preds = %.lr.ph226
  %i.ew = load i32, ptr %i.cv, align 8, !tbaa !87
  %i.ex = zext i32 %i.ew to i64
  %i.ey = icmp eq i64 %indvars.iv230, %i.ex
  %i.ez = select i1 %i.ey, i64 4, i64 0
  br label %get_graph_color.exit

get_graph_color.exit:                             ; preds = %.lr.ph226, %bb.f
  %i.fa = phi i64 [ 4, %.lr.ph226 ], [ %i.ez, %bb.f ]
  %i.fb = sext i32 %i.es to i64
  %i.fc = icmp slt i64 %indvars.iv230, %i.fb
  %i.fd = sext i32 %i.er to i64
  %i.fe = icmp sgt i64 %indvars.iv230, %i.fd
  %i.ff = zext i1 %i.fe to i64
  %i.fg = select i1 %i.fc, i64 8, i64 0
  %i.fh = or disjoint i64 %i.fg, %i.ff
  %i.fi = or disjoint i64 %i.fa, %i.fh
  %i.fj = mul nuw nsw i64 %i.fi, 3
  %i.fk = getelementptr inbounds nuw i8, ptr @graph_colors, i64 %i.fj
  %i.fl = load i32, ptr %i.ad, align 8, !tbaa !88 ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, 0
  br i1 %i.fm, label %.lr.ph221, label %._crit_edge222

.lr.ph221:                                        ; preds = %get_graph_color.exit, %.lr.ph221
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph221 ], [ 0, %get_graph_color.exit ] ; 2 uses
  %i.fn = mul nuw nsw i64 %indvars.iv, 3
  %i.fo = getelementptr inbounds nuw i8, ptr %.0152223, i64 %i.fn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fo, ptr noundef nonnull align 1 dereferenceable(3) %i.fk, i64 3, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fp = load i32, ptr %i.ad, align 8, !tbaa !88 ; 2 uses
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp slt i64 %indvars.iv.next, %i.fq
  br i1 %i.fr, label %.lr.ph221, label %._crit_edge222.loopexit, !llvm.loop !171

._crit_edge222.loopexit:                          ; preds = %.lr.ph221
  %.pre = load i32, ptr %i.ed, align 8, !tbaa !42
  %.pre233 = load i32, ptr %i.ae, align 4, !tbaa !80
  br label %._crit_edge222

._crit_edge222:                                   ; preds = %._crit_edge222.loopexit, %get_graph_color.exit
  %i.fs = phi i32 [ %i.fp, %._crit_edge222.loopexit ], [ %i.fl, %get_graph_color.exit ]
  %i.ft = phi i32 [ %.pre233, %._crit_edge222.loopexit ], [ %i.ep, %get_graph_color.exit ] ; 3 uses
  %i.fu = phi i32 [ %.pre, %._crit_edge222.loopexit ], [ %i.eq, %get_graph_color.exit ] ; 3 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds i8, ptr %.0152223, i64 %i.fv
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %i.fx = sext i32 %i.ft to i64
  %i.fy = icmp slt i64 %indvars.iv.next231, %i.fx
  br i1 %i.fy, label %.lr.ph226, label %._crit_edge227, !llvm.loop !172

._crit_edge227:                                   ; preds = %._crit_edge222, %._crit_edge219.._crit_edge227_crit_edge
  %i.fz = phi i32 [ %i.cu, %._crit_edge219.._crit_edge227_crit_edge ], [ %i.ft, %._crit_edge222 ]
  %.val171 = phi i32 [ %i.ee, %._crit_edge219.._crit_edge227_crit_edge ], [ %i.fu, %._crit_edge222 ]
  %i.ga = phi i32 [ %.pre234, %._crit_edge219.._crit_edge227_crit_edge ], [ %i.fs, %._crit_edge222 ] ; 4 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph.i, label %drawline.exit179

.lr.ph.i:                                         ; preds = %._crit_edge227
  %.val170 = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.gc = load i32, ptr %i.ab, align 4, !tbaa !82
  %i.gd = add nsw i32 %i.gc, -1
  %i.ge = load i32, ptr %i.aa, align 8, !tbaa !83
  %i.gf = mul nsw i32 %i.gd, %.val171
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds i8, ptr %.val170, i64 %i.gg
  %i.gi = mul nsw i32 %i.ge, 3
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds i8, ptr %i.gh, i64 %i.gj ; 2 uses
  %xtraiter = and i32 %i.ga, 3                    ; 3 uses
  %i.gl = icmp ult i32 %i.ga, 4
  br i1 %i.gl, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.ga, 2147483644
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %.02.i = phi ptr [ %i.gk, %.lr.ph.i.new ], [ %i.gp, %bb.g ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.02.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.78, i64 3, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %.02.i, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.gm, ptr noundef nonnull align 1 dereferenceable(3) @.str.78, i64 3, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %.02.i, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.gn, ptr noundef nonnull align 1 dereferenceable(3) @.str.78, i64 3, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %.02.i, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.go, ptr noundef nonnull align 1 dereferenceable(3) @.str.78, i64 3, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %.02.i, i64 12 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %drawline.exit.unr-lcssa, label %bb.g, !llvm.loop !173

drawline.exit.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %drawline.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %drawline.exit.unr-lcssa, %.lr.ph.i
  %.02.i.epil.init = phi ptr [ %i.gk, %.lr.ph.i ], [ %i.gp, %drawline.exit.unr-lcssa ]
  %lcmp.mod275 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod275)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.02.i.epil = phi ptr [ %.02.i.epil.init, %.epil.preheader ], [ %i.gq, %bb.h ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.02.i.epil, ptr noundef nonnull align 1 dereferenceable(3) @.str.78, i64 3, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %.02.i.epil, i64 3
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %drawline.exit, label %bb.h, !llvm.loop !174

drawline.exit:                                    ; preds = %bb.h, %drawline.exit.unr-lcssa
  %.pr = load i32, ptr %i.ad, align 8, !tbaa !88  ; 4 uses
  %.pre236 = load i32, ptr %i.ae, align 4, !tbaa !80 ; 2 uses
  %i.gr = icmp sgt i32 %.pr, 0
  br i1 %i.gr, label %.lr.ph.i175, label %drawline.exit179

.lr.ph.i175:                                      ; preds = %drawline.exit
  %.val169 = load i32, ptr %i.ed, align 8, !tbaa !42
  %.val168 = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.gs = load i32, ptr %i.ab, align 4, !tbaa !82
  %i.gt = add nsw i32 %i.gs, %.pre236
  %i.gu = load i32, ptr %i.aa, align 8, !tbaa !83
  %i.gv = mul nsw i32 %i.gt, %.val169
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds i8, ptr %.val168, i64 %i.gw
  %i.gy = mul nsw i32 %i.gu, 3
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds i8, ptr %i.gx, i64 %i.gz ; 2 uses
  %xtraiter277 = and i32 %.pr, 3                  ; 3 uses
  %i.hb = icmp ult i32 %.pr, 4
  br i1 %i.hb, label %.epil.preheader276, label %.lr.ph.i175.new

.lr.ph.i175.new:                                  ; preds = %.lr.ph.i175
  %unroll_iter281 = and i32 %.pr, 2147483644
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i175.new
  %.02.i176 = phi ptr [ %i.ha, %.lr.ph.i175.new ], [ %i.hf, %bb.i ] ; 5 uses
  %niter282 = phi i32 [ 0, %.lr.ph.i175.new ], [ %niter282.next.3, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.02.i176, ptr noundef nonnull align 1 dereferenceable(3) @.str.78, i64 3, i1 false)
  %i.hc = getelementptr inbounds nuw i8, ptr %.02.i176, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.hc, ptr noundef nonnull align 1 dereferenceable(3) @.str.78, i64 3, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %.02.i176, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.hd, ptr noundef nonnull align 1 dereferenceable(3) @.str.78, i64 3, i1 false)
end_hunk_1
