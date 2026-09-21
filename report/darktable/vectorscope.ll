Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/vectorscope?download=true
inline.NumInlined: 103
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_vec_process:bb.a
  %i.lb = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.kz, float noundef %i.la) #19 ; 3 uses
  %i.lc = fcmp reassoc nsz arcp contract afn ult float %i.lb, f0x00800000
  br i1 %i.lc, label %log_scale.exit.1.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ld = fmul reassoc nnan nsz arcp contract afn float %i.lb, 2.900000e+01
  %i.le = fmul reassoc nsz arcp contract afn float %i.ld, %i.kw
  %i.lf = call reassoc nsz arcp contract afn float @log1pf(float noundef %i.le) #19
  %i.lg = fmul reassoc nsz arcp contract afn float %i.lf, %i.bo
  %i.lh = fdiv reassoc nsz arcp contract afn float %i.lg, %i.lb
  %i.li = insertelement <2 x float> poison, float %i.lh, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = fmul reassoc nsz arcp contract afn <2 x float> %i.lj, %i.ky
  store <2 x float> %i.lk, ptr %i.kx, align 4, !tbaa !111
  br label %log_scale.exit.1.i

log_scale.exit.1.i:                               ; preds = %bb.ab, %bb.aa
  %indvars.iv.next211.1.i = add nuw nsw i64 %indvars.iv210.1.i, 1 ; 2 uses
  %exitcond213.1.not.i = icmp eq i64 %indvars.iv.next211.1.i, 48
  br i1 %exitcond213.1.not.i, label %.preheader.2.i, label %bb.aa

.preheader.2.i:                                   ; preds = %log_scale.exit.1.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.h, i64 832
  %i.lm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jv
  br label %bb.ac

bb.ac:                                            ; preds = %log_scale.exit.2.i, %.preheader.2.i
  %indvars.iv210.2.i = phi i64 [ 0, %.preheader.2.i ], [ %indvars.iv.next211.2.i, %log_scale.exit.2.i ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv210.2.i ; 2 uses
  %i.lo = load <2 x float>, ptr %i.ln, align 4, !tbaa !111 ; 3 uses
  %i.lp = extractelement <2 x float> %i.lo, i64 0
  %i.lq = extractelement <2 x float> %i.lo, i64 1
  %i.lr = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.lp, float noundef %i.lq) #19 ; 3 uses
  %i.ls = fcmp reassoc nsz arcp contract afn ult float %i.lr, f0x00800000
  br i1 %i.ls, label %log_scale.exit.2.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lt = fmul reassoc nnan nsz arcp contract afn float %i.lr, 2.900000e+01
  %i.lu = fmul reassoc nsz arcp contract afn float %i.lt, %i.lm
  %i.lv = call reassoc nsz arcp contract afn float @log1pf(float noundef %i.lu) #19
  %i.lw = fmul reassoc nsz arcp contract afn float %i.lv, %i.bo
  %i.lx = fdiv reassoc nsz arcp contract afn float %i.lw, %i.lr
  %i.ly = insertelement <2 x float> poison, float %i.lx, i64 0
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ma = fmul reassoc nsz arcp contract afn <2 x float> %i.lz, %i.lo
  store <2 x float> %i.ma, ptr %i.ln, align 4, !tbaa !111
  br label %log_scale.exit.2.i

log_scale.exit.2.i:                               ; preds = %bb.ad, %bb.ac
  %indvars.iv.next211.2.i = add nuw nsw i64 %indvars.iv210.2.i, 1 ; 2 uses
  %exitcond213.2.not.i = icmp eq i64 %indvars.iv.next211.2.i, 48
  br i1 %exitcond213.2.not.i, label %.preheader.3.i, label %bb.ac

.preheader.3.i:                                   ; preds = %log_scale.exit.2.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.h, i64 1216
  %i.mc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jv
  br label %bb.ae

bb.ae:                                            ; preds = %log_scale.exit.3.i, %.preheader.3.i
  %indvars.iv210.3.i = phi i64 [ 0, %.preheader.3.i ], [ %indvars.iv.next211.3.i, %log_scale.exit.3.i ] ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv210.3.i ; 2 uses
  %i.me = load <2 x float>, ptr %i.md, align 4, !tbaa !111 ; 3 uses
  %i.mf = extractelement <2 x float> %i.me, i64 0
  %i.mg = extractelement <2 x float> %i.me, i64 1
  %i.mh = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.mf, float noundef %i.mg) #19 ; 3 uses
  %i.mi = fcmp reassoc nsz arcp contract afn ult float %i.mh, f0x00800000
  br i1 %i.mi, label %log_scale.exit.3.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mj = fmul reassoc nnan nsz arcp contract afn float %i.mh, 2.900000e+01
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mj, %i.mc
  %i.ml = call reassoc nsz arcp contract afn float @log1pf(float noundef %i.mk) #19
  %i.mm = fmul reassoc nsz arcp contract afn float %i.ml, %i.bo
  %i.mn = fdiv reassoc nsz arcp contract afn float %i.mm, %i.mh
  %i.mo = insertelement <2 x float> poison, float %i.mn, i64 0
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mq = fmul reassoc nsz arcp contract afn <2 x float> %i.mp, %i.me
  store <2 x float> %i.mq, ptr %i.md, align 4, !tbaa !111
  br label %log_scale.exit.3.i

log_scale.exit.3.i:                               ; preds = %bb.af, %bb.ae
  %indvars.iv.next211.3.i = add nuw nsw i64 %indvars.iv210.3.i, 1 ; 2 uses
  %exitcond213.3.not.i = icmp eq i64 %indvars.iv.next211.3.i, 48
  br i1 %exitcond213.3.not.i, label %.preheader.4.i, label %bb.ae

.preheader.4.i:                                   ; preds = %log_scale.exit.3.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.h, i64 1600
  %i.ms = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jv
  br label %bb.ag

bb.ag:                                            ; preds = %log_scale.exit.4.i, %.preheader.4.i
  %indvars.iv210.4.i = phi i64 [ 0, %.preheader.4.i ], [ %indvars.iv.next211.4.i, %log_scale.exit.4.i ] ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %indvars.iv210.4.i ; 2 uses
  %i.mu = load <2 x float>, ptr %i.mt, align 4, !tbaa !111 ; 3 uses
  %i.mv = extractelement <2 x float> %i.mu, i64 0
  %i.mw = extractelement <2 x float> %i.mu, i64 1
  %i.mx = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.mv, float noundef %i.mw) #19 ; 3 uses
  %i.my = fcmp reassoc nsz arcp contract afn ult float %i.mx, f0x00800000
  br i1 %i.my, label %log_scale.exit.4.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mz = fmul reassoc nnan nsz arcp contract afn float %i.mx, 2.900000e+01
  %i.na = fmul reassoc nsz arcp contract afn float %i.mz, %i.ms
  %i.nb = call reassoc nsz arcp contract afn float @log1pf(float noundef %i.na) #19
  %i.nc = fmul reassoc nsz arcp contract afn float %i.nb, %i.bo
  %i.nd = fdiv reassoc nsz arcp contract afn float %i.nc, %i.mx
  %i.ne = insertelement <2 x float> poison, float %i.nd, i64 0
  %i.nf = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ng = fmul reassoc nsz arcp contract afn <2 x float> %i.nf, %i.mu
  store <2 x float> %i.ng, ptr %i.mt, align 4, !tbaa !111
  br label %log_scale.exit.4.i

log_scale.exit.4.i:                               ; preds = %bb.ah, %bb.ag
  %indvars.iv.next211.4.i = add nuw nsw i64 %indvars.iv210.4.i, 1 ; 2 uses
  %exitcond213.4.not.i = icmp eq i64 %indvars.iv.next211.4.i, 48
  br i1 %exitcond213.4.not.i, label %.preheader.5.i, label %bb.ag

.preheader.5.i:                                   ; preds = %log_scale.exit.4.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.h, i64 1984
  %i.ni = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jv
  br label %bb.ai

bb.ai:                                            ; preds = %log_scale.exit.5.i, %.preheader.5.i
  %indvars.iv210.5.i = phi i64 [ 0, %.preheader.5.i ], [ %indvars.iv.next211.5.i, %log_scale.exit.5.i ] ; 2 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv210.5.i ; 2 uses
  %i.nk = load <2 x float>, ptr %i.nj, align 4, !tbaa !111 ; 3 uses
  %i.nl = extractelement <2 x float> %i.nk, i64 0
  %i.nm = extractelement <2 x float> %i.nk, i64 1
  %i.nn = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.nl, float noundef %i.nm) #19 ; 3 uses
  %i.no = fcmp reassoc nsz arcp contract afn ult float %i.nn, f0x00800000
  br i1 %i.no, label %log_scale.exit.5.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.np = fmul reassoc nnan nsz arcp contract afn float %i.nn, 2.900000e+01
  %i.nq = fmul reassoc nsz arcp contract afn float %i.np, %i.ni
  %i.nr = call reassoc nsz arcp contract afn float @log1pf(float noundef %i.nq) #19
  %i.ns = fmul reassoc nsz arcp contract afn float %i.nr, %i.bo
  %i.nt = fdiv reassoc nsz arcp contract afn float %i.ns, %i.nn
  %i.nu = insertelement <2 x float> poison, float %i.nt, i64 0
  %i.nv = shufflevector <2 x float> %i.nu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nw = fmul reassoc nsz arcp contract afn <2 x float> %i.nv, %i.nk
  store <2 x float> %i.nw, ptr %i.nj, align 4, !tbaa !111
  br label %log_scale.exit.5.i

log_scale.exit.5.i:                               ; preds = %bb.aj, %bb.ai
  %indvars.iv.next211.5.i = add nuw nsw i64 %indvars.iv210.5.i, 1 ; 2 uses
  %exitcond213.5.not.i = icmp eq i64 %indvars.iv.next211.5.i, 48
  br i1 %exitcond213.5.not.i, label %.loopexit.i, label %bb.ai

bb.ak:                                            ; preds = %log_scale.exit.i, %.preheader166.i
  %indvars.iv210.i = phi i64 [ 0, %.preheader166.i ], [ %indvars.iv.next211.i, %log_scale.exit.i ] ; 2 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv210.i ; 2 uses
  %i.ny = load <2 x float>, ptr %i.nx, align 4, !tbaa !111 ; 3 uses
  %i.nz = extractelement <2 x float> %i.ny, i64 0
  %i.oa = extractelement <2 x float> %i.ny, i64 1
  %i.ob = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.nz, float noundef %i.oa) #19 ; 3 uses
  %i.oc = fcmp reassoc nsz arcp contract afn ult float %i.ob, f0x00800000
  br i1 %i.oc, label %log_scale.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.od = fmul reassoc nnan nsz arcp contract afn float %i.ob, 2.900000e+01
  %i.oe = fmul reassoc nsz arcp contract afn float %i.od, %i.bp
  %i.of = call reassoc nsz arcp contract afn float @log1pf(float noundef %i.oe) #19
  %i.og = fmul reassoc nsz arcp contract afn float %i.of, %i.bo
  %i.oh = fdiv reassoc nsz arcp contract afn float %i.og, %i.ob
  %i.oi = insertelement <2 x float> poison, float %i.oh, i64 0
  %i.oj = shufflevector <2 x float> %i.oi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ok = fmul reassoc nsz arcp contract afn <2 x float> %i.oj, %i.ny
  store <2 x float> %i.ok, ptr %i.nx, align 4, !tbaa !111
  br label %log_scale.exit.i

log_scale.exit.i:                                 ; preds = %bb.al, %bb.ak
  %indvars.iv.next211.i = add nuw nsw i64 %indvars.iv210.i, 1 ; 2 uses
  %exitcond213.not.i = icmp eq i64 %indvars.iv.next211.i, 48
  br i1 %exitcond213.not.i, label %.preheader.1.i, label %bb.ak

.loopexit.i:                                      ; preds = %log_scale.exit.5.i, %bb.f
  %i.ol = getelementptr inbounds nuw i8, ptr %i.h, i64 2384
  store double %i.bd, ptr %i.ol, align 16, !tbaa !110
  store ptr %3, ptr %i.o, align 64, !tbaa !107
  %i.om = getelementptr inbounds nuw i8, ptr %i.h, i64 2376
  store i32 %i.bm, ptr %i.om, align 8, !tbaa !108
  %i.on = load i32, ptr %i.k, align 8, !tbaa !105
  %i.oo = getelementptr inbounds nuw i8, ptr %i.h, i64 2380
  store i32 %i.on, ptr %i.oo, align 4, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_lib_histogram_vectorscope_bkgd.exit

_lib_histogram_vectorscope_bkgd.exit:             ; preds = %bb.d, %.loopexit.i
  %i.op = phi double [ %i.y, %bb.d ], [ %i.bd, %.loopexit.i ]
  %i.oq = fptrunc reassoc nsz arcp contract afn double %i.op to float ; 7 uses
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ou = load <2 x i32>, ptr %2, align 4, !tbaa !117 ; 2 uses
  %i.ov = load <2 x i32>, ptr %i.or, align 4, !tbaa !117
  %i.ow = load <2 x i32>, ptr %i.os, align 4, !tbaa !117
  %i.ox = add <2 x i32> %i.ov, %i.ow
  %i.oy = sub <2 x i32> %i.ou, %i.ox              ; 2 uses
  %i.oz = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.oy, <2 x i32> splat (i32 1))
  %5 = icmp slt <2 x i32> %i.oy, splat (i32 2)    ; 2 uses
  %6 = extractelement <2 x i1> %5, i64 0
  %7 = extractelement <2 x i1> %5, i64 1
  %or.cond = and i1 %6, %7
  br i1 %or.cond, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_lib_histogram_vectorscope_bkgd.exit
  store i32 0, ptr %i.ot, align 4, !tbaa !164
  store i32 0, ptr %i.os, align 4, !tbaa !165
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_lib_histogram_vectorscope_bkgd.exit
  %i.pa = phi <2 x i32> [ %i.ou, %bb.am ], [ %i.oz, %_lib_histogram_vectorscope_bkgd.exit ] ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.h, i64 2616
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !118 ; 3 uses
  %i.pd = mul nsw i32 %i.j, %i.j                  ; 2 uses
  %i.pe = zext nneg i32 %i.pd to i64
  %i.pf = shl nuw nsw i64 %i.pe, 2                ; 2 uses
  %i.pg = call ptr @dt_alloc_aligned(i64 noundef range(i64 -8589934592, 8589934589) %i.pf) #18 ; 6 uses
  %.not.i.i = icmp eq ptr %i.pg, null
  br i1 %.not.i.i, label %dt_calloc_align_int.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.pg, i8 0, i64 range(i64 -8589934592, 8589934589) %i.pf, i1 false)
  br label %dt_calloc_align_int.exit

dt_calloc_align_int.exit:                         ; preds = %bb.an, %bb.ao
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pg, i64 64) ]
  %i.ph = extractelement <2 x i32> %i.pa, i64 1   ; 4 uses
  %i.pi = srem i32 %i.ph, 2                       ; 2 uses
  %i.pj = sub nsw i32 %i.ph, %i.pi
  %i.pk = sext i32 %i.pj to i64                   ; 2 uses
  %.not211 = icmp eq i32 %i.ph, %i.pi
  br i1 %.not211, label %._crit_edge200, label %.preheader178.lr.ph

.preheader178.lr.ph:                              ; preds = %dt_calloc_align_int.exit
  %i.pl = extractelement <2 x i32> %i.pa, i64 0   ; 3 uses
  %i.pm = srem i32 %i.pl, 2                       ; 2 uses
  %i.pn = sub nsw i32 %i.pl, %i.pm
  %i.po = sext i32 %i.pn to i64
  %.not212 = icmp eq i32 %i.pl, %i.pm
  %i.pp = icmp eq i32 %i.n, 0
  %i.pq = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.pr = fmul reassoc nsz arcp contract afn float %i.oq, f0x3E968904
  %i.ps = add nsw i32 %i.j, -1
  %i.pt = sitofp reassoc nsz arcp contract afn i32 %i.ps to float
  br i1 %.not212, label %.preheader178, label %.preheader178.us.preheader

.preheader178.us.preheader:                       ; preds = %.preheader178.lr.ph
  %i.pu = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.pv = shufflevector <2 x i32> %i.pu, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.pw = insertelement <2 x float> poison, float %i.oq, i64 0
  %i.px = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.py = insertelement <2 x float> poison, float %i.pt, i64 0
  %i.pz = shufflevector <2 x float> %i.py, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qa = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.oq
  %i.qb = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.px
  br label %.preheader178.us

.preheader178.us:                                 ; preds = %.preheader178.us.preheader, %._crit_edge.us
  %.0152199.us = phi i64 [ %i.si, %._crit_edge.us ], [ 0, %.preheader178.us.preheader ] ; 2 uses
  br label %.preheader177.us

.preheader177.us:                                 ; preds = %.preheader178.us, %bb.at
  %.0151195.us = phi i64 [ 0, %.preheader178.us ], [ %i.sg, %bb.at ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.qc = load i32, ptr %i.ot, align 4, !tbaa !164
  %i.qd = sext i32 %i.qc to i64
  %i.qe = add i64 %.0152199.us, %i.qd
  %i.qf = load i32, ptr %2, align 4, !tbaa !166
  %i.qg = sext i32 %i.qf to i64                   ; 3 uses
  %i.qh = mul i64 %i.qe, %i.qg
  %i.qi = add i64 %i.qh, %.0151195.us
  %i.qj = load i32, ptr %i.os, align 4, !tbaa !165
  %i.qk = sext i32 %i.qj to i64
  %i.ql = add i64 %i.qi, %i.qk
  %.idx.us = shl i64 %i.ql, 4
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.us ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.qm, i64 64) ]
  %.idx167.us.1 = shl nsw i64 %i.qg, 4
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 %.idx167.us.1
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.qp = shl nsw i64 %i.qg, 4
  %i.qq = getelementptr i8, ptr %i.qm, i64 %i.qp
  %i.qr = getelementptr i8, ptr %i.qq, i64 16
  %i.qs = load <4 x float>, ptr %i.qm, align 64, !tbaa !111
  %i.qt = load <4 x float>, ptr %i.qn, align 16, !tbaa !111
  %i.qu = fadd reassoc nsz arcp contract afn <4 x float> %i.qs, %i.qt
  %i.qv = load <4 x float>, ptr %i.qo, align 16, !tbaa !111
  %i.qw = fadd reassoc nsz arcp contract afn <4 x float> %i.qu, %i.qv
  %i.qx = load <4 x float>, ptr %i.qr, align 16, !tbaa !111
  %i.qy = fadd reassoc nsz arcp contract afn <4 x float> %i.qw, %i.qx
  %i.qz = fmul reassoc nsz arcp contract afn <4 x float> %i.qy, splat (float 2.500000e-01)
  store <4 x float> %i.qz, ptr %i.c, align 16, !tbaa !111
  call fastcc void @_get_chromaticity(ptr noundef %i.c, ptr noundef %i.d, i32 noundef %i.l, ptr noundef %3, ptr noundef %i.pc)
  %i.ra = load <2 x float>, ptr %i.pq, align 4, !tbaa !111 ; 5 uses
  br i1 %i.pp, label %bb.ap, label %log_scale.exit.us

bb.ap:                                            ; preds = %.preheader177.us
  %i.rb = extractelement <2 x float> %i.ra, i64 0
  %i.rc = extractelement <2 x float> %i.ra, i64 1
  %i.rd = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.rb, float noundef %i.rc) #19 ; 3 uses
  %i.re = fcmp reassoc nsz arcp contract afn ult float %i.rd, f0x00800000
  br i1 %i.re, label %log_scale.exit.us, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.rf = fmul reassoc nnan nsz arcp contract afn float %i.rd, 2.900000e+01
  %i.rg = fmul reassoc nsz arcp contract afn float %i.rf, %i.qa
  %i.rh = call reassoc nsz arcp contract afn float @log1pf(float noundef %i.rg) #19
  %i.ri = fmul reassoc nsz arcp contract afn float %i.pr, %i.rh
  %i.rj = fdiv reassoc nsz arcp contract afn float %i.ri, %i.rd
  %i.rk = insertelement <2 x float> poison, float %i.rj, i64 0
  %i.rl = shufflevector <2 x float> %i.rk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rm = fmul reassoc nsz arcp contract afn <2 x float> %i.rl, %i.ra ; 2 uses
  store <2 x float> %i.rm, ptr %i.pq, align 4, !tbaa !111
  br label %log_scale.exit.us

log_scale.exit.us:                                ; preds = %.preheader177.us, %bb.aq, %bb.ap
  %i.rn = phi <2 x float> [ %i.rm, %bb.aq ], [ %i.ra, %bb.ap ], [ %i.ra, %.preheader177.us ]
  %i.ro = fmul reassoc nsz arcp contract afn <2 x float> %i.rn, splat (float 5.000000e-01)
  %i.rp = fmul reassoc nsz arcp contract afn <2 x float> %i.ro, %i.qb
  %i.rq = fadd reassoc nsz arcp contract afn <2 x float> %i.rp, splat (float 5.000000e-01)
  %i.rr = fmul reassoc nsz arcp contract afn <2 x float> %i.rq, %i.pz
  %i.rs = fptosi <2 x float> %i.rr to <2 x i32>   ; 3 uses
  %i.rt = extractelement <2 x i32> %i.rs, i64 0   ; 2 uses
  %i.ru = icmp sgt i32 %i.rt, -1
  br i1 %i.ru, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %log_scale.exit.us
  %i.rv = icmp sgt <2 x i32> %i.pv, %i.rs         ; 2 uses
  %i.rw = extractelement <2 x i32> %i.rs, i64 1   ; 2 uses
  %i.rx = icmp sgt i32 %i.rw, -1
  %i.ry = extractelement <2 x i1> %i.rv, i64 0
  %or.cond3.us = select i1 %i.ry, i1 %i.rx, i1 false
  %i.rz = extractelement <2 x i1> %i.rv, i64 1
  %or.cond168.us = select i1 %or.cond3.us, i1 %i.rz, i1 false
  br i1 %or.cond168.us, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.sa = mul nuw nsw i32 %i.j, %i.rw
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.sb
  %i.sd = zext nneg i32 %i.rt to i64
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %i.sd
  %i.sf = atomicrmw add ptr %i.se, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %log_scale.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.sg = add i64 %.0151195.us, 2                 ; 2 uses
  %i.sh = icmp ult i64 %i.sg, %i.po
  br i1 %i.sh, label %.preheader177.us, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.at
  %i.si = add i64 %.0152199.us, 2                 ; 2 uses
  %i.sj = icmp ult i64 %i.si, %i.pk
  br i1 %i.sj, label %.preheader178.us, label %._crit_edge200

.preheader178:                                    ; preds = %.preheader178.lr.ph, %.preheader178
  %.0152199 = phi i64 [ %i.sk, %.preheader178 ], [ 0, %.preheader178.lr.ph ]
  %i.sk = add i64 %.0152199, 2                    ; 2 uses
  %i.sl = icmp ult i64 %i.sk, %i.pk
  br i1 %i.sl, label %.preheader178, label %._crit_edge200

._crit_edge200:                                   ; preds = %._crit_edge.us, %.preheader178, %dt_calloc_align_int.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.sm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !119 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 64
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !167
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 24
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !128
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 112
  %i.ss = zext i32 %i.so to i64                   ; 2 uses
  %i.st = getelementptr inbounds nuw [16 x i8], ptr %i.sr, i64 %i.ss
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) %i.st, i64 16, i1 false)
  call fastcc void @_get_chromaticity(ptr noundef %i.e, ptr noundef %i.f, i32 noundef %i.l, ptr noundef %3, ptr noundef %i.pc)
  %i.su = icmp eq i32 %i.n, 0                     ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  br i1 %i.su, label %bb.au, label %._crit_edge200.log_scale.exit169_crit_edge

._crit_edge200.log_scale.exit169_crit_edge:       ; preds = %._crit_edge200
  %.pre222 = load float, ptr %i.sv, align 4, !tbaa !111
  %.phi.trans.insert223 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre224 = load float, ptr %.phi.trans.insert223, align 8, !tbaa !111
  br label %log_scale.exit169

bb.au:                                            ; preds = %._crit_edge200
  %i.sw = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.sx = load float, ptr %i.sv, align 4, !tbaa !111 ; 3 uses
  %i.sy = load float, ptr %i.sw, align 8, !tbaa !111 ; 3 uses
  %i.sz = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.sx, float noundef %i.sy) #19 ; 3 uses
  %i.ta = fcmp reassoc nsz arcp contract afn ult float %i.sz, f0x00800000
  br i1 %i.ta, label %log_scale.exit169, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.tb = fmul reassoc nnan nsz arcp contract afn float %i.sz, 2.900000e+01
  %i.tc = fdiv reassoc nsz arcp contract afn float %i.tb, %i.oq
  %i.td = call reassoc nsz arcp contract afn float @log1pf(float noundef %i.tc) #19
  %i.te = fmul reassoc nsz arcp contract afn float %i.oq, f0x3E968904
  %i.tf = fmul reassoc nsz arcp contract afn float %i.te, %i.td
  %i.tg = fdiv reassoc nsz arcp contract afn float %i.tf, %i.sz ; 2 uses
  %i.th = fmul reassoc nsz arcp contract afn float %i.tg, %i.sx ; 2 uses
end_hunk_0
