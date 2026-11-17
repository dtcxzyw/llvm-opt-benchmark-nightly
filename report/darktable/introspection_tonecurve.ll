Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_tonecurve?download=true
inline.NumInlined: 147
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 48
begin_hunk_0_@process:bb.a
  store float %i.ci, ptr %i.cj, align 4, !tbaa !13
  switch i32 %i.af, label %bb.cj [
    i32 0, label %bb.g
    i32 1, label %bb.t
    i32 2, label %bb.w
    i32 3, label %bb.ar
  ]

bb.g:                                             ; preds = %bb.f
  %i.ck = or disjoint i64 %indvars.iv, 1          ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ck
  %i.cm = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.cn = load <2 x float>, ptr %i.cl, align 4, !tbaa !13
  %i.co = fmul reassoc nsz arcp contract afn <2 x float> %i.cn, splat (float 3.906250e-03) ; 3 uses
  %i.cp = fadd reassoc nsz arcp contract afn <2 x float> %i.co, splat (float 5.000000e-01) ; 5 uses
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cq = fmul reassoc nsz arcp contract afn <2 x float> %i.cp, splat (float 6.553600e+04) ; 2 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 0
  %i.cs = fptosi float %i.cr to i32
  %i.ct = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 0)
  %i.cu = tail call i32 @llvm.umin.i32(i32 %i.ct, i32 65535)
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !13
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ck
  store float %i.cx, ptr %i.cy, align 4, !tbaa !13
  %i.cz = extractelement <2 x float> %i.cq, i64 1
  %i.da = fptosi float %i.cz to i32
  %i.db = tail call i32 @llvm.smax.i32(i32 %i.da, i32 0)
  %i.dc = tail call i32 @llvm.umin.i32(i32 %i.db, i32 65535)
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !13
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cm
  store float %i.df, ptr %i.dg, align 4, !tbaa !13
  br label %bb.cj

bb.i:                                             ; preds = %bb.g
  %i.dh = extractelement <2 x float> %i.cp, i64 0 ; 3 uses
  %i.di = fcmp reassoc nsz arcp contract afn ogt float %i.dh, %i.bp
  br i1 %i.di, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dj = load float, ptr %i.bi, align 8, !tbaa !13
  %i.dk = load float, ptr %i.l, align 4, !tbaa !13
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.dh
  %i.dm = load float, ptr %i.bj, align 4, !tbaa !13
  %i.dn = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dl, float %i.dm)
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.dj
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.dp = fcmp olt <2 x float> %i.cp, %i.u
  %i.dq = extractelement <2 x i1> %i.dp, i64 0
  br i1 %i.dq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dr = extractelement <2 x float> %i.co, i64 0
  %i.ds = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.dr
  %i.dt = load float, ptr %i.bg, align 4, !tbaa !13
  %i.du = load float, ptr %i.m, align 8, !tbaa !13
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, %i.ds
  %i.dw = load float, ptr %i.bh, align 8, !tbaa !13
  %i.dx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dv, float %i.dw)
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, %i.dt
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dh, 6.553600e+04
  %i.ea = fptosi float %i.dz to i32
  %i.eb = tail call i32 @llvm.smax.i32(i32 %i.ea, i32 0)
  %i.ec = tail call i32 @llvm.umin.i32(i32 %i.eb, i32 65535)
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.ed
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j
  %i.eg = phi reassoc nsz arcp contract afn float [ %i.do, %bb.j ], [ %i.dy, %bb.l ], [ %i.ef, %bb.m ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ck
  store float %i.eg, ptr %i.eh, align 4, !tbaa !13
  %i.ei = extractelement <2 x float> %i.cp, i64 1 ; 3 uses
  %i.ej = fcmp reassoc nsz arcp contract afn ogt float %i.ei, %i.bq
  br i1 %i.ej, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ek = load float, ptr %i.bn, align 8, !tbaa !13
  %i.el = load float, ptr %i.n, align 4, !tbaa !13
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, %i.ei
  %i.en = load float, ptr %i.bo, align 4, !tbaa !13
  %i.eo = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.em, float %i.en)
  %i.ep = fmul reassoc nsz arcp contract afn float %i.eo, %i.ek
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.eq = fcmp olt <2 x float> %i.cp, %i.u
  %i.er = extractelement <2 x i1> %i.eq, i64 1
  br i1 %i.er, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.es = extractelement <2 x float> %i.co, i64 1
  %i.et = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.es
  %i.eu = load float, ptr %i.bl, align 4, !tbaa !13
  %i.ev = load float, ptr %i.o, align 8, !tbaa !13
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ev, %i.et
  %i.ex = load float, ptr %i.bm, align 8, !tbaa !13
  %i.ey = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ew, float %i.ex)
  %i.ez = fmul reassoc nsz arcp contract afn float %i.ey, %i.eu
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.fa = fmul reassoc nsz arcp contract afn float %i.ei, 6.553600e+04
  %i.fb = fptosi float %i.fa to i32
  %i.fc = tail call i32 @llvm.smax.i32(i32 %i.fb, i32 0)
  %i.fd = tail call i32 @llvm.umin.i32(i32 %i.fc, i32 65535)
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.fe
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o
  %i.fh = phi reassoc nsz arcp contract afn float [ %i.ep, %bb.o ], [ %i.ez, %bb.q ], [ %i.fg, %bb.r ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cm
  store float %i.fh, ptr %i.fi, align 4, !tbaa !13
  br label %bb.cj

bb.t:                                             ; preds = %bb.f
  %i.fj = fcmp reassoc nsz arcp contract afn ogt float %i.bt, f0x3C23D70A
  %i.fk = or disjoint i64 %indvars.iv, 1          ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !13 ; 2 uses
  br i1 %i.fj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fm, %i.ci
  %i.fo = load float, ptr %i.br, align 4, !tbaa !13
  %i.fp = fdiv reassoc nsz arcp contract afn float %i.fn, %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fk
  store float %i.fp, ptr %i.fq, align 4, !tbaa !13
  %i.fr = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fr
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !13
  %i.fu = fmul reassoc nsz arcp contract afn float %i.ft, %i.ci
  %i.fv = load float, ptr %i.br, align 4, !tbaa !13
  %i.fw = fdiv reassoc nsz arcp contract afn float %i.fu, %i.fv
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fr
  store float %i.fw, ptr %i.fx, align 4, !tbaa !13
  br label %bb.cj

bb.v:                                             ; preds = %bb.t
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fm, %i.x
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fk
  store float %i.fy, ptr %i.fz, align 4, !tbaa !13
  %i.ga = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !13
  %i.gd = fmul reassoc nsz arcp contract afn float %i.gc, %i.x
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ga
  store float %i.gd, ptr %i.ge, align 4, !tbaa !13
  br label %bb.cj

bb.w:                                             ; preds = %bb.f
  %i.gf = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !13
  %i.gh = load float, ptr %i.br, align 4, !tbaa !13
  %i.gi = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !13
  %i.gk = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !13
  %i.gm = fmul reassoc nsz arcp contract afn float %i.gg, 2.000000e-03
  %i.gn = fmul reassoc nsz arcp contract afn float %i.gh, 8.620690e-03
  %i.go = fadd reassoc nsz arcp contract afn float %i.gn, f0x3E0D3DCB ; 8 uses
  %i.gp = fmul reassoc nsz arcp contract afn float %i.gj, 5.000000e-03
  %i.gq = fadd reassoc nsz arcp contract afn float %i.go, %i.gm ; 5 uses
  %i.gr = fcmp reassoc nsz arcp contract afn ogt float %i.gq, f0x3E53DCB1
  %i.gs = fmul reassoc nsz arcp contract afn float %i.gq, %i.gq
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gs, %i.gq
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gq, f0x3E038026
  %i.gv = fadd reassoc nsz arcp contract afn float %i.gu, f0xBC911AA6
  %i.gw = select reassoc nsz arcp contract afn i1 %i.gr, float %i.gt, float %i.gv ; 2 uses
  %i.gx = fcmp reassoc nsz arcp contract afn ogt float %i.go, f0x3E53DCB1
  %i.gy = fmul reassoc nsz arcp contract afn float %i.go, %i.go
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gy, %i.go
  %i.ha = fmul reassoc nsz arcp contract afn float %i.go, f0x3E038026
  %i.hb = fadd reassoc nsz arcp contract afn float %i.ha, f0xBC911AA6
  %i.hc = select reassoc nsz arcp contract afn i1 %i.gx, float %i.gz, float %i.hb ; 3 uses
  %i.hd = fsub reassoc nsz arcp contract afn float %i.go, %i.gp ; 5 uses
  %i.he = fcmp reassoc nsz arcp contract afn ogt float %i.hd, f0x3E53DCB1
  %i.hf = fmul reassoc nsz arcp contract afn float %i.hd, %i.hd
  %i.hg = fmul reassoc nsz arcp contract afn float %i.hf, %i.hd
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hd, f0x3E038026
  %i.hi = fadd reassoc nsz arcp contract afn float %i.hh, f0xBC911AA6
  %i.hj = select reassoc nsz arcp contract afn i1 %i.he, float %i.hg, float %i.hi ; 2 uses
  %i.hk = fadd reassoc nsz arcp contract afn float %i.go, %i.gl
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hk, 0.000000e+00 ; 5 uses
  %i.hm = fcmp reassoc nsz arcp contract afn ogt float %i.hl, f0x3E53DCB1
  %i.hn = fmul reassoc ninf nsz arcp contract afn float %i.hl, %i.hl
  %i.ho = fmul reassoc ninf nsz arcp contract afn float %i.hn, %i.hl
  %i.hp = fadd reassoc nsz arcp contract afn float %i.hl, f0xBC911AA6
  %i.hq = select reassoc nsz arcp contract afn i1 %i.hm, float %i.ho, float %i.hp
  %i.hr = fmul reassoc nsz arcp contract afn float %i.gw, 9.642000e-01 ; 2 uses
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hj, f0x3F532CA5 ; 2 uses
  %i.ht = fcmp reassoc nsz arcp contract afn olt float %i.hr, %i.k
  br i1 %i.ht, label %bb.ai, label %bb.aj

bb.x:                                             ; preds = %bb.aq
  %i.hu = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.km) #24
  br label %bb.z

bb.y:                                             ; preds = %bb.aq
  %i.hv = fmul reassoc nsz arcp contract afn float %i.jj, f0x410137F7
  %i.hw = fadd reassoc nsz arcp contract afn float %i.hv, f0x3E0D3DCB
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.hx = phi reassoc nsz arcp contract afn float [ %i.hu, %bb.x ], [ %i.hw, %bb.y ]
  %i.hy = fcmp reassoc nsz arcp contract afn ogt float %i.jx, f0x3C111AA7
  br i1 %i.hy, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hz = fmul reassoc nsz arcp contract afn float %i.jx, f0x40F92F69
  %i.ia = fadd reassoc nsz arcp contract afn float %i.hz, f0x3E0D3DCB
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ib = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.jx) #24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ic = phi reassoc nsz arcp contract afn float [ %i.ib, %bb.ab ], [ %i.ia, %bb.aa ] ; 3 uses
  %i.id = fmul reassoc nsz arcp contract afn float %i.kl, f0x3F9B2B9B ; 2 uses
  %i.ie = fcmp reassoc nsz arcp contract afn ogt float %i.id, f0x3C111AA7
  br i1 %i.ie, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.if = fmul reassoc nsz arcp contract afn float %i.kl, f0x41170A26
  %i.ig = fadd reassoc nsz arcp contract afn float %i.if, f0x3E0D3DCB
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ih = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.id) #24
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ii = phi reassoc nsz arcp contract afn float [ %i.ih, %bb.ae ], [ %i.ig, %bb.ad ]
  %i.ij = fmul reassoc nsz arcp contract afn float %i.hq, 0.000000e+00 ; 3 uses
  %i.ik = fcmp reassoc nsz arcp contract afn ogt float %i.ij, f0x3C111AA7
  br i1 %i.ik, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.il = fadd reassoc nsz arcp contract afn float %i.ij, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit

bb.ah:                                            ; preds = %bb.af
  %i.im = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ij) #24
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.ag, %bb.ah
  %i.in = phi reassoc nsz arcp contract afn float [ %i.im, %bb.ah ], [ %i.il, %bb.ag ]
  %i.io = fmul reassoc nsz arcp contract afn float %i.ic, 1.160000e+02
  %i.ip = fadd reassoc nsz arcp contract afn float %i.io, -1.600000e+01
  %i.iq = fsub reassoc nsz arcp contract afn float %i.hx, %i.ic
  %i.ir = fsub reassoc nsz arcp contract afn float %i.ii, %i.ic
  %i.is = insertelement <4 x float> poison, float %i.iq, i64 1
  %i.it = insertelement <4 x float> %i.is, float %i.ir, i64 2
  %i.iu = insertelement <4 x float> %i.it, float %i.in, i64 3
  %i.iv = fmul reassoc nsz arcp contract afn <4 x float> %i.iu, <float poison, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  %i.iw = insertelement <4 x float> %i.iv, float %i.ip, i64 0
  store <4 x float> %i.iw, ptr %i.cj, align 4, !tbaa !13
  br label %bb.cj

bb.ai:                                            ; preds = %bb.w
  %i.ix = fmul reassoc nsz arcp contract afn float %i.gw, f0x4776D5D0
  %i.iy = fptosi float %i.ix to i32
  %narrow193 = tail call i32 @llvm.smax.i32(i32 %i.iy, i32 0)
  %i.iz = tail call i32 @llvm.umin.i32(i32 %narrow193, i32 65535)
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ja
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !13
  br label %bb.ak

bb.aj:                                            ; preds = %bb.w
  %i.jd = load float, ptr %i.ak, align 4, !tbaa !13
  %i.je = load float, ptr %i.i, align 8, !tbaa !13
  %i.jf = fmul reassoc nsz arcp contract afn float %i.je, %i.hr
  %i.jg = load float, ptr %i.al, align 8, !tbaa !13
  %i.jh = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.jf, float %i.jg)
  %i.ji = fmul reassoc nsz arcp contract afn float %i.jh, %i.jd
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.jj = phi reassoc nsz arcp contract afn float [ %i.jc, %bb.ai ], [ %i.ji, %bb.aj ] ; 2 uses
  %i.jk = fcmp reassoc nsz arcp contract afn olt float %i.hc, %i.k
  br i1 %i.jk, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jl = load float, ptr %i.ak, align 4, !tbaa !13
  %i.jm = load float, ptr %i.i, align 8, !tbaa !13
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jm, %i.hc
  %i.jo = load float, ptr %i.al, align 8, !tbaa !13
  %i.jp = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.jn, float %i.jo)
  %i.jq = fmul reassoc nsz arcp contract afn float %i.jp, %i.jl
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.jr = fmul reassoc nsz arcp contract afn float %i.hc, 6.553600e+04
  %i.js = fptosi float %i.jr to i32
  %narrow193.1 = tail call i32 @llvm.smax.i32(i32 %i.js, i32 0)
  %i.jt = tail call i32 @llvm.umin.i32(i32 %narrow193.1, i32 65535)
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ju
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !13
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.jx = phi reassoc nsz arcp contract afn float [ %i.jw, %bb.am ], [ %i.jq, %bb.al ] ; 3 uses
  %i.jy = fcmp reassoc nsz arcp contract afn olt float %i.hs, %i.k
  br i1 %i.jy, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jz = load float, ptr %i.ak, align 4, !tbaa !13
  %i.ka = load float, ptr %i.i, align 8, !tbaa !13
  %i.kb = fmul reassoc nsz arcp contract afn float %i.ka, %i.hs
  %i.kc = load float, ptr %i.al, align 8, !tbaa !13
  %i.kd = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.kb, float %i.kc)
  %i.ke = fmul reassoc nsz arcp contract afn float %i.kd, %i.jz
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.kf = fmul reassoc nsz arcp contract afn float %i.hj, f0x47532CA5
  %i.kg = fptosi float %i.kf to i32
  %narrow193.2 = tail call i32 @llvm.smax.i32(i32 %i.kg, i32 0)
  %i.kh = tail call i32 @llvm.umin.i32(i32 %narrow193.2, i32 65535)
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ki
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !13
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.kl = phi reassoc nsz arcp contract afn float [ %i.kk, %bb.ap ], [ %i.ke, %bb.ao ] ; 2 uses
  %i.km = fmul reassoc nsz arcp contract afn float %i.jj, f0x3F84C0A6 ; 2 uses
  %i.kn = fcmp reassoc nsz arcp contract afn ogt float %i.km, f0x3C111AA7
  br i1 %i.kn, label %bb.x, label %bb.y

bb.ar:                                            ; preds = %bb.f
  %i.ko = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !13
  %i.kq = load float, ptr %i.br, align 4, !tbaa !13
  %i.kr = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !13
  %i.kt = fmul reassoc nsz arcp contract afn float %i.kp, 2.000000e-03
  %i.ku = fmul reassoc nsz arcp contract afn float %i.kq, 8.620690e-03
  %i.kv = fadd reassoc nsz arcp contract afn float %i.ku, f0x3E0D3DCB ; 7 uses
  %i.kw = fmul reassoc nsz arcp contract afn float %i.ks, 5.000000e-03
  %i.kx = fadd reassoc nsz arcp contract afn float %i.kv, %i.kt ; 5 uses
  %i.ky = fcmp reassoc nsz arcp contract afn ogt float %i.kx, f0x3E53DCB1
  %i.kz = fmul reassoc nsz arcp contract afn float %i.kx, %i.kx
  %i.la = fmul reassoc nsz arcp contract afn float %i.kz, %i.kx
  %i.lb = fmul reassoc nsz arcp contract afn float %i.kx, f0x3E038026
  %i.lc = fadd reassoc nsz arcp contract afn float %i.lb, f0xBC911AA6
  %i.ld = select reassoc nsz arcp contract afn i1 %i.ky, float %i.la, float %i.lc ; 3 uses
  %i.le = fcmp reassoc nsz arcp contract afn ogt float %i.kv, f0x3E53DCB1
  %i.lf = fmul reassoc nsz arcp contract afn float %i.kv, %i.kv
  %i.lg = fmul reassoc nsz arcp contract afn float %i.lf, %i.kv
  %i.lh = fmul reassoc nsz arcp contract afn float %i.kv, f0x3E038026
  %i.li = fadd reassoc nsz arcp contract afn float %i.lh, f0xBC911AA6
  %i.lj = select reassoc nsz arcp contract afn i1 %i.le, float %i.lg, float %i.li ; 3 uses
  %i.lk = fsub reassoc nsz arcp contract afn float %i.kv, %i.kw ; 5 uses
  %i.ll = fcmp reassoc nsz arcp contract afn ogt float %i.lk, f0x3E53DCB1
  %i.lm = fmul reassoc nsz arcp contract afn float %i.lk, %i.lk
  %i.ln = fmul reassoc nsz arcp contract afn float %i.lm, %i.lk
  %i.lo = fmul reassoc nsz arcp contract afn float %i.lk, f0x3E038026
  %i.lp = fadd reassoc nsz arcp contract afn float %i.lo, f0xBC911AA6
  %i.lq = select reassoc nsz arcp contract afn i1 %i.ll, float %i.ln, float %i.lp ; 3 uses
  %i.lr = fmul reassoc nsz arcp contract afn float %i.ld, 9.642000e-01
  %i.ls = fmul reassoc nsz arcp contract afn float %i.ld, f0x3FA61CF4
  %i.lt = fmul reassoc nsz arcp contract afn float %i.lj, f0x3E82DEFC
  %i.lu = fsub reassoc nsz arcp contract afn float %i.ls, %i.lt
  %i.lv = fmul reassoc nsz arcp contract afn float %i.lq, f0xBD2CB230
  %i.lw = fadd reassoc nsz arcp contract afn float %i.lu, %i.lv ; 19 uses
  %i.lx = fmul reassoc nsz arcp contract afn float %i.ld, f0x3F066D1A
  %i.ly = fmul reassoc nsz arcp contract afn float %i.lj, f0x3FC10BA0
  %i.lz = fsub reassoc nsz arcp contract afn float %i.ly, %i.lx
  %i.ma = fmul reassoc nsz arcp contract afn float %i.lq, f0x3C8AC481
  %i.mb = fadd reassoc nsz arcp contract afn float %i.lz, %i.ma ; 19 uses
  %i.mc = fadd reassoc nsz arcp contract afn float %i.lr, %i.lj
  %i.md = fmul reassoc nsz arcp contract afn float %i.mc, 0.000000e+00
  %i.me = fmul reassoc nsz arcp contract afn float %i.lq, f0x3F7FE762
  %i.mf = fadd reassoc nsz arcp contract afn float %i.md, %i.me ; 19 uses
  %i.mg = load i32, ptr %i.am, align 4, !tbaa !159
  switch i32 %i.mg, label %bb.bt [
    i32 0, label %.preheader.preheader
    i32 1, label %bb.ay
    i32 2, label %bb.bo
    i32 3, label %bb.bp
    i32 4, label %bb.bq
    i32 5, label %bb.br
    i32 6, label %bb.bs
  ]

.preheader.preheader:                             ; preds = %bb.ar
  %i.mh = fcmp reassoc nsz arcp contract afn olt float %i.lw, %i.k
  br i1 %i.mh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.preheader.preheader
  %i.mi = fmul reassoc nsz arcp contract afn float %i.lw, 6.553600e+04
  %i.mj = fptosi float %i.mi to i32
  %narrow190 = tail call i32 @llvm.smax.i32(i32 %i.mj, i32 0)
  %i.mk = tail call i32 @llvm.umin.i32(i32 %narrow190, i32 65535)
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ml
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !13
  br label %.preheader.1

bb.at:                                            ; preds = %.preheader.preheader
  %i.mo = load float, ptr %i.ak, align 4, !tbaa !13
  %i.mp = load float, ptr %i.i, align 8, !tbaa !13
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mp, %i.lw
  %i.mr = load float, ptr %i.al, align 8, !tbaa !13
  %i.ms = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.mq, float %i.mr)
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ms, %i.mo
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.at, %bb.as
  %i.mu = phi reassoc nsz arcp contract afn float [ %i.mn, %bb.as ], [ %i.mt, %bb.at ] ; 2 uses
  %i.mv = fcmp reassoc nsz arcp contract afn olt float %i.mb, %i.k
  br i1 %i.mv, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.preheader.1
  %i.mw = load float, ptr %i.ak, align 4, !tbaa !13
  %i.mx = load float, ptr %i.i, align 8, !tbaa !13
  %i.my = fmul reassoc nsz arcp contract afn float %i.mx, %i.mb
  %i.mz = load float, ptr %i.al, align 8, !tbaa !13
  %i.na = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.my, float %i.mz)
  %i.nb = fmul reassoc nsz arcp contract afn float %i.na, %i.mw
  br label %.preheader.2

bb.av:                                            ; preds = %.preheader.1
  %i.nc = fmul reassoc nsz arcp contract afn float %i.mb, 6.553600e+04
  %i.nd = fptosi float %i.nc to i32
  %narrow190.1 = tail call i32 @llvm.smax.i32(i32 %i.nd, i32 0)
  %i.ne = tail call i32 @llvm.umin.i32(i32 %narrow190.1, i32 65535)
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.nf
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !13
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.av, %bb.au
  %i.ni = phi reassoc nsz arcp contract afn float [ %i.nh, %bb.av ], [ %i.nb, %bb.au ] ; 2 uses
  %i.nj = fcmp reassoc nsz arcp contract afn olt float %i.mf, %i.k
  br i1 %i.nj, label %bb.ax, label %bb.aw
end_hunk_0
begin_hunk_1_@process:bb.a
  %..i.2.i.i.i = select reassoc nsz arcp contract afn i1 %i.qs, float %i.qq, float %i.nz
  %i.qt = select reassoc nsz arcp contract afn i1 %i.qr, float %..i.2.i.i.i, float 0.000000e+00 ; 3 uses
  %i.qu = fcmp reassoc nsz arcp contract afn olt float %i.qt, %i.ob
  %i.qv = select reassoc nsz arcp contract afn i1 %i.qu, float %i.qt, float %i.ob
  %i.qw = fptosi float %i.qv to i32               ; 2 uses
  %i.qx = sitofp reassoc nsz arcp contract afn i32 %i.qw to float
  %i.qy = fsub reassoc nnan nsz arcp contract afn float %i.qt, %i.qx
  %i.qz = sext i32 %i.qw to i64
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.qg, i64 %i.qz ; 2 uses
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !13 ; 2 uses
  %i.rc = getelementptr i8, ptr %i.ra, i64 4
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !13
  %i.re = fsub reassoc nsz arcp contract afn float %i.rd, %i.rb
  %i.rf = fmul reassoc nsz arcp contract afn float %i.re, %i.qy
  %i.rg = fadd reassoc nsz arcp contract afn float %i.rf, %i.rb
  br label %dt_ioppr_apply_trc.exit.i.i

dt_ioppr_apply_trc.exit.i.i:                      ; preds = %bb.bl, %bb.bk, %bb.bi
  %i.rh = phi reassoc nsz arcp contract afn float [ %i.qp, %bb.bk ], [ %i.rg, %bb.bl ], [ %i.mf, %bb.bi ]
  %i.ri = load float, ptr %i.bb, align 16, !tbaa !13
  %i.rj = fmul reassoc nsz arcp contract afn float %i.ri, %i.pd
  %i.rk = load float, ptr %i.bc, align 4, !tbaa !13
  %i.rl = fmul reassoc nsz arcp contract afn float %i.rk, %i.qf
  %i.rm = fadd reassoc nsz arcp contract afn float %i.rl, %i.rj
  %i.rn = load float, ptr %i.bd, align 8, !tbaa !13
  %i.ro = fmul reassoc nsz arcp contract afn float %i.rn, %i.rh
  %i.rp = fadd reassoc nsz arcp contract afn float %i.rm, %i.ro
  br label %dt_rgb_norm.exit

bb.bm:                                            ; preds = %bb.az
  %i.rq = load float, ptr %i.bb, align 4, !tbaa !13
  %i.rr = fmul reassoc nsz arcp contract afn float %i.rq, %i.lw
  %i.rs = load float, ptr %i.bc, align 4, !tbaa !13
  %i.rt = fmul reassoc nsz arcp contract afn float %i.rs, %i.mb
  %i.ru = fadd reassoc nsz arcp contract afn float %i.rt, %i.rr
  %i.rv = load float, ptr %i.bd, align 4, !tbaa !13
  %i.rw = fmul reassoc nsz arcp contract afn float %i.rv, %i.mf
  %i.rx = fadd reassoc nsz arcp contract afn float %i.ru, %i.rw
  br label %dt_rgb_norm.exit

bb.bn:                                            ; preds = %bb.ay
  %i.ry = fmul reassoc nsz arcp contract afn float %i.lw, f0x3E63D838
  %i.rz = fmul reassoc nsz arcp contract afn float %i.mb, f0x3F37855B
  %i.sa = fadd reassoc nsz arcp contract afn float %i.rz, %i.ry
  %i.sb = fmul reassoc nsz arcp contract afn float %i.mf, 6.061690e-02
  %i.sc = fadd reassoc nsz arcp contract afn float %i.sa, %i.sb
  br label %dt_rgb_norm.exit

bb.bo:                                            ; preds = %bb.ar
  %i.sd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lw, float %i.mb)
  %i.se = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sd, float %i.mf)
  br label %dt_rgb_norm.exit

bb.bp:                                            ; preds = %bb.ar
  %i.sf = fadd reassoc nsz arcp contract afn float %i.mb, %i.lw
  %i.sg = fadd reassoc nsz arcp contract afn float %i.sf, %i.mf
  %i.sh = fmul reassoc nsz arcp contract afn float %i.sg, f0x3EAAAAAB
  br label %dt_rgb_norm.exit

bb.bq:                                            ; preds = %bb.ar
  %i.si = fadd reassoc nsz arcp contract afn float %i.mb, %i.lw
  %i.sj = fadd reassoc nsz arcp contract afn float %i.si, %i.mf
  br label %dt_rgb_norm.exit

bb.br:                                            ; preds = %bb.ar
  %i.sk = fmul reassoc nsz arcp contract afn float %i.lw, %i.lw
  %i.sl = fmul reassoc nsz arcp contract afn float %i.mb, %i.mb
  %i.sm = fadd reassoc nsz arcp contract afn float %i.sl, %i.sk
  %i.sn = fmul reassoc nsz arcp contract afn float %i.mf, %i.mf
  %i.so = fadd reassoc nsz arcp contract afn float %i.sm, %i.sn
  %i.sp = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.so)
  br label %dt_rgb_norm.exit

bb.bs:                                            ; preds = %bb.ar
  %i.sq = fmul reassoc nsz arcp contract afn float %i.lw, %i.lw ; 2 uses
  %i.sr = fmul reassoc nsz arcp contract afn float %i.mb, %i.mb ; 2 uses
  %i.ss = fmul reassoc nsz arcp contract afn float %i.mf, %i.mf ; 2 uses
  %i.st = fmul reassoc nsz arcp contract afn float %i.sq, %i.lw
  %i.su = fmul reassoc nsz arcp contract afn float %i.sr, %i.mb
  %i.sv = fadd reassoc nsz arcp contract afn float %i.su, %i.st
  %i.sw = fmul reassoc nsz arcp contract afn float %i.ss, %i.mf
  %i.sx = fadd reassoc nsz arcp contract afn float %i.sv, %i.sw
  %i.sy = fadd reassoc nsz arcp contract afn float %i.sr, %i.sq
  %i.sz = fadd reassoc nsz arcp contract afn float %i.sy, %i.ss
  %i.ta = fdiv reassoc nsz arcp contract afn float %i.sx, %i.sz
  br label %dt_rgb_norm.exit

bb.bt:                                            ; preds = %bb.ar
  %i.tb = fadd reassoc nsz arcp contract afn float %i.mb, %i.lw
  %i.tc = fadd reassoc nsz arcp contract afn float %i.tb, %i.mf
  %i.td = fmul reassoc nsz arcp contract afn float %i.tc, f0x3EAAAAAB
  br label %dt_rgb_norm.exit

dt_rgb_norm.exit:                                 ; preds = %dt_ioppr_apply_trc.exit.i.i, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt
  %.0.i = phi nsz float [ %i.td, %bb.bt ], [ %i.se, %bb.bo ], [ %i.sh, %bb.bp ], [ %i.sj, %bb.bq ], [ %i.sp, %bb.br ], [ %i.ta, %bb.bs ], [ %i.sc, %bb.bn ], [ %i.rp, %dt_ioppr_apply_trc.exit.i.i ], [ %i.rx, %bb.bm ] ; 5 uses
  %i.te = fcmp reassoc nsz arcp contract afn ogt float %.0.i, 0.000000e+00
  br i1 %i.te, label %bb.bu, label %.loopexit.loopexit

bb.bu:                                            ; preds = %dt_rgb_norm.exit
  %i.tf = fcmp reassoc nsz arcp contract afn olt float %.0.i, %i.k
  br i1 %i.tf, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.tg = fmul reassoc nnan nsz arcp contract afn float %.0.i, 6.553600e+04
  %i.th = fptosi float %i.tg to i32
  %narrow192 = tail call i32 @llvm.smin.i32(i32 %i.th, i32 65535)
  %spec.select189 = zext nneg i32 %narrow192 to i64
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %spec.select189
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !13
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.tk = load float, ptr %i.ak, align 4, !tbaa !13
  %i.tl = load float, ptr %i.i, align 8, !tbaa !13
  %i.tm = fmul reassoc nsz arcp contract afn float %i.tl, %.0.i
  %i.tn = load float, ptr %i.al, align 8, !tbaa !13
  %i.to = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.tm, float %i.tn)
  %i.tp = fmul reassoc nsz arcp contract afn float %i.to, %i.tk
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.tq = phi reassoc nsz arcp contract afn float [ %i.tj, %bb.bv ], [ %i.tp, %bb.bw ]
  %i.tr = fdiv reassoc nsz arcp contract afn float %i.tq, %.0.i
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.bx, %dt_rgb_norm.exit
  %.0163 = phi nsz float [ %i.tr, %bb.bx ], [ 1.000000e+00, %dt_rgb_norm.exit ] ; 3 uses
  %i.ts = fmul reassoc nsz arcp contract afn float %i.lw, %.0163
  %i.tt = fmul reassoc nsz arcp contract afn float %i.mb, %.0163
  %i.tu = fmul reassoc nsz arcp contract afn float %i.mf, %.0163
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aw, %bb.ax, %.loopexit.loopexit
  %.sroa.0.0 = phi nsz float [ %i.ts, %.loopexit.loopexit ], [ %i.mu, %bb.ax ], [ %i.mu, %bb.aw ] ; 3 uses
  %.sroa.9.0 = phi nsz float [ %i.tt, %.loopexit.loopexit ], [ %i.ni, %bb.ax ], [ %i.ni, %bb.aw ] ; 3 uses
  %.sroa.15.0 = phi nsz float [ %i.tu, %.loopexit.loopexit ], [ %i.nv, %bb.ax ], [ %i.np, %bb.aw ] ; 4 uses
  %i.tv = fmul reassoc nsz arcp contract afn float %.sroa.0.0, f0x3F4C346C
  %i.tw = fmul reassoc nsz arcp contract afn float %.sroa.9.0, f0x3E0A6FB1
  %i.tx = fadd reassoc nsz arcp contract afn float %i.tw, %i.tv
  %i.ty = fmul reassoc nsz arcp contract afn float %.sroa.15.0, 3.135340e-02
  %i.tz = fadd reassoc nsz arcp contract afn float %i.tx, %i.ty ; 2 uses
  %i.ua = fmul reassoc nsz arcp contract afn float %.sroa.0.0, f0x3E937A01
  %i.ub = fmul reassoc nsz arcp contract afn float %.sroa.9.0, f0x3F363D62
  %i.uc = fadd reassoc nsz arcp contract afn float %i.ub, %i.ua
  %i.ud = fmul reassoc nsz arcp contract afn float %.sroa.15.0, f0x38B3B9D6
  %i.ue = fadd reassoc nsz arcp contract afn float %i.uc, %i.ud ; 3 uses
  %i.uf = fadd reassoc nsz arcp contract afn float %.sroa.9.0, %.sroa.0.0 ; 2 uses
  %i.ug = fmul reassoc nsz arcp contract afn float %i.uf, 0.000000e+00
  %i.uh = fmul reassoc nsz arcp contract afn float %.sroa.15.0, f0x3F5340F6
  %i.ui = fadd reassoc nsz arcp contract afn float %i.ug, %i.uh ; 2 uses
  %i.uj = fadd reassoc nsz arcp contract afn float %i.uf, %.sroa.15.0
  %i.uk = fmul reassoc nsz arcp contract afn float %i.tz, f0x3F84C0A6 ; 2 uses
  %i.ul = fcmp reassoc nsz arcp contract afn ogt float %i.uk, f0x3C111AA7
  br i1 %i.ul, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.loopexit
  %i.um = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.uk) #24
  br label %bb.ca

bb.bz:                                            ; preds = %.loopexit
  %i.un = fmul reassoc nsz arcp contract afn float %i.tz, f0x410137F7
  %i.uo = fadd reassoc nsz arcp contract afn float %i.un, f0x3E0D3DCB
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.up = phi reassoc nsz arcp contract afn float [ %i.um, %bb.by ], [ %i.uo, %bb.bz ]
  %i.uq = fcmp reassoc nsz arcp contract afn ogt float %i.ue, f0x3C111AA7
  br i1 %i.uq, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ur = fmul reassoc nsz arcp contract afn float %i.ue, f0x40F92F69
  %i.us = fadd reassoc nsz arcp contract afn float %i.ur, f0x3E0D3DCB
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.ut = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ue) #24
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.uu = phi reassoc nsz arcp contract afn float [ %i.ut, %bb.cc ], [ %i.us, %bb.cb ] ; 3 uses
  %i.uv = fmul reassoc nsz arcp contract afn float %i.ui, f0x3F9B2B9B ; 2 uses
  %i.uw = fcmp reassoc nsz arcp contract afn ogt float %i.uv, f0x3C111AA7
  br i1 %i.uw, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ux = fmul reassoc nsz arcp contract afn float %i.ui, f0x41170A26
  %i.uy = fadd reassoc nsz arcp contract afn float %i.ux, f0x3E0D3DCB
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.uz = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.uv) #24
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.va = phi reassoc nsz arcp contract afn float [ %i.uz, %bb.cf ], [ %i.uy, %bb.ce ]
  %i.vb = fmul reassoc nsz arcp contract afn float %i.uj, 0.000000e+00 ; 3 uses
  %i.vc = fcmp reassoc nsz arcp contract afn ogt float %i.vb, f0x3C111AA7
  br i1 %i.vc, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.vd = fadd reassoc nsz arcp contract afn float %i.vb, f0x3E0D3DCB
  br label %dt_prophotorgb_to_Lab.exit

bb.ci:                                            ; preds = %bb.cg
  %i.ve = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.vb) #24
  br label %dt_prophotorgb_to_Lab.exit

dt_prophotorgb_to_Lab.exit:                       ; preds = %bb.ch, %bb.ci
  %i.vf = phi reassoc nsz arcp contract afn float [ %i.ve, %bb.ci ], [ %i.vd, %bb.ch ]
  %i.vg = fmul reassoc nsz arcp contract afn float %i.uu, 1.160000e+02
  %i.vh = fadd reassoc nsz arcp contract afn float %i.vg, -1.600000e+01
  %i.vi = fsub reassoc nsz arcp contract afn float %i.up, %i.uu
  %i.vj = fsub reassoc nsz arcp contract afn float %i.va, %i.uu
  %i.vk = insertelement <4 x float> poison, float %i.vi, i64 1
  %i.vl = insertelement <4 x float> %i.vk, float %i.vj, i64 2
  %i.vm = insertelement <4 x float> %i.vl, float %i.vf, i64 3
  %i.vn = fmul reassoc nsz arcp contract afn <4 x float> %i.vm, <float poison, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  %i.vo = insertelement <4 x float> %i.vn, float %i.vh, i64 0
  store <4 x float> %i.vo, ptr %i.cj, align 4, !tbaa !13
  br label %bb.cj

bb.cj:                                            ; preds = %bb.f, %bb.h, %bb.s, %bb.v, %bb.u, %dt_prophotorgb_to_Lab.exit, %dt_XYZ_to_Lab.exit
  %i.vp = or disjoint i64 %indvars.iv, 3          ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.vp
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !13
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.vp
  store float %i.vr, ptr %i.vs, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.vt = icmp ugt i64 %i.ah, %indvars.iv.next
  br i1 %i.vt, label %bb.c, label %.loopexit200

.loopexit200:                                     ; preds = %bb.cj, %bb.b, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_add_profile_info_to_list(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef %0) local_unnamed_addr #1 {
.preheader137.preheader:
  %1 = alloca %struct.dt_iop_tonecurve_params_t, align 8 ; 45 uses
  %2 = alloca %struct.dt_develop_blend_params_t, align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.a, i8 0, i64 472, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  store i32 6, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 484
  store i32 7, ptr %i.c, align 4, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 488
  store i32 7, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 492
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 496
  store i32 0, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 508
  store i32 0, ptr %i.g, align 4, !tbaa !164
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i32 3, ptr %i.h, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 512
  store i32 1, ptr %i.i, align 8, !tbaa !165
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 324
  store <8 x float> <float 0.000000e+00, float 8.000000e-02, float 8.000000e-02, float 3.000000e-01, float 3.000000e-01, float 5.000000e-01, float 5.000000e-01, float f0x3F333333>, ptr %i.j, align 4, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 196
  store <8 x float> <float 0.000000e+00, float 8.000000e-02, float 8.000000e-02, float 3.000000e-01, float 3.000000e-01, float 5.000000e-01, float 5.000000e-01, float f0x3F333333>, ptr %i.k, align 4, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 356
  store <4 x float> <float f0x3F333333, float 9.200000e-01, float 9.200000e-01, float 1.000000e+00>, ptr %i.l, align 4, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 212
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !51
  store <4 x float> <float f0x3F333333, float 9.200000e-01, float 9.200000e-01, float 1.000000e+00>, ptr %i.m, align 4, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 372
  store float 1.000000e+00, ptr %i.o, align 4, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 3.862000e-03, float 7.782000e-03, float 7.661300e-02, float 1.561820e-01, float 1.693550e-01, float 2.903520e-01>, ptr %1, align 8, !tbaa !13
  store <4 x float> <float 7.741940e-01, float f0x3F461B2A, float 1.000000e+00, float 1.000000e+00>, ptr %i.q, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 15 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 15 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.w = tail call i32 (...) %i.v() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.t, i32 noundef %i.w, ptr noundef nonnull %1, i32 noundef 520, i32 noundef 1, i32 noundef 3) #22
  store i32 7, ptr %i.b, align 8, !tbaa !14
  store float 0.000000e+00, ptr %1, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  store <4 x float> <float 0.000000e+00, float 8.000000e-02, float 8.000000e-02, float 1.700000e-01>, ptr %i.s, align 4, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store <8 x float> <float 1.700000e-01, float 5.000000e-01, float 5.000000e-01, float f0x3F547AE1, float f0x3F547AE1, float 9.200000e-01, float 9.200000e-01, float 1.000000e+00>, ptr %i.y, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  store float 1.000000e+00, ptr %i.ad, align 4, !tbaa !51
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.af = call i32 (...) %i.ae() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.t, i32 noundef %i.af, ptr noundef nonnull %1, i32 noundef 520, i32 noundef 1, i32 noundef 3) #22
  store <2 x float> splat (float 1.000000e+00), ptr %i.ac, align 8, !tbaa !13
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 8.000000e-02, float 6.000000e-02, float 1.700000e-01, float 1.400000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %1, align 8, !tbaa !13
  store <4 x float> <float f0x3F547AE1, float f0x3F5C28F5, float 9.200000e-01, float f0x3F70A3D7>, ptr %i.q, align 8, !tbaa !13
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.ah = call i32 (...) %i.ag() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.t, i32 noundef %i.ah, ptr noundef nonnull %1, i32 noundef 520, i32 noundef 1, i32 noundef 3) #22
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !13
  store <8 x float> <float 8.000000e-02, float 4.000000e-02, float 1.700000e-01, float 1.100000e-01, float 5.000000e-01, float 5.000000e-01, float f0x3F547AE1, float f0x3F63D70A>, ptr %i.p, align 8, !tbaa !13
  store <4 x float> <float 9.200000e-01, float f0x3F75C290, float 1.000000e+00, float 1.000000e+00>, ptr %i.r, align 8, !tbaa !13
  %i.ai = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.aj = call i32 (...) %i.ai() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.t, i32 noundef %i.aj, ptr noundef nonnull %1, i32 noundef 520, i32 noundef 1, i32 noundef 3) #22
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !13
  store <8 x float> <float f0x3B7D1777, float f0x3B066775, float f0x3CA61A60, float f0x3C58B8A7, float f0x3E5EDC66, float f0x3E5EDC66, float f0x3F29E83D, float f0x3F37B629>, ptr %i.p, align 8, !tbaa !13
  store <4 x float> <float f0x3F551850, float f0x3F5F6B6A, float 1.000000e+00, float 1.000000e+00>, ptr %i.r, align 8, !tbaa !13
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.al = call i32 (...) %i.ak() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.t, i32 noundef %i.al, ptr noundef nonnull %1, i32 noundef 520, i32 noundef 1, i32 noundef 3) #22
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !13
  store float 1.000000e+00, ptr %i.ad, align 4, !tbaa !51
  store float f0x3B7D1777, ptr %i.p, align 8, !tbaa !56
  store <8 x float> <float f0x3A5C543E, float f0x3CA61A60, float 7.781510e-03, float f0x3E5EDC66, float f0x3E5EDC66, float f0x3F29E83D, float f0x3F461B2D, float f0x3F551850>, ptr %i.x, align 4, !tbaa !13
  store <2 x float> <float f0x3F6A02E1, float 1.000000e+00>, ptr %i.ab, align 4, !tbaa !13
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.an = call i32 (...) %i.am() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.t, i32 noundef %i.an, ptr noundef nonnull %1, i32 noundef 520, i32 noundef 1, i32 noundef 3) #22
  store i32 2, ptr %i.e, align 4, !tbaa !14
  store <2 x float> splat (float 1.000000e+00), ptr %i.ac, align 8, !tbaa !13
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 8.000000e-02, float 6.400000e-03, float 1.700000e-01, float f0x3CECBFB2, float 5.000000e-01, float 2.500000e-01>, ptr %1, align 8, !tbaa !13
  store <4 x float> <float f0x3F547AE1, float f0x3F305BC0, float 9.200000e-01, float 8.464000e-01>, ptr %i.q, align 8, !tbaa !13
  %i.ao = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.ap = call i32 (...) %i.ao() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.t, i32 noundef %i.ap, ptr noundef nonnull %1, i32 noundef 520, i32 noundef 1, i32 noundef 3) #22
  store float f0x3E90D0C2, ptr %i.x, align 4, !tbaa !51
  store float f0x3ED31A5F, ptr %i.y, align 4, !tbaa !51
  store float f0x3F3504F3, ptr %i.z, align 4, !tbaa !51
  store float f0x3F693A23, ptr %i.aa, align 4, !tbaa !51
  store float f0x3F758BEC, ptr %i.ab, align 4, !tbaa !51
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.ar = call i32 (...) %i.aq() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.t, i32 noundef %i.ar, ptr noundef nonnull %1, i32 noundef 520, i32 noundef 1, i32 noundef 3) #22
  store float f0x3DE36469, ptr %i.x, align 4, !tbaa !51
  store float f0x3E67F1D7, ptr %i.y, align 4, !tbaa !51
  store float f0x3F15C01A, ptr %i.z, align 4, !tbaa !51
  store float f0x3F5F3124, ptr %i.aa, align 4, !tbaa !51
  store float f0x3F70EC58, ptr %i.ab, align 4, !tbaa !51
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.at = call i32 (...) %i.as() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.t, i32 noundef %i.at, ptr noundef nonnull %1, i32 noundef 520, i32 noundef 1, i32 noundef 3) #22
  store float f0x3D698BC0, ptr %i.x, align 4, !tbaa !51
  store float f0x3E000F58, ptr %i.y, align 4, !tbaa !51
  store float f0x3ED413CC, ptr %i.z, align 4, !tbaa !51
  store float f0x3F471662, ptr %i.aa, align 4, !tbaa !51
  store float f0x3F6461AC, ptr %i.ab, align 4, !tbaa !51
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.av = call i32 (...) %i.au() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.t, i32 noundef %i.av, ptr noundef nonnull %1, i32 noundef 520, i32 noundef 1, i32 noundef 3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @dt_develop_blend_init_blend_parameters(ptr noundef nonnull %2, i32 noundef 3) #22
  br label %bb.b

bb.a:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.b:                                             ; preds = %.preheader137.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader137.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [552 x i8], ptr @preset_camera_curves, i64 %indvars.iv ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !168 ; 5 uses
  %i.ay = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.az = call i32 (...) %i.ay() #22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  call void @dt_gui_presets_add_with_blendop(ptr noundef %i.ax, ptr noundef nonnull %i.t, i32 noundef %i.az, ptr noundef nonnull %i.ba, i32 noundef 520, ptr noundef nonnull %2, i32 noundef 1) #22
  %i.bb = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.bc = call i32 (...) %i.bb() #22
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !170
  call void @dt_gui_presets_update_mml(ptr noundef %i.ax, ptr noundef nonnull %i.t, i32 noundef %i.bc, ptr noundef %i.be, ptr noundef %i.bg, ptr noundef nonnull @.str.6) #22
  %i.bh = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.bi = call i32 (...) %i.bh() #22
  call void @dt_gui_presets_update_iso(ptr noundef %i.ax, ptr noundef nonnull %i.t, i32 noundef %i.bi, float noundef 0.000000e+00, float noundef f0x7F7FFFFF) #22
  %i.bj = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.bk = call i32 (...) %i.bj() #22
  call void @dt_gui_presets_update_format(ptr noundef %i.ax, ptr noundef nonnull %i.t, i32 noundef %i.bk, i32 noundef 2) #22
  %i.bl = load ptr, ptr %i.u, align 8, !tbaa !166
  %i.bm = call i32 (...) %i.bl() #22
  call void @dt_gui_presets_update_filter(ptr noundef %i.ax, ptr noundef nonnull %i.t, i32 noundef %i.bm, i32 noundef 1) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.a, label %bb.b
}

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_1
