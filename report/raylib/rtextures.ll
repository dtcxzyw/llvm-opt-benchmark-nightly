inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@GenImagePerlinNoise:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32                    ; 2 uses
  %i.ci = add nuw nsw i32 %i.bg, %.01819.i
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = add nuw nsw i32 %i.bh, %i.ch
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = zext i8 %i.cq to i32                    ; 2 uses
  %i.cs = add nuw nsw i32 %i.bj, %i.ch
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i32                    ; 2 uses
  %i.cx = add nuw nsw i32 %i.bh, %i.cm
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i32                    ; 2 uses
  %i.dc = add nuw nsw i32 %i.bj, %i.cm
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i32                    ; 2 uses
  %i.dh = add nuw nsw i32 %i.bk, %i.cr
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load float, ptr %i.dn, align 8
  %i.dp = add nuw nsw i32 %i.bm, %i.cr
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = fadd float %i.bx, -1.000000e+00
  %i.du = zext i8 %i.ds to i64
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load float, ptr %i.dw, align 8
  %i.dy = add nuw nsw i32 %i.bk, %i.cw
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = fadd float %i.bq, -1.000000e+00
  %i.ed = zext i8 %i.eb to i64
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load float, ptr %i.ef, align 8
  %i.eh = add nuw nsw i32 %i.bm, %i.cw
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load float, ptr %i.en, align 8
  %i.ep = add nuw nsw i32 %i.bk, %i.db
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load float, ptr %i.ev, align 8
  %i.ex = add nuw nsw i32 %i.bm, %i.db
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load float, ptr %i.fd, align 8
  %i.ff = add nuw nsw i32 %i.bk, %i.dg
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load float, ptr %i.fl, align 8
  %i.fn = add nuw nsw i32 %i.bm, %i.dg
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = zext i8 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load float, ptr %i.ft, align 8
  %i.fv = extractelement <2 x float> %i.an, i64 1
  %i.fw = fsub float %i.fv, %i.bn                 ; 6 uses
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fw, float 6.000000e+00, float -1.500000e+01)
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.fw, float 1.000000e+01)
  %i.fz = fmul float %i.fw, %i.fy
  %i.ga = fmul float %i.fw, %i.fz
  %i.gb = fmul float %i.fw, %i.ga
  %i.gc = load <2 x float>, ptr %i.dm, align 16   ; 2 uses
  %i.gd = load <2 x float>, ptr %i.dv, align 16   ; 2 uses
  %i.ge = load <2 x float>, ptr %i.ee, align 16   ; 2 uses
  %i.gf = load <2 x float>, ptr %i.em, align 16   ; 2 uses
  %i.gg = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fadd <2 x float> %i.gh, <float -1.000000e+00, float -0.000000e+00> ; 4 uses
  %i.gj = load <2 x float>, ptr %i.eu, align 16   ; 2 uses
  %i.gk = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gm = shufflevector <2 x float> %i.gj, <2 x float> %i.gc, <2 x i32> <i32 1, i32 3>
  %i.gn = fmul <2 x float> %i.gl, %i.gm
  %i.go = shufflevector <2 x float> %i.gj, <2 x float> %i.gc, <2 x i32> <i32 0, i32 2>
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gi, <2 x float> %i.gn)
  %i.gq = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.gr = insertelement <2 x float> %i.gq, float %i.do, i64 1
  %i.gs = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.gt, <2 x float> %i.gp) ; 2 uses
  %i.gv = load <2 x float>, ptr %i.fc, align 16   ; 2 uses
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> %i.gd, <2 x i32> <i32 1, i32 3>
  %i.gx = fmul <2 x float> %i.gl, %i.gw
  %i.gy = shufflevector <2 x float> %i.gv, <2 x float> %i.gd, <2 x i32> <i32 0, i32 2>
  %i.gz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.gi, <2 x float> %i.gx)
  %i.ha = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.hb = insertelement <2 x float> %i.ha, float %i.dx, i64 1
  %i.hc = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.he = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.hd, <2 x float> %i.gz)
  %i.hf = load <2 x float>, ptr %i.fk, align 16   ; 2 uses
  %i.hg = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hi = shufflevector <2 x float> %i.hf, <2 x float> %i.ge, <2 x i32> <i32 1, i32 3>
  %i.hj = fmul <2 x float> %i.hh, %i.hi
  %i.hk = shufflevector <2 x float> %i.hf, <2 x float> %i.ge, <2 x i32> <i32 0, i32 2>
  %i.hl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hk, <2 x float> %i.gi, <2 x float> %i.hj)
  %i.hm = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.hn = insertelement <2 x float> %i.hm, float %i.eg, i64 1
  %i.ho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hn, <2 x float> %i.gt, <2 x float> %i.hl) ; 2 uses
  %i.hp = load <2 x float>, ptr %i.fs, align 16   ; 2 uses
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> %i.gf, <2 x i32> <i32 1, i32 3>
  %i.hr = fmul <2 x float> %i.hh, %i.hq
  %i.hs = shufflevector <2 x float> %i.hp, <2 x float> %i.gf, <2 x i32> <i32 0, i32 2>
  %i.ht = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hs, <2 x float> %i.gi, <2 x float> %i.hr)
  %i.hu = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.hv = insertelement <2 x float> %i.hu, float %i.eo, i64 1
  %i.hw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hv, <2 x float> %i.hd, <2 x float> %i.ht)
  %i.hx = fsub <2 x float> %i.he, %i.gu
  %i.hy = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ia = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.hz, <2 x float> %i.gu) ; 2 uses
  %i.ib = fsub <2 x float> %i.hw, %i.ho
  %i.ic = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> %i.hz, <2 x float> %i.ho)
  %i.id = fsub <2 x float> %i.ic, %i.ia
  %i.ie = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.if = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ig = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.if, <2 x float> %i.ia) ; 2 uses
  %i.ih = extractelement <2 x float> %i.ig, i64 0
  %i.ii = extractelement <2 x float> %i.ig, i64 1 ; 2 uses
  %i.ij = fsub float %i.ih, %i.ii
  %i.ik = tail call noundef float @llvm.fmuladd.f32(float %i.ij, float %i.gb, float %i.ii)
  %i.il = extractelement <2 x float> %i.ak, i64 0
  %i.im = tail call float @llvm.fmuladd.f32(float %i.ik, float %i.il, float %.022.i) ; 3 uses
  %i.in = fmul <2 x float> %i.ak, <float 5.000000e-01, float 2.000000e+00>
  %i.io = add nuw nsw i32 %.01819.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.io, 6
  br i1 %exitcond.not.i, label %stb_perlin_fbm_noise3.exit, label %.lr.ph.i

stb_perlin_fbm_noise3.exit:                       ; preds = %.lr.ph.i
  %i.ip = fcmp olt float %i.im, -1.000000e+00
  %.041 = select i1 %i.ip, float -1.000000e+00, float %i.im ; 2 uses
  %i.iq = fcmp ogt float %.041, 1.000000e+00
  %.1 = select i1 %i.iq, float 1.000000e+00, float %.041
  %i.ir = fadd float %.1, 1.000000e+00
  %i.is = fmul float %i.ir, 5.000000e-01
  %i.it = fmul float %i.is, 2.550000e+02
  %i.iu = fptoui float %i.it to i8                ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 4 uses
  store i8 %i.iu, ptr %gep, align 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 1
  store i8 %i.iu, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 2
  store i8 %i.iu, ptr %.sroa.3.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 3
  store i8 -1, ptr %.sroa.4.0..sroa_idx, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nounwind uwtable
define void @GenImageCellular(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 2 uses
  %i.e = sdiv i32 %1, %3                          ; 15 uses
  %i.f = sdiv i32 %2, %3                          ; 8 uses
  %i.g = mul nsw i32 %i.f, %i.e                   ; 3 uses
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #53 ; 11 uses
  %i.k = icmp sgt i32 %i.g, 0
  br i1 %i.k, label %.lr.ph, label %.preheader88

.lr.ph:                                           ; preds = %bb.a
  %i.l = add nsw i32 %3, -1                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.b

.preheader88:                                     ; preds = %bb.b, %bb.a
  %i.m = icmp sgt i32 %2, 0
  br i1 %i.m, label %.lr.ph97, label %._crit_edge98.split

.lr.ph97:                                         ; preds = %.preheader88
  %i.n = icmp sgt i32 %1, 0
  %i.o = sitofp i32 %3 to float
  br i1 %i.n, label %.lr.ph95.preheader, label %._crit_edge98.split

.lr.ph95.preheader:                               ; preds = %.lr.ph97
  %i.p = sext i32 %i.e to i64
  %i.q = sext i32 %i.f to i64                     ; 3 uses
  %i.r = zext nneg i32 %1 to i64                  ; 2 uses
  %wide.trip.count128 = zext nneg i32 %2 to i64
  br label %.lr.ph95

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.s = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.t = sdiv i32 %i.s, %i.e
  %i.u = tail call i32 @GetRandomValue(i32 noundef 0, i32 noundef %i.l) #52
  %i.v = srem i32 %i.s, %i.e
  %i.w = tail call i32 @GetRandomValue(i32 noundef 0, i32 noundef %i.l) #52
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.y = mul nsw i32 %i.t, %3
  %i.z = mul nsw i32 %i.v, %3
  %i.aa = add nsw i32 %i.y, %i.u
  %i.ab = add nsw i32 %i.z, %i.w
  %i.ac = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %i.ad = insertelement <2 x i32> %i.ac, i32 %i.aa, i64 1
  %i.ae = sitofp <2 x i32> %i.ad to <2 x float>
  store <2 x float> %i.ae, ptr %i.x, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader88, label %bb.b

._crit_edge98.split:                              ; preds = %._crit_edge, %.lr.ph97, %.preheader88
  tail call void @free(ptr noundef %i.j) #52
  store ptr %i.d, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.ai, align 4
  ret void

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %._crit_edge
  %indvars.iv125 = phi i64 [ 0, %.lr.ph95.preheader ], [ %indvars.iv.next126, %._crit_edge ] ; 3 uses
  %i.aj = trunc nsw i64 %indvars.iv125 to i32     ; 2 uses
  %i.ak = sdiv i32 %i.aj, %3                      ; 22 uses
  %i.al = mul nuw nsw i64 %indvars.iv125, %i.r
  %i.am = sext i32 %i.ak to i64                   ; 3 uses
  %i.an = icmp sgt i32 %i.ak, 0
  %.not86 = icmp sle i32 %i.ak, %i.f
  %or.cond87 = and i1 %i.an, %.not86
  %i.ao = add nsw i32 %i.ak, -1
  %i.ap = mul i32 %i.ao, %i.e
  %i.aq = icmp sgt i32 %i.ak, -1
  %.not86.1 = icmp slt i32 %i.ak, %i.f
  %or.cond87.1 = and i1 %i.aq, %.not86.1
  %i.ar = mul i32 %i.ak, %i.e
  %i.as = add nsw i64 %i.am, 1                    ; 2 uses
  %i.at = icmp sgt i32 %i.ak, -2
  %.not86.2 = icmp slt i64 %i.as, %i.q
  %or.cond87.2 = and i1 %i.at, %.not86.2
  %i.au = trunc i64 %i.as to i32
  %i.av = mul i32 %i.e, %i.au
  %i.aw = icmp sgt i32 %i.ak, 0
  %.not86.1108 = icmp sle i32 %i.ak, %i.f
  %or.cond87.1109 = and i1 %i.aw, %.not86.1108
  %i.ax = add nsw i32 %i.ak, -1
  %i.ay = mul i32 %i.ax, %i.e
  %i.az = icmp sgt i32 %i.ak, -1
  %.not86.1.1 = icmp slt i32 %i.ak, %i.f
  %or.cond87.1.1 = and i1 %i.az, %.not86.1.1
  %i.ba = mul i32 %i.ak, %i.e
  %i.bb = add nsw i64 %i.am, 1                    ; 2 uses
  %i.bc = icmp sgt i32 %i.ak, -2
  %.not86.2.1 = icmp slt i64 %i.bb, %i.q
  %or.cond87.2.1 = and i1 %i.bc, %.not86.2.1
  %i.bd = trunc i64 %i.bb to i32
  %i.be = mul i32 %i.e, %i.bd
  %i.bf = icmp sgt i32 %i.ak, 0
  %.not86.2114 = icmp sle i32 %i.ak, %i.f
  %or.cond87.2115 = and i1 %i.bf, %.not86.2114
  %i.bg = add nsw i32 %i.ak, -1
  %i.bh = mul i32 %i.bg, %i.e
  %i.bi = icmp sgt i32 %i.ak, -1
  %.not86.1.2 = icmp slt i32 %i.ak, %i.f
  %or.cond87.1.2 = and i1 %i.bi, %.not86.1.2
  %i.bj = mul i32 %i.ak, %i.e
  %i.bk = add nsw i64 %i.am, 1                    ; 2 uses
  %i.bl = icmp sgt i32 %i.ak, -2
  %.not86.2.2 = icmp slt i64 %i.bk, %i.q
  %or.cond87.2.2 = and i1 %i.bl, %.not86.2.2
  %i.bm = trunc i64 %i.bk to i32
  %i.bn = mul i32 %i.e, %i.bm
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.al
  %i.bo = insertelement <2 x i32> poison, i32 %i.aj, i64 1 ; 9 uses
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit.2
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %._crit_edge98.split, label %.lr.ph95

bb.c:                                             ; preds = %.lr.ph95, %.loopexit.2
  %indvars.iv120 = phi i64 [ 0, %.lr.ph95 ], [ %indvars.iv.next121, %.loopexit.2 ] ; 3 uses
  %i.bp = trunc nsw i64 %indvars.iv120 to i32     ; 10 uses
  %i.bq = sdiv i32 %i.bp, %3                      ; 9 uses
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = add nsw i64 %i.br, -1                   ; 3 uses
  %i.bt = icmp sgt i32 %i.bq, 0
  %.not = icmp sle i32 %i.bq, %i.e
  %or.cond = and i1 %i.bt, %.not
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  br i1 %or.cond87, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.bu = trunc nsw i64 %i.bs to i32
  %i.bv = add i32 %i.ap, %i.bu
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bw
  %i.by = load <2 x float>, ptr %i.bx, align 4
  %i.bz = fptosi <2 x float> %i.by to <2 x i32>
  %i.ca = insertelement <2 x i32> %i.bo, i32 %i.bp, i64 0
  %i.cb = sub nsw <2 x i32> %i.ca, %i.bz
  %i.cc = sitofp <2 x i32> %i.cb to <2 x double>  ; 2 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 0
  %i.ce = extractelement <2 x double> %i.cc, i64 1
  %i.cf = tail call double @hypot(double noundef %i.cd, double noundef %i.ce) #52
  %i.cg = fptrunc double %i.cf to float
  %i.ch = tail call nsz float @llvm.minnum.f32(float %i.cg, float 6.553600e+04)
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.d
  %.2 = phi float [ 6.553600e+04, %.preheader ], [ %i.ch, %bb.d ] ; 2 uses
  br i1 %or.cond87.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ci = trunc nsw i64 %i.bs to i32
  %i.cj = add i32 %i.ar, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ck
  %i.cm = load <2 x float>, ptr %i.cl, align 4
  %i.cn = fptosi <2 x float> %i.cm to <2 x i32>
  %i.co = insertelement <2 x i32> %i.bo, i32 %i.bp, i64 0
  %i.cp = sub nsw <2 x i32> %i.co, %i.cn
  %i.cq = sitofp <2 x i32> %i.cp to <2 x double>  ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 0
  %i.cs = extractelement <2 x double> %i.cq, i64 1
  %i.ct = tail call double @hypot(double noundef %i.cr, double noundef %i.cs) #52
  %i.cu = fptrunc double %i.ct to float
  %i.cv = tail call nsz float @llvm.minnum.f32(float %.2, float %i.cu)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.1 = phi float [ %.2, %bb.e ], [ %i.cv, %bb.f ] ; 2 uses
  br i1 %or.cond87.2, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.cw = trunc nsw i64 %i.bs to i32
  %i.cx = add i32 %i.av, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cy
  %i.da = load <2 x float>, ptr %i.cz, align 4
  %i.db = fptosi <2 x float> %i.da to <2 x i32>
  %i.dc = insertelement <2 x i32> %i.bo, i32 %i.bp, i64 0
  %i.dd = sub nsw <2 x i32> %i.dc, %i.db
  %i.de = sitofp <2 x i32> %i.dd to <2 x double>  ; 2 uses
  %i.df = extractelement <2 x double> %i.de, i64 0
  %i.dg = extractelement <2 x double> %i.de, i64 1
  %i.dh = tail call double @hypot(double noundef %i.df, double noundef %i.dg) #52
  %i.di = fptrunc double %i.dh to float
  %i.dj = tail call nsz float @llvm.minnum.f32(float %.2.1, float %i.di)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.c
  %.3 = phi float [ 6.553600e+04, %bb.c ], [ %.2.1, %bb.g ], [ %i.dj, %bb.h ] ; 3 uses
  %i.dk = icmp sgt i32 %i.bq, -1
  %.not.1 = icmp slt i32 %i.bq, %i.e
  %or.cond.1 = and i1 %i.dk, %.not.1
  br i1 %or.cond.1, label %.preheader.1, label %.loopexit.1

.preheader.1:                                     ; preds = %.loopexit
  br i1 %or.cond87.1109, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader.1
  %i.dl = add i32 %i.bq, %i.ay
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.dm
  %i.do = load <2 x float>, ptr %i.dn, align 4
  %i.dp = fptosi <2 x float> %i.do to <2 x i32>
  %i.dq = insertelement <2 x i32> %i.bo, i32 %i.bp, i64 0
  %i.dr = sub nsw <2 x i32> %i.dq, %i.dp
  %i.ds = sitofp <2 x i32> %i.dr to <2 x double>  ; 2 uses
  %i.dt = extractelement <2 x double> %i.ds, i64 0
  %i.du = extractelement <2 x double> %i.ds, i64 1
  %i.dv = tail call double @hypot(double noundef %i.dt, double noundef %i.du) #52
  %i.dw = fptrunc double %i.dv to float
  %i.dx = tail call nsz float @llvm.minnum.f32(float %.3, float %i.dw)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader.1
  %.2.1113 = phi float [ %.3, %.preheader.1 ], [ %i.dx, %bb.i ] ; 2 uses
  br i1 %or.cond87.1.1, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dy = add i32 %i.bq, %i.ba
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.dz
  %i.eb = load <2 x float>, ptr %i.ea, align 4
  %i.ec = fptosi <2 x float> %i.eb to <2 x i32>
  %i.ed = insertelement <2 x i32> %i.bo, i32 %i.bp, i64 0
  %i.ee = sub nsw <2 x i32> %i.ed, %i.ec
  %i.ef = sitofp <2 x i32> %i.ee to <2 x double>  ; 2 uses
  %i.eg = extractelement <2 x double> %i.ef, i64 0
  %i.eh = extractelement <2 x double> %i.ef, i64 1
  %i.ei = tail call double @hypot(double noundef %i.eg, double noundef %i.eh) #52
  %i.ej = fptrunc double %i.ei to float
  %i.ek = tail call nsz float @llvm.minnum.f32(float %.2.1113, float %i.ej)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.1.1 = phi float [ %.2.1113, %bb.j ], [ %i.ek, %bb.k ] ; 2 uses
  br i1 %or.cond87.2.1, label %bb.m, label %.loopexit.1

bb.m:                                             ; preds = %bb.l
  %i.el = add i32 %i.bq, %i.be
  %i.em = sext i32 %i.el to i64
end_hunk_0
begin_hunk_1_@ImageDrawPixel:bb.a
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr [2 x i8], ptr %i.lc, i64 %i.lh
  %i.lj = getelementptr i8, ptr %i.li, i64 4
  store i16 %i.lb, ptr %i.lj, align 2
  br label %bb.r

bb.q:                                             ; preds = %bb.d
  %i.lk = insertelement <4 x i8> poison, i8 %.sroa.0172.0.extract.trunc, i64 0
  %i.ll = insertelement <4 x i8> %i.lk, i8 %.sroa.14.0.extract.trunc, i64 1
  %i.lm = insertelement <4 x i8> %i.ll, i8 %.sroa.27.0.extract.trunc, i64 2
  %i.ln = insertelement <4 x i8> %i.lm, i8 %.sroa.40.0.extract.trunc, i64 3
  %i.lo = uitofp <4 x i8> %i.ln to <4 x float>
  %i.lp = fdiv <4 x float> %i.lo, splat (float 2.550000e+02) ; 4 uses
  %i.lq = extractelement <4 x float> %i.lp, i64 0
  %i.lr = tail call fastcc zeroext i16 @FloatToHalf(float noundef %i.lq)
  %i.ls = mul nsw i32 %i.ac, %2
  %i.lt = add nuw nsw i32 %i.ls, %1
  %i.lu = shl nsw i32 %i.lt, 2
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.lv
  store i16 %i.lr, ptr %i.lw, align 2
  %i.lx = extractelement <4 x float> %i.lp, i64 1
  %i.ly = tail call fastcc zeroext i16 @FloatToHalf(float noundef %i.lx)
  %i.lz = load ptr, ptr %0, align 8
  %i.ma = load i32, ptr %i.ab, align 8
  %i.mb = mul nsw i32 %i.ma, %2
  %i.mc = add nsw i32 %i.mb, %1
  %i.md = shl nsw i32 %i.mc, 2
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr [2 x i8], ptr %i.lz, i64 %i.me
  %i.mg = getelementptr i8, ptr %i.mf, i64 2
  store i16 %i.ly, ptr %i.mg, align 2
  %i.mh = extractelement <4 x float> %i.lp, i64 2
  %i.mi = tail call fastcc zeroext i16 @FloatToHalf(float noundef %i.mh)
  %i.mj = load ptr, ptr %0, align 8
  %i.mk = load i32, ptr %i.ab, align 8
  %i.ml = mul nsw i32 %i.mk, %2
  %i.mm = add nsw i32 %i.ml, %1
  %i.mn = shl nsw i32 %i.mm, 2
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr [2 x i8], ptr %i.mj, i64 %i.mo
  %i.mq = getelementptr i8, ptr %i.mp, i64 4
  store i16 %i.mi, ptr %i.mq, align 2
  %i.mr = extractelement <4 x float> %i.lp, i64 3
  %i.ms = tail call fastcc zeroext i16 @FloatToHalf(float noundef %i.mr)
  %i.mt = load ptr, ptr %0, align 8
  %i.mu = load i32, ptr %i.ab, align 8
  %i.mv = mul nsw i32 %i.mu, %2
  %i.mw = add nsw i32 %i.mv, %1
  %i.mx = shl nsw i32 %i.mw, 2
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr [2 x i8], ptr %i.mt, i64 %i.my
  %i.na = getelementptr i8, ptr %i.mz, i64 6
  store i16 %i.ms, ptr %i.na, align 2
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawPixelV(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, i32 %2) local_unnamed_addr #36 {
bb.a:
  %.sroa.01.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fptosi float %.sroa.01.0.vec.extract to i32
  %.sroa.01.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.b = fptosi float %.sroa.01.4.vec.extract to i32
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.a, i32 noundef %i.b, i32 %2)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawLine(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5) local_unnamed_addr #37 {
bb.a:
  %i.a = sub nsw i32 %4, %2                       ; 4 uses
  %i.b = sub nsw i32 %3, %1                       ; 4 uses
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true)
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true)
  %i.e = icmp samesign ugt i32 %i.c, %i.d         ; 3 uses
  %spec.select = select i1 %i.e, i32 %i.a, i32 %i.b ; 3 uses
  %.inv = icmp sgt i32 %spec.select, -1
  %.041 = select i1 %.inv, i32 1, i32 -1          ; 2 uses
  %i.f = icmp eq i32 %spec.select, 0
  br i1 %i.f, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.a
  %.1 = tail call i32 @llvm.abs.i32(i32 %spec.select, i1 true)
  %spec.select46 = select i1 %i.e, i32 %i.b, i32 %i.a
  %i.g = shl i32 %spec.select46, 16
  %i.h = sdiv i32 %i.g, %.1                       ; 2 uses
  br i1 %i.e, label %.lr.ph55, label %.lr.ph

.lr.ph55:                                         ; preds = %.thread, %.lr.ph55
  %.03954 = phi i32 [ %i.m, %.lr.ph55 ], [ 0, %.thread ] ; 2 uses
  %.04053 = phi i32 [ %i.l, %.lr.ph55 ], [ 0, %.thread ] ; 2 uses
  %i.i = ashr i32 %.03954, 16
  %i.j = add nsw i32 %i.i, %1
  %i.k = add nsw i32 %.04053, %2
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.j, i32 noundef %i.k, i32 %5)
  %i.l = add nsw i32 %.04053, %.041               ; 2 uses
  %i.m = add nsw i32 %.03954, %i.h
  %.not45 = icmp eq i32 %i.l, %i.a
  br i1 %.not45, label %.loopexit, label %.lr.ph55

.lr.ph:                                           ; preds = %.thread, %.lr.ph
  %.051 = phi i32 [ %i.r, %.lr.ph ], [ 0, %.thread ] ; 2 uses
  %.03850 = phi i32 [ %i.q, %.lr.ph ], [ 0, %.thread ] ; 2 uses
  %i.n = add nsw i32 %.03850, %1
  %i.o = ashr i32 %.051, 16
  %i.p = add nsw i32 %i.o, %2
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.n, i32 noundef %i.p, i32 %5)
  %i.q = add nsw i32 %.03850, %.041               ; 2 uses
  %i.r = add nsw i32 %.051, %i.h
  %.not = icmp eq i32 %i.q, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph55, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawLineV(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, i32 %3) local_unnamed_addr #38 {
bb.a:
  %i.a = shufflevector <2 x float> %2, <2 x float> %1, <2 x i32> <i32 0, i32 2>
  %i.b = fadd <2 x float> %i.a, splat (float 5.000000e-01)
  %i.c = fptosi <2 x float> %i.b to <2 x i32>     ; 2 uses
  %i.d = shufflevector <2 x float> %2, <2 x float> %1, <2 x i32> <i32 1, i32 3>
  %i.e = fadd <2 x float> %i.d, splat (float 5.000000e-01)
  %i.f = fptosi <2 x float> %i.e to <2 x i32>     ; 2 uses
  %i.g = extractelement <2 x i32> %i.f, i64 0
  %i.h = extractelement <2 x i32> %i.f, i64 1     ; 3 uses
  %i.i = sub nsw i32 %i.g, %i.h                   ; 4 uses
  %i.j = extractelement <2 x i32> %i.c, i64 0
  %i.k = extractelement <2 x i32> %i.c, i64 1     ; 3 uses
  %i.l = sub nsw i32 %i.j, %i.k                   ; 4 uses
  %i.m = tail call i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.l, i1 true)
  %i.o = icmp samesign ugt i32 %i.m, %i.n         ; 3 uses
  %spec.select.i = select i1 %i.o, i32 %i.i, i32 %i.l ; 3 uses
  %.inv.i = icmp sgt i32 %spec.select.i, -1
  %.041.i = select i1 %.inv.i, i32 1, i32 -1      ; 2 uses
  %i.p = icmp eq i32 %spec.select.i, 0
  br i1 %i.p, label %ImageDrawLine.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.a
  %.1.i = tail call i32 @llvm.abs.i32(i32 %spec.select.i, i1 true)
  %spec.select46.i = select i1 %i.o, i32 %i.l, i32 %i.i
  %i.q = shl i32 %spec.select46.i, 16
  %i.r = sdiv i32 %i.q, %.1.i                     ; 2 uses
  br i1 %i.o, label %.lr.ph55.i, label %.lr.ph.i

.lr.ph55.i:                                       ; preds = %.thread.i, %.lr.ph55.i
  %.03954.i = phi i32 [ %i.w, %.lr.ph55.i ], [ 0, %.thread.i ] ; 2 uses
  %.04053.i = phi i32 [ %i.v, %.lr.ph55.i ], [ 0, %.thread.i ] ; 2 uses
  %i.s = ashr i32 %.03954.i, 16
  %i.t = add nsw i32 %i.s, %i.k
  %i.u = add nsw i32 %.04053.i, %i.h
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.t, i32 noundef %i.u, i32 %3)
  %i.v = add nsw i32 %.04053.i, %.041.i           ; 2 uses
  %i.w = add nsw i32 %.03954.i, %i.r
  %.not45.i = icmp eq i32 %i.v, %i.i
  br i1 %.not45.i, label %ImageDrawLine.exit, label %.lr.ph55.i

.lr.ph.i:                                         ; preds = %.thread.i, %.lr.ph.i
  %.051.i = phi i32 [ %i.ab, %.lr.ph.i ], [ 0, %.thread.i ] ; 2 uses
  %.03850.i = phi i32 [ %i.aa, %.lr.ph.i ], [ 0, %.thread.i ] ; 2 uses
  %i.x = add nsw i32 %.03850.i, %i.k
  %i.y = ashr i32 %.051.i, 16
  %i.z = add nsw i32 %i.y, %i.h
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.x, i32 noundef %i.z, i32 %3)
  %i.aa = add nsw i32 %.03850.i, %.041.i          ; 2 uses
  %i.ab = add nsw i32 %.051.i, %i.r
  %.not.i = icmp eq i32 %i.aa, %i.l
  br i1 %.not.i, label %ImageDrawLine.exit, label %.lr.ph.i

ImageDrawLine.exit:                               ; preds = %.lr.ph.i, %.lr.ph55.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawLineEx(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, i32 noundef %3, i32 %4) local_unnamed_addr #38 {
bb.a:
  %i.a = fadd <2 x float> %1, splat (float 5.000000e-01)
  %i.b = fptosi <2 x float> %i.a to <2 x i32>     ; 11 uses
  %i.c = fadd <2 x float> %2, splat (float 5.000000e-01)
  %i.d = fptosi <2 x float> %i.c to <2 x i32>     ; 5 uses
  %i.e = extractelement <2 x i32> %i.b, i64 0     ; 8 uses
  %i.f = icmp eq <2 x i32> %i.d, %i.b
  %.not = extractelement <2 x i1> %i.f, i64 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub <2 x i32> %i.d, %i.b                 ; 3 uses
  %i.h = extractelement <2 x i32> %i.g, i64 1     ; 8 uses
  %i.i = extractelement <2 x i32> %i.g, i64 0     ; 8 uses
  %i.j = sdiv i32 %i.h, %i.i
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %3, -1
  %i.m = sdiv i32 %3, 2                           ; 2 uses
  %.not61114 = icmp slt i32 %3, -1
  br i1 %.not61114, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.h, i1 true)
  %i.o = tail call i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.p = icmp samesign ugt i32 %i.n, %i.o         ; 3 uses
  %spec.select.i = select i1 %i.p, i32 %i.h, i32 %i.i ; 3 uses
  %.inv.i = icmp sgt i32 %spec.select.i, -1
  %.041.i = select i1 %.inv.i, i32 1, i32 -1      ; 2 uses
  %i.q = icmp eq i32 %spec.select.i, 0
  br i1 %i.q, label %.preheader111, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %spec.select46.i = select i1 %i.p, i32 %i.i, i32 %i.h
  %i.r = shl i32 %spec.select46.i, 16
  %.1.i = tail call i32 @llvm.abs.i32(i32 %spec.select.i, i1 true)
  %i.s = sdiv i32 %i.r, %.1.i                     ; 2 uses
  br i1 %i.p, label %.thread.i.us.preheader, label %.thread.i.preheader

.thread.i.preheader:                              ; preds = %.lr.ph.split
  %i.t = extractelement <2 x i32> %i.b, i64 1
  br label %.thread.i

.thread.i.us.preheader:                           ; preds = %.lr.ph.split
  %i.u = extractelement <2 x i32> %i.b, i64 1
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %.thread.i.us.preheader, %ImageDrawLine.exit.loopexit.us
  %.056115.us = phi i32 [ %i.ab, %ImageDrawLine.exit.loopexit.us ], [ 0, %.thread.i.us.preheader ] ; 3 uses
  %i.v = add nsw i32 %.056115.us, %i.u
  br label %.lr.ph55.i.us

.lr.ph55.i.us:                                    ; preds = %.thread.i.us, %.lr.ph55.i.us
  %.03954.i.us = phi i32 [ %i.aa, %.lr.ph55.i.us ], [ 0, %.thread.i.us ] ; 2 uses
  %.04053.i.us = phi i32 [ %i.z, %.lr.ph55.i.us ], [ 0, %.thread.i.us ] ; 2 uses
  %i.w = ashr i32 %.03954.i.us, 16
  %i.x = add nsw i32 %i.w, %i.e
  %i.y = add nsw i32 %.04053.i.us, %i.v
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.x, i32 noundef %i.y, i32 %4)
  %i.z = add nsw i32 %.04053.i.us, %.041.i        ; 2 uses
  %i.aa = add nsw i32 %.03954.i.us, %i.s
  %.not45.i.us = icmp eq i32 %i.z, %i.h
  br i1 %.not45.i.us, label %ImageDrawLine.exit.loopexit.us, label %.lr.ph55.i.us

ImageDrawLine.exit.loopexit.us:                   ; preds = %.lr.ph55.i.us
  %i.ab = add nuw nsw i32 %.056115.us, 1
  %exitcond138.not = icmp eq i32 %.056115.us, %i.m
  br i1 %exitcond138.not, label %.preheader111, label %.thread.i.us

.preheader111:                                    ; preds = %ImageDrawLine.exit.loopexit113, %ImageDrawLine.exit.loopexit.us, %.lr.ph
  %i.ac = sdiv i32 %i.l, 2
  %.not62118 = icmp slt i32 %3, 3
  br i1 %.not62118, label %.loopexit, label %.lr.ph120

.lr.ph120:                                        ; preds = %.preheader111
  %i.ad = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.g, i1 true) ; 2 uses
  %i.ae = extractelement <2 x i32> %i.ad, i64 0
  %i.af = extractelement <2 x i32> %i.ad, i64 1
  %i.ag = icmp samesign ugt i32 %i.af, %i.ae      ; 3 uses
  %spec.select.i63 = select i1 %i.ag, i32 %i.h, i32 %i.i ; 3 uses
  %.inv.i64 = icmp sgt i32 %spec.select.i63, -1
  %.041.i65 = select i1 %.inv.i64, i32 1, i32 -1  ; 2 uses
  %i.ah = icmp eq i32 %spec.select.i63, 0
  br i1 %i.ah, label %.loopexit, label %.lr.ph120.split

.lr.ph120.split:                                  ; preds = %.lr.ph120
  %spec.select46.i68 = select i1 %i.ag, i32 %i.i, i32 %i.h
  %i.ai = shl i32 %spec.select46.i68, 16
  %.1.i67 = tail call i32 @llvm.abs.i32(i32 %spec.select.i63, i1 true)
  %i.aj = sdiv i32 %i.ai, %.1.i67                 ; 2 uses
  %smax140 = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1) ; 2 uses
  br i1 %i.ag, label %.thread.i66.us.preheader, label %.thread.i66.preheader

.thread.i66.preheader:                            ; preds = %.lr.ph120.split
  %i.ak = extractelement <2 x i32> %i.b, i64 1
  br label %.thread.i66

.thread.i66.us.preheader:                         ; preds = %.lr.ph120.split
  %i.al = extractelement <2 x i32> %i.b, i64 1
  br label %.thread.i66.us

.thread.i66.us:                                   ; preds = %.thread.i66.us.preheader, %ImageDrawLine.exit77.loopexit.us
  %.055119.us = phi i32 [ %i.as, %ImageDrawLine.exit77.loopexit.us ], [ 1, %.thread.i66.us.preheader ] ; 3 uses
  %i.am = sub nsw i32 %i.al, %.055119.us
  br label %.lr.ph55.i73.us

.lr.ph55.i73.us:                                  ; preds = %.thread.i66.us, %.lr.ph55.i73.us
  %.03954.i74.us = phi i32 [ %i.ar, %.lr.ph55.i73.us ], [ 0, %.thread.i66.us ] ; 2 uses
  %.04053.i75.us = phi i32 [ %i.aq, %.lr.ph55.i73.us ], [ 0, %.thread.i66.us ] ; 2 uses
  %i.an = ashr i32 %.03954.i74.us, 16
  %i.ao = add nsw i32 %i.an, %i.e
  %i.ap = add nsw i32 %.04053.i75.us, %i.am
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.ao, i32 noundef %i.ap, i32 %4)
  %i.aq = add nsw i32 %.04053.i75.us, %.041.i65   ; 2 uses
  %i.ar = add nsw i32 %.03954.i74.us, %i.aj
  %.not45.i76.us = icmp eq i32 %i.aq, %i.h
  br i1 %.not45.i76.us, label %ImageDrawLine.exit77.loopexit.us, label %.lr.ph55.i73.us

ImageDrawLine.exit77.loopexit.us:                 ; preds = %.lr.ph55.i73.us
  %i.as = add nuw nsw i32 %.055119.us, 1
  %exitcond141.not.a = icmp eq i32 %.055119.us, %smax140
  br i1 %exitcond141.not.a, label %.loopexit, label %.thread.i66.us

.thread.i:                                        ; preds = %.thread.i.preheader, %ImageDrawLine.exit.loopexit113
  %.056115 = phi i32 [ %i.az, %ImageDrawLine.exit.loopexit113 ], [ 0, %.thread.i.preheader ] ; 3 uses
  %i.at = add nsw i32 %.056115, %i.t
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread.i, %.lr.ph.i
  %.051.i = phi i32 [ %i.ay, %.lr.ph.i ], [ 0, %.thread.i ] ; 2 uses
  %.03850.i = phi i32 [ %i.ax, %.lr.ph.i ], [ 0, %.thread.i ] ; 2 uses
  %i.au = add nsw i32 %.03850.i, %i.e
  %i.av = ashr i32 %.051.i, 16
  %i.aw = add nsw i32 %i.av, %i.at
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.au, i32 noundef %i.aw, i32 %4)
  %i.ax = add nsw i32 %.03850.i, %.041.i          ; 2 uses
  %i.ay = add nsw i32 %.051.i, %i.s
  %.not.i = icmp eq i32 %i.ax, %i.i
  br i1 %.not.i, label %ImageDrawLine.exit.loopexit113, label %.lr.ph.i

ImageDrawLine.exit.loopexit113:                   ; preds = %.lr.ph.i
  %i.az = add nuw nsw i32 %.056115, 1
  %exitcond.not = icmp eq i32 %.056115, %i.m
  br i1 %exitcond.not, label %.preheader111, label %.thread.i

.thread.i66:                                      ; preds = %.thread.i66.preheader, %ImageDrawLine.exit77.loopexit110
  %.055119 = phi i32 [ %i.bg, %ImageDrawLine.exit77.loopexit110 ], [ 1, %.thread.i66.preheader ] ; 3 uses
  %i.ba = sub nsw i32 %i.ak, %.055119
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.thread.i66, %.lr.ph.i69
  %.051.i70 = phi i32 [ %i.bf, %.lr.ph.i69 ], [ 0, %.thread.i66 ] ; 2 uses
  %.03850.i71 = phi i32 [ %i.be, %.lr.ph.i69 ], [ 0, %.thread.i66 ] ; 2 uses
  %i.bb = add nsw i32 %.03850.i71, %i.e
  %i.bc = ashr i32 %.051.i70, 16
  %i.bd = add nsw i32 %i.bc, %i.ba
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.bb, i32 noundef %i.bd, i32 %4)
  %i.be = add nsw i32 %.03850.i71, %.041.i65      ; 2 uses
  %i.bf = add nsw i32 %.051.i70, %i.aj
  %.not.i72 = icmp eq i32 %i.be, %i.i
  br i1 %.not.i72, label %ImageDrawLine.exit77.loopexit110, label %.lr.ph.i69

ImageDrawLine.exit77.loopexit110:                 ; preds = %.lr.ph.i69
  %i.bg = add nuw nsw i32 %.055119, 1
  %exitcond139.not = icmp eq i32 %.055119, %smax140
  br i1 %exitcond139.not, label %.loopexit, label %.thread.i66

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.bh = extractelement <2 x i32> %i.b, i64 1    ; 4 uses
  %i.bi = icmp eq <2 x i32> %i.d, %i.b
  %.not58 = extractelement <2 x i1> %i.bi, i64 1
  br i1 %.not58, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = add nsw i32 %3, -1
  %i.bk = sdiv i32 %3, 2                          ; 2 uses
  %.not59123 = icmp slt i32 %3, -1
  br i1 %.not59123, label %.loopexit, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.e
  %i.bl = sub nsw <2 x i32> %i.d, %i.b            ; 3 uses
  %i.bm = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.bl, i1 true) ; 2 uses
  %i.bn = extractelement <2 x i32> %i.bm, i64 0
  %i.bo = extractelement <2 x i32> %i.bm, i64 1
  %i.bp = icmp samesign ugt i32 %i.bo, %i.bn      ; 3 uses
  %i.bq = extractelement <2 x i32> %i.bl, i64 0   ; 3 uses
  %i.br = extractelement <2 x i32> %i.bl, i64 1   ; 3 uses
  %spec.select.i78 = select i1 %i.bp, i32 %i.br, i32 %i.bq ; 3 uses
  %.inv.i79 = icmp sgt i32 %spec.select.i78, -1
  %.041.i80 = select i1 %.inv.i79, i32 1, i32 -1  ; 2 uses
  %i.bs = icmp eq i32 %spec.select.i78, 0
  br i1 %i.bs, label %.preheader, label %.lr.ph125.split

.lr.ph125.split:                                  ; preds = %.lr.ph125
  %spec.select46.i83 = select i1 %i.bp, i32 %i.bq, i32 %i.br
  %i.bt = shl i32 %spec.select46.i83, 16
  %.1.i82 = tail call i32 @llvm.abs.i32(i32 %spec.select.i78, i1 true)
  %i.bu = sdiv i32 %i.bt, %.1.i82                 ; 2 uses
  br i1 %i.bp, label %.thread.i81.us, label %.thread.i81

.thread.i81.us:                                   ; preds = %.lr.ph125.split, %ImageDrawLine.exit92.loopexit.us
  %.054124.us = phi i32 [ %i.cb, %ImageDrawLine.exit92.loopexit.us ], [ 0, %.lr.ph125.split ] ; 3 uses
  %i.bv = add nsw i32 %.054124.us, %i.e
  br label %.lr.ph55.i88.us

.lr.ph55.i88.us:                                  ; preds = %.thread.i81.us, %.lr.ph55.i88.us
  %.03954.i89.us = phi i32 [ %i.ca, %.lr.ph55.i88.us ], [ 0, %.thread.i81.us ] ; 2 uses
  %.04053.i90.us = phi i32 [ %i.bz, %.lr.ph55.i88.us ], [ 0, %.thread.i81.us ] ; 2 uses
  %i.bw = ashr i32 %.03954.i89.us, 16
  %i.bx = add nsw i32 %i.bw, %i.bv
  %i.by = add nsw i32 %.04053.i90.us, %i.bh
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.bx, i32 noundef %i.by, i32 %4)
  %i.bz = add nsw i32 %.04053.i90.us, %.041.i80   ; 2 uses
  %i.ca = add nsw i32 %.03954.i89.us, %i.bu
  %.not45.i91.us = icmp eq i32 %i.bz, %i.br
  br i1 %.not45.i91.us, label %ImageDrawLine.exit92.loopexit.us, label %.lr.ph55.i88.us

ImageDrawLine.exit92.loopexit.us:                 ; preds = %.lr.ph55.i88.us
  %i.cb = add nuw nsw i32 %.054124.us, 1
  %exitcond143.not.a = icmp eq i32 %.054124.us, %i.bk
  br i1 %exitcond143.not.a, label %.preheader, label %.thread.i81.us

.preheader:                                       ; preds = %ImageDrawLine.exit92.loopexit109, %ImageDrawLine.exit92.loopexit.us, %.lr.ph125
  %i.cc = sdiv i32 %i.bj, 2
  %.not60128 = icmp slt i32 %3, 3
  br i1 %.not60128, label %.loopexit, label %.lr.ph130

.lr.ph130:                                        ; preds = %.preheader
  %i.cd = sub <2 x i32> %i.d, %i.b                ; 3 uses
  %i.ce = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.cd, i1 true) ; 2 uses
  %i.cf = extractelement <2 x i32> %i.ce, i64 0
  %i.cg = extractelement <2 x i32> %i.ce, i64 1
  %i.ch = icmp samesign ugt i32 %i.cg, %i.cf      ; 3 uses
  %i.ci = extractelement <2 x i32> %i.cd, i64 0   ; 3 uses
  %i.cj = extractelement <2 x i32> %i.cd, i64 1   ; 3 uses
  %spec.select.i93 = select i1 %i.ch, i32 %i.cj, i32 %i.ci ; 3 uses
  %.inv.i94 = icmp sgt i32 %spec.select.i93, -1
  %.041.i95 = select i1 %.inv.i94, i32 1, i32 -1  ; 2 uses
  %i.ck = icmp eq i32 %spec.select.i93, 0
  br i1 %i.ck, label %.loopexit, label %.lr.ph130.split

.lr.ph130.split:                                  ; preds = %.lr.ph130
  %spec.select46.i98 = select i1 %i.ch, i32 %i.ci, i32 %i.cj
  %i.cl = shl i32 %spec.select46.i98, 16
  %.1.i97 = tail call i32 @llvm.abs.i32(i32 %spec.select.i93, i1 true)
  %i.cm = sdiv i32 %i.cl, %.1.i97                 ; 2 uses
  %smax146 = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 1) ; 2 uses
  br i1 %i.ch, label %.thread.i96.us, label %.thread.i96

.thread.i96.us:                                   ; preds = %.lr.ph130.split, %ImageDrawLine.exit107.loopexit.us
  %.0129.us = phi i32 [ %i.ct, %ImageDrawLine.exit107.loopexit.us ], [ 1, %.lr.ph130.split ] ; 3 uses
  %i.cn = sub nsw i32 %i.e, %.0129.us
  br label %.lr.ph55.i103.us

.lr.ph55.i103.us:                                 ; preds = %.thread.i96.us, %.lr.ph55.i103.us
  %.03954.i104.us = phi i32 [ %i.cs, %.lr.ph55.i103.us ], [ 0, %.thread.i96.us ] ; 2 uses
  %.04053.i105.us = phi i32 [ %i.cr, %.lr.ph55.i103.us ], [ 0, %.thread.i96.us ] ; 2 uses
  %i.co = ashr i32 %.03954.i104.us, 16
  %i.cp = add nsw i32 %i.co, %i.cn
  %i.cq = add nsw i32 %.04053.i105.us, %i.bh
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.cp, i32 noundef %i.cq, i32 %4)
  %i.cr = add nsw i32 %.04053.i105.us, %.041.i95  ; 2 uses
  %i.cs = add nsw i32 %.03954.i104.us, %i.cm
  %.not45.i106.us = icmp eq i32 %i.cr, %i.cj
  br i1 %.not45.i106.us, label %ImageDrawLine.exit107.loopexit.us, label %.lr.ph55.i103.us

ImageDrawLine.exit107.loopexit.us:                ; preds = %.lr.ph55.i103.us
  %i.ct = add nuw nsw i32 %.0129.us, 1
  %exitcond147.not = icmp eq i32 %.0129.us, %smax146
  br i1 %exitcond147.not, label %.loopexit, label %.thread.i96.us

.thread.i81:                                      ; preds = %.lr.ph125.split, %ImageDrawLine.exit92.loopexit109
  %.054124 = phi i32 [ %i.da, %ImageDrawLine.exit92.loopexit109 ], [ 0, %.lr.ph125.split ] ; 3 uses
  %i.cu = add nsw i32 %.054124, %i.e
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %.thread.i81, %.lr.ph.i84
  %.051.i85 = phi i32 [ %i.cz, %.lr.ph.i84 ], [ 0, %.thread.i81 ] ; 2 uses
  %.03850.i86 = phi i32 [ %i.cy, %.lr.ph.i84 ], [ 0, %.thread.i81 ] ; 2 uses
  %i.cv = add nsw i32 %.03850.i86, %i.cu
  %i.cw = ashr i32 %.051.i85, 16
  %i.cx = add nsw i32 %i.cw, %i.bh
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.cv, i32 noundef %i.cx, i32 %4)
  %i.cy = add nsw i32 %.03850.i86, %.041.i80      ; 2 uses
  %i.cz = add nsw i32 %.051.i85, %i.bu
  %.not.i87 = icmp eq i32 %i.cy, %i.bq
  br i1 %.not.i87, label %ImageDrawLine.exit92.loopexit109, label %.lr.ph.i84

ImageDrawLine.exit92.loopexit109:                 ; preds = %.lr.ph.i84
  %i.da = add nuw nsw i32 %.054124, 1
  %exitcond142.not = icmp eq i32 %.054124, %i.bk
  br i1 %exitcond142.not, label %.preheader, label %.thread.i81

.thread.i96:                                      ; preds = %.lr.ph130.split, %ImageDrawLine.exit107.loopexit108
  %.0129 = phi i32 [ %i.dh, %ImageDrawLine.exit107.loopexit108 ], [ 1, %.lr.ph130.split ] ; 3 uses
  %i.db = sub nsw i32 %i.e, %.0129
  br label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.thread.i96, %.lr.ph.i99
  %.051.i100 = phi i32 [ %i.dg, %.lr.ph.i99 ], [ 0, %.thread.i96 ] ; 2 uses
  %.03850.i101 = phi i32 [ %i.df, %.lr.ph.i99 ], [ 0, %.thread.i96 ] ; 2 uses
  %i.dc = add nsw i32 %.03850.i101, %i.db
  %i.dd = ashr i32 %.051.i100, 16
  %i.de = add nsw i32 %i.dd, %i.bh
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.dc, i32 noundef %i.de, i32 %4)
  %i.df = add nsw i32 %.03850.i101, %.041.i95     ; 2 uses
  %i.dg = add nsw i32 %.051.i100, %i.cm
  %.not.i102 = icmp eq i32 %i.df, %i.ci
  br i1 %.not.i102, label %ImageDrawLine.exit107.loopexit108, label %.lr.ph.i99

ImageDrawLine.exit107.loopexit108:                ; preds = %.lr.ph.i99
  %i.dh = add nuw nsw i32 %.0129, 1
  %exitcond145.not = icmp eq i32 %.0129, %smax146
  br i1 %exitcond145.not, label %.loopexit, label %.thread.i96

.loopexit:                                        ; preds = %ImageDrawLine.exit77.loopexit110, %ImageDrawLine.exit77.loopexit.us, %ImageDrawLine.exit107.loopexit108, %ImageDrawLine.exit107.loopexit.us, %bb.e, %bb.c, %.preheader111, %.lr.ph120, %.preheader, %.lr.ph130, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawCircle(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4) local_unnamed_addr #39 {
bb.a:
  %.not53 = icmp slt i32 %3, 0
  br i1 %.not53, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = shl nuw nsw i32 %3, 1
  %i.b = sub nsw i32 3, %i.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.056 = phi i32 [ %.1, %bb.d ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %.03855 = phi i32 [ %.139, %bb.d ], [ %3, %.lr.ph.preheader ] ; 6 uses
  %.04054 = phi i32 [ %i.s, %bb.d ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.c = sub nsw i32 %1, %.04054
  %i.d = add nsw i32 %.03855, %2
  %i.e = shl nuw nsw i32 %.04054, 1
  %i.f = sitofp i32 %i.c to float
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.f, i64 0 ; 2 uses
  %i.g = sitofp i32 %i.d to float
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.g, i64 1
  %i.h = uitofp nneg i32 %i.e to float
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.h, i64 0 ; 2 uses
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %.sroa.3.12.vec.insert.i, i32 %4)
  %i.i = sub nsw i32 %2, %.03855
  %i.j = sitofp i32 %i.i to float
  %.sroa.0.4.vec.insert.i42 = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.j, i64 1
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %.sroa.0.4.vec.insert.i42, <2 x float> %.sroa.3.12.vec.insert.i, i32 %4)
  %i.k = sub nsw i32 %1, %.03855
  %i.l = add nsw i32 %.04054, %2
  %i.m = shl nsw i32 %.03855, 1
  %i.n = sitofp i32 %i.k to float
  %.sroa.0.0.vec.insert.i45 = insertelement <2 x float> poison, float %i.n, i64 0 ; 2 uses
  %i.o = sitofp i32 %i.l to float
  %.sroa.0.4.vec.insert.i46 = insertelement <2 x float> %.sroa.0.0.vec.insert.i45, float %i.o, i64 1
  %i.p = sitofp i32 %i.m to float
  %.sroa.3.12.vec.insert.i48 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.p, i64 0 ; 2 uses
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %.sroa.0.4.vec.insert.i46, <2 x float> %.sroa.3.12.vec.insert.i48, i32 %4)
  %i.q = sub nsw i32 %2, %.04054
  %i.r = sitofp i32 %i.q to float
  %.sroa.0.4.vec.insert.i50 = insertelement <2 x float> %.sroa.0.0.vec.insert.i45, float %i.r, i64 1
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %.sroa.0.4.vec.insert.i50, <2 x float> %.sroa.3.12.vec.insert.i48, i32 %4)
  %i.s = add nuw nsw i32 %.04054, 1               ; 3 uses
  %i.t = icmp sgt i32 %.056, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.u = add nsw i32 %.03855, -1                  ; 2 uses
  %i.v = sub nsw i32 %i.s, %i.u
  %i.w = shl nsw i32 %i.v, 2
  %i.x = add nuw i32 %.056, 10
  %i.y = add i32 %i.x, %i.w
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.z = shl nsw i32 %i.s, 2
  %i.aa = add nuw i32 %i.z, 6
  %i.ab = add i32 %i.aa, %.056
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.139 = phi i32 [ %i.u, %bb.b ], [ %.03855, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %i.y, %bb.b ], [ %i.ab, %bb.c ]
  %.not.not = icmp sgt i32 %.139, %.04054
  br i1 %.not.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawRectangle(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5) local_unnamed_addr #39 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %2, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  %i.d = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %4, i64 1
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  tail call void @ImageDrawRectangleRec(ptr noundef %0, <2 x float> %i.c, <2 x float> %i.f, i32 %5)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawCircleV(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, i32 noundef %2, i32 %3) local_unnamed_addr #39 {
bb.a:
  %i.a = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.b = fptosi <4 x float> %i.a to <4 x i32>     ; 3 uses
  %.not53.i = icmp slt i32 %2, 0
  br i1 %.not53.i, label %ImageDrawCircle.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.c = shl nuw nsw i32 %2, 1
  %i.d = sub nsw i32 3, %i.c
  %i.e = insertelement <2 x i32> <i32 0, i32 poison>, i32 %2, i64 1
  %i.f = extractelement <4 x i32> %i.b, i64 1     ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.056.i = phi i32 [ %i.ad, %.lr.ph.i ], [ %i.d, %.lr.ph.preheader.i ] ; 2 uses
  %.03855.i = phi i32 [ %.139.i, %.lr.ph.i ], [ %2, %.lr.ph.preheader.i ] ; 3 uses
  %.04054.i = phi i32 [ %i.x, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 5 uses
  %i.g = phi <2 x i32> [ %i.af, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader.i ]
  %i.h = shufflevector <2 x i32> %i.g, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.i = sub nsw <4 x i32> %i.b, %i.h
  %i.j = add nsw <4 x i32> %i.h, %i.b
  %i.k = shufflevector <4 x i32> %i.i, <4 x i32> %i.j, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.l = shl nuw nsw i32 %.04054.i, 1
  %i.m = uitofp nneg i32 %i.l to float
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.m, i64 0 ; 2 uses
  %i.n = add nsw i32 %.04054.i, %i.f
  %i.o = shl nsw i32 %.03855.i, 1
  %i.p = sitofp <4 x i32> %i.k to <4 x float>     ; 3 uses
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %i.q, <2 x float> %.sroa.3.12.vec.insert.i.i, i32 %3)
  %i.r = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %i.r, <2 x float> %.sroa.3.12.vec.insert.i.i, i32 %3)
  %i.s = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 3, i32 poison> ; 2 uses
  %i.t = sitofp i32 %i.n to float
  %.sroa.0.4.vec.insert.i46.i = insertelement <2 x float> %i.s, float %i.t, i64 1
  %i.u = sitofp i32 %i.o to float
  %.sroa.3.12.vec.insert.i48.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.u, i64 0 ; 2 uses
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %.sroa.0.4.vec.insert.i46.i, <2 x float> %.sroa.3.12.vec.insert.i48.i, i32 %3)
  %i.v = sub nsw i32 %i.f, %.04054.i
  %i.w = sitofp i32 %i.v to float
  %.sroa.0.4.vec.insert.i50.i = insertelement <2 x float> %i.s, float %i.w, i64 1
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %.sroa.0.4.vec.insert.i50.i, <2 x float> %.sroa.3.12.vec.insert.i48.i, i32 %3)
  %i.x = add nuw nsw i32 %.04054.i, 1             ; 3 uses
  %i.y = icmp sgt i32 %.056.i, 0                  ; 3 uses
  %i.z = add nsw i32 %.03855.i, -1                ; 2 uses
  %i.aa = select i1 %i.y, i32 %i.z, i32 0
  %.sink = sub nsw i32 %i.x, %i.aa
  %.sink3 = select i1 %i.y, i32 10, i32 6
  %.139.i = select i1 %i.y, i32 %i.z, i32 %.03855.i ; 3 uses
  %i.ab = shl nsw i32 %.sink, 2
  %i.ac = add i32 %.056.i, %.sink3
  %i.ad = add i32 %i.ac, %i.ab
  %.not.not.i = icmp sgt i32 %.139.i, %.04054.i
  %i.ae = insertelement <2 x i32> poison, i32 %i.x, i64 0
  %i.af = insertelement <2 x i32> %i.ae, i32 %.139.i, i64 1
  br i1 %.not.not.i, label %.lr.ph.i, label %ImageDrawCircle.exit

ImageDrawCircle.exit:                             ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawCircleLines(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4) local_unnamed_addr #37 {
bb.a:
  %.not61 = icmp slt i32 %3, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = shl nuw nsw i32 %3, 1
  %i.b = sub nsw i32 3, %i.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.064 = phi i32 [ %.1, %bb.d ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %.05863 = phi i32 [ %.159, %bb.d ], [ %3, %.lr.ph.preheader ] ; 6 uses
  %.06062 = phi i32 [ %i.k, %bb.d ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.c = add nsw i32 %.06062, %1                  ; 2 uses
  %i.d = add nsw i32 %.05863, %2                  ; 2 uses
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.c, i32 noundef %i.d, i32 %4)
  %i.e = sub nsw i32 %1, %.06062                  ; 2 uses
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.e, i32 noundef %i.d, i32 %4)
  %i.f = sub nsw i32 %2, %.05863                  ; 2 uses
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.c, i32 noundef %i.f, i32 %4)
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.e, i32 noundef %i.f, i32 %4)
  %i.g = add nsw i32 %.05863, %1                  ; 2 uses
  %i.h = add nsw i32 %.06062, %2                  ; 2 uses
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.g, i32 noundef %i.h, i32 %4)
  %i.i = sub nsw i32 %1, %.05863                  ; 2 uses
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.h, i32 %4)
  %i.j = sub nsw i32 %2, %.06062                  ; 2 uses
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.g, i32 noundef %i.j, i32 %4)
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.j, i32 %4)
  %i.k = add nuw nsw i32 %.06062, 1               ; 3 uses
  %i.l = icmp sgt i32 %.064, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = add nsw i32 %.05863, -1                  ; 2 uses
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = shl nsw i32 %i.n, 2
  %i.p = add nuw i32 %.064, 10
  %i.q = add i32 %i.p, %i.o
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.r = shl nsw i32 %i.k, 2
  %i.s = add nuw i32 %i.r, 6
  %i.t = add i32 %i.s, %.064
end_hunk_1
begin_hunk_2_@stbir__alloc_internal_mem_and_build_samplers:bb.a
  %i.yn = getelementptr inbounds nuw i8, ptr %.1308, i64 240 ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ci, %bb.cf
  %.3.i357 = phi ptr [ %i.ym, %bb.cf ], [ %i.zb, %bb.ci ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i357) #52, !srcloc !81
  %i.yo = icmp ugt ptr %.3.i357, %i.yn
  br i1 %i.yo, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.yp = icmp eq ptr %.3.i357, %i.xw
  br i1 %i.yp, label %stbir_simd_memcpy.exit360, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.4.i358 = phi ptr [ %.3.i357, %bb.cg ], [ %i.yn, %bb.ch ] ; 6 uses
  %i.yq = getelementptr inbounds i8, ptr %.4.i358, i64 %i.xy ; 4 uses
  %i.yr = load <4 x float>, ptr %i.yq, align 1
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  %i.yt = load <4 x float>, ptr %i.ys, align 1
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 32
  %i.yv = load <4 x float>, ptr %i.yu, align 1
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yq, i64 48
  %i.yx = load <4 x float>, ptr %i.yw, align 1
  store <4 x float> %i.yr, ptr %.4.i358, align 1
  %i.yy = getelementptr inbounds nuw i8, ptr %.4.i358, i64 16
  store <4 x float> %i.yt, ptr %i.yy, align 1
  %i.yz = getelementptr inbounds nuw i8, ptr %.4.i358, i64 32
  store <4 x float> %i.yv, ptr %i.yz, align 1
  %i.za = getelementptr inbounds nuw i8, ptr %.4.i358, i64 48
  store <4 x float> %i.yx, ptr %i.za, align 1
  %i.zb = getelementptr inbounds nuw i8, ptr %.4.i358, i64 64
  br label %bb.cg, !llvm.loop !82

bb.cj:                                            ; preds = %stbir_simd_memcpy.exit
  tail call fastcc void @stbir__calculate_filters(ptr noundef %1, ptr noundef %.3, ptr noundef %8)
  %i.zc = getelementptr inbounds nuw i8, ptr %.1308, i64 304
  %i.zd = ptrtoint ptr %1 to i64
  %i.ze = ptrtoint ptr %i.wp to i64               ; 2 uses
  %i.zf = sub i64 %i.zd, %i.ze                    ; 2 uses
  %i.zg = getelementptr inbounds i8, ptr %i.wp, i64 %i.zf ; 4 uses
  %i.zh = load <4 x float>, ptr %i.zg, align 1
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zj = load <4 x float>, ptr %i.zi, align 1
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zg, i64 32
  %i.zl = load <4 x float>, ptr %i.zk, align 1
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zg, i64 48
  %i.zn = load <4 x float>, ptr %i.zm, align 1
  store <4 x float> %i.zh, ptr %i.wp, align 8
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ex, i64 168
  store <4 x float> %i.zj, ptr %i.zo, align 8
  %i.zp = getelementptr inbounds nuw i8, ptr %i.ex, i64 184
  store <4 x float> %i.zl, ptr %i.zp, align 8
  %i.zq = getelementptr inbounds nuw i8, ptr %i.ex, i64 200
  store <4 x float> %i.zn, ptr %i.zq, align 8
  %i.zr = and i64 %i.ze, -64
  %i.zs = add i64 %i.zr, 64
  %i.zt = inttoptr i64 %i.zs to ptr
  %i.zu = getelementptr inbounds nuw i8, ptr %.1308, i64 240 ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cm, %bb.cj
  %.3.i361 = phi ptr [ %i.zt, %bb.cj ], [ %i.aai, %bb.cm ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i361) #52, !srcloc !81
  %i.zv = icmp ugt ptr %.3.i361, %i.zu
  br i1 %i.zv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.zw = icmp eq ptr %.3.i361, %i.zc
  br i1 %i.zw, label %stbir_simd_memcpy.exit360, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.4.i362 = phi ptr [ %.3.i361, %bb.ck ], [ %i.zu, %bb.cl ] ; 6 uses
  %i.zx = getelementptr inbounds i8, ptr %.4.i362, i64 %i.zf ; 4 uses
  %i.zy = load <4 x float>, ptr %i.zx, align 1
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zx, i64 16
  %i.aaa = load <4 x float>, ptr %i.zz, align 1
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zx, i64 32
  %i.aac = load <4 x float>, ptr %i.aab, align 1
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zx, i64 48
  %i.aae = load <4 x float>, ptr %i.aad, align 1
  store <4 x float> %i.zy, ptr %.4.i362, align 1
  %i.aaf = getelementptr inbounds nuw i8, ptr %.4.i362, i64 16
  store <4 x float> %i.aaa, ptr %i.aaf, align 1
  %i.aag = getelementptr inbounds nuw i8, ptr %.4.i362, i64 32
  store <4 x float> %i.aac, ptr %i.aag, align 1
  %i.aah = getelementptr inbounds nuw i8, ptr %.4.i362, i64 48
  store <4 x float> %i.aae, ptr %i.aah, align 1
  %i.aai = getelementptr inbounds nuw i8, ptr %.4.i362, i64 64
  br label %bb.ck, !llvm.loop !82

stbir_simd_memcpy.exit360:                        ; preds = %bb.ch, %bb.cl
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.ex, i64 416
  %i.aak = load ptr, ptr %i.aaj, align 8          ; 4 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.ex, i64 468
  %i.aam = load i32, ptr %i.aal, align 4          ; 8 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.1308, i64 280 ; 2 uses
  %i.aao = load ptr, ptr %i.wp, align 8
  %i.aap = icmp sgt i32 %i.aam, 0
  br i1 %i.aap, label %.lr.ph76.i, label %.loopexit

.lr.ph76.i:                                       ; preds = %stbir_simd_memcpy.exit360
  %i.aaq = load i32, ptr %i.aan, align 8
  %i.aar = getelementptr inbounds nuw i8, ptr %i.ex, i64 184
  %i.aas = load i32, ptr %i.aar, align 8
  %i.aat = getelementptr inbounds nuw i8, ptr %i.ex, i64 252
  %i.aau = load i32, ptr %i.aat, align 4          ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.ex, i64 188
  %i.aaw = load i32, ptr %i.aav, align 4          ; 3 uses
  %.not78.i = icmp eq i32 %i.aaq, 0
  %i.aax = mul nsw i32 %i.aau, 3
  %i.aay = sub nsw i32 0, %i.aau                  ; 4 uses
  %i.aaz = add nsw i32 %i.aau, %i.aas             ; 4 uses
  %wide.trip.count86.i = zext nneg i32 %i.aam to i64 ; 3 uses
  br i1 %.not78.i, label %.lr.ph76.split.us.i.preheader, label %.lr.ph76.split.i

.lr.ph76.split.us.i.preheader:                    ; preds = %.lr.ph76.i
  %xtraiter202 = and i64 %wide.trip.count86.i, 1
  %i.aba = icmp eq i32 %i.aam, 1
  br i1 %i.aba, label %.lr.ph76.split.us.i.epil.preheader, label %.lr.ph76.split.us.i.preheader.new

.lr.ph76.split.us.i.preheader.new:                ; preds = %.lr.ph76.split.us.i.preheader
  %unroll_iter205 = and i64 %wide.trip.count86.i, 2147483646
  br label %.lr.ph76.split.us.i

.lr.ph76.split.us.i:                              ; preds = %.lr.ph76.split.us.i, %.lr.ph76.split.us.i.preheader.new
  %indvars.iv83.i = phi i64 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %indvars.iv.next84.i.1, %.lr.ph76.split.us.i ] ; 4 uses
  %.05674.us.i = phi i32 [ %i.aaw, %.lr.ph76.split.us.i.preheader.new ], [ %i.abs, %.lr.ph76.split.us.i ] ; 2 uses
  %.05773.us.i = phi i32 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %i.abq, %.lr.ph76.split.us.i ] ; 2 uses
  %niter206 = phi i64 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %niter206.next.1, %.lr.ph76.split.us.i ]
  %i.abb = getelementptr inbounds nuw [120 x i8], ptr %i.aak, i64 %indvars.iv83.i ; 4 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 20
  store i32 %.05773.us.i, ptr %i.abc, align 4
  %i.abd = trunc i64 %indvars.iv83.i to i32
  %i.abe = sub i32 %i.aam, %i.abd
  %i.abf = sdiv i32 %.05674.us.i, %i.abe          ; 2 uses
  %i.abg = add nsw i32 %i.abf, %.05773.us.i       ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abb, i64 24
  store i32 %i.abg, ptr %i.abh, align 8
  %i.abi = sub nsw i32 %.05674.us.i, %i.abf       ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abb, i64 28
  store i32 %i.aay, ptr %i.abj, align 4
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abb, i64 32
  store i32 %i.aaz, ptr %i.abk, align 8
  %indvars.iv.next84.i = or disjoint i64 %indvars.iv83.i, 1 ; 2 uses
  %i.abl = getelementptr inbounds nuw [120 x i8], ptr %i.aak, i64 %indvars.iv.next84.i ; 4 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 20
  store i32 %i.abg, ptr %i.abm, align 4
  %i.abn = trunc i64 %indvars.iv.next84.i to i32
  %i.abo = sub i32 %i.aam, %i.abn
  %i.abp = sdiv i32 %i.abi, %i.abo                ; 2 uses
  %i.abq = add nsw i32 %i.abp, %i.abg             ; 3 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abl, i64 24
  store i32 %i.abq, ptr %i.abr, align 8
  %i.abs = sub nsw i32 %i.abi, %i.abp             ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abl, i64 28
  store i32 %i.aay, ptr %i.abt, align 4
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abl, i64 32
  store i32 %i.aaz, ptr %i.abu, align 8
  %indvars.iv.next84.i.1 = add nuw nsw i64 %indvars.iv83.i, 2 ; 2 uses
  %niter206.next.1 = add i64 %niter206, 2         ; 2 uses
  %niter206.ncmp.1 = icmp eq i64 %niter206.next.1, %unroll_iter205
  br i1 %niter206.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph76.split.us.i

.lr.ph76.split.i:                                 ; preds = %.lr.ph76.i, %bb.cp
  %indvars.iv.i365 = phi i64 [ %indvars.iv.next.i370, %bb.cp ], [ 0, %.lr.ph76.i ] ; 4 uses
  %.05674.i = phi i32 [ %i.acq, %bb.cp ], [ %i.aaw, %.lr.ph76.i ] ; 2 uses
  %.05773.i = phi i32 [ %i.aca, %bb.cp ], [ 0, %.lr.ph76.i ] ; 4 uses
  %i.abv = getelementptr inbounds nuw [120 x i8], ptr %i.aak, i64 %indvars.iv.i365 ; 5 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 20 ; 2 uses
  store i32 %.05773.i, ptr %i.abw, align 4
  %i.abx = trunc i64 %indvars.iv.i365 to i32
  %i.aby = sub i32 %i.aam, %i.abx
  %i.abz = sdiv i32 %.05674.i, %i.aby             ; 3 uses
  %i.aca = add nsw i32 %i.abz, %.05773.i          ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abv, i64 24
  store i32 %i.aca, ptr %i.acb, align 8
  %.not79.i = icmp eq i64 %indvars.iv.i365, 0
  br i1 %.not79.i, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph76.split.i
  %i.acc = sext i32 %.05773.i to i64
  %i.acd = getelementptr inbounds [8 x i8], ptr %i.aao, i64 %i.acc ; 2 uses
  %spec.select.i366 = tail call i32 @llvm.smin.i32(i32 %i.abz, i32 %i.aax) ; 2 uses
  %i.ace = load i32, ptr %i.acd, align 4          ; 2 uses
  %.not65.i = icmp slt i32 %spec.select.i366, 1
  br i1 %.not65.i, label %._crit_edge.i369, label %.lr.ph.i367

.lr.ph.i367:                                      ; preds = %bb.cn, %bb.co
  %i.acf = phi i32 [ %i.acl, %bb.co ], [ %i.ace, %bb.cn ] ; 2 uses
  %.069.i = phi ptr [ %i.acg, %bb.co ], [ %i.acd, %bb.cn ]
  %.05268.i = phi i32 [ %spec.select64.i, %bb.co ], [ 0, %bb.cn ] ; 2 uses
  %.05367.i = phi i32 [ %i.ack, %bb.co ], [ 1, %bb.cn ] ; 3 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 2 uses
  %i.ach = load i32, ptr %i.acg, align 4          ; 3 uses
  %i.aci = icmp sgt i32 %i.ach, %i.ace
  br i1 %i.aci, label %._crit_edge.i369, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i367
  %i.acj = icmp slt i32 %i.ach, %i.acf
  %spec.select64.i = select i1 %i.acj, i32 %.05367.i, i32 %.05268.i ; 2 uses
  %i.ack = add nuw i32 %.05367.i, 1
  %exitcond.not.i368 = icmp eq i32 %.05367.i, %spec.select.i366
  %i.acl = tail call i32 @llvm.smin.i32(i32 %i.ach, i32 %i.acf)
  br i1 %exitcond.not.i368, label %._crit_edge.i369, label %.lr.ph.i367

._crit_edge.i369:                                 ; preds = %bb.co, %.lr.ph.i367, %bb.cn
  %.052.lcssa.i = phi i32 [ 0, %bb.cn ], [ %spec.select64.i, %bb.co ], [ %.05268.i, %.lr.ph.i367 ] ; 2 uses
  %i.acm = getelementptr i8, ptr %i.abv, i64 -96  ; 2 uses
  %i.acn = load i32, ptr %i.acm, align 8
  %i.aco = add nsw i32 %i.acn, %.052.lcssa.i
  store i32 %i.aco, ptr %i.acm, align 8
  %i.acp = add nsw i32 %.052.lcssa.i, %.05773.i
  store i32 %i.acp, ptr %i.abw, align 4
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge.i369, %.lr.ph76.split.i
  %i.acq = sub nsw i32 %.05674.i, %i.abz
  %i.acr = getelementptr inbounds nuw i8, ptr %i.abv, i64 28
  store i32 %i.aay, ptr %i.acr, align 4
  %i.acs = getelementptr inbounds nuw i8, ptr %i.abv, i64 32
  store i32 %i.aaz, ptr %i.acs, align 8
  %indvars.iv.next.i370 = add nuw nsw i64 %indvars.iv.i365, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next.i370, %wide.trip.count86.i
  br i1 %exitcond82.not.i, label %.loopexit, label %.lr.ph76.split.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph76.split.us.i
  %lcmp.mod203.not = icmp eq i64 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %.loopexit, label %.lr.ph76.split.us.i.epil.preheader

.lr.ph76.split.us.i.epil.preheader:               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph76.split.us.i.preheader
  %indvars.iv83.i.epil.init = phi i64 [ 0, %.lr.ph76.split.us.i.preheader ], [ %indvars.iv.next84.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.05674.us.i.epil.init = phi i32 [ %i.aaw, %.lr.ph76.split.us.i.preheader ], [ %i.abs, %.loopexit.loopexit.unr-lcssa ]
  %.05773.us.i.epil.init = phi i32 [ 0, %.lr.ph76.split.us.i.preheader ], [ %i.abq, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod204 = trunc i32 %i.aam to i1
  tail call void @llvm.assume(i1 %lcmp.mod204)
  %i.act = getelementptr inbounds nuw [120 x i8], ptr %i.aak, i64 %indvars.iv83.i.epil.init ; 4 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 20
  store i32 %.05773.us.i.epil.init, ptr %i.acu, align 4
  %i.acv = trunc i64 %indvars.iv83.i.epil.init to i32
  %i.acw = sub i32 %i.aam, %i.acv
  %i.acx = sdiv i32 %.05674.us.i.epil.init, %i.acw
  %i.acy = add nsw i32 %i.acx, %.05773.us.i.epil.init
  %i.acz = getelementptr inbounds nuw i8, ptr %i.act, i64 24
  store i32 %i.acy, ptr %i.acz, align 8
  %i.ada = getelementptr inbounds nuw i8, ptr %i.act, i64 28
  store i32 %i.aay, ptr %i.ada, align 4
  %i.adb = getelementptr inbounds nuw i8, ptr %i.act, i64 32
  store i32 %i.aaz, ptr %i.adb, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cp, %.lr.ph76.split.us.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %stbir_simd_memcpy.exit360
  %i.adc = getelementptr inbounds nuw i8, ptr %i.ex, i64 276
  %i.add = load i32, ptr %i.adc, align 4          ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.ex, i64 332
  %i.adf = load i32, ptr %i.aan, align 8
  %.not334 = icmp eq i32 %i.adf, 0
  %i.adg = tail call i32 @llvm.smin.i32(i32 %i.add, i32 %.0.lcssa.i)
  %spec.store.select = select i1 %.not334, i32 %i.adg, i32 %i.add
  store i32 %spec.store.select, ptr %i.ade, align 4
  br label %.thread15

.thread13:                                        ; preds = %bb.at
  %i.adh = add i64 %.3294.in, 15                  ; 2 uses
  %i.adi = tail call noalias ptr @malloc(i64 noundef %i.adh) #53 ; 2 uses
  %i.adj = icmp eq ptr %i.adi, null
  br i1 %i.adj, label %.thread15, label %bb.q

.thread15:                                        ; preds = %.thread13, %.loopexit, %bb.h
  %.2311 = phi ptr [ null, %bb.h ], [ %i.ex, %.loopexit ], [ null, %.thread13 ]
  ret ptr %.2311
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.cmp.ss(<4 x float>, <4 x float>, i8 immarg) #47

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @stbir__filter_trapezoid(float noundef %0, float noundef %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = fmul float %1, 5.000000e-01              ; 2 uses
  %i.b = fadd float %i.a, 5.000000e-01            ; 2 uses
  %i.c = fcmp olt float %0, 0.000000e+00
  %i.d = fneg float %0
  %.013 = select i1 %i.c, float %i.d, float %0    ; 3 uses
  %i.e = fcmp ult float %.013, %i.b
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fsub float 5.000000e-01, %i.a
  %i.g = fcmp ugt float %.013, %i.f
  %i.h = fsub float %i.b, %.013
  %i.i = fdiv float %i.h, %1
  %.0 = select i1 %i.g, float %i.i, float 1.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi float [ %.0, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @stbir__filter_triangle(float noundef %0, float %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  %i.b = fneg float %0
  %.05 = select i1 %i.a, float %i.b, float %0     ; 2 uses
  %i.c = fcmp ugt float %.05, 1.000000e+00
  %i.d = fsub float 1.000000e+00, %.05
  %.0 = select i1 %i.c, float 0.000000e+00, float %i.d
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @stbir__filter_cubic(float noundef %0, float %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  %i.b = fneg float %0
  %.011 = select i1 %i.a, float %i.b, float %0    ; 8 uses
  %i.c = fcmp olt float %.011, 1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fmul float %.011, %.011
  %i.e = fmul nnan float %.011, 3.000000e+00
  %i.f = fadd nnan float %i.e, -6.000000e+00
  %i.g = fmul float %i.d, %i.f
  %i.h = fadd float %i.g, 4.000000e+00
  %i.i = fdiv float %i.h, 6.000000e+00
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = fcmp olt float %.011, 2.000000e+00
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = fsub nnan float 6.000000e+00, %.011
  %i.l = fmul nnan float %.011, %i.k
  %i.m = fadd nnan float %i.l, -1.200000e+01
  %i.n = fmul nnan float %.011, %i.m
  %i.o = fadd float %i.n, 8.000000e+00
  %i.p = fdiv float %i.o, 6.000000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi float [ %i.i, %bb.b ], [ %i.p, %bb.d ], [ 0.000000e+00, %bb.c ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @stbir__filter_catmullrom(float noundef %0, float %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  %i.b = fneg float %0
  %.011 = select i1 %i.a, float %i.b, float %0    ; 8 uses
  %i.c = fcmp olt float %.011, 1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fmul float %.011, %.011
  %i.e = fmul nnan float %.011, 1.500000e+00
  %i.f = fsub nnan float 2.500000e+00, %i.e
  %i.g = fmul float %i.d, %i.f
  %i.h = fsub float 1.000000e+00, %i.g
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = fcmp olt float %.011, 2.000000e+00
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = fmul nnan float %.011, 5.000000e-01
  %i.k = fadd nnan float %i.j, -2.500000e+00
  %i.l = fmul nnan float %.011, %i.k
  %i.m = fadd nnan float %i.l, 4.000000e+00
  %i.n = fmul nnan float %.011, %i.m
  %i.o = fsub float 2.000000e+00, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi float [ %i.h, %bb.b ], [ %i.o, %bb.d ], [ 0.000000e+00, %bb.c ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @stbir__filter_mitchell(float noundef %0, float %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  %i.b = fneg float %0
  %.011 = select i1 %i.a, float %i.b, float %0    ; 8 uses
  %i.c = fcmp olt float %.011, 1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fmul float %.011, %.011
  %i.e = fmul nnan float %.011, 2.100000e+01
  %i.f = fadd nnan float %i.e, -3.600000e+01
  %i.g = fmul float %i.d, %i.f
  %i.h = fadd float %i.g, 1.600000e+01
  %i.i = fdiv float %i.h, 1.800000e+01
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = fcmp olt float %.011, 2.000000e+00
  br i1 %i.j, label %bb.d, label %bb.e

end_hunk_2
