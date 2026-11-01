Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 97
begin_hunk_0_@_process_opposed:bb.a
  %.1282367.us.us.us = phi i32 [ %i.ka, %.split362.us.us.us.us ], [ %.0281369.us.us, %.preheader357.us.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, i8 0, i64 3, i1 false)
  %i.ej = load i32, ptr %i.av, align 4, !tbaa !79 ; 3 uses
  %i.ek = mul nuw nsw i64 %indvars.iv449, 3       ; 3 uses
  %i.el = mul i32 %i.ej, %i.do
  %i.em = trunc nuw nsw i64 %i.ek to i32          ; 3 uses
  %invariant.op.us.us.us.us = add i32 %i.el, %i.em ; 3 uses
  %i.en = sext i32 %invariant.op.us.us.us.us to i64
  %i.eo = trunc i64 %i.ek to i32
  %i.ep = add i32 %i.eo, 600
  %i.eq = urem i32 %i.ep, 6
  %i.er = zext nneg i32 %i.eq to i64              ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !97
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.en
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !12
  %i.ew = zext i8 %i.et to i64                    ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !12
  %i.ez = fcmp reassoc nsz arcp contract afn oge float %i.ev, %i.ey
  %i.fa = zext i1 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ew ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !97
  %i.fd = add i8 %i.fc, %i.fa
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !97
  %.reass.us.us.us.us.us.1 = add i32 %invariant.op.us.us.us.us, 1
  %i.fe = sext i32 %.reass.us.us.us.us.us.1 to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fe
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !12
  %.reass.us.us.us.us.us.2 = add i32 %invariant.op.us.us.us.us, 2
  %i.fh = sext i32 %.reass.us.us.us.us.us.2 to i64
  %i.fi = trunc i64 %i.ek to i32
  %i.fj = insertelement <2 x i32> poison, i32 %i.fi, i64 0
  %i.fk = shufflevector <2 x i32> %i.fj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fl = add <2 x i32> %i.fk, <i32 601, i32 602>
  %i.fm = urem <2 x i32> %i.fl, splat (i32 6)     ; 2 uses
  %i.fn = extractelement <2 x i32> %i.fm, i64 0
  %i.fo = zext nneg i32 %i.fn to i64              ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !97
  %i.fr = zext i8 %i.fq to i64                    ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fr
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !12
  %i.fu = fcmp reassoc nsz arcp contract afn oge float %i.fg, %i.ft
  %i.fv = zext i1 %i.fu to i8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fr ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !97
  %i.fy = add i8 %i.fx, %i.fv
  store i8 %i.fy, ptr %i.fw, align 1, !tbaa !97
  %i.fz = extractelement <2 x i32> %i.fm, i64 1
  %i.ga = zext nneg i32 %i.fz to i64              ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !97
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fh
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !12
  %i.gf = zext i8 %i.gc to i64                    ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !12
  %i.gi = fcmp reassoc nsz arcp contract afn oge float %i.ge, %i.gh
  %i.gj = zext i1 %i.gi to i8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gf ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !97
  %i.gm = add i8 %i.gl, %i.gj
  store i8 %i.gm, ptr %i.gk, align 1, !tbaa !97
  %i.gn = mul i32 %i.ej, %i.dv
  %invariant.op.us.us.us.us.1 = add i32 %i.gn, %i.em ; 3 uses
  %i.go = sext i32 %invariant.op.us.us.us.us.1 to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.er
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !97
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.go
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !12
  %i.gt = zext i8 %i.gq to i64                    ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gt
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !12
  %i.gw = fcmp reassoc nsz arcp contract afn oge float %i.gs, %i.gv
  %i.gx = zext i1 %i.gw to i8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gt ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !97
  %i.ha = add i8 %i.gz, %i.gx
  store i8 %i.ha, ptr %i.gy, align 1, !tbaa !97
  %.reass.us.us.us.us.us.1.1 = add i32 %invariant.op.us.us.us.us.1, 1
  %i.hb = sext i32 %.reass.us.us.us.us.us.1.1 to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.fo
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !97
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hb
  %i.hf = load float, ptr %i.he, align 4, !tbaa !12
  %i.hg = zext i8 %i.hd to i64                    ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hg
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !12
  %i.hj = fcmp reassoc nsz arcp contract afn oge float %i.hf, %i.hi
  %i.hk = zext i1 %i.hj to i8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hg ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !97
  %i.hn = add i8 %i.hm, %i.hk
  store i8 %i.hn, ptr %i.hl, align 1, !tbaa !97
  %.reass.us.us.us.us.us.2.1 = add i32 %invariant.op.us.us.us.us.1, 2
  %i.ho = sext i32 %.reass.us.us.us.us.us.2.1 to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ga
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !97
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ho
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !12
  %i.ht = zext i8 %i.hq to i64                    ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ht
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !12
  %i.hw = fcmp reassoc nsz arcp contract afn oge float %i.hs, %i.hv
  %i.hx = zext i1 %i.hw to i8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ht ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !97
  %i.ia = add i8 %i.hz, %i.hx
  store i8 %i.ia, ptr %i.hy, align 1, !tbaa !97
  %i.ib = mul i32 %i.ej, %i.dx
  %invariant.op.us.us.us.us.2 = add i32 %i.ib, %i.em ; 3 uses
  %i.ic = sext i32 %invariant.op.us.us.us.us.2 to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.er
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !97
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ic
  %i.ig = load float, ptr %i.if, align 4, !tbaa !12
  %i.ih = zext i8 %i.ie to i64                    ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ih
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !12
  %i.ik = fcmp reassoc nsz arcp contract afn oge float %i.ig, %i.ij
  %i.il = zext i1 %i.ik to i8
  %i.im = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ih ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !97
  %i.io = add i8 %i.in, %i.il
  store i8 %i.io, ptr %i.im, align 1, !tbaa !97
  %.reass.us.us.us.us.us.1.2 = add i32 %invariant.op.us.us.us.us.2, 1
  %i.ip = sext i32 %.reass.us.us.us.us.us.1.2 to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.fo
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !97
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ip
  %i.it = load float, ptr %i.is, align 4, !tbaa !12
  %i.iu = zext i8 %i.ir to i64                    ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.iu
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !12
  %i.ix = fcmp reassoc nsz arcp contract afn oge float %i.it, %i.iw
  %i.iy = zext i1 %i.ix to i8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.iu ; 2 uses
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !97
  %i.jb = add i8 %i.ja, %i.iy
  store i8 %i.jb, ptr %i.iz, align 1, !tbaa !97
  %.reass.us.us.us.us.us.2.2 = add i32 %invariant.op.us.us.us.us.2, 2
  %i.jc = sext i32 %.reass.us.us.us.us.us.2.2 to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ga
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !97
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jc
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !12
  %i.jh = zext i8 %i.je to i64                    ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jh
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !12
  %i.jk = fcmp reassoc nsz arcp contract afn oge float %i.jg, %i.jj
  %i.jl = zext i1 %i.jk to i8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.jh ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !97
  %i.jo = add i8 %i.jn, %i.jl
  store i8 %i.jo, ptr %i.jm, align 1, !tbaa !97
  %invariant.gep363.us.us.us = getelementptr i8, ptr %invariant.gep.us.us, i64 %indvars.iv449 ; 3 uses
  %i.jp = load i8, ptr %i.d, align 1, !tbaa !97
  %.not319.us.us.us = icmp ne i8 %i.jp, 0         ; 2 uses
  %i.jq = zext i1 %.not319.us.us.us to i8
  store i8 %i.jq, ptr %invariant.gep363.us.us.us, align 1, !tbaa !97
  %i.jr = zext i1 %.not319.us.us.us to i32
  %i.js = or i32 %.1282367.us.us.us, %i.jr
  %i.jt = load i8, ptr %i.dj, align 1, !tbaa !97
  %.not319.us.us.us.1 = icmp ne i8 %i.jt, 0       ; 2 uses
  %i.ju = zext i1 %.not319.us.us.us.1 to i8
  %gep364.us.us.us.1 = getelementptr i8, ptr %invariant.gep363.us.us.us, i64 %i.bf
  store i8 %i.ju, ptr %gep364.us.us.us.1, align 1, !tbaa !97
  %i.jv = zext i1 %.not319.us.us.us.1 to i32
  %i.jw = or i32 %i.js, %i.jv
  %i.jx = load i8, ptr %i.dk, align 1, !tbaa !97
  %.not319.us.us.us.2 = icmp ne i8 %i.jx, 0       ; 2 uses
  %i.jy = zext i1 %.not319.us.us.us.2 to i8
  %gep364.us.us.us.2 = getelementptr i8, ptr %invariant.gep363.us.us.us, i64 %i.dl
  store i8 %i.jy, ptr %gep364.us.us.us.2, align 1, !tbaa !97
  %i.jz = zext i1 %.not319.us.us.us.2 to i32
  %i.ka = or i32 %i.jw, %i.jz                     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %exitcond453.not = icmp eq i64 %indvars.iv.next450, %i.dh
  br i1 %exitcond453.not, label %._crit_edge.split.us.us.us, label %.split362.us.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %.split362.us.us.us.us
  %indvars.iv.next455 = add nuw nsw i64 %indvars.iv454, 1 ; 2 uses
  %exitcond457.not = icmp eq i64 %indvars.iv.next455, %i.dg
  br i1 %exitcond457.not, label %._crit_edge371, label %.preheader357.us.us

.preheader357.us:                                 ; preds = %.preheader357.lr.ph.split.us, %._crit_edge.split.us382
  %indvars.iv435 = phi i64 [ %indvars.iv.next436, %._crit_edge.split.us382 ], [ 0, %.preheader357.lr.ph.split.us ] ; 4 uses
  %.0281369.us = phi i32 [ %i.qi, %._crit_edge.split.us382 ], [ 0, %.preheader357.lr.ph.split.us ]
  %i.kb = mul nuw nsw i64 %indvars.iv435, 3       ; 3 uses
  %i.kc = mul nsw i64 %indvars.iv435, %i.ba
  %invariant.gep.us = getelementptr i8, ptr %i.df, i64 %i.kc
  %i.kd = trunc i64 %i.kb to i32
  %i.ke = trunc i64 %indvars.iv435 to i32
  %i.kf = mul i32 %i.ke, 6
  %i.kg = and i32 %i.kf, 14                       ; 3 uses
  %i.kh = add nuw nsw i64 %i.kb, 1                ; 2 uses
  %i.ki = trunc i64 %i.kh to i32
  %.tr = trunc nuw i64 %i.kh to i32
  %i.kj = shl nuw i32 %.tr, 1
  %i.kk = and i32 %i.kj, 14                       ; 3 uses
  %i.kl = add nuw nsw i64 %i.kb, 2                ; 2 uses
  %i.km = trunc i64 %i.kl to i32
  %.tr520 = trunc nuw i64 %i.kl to i32
  %i.kn = shl nuw i32 %.tr520, 1
  %i.ko = and i32 %i.kn, 14                       ; 3 uses
  br label %.split362.us

.split362.us:                                     ; preds = %.split362.us, %.preheader357.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.split362.us ], [ 0, %.preheader357.us ] ; 3 uses
  %.1282367.us375 = phi i32 [ %i.qi, %.split362.us ], [ %.0281369.us, %.preheader357.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, i8 0, i64 3, i1 false)
  %i.kp = load i32, ptr %i.av, align 4, !tbaa !79 ; 3 uses
  %i.kq = mul nuw nsw i64 %indvars.iv, 3          ; 3 uses
  %i.kr = mul i32 %i.kp, %i.kd
  %i.ks = trunc nuw nsw i64 %i.kq to i32          ; 4 uses
  %invariant.op.us = add i32 %i.kr, %i.ks         ; 3 uses
  %i.kt = sext i32 %invariant.op.us to i64
  %i.ku = and i32 %i.ks, 1                        ; 3 uses
  %.tr.i.i.us = or disjoint i32 %i.ku, %i.kg
  %i.kv = shl nuw nsw i32 %.tr.i.i.us, 1
  %i.kw = lshr i32 %i.j, %i.kv
  %i.kx = and i32 %i.kw, 3
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kt
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !12
  %i.la = zext nneg i32 %i.kx to i64              ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.la
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !12
  %i.ld = fcmp reassoc nsz arcp contract afn oge float %i.kz, %i.lc
  %i.le = zext i1 %i.ld to i8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.la ; 2 uses
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !97
  %i.lh = add i8 %i.lg, %i.le
  store i8 %i.lh, ptr %i.lf, align 1, !tbaa !97
  %.reass.us.1 = add i32 %invariant.op.us, 1
  %i.li = sext i32 %.reass.us.1 to i64
  %i.lj = trunc i64 %i.kq to i32
  %i.lk = and i32 %i.lj, 1
  %i.ll = xor i32 %i.lk, 1                        ; 3 uses
  %.tr.i.i.us.1 = or disjoint i32 %i.ll, %i.kg
  %i.lm = shl nuw nsw i32 %.tr.i.i.us.1, 1
  %i.ln = lshr i32 %i.j, %i.lm
  %i.lo = and i32 %i.ln, 3
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.li
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !12
  %i.lr = zext nneg i32 %i.lo to i64              ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lr
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !12
  %i.lu = fcmp reassoc nsz arcp contract afn oge float %i.lq, %i.lt
  %i.lv = zext i1 %i.lu to i8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.lr ; 2 uses
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !97
  %i.ly = add i8 %i.lx, %i.lv
  store i8 %i.ly, ptr %i.lw, align 1, !tbaa !97
  %.reass.us.2 = add i32 %invariant.op.us, 2
  %i.lz = sext i32 %.reass.us.2 to i64
  %i.ma = trunc i64 %i.kq to i32
  %i.mb = and i32 %i.ma, 1                        ; 3 uses
  %.tr.i.i.us.2 = or disjoint i32 %i.mb, %i.kg
  %i.mc = shl nuw nsw i32 %.tr.i.i.us.2, 1
  %i.md = lshr i32 %i.j, %i.mc
  %i.me = and i32 %i.md, 3
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lz
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !12
  %i.mh = zext nneg i32 %i.me to i64              ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mh
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !12
  %i.mk = fcmp reassoc nsz arcp contract afn oge float %i.mg, %i.mj
  %i.ml = zext i1 %i.mk to i8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mh ; 2 uses
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !97
  %i.mo = add i8 %i.mn, %i.ml
  store i8 %i.mo, ptr %i.mm, align 1, !tbaa !97
  %i.mp = mul i32 %i.kp, %i.ki
  %invariant.op.us.1 = add i32 %i.mp, %i.ks       ; 3 uses
  %i.mq = sext i32 %invariant.op.us.1 to i64
  %.tr.i.i.us.1432 = or disjoint i32 %i.ku, %i.kk
  %i.mr = shl nuw nsw i32 %.tr.i.i.us.1432, 1
  %i.ms = lshr i32 %i.j, %i.mr
  %i.mt = and i32 %i.ms, 3
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mq
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !12
  %i.mw = zext nneg i32 %i.mt to i64              ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mw
  %i.my = load float, ptr %i.mx, align 4, !tbaa !12
  %i.mz = fcmp reassoc nsz arcp contract afn oge float %i.mv, %i.my
  %i.na = zext i1 %i.mz to i8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mw ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !97
  %i.nd = add i8 %i.nc, %i.na
  store i8 %i.nd, ptr %i.nb, align 1, !tbaa !97
  %.reass.us.1.1 = add i32 %invariant.op.us.1, 1
  %i.ne = sext i32 %.reass.us.1.1 to i64
  %.tr.i.i.us.1.1 = or disjoint i32 %i.ll, %i.kk
  %i.nf = shl nuw nsw i32 %.tr.i.i.us.1.1, 1
  %i.ng = lshr i32 %i.j, %i.nf
  %i.nh = and i32 %i.ng, 3
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ne
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !12
  %i.nk = zext nneg i32 %i.nh to i64              ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nk
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !12
  %i.nn = fcmp reassoc nsz arcp contract afn oge float %i.nj, %i.nm
  %i.no = zext i1 %i.nn to i8
  %i.np = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.nk ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !97
  %i.nr = add i8 %i.nq, %i.no
  store i8 %i.nr, ptr %i.np, align 1, !tbaa !97
  %.reass.us.2.1 = add i32 %invariant.op.us.1, 2
  %i.ns = sext i32 %.reass.us.2.1 to i64
  %.tr.i.i.us.2.1 = or disjoint i32 %i.mb, %i.kk
  %i.nt = shl nuw nsw i32 %.tr.i.i.us.2.1, 1
  %i.nu = lshr i32 %i.j, %i.nt
  %i.nv = and i32 %i.nu, 3
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ns
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !12
  %i.ny = zext nneg i32 %i.nv to i64              ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ny
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !12
  %i.ob = fcmp reassoc nsz arcp contract afn oge float %i.nx, %i.oa
  %i.oc = zext i1 %i.ob to i8
  %i.od = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ny ; 2 uses
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !97
  %i.of = add i8 %i.oe, %i.oc
  store i8 %i.of, ptr %i.od, align 1, !tbaa !97
  %i.og = mul i32 %i.kp, %i.km
  %invariant.op.us.2 = add i32 %i.og, %i.ks       ; 3 uses
  %i.oh = sext i32 %invariant.op.us.2 to i64
  %.tr.i.i.us.2433 = or disjoint i32 %i.ku, %i.ko
  %i.oi = shl nuw nsw i32 %.tr.i.i.us.2433, 1
  %i.oj = lshr i32 %i.j, %i.oi
  %i.ok = and i32 %i.oj, 3
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.oh
  %i.om = load float, ptr %i.ol, align 4, !tbaa !12
  %i.on = zext nneg i32 %i.ok to i64              ; 2 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.on
  %i.op = load float, ptr %i.oo, align 4, !tbaa !12
  %i.oq = fcmp reassoc nsz arcp contract afn oge float %i.om, %i.op
  %i.or = zext i1 %i.oq to i8
  %i.os = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.on ; 2 uses
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !97
  %i.ou = add i8 %i.ot, %i.or
  store i8 %i.ou, ptr %i.os, align 1, !tbaa !97
  %.reass.us.1.2 = add i32 %invariant.op.us.2, 1
  %i.ov = sext i32 %.reass.us.1.2 to i64
  %.tr.i.i.us.1.2 = or disjoint i32 %i.ll, %i.ko
  %i.ow = shl nuw nsw i32 %.tr.i.i.us.1.2, 1
  %i.ox = lshr i32 %i.j, %i.ow
  %i.oy = and i32 %i.ox, 3
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ov
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !12
  %i.pb = zext nneg i32 %i.oy to i64              ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pb
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !12
  %i.pe = fcmp reassoc nsz arcp contract afn oge float %i.pa, %i.pd
  %i.pf = zext i1 %i.pe to i8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.pb ; 2 uses
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !97
  %i.pi = add i8 %i.ph, %i.pf
  store i8 %i.pi, ptr %i.pg, align 1, !tbaa !97
  %.reass.us.2.2 = add i32 %invariant.op.us.2, 2
  %i.pj = sext i32 %.reass.us.2.2 to i64
  %.tr.i.i.us.2.2 = or disjoint i32 %i.mb, %i.ko
  %i.pk = shl nuw nsw i32 %.tr.i.i.us.2.2, 1
  %i.pl = lshr i32 %i.j, %i.pk
  %i.pm = and i32 %i.pl, 3
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.pj
  %i.po = load float, ptr %i.pn, align 4, !tbaa !12
  %i.pp = zext nneg i32 %i.pm to i64              ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pp
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !12
  %i.ps = fcmp reassoc nsz arcp contract afn oge float %i.po, %i.pr
  %i.pt = zext i1 %i.ps to i8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.pp ; 2 uses
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !97
  %i.pw = add i8 %i.pv, %i.pt
  store i8 %i.pw, ptr %i.pu, align 1, !tbaa !97
  %invariant.gep363.us376 = getelementptr i8, ptr %invariant.gep.us, i64 %indvars.iv ; 3 uses
  %i.px = load i8, ptr %i.d, align 1, !tbaa !97
  %.not319.us379 = icmp ne i8 %i.px, 0            ; 2 uses
  %i.py = zext i1 %.not319.us379 to i8
  store i8 %i.py, ptr %invariant.gep363.us376, align 1, !tbaa !97
  %i.pz = zext i1 %.not319.us379 to i32
  %i.qa = or i32 %.1282367.us375, %i.pz
  %i.qb = load i8, ptr %i.dj, align 1, !tbaa !97
  %.not319.us379.1 = icmp ne i8 %i.qb, 0          ; 2 uses
  %i.qc = zext i1 %.not319.us379.1 to i8
  %gep364.us380.1 = getelementptr i8, ptr %invariant.gep363.us376, i64 %i.bf
  store i8 %i.qc, ptr %gep364.us380.1, align 1, !tbaa !97
  %i.qd = zext i1 %.not319.us379.1 to i32
  %i.qe = or i32 %i.qa, %i.qd
  %i.qf = load i8, ptr %i.dk, align 1, !tbaa !97
  %.not319.us379.2 = icmp ne i8 %i.qf, 0          ; 2 uses
  %i.qg = zext i1 %.not319.us379.2 to i8
  %gep364.us380.2 = getelementptr i8, ptr %invariant.gep363.us376, i64 %i.dl
  store i8 %i.qg, ptr %gep364.us380.2, align 1, !tbaa !97
  %i.qh = zext i1 %.not319.us379.2 to i32
  %i.qi = or i32 %i.qe, %i.qh                     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.dh
  br i1 %exitcond.not, label %._crit_edge.split.us382, label %.split362.us

._crit_edge.split.us382:                          ; preds = %.split362.us
end_hunk_0
