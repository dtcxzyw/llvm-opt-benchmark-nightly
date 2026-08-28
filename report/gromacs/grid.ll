Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/grid?download=true
inline.NumInlined: 1290
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN3gmx4Grid14setCellIndicesEiiPNS_11GridSetDataENS_8ArrayRefINS_8GridWorkEEENS_5RangeIiEENS3_IKiEENS3_IKNS_11BasicVectorIfEEEEPNS_16nbnxn_atomdata_tE:bb.a
  %i.nc = icmp ult i32 %i.na, 4
  br i1 %i.nc, label %.lr.ph.i83.epil.preheader, label %.lr.ph.preheader.i82.new

.lr.ph.preheader.i82.new:                         ; preds = %.lr.ph.preheader.i82
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.lr.ph.i83, %.lr.ph.preheader.i82.new
  %indvars.iv.i84 = phi i64 [ 0, %.lr.ph.preheader.i82.new ], [ %indvars.iv.next.i85.3, %.lr.ph.i83 ] ; 5 uses
  %.sroa.13.035.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i82.new ], [ %i.pk, %.lr.ph.i83 ]
  %i.nd = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.i82.new ], [ %i.pd, %.lr.ph.i83 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i82.new ], [ %niter.next.3, %.lr.ph.i83 ]
  %i.ne = getelementptr inbounds nuw [32 x i8], ptr %i.mz, i64 %indvars.iv.i84 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ng = load <2 x float>, ptr %i.nf, align 4, !tbaa !72
  %i.nh = load <2 x float>, ptr %i.ne, align 4, !tbaa !72
  %i.ni = fsub <2 x float> %i.ng, %i.nh
  %i.nj = fpext <2 x float> %i.ni to <2 x double>
  %i.nk = fadd <2 x double> %i.nd, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !200
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.no = load float, ptr %i.nn, align 4, !tbaa !197
  %i.np = fsub float %i.nm, %i.no
  %i.nq = fpext float %i.np to double
  %i.nr = fadd double %.sroa.13.035.i, %i.nq
  %i.ns = getelementptr inbounds nuw [32 x i8], ptr %i.mz, i64 %indvars.iv.i84 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 32
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  %i.nv = load <2 x float>, ptr %i.nu, align 4, !tbaa !72
  %i.nw = load <2 x float>, ptr %i.nt, align 4, !tbaa !72
  %i.nx = fsub <2 x float> %i.nv, %i.nw
  %i.ny = fpext <2 x float> %i.nx to <2 x double>
  %i.nz = fadd <2 x double> %i.nk, %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ns, i64 56
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !200
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ns, i64 40
  %i.od = load float, ptr %i.oc, align 4, !tbaa !197
  %i.oe = fsub float %i.ob, %i.od
  %i.of = fpext float %i.oe to double
  %i.og = fadd double %i.nr, %i.of
  %i.oh = getelementptr inbounds nuw [32 x i8], ptr %i.mz, i64 %indvars.iv.i84 ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 80
  %i.ok = load <2 x float>, ptr %i.oj, align 4, !tbaa !72
  %i.ol = load <2 x float>, ptr %i.oi, align 4, !tbaa !72
  %i.om = fsub <2 x float> %i.ok, %i.ol
  %i.on = fpext <2 x float> %i.om to <2 x double>
  %i.oo = fadd <2 x double> %i.nz, %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 88
  %i.oq = load float, ptr %i.op, align 4, !tbaa !200
  %i.or = getelementptr inbounds nuw i8, ptr %i.oh, i64 72
  %i.os = load float, ptr %i.or, align 4, !tbaa !197
  %i.ot = fsub float %i.oq, %i.os
  %i.ou = fpext float %i.ot to double
  %i.ov = fadd double %i.og, %i.ou
  %i.ow = getelementptr inbounds nuw [32 x i8], ptr %i.mz, i64 %indvars.iv.i84 ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 96
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 112
  %i.oz = load <2 x float>, ptr %i.oy, align 4, !tbaa !72
  %i.pa = load <2 x float>, ptr %i.ox, align 4, !tbaa !72
  %i.pb = fsub <2 x float> %i.oz, %i.pa
  %i.pc = fpext <2 x float> %i.pb to <2 x double>
  %i.pd = fadd <2 x double> %i.oo, %i.pc          ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ow, i64 120
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !200
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ow, i64 104
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !197
  %i.pi = fsub float %i.pf, %i.ph
  %i.pj = fpext float %i.pi to double
  %i.pk = fadd double %i.ov, %i.pj                ; 3 uses
  %indvars.iv.next.i85.3 = add nuw nsw i64 %indvars.iv.i84, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.thread.i.unr-lcssa, label %.lr.ph.i83, !llvm.loop !259

._crit_edge.thread.i.unr-lcssa:                   ; preds = %.lr.ph.i83
  %lcmp.mod324.not = icmp eq i64 %xtraiter322, 0
  br i1 %lcmp.mod324.not, label %._crit_edge.thread.i, label %.lr.ph.i83.epil.preheader

.lr.ph.i83.epil.preheader:                        ; preds = %._crit_edge.thread.i.unr-lcssa, %.lr.ph.preheader.i82
  %indvars.iv.i84.epil.init = phi i64 [ 0, %.lr.ph.preheader.i82 ], [ %indvars.iv.next.i85.3, %._crit_edge.thread.i.unr-lcssa ]
  %.sroa.13.035.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i82 ], [ %i.pk, %._crit_edge.thread.i.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.i82 ], [ %i.pd, %._crit_edge.thread.i.unr-lcssa ]
  %lcmp.mod327 = icmp ne i64 %xtraiter322, 0
  call void @llvm.assume(i1 %lcmp.mod327)
  br label %.lr.ph.i83.epil

.lr.ph.i83.epil:                                  ; preds = %.lr.ph.i83.epil, %.lr.ph.i83.epil.preheader
  %indvars.iv.i84.epil = phi i64 [ %indvars.iv.i84.epil.init, %.lr.ph.i83.epil.preheader ], [ %indvars.iv.next.i85.epil, %.lr.ph.i83.epil ] ; 2 uses
  %.sroa.13.035.i.epil = phi double [ %.sroa.13.035.i.epil.init, %.lr.ph.i83.epil.preheader ], [ %i.pz, %.lr.ph.i83.epil ]
  %i.pl = phi <2 x double> [ %.epil.init, %.lr.ph.i83.epil.preheader ], [ %i.ps, %.lr.ph.i83.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i83.epil.preheader ], [ %epil.iter.next, %.lr.ph.i83.epil ]
  %i.pm = getelementptr inbounds nuw [32 x i8], ptr %i.mz, i64 %indvars.iv.i84.epil ; 4 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.po = load <2 x float>, ptr %i.pn, align 4, !tbaa !72
  %i.pp = load <2 x float>, ptr %i.pm, align 4, !tbaa !72
  %i.pq = fsub <2 x float> %i.po, %i.pp
  %i.pr = fpext <2 x float> %i.pq to <2 x double>
  %i.ps = fadd <2 x double> %i.pl, %i.pr          ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !200
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !197
  %i.px = fsub float %i.pu, %i.pw
  %i.py = fpext float %i.px to double
  %i.pz = fadd double %.sroa.13.035.i.epil, %i.py ; 2 uses
  %indvars.iv.next.i85.epil = add nuw nsw i64 %indvars.iv.i84.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter322
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i, label %.lr.ph.i83.epil, !llvm.loop !260

._crit_edge.thread.i:                             ; preds = %.lr.ph.i83.epil, %._crit_edge.thread.i.unr-lcssa
  %.lcssa302 = phi <2 x double> [ %i.pd, %._crit_edge.thread.i.unr-lcssa ], [ %i.ps, %.lr.ph.i83.epil ]
  %.lcssa = phi double [ %i.pk, %._crit_edge.thread.i.unr-lcssa ], [ %i.pz, %.lr.ph.i83.epil ]
  %i.qa = uitofp nneg i32 %i.na to double
  %i.qb = fdiv double 1.000000e+00, %i.qa         ; 2 uses
  %i.qc = insertelement <2 x double> poison, double %i.qb, i64 0
  %i.qd = shufflevector <2 x double> %i.qc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qe = fmul <2 x double> %i.qd, %.lcssa302
  %i.qf = fmul double %i.qb, %.lcssa
  br label %._crit_edge.i79

._crit_edge.i79:                                  ; preds = %._crit_edge.thread.i, %.thread112
  %.sroa.13.1.i = phi double [ %i.qf, %._crit_edge.thread.i ], [ 0.000000e+00, %.thread112 ] ; 2 uses
  %i.qg = phi <2 x double> [ %i.qe, %._crit_edge.thread.i ], [ zeroinitializer, %.thread112 ] ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qi = load float, ptr %i.qh, align 8, !tbaa !73 ; 2 uses
  %i.qj = fcmp ogt float %i.qi, 0.000000e+00      ; 2 uses
  br i1 %i.qj, label %bb.t, label %._crit_edge43.i

._crit_edge43.i:                                  ; preds = %._crit_edge.i79
  %.phi.trans.insert.i80 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.qk = load <2 x float>, ptr %.phi.trans.insert.i80, align 8, !tbaa !72
  br label %_ZN3gmxL20print_bbsizes_simpleEP8_IO_FILERKNS_4GridE.exit

bb.t:                                             ; preds = %._crit_edge.i79
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !14
  %i.qn = sitofp i32 %i.qm to float
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.qp = load <2 x float>, ptr %i.qo, align 8, !tbaa !72 ; 3 uses
  %i.qq = extractelement <2 x float> %i.qp, i64 0
  %i.qr = fmul float %i.qi, %i.qq
  %i.qs = extractelement <2 x float> %i.qp, i64 1
  %i.qt = fmul float %i.qr, %i.qs
  %i.qu = fdiv float %i.qn, %i.qt
  %i.qv = fpext float %i.qu to double
  br label %_ZN3gmxL20print_bbsizes_simpleEP8_IO_FILERKNS_4GridE.exit

_ZN3gmxL20print_bbsizes_simpleEP8_IO_FILERKNS_4GridE.exit: ; preds = %._crit_edge43.i, %bb.t
  %i.qw = phi double [ %i.qv, %bb.t ], [ 0.000000e+00, %._crit_edge43.i ] ; 2 uses
  %i.qx = phi <2 x float> [ %i.qp, %bb.t ], [ %i.qk, %._crit_edge43.i ]
  %i.qy = fpext <2 x float> %i.qx to <2 x double> ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ra = extractelement <2 x double> %i.qg, i64 0
  %i.rb = load <2 x float>, ptr %i.qz, align 8, !tbaa !72
  %i.rc = fpext <2 x float> %i.rb to <2 x double>
  %i.rd = extractelement <2 x double> %i.qg, i64 1
  %i.re = fmul <2 x double> %i.qg, %i.rc          ; 2 uses
  %i.rf = fdiv double %.sroa.13.1.i, %i.qw
  %i.rg = select i1 %i.qj, double %i.rf, double 0.000000e+00
  %i.rh = extractelement <2 x double> %i.qy, i64 0
  %i.ri = extractelement <2 x double> %i.qy, i64 1
  %i.rj = extractelement <2 x double> %i.re, i64 0
  %i.rk = extractelement <2 x double> %i.re, i64 1
  %i.rl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.mx, ptr noundef nonnull @.str.17, double noundef %i.rh, double noundef %i.ri, double noundef %i.qw, double noundef %i.ra, double noundef %i.rd, double noundef %.sroa.13.1.i, double noundef %i.rj, double noundef %i.rk, double noundef %i.rg) #22 ; 0 uses
  br label %bb.w

bb.u:                                             ; preds = %._crit_edge160
  %i.rm = sub nsw i32 %.sroa.3.0.extract.trunc, %.sroa.0108.0.extract.trunc
  %i.rn = sitofp i32 %i.rm to double
  %i.ro = sitofp i32 %i.mv to double
  %i.rp = fdiv double %i.rn, %i.ro
  %i.rq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.mw, ptr noundef nonnull @.str.12, i32 noundef %i.mv, double noundef %i.rp) #22 ; 0 uses
  %i.rr = load ptr, ptr @debug, align 8, !tbaa !208
  %i.rs = load i32, ptr %i.ac, align 8, !tbaa !236 ; 2 uses
  %i.rt = icmp sgt i32 %i.rs, 0
  br i1 %i.rt, label %.preheader77.lr.ph.i, label %._crit_edge83.i

.preheader77.lr.ph.i:                             ; preds = %bb.u
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !78
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.rx = load ptr, ptr %i.rw, align 8
  %wide.trip.count.i89 = zext nneg i32 %i.rs to i64
  br label %.preheader77.i

.preheader77.i:                                   ; preds = %._crit_edge.i90, %.preheader77.lr.ph.i
  %.sroa.23.0.i = phi double [ 0.000000e+00, %.preheader77.lr.ph.i ], [ %.sroa.23.3.i, %._crit_edge.i90 ] ; 2 uses
  %indvars.iv89.i = phi i64 [ 0, %.preheader77.lr.ph.i ], [ %indvars.iv.next90.i, %._crit_edge.i90 ] ; 3 uses
  %.082.i = phi i32 [ 0, %.preheader77.lr.ph.i ], [ %i.ub, %._crit_edge.i90 ]
  %i.ry = phi <2 x double> [ zeroinitializer, %.preheader77.lr.ph.i ], [ %i.ua, %._crit_edge.i90 ] ; 2 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %indvars.iv89.i
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !13 ; 3 uses
  %i.sb = icmp sgt i32 %i.sa, 0
  br i1 %i.sb, label %.lr.ph.i92, label %._crit_edge.i90

.lr.ph.i92:                                       ; preds = %.preheader77.i
  %i.sc = shl nuw nsw i64 %indvars.iv89.i, 3
  %i.sd = zext nneg i32 %i.sa to i64
  br label %.preheader.i

._crit_edge83.loopexit.i:                         ; preds = %._crit_edge.i90
  %i.se = sitofp i32 %i.ub to double
  br label %._crit_edge83.i

._crit_edge83.i:                                  ; preds = %._crit_edge83.loopexit.i, %bb.u
  %.sroa.23.1.i = phi double [ %.sroa.23.3.i, %._crit_edge83.loopexit.i ], [ 0.000000e+00, %bb.u ]
  %.0.lcssa.i = phi double [ %i.se, %._crit_edge83.loopexit.i ], [ 0.000000e+00, %bb.u ]
  %i.sf = phi <2 x double> [ %i.ua, %._crit_edge83.loopexit.i ], [ zeroinitializer, %bb.u ] ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.sh = load float, ptr %i.sg, align 8, !tbaa !73 ; 2 uses
  %i.si = fcmp ogt float %i.sh, 0.000000e+00      ; 2 uses
  br i1 %i.si, label %bb.v, label %._crit_edge83._crit_edge.i

._crit_edge83._crit_edge.i:                       ; preds = %._crit_edge83.i
  %.phi.trans.insert.i87 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.sj = load <2 x float>, ptr %.phi.trans.insert.i87, align 8, !tbaa !72
  br label %_ZN3gmxL22print_bbsizes_supersubEP8_IO_FILERKNS_4GridE.exit

.preheader.i:                                     ; preds = %.preheader.i, %.lr.ph.i92
  %.sroa.23.2.i = phi double [ %.sroa.23.0.i, %.lr.ph.i92 ], [ %i.ty, %.preheader.i ]
  %indvars.iv.i93 = phi i64 [ 0, %.lr.ph.i92 ], [ %indvars.iv.next.i95, %.preheader.i ] ; 2 uses
  %i.sk = phi <2 x double> [ %i.ry, %.lr.ph.i92 ], [ %i.tm, %.preheader.i ]
  %i.sl = add nuw nsw i64 %indvars.iv.i93, %i.sc
  %i.sm = lshr exact i64 %i.sl, 2
  %.idx.i94 = mul nuw nsw i64 %i.sm, 96
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rx, i64 %.idx.i94 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 48
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 80
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 32
  %i.sr = load <8 x float>, ptr %i.so, align 4, !tbaa !72 ; 4 uses
  %i.ss = load <8 x float>, ptr %i.sn, align 4, !tbaa !72 ; 4 uses
  %i.st = shufflevector <8 x float> %i.sr, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.su = shufflevector <8 x float> %i.ss, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.sv = fsub <2 x float> %i.st, %i.su
  %i.sw = fpext <2 x float> %i.sv to <2 x double>
  %i.sx = fadd <2 x double> %i.sk, %i.sw
  %i.sy = shufflevector <8 x float> %i.sr, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.sz = shufflevector <8 x float> %i.ss, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.ta = fsub <2 x float> %i.sy, %i.sz
  %i.tb = fpext <2 x float> %i.ta to <2 x double>
  %i.tc = fadd <2 x double> %i.sx, %i.tb
  %i.td = shufflevector <8 x float> %i.sr, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.te = shufflevector <8 x float> %i.ss, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.tf = fsub <2 x float> %i.td, %i.te
  %i.tg = fpext <2 x float> %i.tf to <2 x double>
  %i.th = fadd <2 x double> %i.tc, %i.tg
  %i.ti = shufflevector <8 x float> %i.sr, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.tj = shufflevector <8 x float> %i.ss, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.tk = fsub <2 x float> %i.ti, %i.tj
  %i.tl = fpext <2 x float> %i.tk to <2 x double>
  %i.tm = fadd <2 x double> %i.th, %i.tl          ; 2 uses
  %i.tn = load <4 x float>, ptr %i.sp, align 4, !tbaa !72
  %i.to = load <4 x float>, ptr %i.sq, align 4, !tbaa !72
  %i.tp = fsub <4 x float> %i.tn, %i.to
  %i.tq = fpext <4 x float> %i.tp to <4 x double> ; 4 uses
  %i.tr = extractelement <4 x double> %i.tq, i64 0
  %i.ts = fadd double %.sroa.23.2.i, %i.tr
  %i.tt = extractelement <4 x double> %i.tq, i64 1
  %i.tu = fadd double %i.ts, %i.tt
  %i.tv = extractelement <4 x double> %i.tq, i64 2
  %i.tw = fadd double %i.tu, %i.tv
  %i.tx = extractelement <4 x double> %i.tq, i64 3
  %i.ty = fadd double %i.tw, %i.tx                ; 2 uses
  %indvars.iv.next.i95 = add nuw nsw i64 %indvars.iv.i93, 4 ; 2 uses
  %i.tz = icmp samesign ult i64 %indvars.iv.next.i95, %i.sd
  br i1 %i.tz, label %.preheader.i, label %._crit_edge.i90, !llvm.loop !261

._crit_edge.i90:                                  ; preds = %.preheader.i, %.preheader77.i
  %.sroa.23.3.i = phi double [ %.sroa.23.0.i, %.preheader77.i ], [ %i.ty, %.preheader.i ] ; 2 uses
  %i.ua = phi <2 x double> [ %i.ry, %.preheader77.i ], [ %i.tm, %.preheader.i ] ; 2 uses
  %i.ub = add nsw i32 %i.sa, %.082.i              ; 2 uses
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next90.i, %wide.trip.count.i89
  br i1 %exitcond.not.i91, label %._crit_edge83.loopexit.i, label %.preheader77.i, !llvm.loop !262

bb.v:                                             ; preds = %._crit_edge83.i
  %i.uc = load i32, ptr %i.j, align 4, !tbaa !16
  %i.ud = sitofp i32 %i.uc to float
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.uf = load <2 x float>, ptr %i.ue, align 8, !tbaa !72 ; 3 uses
  %i.ug = extractelement <2 x float> %i.uf, i64 0
  %i.uh = fmul float %i.sh, %i.ug
  %i.ui = extractelement <2 x float> %i.uf, i64 1
  %i.uj = fmul float %i.uh, %i.ui
  %i.uk = fmul float %i.uj, 2.000000e+00
  %i.ul = fdiv float %i.ud, %i.uk
  %i.um = fpext float %i.ul to double
  br label %_ZN3gmxL22print_bbsizes_supersubEP8_IO_FILERKNS_4GridE.exit

_ZN3gmxL22print_bbsizes_supersubEP8_IO_FILERKNS_4GridE.exit: ; preds = %._crit_edge83._crit_edge.i, %bb.v
  %i.un = phi double [ %i.um, %bb.v ], [ 0.000000e+00, %._crit_edge83._crit_edge.i ] ; 2 uses
  %i.uo = phi <2 x float> [ %i.uf, %bb.v ], [ %i.sj, %._crit_edge83._crit_edge.i ]
  %i.up = fdiv double 1.000000e+00, %.0.lcssa.i   ; 3 uses
  %i.uq = fmul double %.sroa.23.1.i, %i.up        ; 2 uses
  %i.ur = extractelement <2 x double> %i.sf, i64 1
  %i.us = fmul double %i.ur, %i.up                ; 2 uses
  %i.ut = extractelement <2 x double> %i.sf, i64 0
  %i.uu = fmul double %i.ut, %i.up                ; 2 uses
  %i.uv = fmul <2 x float> %i.uo, splat (float 5.000000e-01)
  %i.uw = fpext <2 x float> %i.uv to <2 x double> ; 2 uses
  %i.ux = fmul double %i.uu, 2.000000e+00
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.uz = fmul double %i.us, 2.000000e+00
  %i.va = load <2 x float>, ptr %i.uy, align 8, !tbaa !72
  %i.vb = fpext <2 x float> %i.va to <2 x double> ; 2 uses
  %i.vc = extractelement <2 x double> %i.vb, i64 0
  %i.vd = fmul double %i.ux, %i.vc
  %i.ve = extractelement <2 x double> %i.vb, i64 1
  %i.vf = fmul double %i.uz, %i.ve
  %i.vg = fdiv double %i.uq, %i.un
  %i.vh = select i1 %i.si, double %i.vg, double 0.000000e+00
  %i.vi = extractelement <2 x double> %i.uw, i64 0
  %i.vj = extractelement <2 x double> %i.uw, i64 1
  %i.vk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rr, ptr noundef nonnull @.str.17, double noundef %i.vi, double noundef %i.vj, double noundef %i.un, double noundef %i.uu, double noundef %i.us, double noundef %i.uq, double noundef %i.vd, double noundef %i.vf, double noundef %i.vh) #22 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.thread, %_ZN3gmxL20print_bbsizes_simpleEP8_IO_FILERKNS_4GridE.exit, %_ZN3gmxL22print_bbsizes_supersubEP8_IO_FILERKNS_4GridE.exit, %._crit_edge160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  ret void
}

declare noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef) local_unnamed_addr #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx4Grid14setCellIndicesEiiPNS_11GridSetDataENS_8ArrayRefINS_8GridWorkEEENS_5RangeIiEENS3_IKiEENS3_IKNS_11BasicVectorIfEEEEPNS_16nbnxn_atomdata_tE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %9) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.gmx::ArrayRef.26", align 8 ; 3 uses
  %11 = alloca %"class.gmx::ArrayRef.29", align 8 ; 3 uses
  %12 = alloca %"class.gmx::ArrayRef.26", align 8 ; 3 uses
  %13 = alloca %"class.gmx::ArrayRef.29", align 8 ; 3 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !13     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %i.g, ptr %i.b, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 1, ptr %i.c, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !13
  %i.h = load i32, ptr %0, align 4, !tbaa !13     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !13
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !13
  %i.k = load i32, ptr %i.a, align 4, !tbaa !13   ; 2 uses
  %.not36 = icmp sgt i32 %i.k, %i.j
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.t = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 5 uses
  %i.u = load i32, ptr %i.l, align 4, !tbaa !13
  %i.v = load i32, ptr %i.m, align 4, !tbaa !13
  %i.w = mul nsw i32 %i.v, %i.u                   ; 2 uses
  %i.x = trunc nsw i64 %indvars.iv to i32
  %i.y = mul nsw i32 %i.w, %i.x
  %i.z = load i32, ptr %2, align 4, !tbaa !13     ; 2 uses
  %i.aa = sdiv i32 %i.y, %i.z                     ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ab = trunc nsw i64 %indvars.iv.next to i32
  %i.ac = mul nsw i32 %i.w, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.z                    ; 2 uses
  %.not.i = icmp sgt i32 %i.aa, %i.ad
  br i1 %.not.i, label %bb.d, label %_ZN3gmx5RangeIiEC2Eii.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.16, i32 noundef 111) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN3gmx5RangeIiEC2Eii.exit:                       ; preds = %bb.c
  %i.ae = load i8, ptr %3, align 8, !tbaa !74, !range !75, !noundef !76
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load ptr, ptr %4, align 8, !tbaa !232   ; 2 uses
  %i.ah = load ptr, ptr %6, align 8, !tbaa !137   ; 4 uses
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !137
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %7, align 8, !tbaa !146   ; 5 uses
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  %.sroa.6.0.insert.ext32 = zext i32 %i.ad to i64
  %.sroa.6.0.insert.shift33 = shl nuw i64 %.sroa.6.0.insert.ext32, 32
  %.sroa.028.0.insert.ext29 = zext i32 %i.aa to i64
  %.sroa.028.0.insert.insert31 = or disjoint i64 %.sroa.6.0.insert.shift33, %.sroa.028.0.insert.ext29 ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN3gmx5RangeIiEC2Eii.exit
  store ptr %i.an, ptr %10, align 8, !tbaa !146
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !146
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  store ptr %i.as, ptr %i.r, align 8, !tbaa !146
  %i.at = load ptr, ptr %8, align 8, !tbaa !234
  %i.au = load i64, ptr %9, align 8
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds [48 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !78 ; 3 uses
  store ptr %i.ay, ptr %11, align 8, !tbaa !212
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !77
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bd
  store ptr %i.be, ptr %i.s, align 8, !tbaa !212
  invoke void @_ZN3gmx4Grid22sortColumnsCpuGeometryEPNS_11GridSetDataEiNS_8ArrayRefIKiEENS3_IKNS_11BasicVectorIfEEEEPNS_16nbnxn_atomdata_tENS_5RangeIiEENS3_IiEE(ptr noundef nonnull align 8 dereferenceable(372) %3, ptr noundef %i.ag, i32 poison, ptr %i.ah, ptr %i.am, ptr noundef nonnull byval(%"class.gmx::ArrayRef.26") align 8 %10, ptr noundef %i.at, i64 %.sroa.028.0.insert.insert31, ptr noundef nonnull byval(%"class.gmx::ArrayRef.29") align 8 %11)
          to label %bb.j unwind label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bf = extractvalue { ptr, i32 } %lpad.phi, 0  ; 2 uses
  %i.bg = extractvalue { ptr, i32 } %lpad.phi, 1
  %i.bh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #22
  %i.bi = icmp eq i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.bj = call ptr @__cxa_begin_catch(ptr %i.bf) #22
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) #30
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %_ZN3gmx5RangeIiEC2Eii.exit
  store ptr %i.an, ptr %12, align 8, !tbaa !146
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !146
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.ao
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bm
  store ptr %i.bn, ptr %i.o, align 8, !tbaa !146
  %i.bo = load ptr, ptr %8, align 8, !tbaa !234
  %i.bp = load i64, ptr %9, align 8
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds [48 x i8], ptr %i.bq, i64 %indvars.iv ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !78 ; 3 uses
  store ptr %i.bt, ptr %13, align 8, !tbaa !212
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !77
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by
  store ptr %i.bz, ptr %i.q, align 8, !tbaa !212
  invoke void @_ZN3gmx4Grid22sortColumnsGpuGeometryEPNS_11GridSetDataEiNS_8ArrayRefIKiEENS3_IKNS_11BasicVectorIfEEEEPNS_16nbnxn_atomdata_tENS_5RangeIiEENS3_IiEE(ptr noundef nonnull align 8 dereferenceable(372) %3, ptr noundef %i.ag, i32 poison, ptr %i.ah, ptr %i.am, ptr noundef nonnull byval(%"class.gmx::ArrayRef.26") align 8 %12, ptr noundef %i.bo, i64 %.sroa.028.0.insert.insert31, ptr noundef nonnull byval(%"class.gmx::ArrayRef.29") align 8 %13)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !13
  %i.cb = sext i32 %i.ca to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.cb
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.l:                                             ; preds = %bb.g
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #32
  unreachable

bb.m:                                             ; preds = %bb.f
  call void @__clang_call_terminate(ptr %i.bf) #32
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #22

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #23

; Function Attrs: noreturn
declare void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #22

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #22

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #22

; Function Attrs: nounwind
declare !callback !263 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #22

declare void @_ZN3gmx16nbnxn_atomdata_t22resizeCoordinateBufferEii(ptr noundef nonnull align 8 dereferenceable(656), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 17 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !13     ; 9 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !265

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !77
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !13
  store i32 %i.s, ptr %i.d, align 4, !tbaa !13
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !77
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !265

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %iter.check164

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %iter.check164

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !13
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !13
  br label %iter.check164

iter.check164:                                    ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 3 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 5 uses
  %min.iters.check150 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check150, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check151

vector.main.loop.iter.check151:                   ; preds = %iter.check164
  %min.iters.check152 = icmp ult i64 %i.ae, 124
  br i1 %min.iters.check152, label %vec.epilog.ph168, label %vector.ph153

vector.ph153:                                     ; preds = %vector.main.loop.iter.check151
  %i.ah = and i64 %i.ag, 24
  %n.vec154 = and i64 %i.ag, 9223372036854775776  ; 4 uses
  %i.ai = shl i64 %n.vec154, 2
  %i.aj = getelementptr i8, ptr %1, i64 %i.ai
  %broadcast.splatinsert155 = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat156 = shufflevector <8 x i32> %broadcast.splatinsert155, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph153
  %index158 = phi i64 [ 0, %vector.ph153 ], [ %index.next160, %vector.body157 ] ; 2 uses
  %i.ak = shl i64 %index158, 2
  %next.gep159 = getelementptr i8, ptr %1, i64 %i.ak ; 4 uses
  %i.al = getelementptr i8, ptr %next.gep159, i64 32
  %i.am = getelementptr i8, ptr %next.gep159, i64 64
  %i.an = getelementptr i8, ptr %next.gep159, i64 96
  store <8 x i32> %broadcast.splat156, ptr %next.gep159, align 4, !tbaa !13
  store <8 x i32> %broadcast.splat156, ptr %i.al, align 4, !tbaa !13
  store <8 x i32> %broadcast.splat156, ptr %i.am, align 4, !tbaa !13
  store <8 x i32> %broadcast.splat156, ptr %i.an, align 4, !tbaa !13
  %index.next160 = add nuw i64 %index158, 32      ; 2 uses
  %i.ao = icmp eq i64 %index.next160, %n.vec154
  br i1 %i.ao, label %middle.block161, label %vector.body157, !llvm.loop !266

middle.block161:                                  ; preds = %vector.body157
  %cmp.n162 = icmp eq i64 %i.ag, %n.vec154
  br i1 %cmp.n162, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block161
  %min.epilog.iters.check167 = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check167, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph168, !prof !120

vec.epilog.ph168:                                 ; preds = %vector.main.loop.iter.check151, %vec.epilog.iter.check166
  %vec.epilog.resume.val163 = phi i64 [ %n.vec154, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check151 ]
  %n.vec169 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ap = shl i64 %n.vec169, 2
  %i.aq = getelementptr i8, ptr %1, i64 %i.ap
  %broadcast.splatinsert170 = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat171 = shufflevector <8 x i32> %broadcast.splatinsert170, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph168
  %index173 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph168 ], [ %index.next175, %vec.epilog.vector.body172 ] ; 2 uses
  %i.ar = shl i64 %index173, 2
  %next.gep174 = getelementptr i8, ptr %1, i64 %i.ar
  store <8 x i32> %broadcast.splat171, ptr %next.gep174, align 4, !tbaa !13
  %index.next175 = add nuw i64 %index173, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next175, %n.vec169
  br i1 %i.as, label %vec.epilog.middle.block176, label %vec.epilog.vector.body172, !llvm.loop !267

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body172
  %cmp.n177 = icmp eq i64 %i.ag, %n.vec169
  br i1 %cmp.n177, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check164, %vec.epilog.iter.check166, %vec.epilog.middle.block176
  %.06.i.i.i.ph = phi ptr [ %1, %iter.check164 ], [ %i.aj, %vec.epilog.iter.check166 ], [ %i.aq, %vec.epilog.middle.block176 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !268

bb.k:                                             ; preds = %bb.c
  %i.au = icmp eq i64 %2, %i.l
  br i1 %i.au, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.av = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.av, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 4 uses
  %i.ax = shl i64 %2, 2
  %i.ay = add i64 %i.ax, -4
  %i.az = sub i64 %i.ay, %i.k                     ; 3 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.az, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check112 = icmp ult i64 %i.az, 124
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.bb, 24
  %n.vec = and i64 %i.bb, 9223372036854775776     ; 4 uses
  %i.bd = shl i64 %n.vec, 2
  %i.be = getelementptr i8, ptr %i.d, i64 %i.bd
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bf ; 4 uses
  %i.bg = getelementptr i8, ptr %next.gep, i64 32
  %i.bh = getelementptr i8, ptr %next.gep, i64 64
  %i.bi = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !13
  store <8 x i32> %broadcast.splat, ptr %i.bg, align 4, !tbaa !13
  store <8 x i32> %broadcast.splat, ptr %i.bh, align 4, !tbaa !13
  store <8 x i32> %broadcast.splat, ptr %i.bi, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !269

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !120

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec113 = and i64 %i.bb, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec113, 2
  %i.bl = getelementptr i8, ptr %i.d, i64 %i.bk
  %broadcast.splatinsert114 = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat115 = shufflevector <8 x i32> %broadcast.splatinsert114, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index116 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next118, %vec.epilog.vector.body ] ; 2 uses
  %i.bm = shl i64 %index116, 2
  %next.gep117 = getelementptr i8, ptr %i.d, i64 %i.bm
  store <8 x i32> %broadcast.splat115, ptr %next.gep117, align 4, !tbaa !13
  %index.next118 = add nuw i64 %index116, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next118, %n.vec113
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !270

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n119 = icmp eq i64 %i.bb, %n.vec113
  br i1 %cmp.n119, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.be, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.aw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !271
end_hunk_0
