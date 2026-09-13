Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 78
begin_hunk_0_@gui_post_expose:bb.a
  %i.le = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.lf = load ptr, ptr %i.le, align 16, !tbaa !143
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  %i.lh = load i32, ptr %i.lg, align 16, !tbaa !144
  %i.li = sitofp reassoc nsz arcp contract afn i32 %i.lh to double
  %i.lj = call i64 @dt_dev_hash_distort_plus(ptr noundef %i.h, ptr noundef %i.lf, double noundef %i.li, i32 noundef 1) #34 ; 2 uses
  %i.lk = load ptr, ptr %i.la, align 8, !tbaa !179 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.j, i64 216 ; 3 uses
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !180 ; 2 uses
  %i.ln = icmp sgt i32 %i.lm, 0
  br i1 %i.ln, label %.lr.ph.preheader.i, label %_get_lines_hash.exit

.lr.ph.preheader.i:                               ; preds = %bb.t
  %wide.trip.count.i = zext nneg i32 %i.lm to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.01213.i = phi i64 [ 5381, %.lr.ph.preheader.i ], [ %i.od, %.lr.ph.i ]
  %i.lo = getelementptr inbounds nuw [64 x i8], ptr %i.lk, i64 %indvars.iv.i ; 4 uses
  %i.lp = load float, ptr %i.lo, align 16, !tbaa !15
  %i.lq = fptoui float %i.lp to i32               ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !15
  %i.lt = fptoui float %i.ls to i32               ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !15
  %i.lw = fptoui float %i.lv to i32               ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.ly = load float, ptr %i.lx, align 16, !tbaa !15
  %i.lz = fptoui float %i.ly to i32               ; 4 uses
  %i.ma = mul i64 %.01213.i, 33
  %i.mb = and i32 %i.lq, 255
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = xor i64 %i.ma, %i.mc
  %i.me = mul i64 %i.md, 33
  %.sroa.0.1.extract.shift.i = lshr i32 %i.lq, 8
  %i.mf = and i32 %.sroa.0.1.extract.shift.i, 255
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = xor i64 %i.me, %i.mg
  %i.mi = mul i64 %i.mh, 33
  %.sroa.0.2.extract.shift.i = lshr i32 %i.lq, 16
  %i.mj = and i32 %.sroa.0.2.extract.shift.i, 255
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = xor i64 %i.mi, %i.mk
  %i.mm = mul i64 %i.ml, 33
  %.sroa.0.3.extract.shift.i = lshr i32 %i.lq, 24
  %.sroa.0.3.extract.trunc.i = zext nneg i32 %.sroa.0.3.extract.shift.i to i64
  %i.mn = xor i64 %i.mm, %.sroa.0.3.extract.trunc.i
  %i.mo = mul i64 %i.mn, 33
  %i.mp = and i32 %i.lt, 255
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = xor i64 %i.mo, %i.mq
  %i.ms = mul i64 %i.mr, 33
  %.sroa.7.5.extract.shift.i = lshr i32 %i.lt, 8
  %i.mt = and i32 %.sroa.7.5.extract.shift.i, 255
  %i.mu = zext nneg i32 %i.mt to i64
  %i.mv = xor i64 %i.ms, %i.mu
  %i.mw = mul i64 %i.mv, 33
  %.sroa.7.6.extract.shift.i = lshr i32 %i.lt, 16
  %i.mx = and i32 %.sroa.7.6.extract.shift.i, 255
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = xor i64 %i.mw, %i.my
  %i.na = mul i64 %i.mz, 33
  %.sroa.7.7.extract.shift.i = lshr i32 %i.lt, 24
  %.sroa.7.7.extract.trunc.i = zext nneg i32 %.sroa.7.7.extract.shift.i to i64
  %i.nb = xor i64 %i.na, %.sroa.7.7.extract.trunc.i
  %i.nc = mul i64 %i.nb, 33
  %i.nd = and i32 %i.lw, 255
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = xor i64 %i.nc, %i.ne
  %i.ng = mul i64 %i.nf, 33
  %.sroa.12.9.extract.shift.i = lshr i32 %i.lw, 8
  %i.nh = and i32 %.sroa.12.9.extract.shift.i, 255
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = xor i64 %i.ng, %i.ni
  %i.nk = mul i64 %i.nj, 33
  %.sroa.12.10.extract.shift.i = lshr i32 %i.lw, 16
  %i.nl = and i32 %.sroa.12.10.extract.shift.i, 255
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = xor i64 %i.nk, %i.nm
  %i.no = mul i64 %i.nn, 33
  %.sroa.12.11.extract.shift.i = lshr i32 %i.lw, 24
  %.sroa.12.11.extract.trunc.i = zext nneg i32 %.sroa.12.11.extract.shift.i to i64
  %i.np = xor i64 %i.no, %.sroa.12.11.extract.trunc.i
  %i.nq = mul i64 %i.np, 33
  %i.nr = and i32 %i.lz, 255
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = xor i64 %i.nq, %i.ns
  %i.nu = mul i64 %i.nt, 33
  %.sroa.17.13.extract.shift.i = lshr i32 %i.lz, 8
  %i.nv = and i32 %.sroa.17.13.extract.shift.i, 255
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = xor i64 %i.nu, %i.nw
  %i.ny = mul i64 %i.nx, 33
  %.sroa.17.14.extract.shift.i = lshr i32 %i.lz, 16
  %i.nz = and i32 %.sroa.17.14.extract.shift.i, 255
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = xor i64 %i.ny, %i.oa
  %i.oc = mul i64 %i.ob, 33
  %.sroa.17.15.extract.shift.i = lshr i32 %i.lz, 24
  %.sroa.17.15.extract.trunc.i = zext nneg i32 %.sroa.17.15.extract.shift.i to i64
  %i.od = xor i64 %i.oc, %.sroa.17.15.extract.trunc.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_get_lines_hash.exit, label %.lr.ph.i

_get_lines_hash.exit:                             ; preds = %.lr.ph.i, %bb.t
  %.012.lcssa.i = phi i64 [ 5381, %bb.t ], [ %i.od, %.lr.ph.i ] ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.j, i64 240 ; 6 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !181 ; 2 uses
  %i.og = icmp eq ptr %i.of, null
  br i1 %i.og, label %bb.y, label %bb.u

bb.u:                                             ; preds = %_get_lines_hash.exit
  %i.oh = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !182 ; 4 uses
  %i.oj = icmp eq ptr %i.oi, null
  br i1 %i.oj, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ok = getelementptr inbounds nuw i8, ptr %i.j, i64 304
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !412
  %.not486 = icmp eq i64 %i.lj, %i.ol
  br i1 %.not486, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.om = getelementptr inbounds nuw i8, ptr %i.j, i64 228 ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !183
  %i.oo = getelementptr inbounds nuw i8, ptr %i.j, i64 260 ; 2 uses
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !413
  %i.oq = icmp sgt i32 %i.on, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  %i.os = load i64, ptr %i.or, align 8, !tbaa !184
  %.not487 = icmp eq i64 %i.os, %.012.lcssa.i     ; 2 uses
  br i1 %i.oq, label %bb.x, label %bb.ax

bb.x:                                             ; preds = %bb.w
  br i1 %.not487, label %.preheader, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v, %bb.u, %_get_lines_hash.exit
  call void @free(ptr noundef %i.of) #34
  store ptr null, ptr %i.oe, align 8, !tbaa !181
  %i.ot = getelementptr inbounds nuw i8, ptr %i.j, i64 248 ; 3 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !182
  call void @free(ptr noundef %i.ou) #34
  store ptr null, ptr %i.ot, align 8, !tbaa !182
  %i.ov = getelementptr inbounds nuw i8, ptr %i.j, i64 392 ; 3 uses
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !185
  call void @free(ptr noundef %i.ow) #34
  store ptr null, ptr %i.ov, align 8, !tbaa !185
  %i.ox = getelementptr inbounds nuw i8, ptr %i.j, i64 256 ; 2 uses
  store i32 0, ptr %i.ox, align 8, !tbaa !186
  %i.oy = load ptr, ptr %i.la, align 8, !tbaa !179 ; 4 uses
  %i.oz = load i32, ptr %i.ll, align 8, !tbaa !180 ; 6 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.j, i64 228 ; 2 uses
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !183
  %i.pc = load ptr, ptr %i.g, align 8, !tbaa !126 ; 3 uses
  %i.pd = load ptr, ptr %i.i, align 16, !tbaa !125 ; 2 uses
  %i.pe = icmp slt i32 %i.oz, 1
  br i1 %i.pe, label %_get_points.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 152
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !151
  %i.ph = zext nneg i32 %i.oz to i64              ; 6 uses
  %i.pi = mul nuw nsw i64 %i.ph, 48
  %i.pj = call noalias ptr @malloc(i64 noundef %i.pi) #33 ; 8 uses
  %i.pk = icmp eq ptr %i.pj, null
  br i1 %i.pk, label %_get_points.exit.thread, label %.lr.ph.i500

.lr.ph.i500:                                      ; preds = %bb.z
  %.not230.i = icmp eq i32 %i.pg, 0               ; 4 uses
  %i.pl = select i1 %.not230.i, i32 4, i32 2      ; 3 uses
  %i.pm = select i1 %.not230.i, i32 3, i32 1      ; 3 uses
  %i.pn = select i1 %.not230.i, i32 2, i32 4      ; 3 uses
  %i.po = select i1 %.not230.i, i32 1, i32 3      ; 3 uses
  %xtraiter = and i64 %i.ph, 1
  %i.pp = icmp eq i32 %i.oz, 1
  br i1 %i.pp, label %.epil.preheader, label %.lr.ph.i500.new

.lr.ph.i500.new:                                  ; preds = %.lr.ph.i500
  %unroll_iter = and i64 %i.ph, 2147483646
  br label %bb.ae

._crit_edge.i.unr-lcssa:                          ; preds = %bb.ao
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i500
  %indvars.iv.i501.epil.init = phi i64 [ 0, %.lr.ph.i500 ], [ %indvars.iv.next.i502.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.0212258.i.epil.init = phi i64 [ 0, %.lr.ph.i500 ], [ %i.rc, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod655 = trunc i32 %i.oz to i1
  call void @llvm.assume(i1 %lcmp.mod655)
  %i.pq = getelementptr inbounds nuw [64 x i8], ptr %i.oy, i64 %indvars.iv.i501.epil.init ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 24
  %i.ps = load float, ptr %i.pr, align 8, !tbaa !188 ; 2 uses
  %i.pt = fcmp reassoc nsz arcp contract afn ogt float %i.ps, 2.000000e+00
  %spec.select254.i.epil = select i1 %i.pt, float %i.ps, float 2.000000e+00
  %spec.select.i.epil = fptosi float %spec.select254.i.epil to i32 ; 3 uses
  %8 = zext nneg i32 %spec.select.i.epil to i64
  %i.pu = add i64 %.0212258.i.epil.init, %8
  %i.pv = getelementptr inbounds nuw [48 x i8], ptr %i.pj, i64 %indvars.iv.i501.epil.init ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.pq, i64 36
  %i.py = load i32, ptr %i.px, align 4, !tbaa !189 ; 2 uses
  %i.pz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>, i32 %spec.select.i.epil, i64 0
  %i.qa = insertelement <4 x i32> %i.pz, i32 %i.py, i64 3
  store <4 x i32> %i.qa, ptr %i.pw, align 8, !tbaa !17
  %i.qb = and i32 %i.py, 7
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  switch i32 %i.qb, label %bb.ad [
    i32 7, label %._crit_edge.i.epilog-lcssa
    i32 3, label %bb.ac
    i32 5, label %bb.ab
    i32 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %.epil.preheader
  br label %._crit_edge.i.epilog-lcssa

bb.ab:                                            ; preds = %.epil.preheader
  br label %._crit_edge.i.epilog-lcssa

bb.ac:                                            ; preds = %.epil.preheader
  br label %._crit_edge.i.epilog-lcssa

bb.ad:                                            ; preds = %.epil.preheader
  br label %._crit_edge.i.epilog-lcssa

._crit_edge.i.epilog-lcssa:                       ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.epil.preheader
  %.sink.i.epil = phi i32 [ %i.pn, %bb.ac ], [ %i.pl, %bb.aa ], [ 0, %bb.ad ], [ %i.pm, %bb.ab ], [ %i.po, %.epil.preheader ]
  store i32 %.sink.i.epil, ptr %i.qc, align 8, !tbaa !191
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %._crit_edge.i.epilog-lcssa
  %.0212258.i.lcssa = phi i64 [ %i.qp, %._crit_edge.i.unr-lcssa ], [ %.0212258.i.epil.init, %._crit_edge.i.epilog-lcssa ]
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.1, %._crit_edge.i.unr-lcssa ], [ %spec.select.i.epil, %._crit_edge.i.epilog-lcssa ]
  %.lcssa649 = phi i64 [ %i.rc, %._crit_edge.i.unr-lcssa ], [ %i.pu, %._crit_edge.i.epilog-lcssa ] ; 4 uses
  %i.qd = shl i64 %.lcssa649, 3
  %i.qe = call noalias ptr @malloc(i64 noundef %i.qd) #33 ; 14 uses
  %i.qf = shl nuw nsw i64 %i.ph, 4
  %i.qg = call noalias ptr @malloc(i64 noundef %i.qf) #33 ; 5 uses
  %i.qh = icmp eq ptr %i.qe, null                 ; 2 uses
  %i.qi = icmp eq ptr %i.qg, null                 ; 2 uses
  %or.cond.i = or i1 %i.qh, %i.qi
  br i1 %or.cond.i, label %.thread241.i, label %.lr.ph268.i.preheader

.lr.ph268.i.preheader:                            ; preds = %._crit_edge.i
  %i.qj = add i64 %.0212258.i.lcssa, -1
  %9 = zext i32 %spec.select.i.lcssa to i64
  %i.qk = add i64 %i.qj, %9
  br label %.lr.ph268.i

bb.ae:                                            ; preds = %bb.ao, %.lr.ph.i500.new
  %indvars.iv.i501 = phi i64 [ 0, %.lr.ph.i500.new ], [ %indvars.iv.next.i502.1, %bb.ao ] ; 4 uses
  %.0212258.i = phi i64 [ 0, %.lr.ph.i500.new ], [ %i.rc, %bb.ao ]
  %niter = phi i64 [ 0, %.lr.ph.i500.new ], [ %niter.next.1, %bb.ao ]
  %i.ql = getelementptr inbounds nuw [64 x i8], ptr %i.oy, i64 %indvars.iv.i501 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 24
  %i.qn = load float, ptr %i.qm, align 8, !tbaa !188 ; 2 uses
  %i.qo = fcmp reassoc nsz arcp contract afn ogt float %i.qn, 2.000000e+00
  %spec.select254.i = select i1 %i.qo, float %i.qn, float 2.000000e+00
  %spec.select.i = fptosi float %spec.select254.i to i32 ; 2 uses
  %10 = zext nneg i32 %spec.select.i to i64
  %i.qp = add i64 %.0212258.i, %10                ; 2 uses
  %i.qq = getelementptr inbounds nuw [48 x i8], ptr %i.pj, i64 %indvars.iv.i501 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ql, i64 36
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !189 ; 2 uses
  %i.qu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>, i32 %spec.select.i, i64 0
  %i.qv = insertelement <4 x i32> %i.qu, i32 %i.qt, i64 3
  store <4 x i32> %i.qv, ptr %i.qr, align 8, !tbaa !17
  %i.qw = and i32 %i.qt, 7
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qq, i64 24
  switch i32 %i.qw, label %bb.ai [
    i32 7, label %bb.aj
    i32 3, label %bb.af
    i32 5, label %bb.ag
    i32 1, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.sink.i = phi i32 [ %i.pn, %bb.af ], [ %i.pl, %bb.ah ], [ 0, %bb.ai ], [ %i.pm, %bb.ag ], [ %i.po, %bb.ae ]
  store i32 %.sink.i, ptr %i.qx, align 8, !tbaa !191
  %indvars.iv.next.i502 = or disjoint i64 %indvars.iv.i501, 1 ; 2 uses
  %i.qy = getelementptr inbounds nuw [64 x i8], ptr %i.oy, i64 %indvars.iv.next.i502 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  %i.ra = load float, ptr %i.qz, align 8, !tbaa !188 ; 2 uses
  %i.rb = fcmp reassoc nsz arcp contract afn ogt float %i.ra, 2.000000e+00
  %spec.select254.i.1 = select i1 %i.rb, float %i.ra, float 2.000000e+00
  %spec.select.i.1 = fptosi float %spec.select254.i.1 to i32 ; 3 uses
  %11 = zext nneg i32 %spec.select.i.1 to i64
  %i.rc = add i64 %i.qp, %11                      ; 3 uses
  %i.rd = getelementptr inbounds nuw [48 x i8], ptr %i.pj, i64 %indvars.iv.next.i502 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qy, i64 36
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !189 ; 2 uses
  %i.rh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>, i32 %spec.select.i.1, i64 0
  %i.ri = insertelement <4 x i32> %i.rh, i32 %i.rg, i64 3
  store <4 x i32> %i.ri, ptr %i.re, align 8, !tbaa !17
  %i.rj = and i32 %i.rg, 7
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  switch i32 %i.rj, label %bb.an [
    i32 7, label %bb.ao
    i32 3, label %bb.am
    i32 5, label %bb.al
    i32 1, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  br label %bb.ao

bb.am:                                            ; preds = %bb.aj
  br label %bb.ao

bb.an:                                            ; preds = %bb.aj
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %.sink.i.1 = phi i32 [ %i.pn, %bb.am ], [ %i.pl, %bb.ak ], [ 0, %bb.an ], [ %i.pm, %bb.al ], [ %i.po, %bb.aj ]
  store i32 %.sink.i.1, ptr %i.rk, align 8, !tbaa !191
  %indvars.iv.next.i502.1 = add nuw nsw i64 %indvars.iv.i501, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.ae

._crit_edge269.i:                                 ; preds = %.loopexit.i
  %i.rl = getelementptr inbounds nuw i8, ptr %i.pc, i64 96 ; 2 uses
  %i.rm = load ptr, ptr %i.rl, align 16, !tbaa !143
  %i.rn = load i32, ptr %i.lg, align 16, !tbaa !144
  %i.ro = sitofp reassoc nsz arcp contract afn i32 %i.rn to double
  %i.rp = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.pc, ptr noundef %i.rm, double noundef %i.ro, i32 noundef 1, ptr noundef %i.qe, i64 noundef %.lcssa649) #34
  %.not.i504 = icmp eq i32 %i.rp, 0
  br i1 %.not.i504, label %.thread241.i, label %bb.aq

.lr.ph268.i:                                      ; preds = %.lr.ph268.i.preheader, %.loopexit.i
  %indvars.iv293.i = phi i64 [ %indvars.iv.next294.i, %.loopexit.i ], [ 0, %.lr.ph268.i.preheader ] ; 4 uses
  %.0209267.i = phi i32 [ %.2.i, %.loopexit.i ], [ 0, %.lr.ph268.i.preheader ] ; 4 uses
  %i.rq = getelementptr inbounds nuw [64 x i8], ptr %i.oy, i64 %indvars.iv293.i ; 5 uses
  %i.rr = load float, ptr %i.rq, align 16, !tbaa !15 ; 8 uses
  %.idx312.i = shl nuw nsw i64 %indvars.iv293.i, 4
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qg, i64 %.idx312.i ; 4 uses
  store float %i.rr, ptr %i.rs, align 4, !tbaa !15
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 4
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !15 ; 8 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 4
  store float %i.ru, ptr %i.rv, align 4, !tbaa !15
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rq, i64 12
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !15 ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  store float %i.rx, ptr %i.ry, align 4, !tbaa !15
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.sa = load float, ptr %i.rz, align 16, !tbaa !15 ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rs, i64 12
  store float %i.sa, ptr %i.sb, align 4, !tbaa !15
  %i.sc = sext i32 %.0209267.i to i64             ; 8 uses
  %i.sd = getelementptr inbounds nuw [48 x i8], ptr %i.pj, i64 %indvars.iv293.i
  store i64 %i.sc, ptr %i.sd, align 8, !tbaa !192
  %i.se = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.sf = load float, ptr %i.se, align 8, !tbaa !188
  %i.sg = fptosi float %i.sf to i32               ; 4 uses
  %i.sh = fsub reassoc nsz arcp contract afn float %i.rx, %i.rr
  %i.si = add nsw i32 %i.sg, -1
  %i.sj = sitofp reassoc nsz arcp contract afn i32 %i.si to float ; 2 uses
  %i.sk = fdiv reassoc nsz arcp contract afn float %i.sh, %i.sj ; 6 uses
  %i.sl = fsub reassoc nsz arcp contract afn float %i.sa, %i.ru
  %i.sm = fdiv reassoc nsz arcp contract afn float %i.sl, %i.sj ; 6 uses
  %i.sn = icmp slt i32 %i.sg, 2
  br i1 %i.sn, label %bb.ap, label %.preheader255.i

.preheader255.i:                                  ; preds = %.lr.ph268.i
  %i.so = icmp ugt i64 %.lcssa649, %i.sc
  br i1 %i.so, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %.preheader255.i
  %i.sp = sub i64 %i.qk, %i.sc
  %i.sq = freeze i64 %i.sp
  %i.sr = add nsw i32 %i.sg, -1
  %i.ss = zext i32 %i.sr to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.sq, i64 %i.ss) ; 3 uses
  %i.st = add nuw nsw i64 %umin, 1                ; 5 uses
  %min.iters.check590 = icmp samesign ult i64 %umin, 3
  br i1 %min.iters.check590, label %.lr.ph264.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check591 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check591, label %vec.epilog.ph, label %vector.ph592

vector.ph592:                                     ; preds = %vector.main.loop.iter.check
  %i.su = and i64 %i.st, 28
  %n.vec593 = and i64 %i.st, 8589934560           ; 6 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.sm, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert594 = insertelement <8 x float> poison, float %i.sk, i64 0
  %broadcast.splat595 = shufflevector <8 x float> %broadcast.splatinsert594, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.sv = add nsw i64 %n.vec593, %i.sc            ; 2 uses
  %i.sw = trunc i64 %n.vec593 to i32
  %i.sx = uitofp nneg i64 %n.vec593 to float      ; 2 uses
  %i.sy = fmul reassoc nsz arcp contract afn float %i.sm, %i.sx
  %i.sz = fadd reassoc nsz arcp contract afn float %i.ru, %i.sy ; 2 uses
  %i.ta = fmul reassoc nsz arcp contract afn float %i.sk, %i.sx
  %i.tb = fadd reassoc nsz arcp contract afn float %i.rr, %i.ta ; 2 uses
  %i.tc = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, splat (float 8.000000e+00) ; 5 uses
  %i.td = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat595, splat (float 8.000000e+00) ; 5 uses
  %broadcast.splatinsert596 = insertelement <8 x float> poison, float %i.ru, i64 0
  %broadcast.splat597 = shufflevector <8 x float> %broadcast.splatinsert596, <8 x float> poison, <8 x i32> zeroinitializer
  %i.te = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00>
  %induction = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat597, %i.te
  %broadcast.splatinsert598 = insertelement <8 x float> poison, float %i.rr, i64 0
  %broadcast.splat599 = shufflevector <8 x float> %broadcast.splatinsert598, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tf = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat595, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00>
  %induction600 = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat599, %i.tf
  %invariant.op = fadd reassoc nsz arcp contract afn <8 x float> %i.tc, %i.tc ; 2 uses
  %invariant.op669 = fadd reassoc nsz arcp contract afn <8 x float> %invariant.op, %i.tc ; 2 uses
  %invariant.op670 = fadd reassoc nsz arcp contract afn <8 x float> %i.td, %i.td ; 2 uses
  %invariant.op671 = fadd reassoc nsz arcp contract afn <8 x float> %invariant.op670, %i.td ; 2 uses
  %invariant.op672 = fadd reassoc nsz arcp contract afn <8 x float> %invariant.op669, %i.tc
  %invariant.op673 = fadd reassoc nsz arcp contract afn <8 x float> %invariant.op671, %i.td
  br label %vector.body601

vector.body601:                                   ; preds = %vector.body601, %vector.ph592
  %index602 = phi i64 [ 0, %vector.ph592 ], [ %index.next611, %vector.body601 ] ; 2 uses
  %vec.ind603 = phi <8 x float> [ %induction, %vector.ph592 ], [ %vec.ind.next612.reass, %vector.body601 ] ; 5 uses
  %vec.ind604 = phi <8 x float> [ %induction600, %vector.ph592 ], [ %vec.ind.next613.reass, %vector.body601 ] ; 5 uses
  %step.add = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind603, %i.tc
  %step.add.2.reass = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind603, %invariant.op
  %step.add.3.reass = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind603, %invariant.op669
  %step.add605 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind604, %i.td
  %step.add.2606.reass = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind604, %invariant.op670
  %step.add.3607.reass = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind604, %invariant.op671
  %i.tg = add nuw i64 %index602, %i.sc            ; 4 uses
  %i.th = shl nsw i64 %i.tg, 3
  %i.ti = shl i64 %i.tg, 3
  %i.tj = shl i64 %i.tg, 3
  %i.tk = shl i64 %i.tg, 3
  %i.tl = getelementptr inbounds i8, ptr %i.qe, i64 %i.th
  %i.tm = getelementptr i8, ptr %i.qe, i64 %i.ti
  %i.tn = getelementptr i8, ptr %i.tm, i64 64
  %i.to = getelementptr i8, ptr %i.qe, i64 %i.tj
  %i.tp = getelementptr i8, ptr %i.to, i64 128
  %i.tq = getelementptr i8, ptr %i.qe, i64 %i.tk
  %i.tr = getelementptr i8, ptr %i.tq, i64 192
  %interleaved.vec = shufflevector <8 x float> %vec.ind604, <8 x float> %vec.ind603, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.tl, align 4, !tbaa !15
  %interleaved.vec608 = shufflevector <8 x float> %step.add605, <8 x float> %step.add, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec608, ptr %i.tn, align 4, !tbaa !15
  %interleaved.vec609 = shufflevector <8 x float> %step.add.2606.reass, <8 x float> %step.add.2.reass, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec609, ptr %i.tp, align 4, !tbaa !15
  %interleaved.vec610 = shufflevector <8 x float> %step.add.3607.reass, <8 x float> %step.add.3.reass, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec610, ptr %i.tr, align 4, !tbaa !15
  %index.next611 = add nuw i64 %index602, 32      ; 2 uses
  %vec.ind.next612.reass = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind603, %invariant.op672
  %vec.ind.next613.reass = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind604, %invariant.op673
  %i.ts = icmp eq i64 %index.next611, %n.vec593
  br i1 %i.ts, label %middle.block614, label %vector.body601, !llvm.loop !392

middle.block614:                                  ; preds = %vector.body601
  %cmp.n615 = icmp eq i64 %i.st, %n.vec593
  br i1 %cmp.n615, label %.loopexit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block614
  %min.epilog.iters.check = icmp eq i64 %i.su, 0
  br i1 %min.epilog.iters.check, label %.lr.ph264.i.preheader, label %vec.epilog.ph, !prof !193

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec593, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val618 = phi float [ %i.sz, %vec.epilog.iter.check ], [ %i.ru, %vector.main.loop.iter.check ]
  %bc.resume.val619 = phi float [ %i.tb, %vec.epilog.iter.check ], [ %i.rr, %vector.main.loop.iter.check ]
  %n.vec620 = and i64 %i.st, 8589934588           ; 5 uses
  %i.tt = add nsw i64 %n.vec620, %i.sc            ; 2 uses
  %i.tu = trunc i64 %n.vec620 to i32
  %i.tv = uitofp nneg i64 %n.vec620 to float      ; 2 uses
  %i.tw = fmul reassoc nsz arcp contract afn float %i.sm, %i.tv
  %i.tx = fadd reassoc nsz arcp contract afn float %i.ru, %i.tw
  %i.ty = fmul reassoc nsz arcp contract afn float %i.sk, %i.tv
  %i.tz = fadd reassoc nsz arcp contract afn float %i.rr, %i.ty
  %broadcast.splatinsert621 = insertelement <4 x float> poison, float %bc.resume.val618, i64 0
  %broadcast.splat622 = shufflevector <4 x float> %broadcast.splatinsert621, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert623 = insertelement <4 x float> poison, float %i.sm, i64 0
  %broadcast.splat624 = shufflevector <4 x float> %broadcast.splatinsert623, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ua = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat624, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00>
  %induction625 = fadd reassoc nsz arcp contract afn <4 x float> %broadcast.splat622, %i.ua
  %i.ub = fmul reassoc nsz arcp contract afn float %i.sm, 4.000000e+00
  %broadcast.splatinsert626 = insertelement <4 x float> poison, float %i.ub, i64 0
  %broadcast.splat627 = shufflevector <4 x float> %broadcast.splatinsert626, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert628 = insertelement <4 x float> poison, float %bc.resume.val619, i64 0
  %broadcast.splat629 = shufflevector <4 x float> %broadcast.splatinsert628, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert630 = insertelement <4 x float> poison, float %i.sk, i64 0
  %broadcast.splat631 = shufflevector <4 x float> %broadcast.splatinsert630, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_0
begin_hunk_1_@_do_get_structure_auto:bb.a

.lr.ph.i193.i.i.preheader:                        ; preds = %bb.u
  %min.iters.check156 = icmp ult i64 %i.jd, 5
  br i1 %min.iters.check156, label %.lr.ph.i193.i.i.preheader241, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph.i193.i.i.preheader
  %i.je = and i64 %i.jd, 3                        ; 2 uses
  %i.jf = icmp eq i64 %i.je, 0
  %i.jg = select i1 %i.jf, i64 4, i64 %i.je
  %n.vec158 = sub i64 %i.jd, %i.jg                ; 2 uses
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next165, %vector.body159 ] ; 3 uses
  %i.jh = shl i64 %index160, 4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.jh
  %wide.vec161 = load <16 x float>, ptr %i.ji, align 64, !tbaa !15 ; 3 uses
  %strided.vec162 = shufflevector <16 x float> %wide.vec161, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec163 = shufflevector <16 x float> %wide.vec161, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec164 = shufflevector <16 x float> %wide.vec161, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.jj = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec162, splat (float 3.000000e-01)
  %i.jk = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec163, splat (float 5.900000e-01)
  %i.jl = fadd reassoc nsz arcp contract afn <4 x float> %i.jk, %i.jj
  %i.jm = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec164, splat (float 1.100000e-01)
  %i.jn = fadd reassoc nsz arcp contract afn <4 x float> %i.jl, %i.jm
  %i.jo = fpext reassoc nsz arcp contract afn <4 x float> %i.jn to <4 x double>
  %i.jp = fmul reassoc nsz arcp contract afn <4 x double> %i.jo, splat (double 2.560000e+02)
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %index160
  store <4 x double> %i.jp, ptr %i.jq, align 8, !tbaa !166
  %index.next165 = add nuw i64 %index160, 4       ; 2 uses
  %i.jr = icmp eq i64 %index.next165, %n.vec158
  br i1 %i.jr, label %.lr.ph.i193.i.i.preheader241, label %vector.body159, !llvm.loop !538

.lr.ph.i193.i.i.preheader241:                     ; preds = %vector.body159, %.lr.ph.i193.i.i.preheader
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i193.i.i.preheader ], [ %n.vec158, %vector.body159 ]
  br label %.lr.ph.i193.i.i

.lr.ph.i193.i.i:                                  ; preds = %.lr.ph.i193.i.i.preheader241, %.lr.ph.i193.i.i
  %.012.i.i.i = phi i64 [ %i.kf, %.lr.ph.i193.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i193.i.i.preheader241 ] ; 3 uses
  %.idx.i.i.i = shl i64 %.012.i.i.i, 4
  %i.js = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i.i ; 2 uses
  %i.jt = load float, ptr %i.js, align 16, !tbaa !15
  %i.ju = fmul reassoc nsz arcp contract afn float %i.jt, 3.000000e-01
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.jw = load <2 x float>, ptr %i.jv, align 4, !tbaa !15
  %i.jx = fmul reassoc nsz arcp contract afn <2 x float> %i.jw, <float 5.900000e-01, float 1.100000e-01> ; 2 uses
  %i.jy = extractelement <2 x float> %i.jx, i64 0
  %i.jz = fadd reassoc nsz arcp contract afn float %i.jy, %i.ju
  %i.ka = extractelement <2 x float> %i.jx, i64 1
  %i.kb = fadd reassoc nsz arcp contract afn float %i.jz, %i.ka
  %i.kc = fpext reassoc nsz arcp contract afn float %i.kb to double
  %i.kd = fmul reassoc nsz arcp contract afn double %i.kc, 2.560000e+02
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.012.i.i.i
  store double %i.kd, ptr %i.ke, align 8, !tbaa !166
  %i.kf = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.kf, %i.jd
  br i1 %exitcond.not.i.i.i, label %rgb2grey256.exit.i.i, label %.lr.ph.i193.i.i, !llvm.loop !539

rgb2grey256.exit.i.i:                             ; preds = %.lr.ph.i193.i.i, %bb.u
  %i.kg = and i32 %1, 1
  %.not186.i.i = icmp eq i32 %i.kg, 0
  br i1 %.not186.i.i, label %edge_enhance.exit.i.i, label %bb.v

bb.v:                                             ; preds = %rgb2grey256.exit.i.i
  %i.kh = tail call noalias ptr @malloc(i64 noundef %i.ja) #33 ; 6 uses
  %cond.i.i.i = icmp eq ptr %i.kh, null
  br i1 %cond.i.i.i, label %edge_enhance.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ki = tail call noalias ptr @malloc(i64 noundef %i.ja) #33 ; 5 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %.sink.split.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @edge_enhance_1d(ptr noundef nonnull readonly %i.jb, ptr noundef %i.kh, i32 noundef %i.aa, i32 noundef %i.z, i32 noundef 256)
  tail call fastcc void @edge_enhance_1d(ptr noundef nonnull readonly %i.jb, ptr noundef %i.ki, i32 noundef %i.aa, i32 noundef %i.z, i32 noundef 512)
  br i1 %.not.i192.i.i, label %._crit_edge.i198.i.i, label %.lr.ph.i196.i.i.preheader

.lr.ph.i196.i.i.preheader:                        ; preds = %bb.x
  %min.iters.check169 = icmp ult i64 %i.jd, 4
  br i1 %min.iters.check169, label %.lr.ph.i196.i.i.preheader240, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph.i196.i.i.preheader
  %n.vec171 = and i64 %i.jd, -4                   ; 3 uses
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next175, %vector.body172 ] ; 4 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %index173
  %wide.load = load <4 x double>, ptr %i.kk, align 8, !tbaa !166 ; 2 uses
  %i.kl = fmul reassoc nsz arcp contract afn <4 x double> %wide.load, %wide.load
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %index173
  %wide.load174 = load <4 x double>, ptr %i.km, align 8, !tbaa !166 ; 2 uses
  %i.kn = fmul reassoc nsz arcp contract afn <4 x double> %wide.load174, %wide.load174
  %i.ko = fadd reassoc nsz arcp contract afn <4 x double> %i.kn, %i.kl
  %i.kp = tail call reassoc nsz arcp contract afn <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.ko)
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %index173
  store <4 x double> %i.kp, ptr %i.kq, align 8, !tbaa !166
  %index.next175 = add nuw i64 %index173, 4       ; 2 uses
  %i.kr = icmp eq i64 %index.next175, %n.vec171
  br i1 %i.kr, label %middle.block176, label %vector.body172, !llvm.loop !540

middle.block176:                                  ; preds = %vector.body172
  %cmp.n = icmp eq i64 %i.jd, %n.vec171
  br i1 %cmp.n, label %._crit_edge.i198.i.i, label %.lr.ph.i196.i.i.preheader240

.lr.ph.i196.i.i.preheader240:                     ; preds = %.lr.ph.i196.i.i.preheader, %middle.block176
  %.039.i.i.i.ph = phi i64 [ 0, %.lr.ph.i196.i.i.preheader ], [ %n.vec171, %middle.block176 ]
  br label %.lr.ph.i196.i.i

._crit_edge.i198.i.i:                             ; preds = %.lr.ph.i196.i.i, %middle.block176, %bb.x
  tail call void @free(ptr noundef nonnull %i.kh) #34
  br label %.sink.split.i.i.i

.lr.ph.i196.i.i:                                  ; preds = %.lr.ph.i196.i.i.preheader240, %.lr.ph.i196.i.i
  %.039.i.i.i = phi i64 [ %i.lb, %.lr.ph.i196.i.i ], [ %.039.i.i.i.ph, %.lr.ph.i196.i.i.preheader240 ] ; 4 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.039.i.i.i
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !166 ; 2 uses
  %i.ku = fmul reassoc nsz arcp contract afn double %i.kt, %i.kt
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %.039.i.i.i
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !166 ; 2 uses
  %i.kx = fmul reassoc nsz arcp contract afn double %i.kw, %i.kw
  %i.ky = fadd reassoc nsz arcp contract afn double %i.kx, %i.ku
  %i.kz = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.ky)
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.039.i.i.i
  store double %i.kz, ptr %i.la, align 8, !tbaa !166
  %i.lb = add nuw i64 %.039.i.i.i, 1              ; 2 uses
  %exitcond.not.i197.i.i = icmp eq i64 %i.lb, %i.jd
  br i1 %exitcond.not.i197.i.i, label %._crit_edge.i198.i.i, label %.lr.ph.i196.i.i, !llvm.loop !541

.sink.split.i.i.i:                                ; preds = %._crit_edge.i198.i.i, %bb.w
  %.sink.i.i.i = phi ptr [ %i.ki, %._crit_edge.i198.i.i ], [ %i.kh, %bb.w ]
  tail call void @free(ptr noundef nonnull %.sink.i.i.i) #34
  br label %edge_enhance.exit.i.i

edge_enhance.exit.i.i:                            ; preds = %.sink.split.i.i.i, %bb.v, %rgb2grey256.exit.i.i
  %i.lc = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #33 ; 9 uses
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %bb.y, label %bb.z

bb.y:                                             ; preds = %edge_enhance.exit.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.z:                                             ; preds = %edge_enhance.exit.i.i
  store i32 0, ptr %i.lc, align 8, !tbaa !554
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 4 ; 3 uses
  store i32 1, ptr %i.le, align 4, !tbaa !555
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 2 uses
  store i32 7, ptr %i.lf, align 8, !tbaa !556
  %i.lg = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #33 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 4 uses
  store ptr %i.lg, ptr %i.lh, align 8, !tbaa !557
  %i.li = icmp eq ptr %i.lg, null
  br i1 %i.li, label %bb.aa, label %new_ntuple_list.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

new_ntuple_list.exit.i.i.i:                       ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.lj = icmp slt i32 %i.aa, 1
  %i.lk = icmp slt i32 %i.z, 1
  %or.cond3.i.i.i = or i1 %i.lj, %i.lk
  br i1 %or.cond3.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %new_ntuple_list.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.108) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.ac:                                            ; preds = %new_ntuple_list.exit.i.i.i
  %i.ll = uitofp reassoc nsz arcp contract afn nneg i32 %i.aa to double
  %i.lm = fmul reassoc nnan nsz arcp contract afn double %i.ll, f0x3FEFAE147AE147AE ; 2 uses
  %i.ln = fcmp reassoc nsz arcp contract afn ogt double %i.lm, f0x41EFFFFFFFE00000
  br i1 %i.ln, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lo = uitofp reassoc nsz arcp contract afn nneg i32 %i.z to double
  %i.lp = fmul reassoc nnan nsz arcp contract afn double %i.lo, f0x3FEFAE147AE147AE ; 2 uses
  %i.lq = fcmp reassoc nsz arcp contract afn ogt double %i.lp, f0x41EFFFFFFFE00000
  br i1 %i.lq, label %bb.ae, label %new_ntuple_list.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.127) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

new_ntuple_list.exit.i.i.i.i:                     ; preds = %bb.ad
  %i.lr = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.lm)
  %i.ls = fptoui double %i.lr to i32              ; 2 uses
  %i.lt = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.lp)
  %i.lu = fptoui double %i.lt to i32
  %i.lv = tail call fastcc ptr @new_image_double(i32 noundef %i.ls, i32 noundef %i.z) ; 6 uses
  %i.lw = tail call fastcc ptr @new_image_double(i32 noundef %i.ls, i32 noundef %i.lu) ; 8 uses
  %i.lx = shl nuw i32 %i.aa, 1                    ; 27 uses
  %i.ly = shl nuw i32 %i.z, 1                     ; 27 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !289 ; 10 uses
  %.not.i.i.i.i = icmp eq i32 %i.ma, 0
  br i1 %.not.i.i.i.i, label %.preheader135.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %new_ntuple_list.exit.i.i.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lv, i64 12
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !290 ; 2 uses
  %.not153.i.i.i.i = icmp eq i32 %i.mc, 0
  %wide.trip.count165.i.i.i.i = zext i32 %i.mc to i64
  br label %.lr.ph.i164.i.i.i

.preheader135.i.i.i.i:                            ; preds = %._crit_edge141.i.i.i.i, %new_ntuple_list.exit.i.i.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.lw, i64 12 ; 3 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !290 ; 2 uses
  %.not155.i.i.i.i = icmp eq i32 %i.me, 0
  br i1 %.not155.i.i.i.i, label %free_ntuple_list.exit.i.i.i.i, label %.lr.ph152.i.i.i.i

.lr.ph152.i.i.i.i:                                ; preds = %.preheader135.i.i.i.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !289 ; 3 uses
  %.not156.i.i.i.i = icmp eq i32 %i.mg, 0
  %wide.trip.count180.i.i.i.i = zext i32 %i.mg to i64
  br label %.lr.ph.i157.i.i.i

.lr.ph.i164.i.i.i:                                ; preds = %._crit_edge141.i.i.i.i, %.lr.ph.i.i.i.i
  %.0122142.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %i.qv, %._crit_edge141.i.i.i.i ] ; 3 uses
  %i.mh = uitofp reassoc nsz arcp contract afn i32 %.0122142.i.i.i.i to double
  %i.mi = fmul reassoc nnan nsz arcp contract afn double %i.mh, f0x3FF0295FAD40A57F ; 2 uses
  %i.mj = fadd reassoc nsz arcp contract afn double %i.mi, 5.000000e-01
  %i.mk = tail call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.mj)
  %i.ml = fptosi double %i.mk to i32              ; 8 uses
  %4 = uitofp nsz nneg i32 %i.ml to double
  %.neg11.i.i.i = fsub reassoc nsz arcp contract afn double -3.000000e+00, %i.mi
  %i.mm = fadd reassoc nsz arcp contract afn double %.neg11.i.i.i, %4 ; 4 uses
  %i.mn = fmul reassoc nsz arcp contract afn double %i.mm, %i.mm
  %i.mo = fmul reassoc nsz arcp contract afn double %i.mn, f0xBFF5C7AE147AE147
  %i.mp = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.mo) ; 3 uses
  %i.mq = insertelement <2 x double> poison, double %i.mm, i64 0
  %i.mr = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ms = fadd reassoc nsz arcp contract afn <2 x double> %i.mr, <double 6.000000e+00, double 1.000000e+00> ; 2 uses
  %i.mt = fmul reassoc nsz arcp contract afn <2 x double> %i.ms, %i.ms
  %i.mu = fmul reassoc nsz arcp contract afn <2 x double> %i.mt, splat (double f0xBFF5C7AE147AE147)
  %i.mv = tail call reassoc nsz arcp contract afn <2 x double> @llvm.exp.v2f64(<2 x double> %i.mu) ; 4 uses
  %i.mw = extractelement <2 x double> %i.mv, i64 1
  %i.mx = insertelement <4 x double> poison, double %i.mm, i64 0
  %i.my = shufflevector <4 x double> %i.mx, <4 x double> poison, <4 x i32> zeroinitializer
  %i.mz = fadd reassoc nsz arcp contract afn <4 x double> %i.my, <double 2.000000e+00, double 3.000000e+00, double 4.000000e+00, double 5.000000e+00> ; 2 uses
  %i.na = fmul reassoc nsz arcp contract afn <4 x double> %i.mz, %i.mz
  %i.nb = fmul reassoc nsz arcp contract afn <4 x double> %i.na, splat (double f0xBFF5C7AE147AE147)
  %i.nc = tail call reassoc nsz arcp contract afn <4 x double> @llvm.exp.v4f64(<4 x double> %i.nb) ; 3 uses
  %i.nd = extractelement <2 x double> %i.mv, i64 0
  %op.rdx226 = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double %i.mw, <4 x double> %i.nc)
  %op.rdx227 = fadd reassoc nsz arcp contract afn double %i.nd, %i.mp
  %op.rdx228 = fadd reassoc nsz arcp contract afn double %op.rdx226, %op.rdx227 ; 4 uses
  %i.ne = fcmp reassoc nsz arcp contract afn ult double %op.rdx228, 0.000000e+00
  br i1 %i.ne, label %gaussian_kernel.exit176.i.i.i, label %.lr.ph31.i171.preheader.i.i.i

.lr.ph31.i171.preheader.i.i.i:                    ; preds = %.lr.ph.i164.i.i.i
  %i.nf = fdiv reassoc nsz arcp contract afn double %i.mp, %op.rdx228
  %i.ng = insertelement <4 x double> poison, double %op.rdx228, i64 0
  %i.nh = shufflevector <4 x double> %i.ng, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ni = fdiv reassoc nsz arcp contract afn <4 x double> %i.nc, %i.nh
  %i.nj = insertelement <2 x double> poison, double %op.rdx228, i64 0
  %i.nk = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nl = fdiv reassoc nsz arcp contract afn <2 x double> %i.mv, %i.nk
  br label %gaussian_kernel.exit176.i.i.i

gaussian_kernel.exit176.i.i.i:                    ; preds = %.lr.ph31.i171.preheader.i.i.i, %.lr.ph.i164.i.i.i
  %i.nm = phi double [ %i.nf, %.lr.ph31.i171.preheader.i.i.i ], [ %i.mp, %.lr.ph.i164.i.i.i ]
  %i.nn = phi <4 x double> [ %i.ni, %.lr.ph31.i171.preheader.i.i.i ], [ %i.nc, %.lr.ph.i164.i.i.i ]
  %i.no = phi <2 x double> [ %i.nl, %.lr.ph31.i171.preheader.i.i.i ], [ %i.mv, %.lr.ph.i164.i.i.i ] ; 2 uses
  br i1 %.not153.i.i.i.i, label %._crit_edge141.i.i.i.i, label %.preheader137.lr.ph.split.us.i.i.i.i

.preheader137.lr.ph.split.us.i.i.i.i:             ; preds = %gaussian_kernel.exit176.i.i.i
  %i.np = add nsw i32 %i.ml, -3
  %i.nq = load ptr, ptr %i.lv, align 8, !tbaa !291
  %i.nr = add nsw i32 %i.ml, -2
  %i.ns = add nsw i32 %i.ml, -1
  %i.nt = add nuw i32 %i.ml, 1
  %i.nu = add nuw i32 %i.ml, 2
  %i.nv = add nuw i32 %i.ml, 3
  %i.nw = extractelement <2 x double> %i.no, i64 0
  %i.nx = extractelement <2 x double> %i.no, i64 1
  br label %.preheader137.us.i.i.i.i

.preheader137.us.i.i.i.i:                         ; preds = %._crit_edge.us.i.i.i.i, %.preheader137.lr.ph.split.us.i.i.i.i
  %indvars.iv162.i.i.i.i = phi i64 [ %indvars.iv.next163.i.i.i.i, %._crit_edge.us.i.i.i.i ], [ 0, %.preheader137.lr.ph.split.us.i.i.i.i ] ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.preheader137.us.i.i.i.i
  %.0116.us.i.i.i.i = phi i32 [ %i.np, %.preheader137.us.i.i.i.i ], [ %i.nz, %bb.af ] ; 3 uses
  %i.ny = icmp slt i32 %.0116.us.i.i.i.i, 0
  %i.nz = add nsw i32 %.0116.us.i.i.i.i, %i.lx
  br i1 %i.ny, label %bb.af, label %.preheader136.us.i.i.i.i

.preheader136.us.i.i.i.i:                         ; preds = %bb.af, %.preheader136.us.i.i.i.i
  %.1117.us.i.i.i.i = phi i32 [ %i.oa, %.preheader136.us.i.i.i.i ], [ %.0116.us.i.i.i.i, %bb.af ] ; 5 uses
  %.not130.us.i.i.i.i = icmp slt i32 %.1117.us.i.i.i.i, %i.lx
  %i.oa = sub nsw i32 %.1117.us.i.i.i.i, %i.lx
  br i1 %.not130.us.i.i.i.i, label %bb.ag, label %.preheader136.us.i.i.i.i

bb.ag:                                            ; preds = %.preheader136.us.i.i.i.i
  %i.ob = trunc nuw i64 %indvars.iv162.i.i.i.i to i32 ; 2 uses
  %i.oc = mul i32 %i.aa, %i.ob                    ; 7 uses
  %.not131.us.i.i.i.i = icmp slt i32 %.1117.us.i.i.i.i, %i.aa
  %i.od = xor i32 %.1117.us.i.i.i.i, -1
  %i.oe = add i32 %i.lx, %i.od
  %.2.us.i.i.i.i = select i1 %.not131.us.i.i.i.i, i32 %.1117.us.i.i.i.i, i32 %i.oe
  %i.of = add i32 %.2.us.i.i.i.i, %i.oc
  %i.og = zext i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.og
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !166
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.0116.us.i.1.i.i.i = phi i32 [ %i.nr, %bb.ag ], [ %i.ok, %bb.ah ] ; 3 uses
  %i.oj = icmp slt i32 %.0116.us.i.1.i.i.i, 0
  %i.ok = add nsw i32 %.0116.us.i.1.i.i.i, %i.lx
  br i1 %i.oj, label %bb.ah, label %.preheader136.us.i.1.i.i.i

.preheader136.us.i.1.i.i.i:                       ; preds = %bb.ah, %.preheader136.us.i.1.i.i.i
  %.1117.us.i.1.i.i.i = phi i32 [ %i.ol, %.preheader136.us.i.1.i.i.i ], [ %.0116.us.i.1.i.i.i, %bb.ah ] ; 5 uses
  %.not130.us.i.1.i.i.i = icmp slt i32 %.1117.us.i.1.i.i.i, %i.lx
  %i.ol = sub nsw i32 %.1117.us.i.1.i.i.i, %i.lx
  br i1 %.not130.us.i.1.i.i.i, label %bb.ai, label %.preheader136.us.i.1.i.i.i

bb.ai:                                            ; preds = %.preheader136.us.i.1.i.i.i
  %.not131.us.i.1.i.i.i = icmp slt i32 %.1117.us.i.1.i.i.i, %i.aa
  %i.om = xor i32 %.1117.us.i.1.i.i.i, -1
  %i.on = add i32 %i.lx, %i.om
  %.2.us.i.1.i.i.i = select i1 %.not131.us.i.1.i.i.i, i32 %.1117.us.i.1.i.i.i, i32 %i.on
  %i.oo = add i32 %.2.us.i.1.i.i.i, %i.oc
  %i.op = zext i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.op
  %i.or = load double, ptr %i.oq, align 8, !tbaa !166
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.0116.us.i.2.i.i.i = phi i32 [ %i.ns, %bb.ai ], [ %i.ot, %bb.aj ] ; 3 uses
  %i.os = icmp slt i32 %.0116.us.i.2.i.i.i, 0
  %i.ot = add nsw i32 %.0116.us.i.2.i.i.i, %i.lx
  br i1 %i.os, label %bb.aj, label %.preheader136.us.i.2.i.i.i

.preheader136.us.i.2.i.i.i:                       ; preds = %bb.aj, %.preheader136.us.i.2.i.i.i
  %.1117.us.i.2.i.i.i = phi i32 [ %i.ou, %.preheader136.us.i.2.i.i.i ], [ %.0116.us.i.2.i.i.i, %bb.aj ] ; 5 uses
  %.not130.us.i.2.i.i.i = icmp slt i32 %.1117.us.i.2.i.i.i, %i.lx
  %i.ou = sub nsw i32 %.1117.us.i.2.i.i.i, %i.lx
  br i1 %.not130.us.i.2.i.i.i, label %bb.ak, label %.preheader136.us.i.2.i.i.i

bb.ak:                                            ; preds = %.preheader136.us.i.2.i.i.i
  %.not131.us.i.2.i.i.i = icmp slt i32 %.1117.us.i.2.i.i.i, %i.aa
  %i.ov = xor i32 %.1117.us.i.2.i.i.i, -1
  %i.ow = add i32 %i.lx, %i.ov
  %.2.us.i.2.i.i.i = select i1 %.not131.us.i.2.i.i.i, i32 %.1117.us.i.2.i.i.i, i32 %i.ow
  %i.ox = add i32 %.2.us.i.2.i.i.i, %i.oc
  %i.oy = zext i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.oy
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !166
  br label %.preheader136.us.i.3.i.i.i

.preheader136.us.i.3.i.i.i:                       ; preds = %.preheader136.us.i.3.i.i.i, %bb.ak
  %.1117.us.i.3.i.i.i = phi i32 [ %i.pb, %.preheader136.us.i.3.i.i.i ], [ %i.ml, %bb.ak ] ; 5 uses
  %.not130.us.i.3.i.i.i = icmp slt i32 %.1117.us.i.3.i.i.i, %i.lx
  %i.pb = sub nsw i32 %.1117.us.i.3.i.i.i, %i.lx
  br i1 %.not130.us.i.3.i.i.i, label %bb.al, label %.preheader136.us.i.3.i.i.i

bb.al:                                            ; preds = %.preheader136.us.i.3.i.i.i
  %.not131.us.i.3.i.i.i = icmp slt i32 %.1117.us.i.3.i.i.i, %i.aa
  %i.pc = xor i32 %.1117.us.i.3.i.i.i, -1
  %i.pd = add i32 %i.lx, %i.pc
  %.2.us.i.3.i.i.i = select i1 %.not131.us.i.3.i.i.i, i32 %.1117.us.i.3.i.i.i, i32 %i.pd
  %i.pe = add i32 %.2.us.i.3.i.i.i, %i.oc
  %i.pf = zext i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.pf
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !166
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %bb.al
  %.0116.us.i.4.i.i.i = phi i32 [ %i.nt, %bb.al ], [ %i.pj, %bb.am ] ; 3 uses
  %i.pi = icmp slt i32 %.0116.us.i.4.i.i.i, 0
  %i.pj = add nsw i32 %.0116.us.i.4.i.i.i, %i.lx
  br i1 %i.pi, label %bb.am, label %.preheader136.us.i.4.i.i.i

.preheader136.us.i.4.i.i.i:                       ; preds = %bb.am, %.preheader136.us.i.4.i.i.i
  %.1117.us.i.4.i.i.i = phi i32 [ %i.pk, %.preheader136.us.i.4.i.i.i ], [ %.0116.us.i.4.i.i.i, %bb.am ] ; 5 uses
  %.not130.us.i.4.i.i.i = icmp slt i32 %.1117.us.i.4.i.i.i, %i.lx
  %i.pk = sub nsw i32 %.1117.us.i.4.i.i.i, %i.lx
  br i1 %.not130.us.i.4.i.i.i, label %bb.an, label %.preheader136.us.i.4.i.i.i

bb.an:                                            ; preds = %.preheader136.us.i.4.i.i.i
  %.not131.us.i.4.i.i.i = icmp slt i32 %.1117.us.i.4.i.i.i, %i.aa
  %i.pl = xor i32 %.1117.us.i.4.i.i.i, -1
  %i.pm = add i32 %i.lx, %i.pl
  %.2.us.i.4.i.i.i = select i1 %.not131.us.i.4.i.i.i, i32 %.1117.us.i.4.i.i.i, i32 %i.pm
  %i.pn = add i32 %.2.us.i.4.i.i.i, %i.oc
  %i.po = zext i32 %i.pn to i64
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.po
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !166
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %.0116.us.i.5.i.i.i = phi i32 [ %i.nu, %bb.an ], [ %i.ps, %bb.ao ] ; 3 uses
  %i.pr = icmp slt i32 %.0116.us.i.5.i.i.i, 0
  %i.ps = add nsw i32 %.0116.us.i.5.i.i.i, %i.lx
  br i1 %i.pr, label %bb.ao, label %.preheader136.us.i.5.i.i.i

.preheader136.us.i.5.i.i.i:                       ; preds = %bb.ao, %.preheader136.us.i.5.i.i.i
  %.1117.us.i.5.i.i.i = phi i32 [ %i.pt, %.preheader136.us.i.5.i.i.i ], [ %.0116.us.i.5.i.i.i, %bb.ao ] ; 5 uses
  %.not130.us.i.5.i.i.i = icmp slt i32 %.1117.us.i.5.i.i.i, %i.lx
  %i.pt = sub nsw i32 %.1117.us.i.5.i.i.i, %i.lx
  br i1 %.not130.us.i.5.i.i.i, label %bb.ap, label %.preheader136.us.i.5.i.i.i

bb.ap:                                            ; preds = %.preheader136.us.i.5.i.i.i
  %.not131.us.i.5.i.i.i = icmp slt i32 %.1117.us.i.5.i.i.i, %i.aa
  %i.pu = xor i32 %.1117.us.i.5.i.i.i, -1
  %i.pv = add i32 %i.lx, %i.pu
  %.2.us.i.5.i.i.i = select i1 %.not131.us.i.5.i.i.i, i32 %.1117.us.i.5.i.i.i, i32 %i.pv
  %i.pw = add i32 %.2.us.i.5.i.i.i, %i.oc
  %i.px = zext i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.px
  %i.pz = load double, ptr %i.py, align 8, !tbaa !166
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %.0116.us.i.6.i.i.i = phi i32 [ %i.nv, %bb.ap ], [ %i.qb, %bb.aq ] ; 3 uses
  %i.qa = icmp slt i32 %.0116.us.i.6.i.i.i, 0
  %i.qb = add nsw i32 %.0116.us.i.6.i.i.i, %i.lx
  br i1 %i.qa, label %bb.aq, label %.preheader136.us.i.6.i.i.i

.preheader136.us.i.6.i.i.i:                       ; preds = %bb.aq, %.preheader136.us.i.6.i.i.i
  %.1117.us.i.6.i.i.i = phi i32 [ %i.qc, %.preheader136.us.i.6.i.i.i ], [ %.0116.us.i.6.i.i.i, %bb.aq ] ; 5 uses
  %.not130.us.i.6.i.i.i = icmp slt i32 %.1117.us.i.6.i.i.i, %i.lx
  %i.qc = sub nsw i32 %.1117.us.i.6.i.i.i, %i.lx
  br i1 %.not130.us.i.6.i.i.i, label %._crit_edge.us.i.i.i.i, label %.preheader136.us.i.6.i.i.i

._crit_edge.us.i.i.i.i:                           ; preds = %.preheader136.us.i.6.i.i.i
  %i.qd = fmul reassoc nsz arcp contract afn double %i.oi, %i.nm
  %i.qe = fmul reassoc nsz arcp contract afn double %i.or, %i.nx
  %i.qf = insertelement <4 x double> poison, double %i.pa, i64 0
  %i.qg = insertelement <4 x double> %i.qf, double %i.ph, i64 1
  %i.qh = insertelement <4 x double> %i.qg, double %i.pq, i64 2
  %i.qi = insertelement <4 x double> %i.qh, double %i.pz, i64 3
  %i.qj = fmul reassoc nsz arcp contract afn <4 x double> %i.qi, %i.nn
  %.not131.us.i.6.i.i.i = icmp slt i32 %.1117.us.i.6.i.i.i, %i.aa
  %i.qk = xor i32 %.1117.us.i.6.i.i.i, -1
  %i.ql = add i32 %i.lx, %i.qk
  %.2.us.i.6.i.i.i = select i1 %.not131.us.i.6.i.i.i, i32 %.1117.us.i.6.i.i.i, i32 %i.ql
  %i.qm = add i32 %.2.us.i.6.i.i.i, %i.oc
  %i.qn = zext i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.qn
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !166
  %i.qq = fmul reassoc nsz arcp contract afn double %i.qp, %i.nw
  %op.rdx223 = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double %i.qe, <4 x double> %i.qj)
  %op.rdx224 = fadd reassoc nsz arcp contract afn double %i.qd, %i.qq
  %op.rdx225 = fadd reassoc nsz arcp contract afn double %op.rdx223, %op.rdx224
  %i.qr = mul i32 %i.ma, %i.ob
  %i.qs = add i32 %i.qr, %.0122142.i.i.i.i
  %i.qt = zext i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.qt
  store double %op.rdx225, ptr %i.qu, align 8, !tbaa !166
  %indvars.iv.next163.i.i.i.i = add nuw nsw i64 %indvars.iv162.i.i.i.i, 1 ; 2 uses
  %exitcond166.not.i.i.i.i = icmp eq i64 %indvars.iv.next163.i.i.i.i, %wide.trip.count165.i.i.i.i
  br i1 %exitcond166.not.i.i.i.i, label %._crit_edge141.i.i.i.i, label %.preheader137.us.i.i.i.i

._crit_edge141.i.i.i.i:                           ; preds = %._crit_edge.us.i.i.i.i, %gaussian_kernel.exit176.i.i.i
  %i.qv = add nuw i32 %.0122142.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i199.i.i = icmp eq i32 %i.qv, %i.ma
  br i1 %exitcond.not.i199.i.i, label %.preheader135.i.i.i.i, label %.lr.ph.i164.i.i.i

.lr.ph.i157.i.i.i:                                ; preds = %._crit_edge149.i.i.i.i, %.lr.ph152.i.i.i.i
  %.1121151.i.i.i.i = phi i32 [ 0, %.lr.ph152.i.i.i.i ], [ %i.vr, %._crit_edge149.i.i.i.i ] ; 3 uses
  %i.qw = uitofp reassoc nsz arcp contract afn i32 %.1121151.i.i.i.i to double
  %i.qx = fmul reassoc nnan nsz arcp contract afn double %i.qw, f0x3FF0295FAD40A57F ; 2 uses
  %i.qy = fadd reassoc nsz arcp contract afn double %i.qx, 5.000000e-01
  %i.qz = tail call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.qy)
  %i.ra = fptosi double %i.qz to i32              ; 8 uses
  %5 = uitofp nsz nneg i32 %i.ra to double
  %.neg13.i.i.i = fsub reassoc nsz arcp contract afn double -3.000000e+00, %i.qx
  %i.rb = fadd reassoc nsz arcp contract afn double %.neg13.i.i.i, %5 ; 4 uses
  %i.rc = fmul reassoc nsz arcp contract afn double %i.rb, %i.rb
  %i.rd = fmul reassoc nsz arcp contract afn double %i.rc, f0xBFF5C7AE147AE147
  %i.re = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.rd) ; 3 uses
  %i.rf = insertelement <2 x double> poison, double %i.rb, i64 0
  %i.rg = shufflevector <2 x double> %i.rf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rh = fadd reassoc nsz arcp contract afn <2 x double> %i.rg, <double 6.000000e+00, double 1.000000e+00> ; 2 uses
  %i.ri = fmul reassoc nsz arcp contract afn <2 x double> %i.rh, %i.rh
  %i.rj = fmul reassoc nsz arcp contract afn <2 x double> %i.ri, splat (double f0xBFF5C7AE147AE147)
  %i.rk = tail call reassoc nsz arcp contract afn <2 x double> @llvm.exp.v2f64(<2 x double> %i.rj) ; 4 uses
  %i.rl = extractelement <2 x double> %i.rk, i64 1
  %i.rm = insertelement <4 x double> poison, double %i.rb, i64 0
  %i.rn = shufflevector <4 x double> %i.rm, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ro = fadd reassoc nsz arcp contract afn <4 x double> %i.rn, <double 2.000000e+00, double 3.000000e+00, double 4.000000e+00, double 5.000000e+00> ; 2 uses
  %i.rp = fmul reassoc nsz arcp contract afn <4 x double> %i.ro, %i.ro
  %i.rq = fmul reassoc nsz arcp contract afn <4 x double> %i.rp, splat (double f0xBFF5C7AE147AE147)
  %i.rr = tail call reassoc nsz arcp contract afn <4 x double> @llvm.exp.v4f64(<4 x double> %i.rq) ; 3 uses
  %i.rs = extractelement <2 x double> %i.rk, i64 0
  %op.rdx220 = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double %i.rl, <4 x double> %i.rr)
  %op.rdx221 = fadd reassoc nsz arcp contract afn double %i.rs, %i.re
  %op.rdx222 = fadd reassoc nsz arcp contract afn double %op.rdx220, %op.rdx221 ; 4 uses
  %i.rt = fcmp reassoc nsz arcp contract afn ult double %op.rdx222, 0.000000e+00
  br i1 %i.rt, label %gaussian_kernel.exit.i.i.i, label %.lr.ph31.i.preheader.i.i.i

.lr.ph31.i.preheader.i.i.i:                       ; preds = %.lr.ph.i157.i.i.i
  %i.ru = fdiv reassoc nsz arcp contract afn double %i.re, %op.rdx222
  %i.rv = insertelement <4 x double> poison, double %op.rdx222, i64 0
  %i.rw = shufflevector <4 x double> %i.rv, <4 x double> poison, <4 x i32> zeroinitializer
  %i.rx = fdiv reassoc nsz arcp contract afn <4 x double> %i.rr, %i.rw
  %i.ry = insertelement <2 x double> poison, double %op.rdx222, i64 0
  %i.rz = shufflevector <2 x double> %i.ry, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sa = fdiv reassoc nsz arcp contract afn <2 x double> %i.rk, %i.rz
  br label %gaussian_kernel.exit.i.i.i

gaussian_kernel.exit.i.i.i:                       ; preds = %.lr.ph31.i.preheader.i.i.i, %.lr.ph.i157.i.i.i
  %i.sb = phi double [ %i.ru, %.lr.ph31.i.preheader.i.i.i ], [ %i.re, %.lr.ph.i157.i.i.i ]
  %i.sc = phi <4 x double> [ %i.rx, %.lr.ph31.i.preheader.i.i.i ], [ %i.rr, %.lr.ph.i157.i.i.i ]
  %i.sd = phi <2 x double> [ %i.sa, %.lr.ph31.i.preheader.i.i.i ], [ %i.rk, %.lr.ph.i157.i.i.i ] ; 2 uses
  br i1 %.not156.i.i.i.i, label %._crit_edge149.i.i.i.i, label %.preheader134.lr.ph.split.us.i.i.i.i

.preheader134.lr.ph.split.us.i.i.i.i:             ; preds = %gaussian_kernel.exit.i.i.i
  %i.se = add nsw i32 %i.ra, -3
  %i.sf = load ptr, ptr %i.lw, align 8, !tbaa !291
  %i.sg = mul i32 %.1121151.i.i.i.i, %i.mg
  %i.sh = load ptr, ptr %i.lv, align 8, !tbaa !291 ; 7 uses
  %i.si = add nsw i32 %i.ra, -2
  %i.sj = add nsw i32 %i.ra, -1
  %i.sk = add nuw i32 %i.ra, 1
  %i.sl = add nuw i32 %i.ra, 2
  %i.sm = add nuw i32 %i.ra, 3
  %i.sn = extractelement <2 x double> %i.sd, i64 0
  %i.so = extractelement <2 x double> %i.sd, i64 1
  br label %.preheader134.us.i.i.i.i

.preheader134.us.i.i.i.i:                         ; preds = %._crit_edge.us150.i.i.i.i, %.preheader134.lr.ph.split.us.i.i.i.i
  %indvars.iv177.i.i.i.i = phi i64 [ %indvars.iv.next178.i.i.i.i, %._crit_edge.us150.i.i.i.i ], [ 0, %.preheader134.lr.ph.split.us.i.i.i.i ] ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.preheader134.us.i.i.i.i
  %.3.us.i.i.i.i = phi i32 [ %i.se, %.preheader134.us.i.i.i.i ], [ %i.sq, %bb.ar ] ; 3 uses
  %i.sp = icmp slt i32 %.3.us.i.i.i.i, 0
  %i.sq = add nsw i32 %.3.us.i.i.i.i, %i.ly
  br i1 %i.sp, label %bb.ar, label %.preheader.us.i.i.i.i

.preheader.us.i.i.i.i:                            ; preds = %bb.ar, %.preheader.us.i.i.i.i
  %.4.us.i.i.i.i = phi i32 [ %i.sr, %.preheader.us.i.i.i.i ], [ %.3.us.i.i.i.i, %bb.ar ] ; 5 uses
  %.not.us.i.i.i.i = icmp slt i32 %.4.us.i.i.i.i, %i.ly
  %i.sr = sub nsw i32 %.4.us.i.i.i.i, %i.ly
  br i1 %.not.us.i.i.i.i, label %bb.as, label %.preheader.us.i.i.i.i

bb.as:                                            ; preds = %.preheader.us.i.i.i.i
  %i.ss = trunc nuw i64 %indvars.iv177.i.i.i.i to i32 ; 8 uses
  %.not129.us.i.i.i.i = icmp slt i32 %.4.us.i.i.i.i, %i.z
  %i.st = xor i32 %.4.us.i.i.i.i, -1
  %i.su = add i32 %i.ly, %i.st
  %.5.us.i.i.i.i = select i1 %.not129.us.i.i.i.i, i32 %.4.us.i.i.i.i, i32 %i.su
  %i.sv = mul i32 %.5.us.i.i.i.i, %i.ma
  %i.sw = add i32 %i.sv, %i.ss
  %i.sx = zext i32 %i.sw to i64
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.sx
  %i.sz = load double, ptr %i.sy, align 8, !tbaa !166
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %bb.as
  %.3.us.i.1.i.i.i = phi i32 [ %i.si, %bb.as ], [ %i.tb, %bb.at ] ; 3 uses
  %i.ta = icmp slt i32 %.3.us.i.1.i.i.i, 0
  %i.tb = add nsw i32 %.3.us.i.1.i.i.i, %i.ly
  br i1 %i.ta, label %bb.at, label %.preheader.us.i.1.i.i.i

.preheader.us.i.1.i.i.i:                          ; preds = %bb.at, %.preheader.us.i.1.i.i.i
  %.4.us.i.1.i.i.i = phi i32 [ %i.tc, %.preheader.us.i.1.i.i.i ], [ %.3.us.i.1.i.i.i, %bb.at ] ; 5 uses
  %.not.us.i.1.i.i.i = icmp slt i32 %.4.us.i.1.i.i.i, %i.ly
  %i.tc = sub nsw i32 %.4.us.i.1.i.i.i, %i.ly
  br i1 %.not.us.i.1.i.i.i, label %bb.au, label %.preheader.us.i.1.i.i.i

bb.au:                                            ; preds = %.preheader.us.i.1.i.i.i
  %.not129.us.i.1.i.i.i = icmp slt i32 %.4.us.i.1.i.i.i, %i.z
  %i.td = xor i32 %.4.us.i.1.i.i.i, -1
  %i.te = add i32 %i.ly, %i.td
  %.5.us.i.1.i.i.i = select i1 %.not129.us.i.1.i.i.i, i32 %.4.us.i.1.i.i.i, i32 %i.te
  %i.tf = mul i32 %.5.us.i.1.i.i.i, %i.ma
  %i.tg = add i32 %i.tf, %i.ss
  %i.th = zext i32 %i.tg to i64
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.th
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !166
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %.3.us.i.2.i.i.i = phi i32 [ %i.sj, %bb.au ], [ %i.tl, %bb.av ] ; 3 uses
  %i.tk = icmp slt i32 %.3.us.i.2.i.i.i, 0
  %i.tl = add nsw i32 %.3.us.i.2.i.i.i, %i.ly
  br i1 %i.tk, label %bb.av, label %.preheader.us.i.2.i.i.i

.preheader.us.i.2.i.i.i:                          ; preds = %bb.av, %.preheader.us.i.2.i.i.i
  %.4.us.i.2.i.i.i = phi i32 [ %i.tm, %.preheader.us.i.2.i.i.i ], [ %.3.us.i.2.i.i.i, %bb.av ] ; 5 uses
  %.not.us.i.2.i.i.i = icmp slt i32 %.4.us.i.2.i.i.i, %i.ly
  %i.tm = sub nsw i32 %.4.us.i.2.i.i.i, %i.ly
  br i1 %.not.us.i.2.i.i.i, label %bb.aw, label %.preheader.us.i.2.i.i.i

bb.aw:                                            ; preds = %.preheader.us.i.2.i.i.i
  %.not129.us.i.2.i.i.i = icmp slt i32 %.4.us.i.2.i.i.i, %i.z
  %i.tn = xor i32 %.4.us.i.2.i.i.i, -1
  %i.to = add i32 %i.ly, %i.tn
  %.5.us.i.2.i.i.i = select i1 %.not129.us.i.2.i.i.i, i32 %.4.us.i.2.i.i.i, i32 %i.to
  %i.tp = mul i32 %.5.us.i.2.i.i.i, %i.ma
  %i.tq = add i32 %i.tp, %i.ss
  %i.tr = zext i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.tr
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !166
  br label %.preheader.us.i.3.i.i.i

.preheader.us.i.3.i.i.i:                          ; preds = %.preheader.us.i.3.i.i.i, %bb.aw
  %.4.us.i.3.i.i.i = phi i32 [ %i.tu, %.preheader.us.i.3.i.i.i ], [ %i.ra, %bb.aw ] ; 5 uses
  %.not.us.i.3.i.i.i = icmp slt i32 %.4.us.i.3.i.i.i, %i.ly
  %i.tu = sub nsw i32 %.4.us.i.3.i.i.i, %i.ly
  br i1 %.not.us.i.3.i.i.i, label %bb.ax, label %.preheader.us.i.3.i.i.i

bb.ax:                                            ; preds = %.preheader.us.i.3.i.i.i
  %.not129.us.i.3.i.i.i = icmp slt i32 %.4.us.i.3.i.i.i, %i.z
  %i.tv = xor i32 %.4.us.i.3.i.i.i, -1
  %i.tw = add i32 %i.ly, %i.tv
  %.5.us.i.3.i.i.i = select i1 %.not129.us.i.3.i.i.i, i32 %.4.us.i.3.i.i.i, i32 %i.tw
  %i.tx = mul i32 %.5.us.i.3.i.i.i, %i.ma
  %i.ty = add i32 %i.tx, %i.ss
  %i.tz = zext i32 %i.ty to i64
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.tz
  %i.ub = load double, ptr %i.ua, align 8, !tbaa !166
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.3.us.i.4.i.i.i = phi i32 [ %i.sk, %bb.ax ], [ %i.ud, %bb.ay ] ; 3 uses
  %i.uc = icmp slt i32 %.3.us.i.4.i.i.i, 0
  %i.ud = add nsw i32 %.3.us.i.4.i.i.i, %i.ly
  br i1 %i.uc, label %bb.ay, label %.preheader.us.i.4.i.i.i

.preheader.us.i.4.i.i.i:                          ; preds = %bb.ay, %.preheader.us.i.4.i.i.i
  %.4.us.i.4.i.i.i = phi i32 [ %i.ue, %.preheader.us.i.4.i.i.i ], [ %.3.us.i.4.i.i.i, %bb.ay ] ; 5 uses
  %.not.us.i.4.i.i.i = icmp slt i32 %.4.us.i.4.i.i.i, %i.ly
  %i.ue = sub nsw i32 %.4.us.i.4.i.i.i, %i.ly
  br i1 %.not.us.i.4.i.i.i, label %bb.az, label %.preheader.us.i.4.i.i.i

bb.az:                                            ; preds = %.preheader.us.i.4.i.i.i
  %.not129.us.i.4.i.i.i = icmp slt i32 %.4.us.i.4.i.i.i, %i.z
  %i.uf = xor i32 %.4.us.i.4.i.i.i, -1
  %i.ug = add i32 %i.ly, %i.uf
  %.5.us.i.4.i.i.i = select i1 %.not129.us.i.4.i.i.i, i32 %.4.us.i.4.i.i.i, i32 %i.ug
  %i.uh = mul i32 %.5.us.i.4.i.i.i, %i.ma
  %i.ui = add i32 %i.uh, %i.ss
  %i.uj = zext i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.uj
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !166
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %bb.az
  %.3.us.i.5.i.i.i = phi i32 [ %i.sl, %bb.az ], [ %i.un, %bb.ba ] ; 3 uses
  %i.um = icmp slt i32 %.3.us.i.5.i.i.i, 0
  %i.un = add nsw i32 %.3.us.i.5.i.i.i, %i.ly
  br i1 %i.um, label %bb.ba, label %.preheader.us.i.5.i.i.i

.preheader.us.i.5.i.i.i:                          ; preds = %bb.ba, %.preheader.us.i.5.i.i.i
  %.4.us.i.5.i.i.i = phi i32 [ %i.uo, %.preheader.us.i.5.i.i.i ], [ %.3.us.i.5.i.i.i, %bb.ba ] ; 5 uses
  %.not.us.i.5.i.i.i = icmp slt i32 %.4.us.i.5.i.i.i, %i.ly
  %i.uo = sub nsw i32 %.4.us.i.5.i.i.i, %i.ly
  br i1 %.not.us.i.5.i.i.i, label %bb.bb, label %.preheader.us.i.5.i.i.i

bb.bb:                                            ; preds = %.preheader.us.i.5.i.i.i
  %.not129.us.i.5.i.i.i = icmp slt i32 %.4.us.i.5.i.i.i, %i.z
  %i.up = xor i32 %.4.us.i.5.i.i.i, -1
  %i.uq = add i32 %i.ly, %i.up
  %.5.us.i.5.i.i.i = select i1 %.not129.us.i.5.i.i.i, i32 %.4.us.i.5.i.i.i, i32 %i.uq
  %i.ur = mul i32 %.5.us.i.5.i.i.i, %i.ma
  %i.us = add i32 %i.ur, %i.ss
  %i.ut = zext i32 %i.us to i64
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.ut
  %i.uv = load double, ptr %i.uu, align 8, !tbaa !166
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %bb.bb
  %.3.us.i.6.i.i.i = phi i32 [ %i.sm, %bb.bb ], [ %i.ux, %bb.bc ] ; 3 uses
  %i.uw = icmp slt i32 %.3.us.i.6.i.i.i, 0
  %i.ux = add nsw i32 %.3.us.i.6.i.i.i, %i.ly
  br i1 %i.uw, label %bb.bc, label %.preheader.us.i.6.i.i.i

.preheader.us.i.6.i.i.i:                          ; preds = %bb.bc, %.preheader.us.i.6.i.i.i
  %.4.us.i.6.i.i.i = phi i32 [ %i.uy, %.preheader.us.i.6.i.i.i ], [ %.3.us.i.6.i.i.i, %bb.bc ] ; 5 uses
  %.not.us.i.6.i.i.i = icmp slt i32 %.4.us.i.6.i.i.i, %i.ly
  %i.uy = sub nsw i32 %.4.us.i.6.i.i.i, %i.ly
  br i1 %.not.us.i.6.i.i.i, label %._crit_edge.us150.i.i.i.i, label %.preheader.us.i.6.i.i.i

._crit_edge.us150.i.i.i.i:                        ; preds = %.preheader.us.i.6.i.i.i
  %i.uz = fmul reassoc nsz arcp contract afn double %i.sz, %i.sb
  %i.va = fmul reassoc nsz arcp contract afn double %i.tj, %i.so
  %i.vb = insertelement <4 x double> poison, double %i.tt, i64 0
  %i.vc = insertelement <4 x double> %i.vb, double %i.ub, i64 1
  %i.vd = insertelement <4 x double> %i.vc, double %i.ul, i64 2
  %i.ve = insertelement <4 x double> %i.vd, double %i.uv, i64 3
  %i.vf = fmul reassoc nsz arcp contract afn <4 x double> %i.ve, %i.sc
  %.not129.us.i.6.i.i.i = icmp slt i32 %.4.us.i.6.i.i.i, %i.z
  %i.vg = xor i32 %.4.us.i.6.i.i.i, -1
  %i.vh = add i32 %i.ly, %i.vg
  %.5.us.i.6.i.i.i = select i1 %.not129.us.i.6.i.i.i, i32 %.4.us.i.6.i.i.i, i32 %i.vh
  %i.vi = mul i32 %.5.us.i.6.i.i.i, %i.ma
  %i.vj = add i32 %i.vi, %i.ss
  %i.vk = zext i32 %i.vj to i64
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.vk
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !166
  %i.vn = fmul reassoc nsz arcp contract afn double %i.vm, %i.sn
  %op.rdx = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double %i.va, <4 x double> %i.vf)
  %op.rdx218 = fadd reassoc nsz arcp contract afn double %i.uz, %i.vn
  %op.rdx219 = fadd reassoc nsz arcp contract afn double %op.rdx, %op.rdx218
  %i.vo = add i32 %i.sg, %i.ss
  %i.vp = zext i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.vp
  store double %op.rdx219, ptr %i.vq, align 8, !tbaa !166
  %indvars.iv.next178.i.i.i.i = add nuw nsw i64 %indvars.iv177.i.i.i.i, 1 ; 2 uses
  %exitcond181.not.i.i.i.i = icmp eq i64 %indvars.iv.next178.i.i.i.i, %wide.trip.count180.i.i.i.i
  br i1 %exitcond181.not.i.i.i.i, label %._crit_edge149.i.i.i.i, label %.preheader134.us.i.i.i.i

._crit_edge149.i.i.i.i:                           ; preds = %._crit_edge.us150.i.i.i.i, %gaussian_kernel.exit.i.i.i
  %i.vr = add nuw i32 %.1121151.i.i.i.i, 1        ; 2 uses
  %exitcond42.not.i.i.i = icmp eq i32 %i.vr, %i.me
  br i1 %exitcond42.not.i.i.i, label %free_ntuple_list.exit.i.i.i.i, label %.lr.ph.i157.i.i.i

free_ntuple_list.exit.i.i.i.i:                    ; preds = %._crit_edge149.i.i.i.i, %.preheader135.i.i.i.i
  %i.vs = load ptr, ptr %i.lv, align 8, !tbaa !291 ; 2 uses
  %i.vt = icmp eq ptr %i.vs, null
  br i1 %i.vt, label %bb.bd, label %gaussian_sampler.exit.i.i.i

bb.bd:                                            ; preds = %free_ntuple_list.exit.i.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.139) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

gaussian_sampler.exit.i.i.i:                      ; preds = %free_ntuple_list.exit.i.i.i.i
  tail call void @free(ptr noundef nonnull %i.vs) #34
  tail call void @free(ptr noundef nonnull %i.lv) #34
  %i.vu = load ptr, ptr %i.lw, align 8, !tbaa !291
  %i.vv = icmp eq ptr %i.vu, null
  br i1 %i.vv, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %gaussian_sampler.exit.i.i.i
  %i.vw = getelementptr inbounds nuw i8, ptr %i.lw, i64 8 ; 2 uses
  %i.vx = load i32, ptr %i.vw, align 8, !tbaa !289 ; 21 uses
  %i.vy = icmp eq i32 %i.vx, 0
  br i1 %i.vy, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.vz = load i32, ptr %i.md, align 4, !tbaa !290 ; 7 uses
  %i.wa = icmp eq i32 %i.vz, 0
  br i1 %i.wa, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be, %gaussian_sampler.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.133) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.wb = tail call fastcc ptr @new_image_double(i32 noundef %i.vx, i32 noundef %i.vz) ; 37 uses
  %i.wc = load i32, ptr %i.vw, align 8, !tbaa !289
  %i.wd = load i32, ptr %i.md, align 4, !tbaa !290
  %i.we = tail call fastcc ptr @new_image_double(i32 noundef %i.wc, i32 noundef %i.wd) ; 6 uses
  %i.wf = mul i32 %i.vz, %i.vx
  %i.wg = zext i32 %i.wf to i64
  %i.wh = tail call noalias ptr @calloc(i64 noundef %i.wg, i64 noundef 16) #36 ; 4 uses
  %i.wi = tail call noalias dereferenceable_or_null(8192) ptr @calloc(i64 noundef 1024, i64 noundef 8) #36 ; 21 uses
  %i.wj = tail call noalias dereferenceable_or_null(8192) ptr @calloc(i64 noundef 1024, i64 noundef 8) #36 ; 10 uses
  %i.wk = icmp eq ptr %i.wh, null
  %i.wl = icmp eq ptr %i.wi, null
  %or.cond.i136.i.i.i = or i1 %i.wk, %i.wl
  %i.wm = icmp eq ptr %i.wj, null
  %or.cond3.i.i.i.i = or i1 %or.cond.i136.i.i.i, %i.wm
  br i1 %or.cond3.i.i.i.i, label %bb.bi, label %iter.check

iter.check:                                       ; preds = %bb.bh
  %i.wn = load ptr, ptr %i.wb, align 8, !tbaa !291 ; 23 uses
  %i.wo = add i32 %i.vz, -1                       ; 3 uses
  %i.wp = mul i32 %i.wo, %i.vx                    ; 12 uses
  %wide.trip.count.i137.i.i.i = zext i32 %i.vx to i64 ; 9 uses
  %min.iters.check179 = icmp ult i32 %i.vx, 4
  br i1 %min.iters.check179, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.wq = add nsw i64 %wide.trip.count.i137.i.i.i, -1 ; 2 uses
  %i.wr = trunc i64 %i.wq to i32
  %i.ws = xor i32 %i.wp, -1
  %i.wt = icmp ult i32 %i.ws, %i.wr
  %i.wu = icmp ugt i64 %i.wq, 4294967295
  %i.wv = or i1 %i.wt, %i.wu
  br i1 %i.wv, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check180 = icmp ult i32 %i.vx, 16
  br i1 %min.iters.check180, label %vec.epilog.ph, label %vector.ph181

vector.ph181:                                     ; preds = %vector.main.loop.iter.check
  %i.ww = and i64 %wide.trip.count.i137.i.i.i, 12
  %n.vec182 = and i64 %wide.trip.count.i137.i.i.i, 4294967280 ; 4 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph181
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next185, %vector.body183 ] ; 2 uses
  %i.wx = trunc nuw i64 %index184 to i32
  %i.wy = add i32 %i.wp, %i.wx
  %i.wz = zext i32 %i.wy to i64
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.wn, i64 %i.wz ; 4 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 32
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 64
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xa, i64 96
  store <4 x double> splat (double -1.024000e+03), ptr %i.xa, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.xb, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.xc, align 8, !tbaa !166
  store <4 x double> splat (double -1.024000e+03), ptr %i.xd, align 8, !tbaa !166
  %index.next185 = add nuw i64 %index184, 16      ; 2 uses
end_hunk_1
begin_hunk_2_@_draw_retrieve_lines_from_params:bb.a
  br label %bb.o

.critedge:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.o

bb.k:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 856 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !236 ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %iter.check, label %bb.o

iter.check:                                       ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %i.b, i8 0, i64 800, i1 false)
  %i.br = shl i32 %i.bp, 2                        ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 11 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.br, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 8 uses
  %min.iters.check = icmp slt i32 %i.br, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bt = sub i64 %i.c, %i.h
  %i.bu = add i64 %i.bt, -57
  %diff.check = icmp ult i64 %i.bu, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check139 = icmp slt i32 %i.br, 32
  br i1 %min.iters.check139, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bv = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %wide.load = load <8 x float>, ptr %i.bw, align 4, !tbaa !15
  %wide.load140 = load <8 x float>, ptr %i.bx, align 4, !tbaa !15
  %wide.load141 = load <8 x float>, ptr %i.by, align 4, !tbaa !15
  %wide.load142 = load <8 x float>, ptr %i.bz, align 4, !tbaa !15
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  store <8 x float> %wide.load, ptr %i.ca, align 16, !tbaa !15
  store <8 x float> %wide.load140, ptr %i.cb, align 16, !tbaa !15
  store <8 x float> %wide.load141, ptr %i.cc, align 16, !tbaa !15
  store <8 x float> %wide.load142, ptr %i.cd, align 16, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !608

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !193

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec143 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next146, %vec.epilog.vector.body ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index144
  %wide.load145 = load <4 x float>, ptr %i.cf, align 4, !tbaa !15
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index144
  store <4 x float> %wide.load145, ptr %i.cg, align 16, !tbaa !15
  %index.next146 = add nuw i64 %index144, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next146, %n.vec143
  br i1 %i.ch, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !609

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n147 = icmp eq i64 %n.vec143, %wide.trip.count
  br i1 %cmp.n147, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec143, %vec.epilog.middle.block ] ; 4 uses
  %i.ci = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.ci, 5                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.prol
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !15
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.prol
  store float %i.ck, ptr %i.cl, align 4, !tbaa !15
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !610

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.cm = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cn = icmp ugt i64 %i.cm, -8
  br i1 %i.cn, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.co = load ptr, ptr %i.k, align 8, !tbaa !126 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 96
  %i.cq = load ptr, ptr %i.cp, align 16, !tbaa !143
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cs = load i32, ptr %i.cr, align 16, !tbaa !144
  %i.ct = sitofp reassoc nsz arcp contract afn i32 %i.cs to double
  %i.cu = shl nuw nsw i32 %i.bp, 1
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.co, ptr noundef %i.cq, double noundef %i.ct, i32 noundef 4, ptr noundef nonnull %i.b, i64 noundef %i.cv) #34
  %.not111 = icmp eq i32 %i.cw, 0
  br i1 %.not111, label %.critedge114, label %bb.l

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !15
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float %i.cy, ptr %i.cz, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next
  %i.db = load float, ptr %i.da, align 4, !tbaa !15
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store float %i.db, ptr %i.dc, align 4, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next.1
  %i.de = load float, ptr %i.dd, align 4, !tbaa !15
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.1
  store float %i.de, ptr %i.df, align 4, !tbaa !15
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next.2
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !15
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.2
  store float %i.dh, ptr %i.di, align 4, !tbaa !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next.3
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !15
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.3
  store float %i.dk, ptr %i.dl, align 4, !tbaa !15
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next.4
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !15
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.4
  store float %i.dn, ptr %i.do, align 4, !tbaa !15
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next.5
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !15
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.5
  store float %i.dq, ptr %i.dr, align 4, !tbaa !15
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next.6
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !15
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.6
  store float %i.dt, ptr %i.du, align 4, !tbaa !15
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !611

bb.l:                                             ; preds = %._crit_edge
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !179 ; 2 uses
  %.not112 = icmp eq ptr %i.dw, null
  br i1 %.not112, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.dw) #34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dx = load i32, ptr %i.bo, align 4, !tbaa !236 ; 4 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = call noalias ptr @calloc(i64 noundef %i.dy, i64 noundef 64) #36 ; 2 uses
  store ptr %i.dz, ptr %i.dv, align 8, !tbaa !179
  %i.ea = icmp sgt i32 %i.dx, 0
  br i1 %i.ea, label %.lr.ph120.preheader, label %._crit_edge121

.lr.ph120.preheader:                              ; preds = %bb.n
  %wide.trip.count128 = zext nneg i32 %i.dx to i64
  br label %.lr.ph120

._crit_edge121:                                   ; preds = %.lr.ph120, %bb.n
  %.096.lcssa = phi i32 [ 0, %bb.n ], [ %.197, %.lr.ph120 ] ; 2 uses
  %.095.lcssa = phi i32 [ 0, %bb.n ], [ %.1, %.lr.ph120 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  store i32 %i.dx, ptr %i.eb, align 8, !tbaa !180
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 220
  store i32 %.096.lcssa, ptr %i.ec, align 4, !tbaa !230
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  store i32 %.095.lcssa, ptr %i.ed, align 8, !tbaa !232
  %i.ee = uitofp nsz nneg i32 %.096.lcssa to float
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  store float %i.ee, ptr %i.ef, align 8, !tbaa !231
  %i.eg = uitofp nsz nneg i32 %.095.lcssa to float
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 236
  store float %i.eg, ptr %i.eh, align 4, !tbaa !233
  %i.ei = getelementptr inbounds nuw i8, ptr %i.o, i64 108
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.ek = load <2 x i32>, ptr %i.ei, align 4, !tbaa !17
  store <2 x i32> %i.ek, ptr %i.ej, align 8, !tbaa !17
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  store i32 3, ptr %i.el, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.o

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.lr.ph120
  %indvars.iv125 = phi i64 [ 0, %.lr.ph120.preheader ], [ %indvars.iv.next126, %.lr.ph120 ] ; 3 uses
  %.095117 = phi i32 [ 0, %.lr.ph120.preheader ], [ %.1, %.lr.ph120 ]
  %.096116 = phi i32 [ 0, %.lr.ph120.preheader ], [ %.197, %.lr.ph120 ]
  %.idx = shl nuw nsw i64 %indvars.iv125, 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = getelementptr inbounds nuw [64 x i8], ptr %i.dz, i64 %indvars.iv125 ; 10 uses
  %i.ep = load <2 x float>, ptr %i.em, align 16, !tbaa !15 ; 5 uses
  %i.eq = extractelement <2 x float> %i.ep, i64 0
  %i.er = extractelement <2 x float> %i.ep, i64 1 ; 3 uses
  store <2 x float> %i.ep, ptr %i.eo, align 16, !tbaa !15
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store float 1.000000e+00, ptr %i.es, align 8, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.eu = load <2 x float>, ptr %i.en, align 8, !tbaa !15 ; 5 uses
  %i.ev = extractelement <2 x float> %i.eu, i64 0
  %i.ew = extractelement <2 x float> %i.eu, i64 1 ; 3 uses
  %i.ex = fsub reassoc nsz arcp contract afn float %i.er, %i.ew ; 3 uses
  %i.ey = fsub reassoc nsz arcp contract afn <2 x float> %i.ep, %i.eu
  %i.ez = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ey) ; 2 uses
  %shift = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fa = fcmp ule <2 x float> %i.ez, %shift
  %i.fb = extractelement <2 x i1> %i.fa, i64 0    ; 3 uses
  %spec.select = select i1 %i.fb, i32 7, i32 5
  store <2 x float> %i.eu, ptr %i.et, align 4, !tbaa !15
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  store float 1.000000e+00, ptr %i.fc, align 4, !tbaa !15
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.eu, %i.ep ; 3 uses
  %i.fe = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ff = fmul reassoc nsz arcp contract afn float %i.ew, %i.eq
  %i.fg = fmul reassoc nsz arcp contract afn float %i.er, %i.ev
  %i.fh = fsub reassoc nsz arcp contract afn float %i.ff, %i.fg ; 3 uses
  %i.fi = fmul reassoc nsz arcp contract afn float %i.ex, %i.ex
  %foldExtExtBinop149 = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.fj = extractelement <2 x float> %foldExtExtBinop149, i64 0 ; 2 uses
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fi, %i.fj
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fh, %i.fh
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fk, %i.fl ; 2 uses
  %i.fn = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.fm)
  %i.fo = fcmp reassoc nsz arcp contract afn ogt float %i.fm, 0.000000e+00
  %i.fp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fn
  %i.fq = select reassoc nsz arcp contract afn i1 %i.fo, float %i.fp, float 1.000000e+00 ; 3 uses
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fq, %i.ex ; 2 uses
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fq, %i.fe ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eo, i64 52
  %i.fu = fmul reassoc nsz arcp contract afn float %i.fq, %i.fh
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.fw = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.fr, float noundef %i.fs) #35 ; 2 uses
  %i.fx = fcmp reassoc nsz arcp contract afn ogt float %i.fw, 0.000000e+00
  %i.fy = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fw
  %i.fz = select reassoc nsz arcp contract afn i1 %i.fx, float %i.fy, float 1.000000e+00 ; 3 uses
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fz, %i.fr
  store float %i.ga, ptr %i.fd, align 16, !tbaa !15
  %i.gb = fmul reassoc nsz arcp contract afn float %i.fz, %i.fs
  store float %i.gb, ptr %i.ft, align 4, !tbaa !15
  %i.gc = fmul reassoc nsz arcp contract afn float %i.fu, %i.fz
  store float %i.gc, ptr %i.fv, align 8, !tbaa !15
  %i.gd = fsub reassoc nsz arcp contract afn float %i.ew, %i.er ; 2 uses
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gd, %i.gd
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, %i.fj
  %i.gg = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.gf)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store float %i.gg, ptr %i.gh, align 8, !tbaa !188
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eo, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %i.gi, align 4, !tbaa !15
  %i.gj = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  store i32 %spec.select, ptr %i.gj, align 4, !tbaa !189
  %i.gk = zext i1 %i.fb to i32
  %.197 = add nuw nsw i32 %.096116, %i.gk         ; 2 uses
  %not. = xor i1 %i.fb, true
  %i.gl = zext i1 %not. to i32
  %.1 = add nuw nsw i32 %.095117, %i.gl           ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %._crit_edge121, label %.lr.ph120

.critedge114:                                     ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %.critedge114, %.critedge, %bb.f, %bb.e, %bb.d, %bb.c, %._crit_edge121, %bb.j, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 1, %bb.j ], [ 1, %._crit_edge121 ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %.critedge ], [ 0, %.critedge114 ], [ 0, %bb.k ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_do_get_structure_lines(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !125 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #34 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #34 ; 0 uses
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.105, i32 noundef 5) #34
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.i) #34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !143
  tail call void @dt_dev_pixelpipe_cache_flush(ptr noundef %i.m) #34
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !126
  tail call void @dt_dev_reprocess_preview(ptr noundef %i.n) #34
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245
  %.val = load ptr, ptr %i.a, align 16, !tbaa !125
  tail call fastcc void @_gui_update_structure_states(ptr %.val, ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !143
  %i.u = tail call ptr @dt_dev_distort_get_iop_pipe(ptr noundef %i.r, ptr noundef %i.t, ptr noundef nonnull %0) #34
  %i.v = load ptr, ptr %i.a, align 16, !tbaa !125 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 148 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !178
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.d, label %_do_clean_structure.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_draw_save_lines_to_params(ptr noundef nonnull %0)
  store i32 1, ptr %i.w, align 4, !tbaa !178
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  store i32 0, ptr %i.y, align 8, !tbaa !180
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 220
  store i32 0, ptr %i.z, align 4, !tbaa !230
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 224
  store i32 0, ptr %i.aa, align 8, !tbaa !232
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 192 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !179 ; 2 uses
  %.not16.i = icmp eq ptr %i.ac, null
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.ac) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.ab, align 8, !tbaa !179
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 228 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !183
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !183
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 368
  store i32 0, ptr %i.ag, align 8, !tbaa !197
  store i32 0, ptr %i.w, align 4, !tbaa !178
  br label %_do_clean_structure.exit

_do_clean_structure.exit:                         ; preds = %bb.c, %bb.f
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !245
  %i.ai = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.ah) #34
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_do_clean_structure.exit
  tail call void @dt_control_queue_redraw_center() #34
  br label %bb.i

bb.h:                                             ; preds = %_do_clean_structure.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 3, ptr %i.aj, align 8, !tbaa !197
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 108
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.am = load <2 x i32>, ptr %i.ak, align 4, !tbaa !17
  store <2 x i32> %i.am, ptr %i.al, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i32 0, ptr %i.an, align 8, !tbaa !308
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  store i32 0, ptr %i.ao, align 4, !tbaa !309
  %i.ap = tail call fastcc i32 @_draw_retrieve_lines_from_params(ptr noundef nonnull %0, i32 noundef 3) ; 0 uses
  tail call void @dt_control_queue_redraw_center() #34
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #11

end_hunk_2
