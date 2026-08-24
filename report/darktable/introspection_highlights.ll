Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_process_opposed:bb.a
  %i.dw = trunc i64 %i.dm to i32
  %i.dx = add i32 %i.dw, 601
  %i.dy = urem i32 %i.dx, 6
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.dz ; 3 uses
  %i.eb = trunc i64 %i.dm to i32
  %i.ec = add i32 %i.eb, 2
  %i.ed = trunc i64 %i.dm to i32
  %i.ee = add i32 %i.ed, 602
  %i.ef = urem i32 %i.ee, 6
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.eg ; 3 uses
  br label %.split362.us.us.us.us

.split362.us.us.us.us:                            ; preds = %.split362.us.us.us.us, %.preheader357.us.us
  %indvars.iv449 = phi i64 [ %indvars.iv.next450, %.split362.us.us.us.us ], [ 0, %.preheader357.us.us ] ; 3 uses
  %.1282367.us.us.us = phi i32 [ %i.jy, %.split362.us.us.us.us ], [ %.0281369.us.us, %.preheader357.us.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, i8 0, i64 3, i1 false)
  %i.ei = load i32, ptr %i.av, align 4, !tbaa !310 ; 3 uses
  %i.ej = mul nuw nsw i64 %indvars.iv449, 3       ; 4 uses
  %i.ek = mul i32 %i.ei, %i.do
  %i.el = trunc nuw nsw i64 %i.ej to i32          ; 3 uses
  %invariant.op.us.us.us.us = add i32 %i.ek, %i.el ; 3 uses
  %i.em = sext i32 %invariant.op.us.us.us.us to i64
  %i.en = trunc i64 %i.ej to i32
  %i.eo = add i32 %i.en, 600
  %i.ep = urem i32 %i.eo, 6
  %i.eq = zext nneg i32 %i.ep to i64              ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !332
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.em
  %i.eu = load float, ptr %i.et, align 4, !tbaa !11
  %i.ev = zext i8 %i.es to i64                    ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ev
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !11
  %i.ey = fcmp reassoc nsz arcp contract afn oge float %i.eu, %i.ex
  %i.ez = zext i1 %i.ey to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ev ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !332
  %i.fc = add i8 %i.fb, %i.ez
  store i8 %i.fc, ptr %i.fa, align 1, !tbaa !332
  %.reass.us.us.us.us.us.1 = add i32 %invariant.op.us.us.us.us, 1
  %i.fd = sext i32 %.reass.us.us.us.us.us.1 to i64
  %i.fe = trunc i64 %i.ej to i32
  %i.ff = add i32 %i.fe, 601
  %i.fg = urem i32 %i.ff, 6
  %i.fh = zext nneg i32 %i.fg to i64              ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !332
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fd
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !11
  %i.fm = zext i8 %i.fj to i64                    ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fm
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !11
  %i.fp = fcmp reassoc nsz arcp contract afn oge float %i.fl, %i.fo
  %i.fq = zext i1 %i.fp to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fm ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !332
  %i.ft = add i8 %i.fs, %i.fq
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !332
  %.reass.us.us.us.us.us.2 = add i32 %invariant.op.us.us.us.us, 2
  %i.fu = sext i32 %.reass.us.us.us.us.us.2 to i64
  %i.fv = trunc i64 %i.ej to i32
  %i.fw = add i32 %i.fv, 602
  %i.fx = urem i32 %i.fw, 6
  %i.fy = zext nneg i32 %i.fx to i64              ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !332
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fu
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !11
  %i.gd = zext i8 %i.ga to i64                    ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !11
  %i.gg = fcmp reassoc nsz arcp contract afn oge float %i.gc, %i.gf
  %i.gh = zext i1 %i.gg to i8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gd ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !332
  %i.gk = add i8 %i.gj, %i.gh
  store i8 %i.gk, ptr %i.gi, align 1, !tbaa !332
  %i.gl = mul i32 %i.ei, %i.dv
  %invariant.op.us.us.us.us.1 = add i32 %i.gl, %i.el ; 3 uses
  %i.gm = sext i32 %invariant.op.us.us.us.us.1 to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eq
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !332
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gm
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !11
  %i.gr = zext i8 %i.go to i64                    ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gr
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !11
  %i.gu = fcmp reassoc nsz arcp contract afn oge float %i.gq, %i.gt
  %i.gv = zext i1 %i.gu to i8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gr ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !332
  %i.gy = add i8 %i.gx, %i.gv
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !332
  %.reass.us.us.us.us.us.1.1 = add i32 %invariant.op.us.us.us.us.1, 1
  %i.gz = sext i32 %.reass.us.us.us.us.us.1.1 to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fh
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !332
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gz
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !11
  %i.he = zext i8 %i.hb to i64                    ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.he
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !11
  %i.hh = fcmp reassoc nsz arcp contract afn oge float %i.hd, %i.hg
  %i.hi = zext i1 %i.hh to i8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.he ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !332
  %i.hl = add i8 %i.hk, %i.hi
  store i8 %i.hl, ptr %i.hj, align 1, !tbaa !332
  %.reass.us.us.us.us.us.2.1 = add i32 %invariant.op.us.us.us.us.1, 2
  %i.hm = sext i32 %.reass.us.us.us.us.us.2.1 to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fy
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !332
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hm
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !11
  %i.hr = zext i8 %i.ho to i64                    ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hr
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !11
  %i.hu = fcmp reassoc nsz arcp contract afn oge float %i.hq, %i.ht
  %i.hv = zext i1 %i.hu to i8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hr ; 2 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !332
  %i.hy = add i8 %i.hx, %i.hv
  store i8 %i.hy, ptr %i.hw, align 1, !tbaa !332
  %i.hz = mul i32 %i.ei, %i.ec
  %invariant.op.us.us.us.us.2 = add i32 %i.hz, %i.el ; 3 uses
  %i.ia = sext i32 %invariant.op.us.us.us.us.2 to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eq
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !332
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ia
  %i.ie = load float, ptr %i.id, align 4, !tbaa !11
  %i.if = zext i8 %i.ic to i64                    ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !11
  %i.ii = fcmp reassoc nsz arcp contract afn oge float %i.ie, %i.ih
  %i.ij = zext i1 %i.ii to i8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.if ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !332
  %i.im = add i8 %i.il, %i.ij
  store i8 %i.im, ptr %i.ik, align 1, !tbaa !332
  %.reass.us.us.us.us.us.1.2 = add i32 %invariant.op.us.us.us.us.2, 1
  %i.in = sext i32 %.reass.us.us.us.us.us.1.2 to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.fh
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !332
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.in
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !11
  %i.is = zext i8 %i.ip to i64                    ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.is
  %i.iu = load float, ptr %i.it, align 4, !tbaa !11
  %i.iv = fcmp reassoc nsz arcp contract afn oge float %i.ir, %i.iu
  %i.iw = zext i1 %i.iv to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.is ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !332
  %i.iz = add i8 %i.iy, %i.iw
  store i8 %i.iz, ptr %i.ix, align 1, !tbaa !332
  %.reass.us.us.us.us.us.2.2 = add i32 %invariant.op.us.us.us.us.2, 2
  %i.ja = sext i32 %.reass.us.us.us.us.us.2.2 to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.fy
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !332
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ja
  %i.je = load float, ptr %i.jd, align 4, !tbaa !11
  %i.jf = zext i8 %i.jc to i64                    ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jf
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !11
  %i.ji = fcmp reassoc nsz arcp contract afn oge float %i.je, %i.jh
  %i.jj = zext i1 %i.ji to i8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.jf ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !332
  %i.jm = add i8 %i.jl, %i.jj
  store i8 %i.jm, ptr %i.jk, align 1, !tbaa !332
  %invariant.gep363.us.us.us = getelementptr i8, ptr %invariant.gep.us.us, i64 %indvars.iv449 ; 3 uses
  %i.jn = load i8, ptr %i.d, align 1, !tbaa !332
  %.not319.us.us.us = icmp ne i8 %i.jn, 0         ; 2 uses
  %i.jo = zext i1 %.not319.us.us.us to i8
  store i8 %i.jo, ptr %invariant.gep363.us.us.us, align 1, !tbaa !332
  %i.jp = zext i1 %.not319.us.us.us to i32
  %i.jq = or i32 %.1282367.us.us.us, %i.jp
  %i.jr = load i8, ptr %i.dj, align 1, !tbaa !332
  %.not319.us.us.us.1 = icmp ne i8 %i.jr, 0       ; 2 uses
  %i.js = zext i1 %.not319.us.us.us.1 to i8
  %gep364.us.us.us.1 = getelementptr i8, ptr %invariant.gep363.us.us.us, i64 %i.bf
  store i8 %i.js, ptr %gep364.us.us.us.1, align 1, !tbaa !332
  %i.jt = zext i1 %.not319.us.us.us.1 to i32
  %i.ju = or i32 %i.jq, %i.jt
  %i.jv = load i8, ptr %i.dk, align 1, !tbaa !332
  %.not319.us.us.us.2 = icmp ne i8 %i.jv, 0       ; 2 uses
  %i.jw = zext i1 %.not319.us.us.us.2 to i8
  %gep364.us.us.us.2 = getelementptr i8, ptr %invariant.gep363.us.us.us, i64 %i.dl
  store i8 %i.jw, ptr %gep364.us.us.us.2, align 1, !tbaa !332
  %i.jx = zext i1 %.not319.us.us.us.2 to i32
  %i.jy = or i32 %i.ju, %i.jx                     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %exitcond453.not = icmp eq i64 %indvars.iv.next450, %i.dh
  br i1 %exitcond453.not, label %._crit_edge.split.us.us.us, label %.split362.us.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %.split362.us.us.us.us
  %indvars.iv.next455 = add nuw nsw i64 %indvars.iv454, 1 ; 2 uses
  %exitcond457.not = icmp eq i64 %indvars.iv.next455, %i.dg
  br i1 %exitcond457.not, label %._crit_edge371, label %.preheader357.us.us

.preheader357.us:                                 ; preds = %.preheader357.lr.ph.split.us, %._crit_edge.split.us381
  %indvars.iv435 = phi i64 [ %indvars.iv.next436, %._crit_edge.split.us381 ], [ 0, %.preheader357.lr.ph.split.us ] ; 4 uses
  %.0281369.us = phi i32 [ %i.qg, %._crit_edge.split.us381 ], [ 0, %.preheader357.lr.ph.split.us ]
  %i.jz = mul nuw nsw i64 %indvars.iv435, 3       ; 3 uses
  %i.ka = mul nsw i64 %indvars.iv435, %i.ay
  %invariant.gep.us = getelementptr i8, ptr %i.df, i64 %i.ka
  %i.kb = trunc i64 %i.jz to i32
  %i.kc = trunc i64 %indvars.iv435 to i32
  %i.kd = mul i32 %i.kc, 6
  %i.ke = and i32 %i.kd, 14                       ; 3 uses
  %i.kf = add nuw nsw i64 %i.jz, 1                ; 2 uses
  %i.kg = trunc i64 %i.kf to i32
  %.tr = trunc i64 %i.kf to i32
  %i.kh = shl i32 %.tr, 1
  %i.ki = and i32 %i.kh, 14                       ; 3 uses
  %i.kj = add nuw nsw i64 %i.jz, 2                ; 2 uses
  %i.kk = trunc i64 %i.kj to i32
  %.tr520 = trunc i64 %i.kj to i32
  %i.kl = shl i32 %.tr520, 1
  %i.km = and i32 %i.kl, 14                       ; 3 uses
  br label %.split362.us

.split362.us:                                     ; preds = %.preheader357.us, %.split362.us
  %indvars.iv = phi i64 [ 0, %.preheader357.us ], [ %indvars.iv.next, %.split362.us ] ; 3 uses
  %.1282367.us374 = phi i32 [ %.0281369.us, %.preheader357.us ], [ %i.qg, %.split362.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, i8 0, i64 3, i1 false)
  %i.kn = load i32, ptr %i.av, align 4, !tbaa !310 ; 3 uses
  %i.ko = mul nuw nsw i64 %indvars.iv, 3          ; 3 uses
  %i.kp = mul i32 %i.kn, %i.kb
  %i.kq = trunc nuw nsw i64 %i.ko to i32          ; 4 uses
  %invariant.op.us = add i32 %i.kp, %i.kq         ; 3 uses
  %i.kr = sext i32 %invariant.op.us to i64
  %i.ks = and i32 %i.kq, 1                        ; 3 uses
  %.tr.i.i.us = or disjoint i32 %i.ks, %i.ke
  %i.kt = shl nuw nsw i32 %.tr.i.i.us, 1
  %i.ku = lshr i32 %i.j, %i.kt
  %i.kv = and i32 %i.ku, 3
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kr
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !11
  %i.ky = zext nneg i32 %i.kv to i64              ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ky
  %i.la = load float, ptr %i.kz, align 4, !tbaa !11
  %i.lb = fcmp reassoc nsz arcp contract afn oge float %i.kx, %i.la
  %i.lc = zext i1 %i.lb to i8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ky ; 2 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !332
  %i.lf = add i8 %i.le, %i.lc
  store i8 %i.lf, ptr %i.ld, align 1, !tbaa !332
  %.reass.us.1 = add i32 %invariant.op.us, 1
  %i.lg = sext i32 %.reass.us.1 to i64
  %i.lh = trunc i64 %i.ko to i32
  %i.li = and i32 %i.lh, 1
  %i.lj = xor i32 %i.li, 1                        ; 3 uses
  %.tr.i.i.us.1 = or disjoint i32 %i.lj, %i.ke
  %i.lk = shl nuw nsw i32 %.tr.i.i.us.1, 1
  %i.ll = lshr i32 %i.j, %i.lk
  %i.lm = and i32 %i.ll, 3
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lg
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !11
  %i.lp = zext nneg i32 %i.lm to i64              ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lp
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !11
  %i.ls = fcmp reassoc nsz arcp contract afn oge float %i.lo, %i.lr
  %i.lt = zext i1 %i.ls to i8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.lp ; 2 uses
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !332
  %i.lw = add i8 %i.lv, %i.lt
  store i8 %i.lw, ptr %i.lu, align 1, !tbaa !332
  %.reass.us.2 = add i32 %invariant.op.us, 2
  %i.lx = sext i32 %.reass.us.2 to i64
  %i.ly = trunc i64 %i.ko to i32
  %i.lz = and i32 %i.ly, 1                        ; 3 uses
  %.tr.i.i.us.2 = or disjoint i32 %i.lz, %i.ke
  %i.ma = shl nuw nsw i32 %.tr.i.i.us.2, 1
  %i.mb = lshr i32 %i.j, %i.ma
  %i.mc = and i32 %i.mb, 3
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lx
  %i.me = load float, ptr %i.md, align 4, !tbaa !11
  %i.mf = zext nneg i32 %i.mc to i64              ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mf
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !11
  %i.mi = fcmp reassoc nsz arcp contract afn oge float %i.me, %i.mh
  %i.mj = zext i1 %i.mi to i8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mf ; 2 uses
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !332
  %i.mm = add i8 %i.ml, %i.mj
  store i8 %i.mm, ptr %i.mk, align 1, !tbaa !332
  %i.mn = mul i32 %i.kn, %i.kg
  %invariant.op.us.1 = add i32 %i.mn, %i.kq       ; 3 uses
  %i.mo = sext i32 %invariant.op.us.1 to i64
  %.tr.i.i.us.1432 = or disjoint i32 %i.ks, %i.ki
  %i.mp = shl nuw nsw i32 %.tr.i.i.us.1432, 1
  %i.mq = lshr i32 %i.j, %i.mp
  %i.mr = and i32 %i.mq, 3
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mo
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !11
  %i.mu = zext nneg i32 %i.mr to i64              ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mu
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !11
  %i.mx = fcmp reassoc nsz arcp contract afn oge float %i.mt, %i.mw
  %i.my = zext i1 %i.mx to i8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mu ; 2 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !332
  %i.nb = add i8 %i.na, %i.my
  store i8 %i.nb, ptr %i.mz, align 1, !tbaa !332
  %.reass.us.1.1 = add i32 %invariant.op.us.1, 1
  %i.nc = sext i32 %.reass.us.1.1 to i64
  %.tr.i.i.us.1.1 = or disjoint i32 %i.lj, %i.ki
  %i.nd = shl nuw nsw i32 %.tr.i.i.us.1.1, 1
  %i.ne = lshr i32 %i.j, %i.nd
  %i.nf = and i32 %i.ne, 3
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.nc
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !11
  %i.ni = zext nneg i32 %i.nf to i64              ; 2 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ni
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !11
  %i.nl = fcmp reassoc nsz arcp contract afn oge float %i.nh, %i.nk
  %i.nm = zext i1 %i.nl to i8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ni ; 2 uses
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !332
  %i.np = add i8 %i.no, %i.nm
  store i8 %i.np, ptr %i.nn, align 1, !tbaa !332
  %.reass.us.2.1 = add i32 %invariant.op.us.1, 2
  %i.nq = sext i32 %.reass.us.2.1 to i64
  %.tr.i.i.us.2.1 = or disjoint i32 %i.lz, %i.ki
  %i.nr = shl nuw nsw i32 %.tr.i.i.us.2.1, 1
  %i.ns = lshr i32 %i.j, %i.nr
  %i.nt = and i32 %i.ns, 3
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.nq
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !11
  %i.nw = zext nneg i32 %i.nt to i64              ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nw
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !11
  %i.nz = fcmp reassoc nsz arcp contract afn oge float %i.nv, %i.ny
  %i.oa = zext i1 %i.nz to i8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.nw ; 2 uses
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !332
  %i.od = add i8 %i.oc, %i.oa
  store i8 %i.od, ptr %i.ob, align 1, !tbaa !332
  %i.oe = mul i32 %i.kn, %i.kk
  %invariant.op.us.2 = add i32 %i.oe, %i.kq       ; 3 uses
  %i.of = sext i32 %invariant.op.us.2 to i64
  %.tr.i.i.us.2433 = or disjoint i32 %i.ks, %i.km
  %i.og = shl nuw nsw i32 %.tr.i.i.us.2433, 1
  %i.oh = lshr i32 %i.j, %i.og
  %i.oi = and i32 %i.oh, 3
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.of
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !11
  %i.ol = zext nneg i32 %i.oi to i64              ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ol
  %i.on = load float, ptr %i.om, align 4, !tbaa !11
  %i.oo = fcmp reassoc nsz arcp contract afn oge float %i.ok, %i.on
  %i.op = zext i1 %i.oo to i8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ol ; 2 uses
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !332
  %i.os = add i8 %i.or, %i.op
  store i8 %i.os, ptr %i.oq, align 1, !tbaa !332
  %.reass.us.1.2 = add i32 %invariant.op.us.2, 1
  %i.ot = sext i32 %.reass.us.1.2 to i64
  %.tr.i.i.us.1.2 = or disjoint i32 %i.lj, %i.km
  %i.ou = shl nuw nsw i32 %.tr.i.i.us.1.2, 1
  %i.ov = lshr i32 %i.j, %i.ou
  %i.ow = and i32 %i.ov, 3
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ot
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !11
  %i.oz = zext nneg i32 %i.ow to i64              ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oz
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !11
  %i.pc = fcmp reassoc nsz arcp contract afn oge float %i.oy, %i.pb
  %i.pd = zext i1 %i.pc to i8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.oz ; 2 uses
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !332
  %i.pg = add i8 %i.pf, %i.pd
  store i8 %i.pg, ptr %i.pe, align 1, !tbaa !332
  %.reass.us.2.2 = add i32 %invariant.op.us.2, 2
  %i.ph = sext i32 %.reass.us.2.2 to i64
  %.tr.i.i.us.2.2 = or disjoint i32 %i.lz, %i.km
  %i.pi = shl nuw nsw i32 %.tr.i.i.us.2.2, 1
  %i.pj = lshr i32 %i.j, %i.pi
  %i.pk = and i32 %i.pj, 3
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ph
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !11
  %i.pn = zext nneg i32 %i.pk to i64              ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pn
  %i.pp = load float, ptr %i.po, align 4, !tbaa !11
  %i.pq = fcmp reassoc nsz arcp contract afn oge float %i.pm, %i.pp
  %i.pr = zext i1 %i.pq to i8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.pn ; 2 uses
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !332
  %i.pu = add i8 %i.pt, %i.pr
  store i8 %i.pu, ptr %i.ps, align 1, !tbaa !332
  %invariant.gep363.us380 = getelementptr i8, ptr %invariant.gep.us, i64 %indvars.iv ; 3 uses
  %i.pv = load i8, ptr %i.d, align 1, !tbaa !332
  %.not319.us377 = icmp ne i8 %i.pv, 0            ; 2 uses
  %i.pw = zext i1 %.not319.us377 to i8
  store i8 %i.pw, ptr %invariant.gep363.us380, align 1, !tbaa !332
  %i.px = zext i1 %.not319.us377 to i32
  %i.py = or i32 %.1282367.us374, %i.px
  %i.pz = load i8, ptr %i.dj, align 1, !tbaa !332
  %.not319.us377.1 = icmp ne i8 %i.pz, 0          ; 2 uses
  %i.qa = zext i1 %.not319.us377.1 to i8
  %gep364.us378.1 = getelementptr i8, ptr %invariant.gep363.us380, i64 %i.bf
  store i8 %i.qa, ptr %gep364.us378.1, align 1, !tbaa !332
  %i.qb = zext i1 %.not319.us377.1 to i32
  %i.qc = or i32 %i.py, %i.qb
  %i.qd = load i8, ptr %i.dk, align 1, !tbaa !332
  %.not319.us377.2 = icmp ne i8 %i.qd, 0          ; 2 uses
  %i.qe = zext i1 %.not319.us377.2 to i8
  %gep364.us378.2 = getelementptr i8, ptr %invariant.gep363.us380, i64 %i.dl
  store i8 %i.qe, ptr %gep364.us378.2, align 1, !tbaa !332
  %i.qf = zext i1 %.not319.us377.2 to i32
  %i.qg = or i32 %i.qc, %i.qf                     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.dh
  br i1 %exitcond.not, label %._crit_edge.split.us381, label %.split362.us

._crit_edge.split.us381:                          ; preds = %.split362.us
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next436, %i.dg
  br i1 %exitcond438.not, label %._crit_edge371, label %.preheader357.us

._crit_edge371.thread:                            ; preds = %bb.h, %.preheader357.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  br label %bb.x

._crit_edge371:                                   ; preds = %._crit_edge.split.us381, %._crit_edge.split.us.us.us
  %.0281.lcssa = phi i32 [ %i.jy, %._crit_edge.split.us.us.us ], [ %i.qg, %._crit_edge.split.us381 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %.not315 = icmp eq i32 %.0281.lcssa, 0
  br i1 %.not315, label %bb.x, label %.preheader354

.preheader354:                                    ; preds = %._crit_edge371
  %.off = add i32 %i.ba, 2
  %.not413 = icmp ult i32 %.off, 5
  br i1 %.not413, label %._crit_edge390.split, label %.preheader353.lr.ph

.preheader353.lr.ph:                              ; preds = %.preheader354
  %invariant.gep = getelementptr i8, ptr %i.df, i64 %i.bf ; 11 uses
  %.off415 = add i32 %i.aw, 2
  %.not414 = icmp ult i32 %.off415, 5
  %i.qh = add nsw i64 %i.ay, -4
  %i.qi = add nsw i64 %i.bc, -4
  %i.qj = insertelement <2 x i64> poison, i64 %i.bf, i64 0 ; 2 uses
  %i.qk = shufflevector <2 x i64> %i.qj, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ql = mul <2 x i64> %i.qk, <i64 3, i64 4>     ; 3 uses
  %i.qm = extractelement <2 x i64> %i.ql, i64 0
  %i.qn = getelementptr i8, ptr %i.df, i64 %i.qm  ; 11 uses
  %i.qo = extractelement <2 x i64> %i.ql, i64 1
  %i.qp = getelementptr i8, ptr %i.df, i64 %i.qo  ; 11 uses
  %i.qq = shl i64 %i.bf, 1
  %invariant.gep386 = getelementptr i8, ptr %i.df, i64 %i.qq ; 11 uses
  %i.qr = mul i64 %i.bf, 5                        ; 2 uses
  %i.qs = getelementptr i8, ptr %i.df, i64 %i.qr  ; 11 uses
  br i1 %.not414, label %._crit_edge390.split, label %.preheader353.preheader

.preheader353.preheader:                          ; preds = %.preheader353.lr.ph
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1) ; 5 uses
  %umax477 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %exitcond463.peel.not = icmp ult i32 %i.ax, 2
  %.off521 = add i32 %i.aw, -6
  %exitcond463.peel469.not = icmp ult i32 %.off521, 3
  %.off522 = add i32 %i.aw, -9
  %exitcond463.peel475.not = icmp ult i32 %.off522, 3
  %i.qt = mul i64 %i.be, %i.bd                    ; 2 uses
  %i.qu = shufflevector <2 x i64> %i.qj, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.qv = shl <4 x i64> %i.qu, <i64 0, i64 1, i64 undef, i64 undef>
  %i.qw = shufflevector <2 x i64> %i.ql, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qx = shufflevector <4 x i64> %i.qv, <4 x i64> %i.qw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %min.iters.check = icmp ult i32 %i.ax, 8
  %i.qy = add <4 x i64> %i.qx, splat (i64 -1)
  %i.qz = shl i64 %i.qt, 1
  %diff.check541 = icmp ugt i64 %i.qz, -64
  %diff.check543.a = icmp ugt i64 %i.qt, -64
  %i.ra = icmp ult <4 x i64> %i.qy, splat (i64 63)
  %i.rb = add i64 %i.qr, -1
  %diff.check547 = icmp ult i64 %i.rb, 63
  %i.rc = bitcast <4 x i1> %i.ra to i4
  %i.rd = icmp ne i4 %i.rc, 0
  %op.rdx = or i1 %i.rd, %diff.check547
  %op.rdx607 = or i1 %diff.check541, %diff.check543.a
  %op.rdx608 = or i1 %op.rdx, %op.rdx607
  %min.iters.check549 = icmp ult i32 %i.ax, 64
  %i.re = and i64 %umax, 56
  %n.vec = and i64 %umax, -64                     ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ay
  %min.epilog.iters.check = icmp eq i64 %i.re, 0
  %n.vec555 = and i64 %umax, -8                   ; 3 uses
  %cmp.n561 = icmp eq i64 %n.vec555, %i.ay
  %xtraiter = and i64 %umax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader353

.preheader353:                                    ; preds = %.preheader353.preheader, %._crit_edge
  %.0274389 = phi i64 [ %i.va, %._crit_edge ], [ 0, %.preheader353.preheader ] ; 4 uses
  %i.rf = mul i64 %.0274389, %i.ay                ; 16 uses
  %i.rg = icmp ugt i64 %.0274389, 2
  %i.rh = icmp ult i64 %.0274389, %i.qi
  %.fr = freeze i1 %i.rh
  %i.ri = and i1 %.fr, %i.rg
  br i1 %i.ri, label %bb.i, label %iter.check

iter.check:                                       ; preds = %.preheader353
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx608
  br i1 %brmerge, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check549, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.rj = add i64 %index, %i.rf                   ; 6 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.rj ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 32
  %wide.load = load <32 x i8>, ptr %i.rk, align 1, !tbaa !332
  %wide.load550.a = load <32 x i8>, ptr %i.rl, align 1, !tbaa !332
  %i.rm = getelementptr i8, ptr %i.qn, i64 %i.rj  ; 2 uses
  %i.rn = getelementptr i8, ptr %i.rm, i64 32
  store <32 x i8> %wide.load, ptr %i.rm, align 1, !tbaa !332
  store <32 x i8> %wide.load550.a, ptr %i.rn, align 1, !tbaa !332
  %i.ro = getelementptr i8, ptr %invariant.gep, i64 %i.rj ; 2 uses
  %i.rp = getelementptr i8, ptr %i.ro, i64 32
  %wide.load551 = load <32 x i8>, ptr %i.ro, align 1, !tbaa !332
  %wide.load552 = load <32 x i8>, ptr %i.rp, align 1, !tbaa !332
  %i.rq = getelementptr i8, ptr %i.qp, i64 %i.rj  ; 2 uses
  %i.rr = getelementptr i8, ptr %i.rq, i64 32
  store <32 x i8> %wide.load551, ptr %i.rq, align 1, !tbaa !332
  store <32 x i8> %wide.load552, ptr %i.rr, align 1, !tbaa !332
  %i.rs = getelementptr i8, ptr %invariant.gep386, i64 %i.rj ; 2 uses
  %i.rt = getelementptr i8, ptr %i.rs, i64 32
  %wide.load553.a = load <32 x i8>, ptr %i.rs, align 1, !tbaa !332
  %wide.load554.a = load <32 x i8>, ptr %i.rt, align 1, !tbaa !332
  %i.ru = getelementptr i8, ptr %i.qs, i64 %i.rj  ; 2 uses
  %i.rv = getelementptr i8, ptr %i.ru, i64 32
  store <32 x i8> %wide.load553.a, ptr %i.ru, align 1, !tbaa !332
  store <32 x i8> %wide.load554.a, ptr %i.rv, align 1, !tbaa !332
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.rw = icmp eq i64 %index.next, %n.vec
  br i1 %i.rw, label %middle.block, label %vector.body, !llvm.loop !489

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !490

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index556 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next560, %vec.epilog.vector.body ] ; 2 uses
  %i.rx = add i64 %index556, %i.rf                ; 6 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.rx
  %wide.load557 = load <8 x i8>, ptr %i.ry, align 1, !tbaa !332
  %i.rz = getelementptr i8, ptr %i.qn, i64 %i.rx
  store <8 x i8> %wide.load557, ptr %i.rz, align 1, !tbaa !332
  %i.sa = getelementptr i8, ptr %invariant.gep, i64 %i.rx
  %wide.load558 = load <8 x i8>, ptr %i.sa, align 1, !tbaa !332
  %i.sb = getelementptr i8, ptr %i.qp, i64 %i.rx
  store <8 x i8> %wide.load558, ptr %i.sb, align 1, !tbaa !332
  %i.sc = getelementptr i8, ptr %invariant.gep386, i64 %i.rx
  %wide.load559 = load <8 x i8>, ptr %i.sc, align 1, !tbaa !332
  %i.sd = getelementptr i8, ptr %i.qs, i64 %i.rx
  store <8 x i8> %wide.load559, ptr %i.sd, align 1, !tbaa !332
  %index.next560 = add nuw i64 %index556, 8       ; 2 uses
  %i.se = icmp eq i64 %index.next560, %n.vec555
  br i1 %i.se, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !491

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n561, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0273385.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec555, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %.0273385.us.prol = phi i64 [ %i.sn, %.lr.ph.split.us.prol ], [ %.0273385.us.ph, %.lr.ph.split.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.sf = add i64 %.0273385.us.prol, %i.rf        ; 6 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.sf
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !332
  %i.si = getelementptr i8, ptr %i.qn, i64 %i.sf
  store i8 %i.sh, ptr %i.si, align 1, !tbaa !332
  %gep.us.prol = getelementptr i8, ptr %invariant.gep, i64 %i.sf
  %i.sj = load i8, ptr %gep.us.prol, align 1, !tbaa !332
  %i.sk = getelementptr i8, ptr %i.qp, i64 %i.sf
  store i8 %i.sj, ptr %i.sk, align 1, !tbaa !332
  %gep387.us.prol = getelementptr i8, ptr %invariant.gep386, i64 %i.sf
  %i.sl = load i8, ptr %gep387.us.prol, align 1, !tbaa !332
  %i.sm = getelementptr i8, ptr %i.qs, i64 %i.sf
  store i8 %i.sl, ptr %i.sm, align 1, !tbaa !332
  %i.sn = add nuw i64 %.0273385.us.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !492

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %.0273385.us.unr = phi i64 [ %.0273385.us.ph, %.lr.ph.split.us.preheader ], [ %i.sn, %.lr.ph.split.us.prol ]
  %i.so = sub i64 %.0273385.us.ph, %umax
  %i.sp = icmp ugt i64 %i.so, -4
  br i1 %i.sp, label %._crit_edge, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.prol.loopexit
  %invariant.op = add i64 1, %i.rf
  %invariant.op621.a = add i64 2, %i.rf
  %invariant.op623.a = add i64 3, %i.rf
  br label %.lr.ph.split.us

bb.i:                                             ; preds = %.preheader353
  %i.sq = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.rf
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !332
  %i.ss = getelementptr i8, ptr %i.qn, i64 %i.rf
  store i8 %i.sr, ptr %i.ss, align 1, !tbaa !332
  %gep.peel = getelementptr i8, ptr %invariant.gep, i64 %i.rf
  %i.st = load i8, ptr %gep.peel, align 1, !tbaa !332
  %i.su = getelementptr i8, ptr %i.qp, i64 %i.rf
  store i8 %i.st, ptr %i.su, align 1, !tbaa !332
  %gep387.peel = getelementptr i8, ptr %invariant.gep386, i64 %i.rf
  %i.sv = load i8, ptr %gep387.peel, align 1, !tbaa !332
  %i.sw = getelementptr i8, ptr %i.qs, i64 %i.rf
  store i8 %i.sv, ptr %i.sw, align 1, !tbaa !332
  br i1 %exitcond463.peel.not, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.sx = add i64 %i.rf, 1                        ; 6 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.sx
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !332
  %i.ta = getelementptr i8, ptr %i.qn, i64 %i.sx
  store i8 %i.sz, ptr %i.ta, align 1, !tbaa !332
  %gep.peel467 = getelementptr i8, ptr %invariant.gep, i64 %i.sx
  %i.tb = load i8, ptr %gep.peel467, align 1, !tbaa !332
  %i.tc = getelementptr i8, ptr %i.qp, i64 %i.sx
  store i8 %i.tb, ptr %i.tc, align 1, !tbaa !332
  %gep387.peel468 = getelementptr i8, ptr %invariant.gep386, i64 %i.sx
  %i.td = load i8, ptr %gep387.peel468, align 1, !tbaa !332
  %i.te = getelementptr i8, ptr %i.qs, i64 %i.sx
  store i8 %i.td, ptr %i.te, align 1, !tbaa !332
  br i1 %exitcond463.peel469.not, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.tf = add i64 %i.rf, 2                        ; 6 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !332
  %i.ti = getelementptr i8, ptr %i.qn, i64 %i.tf
  store i8 %i.th, ptr %i.ti, align 1, !tbaa !332
  %gep.peel473 = getelementptr i8, ptr %invariant.gep, i64 %i.tf
  %i.tj = load i8, ptr %gep.peel473, align 1, !tbaa !332
  %i.tk = getelementptr i8, ptr %i.qp, i64 %i.tf
  store i8 %i.tj, ptr %i.tk, align 1, !tbaa !332
  %gep387.peel474 = getelementptr i8, ptr %invariant.gep386, i64 %i.tf
  %i.tl = load i8, ptr %gep387.peel474, align 1, !tbaa !332
  %i.tm = getelementptr i8, ptr %i.qs, i64 %i.tf
  store i8 %i.tl, ptr %i.tm, align 1, !tbaa !332
  br i1 %exitcond463.peel475.not, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %.0273385.us = phi i64 [ %.0273385.us.unr, %.lr.ph.split.us.preheader.new ], [ %i.uq, %.lr.ph.split.us ] ; 5 uses
  %i.tn = add i64 %.0273385.us, %i.rf             ; 6 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.tn
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !332
  %i.tq = getelementptr i8, ptr %i.qn, i64 %i.tn
  store i8 %i.tp, ptr %i.tq, align 1, !tbaa !332
  %gep.us = getelementptr i8, ptr %invariant.gep, i64 %i.tn
  %i.tr = load i8, ptr %gep.us, align 1, !tbaa !332
  %i.ts = getelementptr i8, ptr %i.qp, i64 %i.tn
  store i8 %i.tr, ptr %i.ts, align 1, !tbaa !332
  %gep387.us = getelementptr i8, ptr %invariant.gep386, i64 %i.tn
  %i.tt = load i8, ptr %gep387.us, align 1, !tbaa !332
  %i.tu = getelementptr i8, ptr %i.qs, i64 %i.tn
  store i8 %i.tt, ptr %i.tu, align 1, !tbaa !332
  %.reass = add i64 %.0273385.us, %invariant.op   ; 6 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.df, i64 %.reass
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !332
  %i.tx = getelementptr i8, ptr %i.qn, i64 %.reass
  store i8 %i.tw, ptr %i.tx, align 1, !tbaa !332
  %gep.us.1 = getelementptr i8, ptr %invariant.gep, i64 %.reass
  %i.ty = load i8, ptr %gep.us.1, align 1, !tbaa !332
  %i.tz = getelementptr i8, ptr %i.qp, i64 %.reass
  store i8 %i.ty, ptr %i.tz, align 1, !tbaa !332
  %gep387.us.1 = getelementptr i8, ptr %invariant.gep386, i64 %.reass
  %i.ua = load i8, ptr %gep387.us.1, align 1, !tbaa !332
  %i.ub = getelementptr i8, ptr %i.qs, i64 %.reass
  store i8 %i.ua, ptr %i.ub, align 1, !tbaa !332
  %.reass622.a = add i64 %.0273385.us, %invariant.op621.a ; 6 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.df, i64 %.reass622.a
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !332
  %i.ue = getelementptr i8, ptr %i.qn, i64 %.reass622.a
  store i8 %i.ud, ptr %i.ue, align 1, !tbaa !332
  %gep.us.2 = getelementptr i8, ptr %invariant.gep, i64 %.reass622.a
  %i.uf = load i8, ptr %gep.us.2, align 1, !tbaa !332
  %i.ug = getelementptr i8, ptr %i.qp, i64 %.reass622.a
  store i8 %i.uf, ptr %i.ug, align 1, !tbaa !332
  %gep387.us.2 = getelementptr i8, ptr %invariant.gep386, i64 %.reass622.a
  %i.uh = load i8, ptr %gep387.us.2, align 1, !tbaa !332
  %i.ui = getelementptr i8, ptr %i.qs, i64 %.reass622.a
  store i8 %i.uh, ptr %i.ui, align 1, !tbaa !332
  %.reass624.a = add i64 %.0273385.us, %invariant.op623.a ; 6 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.df, i64 %.reass624.a
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !332
  %i.ul = getelementptr i8, ptr %i.qn, i64 %.reass624.a
  store i8 %i.uk, ptr %i.ul, align 1, !tbaa !332
  %gep.us.3 = getelementptr i8, ptr %invariant.gep, i64 %.reass624.a
  %i.um = load i8, ptr %gep.us.3, align 1, !tbaa !332
  %i.un = getelementptr i8, ptr %i.qp, i64 %.reass624.a
  store i8 %i.um, ptr %i.un, align 1, !tbaa !332
  %gep387.us.3 = getelementptr i8, ptr %invariant.gep386, i64 %.reass624.a
  %i.uo = load i8, ptr %gep387.us.3, align 1, !tbaa !332
  %i.up = getelementptr i8, ptr %i.qs, i64 %.reass624.a
  store i8 %i.uo, ptr %i.up, align 1, !tbaa !332
  %i.uq = add nuw i64 %.0273385.us, 4             ; 2 uses
  %exitcond461.not.3 = icmp eq i64 %i.uq, %i.ay
  br i1 %exitcond461.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !493

._crit_edge390.split:                             ; preds = %._crit_edge, %.preheader353.lr.ph, %.preheader354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  %i.ur = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.us = insertelement <4 x float> %i.ur, float 1.000000e+00, i64 3
  %i.ut = insertelement <4 x float> %i.us, float %i.w, i64 2
  %i.uu = fmul reassoc nsz arcp contract afn <4 x float> %i.ut, <float 2.000000e-01, float 2.000000e-01, float 2.000000e-01, float 1.000000e+00>
  store <4 x float> %i.uu, ptr %i.g, align 16, !tbaa !11
  %i.uv = load i32, ptr %i.az, align 4, !tbaa !308 ; 2 uses
  %i.uw = sext i32 %i.uv to i64
  %.not416 = icmp eq i32 %i.uv, 0
  br i1 %.not416, label %.preheader351.thread, label %.preheader352.lr.ph

.preheader352.lr.ph:                              ; preds = %._crit_edge390.split
  %i.ux = load i32, ptr %i.av, align 4, !tbaa !310 ; 2 uses
  %i.uy = sext i32 %i.ux to i64                   ; 3 uses
  %.not417 = icmp eq i32 %i.ux, 0
  %i.uz = icmp eq i32 %i.j, 9
  br i1 %.not417, label %.preheader351.thread, label %.preheader352

._crit_edge:                                      ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %bb.n, %middle.block, %vec.epilog.middle.block, %bb.i, %bb.j, %bb.k
  %i.va = add nuw i64 %.0274389, 1                ; 2 uses
  %exitcond478.not = icmp eq i64 %i.va, %umax477
  br i1 %exitcond478.not, label %._crit_edge390.split, label %.preheader353

.lr.ph.split:                                     ; preds = %bb.k, %bb.n
  %.0273385 = phi i64 [ %i.vq, %bb.n ], [ 3, %bb.k ] ; 3 uses
  %i.vb = add i64 %.0273385, %i.rf                ; 6 uses
  %i.vc = icmp ult i64 %.0273385, %i.qh
  %i.vd = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.vb ; 2 uses
  %i.ve = getelementptr i8, ptr %i.qn, i64 %i.vb  ; 2 uses
  %i.vf = getelementptr i8, ptr %invariant.gep, i64 %i.vb ; 2 uses
  %i.vg = getelementptr i8, ptr %i.qp, i64 %i.vb  ; 2 uses
  %i.vh = getelementptr i8, ptr %invariant.gep386, i64 %i.vb ; 2 uses
  br i1 %i.vc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.split
  %i.vi = tail call fastcc signext i8 @_mask_dilated(ptr noundef %i.vd, i64 noundef %i.ay)
  store i8 %i.vi, ptr %i.ve, align 1, !tbaa !332
  %i.vj = tail call fastcc signext i8 @_mask_dilated(ptr noundef %i.vf, i64 noundef %i.ay)
  store i8 %i.vj, ptr %i.vg, align 1, !tbaa !332
  %i.vk = tail call fastcc signext i8 @_mask_dilated(ptr noundef %i.vh, i64 noundef %i.ay)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.split
  %i.vl = load i8, ptr %i.vd, align 1, !tbaa !332
  store i8 %i.vl, ptr %i.ve, align 1, !tbaa !332
  %i.vm = load i8, ptr %i.vf, align 1, !tbaa !332
  store i8 %i.vm, ptr %i.vg, align 1, !tbaa !332
  %i.vn = load i8, ptr %i.vh, align 1, !tbaa !332
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.vo = phi i8 [ %i.vk, %bb.l ], [ %i.vn, %bb.m ]
  %i.vp = getelementptr i8, ptr %i.qs, i64 %i.vb
  store i8 %i.vo, ptr %i.vp, align 1, !tbaa !332
  %i.vq = add nuw i64 %.0273385, 1                ; 2 uses
  %exitcond463.not = icmp eq i64 %i.vq, %i.ay
  br i1 %exitcond463.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !494

.preheader352:                                    ; preds = %.preheader352.lr.ph, %._crit_edge392
  %.0272396 = phi i64 [ %i.xg, %._crit_edge392 ], [ 0, %.preheader352.lr.ph ] ; 4 uses
  %i.vr = mul i64 %.0272396, %i.uy
  %i.vs = trunc i64 %.0272396 to i32              ; 4 uses
  %i.vt = shl i32 %i.vs, 1
  %i.vu = and i32 %i.vt, 14
  %i.vv = add nsw i32 %i.vs, 600
  %i.vw = srem i32 %i.vv, 6
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.vx
  %i.vz = getelementptr [4 x i8], ptr %2, i64 %i.vr ; 2 uses
  %i.wa = udiv i64 %.0272396, 3
  %i.wb = mul i64 %i.wa, %i.ay
  %invariant.gep393 = getelementptr i8, ptr %i.df, i64 %i.wb ; 2 uses
  br i1 %i.uz, label %fcol.exit328.us, label %fcol.exit328

fcol.exit328.us:                                  ; preds = %.preheader352, %bb.r
  %.0271391.us = phi i64 [ %i.xe, %bb.r ], [ 0, %.preheader352 ] ; 4 uses
  %i.wc = trunc i64 %.0271391.us to i32           ; 2 uses
  %i.wd = add nsw i32 %i.wc, 600
  %i.we = srem i32 %i.wd, 6
  %i.wf = sext i32 %i.we to i64
  %i.wg = getelementptr inbounds i8, ptr %i.vy, i64 %i.wf
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !332
  %i.wi = zext i8 %i.wh to i64                    ; 5 uses
  %i.wj = getelementptr [4 x i8], ptr %i.vz, i64 %.0271391.us
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !11 ; 3 uses
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.wi
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !11
  %i.wn = fcmp reassoc nsz arcp contract afn olt float %i.wk, %i.wm
  br i1 %i.wn, label %bb.o, label %bb.r

bb.o:                                             ; preds = %fcol.exit328.us
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.wi
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !11
  %i.wq = fcmp reassoc nsz arcp contract afn ogt float %i.wk, %i.wp
  br i1 %i.wq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.wr = add nuw nsw i64 %i.wi, 3
  %i.ws = mul i64 %i.wr, %i.bf
  %i.wt = udiv i64 %.0271391.us, 3
  %gep394.us = getelementptr i8, ptr %invariant.gep393, i64 %i.ws
  %i.wu = getelementptr i8, ptr %gep394.us, i64 %i.wt
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !332
  %.not318.us = icmp eq i8 %i.wv, 0
  br i1 %.not318.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ww = call reassoc nsz arcp contract afn fastcc float @_calc_refavg(ptr noundef nonnull %2, ptr noundef nonnull %i.h, i32 noundef 9, i32 noundef %i.vs, i32 noundef %i.wc, ptr noundef nonnull %4, ptr noundef %i.b, i32 noundef 1)
  %i.wx = fsub reassoc nsz arcp contract afn float %i.wk, %i.ww
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.wi ; 2 uses
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !11
  %i.xa = fadd reassoc nsz arcp contract afn float %i.wx, %i.wz
  store float %i.xa, ptr %i.wy, align 4, !tbaa !11
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.wi ; 2 uses
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !11
  %i.xd = fadd reassoc nsz arcp contract afn float %i.xc, 1.000000e+00
  store float %i.xd, ptr %i.xb, align 4, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %fcol.exit328.us
  %i.xe = add nuw i64 %.0271391.us, 1             ; 2 uses
  %exitcond480.not.a = icmp eq i64 %i.xe, %i.uy
  br i1 %exitcond480.not.a, label %._crit_edge392, label %fcol.exit328.us

.preheader351:                                    ; preds = %._crit_edge392
  %.pre = load float, ptr %i.f, align 16, !tbaa !11 ; 4 uses
  %i.xf = fcmp reassoc nsz arcp contract afn ogt float %.pre, 1.000000e+02
  br i1 %i.xf, label %bb.w, label %.preheader351.thread

._crit_edge392:                                   ; preds = %bb.v, %bb.r
  %i.xg = add nuw i64 %.0272396, 1                ; 2 uses
  %exitcond481.not.a = icmp eq i64 %i.xg, %i.uw
  br i1 %exitcond481.not.a, label %.preheader351, label %.preheader352

fcol.exit328:                                     ; preds = %.preheader352, %bb.v
  %.0271391 = phi i64 [ %i.yj, %bb.v ], [ 0, %.preheader352 ] ; 4 uses
  %i.xh = trunc i64 %.0271391 to i32              ; 2 uses
  %i.xi = and i32 %i.xh, 1
  %.tr.i.i326 = or disjoint i32 %i.xi, %i.vu
  %i.xj = shl nuw nsw i32 %.tr.i.i326, 1
  %i.xk = lshr i32 %i.j, %i.xj
  %i.xl = and i32 %i.xk, 3                        ; 2 uses
  %i.xm = getelementptr [4 x i8], ptr %i.vz, i64 %.0271391
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !11 ; 3 uses
  %i.xo = zext nneg i32 %i.xl to i64              ; 4 uses
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.xo
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !11
  %i.xr = fcmp reassoc nsz arcp contract afn olt float %i.xn, %i.xq
  br i1 %i.xr, label %bb.s, label %bb.v

bb.s:                                             ; preds = %fcol.exit328
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.xo
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !11
  %i.xu = fcmp reassoc nsz arcp contract afn ogt float %i.xn, %i.xt
  br i1 %i.xu, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.xv = add nuw nsw i32 %i.xl, 3
  %i.xw = zext nneg i32 %i.xv to i64
  %i.xx = mul i64 %i.bf, %i.xw
  %i.xy = udiv i64 %.0271391, 3
  %gep394 = getelementptr i8, ptr %invariant.gep393, i64 %i.xx
  %i.xz = getelementptr i8, ptr %gep394, i64 %i.xy
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !332
  %.not318 = icmp eq i8 %i.ya, 0
  br i1 %.not318, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.yb = call reassoc nsz arcp contract afn fastcc float @_calc_refavg(ptr noundef nonnull %2, ptr noundef nonnull %i.h, i32 noundef %i.j, i32 noundef %i.vs, i32 noundef %i.xh, ptr noundef nonnull %4, ptr noundef %i.b, i32 noundef 1)
  %i.yc = fsub reassoc nsz arcp contract afn float %i.xn, %i.yb
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.xo ; 2 uses
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !11
  %i.yf = fadd reassoc nsz arcp contract afn float %i.yc, %i.ye
  store float %i.yf, ptr %i.yd, align 4, !tbaa !11
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.xo ; 2 uses
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !11
  %i.yi = fadd reassoc nsz arcp contract afn float %i.yh, 1.000000e+00
  store float %i.yi, ptr %i.yg, align 4, !tbaa !11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %fcol.exit328
  %i.yj = add nuw i64 %.0271391, 1                ; 2 uses
  %exitcond479.not.a = icmp eq i64 %i.yj, %i.uy
  br i1 %exitcond479.not.a, label %._crit_edge392, label %fcol.exit328

bb.w:                                             ; preds = %.preheader351
  %i.yk = load float, ptr %i.e, align 16, !tbaa !11
  %i.yl = fdiv reassoc nsz arcp contract afn float %i.yk, %.pre
  br label %.preheader351.thread

.preheader351.thread:                             ; preds = %._crit_edge390.split, %.preheader352.lr.ph, %.preheader351, %bb.w
  %i.ym = phi float [ %.pre, %bb.w ], [ %.pre, %.preheader351 ], [ 0.000000e+00, %.preheader352.lr.ph ], [ 0.000000e+00, %._crit_edge390.split ]
  %i.yn = phi reassoc nsz arcp contract afn float [ %i.yl, %bb.w ], [ 0.000000e+00, %.preheader351 ], [ 0.000000e+00, %.preheader352.lr.ph ], [ 0.000000e+00, %._crit_edge390.split ]
  store float %i.yn, ptr %i.c, align 16, !tbaa !11
  %i.yo = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.yp = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.yq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.yr = load <2 x float>, ptr %i.yo, align 4, !tbaa !11 ; 4 uses
  %i.ys = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.yr, splat (float 1.000000e+02)
  %i.yt = load <2 x float>, ptr %i.yp, align 4
  %i.yu = fdiv reassoc nsz arcp contract afn <2 x float> %i.yt, %i.yr
  %i.yv = select <2 x i1> %i.ys, <2 x float> %i.yu, <2 x float> zeroinitializer
  store <2 x float> %i.yv, ptr %i.yq, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  %i.yw = fptosi float %i.ym to i32
  %i.yx = extractelement <2 x float> %i.yr, i64 0
  %i.yy = fptosi float %i.yx to i32
  %i.yz = extractelement <2 x float> %i.yr, i64 1
  %i.za = fptosi float %i.yz to i32
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge371.thread, %.preheader351.thread, %._crit_edge371
  %.0281.lcssa525 = phi i32 [ %.0281.lcssa, %.preheader351.thread ], [ 0, %._crit_edge371 ], [ 0, %._crit_edge371.thread ]
  %i.zb = phi i32 [ %i.za, %.preheader351.thread ], [ 0, %._crit_edge371 ], [ 0, %._crit_edge371.thread ]
  %i.zc = phi i32 [ %i.yy, %.preheader351.thread ], [ 0, %._crit_edge371 ], [ 0, %._crit_edge371.thread ]
  %i.zd = phi i32 [ %i.yw, %.preheader351.thread ], [ 0, %._crit_edge371 ], [ 0, %._crit_edge371.thread ]
  %i.ze = load ptr, ptr %i.k, align 8, !tbaa !281 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 644
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !325
  %i.zh = icmp eq i32 %i.zg, 2                    ; 2 uses
  br i1 %i.zh, label %.preheader350.preheader, label %bb.y

end_hunk_0
