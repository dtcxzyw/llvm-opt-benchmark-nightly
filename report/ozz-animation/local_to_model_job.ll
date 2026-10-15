Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/local_to_model_job?download=true
inline.NumInlined: 17
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK3ozz9animation15LocalToModelJob3RunEv:bb.a
  br label %.outer

.outer:                                           ; preds = %._crit_edge.loopexit, %.lr.ph63
  %.02761.ph = phi i32 [ %i.es, %._crit_edge.loopexit ], [ %i.ae, %.lr.ph63 ] ; 4 uses
  %i.bd = lshr i32 %.02761.ph, 2
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = load ptr, ptr %i.al, align 8, !tbaa !39
  %i.bg = getelementptr inbounds nuw [160 x i8], ptr %i.bf, i64 %i.be ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  %i.bj = load <4 x float>, ptr %i.bh, align 16, !tbaa !40, !noalias !41 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bl = load <4 x float>, ptr %i.bk, align 16, !tbaa !40, !noalias !41 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bn = load <4 x float>, ptr %i.bm, align 16, !tbaa !40, !noalias !41 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.bp = load <4 x float>, ptr %i.bo, align 16, !tbaa !40, !noalias !41 ; 3 uses
  %i.bq = load <4 x float>, ptr %i.bi, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bs = load <4 x float>, ptr %i.br, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  %i.bu = load <4 x float>, ptr %i.bt, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.bv = load <4 x float>, ptr %i.bg, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bx = load <4 x float>, ptr %i.bw, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bz = load <4 x float>, ptr %i.by, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.ca = fmul <4 x float> %i.bj, %i.bj           ; 2 uses
  %i.cb = fmul <4 x float> %i.bj, %i.bl           ; 2 uses
  %i.cc = fmul <4 x float> %i.bj, %i.bn           ; 2 uses
  %i.cd = fmul <4 x float> %i.bj, %i.bp           ; 2 uses
  %i.ce = fmul <4 x float> %i.bl, %i.bl           ; 2 uses
  %i.cf = fmul <4 x float> %i.bl, %i.bn           ; 2 uses
  %i.cg = fmul <4 x float> %i.bl, %i.bp           ; 2 uses
  %i.ch = fmul <4 x float> %i.bn, %i.bn           ; 2 uses
  %i.ci = fmul <4 x float> %i.bn, %i.bp           ; 2 uses
  %i.cj = fadd <4 x float> %i.ce, %i.ch
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> splat (float -2.000000e+00), <4 x float> splat (float 1.000000e+00))
  %i.cl = fmul <4 x float> %i.bq, %i.ck           ; 2 uses
  %i.cm = fmul <4 x float> %i.bq, splat (float 2.000000e+00) ; 2 uses
  %i.cn = fadd <4 x float> %i.cb, %i.ci
  %i.co = fmul <4 x float> %i.cm, %i.cn           ; 2 uses
  %i.cp = fsub <4 x float> %i.cc, %i.cg
  %i.cq = fmul <4 x float> %i.cm, %i.cp           ; 2 uses
  %i.cr = fmul <4 x float> %i.bs, splat (float 2.000000e+00) ; 2 uses
  %i.cs = fsub <4 x float> %i.cb, %i.ci
  %i.ct = fmul <4 x float> %i.cs, %i.cr           ; 2 uses
  %i.cu = fadd <4 x float> %i.ca, %i.ch
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> splat (float -2.000000e+00), <4 x float> splat (float 1.000000e+00))
  %i.cw = fmul <4 x float> %i.bs, %i.cv           ; 2 uses
  %i.cx = fadd <4 x float> %i.cf, %i.cd
  %i.cy = fmul <4 x float> %i.cx, %i.cr           ; 2 uses
  %i.cz = fmul <4 x float> %i.bu, splat (float 2.000000e+00) ; 2 uses
  %i.da = fadd <4 x float> %i.cc, %i.cg
  %i.db = fmul <4 x float> %i.da, %i.cz           ; 2 uses
  %i.dc = fsub <4 x float> %i.cf, %i.cd
  %i.dd = fmul <4 x float> %i.dc, %i.cz           ; 2 uses
  %i.de = fadd <4 x float> %i.ca, %i.ce
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> splat (float -2.000000e+00), <4 x float> splat (float 1.000000e+00))
  %i.dg = fmul <4 x float> %i.df, %i.bu           ; 2 uses
  %i.dh = shufflevector <4 x float> %i.cl, <4 x float> %i.cq, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.di = shufflevector <4 x float> %i.co, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dk = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dl = shufflevector <4 x float> %i.cl, <4 x float> %i.cq, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dm = shufflevector <4 x float> %i.co, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dn = shufflevector <4 x float> %i.dl, <4 x float> %i.dm, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.do = shufflevector <4 x float> %i.dl, <4 x float> %i.dm, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dp = shufflevector <4 x float> %i.ct, <4 x float> %i.cy, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dq = shufflevector <4 x float> %i.cw, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dr = shufflevector <4 x float> %i.dp, <4 x float> %i.dq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ds = shufflevector <4 x float> %i.dp, <4 x float> %i.dq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dt = shufflevector <4 x float> %i.ct, <4 x float> %i.cy, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.du = shufflevector <4 x float> %i.cw, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.dt, <4 x float> %i.du, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dw = shufflevector <4 x float> %i.dt, <4 x float> %i.du, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dx = shufflevector <4 x float> %i.db, <4 x float> %i.dg, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dy = shufflevector <4 x float> %i.dd, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ea = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.eb = shufflevector <4 x float> %i.db, <4 x float> %i.dg, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ec = shufflevector <4 x float> %i.dd, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ed = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ee = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ef = shufflevector <4 x float> %i.bv, <4 x float> %i.bz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eg = shufflevector <4 x float> %i.bx, <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eh = shufflevector <4 x float> %i.ef, <4 x float> %i.eg, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ei = shufflevector <4 x float> %i.ef, <4 x float> %i.eg, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ej = shufflevector <4 x float> %i.bv, <4 x float> %i.bz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ek = shufflevector <4 x float> %i.bx, <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.el = shufflevector <4 x float> %i.ej, <4 x float> %i.ek, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.em = shufflevector <4 x float> %i.ej, <4 x float> %i.ek, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.en = and i32 %.02761.ph, -4
  %i.eo = add nuw nsw i32 %i.en, 4                ; 2 uses
  %i.ep = icmp slt i32 %.02761.ph, %i.eo
  br label %bb.e

bb.e:                                             ; preds = %.outer, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  store <4 x float> %i.dj, ptr %1, align 16, !tbaa !40
  store <4 x float> %i.dk, ptr %i.am, align 16, !tbaa !40
  store <4 x float> %i.dn, ptr %i.an, align 16, !tbaa !40
  store <4 x float> %i.do, ptr %i.ao, align 16, !tbaa !40
  store <4 x float> %i.dr, ptr %i.ap, align 16, !tbaa !40
  store <4 x float> %i.ds, ptr %i.aq, align 16, !tbaa !40
  store <4 x float> %i.dv, ptr %i.ar, align 16, !tbaa !40
  store <4 x float> %i.dw, ptr %i.as, align 16, !tbaa !40
  store <4 x float> %i.dz, ptr %i.at, align 16, !tbaa !40
  store <4 x float> %i.ea, ptr %i.au, align 16, !tbaa !40
  store <4 x float> %i.ed, ptr %i.av, align 16, !tbaa !40
  store <4 x float> %i.ee, ptr %i.aw, align 16, !tbaa !40
  store <4 x float> %i.eh, ptr %i.ax, align 16, !tbaa !40
  store <4 x float> %i.ei, ptr %i.ay, align 16, !tbaa !40
  store <4 x float> %i.el, ptr %i.az, align 16, !tbaa !40
  store <4 x float> %i.em, ptr %i.ba, align 16, !tbaa !40
  br i1 %i.ep, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.eq = zext nneg i32 %.02761.ph to i64
  %i.er = zext nneg i32 %i.eo to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.es = trunc nuw nsw i64 %indvars.iv.next to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br i1 %i.hn, label %.outer, label %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit.thread, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.e, !llvm.loop !26

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ %i.eq, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !38 ; 2 uses
  %i.ev = icmp eq i16 %i.eu, -1
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !43 ; 2 uses
  %i.ew = sext i16 %i.eu to i64
  %i.ex = getelementptr inbounds nuw [64 x i8], ptr %.pre, i64 %i.ew
  %i.ey = select i1 %i.ev, ptr %spec.select, ptr %i.ex ; 4 uses
  %i.ez = and i64 %indvars.iv, 3
  %i.fa = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %i.ez ; 4 uses
  %i.fb = load <4 x float>, ptr %i.fa, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fd = load <4 x float>, ptr %i.ey, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fe = fmul <4 x float> %i.fc, %i.fd
  %i.ff = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fh = load <4 x float>, ptr %i.fg, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fi = fmul <4 x float> %i.ff, %i.fh
  %i.fj = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fl = load <4 x float>, ptr %i.fk, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fm = fmul <4 x float> %i.fj, %i.fl
  %i.fn = fadd <4 x float> %i.fe, %i.fm
  %i.fo = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fq = load <4 x float>, ptr %i.fp, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fr = fmul <4 x float> %i.fo, %i.fq
  %i.fs = fadd <4 x float> %i.fi, %i.fr
  %i.ft = fadd <4 x float> %i.fn, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fv = load <4 x float>, ptr %i.fu, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = fmul <4 x float> %i.fd, %i.fw
  %i.fy = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fz = fmul <4 x float> %i.fh, %i.fy
  %i.ga = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gb = fmul <4 x float> %i.fl, %i.ga
  %i.gc = fadd <4 x float> %i.gb, %i.fx
  %i.gd = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ge = fmul <4 x float> %i.fq, %i.gd
  %i.gf = fadd <4 x float> %i.ge, %i.fz
  %i.gg = fadd <4 x float> %i.gc, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.gi = load <4 x float>, ptr %i.gh, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gk = fmul <4 x float> %i.fd, %i.gj
  %i.gl = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gm = fmul <4 x float> %i.fh, %i.gl
  %i.gn = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.go = fmul <4 x float> %i.fl, %i.gn
  %i.gp = fadd <4 x float> %i.go, %i.gk
  %i.gq = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gr = fmul <4 x float> %i.fq, %i.gq
  %i.gs = fadd <4 x float> %i.gr, %i.gm
  %i.gt = fadd <4 x float> %i.gp, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  %i.gv = load <4 x float>, ptr %i.gu, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gx = fmul <4 x float> %i.fd, %i.gw
  %i.gy = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gz = fmul <4 x float> %i.fh, %i.gy
  %i.ha = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hb = fmul <4 x float> %i.fl, %i.ha
  %i.hc = fadd <4 x float> %i.hb, %i.gx
  %i.hd = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.he = fmul <4 x float> %i.fq, %i.hd
  %i.hf = fadd <4 x float> %i.he, %i.gz
  %i.hg = fadd <4 x float> %i.hc, %i.hf
  %i.hh = getelementptr inbounds nuw [64 x i8], ptr %.pre, i64 %indvars.iv ; 4 uses
  store <4 x float> %i.ft, ptr %i.hh, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <4 x float> %i.gg, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  store <4 x float> %i.gt, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  store <4 x float> %i.hg, ptr %.sroa.9.0..sroa_idx, align 16, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.hi = icmp samesign ult i64 %indvars.iv.next, %i.bc
  br i1 %i.hi, label %bb.f, label %._crit_edge.loopexit.thread

._crit_edge.loopexit.thread:                      ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit.thread

bb.f:                                             ; preds = %.lr.ph
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !38
  %i.hl = sext i16 %i.hk to i32
  %i.hm = load i32, ptr %i.y, align 8, !tbaa !33
  %i.hn = icmp sle i32 %i.hm, %i.hl               ; 2 uses
  %i.ho = icmp samesign ult i64 %indvars.iv.next, %i.er
  %i.hp = select i1 %i.ho, i1 %i.hn, i1 false
  br i1 %i.hp, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !29

_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit.thread: ; preds = %._crit_edge.loopexit, %._crit_edge.loopexit.thread, %bb.b, %bb.d, %bb.a, %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit
  %.0.i57 = phi i1 [ false, %bb.a ], [ false, %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit ], [ true, %bb.d ], [ true, %._crit_edge.loopexit.thread ], [ true, %bb.b ], [ true, %._crit_edge.loopexit ]
  ret i1 %.0.i57
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN3ozz9animation8SkeletonE", !9, i64 0}
!11 = !{!"p1 _ZTSN3ozz4math8Float4x4E", !9, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = !{!"p1 _ZTSN3ozz4math12SoaTransformE", !9, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSN3ozz4spanIKNS_4math12SoaTransformEEE", !13, i64 0, !14, i64 8}
!16 = !{!"_ZTSN3ozz4spanINS_4math8Float4x4EEE", !11, i64 0, !14, i64 8}
!17 = !{!"_ZTSN3ozz9animation15LocalToModelJobE", !10, i64 0, !11, i64 8, !6, i64 16, !6, i64 20, !12, i64 24, !15, i64 32, !16, i64 48}
!18 = !{!17, !10, i64 0}
!19 = !{!"p1 short", !9, i64 0}
!20 = !{!"_ZTSN3ozz4spanIsEE", !19, i64 0, !14, i64 8}
!21 = !{!20, !14, i64 8}
!22 = !{!15, !14, i64 8}
!23 = !{!16, !14, i64 8}
!24 = distinct !{!24, i1 false, !"_ZN3ozz4math11SoaFloat4x410FromAffineERKNS0_9SoaFloat3ERKNS0_13SoaQuaternionES4_"}
!25 = distinct !{!25, !24, !"_ZN3ozz4math11SoaFloat4x410FromAffineERKNS0_9SoaFloat3ERKNS0_13SoaQuaternionES4_: argument 0"}
!26 = distinct !{!26, !42}
!27 = distinct !{!27, i1 false, !"_ZN3ozz4mathmlERKNS0_8Float4x4ES3_"}
!28 = distinct !{!28, !27, !"_ZN3ozz4mathmlERKNS0_8Float4x4ES3_: argument 0"}
!29 = distinct !{!29, !42}
!30 = !{!20, !19, i64 0}
!31 = !{!17, !11, i64 8}
!32 = !{!17, !6, i64 20}
!33 = !{!17, !6, i64 16}
!34 = !{!17, !12, i64 24}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!"short", !5, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!15, !13, i64 0}
!40 = !{!5, !5, i64 0}
!41 = !{!25}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!16, !11, i64 0}
!44 = !{!28}
end_hunk_0
