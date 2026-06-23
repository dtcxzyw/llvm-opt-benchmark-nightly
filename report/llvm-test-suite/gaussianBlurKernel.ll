begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @gaussianBlurKernel(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x [9 x float]], align 16       ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(324) %i.a, i8 0, i64 324, i1 false)
  br label %.preheader70

.preheader70:                                     ; preds = %bb.a, %.preheader70
  %indvars.iv = phi i64 [ -4, %bb.a ], [ %indvars.iv.next, %.preheader70 ] ; 4 uses
  %.06573 = phi float [ 0.000000e+00, %bb.a ], [ %i.bl, %.preheader70 ]
  %i.b = mul nsw i64 %indvars.iv, %indvars.iv     ; 2 uses
  %i.c = getelementptr [36 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 144
  %i.e = trunc i64 %i.b to i32
  %i.f = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %i.g = shufflevector <4 x i32> %i.f, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.h = sub <4 x i32> <i32 -16, i32 -9, i32 -4, i32 poison>, %i.g
  %i.i = xor <4 x i32> %i.g, <i32 poison, i32 poison, i32 poison, i32 -1>
  %i.j = shufflevector <4 x i32> %i.h, <4 x i32> %i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.k = sitofp <4 x i32> %i.j to <4 x float>
  %i.l = fdiv <4 x float> %i.k, splat (float 1.620000e+02)
  %i.m = fpext <4 x float> %i.l to <4 x double>   ; 4 uses
  %i.n = extractelement <4 x double> %i.m, i64 0  ; 2 uses
  %i.o = tail call double @exp(double noundef %i.n) #4, !tbaa !4
  %i.p = extractelement <4 x double> %i.m, i64 1  ; 2 uses
  %i.q = tail call double @exp(double noundef %i.p) #4, !tbaa !4
  %i.r = extractelement <4 x double> %i.m, i64 2  ; 2 uses
  %i.s = tail call double @exp(double noundef %i.r) #4, !tbaa !4
  %i.t = extractelement <4 x double> %i.m, i64 3  ; 2 uses
  %i.u = tail call double @exp(double noundef %i.t) #4, !tbaa !4
  %i.v = insertelement <4 x double> poison, double %i.o, i64 0
  %i.w = insertelement <4 x double> %i.v, double %i.q, i64 1
  %i.x = insertelement <4 x double> %i.w, double %i.s, i64 2
  %i.y = insertelement <4 x double> %i.x, double %i.u, i64 3
  %i.z = fdiv <4 x double> %i.y, splat (double f0x407FCF0216A64912)
  %i.aa = fptrunc <4 x double> %i.z to <4 x float> ; 5 uses
  %i.ab = extractelement <4 x float> %i.aa, i64 0
  %i.ac = fadd float %.06573, %i.ab
  %i.ad = extractelement <4 x float> %i.aa, i64 1
  %i.ae = fadd float %i.ac, %i.ad
  %i.af = extractelement <4 x float> %i.aa, i64 2
  %i.ag = fadd float %i.ae, %i.af
  store <4 x float> %i.aa, ptr %i.d, align 4, !tbaa !8
  %i.ah = extractelement <4 x float> %i.aa, i64 3
  %i.ai = fadd float %i.ag, %i.ah
  %i.aj = trunc i64 %i.b to i32
  %i.ak = sub i32 0, %i.aj
  %i.al = sitofp i32 %i.ak to float
  %i.am = fdiv float %i.al, 1.620000e+02
  %i.an = fpext float %i.am to double
  %i.ao = tail call double @exp(double noundef %i.an) #4, !tbaa !4
  %i.ap = getelementptr i8, ptr %i.c, i64 160
  %i.aq = tail call double @exp(double noundef %i.t) #4, !tbaa !4
  %i.ar = tail call double @exp(double noundef %i.r) #4, !tbaa !4
  %i.as = tail call double @exp(double noundef %i.p) #4, !tbaa !4
  %i.at = insertelement <4 x double> poison, double %i.ao, i64 0
  %i.au = insertelement <4 x double> %i.at, double %i.aq, i64 1
  %i.av = insertelement <4 x double> %i.au, double %i.ar, i64 2
  %i.aw = insertelement <4 x double> %i.av, double %i.as, i64 3
  %i.ax = fdiv <4 x double> %i.aw, splat (double f0x407FCF0216A64912)
  %i.ay = fptrunc <4 x double> %i.ax to <4 x float> ; 5 uses
  %i.az = extractelement <4 x float> %i.ay, i64 0
  %i.ba = fadd float %i.ai, %i.az
  %i.bb = extractelement <4 x float> %i.ay, i64 1
  %i.bc = fadd float %i.ba, %i.bb
  %i.bd = extractelement <4 x float> %i.ay, i64 2
  %i.be = fadd float %i.bc, %i.bd
  store <4 x float> %i.ay, ptr %i.ap, align 4, !tbaa !8
  %i.bf = extractelement <4 x float> %i.ay, i64 3
  %i.bg = fadd float %i.be, %i.bf
  %i.bh = tail call double @exp(double noundef %i.n) #4, !tbaa !4
  %i.bi = fdiv double %i.bh, f0x407FCF0216A64912
  %i.bj = fptrunc double %i.bi to float           ; 2 uses
  %i.bk = getelementptr i8, ptr %i.c, i64 176
  store float %i.bj, ptr %i.bk, align 4, !tbaa !8
  %i.bl = fadd float %i.bg, %i.bj                 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %.preheader69, label %.preheader70, !llvm.loop !10

.preheader69:                                     ; preds = %.preheader70
  %i.bm = zext i32 %1 to i64                      ; 10 uses
  %i.bn = icmp sgt i32 %0, 8
  %i.bo = icmp sgt i32 %1, 8
  %or.cond = and i1 %i.bn, %i.bo
  br i1 %or.cond, label %.preheader68.us.preheader, label %._crit_edge81

.preheader68.us.preheader:                        ; preds = %.preheader69
  %i.bp = add nsw i32 %0, -4
  %i.bq = add nsw i32 %1, -4
  %wide.trip.count101 = zext nneg i32 %i.bp to i64
  %wide.trip.count = zext i32 %i.bq to i64
  %i.br = load <8 x float>, ptr %i.a, align 16, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bt = load float, ptr %i.bs, align 16, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bv = load <8 x float>, ptr %i.bu, align 4, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bz = load <8 x float>, ptr %i.by, align 8, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.cd = load <8 x float>, ptr %i.cc, align 4, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.ch = load <8 x float>, ptr %i.cg, align 16, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.cj = load float, ptr %i.ci, align 16, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.cl = load <8 x float>, ptr %i.ck, align 4, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.cp = load <8 x float>, ptr %i.co, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.ct = load <8 x float>, ptr %i.cs, align 4, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 284
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.cx = load <8 x float>, ptr %i.cw, align 16, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.cz = load float, ptr %i.cy, align 16, !tbaa !8
  br label %.preheader68.us

.preheader68.us:                                  ; preds = %.preheader68.us.preheader, %._crit_edge.us
  %indvars.iv98 = phi i64 [ 4, %.preheader68.us.preheader ], [ %indvars.iv.next99, %._crit_edge.us ] ; 11 uses
  %i.da = mul nuw nsw i64 %indvars.iv98, %i.bm
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.da
  %i.dc = add nsw i64 %indvars.iv98, -4
  %i.dd = mul nuw nsw i64 %i.dc, %i.bm
  %i.de = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dd ; 2 uses
  %i.df = add nsw i64 %indvars.iv98, -3
  %i.dg = mul nuw nsw i64 %i.df, %i.bm
  %i.dh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dg ; 2 uses
  %i.di = add nsw i64 %indvars.iv98, -2
  %i.dj = mul nuw nsw i64 %i.di, %i.bm
  %i.dk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dj ; 2 uses
  %i.dl = add nsw i64 %indvars.iv98, -1
  %i.dm = mul nuw nsw i64 %i.dl, %i.bm
  %i.dn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dm ; 2 uses
  %i.do = mul nuw nsw i64 %indvars.iv98, %i.bm
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.do ; 2 uses
  %i.dq = add nuw nsw i64 %indvars.iv98, 1
  %i.dr = mul nuw nsw i64 %i.dq, %i.bm
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dr ; 2 uses
  %i.dt = add nuw nsw i64 %indvars.iv98, 2
  %i.du = mul nuw nsw i64 %i.dt, %i.bm
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.du ; 2 uses
  %i.dw = add nuw nsw i64 %indvars.iv98, 3
  %i.dx = mul nuw nsw i64 %i.dw, %i.bm
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dx ; 2 uses
  %i.dz = add nuw nsw i64 %indvars.iv98, 4
  %i.ea = mul nuw nsw i64 %i.dz, %i.bm
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ea ; 2 uses
  br label %.preheader67.us

.preheader67.us:                                  ; preds = %.preheader68.us, %.preheader67.us
  %indvars.iv94 = phi i64 [ 4, %.preheader68.us ], [ %i.ec, %.preheader67.us ] ; 20 uses
  %i.ec = add nuw nsw i64 %indvars.iv94, 1        ; 2 uses
  %i.ed = getelementptr [4 x i8], ptr %i.de, i64 %indvars.iv94
  %i.ee = getelementptr i8, ptr %i.ed, i64 -16
  %i.ef = load <8 x i32>, ptr %i.ee, align 4, !tbaa !4
  %i.eg = sitofp <8 x i32> %i.ef to <8 x float>
  %i.eh = fmul <8 x float> %i.br, %i.eg           ; 8 uses
  %i.ei = extractelement <8 x float> %i.eh, i64 0
  %i.ej = fadd float %i.ei, 0.000000e+00
  %i.ek = extractelement <8 x float> %i.eh, i64 1
  %i.el = fadd float %i.ej, %i.ek
  %i.em = extractelement <8 x float> %i.eh, i64 2
  %i.en = fadd float %i.el, %i.em
  %i.eo = extractelement <8 x float> %i.eh, i64 3
  %i.ep = fadd float %i.en, %i.eo
  %i.eq = extractelement <8 x float> %i.eh, i64 4
  %i.er = fadd float %i.ep, %i.eq
  %i.es = extractelement <8 x float> %i.eh, i64 5
  %i.et = fadd float %i.er, %i.es
  %i.eu = extractelement <8 x float> %i.eh, i64 6
  %i.ev = fadd float %i.et, %i.eu
  %i.ew = extractelement <8 x float> %i.eh, i64 7
  %i.ex = fadd float %i.ev, %i.ew
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv94
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !4
  %i.fb = sitofp i32 %i.fa to float
  %i.fc = fmul float %i.bt, %i.fb
  %i.fd = fadd float %i.ex, %i.fc
  %i.fe = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv94
  %i.ff = getelementptr i8, ptr %i.fe, i64 -16
  %i.fg = load <8 x i32>, ptr %i.ff, align 4, !tbaa !4
  %i.fh = sitofp <8 x i32> %i.fg to <8 x float>
  %i.fi = fmul <8 x float> %i.bv, %i.fh           ; 8 uses
  %i.fj = extractelement <8 x float> %i.fi, i64 0
  %i.fk = fadd float %i.fd, %i.fj
  %i.fl = extractelement <8 x float> %i.fi, i64 1
  %i.fm = fadd float %i.fk, %i.fl
  %i.fn = extractelement <8 x float> %i.fi, i64 2
  %i.fo = fadd float %i.fm, %i.fn
  %i.fp = extractelement <8 x float> %i.fi, i64 3
  %i.fq = fadd float %i.fo, %i.fp
  %i.fr = extractelement <8 x float> %i.fi, i64 4
  %i.fs = fadd float %i.fq, %i.fr
  %i.ft = extractelement <8 x float> %i.fi, i64 5
  %i.fu = fadd float %i.fs, %i.ft
  %i.fv = extractelement <8 x float> %i.fi, i64 6
  %i.fw = fadd float %i.fu, %i.fv
  %i.fx = extractelement <8 x float> %i.fi, i64 7
  %i.fy = fadd float %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv94
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !4
  %i.gc = sitofp i32 %i.gb to float
  %i.gd = fmul float %i.bx, %i.gc
  %i.ge = fadd float %i.fy, %i.gd
  %i.gf = getelementptr [4 x i8], ptr %i.dk, i64 %indvars.iv94
  %i.gg = getelementptr i8, ptr %i.gf, i64 -16
  %i.gh = load <8 x i32>, ptr %i.gg, align 4, !tbaa !4
  %i.gi = sitofp <8 x i32> %i.gh to <8 x float>
  %i.gj = fmul <8 x float> %i.bz, %i.gi           ; 8 uses
  %i.gk = extractelement <8 x float> %i.gj, i64 0
  %i.gl = fadd float %i.ge, %i.gk
  %i.gm = extractelement <8 x float> %i.gj, i64 1
  %i.gn = fadd float %i.gl, %i.gm
  %i.go = extractelement <8 x float> %i.gj, i64 2
  %i.gp = fadd float %i.gn, %i.go
  %i.gq = extractelement <8 x float> %i.gj, i64 3
  %i.gr = fadd float %i.gp, %i.gq
  %i.gs = extractelement <8 x float> %i.gj, i64 4
  %i.gt = fadd float %i.gr, %i.gs
  %i.gu = extractelement <8 x float> %i.gj, i64 5
  %i.gv = fadd float %i.gt, %i.gu
  %i.gw = extractelement <8 x float> %i.gj, i64 6
  %i.gx = fadd float %i.gv, %i.gw
  %i.gy = extractelement <8 x float> %i.gj, i64 7
  %i.gz = fadd float %i.gx, %i.gy
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv94
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !4
  %i.hd = sitofp i32 %i.hc to float
  %i.he = fmul float %i.cb, %i.hd
  %i.hf = fadd float %i.gz, %i.he
  %i.hg = getelementptr [4 x i8], ptr %i.dn, i64 %indvars.iv94
  %i.hh = getelementptr i8, ptr %i.hg, i64 -16
  %i.hi = load <8 x i32>, ptr %i.hh, align 4, !tbaa !4
  %i.hj = sitofp <8 x i32> %i.hi to <8 x float>
  %i.hk = fmul <8 x float> %i.cd, %i.hj           ; 8 uses
  %i.hl = extractelement <8 x float> %i.hk, i64 0
  %i.hm = fadd float %i.hf, %i.hl
  %i.hn = extractelement <8 x float> %i.hk, i64 1
  %i.ho = fadd float %i.hm, %i.hn
  %i.hp = extractelement <8 x float> %i.hk, i64 2
  %i.hq = fadd float %i.ho, %i.hp
  %i.hr = extractelement <8 x float> %i.hk, i64 3
  %i.hs = fadd float %i.hq, %i.hr
  %i.ht = extractelement <8 x float> %i.hk, i64 4
  %i.hu = fadd float %i.hs, %i.ht
  %i.hv = extractelement <8 x float> %i.hk, i64 5
  %i.hw = fadd float %i.hu, %i.hv
  %i.hx = extractelement <8 x float> %i.hk, i64 6
  %i.hy = fadd float %i.hw, %i.hx
  %i.hz = extractelement <8 x float> %i.hk, i64 7
  %i.ia = fadd float %i.hy, %i.hz
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv94
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !4
  %i.ie = sitofp i32 %i.id to float
  %i.if = fmul float %i.cf, %i.ie
  %i.ig = fadd float %i.ia, %i.if
  %i.ih = getelementptr [4 x i8], ptr %i.dp, i64 %indvars.iv94
  %i.ii = getelementptr i8, ptr %i.ih, i64 -16
  %i.ij = load <8 x i32>, ptr %i.ii, align 4, !tbaa !4
  %i.ik = sitofp <8 x i32> %i.ij to <8 x float>
  %i.il = fmul <8 x float> %i.ch, %i.ik           ; 8 uses
  %i.im = extractelement <8 x float> %i.il, i64 0
  %i.in = fadd float %i.ig, %i.im
  %i.io = extractelement <8 x float> %i.il, i64 1
  %i.ip = fadd float %i.in, %i.io
  %i.iq = extractelement <8 x float> %i.il, i64 2
  %i.ir = fadd float %i.ip, %i.iq
  %i.is = extractelement <8 x float> %i.il, i64 3
  %i.it = fadd float %i.ir, %i.is
  %i.iu = extractelement <8 x float> %i.il, i64 4
  %i.iv = fadd float %i.it, %i.iu
  %i.iw = extractelement <8 x float> %i.il, i64 5
  %i.ix = fadd float %i.iv, %i.iw
  %i.iy = extractelement <8 x float> %i.il, i64 6
  %i.iz = fadd float %i.ix, %i.iy
  %i.ja = extractelement <8 x float> %i.il, i64 7
  %i.jb = fadd float %i.iz, %i.ja
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv94
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !4
  %i.jf = sitofp i32 %i.je to float
  %i.jg = fmul float %i.cj, %i.jf
  %i.jh = fadd float %i.jb, %i.jg
  %i.ji = getelementptr [4 x i8], ptr %i.ds, i64 %indvars.iv94
  %i.jj = getelementptr i8, ptr %i.ji, i64 -16
  %i.jk = load <8 x i32>, ptr %i.jj, align 4, !tbaa !4
  %i.jl = sitofp <8 x i32> %i.jk to <8 x float>
  %i.jm = fmul <8 x float> %i.cl, %i.jl           ; 8 uses
  %i.jn = extractelement <8 x float> %i.jm, i64 0
  %i.jo = fadd float %i.jh, %i.jn
  %i.jp = extractelement <8 x float> %i.jm, i64 1
  %i.jq = fadd float %i.jo, %i.jp
  %i.jr = extractelement <8 x float> %i.jm, i64 2
  %i.js = fadd float %i.jq, %i.jr
  %i.jt = extractelement <8 x float> %i.jm, i64 3
  %i.ju = fadd float %i.js, %i.jt
  %i.jv = extractelement <8 x float> %i.jm, i64 4
  %i.jw = fadd float %i.ju, %i.jv
  %i.jx = extractelement <8 x float> %i.jm, i64 5
  %i.jy = fadd float %i.jw, %i.jx
  %i.jz = extractelement <8 x float> %i.jm, i64 6
  %i.ka = fadd float %i.jy, %i.jz
  %i.kb = extractelement <8 x float> %i.jm, i64 7
  %i.kc = fadd float %i.ka, %i.kb
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv94
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !4
  %i.kg = sitofp i32 %i.kf to float
  %i.kh = fmul float %i.cn, %i.kg
  %i.ki = fadd float %i.kc, %i.kh
  %i.kj = getelementptr [4 x i8], ptr %i.dv, i64 %indvars.iv94
  %i.kk = getelementptr i8, ptr %i.kj, i64 -16
  %i.kl = load <8 x i32>, ptr %i.kk, align 4, !tbaa !4
  %i.km = sitofp <8 x i32> %i.kl to <8 x float>
  %i.kn = fmul <8 x float> %i.cp, %i.km           ; 8 uses
  %i.ko = extractelement <8 x float> %i.kn, i64 0
  %i.kp = fadd float %i.ki, %i.ko
  %i.kq = extractelement <8 x float> %i.kn, i64 1
  %i.kr = fadd float %i.kp, %i.kq
  %i.ks = extractelement <8 x float> %i.kn, i64 2
  %i.kt = fadd float %i.kr, %i.ks
  %i.ku = extractelement <8 x float> %i.kn, i64 3
  %i.kv = fadd float %i.kt, %i.ku
  %i.kw = extractelement <8 x float> %i.kn, i64 4
  %i.kx = fadd float %i.kv, %i.kw
  %i.ky = extractelement <8 x float> %i.kn, i64 5
  %i.kz = fadd float %i.kx, %i.ky
  %i.la = extractelement <8 x float> %i.kn, i64 6
  %i.lb = fadd float %i.kz, %i.la
  %i.lc = extractelement <8 x float> %i.kn, i64 7
  %i.ld = fadd float %i.lb, %i.lc
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv94
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !4
  %i.lh = sitofp i32 %i.lg to float
  %i.li = fmul float %i.cr, %i.lh
  %i.lj = fadd float %i.ld, %i.li
  %i.lk = getelementptr [4 x i8], ptr %i.dy, i64 %indvars.iv94
  %i.ll = getelementptr i8, ptr %i.lk, i64 -16
  %i.lm = load <8 x i32>, ptr %i.ll, align 4, !tbaa !4
  %i.ln = sitofp <8 x i32> %i.lm to <8 x float>
  %i.lo = fmul <8 x float> %i.ct, %i.ln           ; 8 uses
  %i.lp = extractelement <8 x float> %i.lo, i64 0
  %i.lq = fadd float %i.lj, %i.lp
  %i.lr = extractelement <8 x float> %i.lo, i64 1
  %i.ls = fadd float %i.lq, %i.lr
  %i.lt = extractelement <8 x float> %i.lo, i64 2
  %i.lu = fadd float %i.ls, %i.lt
  %i.lv = extractelement <8 x float> %i.lo, i64 3
  %i.lw = fadd float %i.lu, %i.lv
  %i.lx = extractelement <8 x float> %i.lo, i64 4
  %i.ly = fadd float %i.lw, %i.lx
  %i.lz = extractelement <8 x float> %i.lo, i64 5
  %i.ma = fadd float %i.ly, %i.lz
  %i.mb = extractelement <8 x float> %i.lo, i64 6
  %i.mc = fadd float %i.ma, %i.mb
  %i.md = extractelement <8 x float> %i.lo, i64 7
  %i.me = fadd float %i.mc, %i.md
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv94
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !4
  %i.mi = sitofp i32 %i.mh to float
  %i.mj = fmul float %i.cv, %i.mi
  %i.mk = fadd float %i.me, %i.mj
  %i.ml = getelementptr [4 x i8], ptr %i.eb, i64 %indvars.iv94
  %i.mm = getelementptr i8, ptr %i.ml, i64 -16
  %i.mn = load <8 x i32>, ptr %i.mm, align 4, !tbaa !4
  %i.mo = sitofp <8 x i32> %i.mn to <8 x float>
  %i.mp = fmul <8 x float> %i.cx, %i.mo           ; 8 uses
  %i.mq = extractelement <8 x float> %i.mp, i64 0
  %i.mr = fadd float %i.mk, %i.mq
  %i.ms = extractelement <8 x float> %i.mp, i64 1
  %i.mt = fadd float %i.mr, %i.ms
  %i.mu = extractelement <8 x float> %i.mp, i64 2
  %i.mv = fadd float %i.mt, %i.mu
  %i.mw = extractelement <8 x float> %i.mp, i64 3
  %i.mx = fadd float %i.mv, %i.mw
  %i.my = extractelement <8 x float> %i.mp, i64 4
  %i.mz = fadd float %i.mx, %i.my
  %i.na = extractelement <8 x float> %i.mp, i64 5
  %i.nb = fadd float %i.mz, %i.na
  %i.nc = extractelement <8 x float> %i.mp, i64 6
  %i.nd = fadd float %i.nb, %i.nc
  %i.ne = extractelement <8 x float> %i.mp, i64 7
  %i.nf = fadd float %i.nd, %i.ne
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv94
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !4
  %i.nj = sitofp i32 %i.ni to float
  %i.nk = fmul float %i.cz, %i.nj
  %i.nl = fadd float %i.nf, %i.nk
  %i.nm = fdiv float %i.nl, %i.bl
  %i.nn = fptosi float %i.nm to i32
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv94
  store i32 %i.nn, ptr %i.no, align 4, !tbaa !4
  %exitcond97.not = icmp eq i64 %i.ec, %wide.trip.count
  br i1 %exitcond97.not, label %._crit_edge.us, label %.preheader67.us, !llvm.loop !12

._crit_edge.us:                                   ; preds = %.preheader67.us
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %._crit_edge81, label %.preheader68.us, !llvm.loop !13

._crit_edge81:                                    ; preds = %._crit_edge.us, %.preheader69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
end_hunk_0
