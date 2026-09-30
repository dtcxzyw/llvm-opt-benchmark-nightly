Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/local_to_model_job?download=true
inline.NumInlined: 17
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK3ozz9animation15LocalToModelJob3RunEv
define dso_local noundef zeroext i1 @_ZNK3ozz9animation15LocalToModelJob3RunEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca [4 x %"struct.ozz::math::Float4x4"], align 16 ; 21 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit.thread, label %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit

_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %sext.i = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext.i, 32               ; 2 uses
  %i.e = add nsw i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23
  %i.l = icmp uge i64 %i.k, %i.d
  %i.m = and i1 %i.l, %i.i
  br i1 %i.m, label %bb.b, label %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit.thread

bb.b:                                             ; preds = %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  %spec.select = select i1 %i.r, ptr @constinit, ptr %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !32
  %i.u = add nsw i32 %i.t, 1
  %i.v = trunc i64 %i.c to i32
  %i.w = tail call noundef i32 @llvm.smin.i32(i32 %i.u, i32 %i.v) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !33   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !34, !range !35, !noundef !36 ; 2 uses
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = add nsw i32 %i.y, %i.ab
  %i.ad = tail call noundef i32 @llvm.smax.i32(i32 %i.ac, i32 0) ; 3 uses
  %i.ae = icmp slt i32 %i.ad, %i.w
  br i1 %i.ae, label %bb.c, label %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.af = trunc nuw i8 %i.aa to i1
  br i1 %i.af, label %bb.d, label %.lr.ph63

bb.d:                                             ; preds = %bb.c
  %i.ag = zext nneg i32 %i.ad to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !38
  %i.aj = sext i16 %i.ai to i32
  %.not64 = icmp sgt i32 %i.y, %i.aj
  br i1 %.not64, label %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit.thread, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.c, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = zext nneg i32 %i.w to i64
  br label %.outer

.outer:                                           ; preds = %._crit_edge.loopexit, %.lr.ph63
  %.02761.ph = phi i32 [ %i.er, %._crit_edge.loopexit ], [ %i.ad, %.lr.ph63 ] ; 4 uses
  %i.bc = lshr i32 %.02761.ph, 2
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = load ptr, ptr %i.ak, align 8, !tbaa !39
  %i.bf = getelementptr inbounds nuw [160 x i8], ptr %i.be, i64 %i.bd ; 10 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  %i.bi = load <4 x float>, ptr %i.bg, align 16, !tbaa !40, !noalias !41 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bk = load <4 x float>, ptr %i.bj, align 16, !tbaa !40, !noalias !41 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.bm = load <4 x float>, ptr %i.bl, align 16, !tbaa !40, !noalias !41 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bo = load <4 x float>, ptr %i.bn, align 16, !tbaa !40, !noalias !41 ; 3 uses
  %i.bp = load <4 x float>, ptr %i.bh, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.br = load <4 x float>, ptr %i.bq, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bt = load <4 x float>, ptr %i.bs, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.bu = load <4 x float>, ptr %i.bf, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bw = load <4 x float>, ptr %i.bv, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.by = load <4 x float>, ptr %i.bx, align 16, !tbaa !40, !noalias !41 ; 2 uses
  %i.bz = fmul <4 x float> %i.bi, %i.bi           ; 2 uses
  %i.ca = fmul <4 x float> %i.bi, %i.bk           ; 2 uses
  %i.cb = fmul <4 x float> %i.bi, %i.bm           ; 2 uses
  %i.cc = fmul <4 x float> %i.bi, %i.bo           ; 2 uses
  %i.cd = fmul <4 x float> %i.bk, %i.bk           ; 2 uses
  %i.ce = fmul <4 x float> %i.bk, %i.bm           ; 2 uses
  %i.cf = fmul <4 x float> %i.bk, %i.bo           ; 2 uses
  %i.cg = fmul <4 x float> %i.bm, %i.bm           ; 2 uses
  %i.ch = fmul <4 x float> %i.bm, %i.bo           ; 2 uses
  %i.ci = fadd <4 x float> %i.cd, %i.cg
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> splat (float -2.000000e+00), <4 x float> splat (float 1.000000e+00))
  %i.ck = fmul <4 x float> %i.bp, %i.cj           ; 2 uses
  %i.cl = fmul <4 x float> %i.bp, splat (float 2.000000e+00) ; 2 uses
  %i.cm = fadd <4 x float> %i.ca, %i.ch
  %i.cn = fmul <4 x float> %i.cl, %i.cm           ; 2 uses
  %i.co = fsub <4 x float> %i.cb, %i.cf
  %i.cp = fmul <4 x float> %i.cl, %i.co           ; 2 uses
  %i.cq = fmul <4 x float> %i.br, splat (float 2.000000e+00) ; 2 uses
  %i.cr = fsub <4 x float> %i.ca, %i.ch
  %i.cs = fmul <4 x float> %i.cr, %i.cq           ; 2 uses
  %i.ct = fadd <4 x float> %i.bz, %i.cg
  %i.cu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> splat (float -2.000000e+00), <4 x float> splat (float 1.000000e+00))
  %i.cv = fmul <4 x float> %i.br, %i.cu           ; 2 uses
  %i.cw = fadd <4 x float> %i.ce, %i.cc
  %i.cx = fmul <4 x float> %i.cw, %i.cq           ; 2 uses
  %i.cy = fmul <4 x float> %i.bt, splat (float 2.000000e+00) ; 2 uses
  %i.cz = fadd <4 x float> %i.cb, %i.cf
  %i.da = fmul <4 x float> %i.cz, %i.cy           ; 2 uses
  %i.db = fsub <4 x float> %i.ce, %i.cc
  %i.dc = fmul <4 x float> %i.db, %i.cy           ; 2 uses
  %i.dd = fadd <4 x float> %i.bz, %i.cd
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> splat (float -2.000000e+00), <4 x float> splat (float 1.000000e+00))
  %i.df = fmul <4 x float> %i.de, %i.bt           ; 2 uses
  %i.dg = shufflevector <4 x float> %i.ck, <4 x float> %i.cp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dh = shufflevector <4 x float> %i.cn, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.di = shufflevector <4 x float> %i.dg, <4 x float> %i.dh, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dj = shufflevector <4 x float> %i.dg, <4 x float> %i.dh, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dk = shufflevector <4 x float> %i.ck, <4 x float> %i.cp, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dl = shufflevector <4 x float> %i.cn, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dm = shufflevector <4 x float> %i.dk, <4 x float> %i.dl, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dn = shufflevector <4 x float> %i.dk, <4 x float> %i.dl, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.do = shufflevector <4 x float> %i.cs, <4 x float> %i.cx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dp = shufflevector <4 x float> %i.cv, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dq = shufflevector <4 x float> %i.do, <4 x float> %i.dp, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dr = shufflevector <4 x float> %i.do, <4 x float> %i.dp, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ds = shufflevector <4 x float> %i.cs, <4 x float> %i.cx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dt = shufflevector <4 x float> %i.cv, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.du = shufflevector <4 x float> %i.ds, <4 x float> %i.dt, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dv = shufflevector <4 x float> %i.ds, <4 x float> %i.dt, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dw = shufflevector <4 x float> %i.da, <4 x float> %i.df, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dx = shufflevector <4 x float> %i.dc, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dy = shufflevector <4 x float> %i.dw, <4 x float> %i.dx, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dz = shufflevector <4 x float> %i.dw, <4 x float> %i.dx, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ea = shufflevector <4 x float> %i.da, <4 x float> %i.df, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eb = shufflevector <4 x float> %i.dc, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ec = shufflevector <4 x float> %i.ea, <4 x float> %i.eb, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ed = shufflevector <4 x float> %i.ea, <4 x float> %i.eb, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ee = shufflevector <4 x float> %i.bu, <4 x float> %i.by, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ef = shufflevector <4 x float> %i.bw, <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eg = shufflevector <4 x float> %i.ee, <4 x float> %i.ef, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.eh = shufflevector <4 x float> %i.ee, <4 x float> %i.ef, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ei = shufflevector <4 x float> %i.bu, <4 x float> %i.by, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ej = shufflevector <4 x float> %i.bw, <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ek = shufflevector <4 x float> %i.ei, <4 x float> %i.ej, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.el = shufflevector <4 x float> %i.ei, <4 x float> %i.ej, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.em = and i32 %.02761.ph, -4
  %i.en = add nuw nsw i32 %i.em, 4                ; 2 uses
  %i.eo = icmp slt i32 %.02761.ph, %i.en
  br label %bb.e

bb.e:                                             ; preds = %.outer, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  store <4 x float> %i.di, ptr %1, align 16, !tbaa !40
  store <4 x float> %i.dj, ptr %i.al, align 16, !tbaa !40
  store <4 x float> %i.dm, ptr %i.am, align 16, !tbaa !40
  store <4 x float> %i.dn, ptr %i.an, align 16, !tbaa !40
  store <4 x float> %i.dq, ptr %i.ao, align 16, !tbaa !40
  store <4 x float> %i.dr, ptr %i.ap, align 16, !tbaa !40
  store <4 x float> %i.du, ptr %i.aq, align 16, !tbaa !40
  store <4 x float> %i.dv, ptr %i.ar, align 16, !tbaa !40
  store <4 x float> %i.dy, ptr %i.as, align 16, !tbaa !40
  store <4 x float> %i.dz, ptr %i.at, align 16, !tbaa !40
  store <4 x float> %i.ec, ptr %i.au, align 16, !tbaa !40
  store <4 x float> %i.ed, ptr %i.av, align 16, !tbaa !40
  store <4 x float> %i.eg, ptr %i.aw, align 16, !tbaa !40
  store <4 x float> %i.eh, ptr %i.ax, align 16, !tbaa !40
  store <4 x float> %i.ek, ptr %i.ay, align 16, !tbaa !40
  store <4 x float> %i.el, ptr %i.az, align 16, !tbaa !40
  br i1 %i.eo, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ep = zext nneg i32 %.02761.ph to i64
  %i.eq = zext nneg i32 %i.en to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.er = trunc nuw nsw i64 %indvars.iv.next to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br i1 %i.hm, label %.outer, label %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit.thread, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.e, !llvm.loop !26

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ %i.ep, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv
  %i.et = load i16, ptr %i.es, align 2, !tbaa !38 ; 2 uses
  %i.eu = icmp eq i16 %i.et, -1
  %.pre = load ptr, ptr %i.ba, align 8, !tbaa !43 ; 2 uses
  %i.ev = sext i16 %i.et to i64
  %i.ew = getelementptr inbounds nuw [64 x i8], ptr %.pre, i64 %i.ev
  %i.ex = select i1 %i.eu, ptr %spec.select, ptr %i.ew ; 4 uses
  %i.ey = and i64 %indvars.iv, 3
  %i.ez = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %i.ey ; 4 uses
  %i.fa = load <4 x float>, ptr %i.ez, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fc = load <4 x float>, ptr %i.ex, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fd = fmul <4 x float> %i.fb, %i.fc
  %i.fe = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fg = load <4 x float>, ptr %i.ff, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fh = fmul <4 x float> %i.fe, %i.fg
  %i.fi = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fk = load <4 x float>, ptr %i.fj, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fl = fmul <4 x float> %i.fi, %i.fk
  %i.fm = fadd <4 x float> %i.fd, %i.fl
  %i.fn = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fp = load <4 x float>, ptr %i.fo, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fq = fmul <4 x float> %i.fn, %i.fp
  %i.fr = fadd <4 x float> %i.fh, %i.fq
  %i.fs = fadd <4 x float> %i.fm, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fu = load <4 x float>, ptr %i.ft, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fw = fmul <4 x float> %i.fc, %i.fv
  %i.fx = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fy = fmul <4 x float> %i.fg, %i.fx
  %i.fz = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ga = fmul <4 x float> %i.fk, %i.fz
  %i.gb = fadd <4 x float> %i.ga, %i.fw
  %i.gc = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gd = fmul <4 x float> %i.fp, %i.gc
  %i.ge = fadd <4 x float> %i.gd, %i.fy
  %i.gf = fadd <4 x float> %i.gb, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.gh = load <4 x float>, ptr %i.gg, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gj = fmul <4 x float> %i.fc, %i.gi
  %i.gk = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gl = fmul <4 x float> %i.fg, %i.gk
  %i.gm = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gn = fmul <4 x float> %i.fk, %i.gm
  %i.go = fadd <4 x float> %i.gn, %i.gj
  %i.gp = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gq = fmul <4 x float> %i.fp, %i.gp
  %i.gr = fadd <4 x float> %i.gq, %i.gl
  %i.gs = fadd <4 x float> %i.go, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %i.gu = load <4 x float>, ptr %i.gt, align 16, !tbaa !40, !noalias !44 ; 4 uses
  %i.gv = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gw = fmul <4 x float> %i.fc, %i.gv
  %i.gx = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gy = fmul <4 x float> %i.fg, %i.gx
  %i.gz = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ha = fmul <4 x float> %i.fk, %i.gz
  %i.hb = fadd <4 x float> %i.ha, %i.gw
  %i.hc = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hd = fmul <4 x float> %i.fp, %i.hc
  %i.he = fadd <4 x float> %i.hd, %i.gy
  %i.hf = fadd <4 x float> %i.hb, %i.he
  %i.hg = getelementptr inbounds nuw [64 x i8], ptr %.pre, i64 %indvars.iv ; 4 uses
  store <4 x float> %i.fs, ptr %i.hg, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store <4 x float> %i.gf, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  store <4 x float> %i.gs, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  store <4 x float> %i.hf, ptr %.sroa.9.0..sroa_idx, align 16, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.hh = icmp samesign ult i64 %indvars.iv.next, %i.bb
  br i1 %i.hh, label %bb.f, label %._crit_edge.loopexit.thread

._crit_edge.loopexit.thread:                      ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %_ZNK3ozz9animation15LocalToModelJob8ValidateEv.exit.thread

bb.f:                                             ; preds = %.lr.ph
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !38
  %i.hk = sext i16 %i.hj to i32
  %i.hl = load i32, ptr %i.x, align 8, !tbaa !33
  %i.hm = icmp sle i32 %i.hl, %i.hk               ; 2 uses
  %i.hn = icmp samesign ult i64 %indvars.iv.next, %i.eq
  %i.ho = select i1 %i.hn, i1 %i.hm, i1 false
  br i1 %i.ho, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !29

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
!24 = distinct !{!24, !"_ZN3ozz4math11SoaFloat4x410FromAffineERKNS0_9SoaFloat3ERKNS0_13SoaQuaternionES4_"}
!25 = distinct !{!25, !24, !"_ZN3ozz4math11SoaFloat4x410FromAffineERKNS0_9SoaFloat3ERKNS0_13SoaQuaternionES4_: argument 0"}
!26 = distinct !{!26, !42}
!27 = distinct !{!27, !"_ZN3ozz4mathmlERKNS0_8Float4x4ES3_"}
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
