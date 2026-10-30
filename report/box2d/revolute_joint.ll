Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/revolute_joint?download=true
inline.NumInlined: 73
inline.NumDeleted: 22
begin_hunk_0_@b2SolveRevoluteJoint:bb.a
  br i1 %brmerge258, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.da = fsub float %.0236, %.0
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.dc = load float, ptr %i.db, align 4, !tbaa !144
  %i.dd = fsub float %i.da, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.df = load float, ptr %i.de, align 4, !tbaa !98
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !106 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load float, ptr %i.di, align 8, !tbaa !99
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !145
  %i.dm = fmul float %i.dj, %i.dl                 ; 3 uses
  %i.dn = fmul float %i.df, %i.dd
  %i.do = fsub float %i.dh, %i.dn                 ; 3 uses
  %i.dp = fneg float %i.dm                        ; 2 uses
  %i.dq = fcmp olt float %i.do, %i.dp
  %i.dr = fcmp ogt float %i.do, %i.dm
  %i.ds = select i1 %i.dr, float %i.dm, float %i.do
  %i.dt = select i1 %i.dq, float %i.dp, float %i.ds ; 2 uses
  store float %i.dt, ptr %i.dg, align 4, !tbaa !106
  %i.du = fsub float %i.dt, %i.dh                 ; 2 uses
  %i.dv = fmul float %i.g, %i.du
  %i.dw = fsub float %.0, %i.dv
  %i.dx = fmul float %i.h, %i.du
  %i.dy = fadd float %.0236, %i.dx
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1237 = phi float [ %i.dy, %bb.h ], [ %.0236, %bb.g ] ; 3 uses
  %.1 = phi float [ %i.dw, %bb.h ], [ %.0, %bb.g ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 210
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !113, !range !70, !noundef !71
  %i.eb = trunc nuw i8 %i.ea to i1
  %.not259 = xor i1 %i.eb, true
  %brmerge261 = select i1 %.not259, i1 true, i1 %i.bh
  br i1 %brmerge261, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ec = tail call float @b2Atan2(float noundef %i.be, float noundef %i.bf) #11 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !114
  %i.ef = fsub float %i.ec, %i.ee                 ; 3 uses
  %i.eg = fcmp ogt float %i.ef, 0.000000e+00
  br i1 %i.eg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !146
  %i.ej = fmul float %i.ef, %i.ei
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  br i1 %2, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.el = load float, ptr %i.ek, align 4, !tbaa !147
  %i.em = fmul float %i.ef, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.eo = load float, ptr %i.en, align 4, !tbaa !148
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !149
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.0243 = phi float [ 0.000000e+00, %bb.k ], [ %i.eq, %bb.m ], [ 0.000000e+00, %bb.l ]
  %.0242 = phi float [ 1.000000e+00, %bb.k ], [ %i.eo, %bb.m ], [ 1.000000e+00, %bb.l ]
  %.0241 = phi float [ %i.ej, %bb.k ], [ %i.em, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.er = fsub float %.1237, %.1
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !107 ; 3 uses
  %i.eu = fneg float %.0242
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !98 ; 2 uses
  %i.ex = fmul float %i.ew, %i.eu
  %i.ey = fadd float %i.er, %.0241
  %i.ez = fmul float %i.ey, %i.ex
  %i.fa = fmul float %.0243, %i.et
  %i.fb = fsub float %i.ez, %i.fa
  %i.fc = fadd float %i.et, %i.fb                 ; 2 uses
  %i.fd = fcmp ogt float %i.fc, 0.000000e+00
  %i.fe = select i1 %i.fd, float %i.fc, float 0.000000e+00 ; 2 uses
  store float %i.fe, ptr %i.es, align 4, !tbaa !107
  %i.ff = fsub float %i.fe, %i.et                 ; 2 uses
  %i.fg = fmul float %i.g, %i.ff
  %i.fh = fsub float %.1, %i.fg                   ; 2 uses
  %i.fi = fmul float %i.h, %i.ff
  %i.fj = fadd float %.1237, %i.fi                ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !115
  %i.fm = fsub float %i.fl, %i.ec                 ; 3 uses
  %i.fn = fcmp ogt float %i.fm, 0.000000e+00
  br i1 %i.fn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !146
  %i.fq = fmul float %i.fm, %i.fp
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  br i1 %2, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !147
  %i.ft = fmul float %i.fm, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !148
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !149
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %.0246 = phi float [ %i.fq, %bb.o ], [ %i.ft, %bb.q ], [ 0.000000e+00, %bb.p ]
  %.0245 = phi float [ 1.000000e+00, %bb.o ], [ %i.fv, %bb.q ], [ 1.000000e+00, %bb.p ]
  %.0244 = phi float [ 0.000000e+00, %bb.o ], [ %i.fx, %bb.q ], [ 0.000000e+00, %bb.p ]
  %i.fy = fsub float %i.fh, %i.fj
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !83 ; 3 uses
  %i.gb = fneg float %.0245
  %i.gc = fmul float %i.ew, %i.gb
  %i.gd = fadd float %i.fy, %.0246
  %i.ge = fmul float %i.gd, %i.gc
  %i.gf = fmul float %.0244, %i.ga
  %i.gg = fsub float %i.ge, %i.gf
  %i.gh = fadd float %i.ga, %i.gg                 ; 2 uses
  %i.gi = fcmp ogt float %i.gh, 0.000000e+00
  %i.gj = select i1 %i.gi, float %i.gh, float 0.000000e+00 ; 2 uses
  store float %i.gj, ptr %i.fz, align 4, !tbaa !83
  %i.gk = fsub float %i.gj, %i.ga                 ; 2 uses
  %i.gl = fmul float %i.g, %i.gk
  %i.gm = fadd float %i.fh, %i.gl
  %i.gn = fmul float %i.h, %i.gk
  %i.go = fsub float %i.fj, %i.gn
  br label %bb.s

bb.s:                                             ; preds = %bb.i, %bb.r
  %.2238 = phi float [ %i.go, %bb.r ], [ %.1237, %bb.i ] ; 2 uses
  %.2 = phi float [ %i.gm, %bb.r ], [ %.1, %bb.i ] ; 2 uses
  %i.gp = load <2 x float>, ptr %i.ad, align 4    ; 2 uses
  %i.gq = load <2 x float>, ptr %i.ae, align 4    ; 2 uses
  %i.gr = load <2 x float>, ptr %i.al, align 4    ; 2 uses
  %i.gs = load <2 x float>, ptr %i.am, align 4    ; 2 uses
  %.sroa.01.0.vec.extract.i297 = extractelement <2 x float> %.sroa.0131.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i300 = extractelement <2 x float> %.sroa.0131.0.copyload, i64 1
  %i.gt = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gu = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = fmul <2 x float> %i.gt, %i.gu           ; 2 uses
  %i.gw = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gx = fmul <2 x float> %i.gp, %i.gw           ; 2 uses
  %i.gy = fsub <2 x float> %i.gv, %i.gx           ; 2 uses
  %i.gz = fadd <2 x float> %i.gv, %i.gx           ; 2 uses
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> %i.gy, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.hb = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = fmul <2 x float> %i.gr, %i.hb           ; 2 uses
  %i.hd = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.he = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hf = fmul <2 x float> %i.hd, %i.he           ; 2 uses
  %i.hg = fadd <2 x float> %i.hc, %i.hf           ; 2 uses
  %i.hh = fsub <2 x float> %i.hc, %i.hf           ; 2 uses
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> %i.hg, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.hj = insertelement <2 x float> poison, float %.2238, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hm = fmul <2 x float> %i.hk, %i.hl           ; 2 uses
  %i.hn = fadd <2 x float> %.sroa.0117.0.copyload, %i.hm
  %i.ho = fsub <2 x float> %.sroa.0117.0.copyload, %i.hm
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> %i.hn, <2 x i32> <i32 0, i32 3>
  %i.hq = insertelement <2 x float> poison, float %.2, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = fmul <2 x float> %i.hr, %i.ha           ; 2 uses
  %i.ht = fadd <2 x float> %.sroa.0131.0.copyload, %i.hs
  %i.hu = fsub <2 x float> %.sroa.0131.0.copyload, %i.hs
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> %i.ht, <2 x i32> <i32 0, i32 3>
  %i.hw = fsub <2 x float> %i.hp, %i.hv
  br i1 %2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.021.0.copyload = load <2 x float>, ptr %i.hx, align 4, !tbaa !81
  %i.hy = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.020.0.copyload = load <2 x float>, ptr %i.hy, align 4, !tbaa !81
  %i.hz = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ib = load <2 x float>, ptr %i.ia, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.id = load float, ptr %i.ic, align 4, !tbaa !147
  %i.ie = fsub <2 x float> %.sroa.020.0.copyload, %.sroa.021.0.copyload
  %i.if = fsub <2 x float> %i.hi, %i.hz
  %i.ig = fadd <2 x float> %i.if, %i.ie
  %i.ih = fadd <2 x float> %i.ib, %i.ig
  %i.ii = insertelement <2 x float> poison, float %i.id, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = fmul <2 x float> %i.ij, %i.ih
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.im = load <2 x float>, ptr %i.il, align 4, !tbaa !81 ; 2 uses
  %4 = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.025.0 = phi <2 x float> [ %i.ik, %bb.t ], [ zeroinitializer, %bb.s ]
  %5 = phi <2 x float> [ %4, %bb.t ], [ zeroinitializer, %bb.s ]
  %i.in = phi <2 x float> [ %i.im, %bb.t ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.s ]
  %i.io = fmul <2 x float> %i.ha, %i.ha
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.iq = fmul <2 x float> %i.hi, %i.hi
  %i.ir = extractelement <2 x float> %i.gz, i64 0
  %i.is = fneg float %i.ir
  %i.it = extractelement <2 x float> %i.gy, i64 1
  %i.iu = fmul float %i.it, %i.is
  %i.iv = fmul float %i.g, %i.iu
  %i.iw = extractelement <2 x float> %i.hh, i64 0 ; 2 uses
  %i.ix = extractelement <2 x float> %i.hg, i64 1 ; 2 uses
  %i.iy = fmul float %i.ix, %i.iw
  %i.iz = fmul float %i.h, %i.iy
  %i.ja = extractelement <2 x float> %i.in, i64 0
  %i.jb = fneg float %i.ja
  %i.jc = fadd float %i.e, %i.f
  %i.jd = fsub float %i.iv, %i.iz                 ; 3 uses
  %i.je = insertelement <2 x float> poison, float %i.g, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x float> %i.jf, %i.ip
  %i.jh = insertelement <2 x float> poison, float %i.jc, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = fadd <2 x float> %i.ji, %i.jg
  %i.jk = insertelement <2 x float> poison, float %i.h, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = fmul <2 x float> %i.jl, %i.iq
  %i.jn = fadd <2 x float> %i.jj, %i.jm           ; 3 uses
  %i.jo = fadd <2 x float> %i.hw, %.sroa.025.0    ; 2 uses
  %shift372 = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop373 = fmul <2 x float> %shift372, %i.jn
  %i.jp = extractelement <2 x float> %foldExtExtBinop373, i64 0
  %i.jq = fmul float %i.jd, %i.jd
  %i.jr = fsub float %i.jp, %i.jq                 ; 3 uses
  %i.js = fcmp une float %i.jr, 0.000000e+00
  %i.jt = fdiv float 1.000000e+00, %i.jr
  %.0.i = select i1 %i.js, float %i.jt, float %i.jr
  %i.ju = fmul <2 x float> %i.jn, %i.jo
  %i.jv = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jy = fmul <2 x float> %i.jw, %i.jx
  %i.jz = fsub <2 x float> %i.ju, %i.jy
  %i.ka = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x float> %i.kb, %i.jz
  %i.kd = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kf = fmul <2 x float> %i.kc, %i.ke
  %i.kg = load <2 x float>, ptr %i.i, align 4, !tbaa !81 ; 2 uses
  %i.kh = fmul <2 x float> %5, %i.kg
  %i.ki = fsub <2 x float> %i.kf, %i.kh           ; 5 uses
  %i.kj = extractelement <2 x float> %i.ki, i64 0 ; 2 uses
  %i.kk = extractelement <2 x float> %i.ki, i64 1 ; 2 uses
  %i.kl = fadd <2 x float> %i.kg, %i.ki
  store <2 x float> %i.kl, ptr %i.i, align 4, !tbaa !81
  %i.km = insertelement <2 x float> poison, float %i.f, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ko = fmul <2 x float> %i.kn, %i.ki
  %i.kp = fadd <2 x float> %.sroa.0117.0.copyload, %i.ko
  %i.kq = fmul float %i.iw, %i.kk
  %i.kr = fmul float %i.ix, %i.kj
  %i.ks = fsub float %i.kq, %i.kr
  %i.kt = fmul float %i.h, %i.ks
  %i.ku = fadd float %.2238, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !109
  %i.kx = and i32 %i.kw, 512
  %.not = icmp eq i32 %i.kx, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ky = fmul <2 x float> %i.ha, %i.ki           ; 2 uses
  %shift375 = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop376 = fsub <2 x float> %shift375, %i.ky
  %i.kz = extractelement <2 x float> %foldExtExtBinop376, i64 0
  %i.la = fmul float %i.e, %i.kj
  %i.lb = fsub float %.sroa.01.0.vec.extract.i297, %i.la
  %.sroa.03.0.vec.insert.i = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.lc = fmul float %i.e, %i.kk
  %i.ld = fsub float %.sroa.01.4.vec.extract.i300, %i.lc
  %.sroa.03.4.vec.insert.i = insertelement <2 x float> %.sroa.03.0.vec.insert.i, float %i.ld, i64 1
  %i.le = fmul float %i.g, %i.kz
  %i.lf = fsub float %.2, %i.le
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.q, align 4, !tbaa !81
  store float %i.lf, ptr %i.z, align 4, !tbaa !110
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.lg = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !109
  %i.li = and i32 %i.lh, 512
  %.not253 = icmp eq i32 %i.li, 0
  br i1 %.not253, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store <2 x float> %i.kp, ptr %i.y, align 4, !tbaa !81
  store float %i.ku, ptr %i.ab, align 4, !tbaa !110
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b2DrawRevoluteJoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, <2 x float> %5, float noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <2 x float>, ptr %i.b, align 4      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load <2 x float>, ptr %i.d, align 4      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x float>, ptr %i.f, align 4      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load <2 x float>, ptr %i.h, align 4      ; 4 uses
  %i.j = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %5, %i.j                ; 2 uses
  %i.l = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.m = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.n = fmul <2 x float> %i.l, %i.m              ; 2 uses
  %i.o = fsub <2 x float> %i.k, %i.n
  %i.p = fadd <2 x float> %i.k, %i.n
  %i.q = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 0, i32 3>
  %i.r = fadd <2 x float> %4, %i.q                ; 11 uses
  %i.s = shufflevector <2 x float> %5, <2 x float> %3, <2 x i32> <i32 0, i32 2>
  %i.t = shufflevector <2 x float> %i.i, <2 x float> %i.e, <2 x i32> <i32 1, i32 3>
  %i.u = fmul <2 x float> %i.s, %i.t
  %i.v = shufflevector <2 x float> %5, <2 x float> %3, <2 x i32> <i32 1, i32 3>
  %i.w = shufflevector <2 x float> %i.i, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %i.x = fmul <2 x float> %i.v, %i.w
  %i.y = fadd <2 x float> %i.x, %i.u              ; 7 uses
  %i.z = shufflevector <2 x float> %3, <2 x float> %5, <2 x i32> <i32 0, i32 2>
  %i.aa = shufflevector <2 x float> %i.e, <2 x float> %i.i, <2 x i32> <i32 0, i32 2>
  %i.ab = fmul <2 x float> %i.z, %i.aa
  %i.ac = shufflevector <2 x float> %3, <2 x float> %5, <2 x i32> <i32 1, i32 3>
  %i.ad = shufflevector <2 x float> %i.e, <2 x float> %i.i, <2 x i32> <i32 1, i32 3>
  %i.ae = fmul <2 x float> %i.ac, %i.ad
  %i.af = fsub <2 x float> %i.ab, %i.ae           ; 8 uses
  %i.ag = fmul float %6, 2.500000e-01             ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !152
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !153
  tail call void %i.ai(<2 x float> %i.r, float noundef %i.ag, i32 noundef 8421504, ptr noundef %i.ak) #11
  %i.al = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.am = extractelement <2 x float> %i.y, i64 1  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !153
  %i.aq = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.as = fmul <2 x float> %i.aq, %i.ar           ; 2 uses
  %i.at = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %3, %i.at              ; 2 uses
  %i.av = fsub <2 x float> %i.au, %i.as
  %i.aw = fadd <2 x float> %i.au, %i.as
  %i.ax = shufflevector <2 x float> %i.av, <2 x float> %i.aw, <2 x i32> <i32 0, i32 3>
  %i.ay = fadd <2 x float> %2, %i.ax              ; 5 uses
  %i.az = fmul float %i.ag, %i.al
  %i.ba = fmul float %i.am, 0.000000e+00
  %i.bb = fsub float %i.az, %i.ba
  %i.bc = fmul float %i.ag, %i.am
  %i.bd = fmul float %i.al, 0.000000e+00
  %i.be = fadd float %i.bc, %i.bd
  %i.bf = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.be, i64 1
  %i.bh = fadd <2 x float> %i.ay, %i.bg
  tail call void %i.ao(<2 x float> %i.ay, <2 x float> %i.bh, i32 noundef 8421504, ptr noundef %i.ap) #11
  %i.bi = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bk = shufflevector <2 x float> %i.af, <2 x float> %i.y, <2 x i32> <i32 1, i32 2>
  %i.bl = fmul <2 x float> %i.bj, %i.bk           ; 2 uses
  %i.bm = shufflevector <2 x float> %i.y, <2 x float> %i.af, <2 x i32> <i32 0, i32 3>
  %i.bn = fmul <2 x float> %i.bm, zeroinitializer ; 2 uses
  %i.bo = fsub <2 x float> %i.bl, %i.bn
  %i.bp = fadd <2 x float> %i.bl, %i.bn
  %i.bq = shufflevector <2 x float> %i.bo, <2 x float> %i.bp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.br = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.bs = fadd <2 x float> %i.r, %i.bq
  %i.bt = load ptr, ptr %i.aj, align 8, !tbaa !153
  tail call void %i.br(<2 x float> %i.r, <2 x float> %i.bs, i32 noundef 255, ptr noundef %i.bt) #11
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 109 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !155, !range !70, !noundef !71
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bx = fmul <2 x float> %i.af, %i.y            ; 2 uses
  %shift = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.bx, %shift
  %i.by = extractelement <2 x float> %foldExtExtBinop, i64 0
  %shift167 = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop168 = fmul <2 x float> %i.af, %shift167
  %i.bz = extractelement <2 x float> %foldExtExtBinop168, i64 0
  %i.ca = extractelement <2 x float> %i.y, i64 0
  %i.cb = fmul float %i.am, %i.ca
  %i.cc = fadd float %i.bz, %i.cb
  %i.cd = tail call float @b2Atan2(float noundef %i.by, float noundef %i.cc) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ce = fmul float %i.cd, 1.800000e+02
  %i.cf = fdiv float %i.ce, f0x40490FDB
  %i.cg = fpext float %i.cf to double
  %i.ch = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str, double noundef %i.cg) #11 ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !156
  %i.ck = fadd <2 x float> %i.ay, %i.bq
  %i.cl = load ptr, ptr %i.aj, align 8, !tbaa !153
  call void %i.cj(<2 x float> %i.ck, ptr noundef nonnull %i.a, i32 noundef 16777215, ptr noundef %i.cl) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 210
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !113, !range !70, !noundef !71
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !115
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !114
  %i.ct = call <2 x float> @b2ComputeCosSin(float noundef %i.cs) #11 ; 2 uses
  %i.cu = call <2 x float> @b2ComputeCosSin(float noundef %i.cq) #11 ; 2 uses
  %i.cv = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.cw = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cx = fmul <2 x float> %i.cw, %i.ct           ; 2 uses
  %i.cy = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cz = fmul <2 x float> %i.cy, %i.ct
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.db = fsub <2 x float> %i.cx, %i.da
  %i.dc = fadd <2 x float> %i.cx, %i.da
  %i.dd = shufflevector <2 x float> %i.db, <2 x float> %i.dc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.de = fmul <2 x float> %i.bj, %i.dd           ; 2 uses
  %i.df = fmul <2 x float> %i.dd, zeroinitializer
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dh = fsub <2 x float> %i.de, %i.dg
  %i.di = fadd <2 x float> %i.de, %i.dg
  %i.dj = shufflevector <2 x float> %i.dh, <2 x float> %i.di, <2 x i32> <i32 0, i32 3>
  %i.dk = fadd <2 x float> %i.r, %i.dj
  %i.dl = load ptr, ptr %i.aj, align 8, !tbaa !153
  call void %i.cv(<2 x float> %i.r, <2 x float> %i.dk, i32 noundef 32768, ptr noundef %i.dl) #11
  %i.dm = load ptr, ptr %i.an, align 8, !tbaa !154
  %i.dn = fmul <2 x float> %i.cw, %i.cu           ; 2 uses
  %i.do = fmul <2 x float> %i.cy, %i.cu
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dq = fsub <2 x float> %i.dn, %i.dp
  %i.dr = fadd <2 x float> %i.dn, %i.dp
  %i.ds = shufflevector <2 x float> %i.dq, <2 x float> %i.dr, <2 x i32> <i32 0, i32 3> ; 2 uses
end_hunk_0
