Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/4xm?download=true
inline.NumInlined: 18
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@idct:vector.ph
  %i.cs = ashr <4 x i32> %i.cr, splat (i32 16)
  %i.ct = add nsw <4 x i32> %i.co, %i.ci
  %i.cu = mul <4 x i32> %i.ct, splat (i32 121095)
  %i.cv = ashr <4 x i32> %i.cu, splat (i32 16)    ; 2 uses
  %i.cw = mul <4 x i32> %i.co, splat (i32 70936)
  %i.cx = ashr <4 x i32> %i.cw, splat (i32 16)
  %i.cy = sub nsw <4 x i32> %i.cx, %i.cv
  %i.cz = mul <4 x i32> %i.ci, splat (i32 -171254)
  %i.da = ashr <4 x i32> %i.cz, splat (i32 16)
  %i.db = sub nsw <4 x i32> %i.da, %i.cp
  %i.dc = add nsw <4 x i32> %i.db, %i.cv          ; 3 uses
  %i.dd = sub nsw <4 x i32> %i.cs, %i.dc          ; 3 uses
  %i.de = add nsw <4 x i32> %i.dd, %i.cy          ; 2 uses
  %i.df = add nsw <4 x i32> %i.cp, %i.bz
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> %i.df, ptr %i.dg, align 16, !tbaa !54
  %i.dh = sub nsw <4 x i32> %i.bz, %i.cp
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <4 x i32> %i.dh, ptr %i.di, align 16, !tbaa !54
  %i.dj = add nsw <4 x i32> %i.dc, %i.cb
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> %i.dj, ptr %i.dk, align 16, !tbaa !54
  %i.dl = sub nsw <4 x i32> %i.cb, %i.dc
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <4 x i32> %i.dl, ptr %i.dm, align 16, !tbaa !54
  %i.dn = add nsw <4 x i32> %i.dd, %i.cc
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x i32> %i.dn, ptr %i.do, align 16, !tbaa !54
  %i.dp = sub nsw <4 x i32> %i.cc, %i.dd
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <4 x i32> %i.dp, ptr %i.dq, align 16, !tbaa !54
  %i.dr = add nsw <4 x i32> %i.de, %i.ca
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <4 x i32> %i.dr, ptr %i.ds, align 16, !tbaa !54
  %i.dt = sub nsw <4 x i32> %i.ca, %i.de
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x i32> %i.dt, ptr %i.du, align 16, !tbaa !54
  br label %vector.body172

vector.body172:                                   ; preds = %vector.ph, %vector.body172
  %index173 = phi i64 [ %index.next174, %vector.body172 ], [ 0, %vector.ph ] ; 2 uses
  %i.dv = shl nuw i64 %index173, 3                ; 33 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 96
  %i.ed = load i32, ptr %i.dw, align 16, !tbaa !54
  %i.ee = load i32, ptr %i.dy, align 16, !tbaa !54
  %i.ef = load i32, ptr %i.ea, align 16, !tbaa !54
  %i.eg = load i32, ptr %i.ec, align 16, !tbaa !54
  %i.eh = insertelement <4 x i32> poison, i32 %i.ed, i64 0
  %i.ei = insertelement <4 x i32> %i.eh, i32 %i.ee, i64 1
  %i.ej = insertelement <4 x i32> %i.ei, i32 %i.ef, i64 2
  %i.ek = insertelement <4 x i32> %i.ej, i32 %i.eg, i64 3 ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 80
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 112
  %i.et = load i32, ptr %i.em, align 16, !tbaa !54
  %i.eu = load i32, ptr %i.eo, align 16, !tbaa !54
  %i.ev = load i32, ptr %i.eq, align 16, !tbaa !54
  %i.ew = load i32, ptr %i.es, align 16, !tbaa !54
  %i.ex = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %i.ey = insertelement <4 x i32> %i.ex, i32 %i.eu, i64 1
  %i.ez = insertelement <4 x i32> %i.ey, i32 %i.ev, i64 2
  %i.fa = insertelement <4 x i32> %i.ez, i32 %i.ew, i64 3 ; 2 uses
  %i.fb = add nsw <4 x i32> %i.fa, %i.ek          ; 2 uses
  %i.fc = sub nsw <4 x i32> %i.ek, %i.fa          ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 72
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 104
  %i.fl = load i32, ptr %i.fe, align 8, !tbaa !54
  %i.fm = load i32, ptr %i.fg, align 8, !tbaa !54
  %i.fn = load i32, ptr %i.fi, align 8, !tbaa !54
  %i.fo = load i32, ptr %i.fk, align 8, !tbaa !54
  %i.fp = insertelement <4 x i32> poison, i32 %i.fl, i64 0
  %i.fq = insertelement <4 x i32> %i.fp, i32 %i.fm, i64 1
  %i.fr = insertelement <4 x i32> %i.fq, i32 %i.fn, i64 2
  %i.fs = insertelement <4 x i32> %i.fr, i32 %i.fo, i64 3 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 88
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 120
  %i.gb = load i32, ptr %i.fu, align 8, !tbaa !54
  %i.gc = load i32, ptr %i.fw, align 8, !tbaa !54
  %i.gd = load i32, ptr %i.fy, align 8, !tbaa !54
  %i.ge = load i32, ptr %i.ga, align 8, !tbaa !54
  %i.gf = insertelement <4 x i32> poison, i32 %i.gb, i64 0
  %i.gg = insertelement <4 x i32> %i.gf, i32 %i.gc, i64 1
  %i.gh = insertelement <4 x i32> %i.gg, i32 %i.gd, i64 2
  %i.gi = insertelement <4 x i32> %i.gh, i32 %i.ge, i64 3 ; 2 uses
  %i.gj = add nsw <4 x i32> %i.gi, %i.fs          ; 3 uses
  %i.gk = sub nsw <4 x i32> %i.fs, %i.gi
  %i.gl = mul <4 x i32> %i.gk, splat (i32 92682)
  %i.gm = ashr <4 x i32> %i.gl, splat (i32 16)
  %i.gn = sub nsw <4 x i32> %i.gm, %i.gj          ; 2 uses
  %i.go = add nsw <4 x i32> %i.gj, %i.fb          ; 2 uses
  %i.gp = sub nsw <4 x i32> %i.fb, %i.gj          ; 2 uses
  %i.gq = add nsw <4 x i32> %i.gn, %i.fc          ; 2 uses
  %i.gr = sub nsw <4 x i32> %i.fc, %i.gn          ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 20
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 52
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 84
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 116
  %i.ha = load i32, ptr %i.gt, align 4, !tbaa !54
  %i.hb = load i32, ptr %i.gv, align 4, !tbaa !54
  %i.hc = load i32, ptr %i.gx, align 4, !tbaa !54
  %i.hd = load i32, ptr %i.gz, align 4, !tbaa !54
  %i.he = insertelement <4 x i32> poison, i32 %i.ha, i64 0
  %i.hf = insertelement <4 x i32> %i.he, i32 %i.hb, i64 1
  %i.hg = insertelement <4 x i32> %i.hf, i32 %i.hc, i64 2
  %i.hh = insertelement <4 x i32> %i.hg, i32 %i.hd, i64 3 ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 44
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 76
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 108
  %i.hq = load i32, ptr %i.hj, align 4, !tbaa !54
  %i.hr = load i32, ptr %i.hl, align 4, !tbaa !54
  %i.hs = load i32, ptr %i.hn, align 4, !tbaa !54
  %i.ht = load i32, ptr %i.hp, align 4, !tbaa !54
  %i.hu = insertelement <4 x i32> poison, i32 %i.hq, i64 0
  %i.hv = insertelement <4 x i32> %i.hu, i32 %i.hr, i64 1
  %i.hw = insertelement <4 x i32> %i.hv, i32 %i.hs, i64 2
  %i.hx = insertelement <4 x i32> %i.hw, i32 %i.ht, i64 3 ; 2 uses
  %i.hy = add nsw <4 x i32> %i.hx, %i.hh          ; 2 uses
  %i.hz = sub nsw <4 x i32> %i.hh, %i.hx          ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 36
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 68
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 100
  %i.ii = load i32, ptr %i.ib, align 4, !tbaa !54
  %i.ij = load i32, ptr %i.id, align 4, !tbaa !54
  %i.ik = load i32, ptr %i.if, align 4, !tbaa !54
  %i.il = load i32, ptr %i.ih, align 4, !tbaa !54
  %i.im = insertelement <4 x i32> poison, i32 %i.ii, i64 0
  %i.in = insertelement <4 x i32> %i.im, i32 %i.ij, i64 1
  %i.io = insertelement <4 x i32> %i.in, i32 %i.ik, i64 2
  %i.ip = insertelement <4 x i32> %i.io, i32 %i.il, i64 3 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 28
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 60
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 92
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 124
  %i.iy = load i32, ptr %i.ir, align 4, !tbaa !54
  %i.iz = load i32, ptr %i.it, align 4, !tbaa !54
  %i.ja = load i32, ptr %i.iv, align 4, !tbaa !54
  %i.jb = load i32, ptr %i.ix, align 4, !tbaa !54
  %i.jc = insertelement <4 x i32> poison, i32 %i.iy, i64 0
  %i.jd = insertelement <4 x i32> %i.jc, i32 %i.iz, i64 1
  %i.je = insertelement <4 x i32> %i.jd, i32 %i.ja, i64 2
  %i.jf = insertelement <4 x i32> %i.je, i32 %i.jb, i64 3 ; 2 uses
  %i.jg = add nsw <4 x i32> %i.jf, %i.ip          ; 2 uses
  %i.jh = sub nsw <4 x i32> %i.ip, %i.jf          ; 2 uses
  %i.ji = add nsw <4 x i32> %i.jg, %i.hy          ; 3 uses
  %i.jj = sub nsw <4 x i32> %i.jg, %i.hy
  %i.jk = mul <4 x i32> %i.jj, splat (i32 92682)
  %i.jl = ashr <4 x i32> %i.jk, splat (i32 16)
  %i.jm = add nsw <4 x i32> %i.jh, %i.hz
  %i.jn = mul <4 x i32> %i.jm, splat (i32 121095)
  %i.jo = ashr <4 x i32> %i.jn, splat (i32 16)    ; 2 uses
  %i.jp = mul <4 x i32> %i.jh, splat (i32 70936)
  %i.jq = ashr <4 x i32> %i.jp, splat (i32 16)
  %i.jr = sub nsw <4 x i32> %i.jq, %i.jo
  %i.js = mul <4 x i32> %i.hz, splat (i32 -171254)
  %i.jt = ashr <4 x i32> %i.js, splat (i32 16)
  %i.ju = sub <4 x i32> %i.jt, %i.ji
  %i.jv = add <4 x i32> %i.ju, %i.jo              ; 3 uses
  %i.jw = sub nsw <4 x i32> %i.jl, %i.jv          ; 3 uses
  %i.jx = add nsw <4 x i32> %i.jw, %i.jr          ; 2 uses
  %1 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dv
  %2 = add nsw <4 x i32> %i.jw, %i.gr
  %i.jy = sub nsw <4 x i32> %i.gr, %i.jw
  %i.jz = add nsw <4 x i32> %i.jx, %i.gp
  %i.ka = sub nsw <4 x i32> %i.gp, %i.jx
  %3 = shufflevector <4 x i32> %i.ji, <4 x i32> %i.jv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = shufflevector <4 x i32> %i.go, <4 x i32> %i.gq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = add nsw <8 x i32> %3, %4
  %6 = shufflevector <4 x i32> %2, <4 x i32> %i.ka, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kb = shufflevector <4 x i32> %i.jz, <4 x i32> %i.jy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kc = shufflevector <4 x i32> %i.gq, <4 x i32> %i.go, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = shufflevector <4 x i32> %i.jv, <4 x i32> %i.ji, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = sub nsw <8 x i32> %i.kc, %7
  %9 = shufflevector <8 x i32> %5, <8 x i32> %6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kd = shufflevector <8 x i32> %i.kb, <8 x i32> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ke = shufflevector <16 x i32> %9, <16 x i32> %i.kd, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.kf = lshr <32 x i32> %i.ke, splat (i32 6)
  %interleaved.vec = trunc <32 x i32> %i.kf to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %1, align 2, !tbaa !57
  %index.next174 = add nuw i64 %index173, 4       ; 2 uses
  %i.kg = icmp eq i64 %index.next174, 8
  br i1 %i.kg, label %middle.block175, label %vector.body172, !llvm.loop !115

middle.block175:                                  ; preds = %vector.body172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_p_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -1, 4) %3, i32 noundef range(i32 -1, 4) %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = or i32 %4, %3
  %or.cond187191 = icmp sgt i32 %i.a, -1
  br i1 %or.cond187191, label %.lr.ph.lr.ph, label %tailrecurse.outer._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 108
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2012
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %tailrecurse.outer
  %indvar = phi i32 [ 0, %.lr.ph.lr.ph ], [ %indvar.next, %tailrecurse.outer ] ; 3 uses
  %.tr129.ph195 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %.tr129190, %tailrecurse.outer ]
  %.tr128.ph194 = phi i32 [ %3, %.lr.ph.lr.ph ], [ %i.as, %tailrecurse.outer ] ; 9 uses
  %.tr127.ph193 = phi ptr [ %2, %.lr.ph.lr.ph ], [ %i.ay, %tailrecurse.outer ]
  %.tr126.ph192 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %i.ax, %tailrecurse.outer ]
  %i.h = zext nneg i32 %.tr128.ph194 to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr @size2index, i64 %i.h
  br label %bb.b

tailrecurse.outer._crit_edge:                     ; preds = %tailrecurse.outer, %tailrecurse, %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.6, i32 noundef 352) #9
  tail call void @abort() #10
  unreachable

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr129190 = phi i32 [ %.tr129.ph195, %.lr.ph ], [ %i.ak, %tailrecurse ] ; 10 uses
  %.tr127189 = phi ptr [ %.tr127.ph193, %.lr.ph ], [ %i.aq, %tailrecurse ] ; 12 uses
  %.tr126188 = phi ptr [ %.tr126.ph192, %.lr.ph ], [ %i.ap, %tailrecurse ] ; 15 uses
  %.val = load i32, ptr %i.b, align 8, !tbaa !51  ; 4 uses
  %.val124 = load i32, ptr %i.c, align 4, !tbaa !49
  %.not125 = icmp sgt i32 %.val124, %.val
  br i1 %.not125, label %bb.c, label %mcdc.exit

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %.tr129190 to i64
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.i
  %i.j = load i8, ptr %gep, align 1, !tbaa !41
  %i.k = load i32, ptr %i.e, align 4, !tbaa !42   ; 2 uses
  %i.l = icmp slt i32 %i.k, 2
  %i.m = zext i1 %i.l to i64
  %i.n = getelementptr inbounds nuw [512 x i8], ptr @block_type_vlc, i64 %i.m
  %i.o = zext i8 %i.j to i64
  %i.p = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.f, align 8, !tbaa !50
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.s = lshr i32 %.val, 3
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.v = load i32, ptr %i.u, align 1, !tbaa !41
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = and i32 %.val, 7
  %i.y = shl i32 %i.w, %i.x
  %i.z = lshr i32 %i.y, 27
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.aa ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !41 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !41
  %i.af = sext i16 %i.ae to i32
  %i.ag = add i32 %.val, %i.af
  %i.ah = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.ag)
  store i32 %i.ah, ptr %i.b, align 8, !tbaa !51
  %or.cond3 = icmp ult i16 %i.ac, 7
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.6, i32 noundef 362) #9
  tail call void @abort() #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.g, align 16, !tbaa !40 ; 3 uses
  %i.aj = load ptr, ptr %0, align 16, !tbaa !43   ; 6 uses
  switch i16 %i.ac, label %bb.m [
    i16 1, label %bb.f
    i16 2, label %bb.g
    i16 6, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ak = add nsw i32 %.tr129190, -1              ; 4 uses
  %i.al = tail call fastcc i32 @decode_p_block(ptr noundef nonnull %0, ptr noundef %.tr126188, ptr noundef %.tr127189, i32 noundef %.tr128.ph194, i32 noundef %i.ak, i32 noundef %5) ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %mcdc.exit, label %tailrecurse

tailrecurse:                                      ; preds = %bb.f
  %i.an = shl i32 %5, %i.ak
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %.tr126188, i64 %i.ao
  %i.aq = getelementptr inbounds [2 x i8], ptr %.tr127189, i64 %i.ao
  %i.ar = or i32 %i.ak, %.tr128.ph194
  %or.cond = icmp sgt i32 %i.ar, -1
  br i1 %or.cond, label %bb.b, label %tailrecurse.outer._crit_edge

bb.g:                                             ; preds = %bb.e
  %i.as = add nsw i32 %.tr128.ph194, -1           ; 4 uses
  %i.at = tail call fastcc i32 @decode_p_block(ptr noundef nonnull %0, ptr noundef %.tr126188, ptr noundef %.tr127189, i32 noundef %i.as, i32 noundef %.tr129190, i32 noundef %5) ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %mcdc.exit, label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %bb.g
  %i.av = shl nuw nsw i32 1, %i.as
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.tr126188, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.tr127189, i64 %i.aw
  %i.az = or i32 %.tr129190, %i.as
  %or.cond187 = icmp sgt i32 %i.az, -1
  %indvar.next = add i32 %indvar, 1
  br i1 %or.cond187, label %.lr.ph, label %tailrecurse.outer._crit_edge

bb.h:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !53
  %i.bd = load ptr, ptr %i.ba, align 16, !tbaa !52 ; 4 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = icmp slt i32 %i.bh, 4
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.aj, i32 noundef 16, ptr noundef nonnull @.str.44) #9
  br label %mcdc.exit

bb.j:                                             ; preds = %bb.h
  %.not116 = icmp eq i32 %.tr128.ph194, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 2 ; 2 uses
  store ptr %i.bj, ptr %i.ba, align 16, !tbaa !55
  %i.bk = load i16, ptr %i.bd, align 1, !tbaa !41
  store i16 %i.bk, ptr %.tr126188, align 2, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store ptr %i.bl, ptr %i.ba, align 16, !tbaa !55
  %i.bm = load i16, ptr %i.bj, align 1, !tbaa !41 ; 2 uses
  br i1 %.not116, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr126188, i64 2
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !57
  br label %mcdc.exit

bb.l:                                             ; preds = %bb.j
  %i.bo = sext i32 %5 to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %.tr126188, i64 %i.bo
  store i16 %i.bm, ptr %i.bp, align 2, !tbaa !57
  br label %mcdc.exit

bb.m:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aj, i64 116
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !30
  %i.bs = shl nuw nsw i32 1, %.tr129190           ; 8 uses
  %reass.sub = sub i32 %i.br, %i.bs
  %i.bt = add i32 %reass.sub, 1
  %i.bu = mul nsw i32 %i.bt, %5
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.bv
  %i.bx = shl nuw nsw i32 1, %.tr128.ph194
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.bz ; 2 uses
  %i.cb = and i16 %i.ac, 3
  %i.cc = icmp eq i16 %i.cb, 0
  br i1 %i.cc, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cf = load ptr, ptr %i.ce, align 16, !tbaa !53
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !52
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.aj, i32 noundef 16, ptr noundef nonnull @.str.45) #9
  br label %mcdc.exit

bb.p:                                             ; preds = %bb.n, %bb.m
  switch i16 %i.ac, label %bytestream2_get_le16.exit123 [
    i16 0, label %bb.q
end_hunk_0
