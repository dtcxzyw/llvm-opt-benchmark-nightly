Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/semi_restrict?download=true
begin_hunk_0_@hypre_SemiRestrict:bb.a
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dm ; 4 uses
  %i.do = load i32, ptr %i.o, align 4, !tbaa !7
  %i.dp = load i32, ptr %i.am, align 4, !tbaa !7
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bq, i64 12 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !7
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !7
  %i.dv = sub nsw i32 %i.ds, %i.du                ; 3 uses
  %i.dw = icmp sgt i32 %i.dv, -1                  ; 2 uses
  br i1 %i.dw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dx = load i32, ptr %i.an, align 4, !tbaa !7
  %i.dy = add nuw nsw i32 %i.dv, 1
  %i.dz = mul nsw i32 %i.dx, %i.dy
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ea = phi i32 [ %i.dz, %bb.m ], [ 0, %bb.l ]
  %i.eb = load i32, ptr %i.dq, align 4, !tbaa !7
  %i.ec = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.ed = sub nsw i32 %i.eb, %i.ec                ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, -1                  ; 2 uses
  %i.ef = add nsw i32 %i.ea, %i.dp
  %i.eg = add nuw nsw i32 %i.ed, 1                ; 2 uses
  %i.eh = mul nsw i32 %i.eg, %i.ef
  %i.ei = select i1 %i.ee, i32 %i.eh, i32 0
  %i.ej = add i32 %i.ei, %i.do
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.en = load i32, ptr %i.aj, align 4, !tbaa !7
  br i1 %i.dw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eo = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.ep = add nuw nsw i32 %i.dv, 1
  %i.eq = mul nsw i32 %i.eo, %i.ep
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.er = phi i32 [ %i.eq, %bb.o ], [ 0, %bb.n ]
  %i.es = add nsw i32 %i.er, %i.en
  %i.et = mul nsw i32 %i.es, %i.eg
  %i.eu = select i1 %i.ee, i32 %i.et, i32 0
  %i.ev = add i32 %i.eu, %i.em
  %i.ew = sext i32 %i.ev to i64                   ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ew ; 2 uses
  %i.ey = load ptr, ptr %i.ao, align 8, !tbaa !48 ; 2 uses
  %i.ez = load ptr, ptr %i.ap, align 8, !tbaa !63
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv450
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !7
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !52
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph, label %._crit_edge415

.lr.ph:                                           ; preds = %bb.p
  %i.fh = ptrtoaddr ptr %i.ey to i64              ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.fr = shl nsw i64 %i.fc, 3                    ; 5 uses
  %i.fs = add i64 %i.fr, %i.fh
  %i.ft = shl nsw i64 %i.dm, 3                    ; 3 uses
  %i.fu = add i64 %i.ft, %i.di
  %i.fv = shl nsw i64 %i.ew, 3
  %i.fw = add i64 %i.fu, %i.fv
  %i.fx = add i64 %i.fr, %i.fh
  %i.fy = add i64 %i.ft, %i.di
  %i.fz = shl nsw i64 %i.ek, 3
  %i.ga = add i64 %i.fy, %i.fz
  %i.gb = add i64 %i.fr, %i.fh
  %i.gc = add i64 %i.ft, %i.di
  %i.gd = add i64 %i.fr, %i.fh
  %i.ge = shl nsw i64 %i.df, 3
  %i.gf = add i64 %i.ge, %i.bv
  %i.gg = add i64 %i.fr, %i.fh
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %._crit_edge.split
  %indvars.iv447 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next448, %._crit_edge.split ] ; 2 uses
  %i.gh = load ptr, ptr %i.bk, align 8, !tbaa !59
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.gh, i64 %indvars.iv447 ; 5 uses
  %i.gj = call i32 @hypre_StructMapFineToCoarse(ptr noundef %i.gi, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.c) #4 ; 0 uses
  %i.gk = call i32 @hypre_BoxGetStrideSize(ptr noundef %i.gi, ptr noundef nonnull %i.l, ptr noundef nonnull %i.b) #4 ; 0 uses
  %i.gl = load i32, ptr %i.c, align 4, !tbaa !7   ; 2 uses
  %i.gm = load i32, ptr %i.bn, align 4, !tbaa !7  ; 2 uses
  %i.gn = sub i32 %i.gl, %i.gm
  %i.go = load i32, ptr %i.aq, align 4, !tbaa !7  ; 2 uses
  %i.gp = load i32, ptr %i.fi, align 4, !tbaa !7  ; 2 uses
  %i.gq = sub i32 %i.go, %i.gp
  %i.gr = load i32, ptr %i.fk, align 4, !tbaa !7
  %i.gs = sub nsw i32 %i.gr, %i.gp                ; 3 uses
  %i.gt = icmp sgt i32 %i.gs, -1                  ; 2 uses
  br i1 %i.gt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gu = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.gv = load i32, ptr %i.fl, align 4, !tbaa !7
  %i.gw = sub nsw i32 %i.gu, %i.gv
  %i.gx = add nuw nsw i32 %i.gs, 1
  %i.gy = mul nsw i32 %i.gw, %i.gx
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.gz = phi i32 [ %i.gy, %bb.r ], [ 0, %bb.q ]
  %i.ha = load i32, ptr %i.fj, align 4, !tbaa !7
  %i.hb = sub i32 %i.ha, %i.gm                    ; 2 uses
  %i.hc = icmp sgt i32 %i.hb, -1                  ; 2 uses
  %i.hd = add nsw i32 %i.gq, %i.gz
  %i.he = add i32 %i.hb, 1                        ; 2 uses
  %i.hf = mul nsw i32 %i.he, %i.hd
  %i.hg = select i1 %i.hc, i32 %i.hf, i32 0
  %i.hh = add nsw i32 %i.gn, %i.hg
  %i.hi = load i32, ptr %i.gi, align 4, !tbaa !7
  %i.hj = load i32, ptr %i.bq, align 4, !tbaa !7  ; 2 uses
  %i.hk = sub i32 %i.hi, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !7
  %i.hn = load i32, ptr %i.dt, align 4, !tbaa !7  ; 2 uses
  %i.ho = sub i32 %i.hm, %i.hn
  %i.hp = load i32, ptr %i.dr, align 4, !tbaa !7
  %i.hq = sub nsw i32 %i.hp, %i.hn                ; 3 uses
  %i.hr = icmp sgt i32 %i.hq, -1                  ; 2 uses
  br i1 %i.hr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !7
  %i.hu = load i32, ptr %i.fm, align 4, !tbaa !7
  %i.hv = sub nsw i32 %i.ht, %i.hu
  %i.hw = add nuw nsw i32 %i.hq, 1
  %i.hx = mul nsw i32 %i.hv, %i.hw
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.hy = phi i32 [ %i.hx, %bb.t ], [ 0, %bb.s ]
  %i.hz = load i32, ptr %i.dq, align 4, !tbaa !7
  %i.ia = sub nsw i32 %i.hz, %i.hj                ; 2 uses
  %i.ib = icmp sgt i32 %i.ia, -1                  ; 2 uses
  %i.ic = add nsw i32 %i.ho, %i.hy
  %i.id = add nuw nsw i32 %i.ia, 1                ; 3 uses
  %i.ie = mul nsw i32 %i.id, %i.ic
  %i.if = select i1 %i.ib, i32 %i.ie, i32 0
  %i.ig = add nsw i32 %i.hk, %i.if
  %i.ih = load i32, ptr %i.bt, align 4, !tbaa !7  ; 2 uses
  %i.ii = sub i32 %i.gl, %i.ih
  %i.ij = load i32, ptr %i.fn, align 4, !tbaa !7  ; 2 uses
  %i.ik = sub i32 %i.go, %i.ij
  %i.il = load i32, ptr %i.fp, align 4, !tbaa !7
  %i.im = sub nsw i32 %i.il, %i.ij                ; 3 uses
  %i.in = icmp sgt i32 %i.im, -1                  ; 2 uses
  br i1 %i.in, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.io = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.ip = load i32, ptr %i.fq, align 4, !tbaa !7
  %i.iq = sub nsw i32 %i.io, %i.ip
  %i.ir = add nuw nsw i32 %i.im, 1
  %i.is = mul nsw i32 %i.iq, %i.ir
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.it = phi i32 [ %i.is, %bb.v ], [ 0, %bb.u ]
  %i.iu = load i32, ptr %i.fo, align 4, !tbaa !7
  %i.iv = sub i32 %i.iu, %i.ih                    ; 2 uses
  %i.iw = icmp sgt i32 %i.iv, -1                  ; 2 uses
  %i.ix = add nsw i32 %i.ik, %i.it
  %i.iy = add i32 %i.iv, 1                        ; 2 uses
  %i.iz = mul nsw i32 %i.iy, %i.ix
  %i.ja = select i1 %i.iw, i32 %i.iz, i32 0
  %i.jb = add nsw i32 %i.ii, %i.ja
  %i.jc = select i1 %i.hc, i32 %i.he, i32 0       ; 3 uses
  %i.jd = add nuw nsw i32 %i.gs, 1
  %i.je = mul nsw i32 %i.jc, %i.jd
  %i.jf = select i1 %i.gt, i32 %i.je, i32 0
  %i.jg = load i32, ptr %i.l, align 4, !tbaa !7   ; 3 uses
  br i1 %i.ib, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.jh = load i32, ptr %i.as, align 8, !tbaa !7
  %i.ji = mul nsw i32 %i.jh, %i.id
  %i.jj = load i32, ptr %i.at, align 4, !tbaa !7
  %i.jk = mul nsw i32 %i.jj, %i.id
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.jl = phi i32 [ %i.ji, %bb.x ], [ 0, %bb.w ]  ; 2 uses
  %i.jm = phi i32 [ %i.jk, %bb.x ], [ 0, %bb.w ]
  %i.jn = load i32, ptr %i.b, align 4, !tbaa !7   ; 8 uses
  %i.jo = load i32, ptr %i.au, align 4, !tbaa !7  ; 6 uses
  %i.jp = load i32, ptr %i.av, align 4, !tbaa !7  ; 3 uses
  %.0312 = call i32 @llvm.smax.i32(i32 %i.jo, i32 %i.jn)
  %.1 = call i32 @llvm.smax.i32(i32 %i.jp, i32 %.0312)
  %i.jq = icmp sgt i32 %.1, 0
  br i1 %i.jq, label %.preheader377.lr.ph, label %._crit_edge.split

.preheader377.lr.ph:                              ; preds = %bb.y
  %i.jr = select i1 %i.iw, i32 %i.iy, i32 0       ; 3 uses
  %factor.op.mul409 = mul i32 %i.jo, %i.jr
  %factor.op.mul = mul i32 %i.jo, %i.jl
  %factor.op.mul408 = mul i32 %i.jo, %i.jc
  %i.js = add nuw nsw i32 %i.im, 1
  %i.jt = mul nsw i32 %i.jr, %i.js
  %i.ju = select i1 %i.in, i32 %i.jt, i32 0
  %i.jv = add nuw nsw i32 %i.hq, 1
  %i.jw = mul nsw i32 %i.jm, %i.jv
  %i.jx = select i1 %i.hr, i32 %i.jw, i32 0
  %i.jy = mul i32 %i.jn, %i.jg
  %4 = icmp sgt i32 %i.jp, 0
  %i.jz = icmp sgt i32 %i.jo, 0
  %i.ka = sub i32 %i.jc, %i.jn
  %i.kb = sub i32 %i.jl, %i.jy
  %i.kc = sub i32 %i.jr, %i.jn
  %i.kd = sub i32 %i.jf, %factor.op.mul408
  %i.ke = sub i32 %i.jx, %factor.op.mul
  %5 = sub i32 %i.ju, %factor.op.mul409
  %brmerge.not469 = and i1 %4, %i.jz
  %i.kf = icmp sgt i32 %i.jn, 0
  %or.cond.a = and i1 %brmerge.not469, %i.kf
  br i1 %or.cond.a, label %.preheader376.us.us.preheader, label %._crit_edge.split

.preheader376.us.us.preheader:                    ; preds = %.preheader377.lr.ph
  %i.kg = sext i32 %i.jg to i64
  %i.kh = zext nneg i32 %i.jn to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.jn, 9
  %ident.check.not = icmp eq i32 %i.jg, 1
  %or.cond487 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.kh, 2147483646              ; 6 uses
  %i.ki = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.kh
  br label %.preheader376.us.us

.preheader376.us.us:                              ; preds = %.preheader376.us.us.preheader, %._crit_edge390.split.us.us.us
  %.1319404.us.us = phi i32 [ %i.mr, %._crit_edge390.split.us.us.us ], [ 0, %.preheader376.us.us.preheader ]
  %.0331403.us.us = phi i32 [ %i.mq, %._crit_edge390.split.us.us.us ], [ %i.jb, %.preheader376.us.us.preheader ]
  %.0333402.us.us = phi i32 [ %i.mp, %._crit_edge390.split.us.us.us ], [ %i.ig, %.preheader376.us.us.preheader ]
  %.0336401.us.us = phi i32 [ %i.mo, %._crit_edge390.split.us.us.us ], [ %i.hh, %.preheader376.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader376.us.us
  %.1321389.us.us.us = phi i32 [ 0, %.preheader376.us.us ], [ %i.mn, %._crit_edge.us.us.us ]
  %.1332388.us.us.us = phi i32 [ %.0331403.us.us, %.preheader376.us.us ], [ %i.mm, %._crit_edge.us.us.us ]
  %.1334387.us.us.us = phi i32 [ %.0333402.us.us, %.preheader376.us.us ], [ %i.ml, %._crit_edge.us.us.us ]
  %.1337386.us.us.us = phi i32 [ %.0336401.us.us, %.preheader376.us.us ], [ %i.mk, %._crit_edge.us.us.us ]
  %i.kj = sext i32 %.1332388.us.us.us to i64      ; 5 uses
  %i.kk = sext i32 %.1334387.us.us.us to i64      ; 5 uses
  %i.kl = sext i32 %.1337386.us.us.us to i64      ; 5 uses
  br i1 %or.cond487, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader.us.us.us
  %i.km = shl nsw i64 %i.kj, 3                    ; 5 uses
  %i.kn = add i64 %i.fs, %i.km
  %i.ko = shl nsw i64 %i.kk, 3                    ; 3 uses
  %i.kp = add i64 %i.fw, %i.ko
  %i.kq = sub i64 %i.kp, %i.kn
  %diff.check = icmp ugt i64 %i.kq, -16
  %i.kr = add i64 %i.fx, %i.km
  %i.ks = add i64 %i.ga, %i.ko
  %i.kt = sub i64 %i.ks, %i.kr
  %diff.check472 = icmp ugt i64 %i.kt, -16
  %conflict.rdx = or i1 %diff.check, %diff.check472
  %i.ku = add i64 %i.gb, %i.km
  %i.kv = add i64 %i.gc, %i.ko
  %i.kw = sub i64 %i.kv, %i.ku
  %diff.check473 = icmp ugt i64 %i.kw, -16
  %conflict.rdx474 = or i1 %conflict.rdx, %diff.check473
  %i.kx = add i64 %i.gd, %i.km
  %i.ky = shl nsw i64 %i.kl, 3                    ; 2 uses
  %i.kz = add i64 %i.gf, %i.ky
  %i.la = sub i64 %i.kz, %i.kx
  %diff.check475 = icmp ugt i64 %i.la, -16
  %conflict.rdx476 = or i1 %conflict.rdx474, %diff.check475
  %i.lb = add i64 %i.gg, %i.km
  %i.lc = add i64 %i.ky, %.0330477
  %i.ld = sub i64 %i.lc, %i.lb
  %diff.check478 = icmp ugt i64 %i.ld, -16
  %conflict.rdx479 = or i1 %conflict.rdx476, %diff.check478
  br i1 %conflict.rdx479, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.le = add nsw i64 %n.vec, %i.kl               ; 2 uses
  %i.lf = add nsw i64 %n.vec, %i.kk               ; 2 uses
  %i.lg = add nsw i64 %n.vec, %i.kj               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.fd, i64 %i.kj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.lh = add i64 %index, %i.kl                   ; 2 uses
  %i.li = add i64 %index, %i.kk                   ; 3 uses
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.li
  %wide.load = load <2 x double>, ptr %i.lj, align 8, !tbaa !65
  %i.lk = getelementptr inbounds [8 x i8], ptr %.0330, i64 %i.lh
  %wide.load480 = load <2 x double>, ptr %i.lk, align 8, !tbaa !65
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.li
  %wide.load481 = load <2 x double>, ptr %i.ll, align 8, !tbaa !65
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.lh
  %wide.load482 = load <2 x double>, ptr %i.lm, align 8, !tbaa !65
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.li
  %wide.load483 = load <2 x double>, ptr %i.ln, align 8, !tbaa !65
  %i.lo = fmul <2 x double> %wide.load482, %wide.load483
  %i.lp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load480, <2 x double> %wide.load481, <2 x double> %i.lo)
  %i.lq = fadd <2 x double> %wide.load, %i.lp
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  store <2 x double> %i.lq, ptr %gep, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.lr = icmp eq i64 %index.next, %n.vec
  br i1 %i.lr, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us, %middle.block
  %indvars.iv438.ph = phi i64 [ %i.kl, %vector.memcheck ], [ %i.kl, %.preheader.us.us.us ], [ %i.le, %middle.block ]
  %indvars.iv436.ph = phi i64 [ %i.kk, %vector.memcheck ], [ %i.kk, %.preheader.us.us.us ], [ %i.lf, %middle.block ]
  %indvars.iv434.ph = phi i64 [ %i.kj, %vector.memcheck ], [ %i.kj, %.preheader.us.us.us ], [ %i.lg, %middle.block ]
  %.1323383.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.us ], [ %i.ki, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv438 = phi i64 [ %indvars.iv.next439, %scalar.ph ], [ %indvars.iv438.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv436 = phi i64 [ %indvars.iv.next437, %scalar.ph ], [ %indvars.iv436.ph, %scalar.ph.preheader ] ; 4 uses
  %indvars.iv434 = phi i64 [ %indvars.iv.next435, %scalar.ph ], [ %indvars.iv434.ph, %scalar.ph.preheader ] ; 2 uses
  %.1323383.us.us.us = phi i32 [ %i.mg, %scalar.ph ], [ %.1323383.us.us.us.ph, %scalar.ph.preheader ]
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %indvars.iv436
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !65
  %i.lu = getelementptr inbounds [8 x i8], ptr %.0330, i64 %indvars.iv438
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !65
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.el, i64 %indvars.iv436
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !65
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %indvars.iv438
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !65
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %indvars.iv436
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !65
  %i.mc = fmul double %i.lz, %i.mb
  %i.md = call double @llvm.fmuladd.f64(double %i.lv, double %i.lx, double %i.mc)
  %i.me = fadd double %i.lt, %i.md
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %indvars.iv434
  store double %i.me, ptr %i.mf, align 8, !tbaa !65
  %indvars.iv.next439 = add nsw i64 %indvars.iv438, 1 ; 2 uses
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, %i.kg ; 2 uses
  %indvars.iv.next435 = add nsw i64 %indvars.iv434, 1 ; 2 uses
  %i.mg = add nuw nsw i32 %.1323383.us.us.us, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %i.mg, %i.jn
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !35

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %indvars.iv.next439.lcssa = phi i64 [ %i.le, %middle.block ], [ %indvars.iv.next439, %scalar.ph ]
  %indvars.iv.next437.lcssa = phi i64 [ %i.lf, %middle.block ], [ %indvars.iv.next437, %scalar.ph ]
  %indvars.iv.next435.lcssa = phi i64 [ %i.lg, %middle.block ], [ %indvars.iv.next435, %scalar.ph ]
  %i.mh = trunc nsw i64 %indvars.iv.next439.lcssa to i32
  %i.mi = trunc nsw i64 %indvars.iv.next437.lcssa to i32
  %i.mj = trunc nsw i64 %indvars.iv.next435.lcssa to i32
  %i.mk = add nsw i32 %i.ka, %i.mh                ; 2 uses
  %i.ml = add nsw i32 %i.kb, %i.mi                ; 2 uses
  %i.mm = add nsw i32 %i.kc, %i.mj                ; 2 uses
  %i.mn = add nuw nsw i32 %.1321389.us.us.us, 1   ; 2 uses
  %exitcond445.not = icmp eq i32 %i.mn, %i.jo
  br i1 %exitcond445.not, label %._crit_edge390.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !36

._crit_edge390.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.mo = add nsw i32 %i.kd, %i.mk
  %i.mp = add nsw i32 %i.ke, %i.ml
  %i.mq = add nsw i32 %5, %i.mm
  %i.mr = add nuw nsw i32 %.1319404.us.us, 1      ; 2 uses
  %exitcond446.not = icmp eq i32 %i.mr, %i.jp
  br i1 %exitcond446.not, label %._crit_edge.split, label %.preheader376.us.us, !llvm.loop !37

._crit_edge.split:                                ; preds = %._crit_edge390.split.us.us.us, %.preheader377.lr.ph, %bb.y
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %i.ms = load i32, ptr %i.fe, align 8, !tbaa !52
  %i.mt = sext i32 %i.ms to i64
  %i.mu = icmp slt i64 %indvars.iv.next448, %i.mt
  br i1 %i.mu, label %bb.q, label %._crit_edge415.loopexit, !llvm.loop !38

._crit_edge415.loopexit:                          ; preds = %._crit_edge.split
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !52
  br label %._crit_edge415

._crit_edge415:                                   ; preds = %._crit_edge415.loopexit, %bb.p
  %i.mv = phi i32 [ %.pre, %._crit_edge415.loopexit ], [ %i.bd, %bb.p ] ; 2 uses
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv450, 1 ; 2 uses
  %i.mw = sext i32 %i.mv to i64
  %i.mx = icmp slt i64 %indvars.iv.next451, %i.mw
  br i1 %i.mx, label %.preheader378, label %._crit_edge418, !llvm.loop !39

._crit_edge418:                                   ; preds = %._crit_edge415, %bb.e
  br i1 %i.aw, label %bb.b, label %bb.z, !llvm.loop !40

bb.z:                                             ; preds = %._crit_edge418
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !68
  %i.na = shl nsw i32 %i.mz, 2
  %i.nb = call i32 @hypre_IncFLOPCount(i32 noundef %i.na) #4 ; 0 uses
  %i.nc = load i32, ptr %i.d, align 8, !tbaa !12
  %i.nd = call i32 @hypre_EndTiming(i32 noundef %i.nc) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

declare i32 @hypre_BeginTiming(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_InitializeIndtComputations(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeIndtComputations(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructMapFineToCoarse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetStrideSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @hypre_IncFLOPCount(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_EndTiming(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SemiRestrictDestroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.a) #4 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = tail call i32 @hypre_ComputePkgDestroy(ptr noundef %i.d) #4 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !12
  %i.h = tail call i32 @hypre_FinalizeTiming(i32 noundef %i.g) #4 ; 0 uses
  tail call void @hypre_Free(ptr noundef nonnull %0) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

declare i32 @hypre_StructMatrixDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ComputePkgDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeTiming(i32 noundef) local_unnamed_addr #2

declare void @hypre_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 _ZTS25hypre_StructMatrix_struct", !8, i64 0}
!10 = !{!"p1 _ZTS23hypre_ComputePkg_struct", !8, i64 0}
!11 = !{!"", !9, i64 0, !6, i64 8, !10, i64 16, !5, i64 24, !5, i64 36, !6, i64 48}
!12 = !{!11, !6, i64 48}
!13 = !{!"p1 _ZTS23hypre_StructGrid_struct", !8, i64 0}
!14 = !{!"p1 _ZTS21hypre_BoxArray_struct", !8, i64 0}
!15 = !{!"p1 double", !8, i64 0}
!16 = !{!"p1 int", !8, i64 0}
!17 = !{!"hypre_StructVector_struct", !6, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !16, i64 40, !5, i64 48, !6, i64 72, !6, i64 76}
!18 = !{!17, !13, i64 8}
!19 = !{!"p1 _ZTS26hypre_StructStencil_struct", !8, i64 0}
!20 = !{!"any p2 pointer", !8, i64 0}
!21 = !{!"p2 int", !20, i64 0}
!22 = !{!"p1 _ZTS20hypre_CommPkg_struct", !8, i64 0}
!23 = !{!"hypre_StructMatrix_struct", !6, i64 0, !13, i64 8, !19, i64 16, !19, i64 24, !6, i64 32, !14, i64 40, !15, i64 48, !6, i64 56, !6, i64 60, !21, i64 64, !6, i64 72, !16, i64 80, !5, i64 88, !6, i64 112, !22, i64 120, !6, i64 128}
!24 = !{!23, !19, i64 24}
!25 = !{!"p1 _ZTS26hypre_BoxArrayArray_struct", !8, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!17, !14, i64 16}
!28 = !{!11, !9, i64 0}
!29 = !{!11, !6, i64 8}
!30 = !{!11, !10, i64 16}
!31 = !{!21, !21, i64 0}
!32 = !{!10, !10, i64 0}
!33 = distinct !{!33, !53}
!34 = distinct !{!34, !53, !66, !67}
!35 = distinct !{!35, !53, !66}
!36 = distinct !{!36, !53}
!37 = distinct !{!37, !53}
!38 = distinct !{!38, !53}
!39 = distinct !{!39, !53}
!40 = distinct !{!40, !53}
!41 = !{!"hypre_StructStencil_struct", !16, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!42 = !{!41, !16, i64 0}
!43 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !8, i64 0}
!44 = !{!"p1 _ZTS16hypre_Box_struct", !8, i64 0}
!45 = !{!"hypre_StructGrid_struct", !6, i64 0, !6, i64 4, !14, i64 8, !16, i64 16, !43, i64 24, !6, i64 32, !44, i64 40, !6, i64 48, !6, i64 52, !5, i64 56, !6, i64 68}
!46 = !{!45, !16, i64 16}
!47 = !{!45, !14, i64 8}
!48 = !{!17, !15, i64 24}
!49 = !{!"p1 _ZTS23hypre_CommHandle_struct", !8, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"hypre_BoxArray_struct", !44, i64 0, !6, i64 8, !6, i64 12}
!52 = !{!51, !6, i64 8}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"p2 _ZTS21hypre_BoxArray_struct", !20, i64 0}
!55 = !{!"hypre_BoxArrayArray_struct", !54, i64 0, !6, i64 8}
!56 = !{!55, !54, i64 0}
!57 = !{!14, !14, i64 0}
!58 = !{!23, !14, i64 40}
!59 = !{!51, !44, i64 0}
!60 = !{!23, !15, i64 48}
!61 = !{!23, !21, i64 64}
!62 = !{!16, !16, i64 0}
!63 = !{!17, !16, i64 40}
!64 = !{!"double", !5, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !{!"llvm.loop.unroll.runtime.disable"}
!68 = !{!17, !6, i64 72}
end_hunk_0
