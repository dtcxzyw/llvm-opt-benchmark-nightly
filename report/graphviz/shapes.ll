Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/shapes?download=true
inline.NumInlined: 197
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@poly_init:bb.a
.critedge.us:                                     ; preds = %bb.cb
  %i.nc = fadd double %i.md, %i.mx                ; 2 uses
  %i.nd = call double @sin(double noundef %i.nc) #26
  %i.ne = call double @cos(double noundef %i.nc) #26
  %i.nf = insertelement <2 x double> poison, double %i.mf, i64 0
  %i.ng = shufflevector <2 x double> %i.nf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nh = insertelement <2 x double> poison, double %i.ne, i64 0
  %i.ni = insertelement <2 x double> %i.nh, double %i.nd, i64 1
  %i.nj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.ni, <2 x double> %i.mu) ; 2 uses
  %i.nk = extractelement <2 x double> %i.nj, i64 1 ; 4 uses
  %i.nl = call double @llvm.fmuladd.f64(double %i.nk, double %i.mm, double %i.mj)
  %i.nm = fmul double %i.mn, %i.nk
  %i.nn = extractelement <2 x double> %i.nj, i64 0
  %i.no = call double @llvm.fmuladd.f64(double %i.nn, double %i.nl, double %i.nm) ; 2 uses
  %i.np = call double @atan2(double noundef %i.nk, double noundef %i.no) #26
  %i.nq = call double @llvm.fmuladd.f64(double %i.my, double f0x400921FB54442D18, double %i.np) ; 2 uses
  %i.nr = call double @sin(double noundef %i.nq) #26 ; 2 uses
  %i.ns = call double @cos(double noundef %i.nq) #26 ; 2 uses
  %i.nt = call double @hypot(double noundef %i.no, double noundef %i.nk) #26
  %i.nu = insertelement <2 x double> poison, double %i.ns, i64 0
  %i.nv = insertelement <2 x double> %i.nu, double %i.nr, i64 1
  %i.nw = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = fmul <2 x double> %i.nv, %i.nx
  %i.nz = fmul <2 x double> %i.ny, %i.mz          ; 5 uses
  %i.oa = call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.nz)
  %i.ob = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.oa, <2 x double> zeroinitializer)
  %i.oc = extractelement <2 x double> %i.nz, i64 0
  %i.od = extractelement <2 x double> %i.nz, i64 1
  store <2 x double> %i.nz, ptr %i.lq, align 8, !tbaa !10
  %i.oe = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %.sroa.291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  store double %i.od, ptr %.sroa.291.0..sroa_idx, align 8, !tbaa !10
  %i.of = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  %i.og = fneg <2 x double> %i.nz                 ; 3 uses
  %i.oh = extractelement <2 x double> %i.og, i64 0
  store double %i.oh, ptr %i.oe, align 8, !tbaa !10
  store <2 x double> %i.og, ptr %i.of, align 8, !tbaa !10
  %i.oi = getelementptr inbounds nuw i8, ptr %i.lq, i64 48
  store double %i.oc, ptr %i.oi, align 8, !tbaa !10
  %.sroa.287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lq, i64 56
  %i.oj = extractelement <2 x double> %i.og, i64 1
  store double %i.oj, ptr %.sroa.287.0..sroa_idx, align 8, !tbaa !10
  br label %.loopexit563

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %.0480578 = phi i64 [ %i.pl, %.critedge ], [ 0, %.critedge.preheader ] ; 2 uses
  %.0481575 = phi double [ %i.om, %.critedge ], [ %i.mx, %.critedge.preheader ]
  %i.ok = phi <2 x double> [ %i.pj, %.critedge ], [ zeroinitializer, %.critedge.preheader ]
  %i.ol = phi <2 x double> [ %i.or, %.critedge ], [ %i.mu, %.critedge.preheader ]
  %i.om = fadd double %i.md, %.0481575            ; 3 uses
  %i.on = call double @sin(double noundef %i.om) #26
  %i.oo = call double @cos(double noundef %i.om) #26
  %i.op = insertelement <2 x double> poison, double %i.oo, i64 0
  %i.oq = insertelement <2 x double> %i.op, double %i.on, i64 1
  %i.or = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nb, <2 x double> %i.oq, <2 x double> %i.ol) ; 3 uses
  %i.os = extractelement <2 x double> %i.or, i64 1 ; 4 uses
  %i.ot = call double @llvm.fmuladd.f64(double %i.os, double %i.mm, double %i.mj)
  %i.ou = fmul double %i.mn, %i.os
  %i.ov = extractelement <2 x double> %i.or, i64 0
  %i.ow = call double @llvm.fmuladd.f64(double %i.ov, double %i.ot, double %i.ou) ; 2 uses
  %i.ox = call double @atan2(double noundef %i.os, double noundef %i.ow) #26
  %i.oy = call double @llvm.fmuladd.f64(double %i.my, double f0x400921FB54442D18, double %i.ox) ; 2 uses
  %i.oz = call double @sin(double noundef %i.oy) #26 ; 2 uses
  %i.pa = call double @cos(double noundef %i.oy) #26 ; 2 uses
  %i.pb = call double @hypot(double noundef %i.ow, double noundef %i.os) #26
  %i.pc = insertelement <2 x double> poison, double %i.pa, i64 0
  %i.pd = insertelement <2 x double> %i.pc, double %i.oz, i64 1
  %i.pe = insertelement <2 x double> poison, double %i.pb, i64 0
  %i.pf = shufflevector <2 x double> %i.pe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pg = fmul <2 x double> %i.pd, %i.pf
  %i.ph = fmul <2 x double> %i.pg, %i.mz          ; 2 uses
  %i.pi = call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ph)
  %i.pj = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.pi, <2 x double> %i.ok) ; 2 uses
  %i.pk = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %.0480578
  store <2 x double> %i.ph, ptr %i.pk, align 8, !tbaa !10
  %i.pl = add nuw i64 %.0480578, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.pl, %.1510
  br i1 %exitcond.not, label %.loopexit563, label %.critedge, !llvm.loop !152

.loopexit563:                                     ; preds = %.critedge, %.critedge.us, %bb.ca
  %.2493 = phi double [ 0.000000e+00, %bb.ca ], [ %i.nr, %.critedge.us ], [ %i.oz, %.critedge ]
  %.2490 = phi double [ 0.000000e+00, %bb.ca ], [ %i.ns, %.critedge.us ], [ %i.pa, %.critedge ]
  %i.pm = phi <2 x double> [ %i.mb, %bb.ca ], [ %i.ob, %.critedge.us ], [ %i.pj, %.critedge ]
  %i.pn = fmul <2 x double> %i.pm, splat (double 2.000000e+00) ; 2 uses
  %i.po = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.id, <2 x double> %i.pn) ; 5 uses
  %i.pp = fdiv <2 x double> %i.po, %i.pn          ; 3 uses
  %min.iters.check = icmp eq i64 %.1510, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.loopexit563
  %n.vec = and i64 %.1510, -2                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.pq = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %index ; 2 uses
  %i.pr = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %index
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.pq, align 8, !tbaa !10
  %wide.load711 = load <2 x double>, ptr %i.ps, align 8, !tbaa !10
  %i.pt = fmul <2 x double> %i.pp, %wide.load
  %i.pu = fmul <2 x double> %i.pp, %wide.load711
  store <2 x double> %i.pt, ptr %i.pq, align 8, !tbaa !10
  store <2 x double> %i.pu, ptr %i.ps, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.pv = icmp eq i64 %index.next, %n.vec
  br i1 %i.pv, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.1510, %n.vec
  br i1 %cmp.n, label %.loopexit734, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.loopexit563, %middle.block
  %.0474586.ph = phi i64 [ 0, %.loopexit563 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0474586 = phi i64 [ %i.pz, %scalar.ph ], [ %.0474586.ph, %scalar.ph.preheader ] ; 2 uses
  %i.pw = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %.0474586 ; 2 uses
  %i.px = load <2 x double>, ptr %i.pw, align 8, !tbaa !10
  %i.py = fmul <2 x double> %i.pp, %i.px
  store <2 x double> %i.py, ptr %i.pw, align 8, !tbaa !10
  %i.pz = add nuw i64 %.0474586, 1                ; 2 uses
  %exitcond650.not = icmp eq i64 %i.pz, %.1510
  br i1 %exitcond650.not, label %.loopexit734, label %scalar.ph, !llvm.loop !154

.loopexit734:                                     ; preds = %scalar.ph, %middle.block
  %i.qa = icmp ugt i64 %spec.select, 1
  br i1 %i.qa, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.loopexit734
  %.sroa.055.0.copyload = load double, ptr %i.lq, align 8, !tbaa !10 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !10 ; 2 uses
  %rhsv.cast.i = bitcast double %.sroa.055.0.copyload to i64
  %rhsv.cast.i548 = bitcast double %.sroa.8.0.copyload to i64
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cd, %.lr.ph
  %.0473587 = phi i64 [ 1, %.lr.ph ], [ %i.qe, %bb.cd ] ; 2 uses
  %i.qb = sub nuw i64 %.1510, %.0473587
  %i.qc = urem i64 %i.qb, %.1510
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %i.qc ; 2 uses
  %.sroa.028.0.copyload = load double, ptr %i.qd, align 8, !tbaa !10 ; 3 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %.sroa.19.0.copyload = load double, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !10 ; 3 uses
  %lhsv.cast.i = bitcast double %.sroa.028.0.copyload to i64
  %.not.i546 = icmp eq i64 %lhsv.cast.i, %rhsv.cast.i
  br i1 %.not.i546, label %bb.cd, label %.lr.ph624

bb.cd:                                            ; preds = %bb.cc
  %lhsv.cast.i547 = bitcast double %.sroa.19.0.copyload to i64
  %.not.i549 = icmp ne i64 %lhsv.cast.i547, %rhsv.cast.i548
  %i.qe = add nuw i64 %.0473587, 1                ; 2 uses
  %exitcond652.not = icmp eq i64 %i.qe, %.1510
  %or.cond697 = select i1 %.not.i549, i1 true, i1 %exitcond652.not
  br i1 %or.cond697, label %.lr.ph624, label %bb.cc, !llvm.loop !155

.lr.ph624:                                        ; preds = %bb.cc, %bb.cd
  %i.qf = fsub double %.sroa.8.0.copyload, %.sroa.19.0.copyload
  %i.qg = fsub double %.sroa.055.0.copyload, %.sroa.028.0.copyload
  %i.qh = call double @atan2(double noundef %i.qf, double noundef %i.qg) #26
  %i.qi = icmp ugt i32 %i.ba, 1
  %i.qj = icmp ugt i64 %spec.select, %i.bb
  %i.qk = mul i64 %.1510, %i.bb
  %i.ql = insertelement <2 x double> poison, double %.2490, i64 0
  %i.qm = insertelement <2 x double> %i.ql, double %.2493, i64 1
  %i.qn = insertelement <2 x double> poison, double %i.jj, i64 0
  %i.qo = shufflevector <2 x double> %i.qn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qp = add nsw i64 %i.bb, -1                   ; 2 uses
  %i.qq = add nsw i64 %i.bb, -2
  %xtraiter = and i64 %i.qp, 3                    ; 3 uses
  %i.qr = icmp ult i64 %i.qq, 3
  %unroll_iter = and i64 %i.qp, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod752 = icmp ne i64 %xtraiter, 0
  br label %bb.ce

.lr.ph629:                                        ; preds = %bb.cj
  %i.qs = add nsw i64 %i.bb, -1
  %i.qt = mul i64 %.1510, %i.qs                   ; 2 uses
  %i.qu = add nsw i64 %spec.select, -1
  %i.qv = mul i64 %i.qu, %.1510                   ; 2 uses
  %n.vec715 = and i64 %.1510, -2                  ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.po, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %broadcast.splat717 = shufflevector <2 x double> %i.po, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body718

vector.body718:                                   ; preds = %vector.body718, %.lr.ph629
  %index719 = phi i64 [ 0, %.lr.ph629 ], [ %index.next727, %vector.body718 ] ; 3 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat, %.lr.ph629 ], [ %i.ro, %vector.body718 ] ; 2 uses
  %vec.phi720 = phi <2 x double> [ %broadcast.splat717, %.lr.ph629 ], [ %i.rk, %vector.body718 ] ; 2 uses
  %vec.phi721 = phi <2 x double> [ %broadcast.splat717, %.lr.ph629 ], [ %i.rb, %vector.body718 ] ; 2 uses
  %vec.phi722 = phi <2 x double> [ %broadcast.splat, %.lr.ph629 ], [ %i.rf, %vector.body718 ] ; 2 uses
  %i.qw = getelementptr [16 x i8], ptr %i.lq, i64 %index719 ; 2 uses
  %i.qx = getelementptr [16 x i8], ptr %i.qw, i64 %i.qt
  %wide.vec = load <4 x double>, ptr %i.qx, align 8, !tbaa !10 ; 2 uses
  %i.qy = call nsz <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.vec)
  %i.qz = shufflevector <4 x double> %i.qy, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %.fr = freeze <2 x double> %i.qz
  %i.ra = fmul nsz <2 x double> %.fr, splat (double 2.000000e+00) ; 2 uses
  %i.rb = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.ra, <2 x double> %vec.phi721) ; 2 uses
  %i.rc = call nsz <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.vec)
  %i.rd = shufflevector <4 x double> %i.rc, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %.fr735 = freeze <2 x double> %i.rd
  %i.re = fmul nsz <2 x double> %.fr735, splat (double 2.000000e+00) ; 2 uses
  %i.rf = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.re, <2 x double> %vec.phi722) ; 2 uses
  %i.rg = getelementptr [16 x i8], ptr %i.qw, i64 %i.qv
  %wide.vec724 = load <4 x double>, ptr %i.rg, align 8, !tbaa !10 ; 2 uses
  %i.rh = call nsz <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.vec724)
  %i.ri = shufflevector <4 x double> %i.rh, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %.fr736 = freeze <2 x double> %i.ri
  %i.rj = fmul nsz <2 x double> %.fr736, splat (double 2.000000e+00) ; 2 uses
  %i.rk = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.rj, <2 x double> %vec.phi720) ; 2 uses
  %i.rl = call nsz <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.vec724)
  %i.rm = shufflevector <4 x double> %i.rl, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %.fr737 = freeze <2 x double> %i.rm
  %i.rn = fmul nsz <2 x double> %.fr737, splat (double 2.000000e+00) ; 2 uses
  %i.ro = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.rn, <2 x double> %vec.phi) ; 2 uses
  %index.next727 = add nuw i64 %index719, 2       ; 2 uses
  %i.rp = fcmp uno <2 x double> %i.rn, %i.rj
  %i.rq = fcmp uno <2 x double> %i.re, %i.ra
  %i.rr = or <2 x i1> %i.rp, %i.rq
  %i.rs = bitcast <2 x i1> %i.rr to i2
  %i.rt = icmp ne i2 %i.rs, 0                     ; 7 uses
  %i.ru = icmp eq i64 %index.next727, %n.vec715
  %i.rv = or i1 %i.rt, %i.ru
  br i1 %i.rv, label %middle.block728, label %vector.body718, !llvm.loop !156

middle.block728:                                  ; preds = %vector.body718
  %i.rw = select i1 %i.rt, <2 x double> %vec.phi, <2 x double> %i.ro
  %i.rx = select i1 %i.rt, <2 x double> %vec.phi720, <2 x double> %i.rk
  %i.ry = select i1 %i.rt, <2 x double> %vec.phi721, <2 x double> %i.rb
  %i.rz = select i1 %i.rt, <2 x double> %vec.phi722, <2 x double> %i.rf
  %i.sa = call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %i.rw)
  %i.sb = call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %i.rx)
  %i.sc = call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %i.ry)
  %i.sd = call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %i.rz)
  %cmp.n729 = icmp ne i64 %.1510, %n.vec715
  %.not735 = or i1 %cmp.n729, %i.rt
  %i.se = insertelement <2 x double> poison, double %i.sc, i64 0
  %i.sf = insertelement <2 x double> %i.se, double %i.sd, i64 1 ; 2 uses
  %i.sg = insertelement <2 x double> poison, double %i.sb, i64 0
  %i.sh = insertelement <2 x double> %i.sg, double %i.sa, i64 1 ; 2 uses
  br i1 %.not735, label %scalar.ph712.preheader, label %.loopexit

scalar.ph712.preheader:                           ; preds = %middle.block728
  %i.si = select i1 %i.rt, i64 %index719, i64 %n.vec715
  br label %scalar.ph712

bb.ce:                                            ; preds = %.lr.ph624, %bb.cj
  %.sroa.021.0622 = phi double [ %.sroa.028.0.copyload, %.lr.ph624 ], [ %i.sm, %bb.cj ]
  %.sroa.5.0621 = phi double [ %.sroa.19.0.copyload, %.lr.ph624 ], [ %i.uo, %bb.cj ]
  %.1618 = phi i64 [ 0, %.lr.ph624 ], [ %i.un, %bb.cj ] ; 3 uses
  %.0477617 = phi double [ %i.qh, %.lr.ph624 ], [ %.1478, %bb.cj ] ; 3 uses
  %i.sj = phi <2 x double> [ %i.qm, %.lr.ph624 ], [ %i.tk, %bb.cj ]
  %i.sk = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %.1618 ; 7 uses
  %i.sl = load <2 x double>, ptr %i.sk, align 8, !tbaa !10 ; 8 uses
  %i.sm = extractelement <2 x double> %i.sl, i64 0 ; 2 uses
  %lhsv.cast.i550 = bitcast double %i.sm to i64   ; 2 uses
  %rhsv.cast.i551 = bitcast double %.sroa.021.0622 to i64
  %.not.i552 = icmp eq i64 %lhsv.cast.i550, %rhsv.cast.i551
  %bc = bitcast <2 x double> %i.sl to <2 x i64>
  %lhsv.cast.i553 = extractelement <2 x i64> %bc, i64 1
  %rhsv.cast.i554 = bitcast double %.sroa.5.0621 to i64
  %.not.i555 = icmp eq i64 %lhsv.cast.i553, %rhsv.cast.i554
  %or.cond778 = select i1 %.not.i552, i1 %.not.i555, i1 false
  br i1 %or.cond778, label %bb.ch, label %.lr.ph597

.lr.ph597:                                        ; preds = %bb.ce
  %bc736 = bitcast <2 x double> %i.sl to <2 x i64>
  %rhsv.cast.i560 = extractelement <2 x i64> %bc736, i64 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cg, %.lr.ph597
  %.0472595 = phi i64 [ 1, %.lr.ph597 ], [ %i.sr, %bb.cg ] ; 2 uses
  %i.sn = add i64 %.0472595, %.1618
  %i.so = urem i64 %i.sn, %.1510
  %i.sp = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %i.so
  %i.sq = load <2 x double>, ptr %i.sp, align 8, !tbaa !10 ; 3 uses
  %bc737 = bitcast <2 x double> %i.sq to <2 x i64>
  %lhsv.cast.i556 = extractelement <2 x i64> %bc737, i64 0
  %.not.i558 = icmp eq i64 %lhsv.cast.i556, %lhsv.cast.i550
  br i1 %.not.i558, label %bb.cg, label %._crit_edge598

bb.cg:                                            ; preds = %bb.cf
  %bc738 = bitcast <2 x double> %i.sq to <2 x i64>
  %lhsv.cast.i559 = extractelement <2 x i64> %bc738, i64 1
  %.not.i561 = icmp eq i64 %lhsv.cast.i559, %rhsv.cast.i560
  %i.sr = add nuw i64 %.0472595, 1                ; 2 uses
  %i.ss = icmp ult i64 %i.sr, %.1510
  %or.cond = select i1 %.not.i561, i1 %i.ss, i1 false
  br i1 %or.cond, label %bb.cf, label %._crit_edge598, !llvm.loop !157

._crit_edge598:                                   ; preds = %bb.cg, %bb.cf
  %i.st = fsub <2 x double> %i.sq, %i.sl          ; 2 uses
  %i.su = extractelement <2 x double> %i.st, i64 0
  %i.sv = extractelement <2 x double> %i.st, i64 1
  %i.sw = call double @atan2(double noundef %i.sv, double noundef %i.su) #26 ; 2 uses
  %i.sx = fadd double %.0477617, f0x400921FB54442D18
  %i.sy = fsub double %i.sx, %i.sw
  %i.sz = fmul double %i.sy, 5.000000e-01         ; 2 uses
  %i.ta = call double @sin(double noundef %i.sz) #26
  %i.tb = fdiv double 4.000000e+00, %i.ta
  %i.tc = fsub double %.0477617, %i.sz            ; 2 uses
  %i.td = call double @sin(double noundef %i.tc) #26
  %i.te = call double @cos(double noundef %i.tc) #26
  %i.tf = insertelement <2 x double> poison, double %i.tb, i64 0
  %i.tg = shufflevector <2 x double> %i.tf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.th = insertelement <2 x double> poison, double %i.te, i64 0
  %i.ti = insertelement <2 x double> %i.th, double %i.td, i64 1
  %i.tj = fmul <2 x double> %i.tg, %i.ti
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ce, %._crit_edge598
  %.1478 = phi double [ %.0477617, %bb.ce ], [ %i.sw, %._crit_edge598 ]
  %i.tk = phi <2 x double> [ %i.sj, %bb.ce ], [ %i.tj, %._crit_edge598 ] ; 7 uses
  br i1 %i.qi, label %.lr.ph611.preheader, label %._crit_edge612

.lr.ph611.preheader:                              ; preds = %bb.ch
  br i1 %i.qr, label %.lr.ph611.epil.preheader, label %.lr.ph611

._crit_edge612.loopexit.unr-lcssa:                ; preds = %.lr.ph611
  br i1 %lcmp.mod.not, label %._crit_edge612, label %.lr.ph611.epil.preheader

.lr.ph611.epil.preheader:                         ; preds = %._crit_edge612.loopexit.unr-lcssa, %.lr.ph611.preheader
  %.0609.epil.init = phi i64 [ 1, %.lr.ph611.preheader ], [ %i.uh, %._crit_edge612.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %i.sl, %.lr.ph611.preheader ], [ %i.ue, %._crit_edge612.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod752)
  br label %.lr.ph611.epil

.lr.ph611.epil:                                   ; preds = %.lr.ph611.epil, %.lr.ph611.epil.preheader
  %.0609.epil = phi i64 [ %i.tp, %.lr.ph611.epil ], [ %.0609.epil.init, %.lr.ph611.epil.preheader ] ; 2 uses
  %i.tl = phi <2 x double> [ %i.tm, %.lr.ph611.epil ], [ %.epil.init, %.lr.ph611.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph611.epil ], [ 0, %.lr.ph611.epil.preheader ]
  %i.tm = fadd <2 x double> %i.tk, %i.tl          ; 3 uses
  %i.tn = mul i64 %.0609.epil, %.1510
  %i.to = getelementptr [16 x i8], ptr %i.sk, i64 %i.tn
  store <2 x double> %i.tm, ptr %i.to, align 8, !tbaa !10
  %i.tp = add nuw i64 %.0609.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge612, label %.lr.ph611.epil, !llvm.loop !158

._crit_edge612:                                   ; preds = %._crit_edge612.loopexit.unr-lcssa, %.lr.ph611.epil, %bb.ch
  %i.tq = phi <2 x double> [ %i.sl, %bb.ch ], [ %i.ue, %._crit_edge612.loopexit.unr-lcssa ], [ %i.tm, %.lr.ph611.epil ]
  br i1 %i.qj, label %bb.ci, label %bb.cj

.lr.ph611:                                        ; preds = %.lr.ph611.preheader, %.lr.ph611
  %.0609 = phi i64 [ %i.uh, %.lr.ph611 ], [ 1, %.lr.ph611.preheader ] ; 5 uses
  %i.tr = phi <2 x double> [ %i.ue, %.lr.ph611 ], [ %i.sl, %.lr.ph611.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph611 ], [ 0, %.lr.ph611.preheader ]
  %i.ts = fadd <2 x double> %i.tk, %i.tr          ; 2 uses
  %i.tt = mul i64 %.0609, %.1510
  %i.tu = getelementptr [16 x i8], ptr %i.sk, i64 %i.tt
  store <2 x double> %i.ts, ptr %i.tu, align 8, !tbaa !10
  %i.tv = add nuw nsw i64 %.0609, 1
  %i.tw = fadd <2 x double> %i.tk, %i.ts          ; 2 uses
  %i.tx = mul i64 %i.tv, %.1510
  %i.ty = getelementptr [16 x i8], ptr %i.sk, i64 %i.tx
  store <2 x double> %i.tw, ptr %i.ty, align 8, !tbaa !10
  %i.tz = add nuw nsw i64 %.0609, 2
  %i.ua = fadd <2 x double> %i.tk, %i.tw          ; 2 uses
  %i.ub = mul i64 %i.tz, %.1510
  %i.uc = getelementptr [16 x i8], ptr %i.sk, i64 %i.ub
  store <2 x double> %i.ua, ptr %i.uc, align 8, !tbaa !10
  %i.ud = add nuw i64 %.0609, 3
  %i.ue = fadd <2 x double> %i.tk, %i.ua          ; 4 uses
  %i.uf = mul i64 %i.ud, %.1510
  %i.ug = getelementptr [16 x i8], ptr %i.sk, i64 %i.uf
  store <2 x double> %i.ue, ptr %i.ug, align 8, !tbaa !10
  %i.uh = add nuw i64 %.0609, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge612.loopexit.unr-lcssa, label %.lr.ph611, !llvm.loop !159

bb.ci:                                            ; preds = %._crit_edge612
  %i.ui = fmul <2 x double> %i.qo, %i.tk
  %i.uj = getelementptr [16 x i8], ptr %i.sk, i64 %i.qk
  %i.uk = fmul <2 x double> %i.ui, splat (double 5.000000e-01)
  %i.ul = fmul <2 x double> %i.uk, splat (double 2.500000e-01)
  %i.um = fadd <2 x double> %i.ul, %i.tq
  store <2 x double> %i.um, ptr %i.uj, align 8, !tbaa !10
  br label %bb.cj

bb.cj:                                            ; preds = %._crit_edge612, %bb.ci
  %i.un = add nuw i64 %.1618, 1                   ; 2 uses
  %exitcond654.not = icmp eq i64 %i.un, %.1510
  %i.uo = extractelement <2 x double> %i.sl, i64 1
  br i1 %exitcond654.not, label %.lr.ph629, label %bb.ce, !llvm.loop !160

scalar.ph712:                                     ; preds = %scalar.ph712.preheader, %scalar.ph712
  %.2626 = phi i64 [ %i.vc, %scalar.ph712 ], [ %i.si, %scalar.ph712.preheader ] ; 2 uses
  %i.up = phi <2 x double> [ %i.uw, %scalar.ph712 ], [ %i.sf, %scalar.ph712.preheader ]
  %i.uq = phi <2 x double> [ %i.vb, %scalar.ph712 ], [ %i.sh, %scalar.ph712.preheader ]
  %i.ur = getelementptr [16 x i8], ptr %i.lq, i64 %.2626 ; 2 uses
  %i.us = getelementptr [16 x i8], ptr %i.ur, i64 %i.qt
  %i.ut = load <2 x double>, ptr %i.us, align 8, !tbaa !10
  %i.uu = call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ut)
  %i.uv = fmul nsz <2 x double> %i.uu, splat (double 2.000000e+00)
  %i.uw = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.uv, <2 x double> %i.up) ; 2 uses
  %i.ux = getelementptr [16 x i8], ptr %i.ur, i64 %i.qv
  %i.uy = load <2 x double>, ptr %i.ux, align 8, !tbaa !10
  %i.uz = call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.uy)
  %i.va = fmul nsz <2 x double> %i.uz, splat (double 2.000000e+00)
  %i.vb = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.va, <2 x double> %i.uq) ; 2 uses
  %i.vc = add nuw i64 %.2626, 1                   ; 2 uses
  %exitcond655.not = icmp eq i64 %i.vc, %.1510
  br i1 %exitcond655.not, label %.loopexit, label %scalar.ph712, !llvm.loop !161

.loopexit:                                        ; preds = %scalar.ph712, %middle.block728, %.loopexit734, %bb.bt, %bb.bu
  %.2511 = phi i64 [ 2, %bb.bt ], [ 2, %bb.bu ], [ %.1510, %.loopexit734 ], [ %.1510, %middle.block728 ], [ %.1510, %scalar.ph712 ]
  %.0475 = phi ptr [ %i.jy, %bb.bt ], [ %i.jy, %bb.bu ], [ %i.lq, %.loopexit734 ], [ %i.lq, %middle.block728 ], [ %i.lq, %scalar.ph712 ]
  %i.vd = phi <2 x double> [ %i.kw, %bb.bt ], [ %i.kw, %bb.bu ], [ %i.po, %.loopexit734 ], [ %i.sf, %middle.block728 ], [ %i.uw, %scalar.ph712 ] ; 2 uses
  %i.ve = phi <2 x double> [ %i.kw, %bb.bt ], [ %i.lg, %bb.bu ], [ %i.po, %.loopexit734 ], [ %i.sh, %middle.block728 ], [ %i.vb, %scalar.ph712 ] ; 3 uses
  %i.vf = zext i1 %i.y to i32
  store i32 %i.vf, ptr %i.c, align 8, !tbaa !49
  %i.vg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bb, ptr %i.vg, align 8, !tbaa !50
  %i.vh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.2511, ptr %i.vh, align 8, !tbaa !51
  %i.vi = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store double %i.be, ptr %i.vi, align 8, !tbaa !52
  %i.vj = getelementptr inbounds nuw i8, ptr %i.c, i64 40
end_hunk_0
