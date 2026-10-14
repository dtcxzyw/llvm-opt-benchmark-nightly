Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ElecEw_VdwLJCombGeom_VgrpF?download=true
inline.NumInlined: 1416
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(656) %1, ptr noundef nonnull align 8 dereferenceable(137) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat {
.preheader3666.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %.val.i.i = load <16 x float>, ptr %i.h, align 64, !tbaa !29 ; 2 uses
  %i.i = fcmp ogt <16 x float> %.val.i.i, zeroinitializer
  %i.j = fadd <16 x float> %.val.i.i, splat (float -2.000000e+00) ; 2 uses
  %i.k = fcmp ogt <16 x float> %i.j, zeroinitializer
  %i.l = fadd <16 x float> %i.j, splat (float -2.000000e+00) ; 2 uses
  %i.m = fcmp ogt <16 x float> %i.l, zeroinitializer
  %i.n = fadd <16 x float> %i.l, splat (float -2.000000e+00)
  %i.o = fcmp ogt <16 x float> %i.n, zeroinitializer
  %i.p = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %i.q = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %i.r = bitcast <16 x i1> %i.m to i16            ; 2 uses
  %i.s = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = load <4 x float>, ptr %i.t, align 8      ; 4 uses
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <16 x i32> zeroinitializer ; 16 uses
  %i.w = extractelement <4 x float> %i.u, i64 0
  %foldExtExtBinop = fmul <4 x float> %i.u, %i.u
  %i.x = shufflevector <4 x float> %foldExtExtBinop, <4 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.y = fmul float %i.w, 5.000000e-01
  %i.z = fpext float %i.y to double
  %i.aa = fmul double %i.z, f0x3FF20DD750429B6D
  %i.ab = fptrunc double %i.aa to float           ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.ad = load <4 x float>, ptr %i.ac, align 4    ; 3 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load <1 x float>, ptr %i.af, align 8
  %i.ah = shufflevector <1 x float> %i.ag, <1 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.aj = load <1 x float>, ptr %i.ai, align 4
  %i.ak = shufflevector <1 x float> %i.aj, <1 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.am = load float, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = fmul float %i.am, %i.am
  %i.ao = insertelement <16 x float> poison, float %i.an, i64 0
  %i.ap = shufflevector <16 x float> %i.ao, <16 x float> poison, <16 x i32> zeroinitializer ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !26 ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !26 ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !59 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !61 ; 2 uses
  %.not36563782 = icmp eq ptr %i.ax, %i.az
  br i1 %.not36563782, label %._crit_edge, label %.lr.ph3784

.lr.ph3784:                                       ; preds = %.preheader3666.preheader
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 552
  %6 = load ptr, ptr %5, align 8, !tbaa !64       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 64
  %.val609.1 = load <8 x i64>, ptr %7, align 64, !tbaa !29 ; 3 uses
  %.val609 = load <8 x i64>, ptr %6, align 64, !tbaa !29 ; 3 uses
  %i.ba = extractelement <4 x float> %i.ad, i64 2
  %i.bb = getelementptr i8, ptr %4, i64 136
  %.val.val = load ptr, ptr %i.bb, align 8, !tbaa !66 ; 12 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.val, i64 32 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.val, i64 88
  %i.be = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.val, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.val, i64 40 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.val, i64 28
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.val, i64 96 ; 9 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.val, i64 64 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.val, i64 120 ; 11 uses
  %i.bl = fneg float %i.ba                        ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.val, i64 24 ; 7 uses
  %i.bn = shufflevector <4 x float> %i.ad, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.val, i64 16 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.val, i64 20 ; 6 uses
  %8 = bitcast <8 x i64> %.val609 to <16 x i32>
  %9 = bitcast <8 x i64> %.val609.1 to <16 x i32>
  %10 = bitcast <8 x i64> %.val609 to <16 x i32>
  %11 = bitcast <8 x i64> %.val609.1 to <16 x i32>
  %12 = bitcast <8 x i64> %.val609 to <16 x i32>
  %13 = bitcast <8 x i64> %.val609.1 to <16 x i32>
  br label %bb.a

._crit_edge:                                      ; preds = %.loopexit, %.preheader3666.preheader
  ret void

bb.a:                                             ; preds = %.lr.ph3784, %.loopexit
  %.sroa.01744.03783 = phi ptr [ %i.ax, %.lr.ph3784 ], [ %i.chi, %.loopexit ] ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.01744.03783, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !68 ; 3 uses
  %i.bs = and i32 %i.br, 127                      ; 2 uses
  %i.bt = mul nuw nsw i32 %i.bs, 3                ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.01744.03783, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !69 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.01744.03783, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !70 ; 10 uses
  %i.by = load i32, ptr %.sroa.01744.03783, align 4, !tbaa !71 ; 3 uses
  %i.bz = icmp eq i32 %i.bs, 22
  %i.ca = select i1 %i.bz, i32 %i.by, i32 -1      ; 5 uses
  %i.cb = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !72
  %i.ce = insertelement <16 x float> poison, float %i.cd, i64 0
  %i.cf = shufflevector <16 x float> %i.ce, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cg = zext nneg i32 %i.bt to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !72
  %i.ck = insertelement <16 x float> poison, float %i.cj, i64 0
  %i.cl = shufflevector <16 x float> %i.ck, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cm = add nuw nsw i32 %i.bt, 2
  %i.cn = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !72
  %i.cq = insertelement <16 x float> poison, float %i.cp, i64 0
  %i.cr = shufflevector <16 x float> %i.cq, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cs = shl i32 %i.by, 2                        ; 4 uses
  %i.ct = and i32 %i.cs, -8                       ; 2 uses
  %i.cu = mul nsw i32 %i.ct, 3
  %i.cv = and i32 %i.cs, 4                        ; 2 uses
  %i.cw = or disjoint i32 %i.cu, %i.cv            ; 3 uses
  %i.cx = shl nsw i32 %i.ct, 1
  %i.cy = or disjoint i32 %i.cx, %i.cv
  %i.cz = and i32 %i.br, 512
  %i.da = icmp ne i32 %i.cz, 0                    ; 4 uses
  %i.db = and i32 %i.br, 384
  %or.cond = icmp ne i32 %i.db, 128
  %i.dc = and i1 %or.cond, %i.da
  %i.dd = load ptr, ptr %i.bc, align 8, !tbaa !83
  %i.de = sext i32 %i.by to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !84 ; 7 uses
  store i32 %i.dg, ptr %i.bd, align 8, !tbaa !85
  %i.dh = load i32, ptr %i.be, align 8, !tbaa !86 ; 5 uses
  %i.di = load i32, ptr %i.bf, align 4, !tbaa !87 ; 6 uses
  %i.dj = load i32, ptr %i.bh, align 4, !tbaa !88 ; 4 uses
  %i.dk = load ptr, ptr %i.bi, align 8, !tbaa !89 ; 5 uses
  %i.dl = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 4 uses
  %i.dm = and i32 %i.di, %i.dg                    ; 2 uses
  %i.dn = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.do = mul nsw i32 %i.dm, %i.dj
  %i.dp = sext i32 %i.do to i64                   ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.dp
  store ptr %i.dq, ptr %i.dk, align 8, !tbaa !90
  %i.dr = load ptr, ptr %i.bj, align 8, !tbaa !28
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.ds, ptr %i.dl, align 8, !tbaa !90
  %i.dt = ashr i32 %i.dg, %i.dh
  %i.du = and i32 %i.dt, %i.di                    ; 2 uses
  %i.dv = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.dw = mul nsw i32 %i.du, %i.dj
  %i.dx = sext i32 %i.dw to i64                   ; 2 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !90
  %i.ea = load ptr, ptr %i.bj, align 8, !tbaa !28
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.dx
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !90
  %i.ed = shl i32 %i.dh, 1
  %i.ee = ashr i32 %i.dg, %i.ed
  %i.ef = and i32 %i.ee, %i.di
  %i.eg = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.eh = mul nsw i32 %i.ef, %i.dj
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !90
  %i.el = load ptr, ptr %i.bj, align 8, !tbaa !28
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.ei
  %i.en = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr %i.em, ptr %i.en, align 8, !tbaa !90
  %i.eo = mul i32 %i.dh, 3
  %i.ep = ashr i32 %i.dg, %i.eo
  %i.eq = and i32 %i.ep, %i.di
  %i.er = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.es = mul nsw i32 %i.eq, %i.dj
  %i.et = sext i32 %i.es to i64                   ; 2 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dk, i64 24 ; 2 uses
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !90
  %i.ew = load ptr, ptr %i.bj, align 8, !tbaa !28
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.et
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !90
  br i1 %i.da, label %bb.b, label %.loopexit3665

bb.b:                                             ; preds = %bb.a
  %i.ez = sext i32 %i.bv to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !92
  %i.fc = ashr i32 %i.ca, 1
  %i.fd = icmp eq i32 %i.fb, %i.fc
  br i1 %i.fd, label %.preheader3664, label %.loopexit3665

.preheader3664:                                   ; preds = %bb.b
  %i.fe = load i32, ptr %i.bm, align 8, !tbaa !93 ; 4 uses
  %i.ff = sext i32 %i.cs to i64                   ; 4 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !72 ; 2 uses
  %i.fi = fmul float %i.fh, %i.bl
  %i.fj = fmul float %i.fh, %i.fi
  %i.fk = fmul float %i.fj, %i.ab
  %i.fl = mul nsw i32 %i.fe, %i.dm
  %i.fm = load ptr, ptr %i.dk, align 8, !tbaa !90
  %i.fn = sext i32 %i.fl to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fn ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !72
  %i.fq = fadd float %i.fk, %i.fp
  store float %i.fq, ptr %i.fo, align 4, !tbaa !72
  %i.fr = getelementptr [4 x i8], ptr %i.ar, i64 %i.ff
  %i.fs = getelementptr i8, ptr %i.fr, i64 4
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !72 ; 2 uses
  %i.fu = fmul float %i.ft, %i.bl
  %i.fv = fmul float %i.ft, %i.fu
  %i.fw = fmul float %i.fv, %i.ab
  %i.fx = mul nsw i32 %i.fe, %i.du
  %i.fy = load ptr, ptr %i.dz, align 8, !tbaa !90
  %i.fz = sext i32 %i.fx to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.fz ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !72
  %i.gc = fadd float %i.fw, %i.gb
  store float %i.gc, ptr %i.ga, align 4, !tbaa !72
  %i.gd = getelementptr [4 x i8], ptr %i.ar, i64 %i.ff
  %i.ge = getelementptr i8, ptr %i.gd, i64 8
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !72 ; 2 uses
  %i.gg = fmul float %i.gf, %i.bl
  %i.gh = fmul float %i.gf, %i.gg
  %i.gi = fmul float %i.gh, %i.ab
  %i.gj = shl i32 %i.dh, 1
  %i.gk = ashr i32 %i.dg, %i.gj
  %i.gl = and i32 %i.gk, %i.di
  %i.gm = mul nsw i32 %i.fe, %i.gl
  %i.gn = load ptr, ptr %i.ek, align 8, !tbaa !90
  %i.go = sext i32 %i.gm to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.go ; 2 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !72
  %i.gr = fadd float %i.gi, %i.gq
  store float %i.gr, ptr %i.gp, align 4, !tbaa !72
  %i.gs = getelementptr [4 x i8], ptr %i.ar, i64 %i.ff
  %i.gt = getelementptr i8, ptr %i.gs, i64 12
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !72 ; 2 uses
  %i.gv = fmul float %i.gu, %i.bl
  %i.gw = fmul float %i.gu, %i.gv
  %i.gx = fmul float %i.gw, %i.ab
  %i.gy = mul i32 %i.dh, 3
  %i.gz = ashr i32 %i.dg, %i.gy
  %i.ha = and i32 %i.gz, %i.di
  %i.hb = mul nsw i32 %i.fe, %i.ha
  %i.hc = load ptr, ptr %i.ev, align 8, !tbaa !90
  %i.hd = sext i32 %i.hb to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.hd ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !72
  %i.hg = fadd float %i.gx, %i.hf
  store float %i.hg, ptr %i.he, align 4, !tbaa !72
  br label %.loopexit3665

.loopexit3665:                                    ; preds = %.preheader3664, %bb.b, %bb.a
  %i.hh = add nsw i32 %i.cw, 8
  %i.hi = add nsw i32 %i.cw, 16
  %i.hj = sext i32 %i.cw to i64                   ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.hj ; 4 uses
  %.val.i = load float, ptr %i.hk, align 1, !tbaa !29, !noalias !94
  %i.hl = getelementptr i8, ptr %i.hk, i64 4
  %.val3.i = load float, ptr %i.hl, align 1, !tbaa !29, !noalias !94
  %i.hm = insertelement <4 x float> poison, float %.val.i, i64 0
  %i.hn = insertelement <4 x float> poison, float %.val3.i, i64 0
  %i.ho = shufflevector <4 x float> %i.hm, <4 x float> %i.hn, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.hp = fadd <16 x float> %i.cf, %i.ho          ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %.val.i649 = load float, ptr %i.hq, align 1, !tbaa !29, !noalias !94
  %i.hr = getelementptr i8, ptr %i.hk, i64 12
  %.val3.i650 = load float, ptr %i.hr, align 1, !tbaa !29, !noalias !94
  %i.hs = insertelement <4 x float> poison, float %.val.i649, i64 0
  %i.ht = insertelement <4 x float> poison, float %.val3.i650, i64 0
  %i.hu = shufflevector <4 x float> %i.hs, <4 x float> %i.ht, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.hv = fadd <16 x float> %i.cf, %i.hu          ; 6 uses
  %i.hw = sext i32 %i.hh to i64                   ; 2 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.hw ; 4 uses
  %.val.i652 = load float, ptr %i.hx, align 1, !tbaa !29, !noalias !95
  %i.hy = getelementptr i8, ptr %i.hx, i64 4
  %.val3.i653 = load float, ptr %i.hy, align 1, !tbaa !29, !noalias !95
  %i.hz = insertelement <4 x float> poison, float %.val.i652, i64 0
  %i.ia = insertelement <4 x float> poison, float %.val3.i653, i64 0
  %i.ib = shufflevector <4 x float> %i.hz, <4 x float> %i.ia, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ic = fadd <16 x float> %i.cl, %i.ib          ; 6 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.val.i655 = load float, ptr %i.id, align 1, !tbaa !29, !noalias !95
  %i.ie = getelementptr i8, ptr %i.hx, i64 12
  %.val3.i656 = load float, ptr %i.ie, align 1, !tbaa !29, !noalias !95
  %i.if = insertelement <4 x float> poison, float %.val.i655, i64 0
  %i.ig = insertelement <4 x float> poison, float %.val3.i656, i64 0
  %i.ih = shufflevector <4 x float> %i.if, <4 x float> %i.ig, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ii = fadd <16 x float> %i.cl, %i.ih          ; 6 uses
  %i.ij = sext i32 %i.hi to i64                   ; 2 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ij ; 4 uses
  %.val.i658 = load float, ptr %i.ik, align 1, !tbaa !29, !noalias !96
  %i.il = getelementptr i8, ptr %i.ik, i64 4
  %.val3.i659 = load float, ptr %i.il, align 1, !tbaa !29, !noalias !96
  %i.im = insertelement <4 x float> poison, float %.val.i658, i64 0
  %i.in = insertelement <4 x float> poison, float %.val3.i659, i64 0
  %i.io = shufflevector <4 x float> %i.im, <4 x float> %i.in, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ip = fadd <16 x float> %i.cr, %i.io          ; 6 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %.val.i661 = load float, ptr %i.iq, align 1, !tbaa !29, !noalias !96
  %i.ir = getelementptr i8, ptr %i.ik, i64 12
  %.val3.i662 = load float, ptr %i.ir, align 1, !tbaa !29, !noalias !96
  %i.is = insertelement <4 x float> poison, float %.val.i661, i64 0
  %i.it = insertelement <4 x float> poison, float %.val3.i662, i64 0
  %i.iu = shufflevector <4 x float> %i.is, <4 x float> %i.it, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.iv = fadd <16 x float> %i.cr, %i.iu          ; 6 uses
  br i1 %i.da, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit3665
  %i.iw = sext i32 %i.cs to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.iw ; 4 uses
  %.val.i664 = load float, ptr %i.ix, align 1, !tbaa !29, !noalias !97
  %i.iy = getelementptr i8, ptr %i.ix, i64 4
  %.val2.i = load float, ptr %i.iy, align 1, !tbaa !29, !noalias !97
  %i.iz = insertelement <4 x float> poison, float %.val.i664, i64 0
  %i.ja = insertelement <4 x float> poison, float %.val2.i, i64 0
  %i.jb = shufflevector <4 x float> %i.iz, <4 x float> %i.ja, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.jc = fmul <16 x float> %i.bn, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %.val.i665 = load float, ptr %i.jd, align 1, !tbaa !29, !noalias !97
  %i.je = getelementptr i8, ptr %i.ix, i64 12
  %.val2.i666 = load float, ptr %i.je, align 1, !tbaa !29, !noalias !97
  %i.jf = insertelement <4 x float> poison, float %.val.i665, i64 0
  %i.jg = insertelement <4 x float> poison, float %.val2.i666, i64 0
  %i.jh = shufflevector <4 x float> %i.jf, <4 x float> %i.jg, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ji = fmul <16 x float> %i.bn, %i.jh
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit3665
  %.sroa.03284.0 = phi <16 x float> [ %i.jc, %bb.c ], [ undef, %.loopexit3665 ] ; 4 uses
  %.sroa.73288.0 = phi <16 x float> [ %i.ji, %bb.c ], [ undef, %.loopexit3665 ] ; 4 uses
  %i.jj = sext i32 %i.cy to i64
  %i.jk = getelementptr [4 x i8], ptr %i.f, i64 %i.jj ; 8 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 32
  %.val610 = load float, ptr %i.jk, align 1, !tbaa !29
  %i.jm = getelementptr i8, ptr %i.jk, i64 4
  %.val611 = load float, ptr %i.jm, align 1, !tbaa !29
  %i.jn = insertelement <4 x float> poison, float %.val610, i64 0
  %i.jo = insertelement <4 x float> poison, float %.val611, i64 0
  %i.jp = shufflevector <4 x float> %i.jn, <4 x float> %i.jo, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %.val612 = load float, ptr %i.jl, align 1, !tbaa !29
  %i.jq = getelementptr i8, ptr %i.jk, i64 36
  %.val613 = load float, ptr %i.jq, align 1, !tbaa !29
  %i.jr = insertelement <4 x float> poison, float %.val612, i64 0
  %i.js = insertelement <4 x float> poison, float %.val613, i64 0
  %i.jt = shufflevector <4 x float> %i.jr, <4 x float> %i.js, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %.val610.1 = load float, ptr %i.ju, align 1, !tbaa !29
  %i.jv = getelementptr i8, ptr %i.jk, i64 12
  %.val611.1 = load float, ptr %i.jv, align 1, !tbaa !29
  %i.jw = insertelement <4 x float> poison, float %.val610.1, i64 0
  %i.jx = insertelement <4 x float> poison, float %.val611.1, i64 0
  %i.jy = shufflevector <4 x float> %i.jw, <4 x float> %i.jx, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.jz = getelementptr i8, ptr %i.jk, i64 40
  %.val612.1 = load float, ptr %i.jz, align 1, !tbaa !29
  %i.ka = getelementptr i8, ptr %i.jk, i64 44
  %.val613.1 = load float, ptr %i.ka, align 1, !tbaa !29
  %i.kb = insertelement <4 x float> poison, float %.val612.1, i64 0
  %i.kc = insertelement <4 x float> poison, float %.val613.1, i64 0
  %i.kd = shufflevector <4 x float> %i.kb, <4 x float> %i.kc, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.ke = icmp slt i32 %i.bv, %i.bx               ; 3 uses
  br i1 %i.dc, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.d
  br i1 %i.ke, label %.lr.ph3752, label %.critedge

.lr.ph3752:                                       ; preds = %.preheader
  %i.kf = sext i32 %i.bv to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph3752, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532
  %indvars.iv3829 = phi i64 [ %i.kf, %.lr.ph3752 ], [ %indvars.iv.next3830, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ] ; 4 uses
  %.sroa.163145.03750 = phi <16 x float> [ zeroinitializer, %.lr.ph3752 ], [ %i.ws, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ] ; 2 uses
  %.sroa.03138.03749 = phi <16 x float> [ zeroinitializer, %.lr.ph3752 ], [ %i.wr, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ] ; 2 uses
  %.sroa.163127.03748 = phi <16 x float> [ zeroinitializer, %.lr.ph3752 ], [ %i.wu, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ] ; 2 uses
  %.sroa.03120.03747 = phi <16 x float> [ zeroinitializer, %.lr.ph3752 ], [ %i.wt, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ] ; 2 uses
  %.sroa.16.03746 = phi <16 x float> [ zeroinitializer, %.lr.ph3752 ], [ %i.ww, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ] ; 2 uses
  %.sroa.03103.03745 = phi <16 x float> [ zeroinitializer, %.lr.ph3752 ], [ %i.wv, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ] ; 2 uses
  %i.kg = load ptr, ptr %i.au, align 8, !tbaa !59
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv3829
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !84
  %.not523 = icmp eq i32 %i.kj, -1
  br i1 %.not523, label %.critedge.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit531

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit531: ; preds = %bb.e
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv3829 ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !92 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !98
  %i.ko = insertelement <16 x i32> poison, i32 %i.kn, i64 0
  %i.kp = shufflevector <16 x i32> %i.ko, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.kq = and <16 x i32> %i.kp, %12
  %i.kr = icmp ne <16 x i32> %i.kq, zeroinitializer ; 4 uses
  %i.ks = and <16 x i32> %i.kp, %13
  %.not3881 = icmp eq <16 x i32> %i.ks, zeroinitializer ; 2 uses
  %i.kt = shl nsw i32 %i.kl, 3
  %i.ku = mul nsw i32 %i.kl, 24
  %i.kv = sext i32 %i.ku to i64                   ; 2 uses
  %i.kw = getelementptr [4 x i8], ptr %i.at, i64 %i.kv ; 3 uses
  %.val6144051 = load <8 x float>, ptr %i.kw, align 32, !tbaa !29
  %i.kx = shufflevector <8 x float> %.val6144051, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kw, i64 32
  %.val6154052 = load <8 x float>, ptr %i.ky, align 32, !tbaa !29
  %i.kz = shufflevector <8 x float> %.val6154052, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.la = getelementptr i8, ptr %i.kw, i64 64
  %.val6164053 = load <8 x float>, ptr %i.la, align 32, !tbaa !29
  %i.lb = shufflevector <8 x float> %.val6164053, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.lc = fsub <16 x float> %i.hp, %i.kx          ; 3 uses
  %i.ld = fsub <16 x float> %i.hv, %i.kx          ; 3 uses
  %i.le = fsub <16 x float> %i.ic, %i.kz          ; 3 uses
  %i.lf = fsub <16 x float> %i.ii, %i.kz          ; 3 uses
  %i.lg = fsub <16 x float> %i.ip, %i.lb          ; 3 uses
  %i.lh = fsub <16 x float> %i.iv, %i.lb          ; 3 uses
  %i.li = fmul <16 x float> %i.lc, %i.lc
  %i.lj = fmul <16 x float> %i.le, %i.le
  %i.lk = fadd <16 x float> %i.li, %i.lj
  %i.ll = fmul <16 x float> %i.lg, %i.lg
  %i.lm = fadd <16 x float> %i.lk, %i.ll          ; 2 uses
  %i.ln = fmul <16 x float> %i.ld, %i.ld
  %i.lo = fmul <16 x float> %i.lf, %i.lf
  %i.lp = fadd <16 x float> %i.ln, %i.lo
  %i.lq = fmul <16 x float> %i.lh, %i.lh
  %i.lr = fadd <16 x float> %i.lp, %i.lq          ; 2 uses
  %i.ls = fcmp olt <16 x float> %i.lm, %i.ap
  %i.lt = bitcast <16 x i1> %i.ls to i16          ; 3 uses
  %i.lu = fcmp olt <16 x float> %i.lr, %i.ap
  %i.lv = bitcast <16 x i1> %i.lu to i16          ; 3 uses
  %i.lw = shl nsw i32 %i.kl, 1                    ; 3 uses
  %i.lx = icmp eq i32 %i.lw, %i.ca
  br i1 %i.lx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit531
  %i.ly = and i16 %i.lt, %i.p
  %i.lz = and i16 %i.lv, %i.q
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532

bb.g:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit531
  %i.ma = or disjoint i32 %i.lw, 1
  %i.mb = icmp eq i32 %i.ma, %i.ca
  br i1 %i.mb, label %bb.h, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532

bb.h:                                             ; preds = %bb.g
  %i.mc = and i16 %i.lt, %i.r
  %i.md = and i16 %i.lv, %i.s
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532: ; preds = %bb.f, %bb.g, %bb.h
  %.sroa.03445.0 = phi i16 [ %i.ly, %bb.f ], [ %i.mc, %bb.h ], [ %i.lt, %bb.g ]
  %.sroa.11.0 = phi i16 [ %i.lz, %bb.f ], [ %i.md, %bb.h ], [ %i.lv, %bb.g ]
  %i.me = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.lm, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.mf = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.lr, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.mg = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.me, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.mh = fmul <16 x float> %i.me, %i.mg
  %i.mi = fmul <16 x float> %i.mg, splat (float -5.000000e-01)
  %i.mj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mh, <16 x float> %i.mg, <16 x float> splat (float -3.000000e+00))
  %i.mk = fmul <16 x float> %i.mi, %i.mj
  %i.ml = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.mf, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.mm = fmul <16 x float> %i.mf, %i.ml
  %i.mn = fmul <16 x float> %i.ml, splat (float -5.000000e-01)
  %i.mo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mm, <16 x float> %i.ml, <16 x float> splat (float -3.000000e+00))
  %i.mp = fmul <16 x float> %i.mn, %i.mo
  %i.mq = sext i32 %i.kt to i64
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.mq
  %.val6174054 = load <8 x float>, ptr %i.mr, align 32, !tbaa !29
  %i.ms = shufflevector <8 x float> %.val6174054, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.mt = fmul <16 x float> %.sroa.03284.0, %i.ms ; 2 uses
  %i.mu = fmul <16 x float> %.sroa.73288.0, %i.ms ; 2 uses
  %i.mv = bitcast i16 %.sroa.03445.0 to <16 x i1> ; 4 uses
  %i.mw = select <16 x i1> %i.mv, <16 x float> %i.mk, <16 x float> zeroinitializer ; 3 uses
  %i.mx = bitcast i16 %.sroa.11.0 to <16 x i1>    ; 3 uses
  %i.my = select <16 x i1> %i.mx, <16 x float> %i.mp, <16 x float> zeroinitializer ; 3 uses
  %i.mz = fmul <16 x float> %i.mw, %i.mw          ; 4 uses
  %i.na = fmul <16 x float> %i.my, %i.my
  %i.nb = select <16 x i1> %i.kr, <16 x float> %i.mw, <16 x float> zeroinitializer ; 2 uses
  %i.nc = select <16 x i1> %.not3881, <16 x float> zeroinitializer, <16 x float> %i.my ; 2 uses
  %i.nd = select <16 x i1> %i.mv, <16 x float> %i.me, <16 x float> zeroinitializer
  %i.ne = fmul <16 x float> %i.x, %i.nd           ; 7 uses
  %i.nf = select <16 x i1> %i.mx, <16 x float> %i.mf, <16 x float> zeroinitializer
  %i.ng = fmul <16 x float> %i.x, %i.nf           ; 7 uses
  %i.nh = fmul <16 x float> %i.ne, %i.ne          ; 15 uses
  %i.ni = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nh, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.nj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nh, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.nk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ni, <16 x float> %i.nh, <16 x float> splat (float 1.000000e+00))
  %i.nl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nj, <16 x float> %i.ne, <16 x float> %i.nk) ; 2 uses
  %i.nm = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.nl, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.nn = fneg <16 x float> %i.nm
  %i.no = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nn, <16 x float> %i.nl, <16 x float> splat (float 2.000000e+00))
  %i.np = fmul <16 x float> %i.nm, %i.no
  %i.nq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nh, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.nr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nh, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.ns = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nq, <16 x float> %i.nh, <16 x float> splat (float f0xBC9DED90))
  %i.nt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nr, <16 x float> %i.nh, <16 x float> splat (float f0x3D8EAF3B))
  %i.nu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ns, <16 x float> %i.nh, <16 x float> splat (float f0xBF409397))
  %i.nv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nt, <16 x float> %i.ne, <16 x float> %i.nu)
  %i.nw = fmul <16 x float> %i.nv, %i.np
  %i.nx = fmul <16 x float> %i.v, %i.nw
  %i.ny = fmul <16 x float> %i.ng, %i.ng          ; 15 uses
  %i.nz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.oa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.ob = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nz, <16 x float> %i.ny, <16 x float> splat (float 1.000000e+00))
  %i.oc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oa, <16 x float> %i.ng, <16 x float> %i.ob) ; 2 uses
  %i.od = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.oc, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.oe = fneg <16 x float> %i.od
  %i.of = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oe, <16 x float> %i.oc, <16 x float> splat (float 2.000000e+00))
  %i.og = fmul <16 x float> %i.od, %i.of
  %i.oh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.oi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.oj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oh, <16 x float> %i.ny, <16 x float> splat (float f0xBC9DED90))
  %i.ok = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oi, <16 x float> %i.ny, <16 x float> splat (float f0x3D8EAF3B))
  %i.ol = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oj, <16 x float> %i.ny, <16 x float> splat (float f0xBF409397))
  %i.om = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ok, <16 x float> %i.ng, <16 x float> %i.ol)
  %i.on = fmul <16 x float> %i.om, %i.og
  %i.oo = fmul <16 x float> %i.v, %i.on
  %i.op = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nx, <16 x float> %i.ne, <16 x float> %i.nb)
  %i.oq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oo, <16 x float> %i.ng, <16 x float> %i.nc)
  %i.or = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nh, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.os = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nh, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.ot = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.or, <16 x float> %i.ne, <16 x float> %i.os) ; 2 uses
  %i.ou = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.ot, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.ov = fneg <16 x float> %i.ou
  %i.ow = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ov, <16 x float> %i.ot, <16 x float> splat (float 2.000000e+00))
  %i.ox = fmul <16 x float> %i.ou, %i.ow
  %i.oy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nh, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.oz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nh, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.pa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oy, <16 x float> %i.nh, <16 x float> splat (float f0x3D1E57D6))
  %i.pb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oz, <16 x float> %i.nh, <16 x float> splat (float f0x3DE71E23))
  %i.pc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pa, <16 x float> %i.nh, <16 x float> splat (float f0x3F906EC3))
  %i.pd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pb, <16 x float> %i.ne, <16 x float> %i.pc)
  %i.pe = fmul <16 x float> %i.pd, %i.ox
  %i.pf = fmul <16 x float> %i.v, %i.pe
  %i.pg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.ph = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.pi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pg, <16 x float> %i.ng, <16 x float> %i.ph) ; 2 uses
  %i.pj = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.pi, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.pk = fneg <16 x float> %i.pj
  %i.pl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pk, <16 x float> %i.pi, <16 x float> splat (float 2.000000e+00))
  %i.pm = fmul <16 x float> %i.pj, %i.pl
  %i.pn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.po = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ny, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.pp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pn, <16 x float> %i.ny, <16 x float> splat (float f0x3D1E57D6))
  %i.pq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.po, <16 x float> %i.ny, <16 x float> splat (float f0x3DE71E23))
  %i.pr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pp, <16 x float> %i.ny, <16 x float> splat (float f0x3F906EC3))
  %i.ps = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pq, <16 x float> %i.ng, <16 x float> %i.pr)
  %i.pt = fmul <16 x float> %i.ps, %i.pm
  %i.pu = fmul <16 x float> %i.v, %i.pt
  %i.pv = fmul <16 x float> %i.mt, %i.op
  %i.pw = fmul <16 x float> %i.mu, %i.oq
  %i.px = select <16 x i1> %i.kr, <16 x float> %i.ae, <16 x float> zeroinitializer
  %i.py = fadd <16 x float> %i.px, %i.pf
  %i.pz = select <16 x i1> %.not3881, <16 x float> zeroinitializer, <16 x float> %i.ae
  %i.qa = fadd <16 x float> %i.pz, %i.pu
  %i.qb = fsub <16 x float> %i.nb, %i.py
  %i.qc = fmul <16 x float> %i.mt, %i.qb
  %i.qd = fsub <16 x float> %i.nc, %i.qa
  %i.qe = fmul <16 x float> %i.mu, %i.qd
  %i.qf = select <16 x i1> %i.mv, <16 x float> %i.qc, <16 x float> zeroinitializer ; 2 uses
  %i.qg = select <16 x i1> %i.mx, <16 x float> %i.qe, <16 x float> zeroinitializer ; 2 uses
  %i.qh = shl nsw i32 %i.kl, 4
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr [4 x i8], ptr %i.f, i64 %i.qi ; 2 uses
  %.val6184055 = load <8 x float>, ptr %i.qj, align 32, !tbaa !29
  %i.qk = shufflevector <8 x float> %.val6184055, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ql = getelementptr i8, ptr %i.qj, i64 32
  %.val6194056 = load <8 x float>, ptr %i.ql, align 32, !tbaa !29
  %i.qm = shufflevector <8 x float> %.val6194056, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qn = fmul <16 x float> %i.jp, %i.qk          ; 2 uses
  %i.qo = fmul <16 x float> %i.jt, %i.qm          ; 2 uses
  %i.qp = fmul <16 x float> %i.mz, %i.mz
  %i.qq = fmul <16 x float> %i.mz, %i.qp
  %i.qr = select <16 x i1> %i.kr, <16 x float> %i.qq, <16 x float> zeroinitializer ; 3 uses
  %i.qs = fmul <16 x float> %i.qr, %i.qr
  %i.qt = fmul <16 x float> %i.qr, %i.qn          ; 2 uses
  %i.qu = fmul <16 x float> %i.qs, %i.qo          ; 2 uses
  %i.qv = fsub <16 x float> %i.qu, %i.qt
  %i.qw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qn, <16 x float> %i.ah, <16 x float> %i.qt)
  %i.qx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qo, <16 x float> %i.ak, <16 x float> %i.qu)
  %i.qy = fmul <16 x float> %i.qw, splat (float f0xBE2AAAAB)
  %i.qz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qx, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.qy)
  %i.ra = select <16 x i1> %i.mv, <16 x i1> %i.kr, <16 x i1> zeroinitializer
  %i.rb = select <16 x i1> %i.ra, <16 x float> %i.qz, <16 x float> zeroinitializer ; 2 uses
  %i.rc = load ptr, ptr %i.bc, align 8, !tbaa !83
  %i.rd = load i32, ptr %i.bo, align 8, !tbaa !99
  %i.re = sext i32 %i.lw to i64
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.re
  %i.rg = load i32, ptr %i.bp, align 4, !tbaa !100
  %i.rh = load i32, ptr %i.bm, align 8, !tbaa !93
  %i.ri = load <2 x i32>, ptr %i.rf, align 4, !tbaa !84 ; 2 uses
  %i.rj = insertelement <2 x i32> poison, i32 %i.rd, i64 0
  %i.rk = shufflevector <2 x i32> %i.ri, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.rl = shufflevector <2 x i32> %i.ri, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.rm = shufflevector <2 x i32> %i.rj, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.rn = ashr <4 x i32> %i.rl, %i.rm
  %i.ro = shufflevector <4 x i32> %i.rn, <4 x i32> %i.rk, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.rp = insertelement <4 x i32> poison, i32 %i.rg, i64 0
end_hunk_0
begin_hunk_1_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader3666.preheader
  %i.aes = load <8 x float>, ptr %i.aeq, align 32, !tbaa !29
  %i.aet = fadd <8 x float> %i.aem, %i.aes
  store <8 x float> %i.aet, ptr %i.aeq, align 32, !tbaa !29
  %i.aeu = load <8 x float>, ptr %i.aer, align 32, !tbaa !29
  %i.aev = fadd <8 x float> %i.aeu, %i.aen
  store <8 x float> %i.aev, ptr %i.aer, align 32, !tbaa !29
  %i.aew = extractelement <4 x i32> %i.aeh, i64 1
  %i.aex = sext i32 %i.aew to i64                 ; 6 uses
  %i.aey = getelementptr inbounds [4 x i8], ptr %i.aej, i64 %i.aex
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 32 ; 2 uses
  %i.afa = getelementptr inbounds [4 x i8], ptr %i.ael, i64 %i.aex
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 32 ; 2 uses
  %i.afc = load <8 x float>, ptr %i.aez, align 32, !tbaa !29
  %i.afd = fadd <8 x float> %i.aem, %i.afc
  store <8 x float> %i.afd, ptr %i.aez, align 32, !tbaa !29
  %i.afe = load <8 x float>, ptr %i.afb, align 32, !tbaa !29
  %i.aff = fadd <8 x float> %i.afe, %i.aen
  store <8 x float> %i.aff, ptr %i.afb, align 32, !tbaa !29
  %i.afg = extractelement <4 x i32> %i.aeh, i64 2
  %i.afh = sext i32 %i.afg to i64                 ; 6 uses
  %i.afi = getelementptr inbounds [4 x i8], ptr %i.aej, i64 %i.afh
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 64 ; 2 uses
  %i.afk = getelementptr inbounds [4 x i8], ptr %i.ael, i64 %i.afh
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 64 ; 2 uses
  %i.afm = load <8 x float>, ptr %i.afj, align 32, !tbaa !29
  %i.afn = fadd <8 x float> %i.aem, %i.afm
  store <8 x float> %i.afn, ptr %i.afj, align 32, !tbaa !29
  %i.afo = load <8 x float>, ptr %i.afl, align 32, !tbaa !29
  %i.afp = fadd <8 x float> %i.afo, %i.aen
  store <8 x float> %i.afp, ptr %i.afl, align 32, !tbaa !29
  %i.afq = extractelement <4 x i32> %i.aeh, i64 3
  %i.afr = sext i32 %i.afq to i64                 ; 6 uses
  %i.afs = getelementptr inbounds [4 x i8], ptr %i.aej, i64 %i.afr
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 96 ; 2 uses
  %i.afu = getelementptr inbounds [4 x i8], ptr %i.ael, i64 %i.afr
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 96 ; 2 uses
  %i.afw = load <8 x float>, ptr %i.aft, align 32, !tbaa !29
  %i.afx = fadd <8 x float> %i.aem, %i.afw
  store <8 x float> %i.afx, ptr %i.aft, align 32, !tbaa !29
  %i.afy = load <8 x float>, ptr %i.afv, align 32, !tbaa !29
  %i.afz = fadd <8 x float> %i.afy, %i.aen
  store <8 x float> %i.afz, ptr %i.afv, align 32, !tbaa !29
  %i.aga = load ptr, ptr %i.bi, align 8, !tbaa !89 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !90 ; 4 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.aga, i64 24
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !90 ; 4 uses
  %i.agf = shufflevector <16 x float> %i.acu, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.agg = shufflevector <16 x float> %i.acu, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.agh = getelementptr inbounds [4 x i8], ptr %i.agc, i64 %i.aep ; 2 uses
  %i.agi = getelementptr inbounds [4 x i8], ptr %i.age, i64 %i.aep ; 2 uses
  %i.agj = load <8 x float>, ptr %i.agh, align 32, !tbaa !29
  %i.agk = fadd <8 x float> %i.agf, %i.agj
  store <8 x float> %i.agk, ptr %i.agh, align 32, !tbaa !29
  %i.agl = load <8 x float>, ptr %i.agi, align 32, !tbaa !29
  %i.agm = fadd <8 x float> %i.agl, %i.agg
  store <8 x float> %i.agm, ptr %i.agi, align 32, !tbaa !29
  %i.agn = getelementptr inbounds [4 x i8], ptr %i.agc, i64 %i.aex
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 32 ; 2 uses
  %i.agp = getelementptr inbounds [4 x i8], ptr %i.age, i64 %i.aex
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 32 ; 2 uses
  %i.agr = load <8 x float>, ptr %i.ago, align 32, !tbaa !29
  %i.ags = fadd <8 x float> %i.agf, %i.agr
  store <8 x float> %i.ags, ptr %i.ago, align 32, !tbaa !29
  %i.agt = load <8 x float>, ptr %i.agq, align 32, !tbaa !29
  %i.agu = fadd <8 x float> %i.agt, %i.agg
  store <8 x float> %i.agu, ptr %i.agq, align 32, !tbaa !29
  %i.agv = getelementptr inbounds [4 x i8], ptr %i.agc, i64 %i.afh
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 64 ; 2 uses
  %i.agx = getelementptr inbounds [4 x i8], ptr %i.age, i64 %i.afh
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 64 ; 2 uses
  %i.agz = load <8 x float>, ptr %i.agw, align 32, !tbaa !29
  %i.aha = fadd <8 x float> %i.agf, %i.agz
  store <8 x float> %i.aha, ptr %i.agw, align 32, !tbaa !29
  %i.ahb = load <8 x float>, ptr %i.agy, align 32, !tbaa !29
  %i.ahc = fadd <8 x float> %i.ahb, %i.agg
  store <8 x float> %i.ahc, ptr %i.agy, align 32, !tbaa !29
  %i.ahd = getelementptr inbounds [4 x i8], ptr %i.agc, i64 %i.afr
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 96 ; 2 uses
  %i.ahf = getelementptr inbounds [4 x i8], ptr %i.age, i64 %i.afr
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 96 ; 2 uses
  %i.ahh = load <8 x float>, ptr %i.ahe, align 32, !tbaa !29
  %i.ahi = fadd <8 x float> %i.agf, %i.ahh
  store <8 x float> %i.ahi, ptr %i.ahe, align 32, !tbaa !29
  %i.ahj = load <8 x float>, ptr %i.ahg, align 32, !tbaa !29
  %i.ahk = fadd <8 x float> %i.ahj, %i.agg
  store <8 x float> %i.ahk, ptr %i.ahg, align 32, !tbaa !29
  %i.ahl = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !90 ; 4 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !90 ; 4 uses
  %i.ahp = shufflevector <16 x float> %i.adn, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ahq = shufflevector <16 x float> %i.adn, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ahr = getelementptr inbounds [4 x i8], ptr %i.ahm, i64 %i.aep ; 2 uses
  %i.ahs = getelementptr inbounds [4 x i8], ptr %i.aho, i64 %i.aep ; 2 uses
  %i.aht = load <8 x float>, ptr %i.ahr, align 32, !tbaa !29
  %i.ahu = fadd <8 x float> %i.ahp, %i.aht
  store <8 x float> %i.ahu, ptr %i.ahr, align 32, !tbaa !29
  %i.ahv = load <8 x float>, ptr %i.ahs, align 32, !tbaa !29
  %i.ahw = fadd <8 x float> %i.ahv, %i.ahq
  store <8 x float> %i.ahw, ptr %i.ahs, align 32, !tbaa !29
  %i.ahx = getelementptr inbounds [4 x i8], ptr %i.ahm, i64 %i.aex
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 32 ; 2 uses
  %i.ahz = getelementptr inbounds [4 x i8], ptr %i.aho, i64 %i.aex
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 32 ; 2 uses
  %i.aib = load <8 x float>, ptr %i.ahy, align 32, !tbaa !29
  %i.aic = fadd <8 x float> %i.ahp, %i.aib
  store <8 x float> %i.aic, ptr %i.ahy, align 32, !tbaa !29
  %i.aid = load <8 x float>, ptr %i.aia, align 32, !tbaa !29
  %i.aie = fadd <8 x float> %i.aid, %i.ahq
  store <8 x float> %i.aie, ptr %i.aia, align 32, !tbaa !29
  %i.aif = getelementptr inbounds [4 x i8], ptr %i.ahm, i64 %i.afh
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 64 ; 2 uses
  %i.aih = getelementptr inbounds [4 x i8], ptr %i.aho, i64 %i.afh
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 64 ; 2 uses
  %i.aij = load <8 x float>, ptr %i.aig, align 32, !tbaa !29
  %i.aik = fadd <8 x float> %i.ahp, %i.aij
  store <8 x float> %i.aik, ptr %i.aig, align 32, !tbaa !29
  %i.ail = load <8 x float>, ptr %i.aii, align 32, !tbaa !29
  %i.aim = fadd <8 x float> %i.ail, %i.ahq
  store <8 x float> %i.aim, ptr %i.aii, align 32, !tbaa !29
  %i.ain = getelementptr inbounds [4 x i8], ptr %i.ahm, i64 %i.afr
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 96 ; 2 uses
  %i.aip = getelementptr inbounds [4 x i8], ptr %i.aho, i64 %i.afr
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 96 ; 2 uses
  %i.air = load <8 x float>, ptr %i.aio, align 32, !tbaa !29
  %i.ais = fadd <8 x float> %i.ahp, %i.air
  store <8 x float> %i.ais, ptr %i.aio, align 32, !tbaa !29
  %i.ait = load <8 x float>, ptr %i.aiq, align 32, !tbaa !29
  %i.aiu = fadd <8 x float> %i.ait, %i.ahq
  store <8 x float> %i.aiu, ptr %i.aiq, align 32, !tbaa !29
  %i.aiv = fadd <16 x float> %i.adi, %i.acl
  %i.aiw = fmul <16 x float> %i.zr, %i.aiv        ; 3 uses
  %i.aix = fmul <16 x float> %i.zs, %i.acm        ; 3 uses
  %i.aiy = fmul <16 x float> %i.yg, %i.aiw        ; 2 uses
  %i.aiz = fmul <16 x float> %i.yh, %i.aix        ; 2 uses
  %i.aja = fmul <16 x float> %i.yi, %i.aiw        ; 2 uses
  %i.ajb = fmul <16 x float> %i.yj, %i.aix        ; 2 uses
  %i.ajc = fmul <16 x float> %i.yk, %i.aiw        ; 2 uses
  %i.ajd = fmul <16 x float> %i.yl, %i.aix        ; 2 uses
  %i.aje = fadd <16 x float> %.sroa.03138.13772, %i.aiy ; 2 uses
  %i.ajf = fadd <16 x float> %.sroa.163145.13773, %i.aiz ; 2 uses
  %i.ajg = fadd <16 x float> %.sroa.03120.13770, %i.aja ; 2 uses
  %i.ajh = fadd <16 x float> %.sroa.163127.13771, %i.ajb ; 2 uses
  %i.aji = fadd <16 x float> %.sroa.03103.13768, %i.ajc ; 2 uses
  %i.ajj = fadd <16 x float> %.sroa.16.13769, %i.ajd ; 2 uses
  %i.ajk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.xz ; 4 uses
  %i.ajl = fadd <16 x float> %i.aiz, %i.aiy       ; 2 uses
  %i.ajm = fadd <16 x float> %i.ajb, %i.aja       ; 2 uses
  %i.ajn = fadd <16 x float> %i.ajd, %i.ajc       ; 2 uses
  %i.ajo = load <8 x float>, ptr %i.ajk, align 32, !tbaa !29
  %i.ajp = shufflevector <16 x float> %i.ajl, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ajq = shufflevector <16 x float> %i.ajl, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ajr = fadd <8 x float> %i.ajp, %i.ajq
  %i.ajs = fsub <8 x float> %i.ajo, %i.ajr
  store <8 x float> %i.ajs, ptr %i.ajk, align 32, !tbaa !29
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajk, i64 32 ; 2 uses
  %i.aju = load <8 x float>, ptr %i.ajt, align 32, !tbaa !29
  %i.ajv = shufflevector <16 x float> %i.ajm, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ajw = shufflevector <16 x float> %i.ajm, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ajx = fadd <8 x float> %i.ajv, %i.ajw
  %i.ajy = fsub <8 x float> %i.aju, %i.ajx
  store <8 x float> %i.ajy, ptr %i.ajt, align 32, !tbaa !29
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajk, i64 64 ; 2 uses
  %i.aka = load <8 x float>, ptr %i.ajz, align 32, !tbaa !29
  %i.akb = shufflevector <16 x float> %i.ajn, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.akc = shufflevector <16 x float> %i.ajn, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akd = fadd <8 x float> %i.akb, %i.akc
  %i.ake = fsub <8 x float> %i.aka, %i.akd
  store <8 x float> %i.ake, ptr %i.ajz, align 32, !tbaa !29
  %indvars.iv.next3835 = add nsw i64 %indvars.iv3834, 1 ; 2 uses
  %exitcond3838.not = icmp eq i64 %indvars.iv.next3835, %wide.trip.count3837
  br i1 %exitcond3838.not, label %.loopexit, label %bb.i, !llvm.loop !18

bb.j:                                             ; preds = %bb.d
  br i1 %i.da, label %.preheader3661, label %.preheader3663

.preheader3663:                                   ; preds = %bb.j
  br i1 %i.ke, label %.lr.ph.a, label %.critedge5

.lr.ph.a:                                         ; preds = %.preheader3663
  %i.akf = sext i32 %i.bv to i64
  %wide.trip.count = sext i32 %i.bx to i64
  br label %bb.p

.preheader3661:                                   ; preds = %bb.j
  br i1 %i.ke, label %.lr.ph3714, label %.critedge3

.lr.ph3714:                                       ; preds = %.preheader3661
  %i.akg = sext i32 %i.bv to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph3714, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit
  %indvars.iv3817 = phi i64 [ %i.akg, %.lr.ph3714 ], [ %indvars.iv.next3818, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 4 uses
  %.sroa.163145.23712 = phi <16 x float> [ zeroinitializer, %.lr.ph3714 ], [ %i.ayv, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03138.23711 = phi <16 x float> [ zeroinitializer, %.lr.ph3714 ], [ %i.ayu, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163127.23710 = phi <16 x float> [ zeroinitializer, %.lr.ph3714 ], [ %i.ayx, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03120.23709 = phi <16 x float> [ zeroinitializer, %.lr.ph3714 ], [ %i.ayw, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.23708 = phi <16 x float> [ zeroinitializer, %.lr.ph3714 ], [ %i.ayz, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03103.23707 = phi <16 x float> [ zeroinitializer, %.lr.ph3714 ], [ %i.ayy, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.akh = load ptr, ptr %i.au, align 8, !tbaa !59
  %i.aki = getelementptr inbounds nuw [8 x i8], ptr %i.akh, i64 %indvars.iv3817
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 4
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !84
  %.not522 = icmp eq i32 %i.akk, -1
  br i1 %.not522, label %.critedge3.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527: ; preds = %bb.k
  %i.akl = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv3817 ; 2 uses
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !92 ; 4 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akl, i64 4
  %i.ako = load i32, ptr %i.akn, align 4, !tbaa !98
  %i.akp = insertelement <16 x i32> poison, i32 %i.ako, i64 0
  %i.akq = shufflevector <16 x i32> %i.akp, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.akr = and <16 x i32> %i.akq, %10
  %i.aks = icmp ne <16 x i32> %i.akr, zeroinitializer ; 4 uses
  %i.akt = and <16 x i32> %i.akq, %11
  %i.aku = icmp ne <16 x i32> %i.akt, zeroinitializer ; 4 uses
  %i.akv = shl nsw i32 %i.akm, 3
  %i.akw = mul nsw i32 %i.akm, 24
  %i.akx = sext i32 %i.akw to i64                 ; 2 uses
  %i.aky = getelementptr [4 x i8], ptr %i.at, i64 %i.akx ; 3 uses
  %.val6264039 = load <8 x float>, ptr %i.aky, align 32, !tbaa !29
  %i.akz = shufflevector <8 x float> %.val6264039, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ala = getelementptr i8, ptr %i.aky, i64 32
  %.val6274040 = load <8 x float>, ptr %i.ala, align 32, !tbaa !29
  %i.alb = shufflevector <8 x float> %.val6274040, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.alc = getelementptr i8, ptr %i.aky, i64 64
  %.val6284041 = load <8 x float>, ptr %i.alc, align 32, !tbaa !29
  %i.ald = shufflevector <8 x float> %.val6284041, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ale = fsub <16 x float> %i.hp, %i.akz        ; 3 uses
  %i.alf = fsub <16 x float> %i.hv, %i.akz        ; 3 uses
  %i.alg = fsub <16 x float> %i.ic, %i.alb        ; 3 uses
  %i.alh = fsub <16 x float> %i.ii, %i.alb        ; 3 uses
  %i.ali = fsub <16 x float> %i.ip, %i.ald        ; 3 uses
  %i.alj = fsub <16 x float> %i.iv, %i.ald        ; 3 uses
  %i.alk = fmul <16 x float> %i.ale, %i.ale
  %i.all = fmul <16 x float> %i.alg, %i.alg
  %i.alm = fadd <16 x float> %i.alk, %i.all
  %i.aln = fmul <16 x float> %i.ali, %i.ali
  %i.alo = fadd <16 x float> %i.alm, %i.aln       ; 2 uses
  %i.alp = fmul <16 x float> %i.alf, %i.alf
  %i.alq = fmul <16 x float> %i.alh, %i.alh
  %i.alr = fadd <16 x float> %i.alp, %i.alq
  %i.als = fmul <16 x float> %i.alj, %i.alj
  %i.alt = fadd <16 x float> %i.alr, %i.als       ; 2 uses
  %i.alu = fcmp olt <16 x float> %i.alo, %i.ap
  %i.alv = bitcast <16 x i1> %i.alu to i16        ; 3 uses
  %i.alw = fcmp olt <16 x float> %i.alt, %i.ap
  %i.alx = bitcast <16 x i1> %i.alw to i16        ; 3 uses
  %i.aly = shl nsw i32 %i.akm, 1                  ; 3 uses
  %i.alz = icmp eq i32 %i.aly, %i.ca
  br i1 %i.alz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527
  %i.ama = and i16 %i.alv, %i.p
  %i.amb = and i16 %i.alx, %i.q
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.m:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527
  %i.amc = or disjoint i32 %i.aly, 1
  %i.amd = icmp eq i32 %i.amc, %i.ca
  br i1 %i.amd, label %bb.n, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.n:                                             ; preds = %bb.m
  %i.ame = and i16 %i.alv, %i.r
  %i.amf = and i16 %i.alx, %i.s
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.03539.0 = phi i16 [ %i.ama, %bb.l ], [ %i.ame, %bb.n ], [ %i.alv, %bb.m ]
  %.sroa.113542.0 = phi i16 [ %i.amb, %bb.l ], [ %i.amf, %bb.n ], [ %i.alx, %bb.m ]
  %i.amg = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.alo, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.amh = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.alt, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.ami = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.amg, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.amj = fmul <16 x float> %i.amg, %i.ami
  %i.amk = fmul <16 x float> %i.ami, splat (float -5.000000e-01)
  %i.aml = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.amj, <16 x float> %i.ami, <16 x float> splat (float -3.000000e+00))
  %i.amm = fmul <16 x float> %i.amk, %i.aml
  %i.amn = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.amh, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.amo = fmul <16 x float> %i.amh, %i.amn
  %i.amp = fmul <16 x float> %i.amn, splat (float -5.000000e-01)
  %i.amq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.amo, <16 x float> %i.amn, <16 x float> splat (float -3.000000e+00))
  %i.amr = fmul <16 x float> %i.amp, %i.amq
  %i.ams = sext i32 %i.akv to i64
  %i.amt = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ams
  %.val6294042 = load <8 x float>, ptr %i.amt, align 32, !tbaa !29
  %i.amu = shufflevector <8 x float> %.val6294042, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.amv = fmul <16 x float> %.sroa.03284.0, %i.amu ; 2 uses
  %i.amw = fmul <16 x float> %.sroa.73288.0, %i.amu ; 2 uses
  %i.amx = bitcast i16 %.sroa.03539.0 to <16 x i1> ; 4 uses
  %i.amy = select <16 x i1> %i.amx, <16 x float> %i.amm, <16 x float> zeroinitializer ; 3 uses
  %i.amz = bitcast i16 %.sroa.113542.0 to <16 x i1> ; 4 uses
  %i.ana = select <16 x i1> %i.amz, <16 x float> %i.amr, <16 x float> zeroinitializer ; 3 uses
  %i.anb = fmul <16 x float> %i.amy, %i.amy       ; 4 uses
  %i.anc = fmul <16 x float> %i.ana, %i.ana       ; 4 uses
  %i.and = select <16 x i1> %i.aks, <16 x float> %i.amy, <16 x float> zeroinitializer ; 2 uses
  %i.ane = select <16 x i1> %i.aku, <16 x float> %i.ana, <16 x float> zeroinitializer ; 2 uses
  %i.anf = select <16 x i1> %i.amx, <16 x float> %i.amg, <16 x float> zeroinitializer
  %i.ang = fmul <16 x float> %i.x, %i.anf         ; 7 uses
  %i.anh = select <16 x i1> %i.amz, <16 x float> %i.amh, <16 x float> zeroinitializer
  %i.ani = fmul <16 x float> %i.x, %i.anh         ; 7 uses
  %i.anj = fmul <16 x float> %i.ang, %i.ang       ; 15 uses
  %i.ank = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anj, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.anl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anj, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.anm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ank, <16 x float> %i.anj, <16 x float> splat (float 1.000000e+00))
  %i.ann = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anl, <16 x float> %i.ang, <16 x float> %i.anm) ; 2 uses
  %i.ano = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.ann, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.anp = fneg <16 x float> %i.ano
  %i.anq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anp, <16 x float> %i.ann, <16 x float> splat (float 2.000000e+00))
  %i.anr = fmul <16 x float> %i.ano, %i.anq
  %i.ans = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anj, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.ant = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anj, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.anu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ans, <16 x float> %i.anj, <16 x float> splat (float f0xBC9DED90))
  %i.anv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ant, <16 x float> %i.anj, <16 x float> splat (float f0x3D8EAF3B))
  %i.anw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anu, <16 x float> %i.anj, <16 x float> splat (float f0xBF409397))
  %i.anx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anv, <16 x float> %i.ang, <16 x float> %i.anw)
  %i.any = fmul <16 x float> %i.anx, %i.anr
  %i.anz = fmul <16 x float> %i.v, %i.any
  %i.aoa = fmul <16 x float> %i.ani, %i.ani       ; 15 uses
  %i.aob = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoa, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.aoc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoa, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.aod = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aob, <16 x float> %i.aoa, <16 x float> splat (float 1.000000e+00))
  %i.aoe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoc, <16 x float> %i.ani, <16 x float> %i.aod) ; 2 uses
  %i.aof = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.aoe, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.aog = fneg <16 x float> %i.aof
  %i.aoh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aog, <16 x float> %i.aoe, <16 x float> splat (float 2.000000e+00))
  %i.aoi = fmul <16 x float> %i.aof, %i.aoh
  %i.aoj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoa, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.aok = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoa, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.aol = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoj, <16 x float> %i.aoa, <16 x float> splat (float f0xBC9DED90))
  %i.aom = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aok, <16 x float> %i.aoa, <16 x float> splat (float f0x3D8EAF3B))
  %i.aon = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aol, <16 x float> %i.aoa, <16 x float> splat (float f0xBF409397))
  %i.aoo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aom, <16 x float> %i.ani, <16 x float> %i.aon)
  %i.aop = fmul <16 x float> %i.aoo, %i.aoi
  %i.aoq = fmul <16 x float> %i.v, %i.aop
  %i.aor = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anz, <16 x float> %i.ang, <16 x float> %i.and)
  %i.aos = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoq, <16 x float> %i.ani, <16 x float> %i.ane)
  %i.aot = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anj, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.aou = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anj, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.aov = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aot, <16 x float> %i.ang, <16 x float> %i.aou) ; 2 uses
  %i.aow = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.aov, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.aox = fneg <16 x float> %i.aow
  %i.aoy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aox, <16 x float> %i.aov, <16 x float> splat (float 2.000000e+00))
  %i.aoz = fmul <16 x float> %i.aow, %i.aoy
  %i.apa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anj, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.apb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anj, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.apc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apa, <16 x float> %i.anj, <16 x float> splat (float f0x3D1E57D6))
  %i.apd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apb, <16 x float> %i.anj, <16 x float> splat (float f0x3DE71E23))
  %i.ape = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apc, <16 x float> %i.anj, <16 x float> splat (float f0x3F906EC3))
  %i.apf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apd, <16 x float> %i.ang, <16 x float> %i.ape)
  %i.apg = fmul <16 x float> %i.apf, %i.aoz
  %i.aph = fmul <16 x float> %i.v, %i.apg
  %i.api = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoa, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.apj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoa, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.apk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.api, <16 x float> %i.ani, <16 x float> %i.apj) ; 2 uses
  %i.apl = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.apk, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.apm = fneg <16 x float> %i.apl
  %i.apn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apm, <16 x float> %i.apk, <16 x float> splat (float 2.000000e+00))
  %i.apo = fmul <16 x float> %i.apl, %i.apn
  %i.app = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoa, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.apq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoa, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.apr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.app, <16 x float> %i.aoa, <16 x float> splat (float f0x3D1E57D6))
  %i.aps = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apq, <16 x float> %i.aoa, <16 x float> splat (float f0x3DE71E23))
  %i.apt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apr, <16 x float> %i.aoa, <16 x float> splat (float f0x3F906EC3))
  %i.apu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aps, <16 x float> %i.ani, <16 x float> %i.apt)
  %i.apv = fmul <16 x float> %i.apu, %i.apo
  %i.apw = fmul <16 x float> %i.v, %i.apv
  %i.apx = fmul <16 x float> %i.amv, %i.aor
  %i.apy = fmul <16 x float> %i.amw, %i.aos
  %i.apz = select <16 x i1> %i.aks, <16 x float> %i.ae, <16 x float> zeroinitializer
  %i.aqa = fadd <16 x float> %i.apz, %i.aph
  %i.aqb = select <16 x i1> %i.aku, <16 x float> %i.ae, <16 x float> zeroinitializer
  %i.aqc = fadd <16 x float> %i.aqb, %i.apw
  %i.aqd = fsub <16 x float> %i.and, %i.aqa
  %i.aqe = fmul <16 x float> %i.amv, %i.aqd
  %i.aqf = fsub <16 x float> %i.ane, %i.aqc
  %i.aqg = fmul <16 x float> %i.amw, %i.aqf
  %i.aqh = select <16 x i1> %i.amx, <16 x float> %i.aqe, <16 x float> zeroinitializer ; 2 uses
  %i.aqi = select <16 x i1> %i.amz, <16 x float> %i.aqg, <16 x float> zeroinitializer ; 2 uses
  %i.aqj = shl nsw i32 %i.akm, 4
  %i.aqk = sext i32 %i.aqj to i64
  %i.aql = getelementptr [4 x i8], ptr %i.f, i64 %i.aqk ; 2 uses
  %.val6304043 = load <8 x float>, ptr %i.aql, align 32, !tbaa !29
  %i.aqm = shufflevector <8 x float> %.val6304043, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aqn = getelementptr i8, ptr %i.aql, i64 32
  %.val6314044 = load <8 x float>, ptr %i.aqn, align 32, !tbaa !29
  %i.aqo = shufflevector <8 x float> %.val6314044, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aqp = fmul <16 x float> %i.jp, %i.aqm        ; 2 uses
  %i.aqq = fmul <16 x float> %i.jy, %i.aqm        ; 2 uses
  %i.aqr = fmul <16 x float> %i.jt, %i.aqo        ; 2 uses
  %i.aqs = fmul <16 x float> %i.kd, %i.aqo        ; 2 uses
  %i.aqt = fmul <16 x float> %i.anb, %i.anb
  %i.aqu = fmul <16 x float> %i.anb, %i.aqt
  %i.aqv = fmul <16 x float> %i.anc, %i.anc
  %i.aqw = fmul <16 x float> %i.anc, %i.aqv
  %i.aqx = select <16 x i1> %i.aks, <16 x float> %i.aqu, <16 x float> zeroinitializer ; 3 uses
  %i.aqy = select <16 x i1> %i.aku, <16 x float> %i.aqw, <16 x float> zeroinitializer ; 3 uses
  %i.aqz = fmul <16 x float> %i.aqx, %i.aqx
  %i.ara = fmul <16 x float> %i.aqy, %i.aqy
  %i.arb = fmul <16 x float> %i.aqx, %i.aqp       ; 2 uses
  %i.arc = fmul <16 x float> %i.aqy, %i.aqq       ; 2 uses
  %i.ard = fmul <16 x float> %i.aqz, %i.aqr       ; 2 uses
  %i.are = fmul <16 x float> %i.ara, %i.aqs       ; 2 uses
  %i.arf = fsub <16 x float> %i.ard, %i.arb
  %i.arg = fsub <16 x float> %i.are, %i.arc
  %i.arh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqp, <16 x float> %i.ah, <16 x float> %i.arb)
  %i.ari = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqq, <16 x float> %i.ah, <16 x float> %i.arc)
  %i.arj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqr, <16 x float> %i.ak, <16 x float> %i.ard)
  %i.ark = fmul <16 x float> %i.arh, splat (float f0xBE2AAAAB)
  %i.arl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arj, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.ark)
  %i.arm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqs, <16 x float> %i.ak, <16 x float> %i.are)
  %i.arn = fmul <16 x float> %i.ari, splat (float f0xBE2AAAAB)
  %i.aro = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arm, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.arn)
  %i.arp = select <16 x i1> %i.amx, <16 x i1> %i.aks, <16 x i1> zeroinitializer
  %i.arq = select <16 x i1> %i.arp, <16 x float> %i.arl, <16 x float> zeroinitializer ; 2 uses
  %i.arr = select <16 x i1> %i.amz, <16 x i1> %i.aku, <16 x i1> zeroinitializer
end_hunk_1
begin_hunk_2_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader3666.preheader
  %i.bgm = insertelement <2 x i32> poison, i32 %i.bgg, i64 0
  %i.bgn = shufflevector <2 x i32> %i.bgl, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bgo = shufflevector <2 x i32> %i.bgl, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bgp = shufflevector <2 x i32> %i.bgm, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.bgq = ashr <4 x i32> %i.bgo, %i.bgp
  %i.bgr = shufflevector <4 x i32> %i.bgq, <4 x i32> %i.bgn, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.bgs = insertelement <4 x i32> poison, i32 %i.bgj, i64 0
  %i.bgt = shufflevector <4 x i32> %i.bgs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bgu = and <4 x i32> %i.bgr, %i.bgt
  %i.bgv = insertelement <4 x i32> poison, i32 %i.bgk, i64 0
  %i.bgw = shufflevector <4 x i32> %i.bgv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bgx = mul nsw <4 x i32> %i.bgu, %i.bgw       ; 4 uses
  %i.bgy = load ptr, ptr %i.bi, align 8, !tbaa !89 ; 2 uses
  %i.bgz = load ptr, ptr %i.bgy, align 8, !tbaa !90 ; 4 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgy, i64 8
  %i.bhb = load ptr, ptr %i.bha, align 8, !tbaa !90 ; 4 uses
  %i.bhc = shufflevector <16 x float> %i.bew, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bhd = shufflevector <16 x float> %i.bew, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bhe = extractelement <4 x i32> %i.bgx, i64 0
  %i.bhf = sext i32 %i.bhe to i64                 ; 8 uses
  %i.bhg = getelementptr inbounds [4 x i8], ptr %i.bgz, i64 %i.bhf ; 2 uses
  %i.bhh = getelementptr inbounds [4 x i8], ptr %i.bhb, i64 %i.bhf ; 2 uses
  %i.bhi = load <8 x float>, ptr %i.bhg, align 32, !tbaa !29
  %i.bhj = fadd <8 x float> %i.bhc, %i.bhi
  store <8 x float> %i.bhj, ptr %i.bhg, align 32, !tbaa !29
  %i.bhk = load <8 x float>, ptr %i.bhh, align 32, !tbaa !29
  %i.bhl = fadd <8 x float> %i.bhk, %i.bhd
  store <8 x float> %i.bhl, ptr %i.bhh, align 32, !tbaa !29
  %i.bhm = extractelement <4 x i32> %i.bgx, i64 1
  %i.bhn = sext i32 %i.bhm to i64                 ; 8 uses
  %i.bho = getelementptr inbounds [4 x i8], ptr %i.bgz, i64 %i.bhn
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bho, i64 32 ; 2 uses
  %i.bhq = getelementptr inbounds [4 x i8], ptr %i.bhb, i64 %i.bhn
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 32 ; 2 uses
  %i.bhs = load <8 x float>, ptr %i.bhp, align 32, !tbaa !29
  %i.bht = fadd <8 x float> %i.bhc, %i.bhs
  store <8 x float> %i.bht, ptr %i.bhp, align 32, !tbaa !29
  %i.bhu = load <8 x float>, ptr %i.bhr, align 32, !tbaa !29
  %i.bhv = fadd <8 x float> %i.bhu, %i.bhd
  store <8 x float> %i.bhv, ptr %i.bhr, align 32, !tbaa !29
  %i.bhw = extractelement <4 x i32> %i.bgx, i64 2
  %i.bhx = sext i32 %i.bhw to i64                 ; 8 uses
  %i.bhy = getelementptr inbounds [4 x i8], ptr %i.bgz, i64 %i.bhx
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhy, i64 64 ; 2 uses
  %i.bia = getelementptr inbounds [4 x i8], ptr %i.bhb, i64 %i.bhx
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bia, i64 64 ; 2 uses
  %i.bic = load <8 x float>, ptr %i.bhz, align 32, !tbaa !29
  %i.bid = fadd <8 x float> %i.bhc, %i.bic
  store <8 x float> %i.bid, ptr %i.bhz, align 32, !tbaa !29
  %i.bie = load <8 x float>, ptr %i.bib, align 32, !tbaa !29
  %i.bif = fadd <8 x float> %i.bie, %i.bhd
  store <8 x float> %i.bif, ptr %i.bib, align 32, !tbaa !29
  %i.big = extractelement <4 x i32> %i.bgx, i64 3
  %i.bih = sext i32 %i.big to i64                 ; 8 uses
  %i.bii = getelementptr inbounds [4 x i8], ptr %i.bgz, i64 %i.bih
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bii, i64 96 ; 2 uses
  %i.bik = getelementptr inbounds [4 x i8], ptr %i.bhb, i64 %i.bih
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 96 ; 2 uses
  %i.bim = load <8 x float>, ptr %i.bij, align 32, !tbaa !29
  %i.bin = fadd <8 x float> %i.bhc, %i.bim
  store <8 x float> %i.bin, ptr %i.bij, align 32, !tbaa !29
  %i.bio = load <8 x float>, ptr %i.bil, align 32, !tbaa !29
  %i.bip = fadd <8 x float> %i.bio, %i.bhd
  store <8 x float> %i.bip, ptr %i.bil, align 32, !tbaa !29
  %i.biq = load ptr, ptr %i.bi, align 8, !tbaa !89 ; 2 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %i.biq, i64 16
  %i.bis = load ptr, ptr %i.bir, align 8, !tbaa !90 ; 4 uses
  %i.bit = getelementptr inbounds nuw i8, ptr %i.biq, i64 24
  %i.biu = load ptr, ptr %i.bit, align 8, !tbaa !90 ; 4 uses
  %i.biv = shufflevector <16 x float> %i.bex, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.biw = shufflevector <16 x float> %i.bex, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bix = getelementptr inbounds [4 x i8], ptr %i.bis, i64 %i.bhf ; 2 uses
  %i.biy = getelementptr inbounds [4 x i8], ptr %i.biu, i64 %i.bhf ; 2 uses
  %i.biz = load <8 x float>, ptr %i.bix, align 32, !tbaa !29
  %i.bja = fadd <8 x float> %i.biv, %i.biz
  store <8 x float> %i.bja, ptr %i.bix, align 32, !tbaa !29
  %i.bjb = load <8 x float>, ptr %i.biy, align 32, !tbaa !29
  %i.bjc = fadd <8 x float> %i.bjb, %i.biw
  store <8 x float> %i.bjc, ptr %i.biy, align 32, !tbaa !29
  %i.bjd = getelementptr inbounds [4 x i8], ptr %i.bis, i64 %i.bhn
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 32 ; 2 uses
  %i.bjf = getelementptr inbounds [4 x i8], ptr %i.biu, i64 %i.bhn
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjf, i64 32 ; 2 uses
  %i.bjh = load <8 x float>, ptr %i.bje, align 32, !tbaa !29
  %i.bji = fadd <8 x float> %i.biv, %i.bjh
  store <8 x float> %i.bji, ptr %i.bje, align 32, !tbaa !29
  %i.bjj = load <8 x float>, ptr %i.bjg, align 32, !tbaa !29
  %i.bjk = fadd <8 x float> %i.bjj, %i.biw
  store <8 x float> %i.bjk, ptr %i.bjg, align 32, !tbaa !29
  %i.bjl = getelementptr inbounds [4 x i8], ptr %i.bis, i64 %i.bhx
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjl, i64 64 ; 2 uses
  %i.bjn = getelementptr inbounds [4 x i8], ptr %i.biu, i64 %i.bhx
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 64 ; 2 uses
  %i.bjp = load <8 x float>, ptr %i.bjm, align 32, !tbaa !29
  %i.bjq = fadd <8 x float> %i.biv, %i.bjp
  store <8 x float> %i.bjq, ptr %i.bjm, align 32, !tbaa !29
  %i.bjr = load <8 x float>, ptr %i.bjo, align 32, !tbaa !29
  %i.bjs = fadd <8 x float> %i.bjr, %i.biw
  store <8 x float> %i.bjs, ptr %i.bjo, align 32, !tbaa !29
  %i.bjt = getelementptr inbounds [4 x i8], ptr %i.bis, i64 %i.bih
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 96 ; 2 uses
  %i.bjv = getelementptr inbounds [4 x i8], ptr %i.biu, i64 %i.bih
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjv, i64 96 ; 2 uses
  %i.bjx = load <8 x float>, ptr %i.bju, align 32, !tbaa !29
  %i.bjy = fadd <8 x float> %i.biv, %i.bjx
  store <8 x float> %i.bjy, ptr %i.bju, align 32, !tbaa !29
  %i.bjz = load <8 x float>, ptr %i.bjw, align 32, !tbaa !29
  %i.bka = fadd <8 x float> %i.bjz, %i.biw
  store <8 x float> %i.bka, ptr %i.bjw, align 32, !tbaa !29
  %i.bkb = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.bkc = load ptr, ptr %i.bkb, align 8, !tbaa !90 ; 4 uses
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bkb, i64 8
  %i.bke = load ptr, ptr %i.bkd, align 8, !tbaa !90 ; 4 uses
  %i.bkf = shufflevector <16 x float> %i.bgc, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bkg = shufflevector <16 x float> %i.bgc, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bkh = getelementptr inbounds [4 x i8], ptr %i.bkc, i64 %i.bhf ; 2 uses
  %i.bki = getelementptr inbounds [4 x i8], ptr %i.bke, i64 %i.bhf ; 2 uses
  %i.bkj = load <8 x float>, ptr %i.bkh, align 32, !tbaa !29
  %i.bkk = fadd <8 x float> %i.bkf, %i.bkj
  store <8 x float> %i.bkk, ptr %i.bkh, align 32, !tbaa !29
  %i.bkl = load <8 x float>, ptr %i.bki, align 32, !tbaa !29
  %i.bkm = fadd <8 x float> %i.bkl, %i.bkg
  store <8 x float> %i.bkm, ptr %i.bki, align 32, !tbaa !29
  %i.bkn = getelementptr inbounds [4 x i8], ptr %i.bkc, i64 %i.bhn
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 32 ; 2 uses
  %i.bkp = getelementptr inbounds [4 x i8], ptr %i.bke, i64 %i.bhn
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkp, i64 32 ; 2 uses
  %i.bkr = load <8 x float>, ptr %i.bko, align 32, !tbaa !29
  %i.bks = fadd <8 x float> %i.bkf, %i.bkr
  store <8 x float> %i.bks, ptr %i.bko, align 32, !tbaa !29
  %i.bkt = load <8 x float>, ptr %i.bkq, align 32, !tbaa !29
  %i.bku = fadd <8 x float> %i.bkt, %i.bkg
  store <8 x float> %i.bku, ptr %i.bkq, align 32, !tbaa !29
  %i.bkv = getelementptr inbounds [4 x i8], ptr %i.bkc, i64 %i.bhx
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkv, i64 64 ; 2 uses
  %i.bkx = getelementptr inbounds [4 x i8], ptr %i.bke, i64 %i.bhx
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkx, i64 64 ; 2 uses
  %i.bkz = load <8 x float>, ptr %i.bkw, align 32, !tbaa !29
  %i.bla = fadd <8 x float> %i.bkf, %i.bkz
  store <8 x float> %i.bla, ptr %i.bkw, align 32, !tbaa !29
  %i.blb = load <8 x float>, ptr %i.bky, align 32, !tbaa !29
  %i.blc = fadd <8 x float> %i.blb, %i.bkg
  store <8 x float> %i.blc, ptr %i.bky, align 32, !tbaa !29
  %i.bld = getelementptr inbounds [4 x i8], ptr %i.bkc, i64 %i.bih
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bld, i64 96 ; 2 uses
  %i.blf = getelementptr inbounds [4 x i8], ptr %i.bke, i64 %i.bih
  %i.blg = getelementptr inbounds nuw i8, ptr %i.blf, i64 96 ; 2 uses
  %i.blh = load <8 x float>, ptr %i.ble, align 32, !tbaa !29
  %i.bli = fadd <8 x float> %i.bkf, %i.blh
  store <8 x float> %i.bli, ptr %i.ble, align 32, !tbaa !29
  %i.blj = load <8 x float>, ptr %i.blg, align 32, !tbaa !29
  %i.blk = fadd <8 x float> %i.blj, %i.bkg
  store <8 x float> %i.blk, ptr %i.blg, align 32, !tbaa !29
  %i.bll = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.blm = getelementptr inbounds nuw i8, ptr %i.bll, i64 16
  %i.bln = load ptr, ptr %i.blm, align 8, !tbaa !90 ; 4 uses
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bll, i64 24
  %i.blp = load ptr, ptr %i.blo, align 8, !tbaa !90 ; 4 uses
  %i.blq = shufflevector <16 x float> %i.bgd, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.blr = shufflevector <16 x float> %i.bgd, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bls = getelementptr inbounds [4 x i8], ptr %i.bln, i64 %i.bhf ; 2 uses
  %i.blt = getelementptr inbounds [4 x i8], ptr %i.blp, i64 %i.bhf ; 2 uses
  %i.blu = load <8 x float>, ptr %i.bls, align 32, !tbaa !29
  %i.blv = fadd <8 x float> %i.blq, %i.blu
  store <8 x float> %i.blv, ptr %i.bls, align 32, !tbaa !29
  %i.blw = load <8 x float>, ptr %i.blt, align 32, !tbaa !29
  %i.blx = fadd <8 x float> %i.blw, %i.blr
  store <8 x float> %i.blx, ptr %i.blt, align 32, !tbaa !29
  %i.bly = getelementptr inbounds [4 x i8], ptr %i.bln, i64 %i.bhn
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bly, i64 32 ; 2 uses
  %i.bma = getelementptr inbounds [4 x i8], ptr %i.blp, i64 %i.bhn
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bma, i64 32 ; 2 uses
  %i.bmc = load <8 x float>, ptr %i.blz, align 32, !tbaa !29
  %i.bmd = fadd <8 x float> %i.blq, %i.bmc
  store <8 x float> %i.bmd, ptr %i.blz, align 32, !tbaa !29
  %i.bme = load <8 x float>, ptr %i.bmb, align 32, !tbaa !29
  %i.bmf = fadd <8 x float> %i.bme, %i.blr
  store <8 x float> %i.bmf, ptr %i.bmb, align 32, !tbaa !29
  %i.bmg = getelementptr inbounds [4 x i8], ptr %i.bln, i64 %i.bhx
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmg, i64 64 ; 2 uses
  %i.bmi = getelementptr inbounds [4 x i8], ptr %i.blp, i64 %i.bhx
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmi, i64 64 ; 2 uses
  %i.bmk = load <8 x float>, ptr %i.bmh, align 32, !tbaa !29
  %i.bml = fadd <8 x float> %i.blq, %i.bmk
  store <8 x float> %i.bml, ptr %i.bmh, align 32, !tbaa !29
  %i.bmm = load <8 x float>, ptr %i.bmj, align 32, !tbaa !29
  %i.bmn = fadd <8 x float> %i.bmm, %i.blr
  store <8 x float> %i.bmn, ptr %i.bmj, align 32, !tbaa !29
  %i.bmo = getelementptr inbounds [4 x i8], ptr %i.bln, i64 %i.bih
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmo, i64 96 ; 2 uses
  %i.bmq = getelementptr inbounds [4 x i8], ptr %i.blp, i64 %i.bih
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bmq, i64 96 ; 2 uses
  %i.bms = load <8 x float>, ptr %i.bmp, align 32, !tbaa !29
  %i.bmt = fadd <8 x float> %i.blq, %i.bms
  store <8 x float> %i.bmt, ptr %i.bmp, align 32, !tbaa !29
  %i.bmu = load <8 x float>, ptr %i.bmr, align 32, !tbaa !29
  %i.bmv = fadd <8 x float> %i.bmu, %i.blr
  store <8 x float> %i.bmv, ptr %i.bmr, align 32, !tbaa !29
  %i.bmw = fadd <16 x float> %i.bfs, %i.beo
  %i.bmx = fmul <16 x float> %i.bbu, %i.bmw       ; 3 uses
  %i.bmy = fadd <16 x float> %i.bft, %i.bep
  %i.bmz = fmul <16 x float> %i.bbv, %i.bmy       ; 3 uses
  %i.bna = fmul <16 x float> %i.baj, %i.bmx       ; 2 uses
  %i.bnb = fmul <16 x float> %i.bak, %i.bmz       ; 2 uses
  %i.bnc = fmul <16 x float> %i.bal, %i.bmx       ; 2 uses
  %i.bnd = fmul <16 x float> %i.bam, %i.bmz       ; 2 uses
  %i.bne = fmul <16 x float> %i.ban, %i.bmx       ; 2 uses
  %i.bnf = fmul <16 x float> %i.bao, %i.bmz       ; 2 uses
  %i.bng = fadd <16 x float> %.sroa.03138.33734, %i.bna ; 2 uses
  %i.bnh = fadd <16 x float> %.sroa.163145.33735, %i.bnb ; 2 uses
  %i.bni = fadd <16 x float> %.sroa.03120.33732, %i.bnc ; 2 uses
  %i.bnj = fadd <16 x float> %.sroa.163127.33733, %i.bnd ; 2 uses
  %i.bnk = fadd <16 x float> %.sroa.03103.33730, %i.bne ; 2 uses
  %i.bnl = fadd <16 x float> %.sroa.16.33731, %i.bnf ; 2 uses
  %i.bnm = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bac ; 4 uses
  %i.bnn = fadd <16 x float> %i.bna, %i.bnb       ; 2 uses
  %i.bno = fadd <16 x float> %i.bnc, %i.bnd       ; 2 uses
  %i.bnp = fadd <16 x float> %i.bne, %i.bnf       ; 2 uses
  %i.bnq = load <8 x float>, ptr %i.bnm, align 32, !tbaa !29
  %i.bnr = shufflevector <16 x float> %i.bnn, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bns = shufflevector <16 x float> %i.bnn, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bnt = fadd <8 x float> %i.bnr, %i.bns
  %i.bnu = fsub <8 x float> %i.bnq, %i.bnt
  store <8 x float> %i.bnu, ptr %i.bnm, align 32, !tbaa !29
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnm, i64 32 ; 2 uses
  %i.bnw = load <8 x float>, ptr %i.bnv, align 32, !tbaa !29
  %i.bnx = shufflevector <16 x float> %i.bno, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bny = shufflevector <16 x float> %i.bno, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bnz = fadd <8 x float> %i.bnx, %i.bny
  %i.boa = fsub <8 x float> %i.bnw, %i.bnz
  store <8 x float> %i.boa, ptr %i.bnv, align 32, !tbaa !29
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bnm, i64 64 ; 2 uses
  %i.boc = load <8 x float>, ptr %i.bob, align 32, !tbaa !29
  %i.bod = shufflevector <16 x float> %i.bnp, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.boe = shufflevector <16 x float> %i.bnp, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bof = fadd <8 x float> %i.bod, %i.boe
  %i.bog = fsub <8 x float> %i.boc, %i.bof
  store <8 x float> %i.bog, ptr %i.bob, align 32, !tbaa !29
  %indvars.iv.next3822 = add nsw i64 %indvars.iv3821, 1 ; 2 uses
  %exitcond3825.not = icmp eq i64 %indvars.iv.next3822, %wide.trip.count3824
  br i1 %exitcond3825.not, label %.loopexit, label %bb.o, !llvm.loop !20

bb.p:                                             ; preds = %.lr.ph.a, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %indvars.iv = phi i64 [ %i.akf, %.lr.ph.a ], [ %indvars.iv.next, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 4 uses
  %.sroa.163145.43676 = phi <16 x float> [ zeroinitializer, %.lr.ph.a ], [ %i.bvz, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03138.43675 = phi <16 x float> [ zeroinitializer, %.lr.ph.a ], [ %i.bvy, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.163127.43674 = phi <16 x float> [ zeroinitializer, %.lr.ph.a ], [ %i.bwb, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03120.43673 = phi <16 x float> [ zeroinitializer, %.lr.ph.a ], [ %i.bwa, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.16.43672 = phi <16 x float> [ zeroinitializer, %.lr.ph.a ], [ %i.bwd, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03103.43671 = phi <16 x float> [ zeroinitializer, %.lr.ph.a ], [ %i.bwc, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %i.boh = load ptr, ptr %i.au, align 8, !tbaa !59
  %i.boi = getelementptr inbounds nuw [8 x i8], ptr %i.boh, i64 %indvars.iv
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 4
  %i.bok = load i32, ptr %i.boj, align 4, !tbaa !84
  %.not = icmp eq i32 %i.bok, -1
  br i1 %.not, label %.critedge5.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit: ; preds = %bb.p
  %i.bol = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.bom = load i32, ptr %i.bol, align 4, !tbaa !92 ; 3 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bol, i64 4
  %i.boo = load i32, ptr %i.bon, align 4, !tbaa !98
  %i.bop = insertelement <16 x i32> poison, i32 %i.boo, i64 0
  %i.boq = shufflevector <16 x i32> %i.bop, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.bor = and <16 x i32> %i.boq, %8
  %i.bos = icmp ne <16 x i32> %i.bor, zeroinitializer
  %i.bot = and <16 x i32> %i.boq, %9
  %i.bou = icmp ne <16 x i32> %i.bot, zeroinitializer
  %i.bov = mul nsw i32 %i.bom, 24
  %i.bow = sext i32 %i.bov to i64                 ; 2 uses
  %i.box = getelementptr [4 x i8], ptr %i.at, i64 %i.bow ; 3 uses
  %.val6384029 = load <8 x float>, ptr %i.box, align 32, !tbaa !29
  %i.boy = shufflevector <8 x float> %.val6384029, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.boz = getelementptr i8, ptr %i.box, i64 32
  %.val6394030 = load <8 x float>, ptr %i.boz, align 32, !tbaa !29
  %i.bpa = shufflevector <8 x float> %.val6394030, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bpb = getelementptr i8, ptr %i.box, i64 64
  %.val6404031 = load <8 x float>, ptr %i.bpb, align 32, !tbaa !29
  %i.bpc = shufflevector <8 x float> %.val6404031, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bpd = fsub <16 x float> %i.hp, %i.boy        ; 3 uses
  %i.bpe = fsub <16 x float> %i.hv, %i.boy        ; 3 uses
  %i.bpf = fsub <16 x float> %i.ic, %i.bpa        ; 3 uses
  %i.bpg = fsub <16 x float> %i.ii, %i.bpa        ; 3 uses
  %i.bph = fsub <16 x float> %i.ip, %i.bpc        ; 3 uses
  %i.bpi = fsub <16 x float> %i.iv, %i.bpc        ; 3 uses
  %i.bpj = fmul <16 x float> %i.bpd, %i.bpd
  %i.bpk = fmul <16 x float> %i.bpf, %i.bpf
  %i.bpl = fadd <16 x float> %i.bpj, %i.bpk
  %i.bpm = fmul <16 x float> %i.bph, %i.bph
  %i.bpn = fadd <16 x float> %i.bpl, %i.bpm       ; 2 uses
  %i.bpo = fmul <16 x float> %i.bpe, %i.bpe
  %i.bpp = fmul <16 x float> %i.bpg, %i.bpg
  %i.bpq = fadd <16 x float> %i.bpo, %i.bpp
  %i.bpr = fmul <16 x float> %i.bpi, %i.bpi
  %i.bps = fadd <16 x float> %i.bpq, %i.bpr       ; 2 uses
  %i.bpt = fcmp olt <16 x float> %i.bpn, %i.ap
  %i.bpu = fcmp olt <16 x float> %i.bps, %i.ap
  %i.bpv = and <16 x i1> %i.bos, %i.bpt           ; 2 uses
  %i.bpw = and <16 x i1> %i.bou, %i.bpu           ; 2 uses
  %i.bpx = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bpn, <16 x float> splat (float 3.820000e-07), i32 4) ; 2 uses
  %i.bpy = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bps, <16 x float> splat (float 3.820000e-07), i32 4) ; 2 uses
  %i.bpz = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.bpx, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bqa = fmul <16 x float> %i.bpx, %i.bpz
  %i.bqb = fmul <16 x float> %i.bpz, splat (float -5.000000e-01)
  %i.bqc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqa, <16 x float> %i.bpz, <16 x float> splat (float -3.000000e+00))
  %i.bqd = fmul <16 x float> %i.bqb, %i.bqc
  %i.bqe = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.bpy, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bqf = fmul <16 x float> %i.bpy, %i.bqe
  %i.bqg = fmul <16 x float> %i.bqe, splat (float -5.000000e-01)
  %i.bqh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqf, <16 x float> %i.bqe, <16 x float> splat (float -3.000000e+00))
  %i.bqi = fmul <16 x float> %i.bqg, %i.bqh
  %i.bqj = select <16 x i1> %i.bpv, <16 x float> %i.bqd, <16 x float> zeroinitializer ; 2 uses
  %i.bqk = select <16 x i1> %i.bpw, <16 x float> %i.bqi, <16 x float> zeroinitializer ; 2 uses
  %i.bql = fmul <16 x float> %i.bqj, %i.bqj       ; 4 uses
  %i.bqm = fmul <16 x float> %i.bqk, %i.bqk       ; 4 uses
  %i.bqn = shl nsw i32 %i.bom, 4
  %i.bqo = sext i32 %i.bqn to i64
  %i.bqp = getelementptr [4 x i8], ptr %i.f, i64 %i.bqo ; 2 uses
  %.val6414032 = load <8 x float>, ptr %i.bqp, align 32, !tbaa !29
  %i.bqq = shufflevector <8 x float> %.val6414032, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bqr = getelementptr i8, ptr %i.bqp, i64 32
  %.val6424033 = load <8 x float>, ptr %i.bqr, align 32, !tbaa !29
  %i.bqs = shufflevector <8 x float> %.val6424033, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bqt = fmul <16 x float> %i.jp, %i.bqq        ; 2 uses
  %i.bqu = fmul <16 x float> %i.jy, %i.bqq        ; 2 uses
  %i.bqv = fmul <16 x float> %i.jt, %i.bqs        ; 2 uses
  %i.bqw = fmul <16 x float> %i.kd, %i.bqs        ; 2 uses
  %i.bqx = fmul <16 x float> %i.bql, %i.bql
  %i.bqy = fmul <16 x float> %i.bql, %i.bqx       ; 3 uses
  %i.bqz = fmul <16 x float> %i.bqm, %i.bqm
  %i.bra = fmul <16 x float> %i.bqm, %i.bqz       ; 3 uses
  %i.brb = fmul <16 x float> %i.bqy, %i.bqy
  %i.brc = fmul <16 x float> %i.bra, %i.bra
  %i.brd = fmul <16 x float> %i.bqt, %i.bqy       ; 2 uses
  %i.bre = fmul <16 x float> %i.bqu, %i.bra       ; 2 uses
  %i.brf = fmul <16 x float> %i.bqv, %i.brb       ; 2 uses
  %i.brg = fmul <16 x float> %i.bqw, %i.brc       ; 2 uses
  %i.brh = fsub <16 x float> %i.brf, %i.brd
  %i.bri = fsub <16 x float> %i.brg, %i.bre
  %i.brj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqt, <16 x float> %i.ah, <16 x float> %i.brd)
  %i.brk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqu, <16 x float> %i.ah, <16 x float> %i.bre)
  %i.brl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqv, <16 x float> %i.ak, <16 x float> %i.brf)
  %i.brm = fmul <16 x float> %i.brj, splat (float f0xBE2AAAAB)
  %i.brn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.brl, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.brm)
  %i.bro = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqw, <16 x float> %i.ak, <16 x float> %i.brg)
  %i.brp = fmul <16 x float> %i.brk, splat (float f0xBE2AAAAB)
  %i.brq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bro, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.brp)
  %i.brr = select <16 x i1> %i.bpv, <16 x float> %i.brn, <16 x float> zeroinitializer ; 2 uses
  %i.brs = select <16 x i1> %i.bpw, <16 x float> %i.brq, <16 x float> zeroinitializer ; 2 uses
  %i.brt = load ptr, ptr %i.bc, align 8, !tbaa !83
  %i.bru = shl nsw i32 %i.bom, 1
  %i.brv = load i32, ptr %i.bo, align 8, !tbaa !99
  %i.brw = sext i32 %i.bru to i64
  %i.brx = getelementptr inbounds [4 x i8], ptr %i.brt, i64 %i.brw
  %i.bry = load i32, ptr %i.bp, align 4, !tbaa !100
  %i.brz = load i32, ptr %i.bm, align 8, !tbaa !93
  %i.bsa = load <2 x i32>, ptr %i.brx, align 4, !tbaa !84 ; 2 uses
  %i.bsb = insertelement <2 x i32> poison, i32 %i.brv, i64 0
  %i.bsc = shufflevector <2 x i32> %i.bsa, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bsd = shufflevector <2 x i32> %i.bsa, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bse = shufflevector <2 x i32> %i.bsb, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.bsf = ashr <4 x i32> %i.bsd, %i.bse
  %i.bsg = shufflevector <4 x i32> %i.bsf, <4 x i32> %i.bsc, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.bsh = insertelement <4 x i32> poison, i32 %i.bry, i64 0
  %i.bsi = shufflevector <4 x i32> %i.bsh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bsj = and <4 x i32> %i.bsg, %i.bsi
  %i.bsk = insertelement <4 x i32> poison, i32 %i.brz, i64 0
  %i.bsl = shufflevector <4 x i32> %i.bsk, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bsm = mul nsw <4 x i32> %i.bsj, %i.bsl       ; 4 uses
  %i.bsn = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.bso = load ptr, ptr %i.bsn, align 8, !tbaa !90 ; 4 uses
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bsn, i64 8
  %i.bsq = load ptr, ptr %i.bsp, align 8, !tbaa !90 ; 4 uses
  %i.bsr = shufflevector <16 x float> %i.brr, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bss = shufflevector <16 x float> %i.brr, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bst = extractelement <4 x i32> %i.bsm, i64 0
  %i.bsu = sext i32 %i.bst to i64                 ; 4 uses
  %i.bsv = getelementptr inbounds [4 x i8], ptr %i.bso, i64 %i.bsu ; 2 uses
  %i.bsw = getelementptr inbounds [4 x i8], ptr %i.bsq, i64 %i.bsu ; 2 uses
  %i.bsx = load <8 x float>, ptr %i.bsv, align 32, !tbaa !29
  %i.bsy = fadd <8 x float> %i.bsx, %i.bsr
  store <8 x float> %i.bsy, ptr %i.bsv, align 32, !tbaa !29
  %i.bsz = load <8 x float>, ptr %i.bsw, align 32, !tbaa !29
  %i.bta = fadd <8 x float> %i.bsz, %i.bss
  store <8 x float> %i.bta, ptr %i.bsw, align 32, !tbaa !29
  %i.btb = extractelement <4 x i32> %i.bsm, i64 1
  %i.btc = sext i32 %i.btb to i64                 ; 4 uses
  %i.btd = getelementptr inbounds [4 x i8], ptr %i.bso, i64 %i.btc
  %i.bte = getelementptr inbounds nuw i8, ptr %i.btd, i64 32 ; 2 uses
  %i.btf = getelementptr inbounds [4 x i8], ptr %i.bsq, i64 %i.btc
  %i.btg = getelementptr inbounds nuw i8, ptr %i.btf, i64 32 ; 2 uses
  %i.bth = load <8 x float>, ptr %i.bte, align 32, !tbaa !29
  %i.bti = fadd <8 x float> %i.bsr, %i.bth
  store <8 x float> %i.bti, ptr %i.bte, align 32, !tbaa !29
  %i.btj = load <8 x float>, ptr %i.btg, align 32, !tbaa !29
  %i.btk = fadd <8 x float> %i.btj, %i.bss
  store <8 x float> %i.btk, ptr %i.btg, align 32, !tbaa !29
  %i.btl = extractelement <4 x i32> %i.bsm, i64 2
  %i.btm = sext i32 %i.btl to i64                 ; 4 uses
  %i.btn = getelementptr inbounds [4 x i8], ptr %i.bso, i64 %i.btm
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btn, i64 64 ; 2 uses
  %i.btp = getelementptr inbounds [4 x i8], ptr %i.bsq, i64 %i.btm
  %i.btq = getelementptr inbounds nuw i8, ptr %i.btp, i64 64 ; 2 uses
  %i.btr = load <8 x float>, ptr %i.bto, align 32, !tbaa !29
  %i.bts = fadd <8 x float> %i.bsr, %i.btr
  store <8 x float> %i.bts, ptr %i.bto, align 32, !tbaa !29
  %i.btt = load <8 x float>, ptr %i.btq, align 32, !tbaa !29
  %i.btu = fadd <8 x float> %i.btt, %i.bss
  store <8 x float> %i.btu, ptr %i.btq, align 32, !tbaa !29
  %i.btv = extractelement <4 x i32> %i.bsm, i64 3
  %i.btw = sext i32 %i.btv to i64                 ; 4 uses
  %i.btx = getelementptr inbounds [4 x i8], ptr %i.bso, i64 %i.btw
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btx, i64 96 ; 2 uses
  %i.btz = getelementptr inbounds [4 x i8], ptr %i.bsq, i64 %i.btw
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btz, i64 96 ; 2 uses
  %i.bub = load <8 x float>, ptr %i.bty, align 32, !tbaa !29
  %i.buc = fadd <8 x float> %i.bsr, %i.bub
  store <8 x float> %i.buc, ptr %i.bty, align 32, !tbaa !29
  %i.bud = load <8 x float>, ptr %i.bua, align 32, !tbaa !29
  %i.bue = fadd <8 x float> %i.bud, %i.bss
  store <8 x float> %i.bue, ptr %i.bua, align 32, !tbaa !29
  %i.buf = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.bug = getelementptr inbounds nuw i8, ptr %i.buf, i64 16
  %i.buh = load ptr, ptr %i.bug, align 8, !tbaa !90 ; 4 uses
  %i.bui = getelementptr inbounds nuw i8, ptr %i.buf, i64 24
  %i.buj = load ptr, ptr %i.bui, align 8, !tbaa !90 ; 4 uses
  %i.buk = shufflevector <16 x float> %i.brs, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bul = shufflevector <16 x float> %i.brs, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bum = getelementptr inbounds [4 x i8], ptr %i.buh, i64 %i.bsu ; 2 uses
  %i.bun = getelementptr inbounds [4 x i8], ptr %i.buj, i64 %i.bsu ; 2 uses
  %i.buo = load <8 x float>, ptr %i.bum, align 32, !tbaa !29
  %i.bup = fadd <8 x float> %i.buk, %i.buo
  store <8 x float> %i.bup, ptr %i.bum, align 32, !tbaa !29
  %i.buq = load <8 x float>, ptr %i.bun, align 32, !tbaa !29
  %i.bur = fadd <8 x float> %i.buq, %i.bul
  store <8 x float> %i.bur, ptr %i.bun, align 32, !tbaa !29
  %i.bus = getelementptr inbounds [4 x i8], ptr %i.buh, i64 %i.btc
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 32 ; 2 uses
  %i.buu = getelementptr inbounds [4 x i8], ptr %i.buj, i64 %i.btc
  %i.buv = getelementptr inbounds nuw i8, ptr %i.buu, i64 32 ; 2 uses
  %i.buw = load <8 x float>, ptr %i.but, align 32, !tbaa !29
  %i.bux = fadd <8 x float> %i.buk, %i.buw
  store <8 x float> %i.bux, ptr %i.but, align 32, !tbaa !29
  %i.buy = load <8 x float>, ptr %i.buv, align 32, !tbaa !29
  %i.buz = fadd <8 x float> %i.buy, %i.bul
  store <8 x float> %i.buz, ptr %i.buv, align 32, !tbaa !29
  %i.bva = getelementptr inbounds [4 x i8], ptr %i.buh, i64 %i.btm
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bva, i64 64 ; 2 uses
  %i.bvc = getelementptr inbounds [4 x i8], ptr %i.buj, i64 %i.btm
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bvc, i64 64 ; 2 uses
  %i.bve = load <8 x float>, ptr %i.bvb, align 32, !tbaa !29
  %i.bvf = fadd <8 x float> %i.buk, %i.bve
  store <8 x float> %i.bvf, ptr %i.bvb, align 32, !tbaa !29
  %i.bvg = load <8 x float>, ptr %i.bvd, align 32, !tbaa !29
  %i.bvh = fadd <8 x float> %i.bvg, %i.bul
  store <8 x float> %i.bvh, ptr %i.bvd, align 32, !tbaa !29
  %i.bvi = getelementptr inbounds [4 x i8], ptr %i.buh, i64 %i.btw
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bvi, i64 96 ; 2 uses
  %i.bvk = getelementptr inbounds [4 x i8], ptr %i.buj, i64 %i.btw
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bvk, i64 96 ; 2 uses
  %i.bvm = load <8 x float>, ptr %i.bvj, align 32, !tbaa !29
  %i.bvn = fadd <8 x float> %i.buk, %i.bvm
  store <8 x float> %i.bvn, ptr %i.bvj, align 32, !tbaa !29
  %i.bvo = load <8 x float>, ptr %i.bvl, align 32, !tbaa !29
  %i.bvp = fadd <8 x float> %i.bvo, %i.bul
  store <8 x float> %i.bvp, ptr %i.bvl, align 32, !tbaa !29
  %i.bvq = fmul <16 x float> %i.bql, %i.brh       ; 3 uses
  %i.bvr = fmul <16 x float> %i.bqm, %i.bri       ; 3 uses
  %i.bvs = fmul <16 x float> %i.bpd, %i.bvq       ; 2 uses
  %i.bvt = fmul <16 x float> %i.bpe, %i.bvr       ; 2 uses
  %i.bvu = fmul <16 x float> %i.bpf, %i.bvq       ; 2 uses
  %i.bvv = fmul <16 x float> %i.bpg, %i.bvr       ; 2 uses
  %i.bvw = fmul <16 x float> %i.bph, %i.bvq       ; 2 uses
  %i.bvx = fmul <16 x float> %i.bpi, %i.bvr       ; 2 uses
  %i.bvy = fadd <16 x float> %.sroa.03138.43675, %i.bvs ; 2 uses
  %i.bvz = fadd <16 x float> %.sroa.163145.43676, %i.bvt ; 2 uses
  %i.bwa = fadd <16 x float> %.sroa.03120.43673, %i.bvu ; 2 uses
  %i.bwb = fadd <16 x float> %.sroa.163127.43674, %i.bvv ; 2 uses
  %i.bwc = fadd <16 x float> %.sroa.03103.43671, %i.bvw ; 2 uses
  %i.bwd = fadd <16 x float> %.sroa.16.43672, %i.bvx ; 2 uses
  %i.bwe = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bow ; 4 uses
  %i.bwf = fadd <16 x float> %i.bvs, %i.bvt       ; 2 uses
  %i.bwg = fadd <16 x float> %i.bvu, %i.bvv       ; 2 uses
  %i.bwh = fadd <16 x float> %i.bvw, %i.bvx       ; 2 uses
  %i.bwi = load <8 x float>, ptr %i.bwe, align 32, !tbaa !29
  %i.bwj = shufflevector <16 x float> %i.bwf, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bwk = shufflevector <16 x float> %i.bwf, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bwl = fadd <8 x float> %i.bwj, %i.bwk
  %i.bwm = fsub <8 x float> %i.bwi, %i.bwl
  store <8 x float> %i.bwm, ptr %i.bwe, align 32, !tbaa !29
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwe, i64 32 ; 2 uses
  %i.bwo = load <8 x float>, ptr %i.bwn, align 32, !tbaa !29
  %i.bwp = shufflevector <16 x float> %i.bwg, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bwq = shufflevector <16 x float> %i.bwg, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bwr = fadd <8 x float> %i.bwp, %i.bwq
  %i.bws = fsub <8 x float> %i.bwo, %i.bwr
  store <8 x float> %i.bws, ptr %i.bwn, align 32, !tbaa !29
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.bwe, i64 64 ; 2 uses
  %i.bwu = load <8 x float>, ptr %i.bwt, align 32, !tbaa !29
  %i.bwv = shufflevector <16 x float> %i.bwh, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bww = shufflevector <16 x float> %i.bwh, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bwx = fadd <8 x float> %i.bwv, %i.bww
  %i.bwy = fsub <8 x float> %i.bwu, %i.bwx
  store <8 x float> %i.bwy, ptr %i.bwt, align 32, !tbaa !29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.p, !llvm.loop !21

.critedge5.loopexit:                              ; preds = %bb.p
  %i.bwz = trunc nsw i64 %indvars.iv to i32
  br label %.critedge5

.critedge5:                                       ; preds = %.critedge5.loopexit, %.preheader3663
  %.sroa.03103.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader3663 ], [ %.sroa.03103.43671, %.critedge5.loopexit ] ; 2 uses
  %.sroa.16.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader3663 ], [ %.sroa.16.43672, %.critedge5.loopexit ] ; 2 uses
  %.sroa.03120.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader3663 ], [ %.sroa.03120.43673, %.critedge5.loopexit ] ; 2 uses
  %.sroa.163127.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader3663 ], [ %.sroa.163127.43674, %.critedge5.loopexit ] ; 2 uses
  %.sroa.03138.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader3663 ], [ %.sroa.03138.43675, %.critedge5.loopexit ] ; 2 uses
  %.sroa.163145.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader3663 ], [ %.sroa.163145.43676, %.critedge5.loopexit ] ; 2 uses
  %.4.lcssa = phi i32 [ %i.bv, %.preheader3663 ], [ %i.bwz, %.critedge5.loopexit ] ; 2 uses
  %i.bxa = icmp slt i32 %.4.lcssa, %i.bx
  br i1 %i.bxa, label %.lr.ph3699, label %.loopexit

.lr.ph3699:                                       ; preds = %.critedge5
  %i.bxb = sext i32 %.4.lcssa to i64
  %wide.trip.count3812 = sext i32 %i.bx to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph3699, %bb.q
  %indvars.iv3809 = phi i64 [ %i.bxb, %.lr.ph3699 ], [ %indvars.iv.next3810, %bb.q ] ; 2 uses
  %.sroa.163145.53697 = phi <16 x float> [ %.sroa.163145.4.lcssa, %.lr.ph3699 ], [ %i.ceg, %bb.q ]
  %.sroa.03138.53696 = phi <16 x float> [ %.sroa.03138.4.lcssa, %.lr.ph3699 ], [ %i.cef, %bb.q ]
  %.sroa.163127.53695 = phi <16 x float> [ %.sroa.163127.4.lcssa, %.lr.ph3699 ], [ %i.cei, %bb.q ]
  %.sroa.03120.53694 = phi <16 x float> [ %.sroa.03120.4.lcssa, %.lr.ph3699 ], [ %i.ceh, %bb.q ]
  %.sroa.16.53693 = phi <16 x float> [ %.sroa.16.4.lcssa, %.lr.ph3699 ], [ %i.cek, %bb.q ]
  %.sroa.03103.53692 = phi <16 x float> [ %.sroa.03103.4.lcssa, %.lr.ph3699 ], [ %i.cej, %bb.q ]
  %i.bxc = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv3809
  %i.bxd = load i32, ptr %i.bxc, align 4, !tbaa !92 ; 3 uses
  %i.bxe = mul nsw i32 %i.bxd, 24
  %i.bxf = sext i32 %i.bxe to i64                 ; 2 uses
  %i.bxg = getelementptr [4 x i8], ptr %i.at, i64 %i.bxf ; 3 uses
  %.val6434034 = load <8 x float>, ptr %i.bxg, align 32, !tbaa !29
  %i.bxh = shufflevector <8 x float> %.val6434034, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bxi = getelementptr i8, ptr %i.bxg, i64 32
  %.val6444035 = load <8 x float>, ptr %i.bxi, align 32, !tbaa !29
  %i.bxj = shufflevector <8 x float> %.val6444035, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bxk = getelementptr i8, ptr %i.bxg, i64 64
  %.val6454036 = load <8 x float>, ptr %i.bxk, align 32, !tbaa !29
  %i.bxl = shufflevector <8 x float> %.val6454036, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bxm = fsub <16 x float> %i.hp, %i.bxh        ; 3 uses
  %i.bxn = fsub <16 x float> %i.hv, %i.bxh        ; 3 uses
  %i.bxo = fsub <16 x float> %i.ic, %i.bxj        ; 3 uses
  %i.bxp = fsub <16 x float> %i.ii, %i.bxj        ; 3 uses
  %i.bxq = fsub <16 x float> %i.ip, %i.bxl        ; 3 uses
  %i.bxr = fsub <16 x float> %i.iv, %i.bxl        ; 3 uses
  %i.bxs = fmul <16 x float> %i.bxm, %i.bxm
  %i.bxt = fmul <16 x float> %i.bxo, %i.bxo
  %i.bxu = fadd <16 x float> %i.bxs, %i.bxt
  %i.bxv = fmul <16 x float> %i.bxq, %i.bxq
  %i.bxw = fadd <16 x float> %i.bxu, %i.bxv       ; 2 uses
  %i.bxx = fmul <16 x float> %i.bxn, %i.bxn
  %i.bxy = fmul <16 x float> %i.bxp, %i.bxp
  %i.bxz = fadd <16 x float> %i.bxx, %i.bxy
  %i.bya = fmul <16 x float> %i.bxr, %i.bxr
  %i.byb = fadd <16 x float> %i.bxz, %i.bya       ; 2 uses
  %i.byc = fcmp olt <16 x float> %i.bxw, %i.ap    ; 2 uses
  %i.byd = fcmp olt <16 x float> %i.byb, %i.ap    ; 2 uses
  %i.bye = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bxw, <16 x float> splat (float 3.820000e-07), i32 4) ; 2 uses
  %i.byf = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.byb, <16 x float> splat (float 3.820000e-07), i32 4) ; 2 uses
  %i.byg = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.bye, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.byh = fmul <16 x float> %i.bye, %i.byg
  %i.byi = fmul <16 x float> %i.byg, splat (float -5.000000e-01)
  %i.byj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byh, <16 x float> %i.byg, <16 x float> splat (float -3.000000e+00))
  %i.byk = fmul <16 x float> %i.byi, %i.byj
  %i.byl = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.byf, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bym = fmul <16 x float> %i.byf, %i.byl
  %i.byn = fmul <16 x float> %i.byl, splat (float -5.000000e-01)
  %i.byo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bym, <16 x float> %i.byl, <16 x float> splat (float -3.000000e+00))
  %i.byp = fmul <16 x float> %i.byn, %i.byo
  %i.byq = select <16 x i1> %i.byc, <16 x float> %i.byk, <16 x float> zeroinitializer ; 2 uses
  %i.byr = select <16 x i1> %i.byd, <16 x float> %i.byp, <16 x float> zeroinitializer ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader3666.preheader
  store <8 x float> %i.ccw, ptr %i.cct, align 32, !tbaa !29
  %i.ccx = load <8 x float>, ptr %i.ccu, align 32, !tbaa !29
  %i.ccy = fadd <8 x float> %i.ccx, %i.ccs
  store <8 x float> %i.ccy, ptr %i.ccu, align 32, !tbaa !29
  %i.ccz = getelementptr inbounds [4 x i8], ptr %i.cco, i64 %i.cbj
  %i.cda = getelementptr inbounds nuw i8, ptr %i.ccz, i64 32 ; 2 uses
  %i.cdb = getelementptr inbounds [4 x i8], ptr %i.ccq, i64 %i.cbj
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.cdb, i64 32 ; 2 uses
  %i.cdd = load <8 x float>, ptr %i.cda, align 32, !tbaa !29
  %i.cde = fadd <8 x float> %i.ccr, %i.cdd
  store <8 x float> %i.cde, ptr %i.cda, align 32, !tbaa !29
  %i.cdf = load <8 x float>, ptr %i.cdc, align 32, !tbaa !29
  %i.cdg = fadd <8 x float> %i.cdf, %i.ccs
  store <8 x float> %i.cdg, ptr %i.cdc, align 32, !tbaa !29
  %i.cdh = getelementptr inbounds [4 x i8], ptr %i.cco, i64 %i.cbt
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cdh, i64 64 ; 2 uses
  %i.cdj = getelementptr inbounds [4 x i8], ptr %i.ccq, i64 %i.cbt
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdj, i64 64 ; 2 uses
  %i.cdl = load <8 x float>, ptr %i.cdi, align 32, !tbaa !29
  %i.cdm = fadd <8 x float> %i.ccr, %i.cdl
  store <8 x float> %i.cdm, ptr %i.cdi, align 32, !tbaa !29
  %i.cdn = load <8 x float>, ptr %i.cdk, align 32, !tbaa !29
  %i.cdo = fadd <8 x float> %i.cdn, %i.ccs
  store <8 x float> %i.cdo, ptr %i.cdk, align 32, !tbaa !29
  %i.cdp = getelementptr inbounds [4 x i8], ptr %i.cco, i64 %i.ccd
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdp, i64 96 ; 2 uses
  %i.cdr = getelementptr inbounds [4 x i8], ptr %i.ccq, i64 %i.ccd
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdr, i64 96 ; 2 uses
  %i.cdt = load <8 x float>, ptr %i.cdq, align 32, !tbaa !29
  %i.cdu = fadd <8 x float> %i.ccr, %i.cdt
  store <8 x float> %i.cdu, ptr %i.cdq, align 32, !tbaa !29
  %i.cdv = load <8 x float>, ptr %i.cds, align 32, !tbaa !29
  %i.cdw = fadd <8 x float> %i.cdv, %i.ccs
  store <8 x float> %i.cdw, ptr %i.cds, align 32, !tbaa !29
  %i.cdx = fmul <16 x float> %i.bys, %i.bzo       ; 3 uses
  %i.cdy = fmul <16 x float> %i.byt, %i.bzp       ; 3 uses
  %i.cdz = fmul <16 x float> %i.bxm, %i.cdx       ; 2 uses
  %i.cea = fmul <16 x float> %i.bxn, %i.cdy       ; 2 uses
  %i.ceb = fmul <16 x float> %i.bxo, %i.cdx       ; 2 uses
  %i.cec = fmul <16 x float> %i.bxp, %i.cdy       ; 2 uses
  %i.ced = fmul <16 x float> %i.bxq, %i.cdx       ; 2 uses
  %i.cee = fmul <16 x float> %i.bxr, %i.cdy       ; 2 uses
  %i.cef = fadd <16 x float> %.sroa.03138.53696, %i.cdz ; 2 uses
  %i.ceg = fadd <16 x float> %.sroa.163145.53697, %i.cea ; 2 uses
  %i.ceh = fadd <16 x float> %.sroa.03120.53694, %i.ceb ; 2 uses
  %i.cei = fadd <16 x float> %.sroa.163127.53695, %i.cec ; 2 uses
  %i.cej = fadd <16 x float> %.sroa.03103.53692, %i.ced ; 2 uses
  %i.cek = fadd <16 x float> %.sroa.16.53693, %i.cee ; 2 uses
  %i.cel = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bxf ; 4 uses
  %i.cem = fadd <16 x float> %i.cdz, %i.cea       ; 2 uses
  %i.cen = fadd <16 x float> %i.ceb, %i.cec       ; 2 uses
  %i.ceo = fadd <16 x float> %i.ced, %i.cee       ; 2 uses
  %i.cep = load <8 x float>, ptr %i.cel, align 32, !tbaa !29
  %i.ceq = shufflevector <16 x float> %i.cem, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cer = shufflevector <16 x float> %i.cem, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ces = fadd <8 x float> %i.ceq, %i.cer
  %i.cet = fsub <8 x float> %i.cep, %i.ces
  store <8 x float> %i.cet, ptr %i.cel, align 32, !tbaa !29
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.cel, i64 32 ; 2 uses
  %i.cev = load <8 x float>, ptr %i.ceu, align 32, !tbaa !29
  %i.cew = shufflevector <16 x float> %i.cen, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cex = shufflevector <16 x float> %i.cen, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cey = fadd <8 x float> %i.cew, %i.cex
  %i.cez = fsub <8 x float> %i.cev, %i.cey
  store <8 x float> %i.cez, ptr %i.ceu, align 32, !tbaa !29
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.cel, i64 64 ; 2 uses
  %i.cfb = load <8 x float>, ptr %i.cfa, align 32, !tbaa !29
  %i.cfc = shufflevector <16 x float> %i.ceo, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cfd = shufflevector <16 x float> %i.ceo, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cfe = fadd <8 x float> %i.cfc, %i.cfd
  %i.cff = fsub <8 x float> %i.cfb, %i.cfe
  store <8 x float> %i.cff, ptr %i.cfa, align 32, !tbaa !29
  %indvars.iv.next3810 = add nsw i64 %indvars.iv3809, 1 ; 2 uses
  %exitcond3813.not = icmp eq i64 %indvars.iv.next3810, %wide.trip.count3812
  br i1 %exitcond3813.not, label %.loopexit, label %bb.q, !llvm.loop !22

.loopexit:                                        ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit, %bb.q, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit, %bb.o, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532, %bb.i, %.critedge5, %.critedge3, %.critedge
  %.sroa.03103.6 = phi <16 x float> [ %i.cej, %bb.q ], [ %i.bnk, %bb.o ], [ %.sroa.03103.0.lcssa, %.critedge ], [ %.sroa.03103.2.lcssa, %.critedge3 ], [ %.sroa.03103.4.lcssa, %.critedge5 ], [ %i.wv, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ], [ %i.ayy, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.aji, %bb.i ], [ %i.bwc, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.16.6 = phi <16 x float> [ %i.cek, %bb.q ], [ %i.bnl, %bb.o ], [ %.sroa.16.0.lcssa, %.critedge ], [ %.sroa.16.2.lcssa, %.critedge3 ], [ %.sroa.16.4.lcssa, %.critedge5 ], [ %i.ww, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ], [ %i.ayz, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ajj, %bb.i ], [ %i.bwd, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03120.6 = phi <16 x float> [ %i.ceh, %bb.q ], [ %i.bni, %bb.o ], [ %.sroa.03120.0.lcssa, %.critedge ], [ %.sroa.03120.2.lcssa, %.critedge3 ], [ %.sroa.03120.4.lcssa, %.critedge5 ], [ %i.wt, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ], [ %i.ayw, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ajg, %bb.i ], [ %i.bwa, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.163127.6 = phi <16 x float> [ %i.cei, %bb.q ], [ %i.bnj, %bb.o ], [ %.sroa.163127.0.lcssa, %.critedge ], [ %.sroa.163127.2.lcssa, %.critedge3 ], [ %.sroa.163127.4.lcssa, %.critedge5 ], [ %i.wu, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ], [ %i.ayx, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ajh, %bb.i ], [ %i.bwb, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03138.6 = phi <16 x float> [ %i.cef, %bb.q ], [ %i.bng, %bb.o ], [ %.sroa.03138.0.lcssa, %.critedge ], [ %.sroa.03138.2.lcssa, %.critedge3 ], [ %.sroa.03138.4.lcssa, %.critedge5 ], [ %i.wr, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ], [ %i.ayu, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.aje, %bb.i ], [ %i.bvy, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.163145.6 = phi <16 x float> [ %i.ceg, %bb.q ], [ %i.bnh, %bb.o ], [ %.sroa.163145.0.lcssa, %.critedge ], [ %.sroa.163145.2.lcssa, %.critedge3 ], [ %.sroa.163145.4.lcssa, %.critedge5 ], [ %i.ws, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ], [ %i.ayv, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ajf, %bb.i ], [ %i.bvz, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %i.cfg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hj ; 2 uses
  %i.cfh = shufflevector <16 x float> %.sroa.03138.6, <16 x float> %.sroa.163145.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cfi = shufflevector <16 x float> %.sroa.03138.6, <16 x float> %.sroa.163145.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cfj = fadd <16 x float> %i.cfh, %i.cfi       ; 2 uses
  %i.cfk = shufflevector <16 x float> %i.cfj, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cfl = fadd <16 x float> %i.cfj, %i.cfk       ; 2 uses
  %i.cfm = shufflevector <16 x float> %i.cfl, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cfn = fadd <16 x float> %i.cfl, %i.cfm
  %i.cfo = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.cfn, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cfp = shufflevector <16 x float> %i.cfo, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cfq = load <4 x float>, ptr %i.cfg, align 16, !tbaa !29
  %i.cfr = fadd <4 x float> %i.cfq, %i.cfp
  store <4 x float> %i.cfr, ptr %i.cfg, align 16, !tbaa !29
  %i.cfs = shufflevector <16 x float> %i.cfo, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cft = fadd <4 x float> %i.cfp, %i.cfs        ; 2 uses
  %i.cfu = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hw ; 2 uses
  %i.cfv = shufflevector <16 x float> %.sroa.03120.6, <16 x float> %.sroa.163127.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cfw = shufflevector <16 x float> %.sroa.03120.6, <16 x float> %.sroa.163127.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cfx = fadd <16 x float> %i.cfv, %i.cfw       ; 2 uses
  %i.cfy = shufflevector <16 x float> %i.cfx, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cfz = fadd <16 x float> %i.cfx, %i.cfy       ; 2 uses
  %i.cga = shufflevector <16 x float> %i.cfz, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cgb = fadd <16 x float> %i.cfz, %i.cga
  %i.cgc = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.cgb, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cgd = shufflevector <16 x float> %i.cgc, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cge = load <4 x float>, ptr %i.cfu, align 16, !tbaa !29
  %i.cgf = fadd <4 x float> %i.cge, %i.cgd
  store <4 x float> %i.cgf, ptr %i.cfu, align 16, !tbaa !29
  %i.cgg = shufflevector <16 x float> %i.cgc, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cgh = fadd <4 x float> %i.cgd, %i.cgg        ; 2 uses
  %i.cgi = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ij ; 2 uses
  %i.cgj = shufflevector <16 x float> %.sroa.03103.6, <16 x float> %.sroa.16.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cgk = shufflevector <16 x float> %.sroa.03103.6, <16 x float> %.sroa.16.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cgl = fadd <16 x float> %i.cgj, %i.cgk       ; 2 uses
  %i.cgm = shufflevector <16 x float> %i.cgl, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cgn = fadd <16 x float> %i.cgl, %i.cgm       ; 2 uses
  %i.cgo = shufflevector <16 x float> %i.cgn, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cgp = fadd <16 x float> %i.cgn, %i.cgo
  %i.cgq = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.cgp, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cgr = shufflevector <16 x float> %i.cgq, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cgs = load <4 x float>, ptr %i.cgi, align 16, !tbaa !29
  %i.cgt = fadd <4 x float> %i.cgs, %i.cgr
  store <4 x float> %i.cgt, ptr %i.cgi, align 16, !tbaa !29
  %i.cgu = shufflevector <16 x float> %i.cgq, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cgv = fadd <4 x float> %i.cgr, %i.cgu        ; 2 uses
  %i.cgw = shufflevector <4 x float> %i.cgv, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cgx = fadd <4 x float> %i.cgv, %i.cgw
  %i.cgy = extractelement <4 x float> %i.cgx, i64 0
  %i.cgz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cb ; 2 uses
  %i.cha = load <2 x float>, ptr %i.cgz, align 4, !tbaa !72
  %i.chb = shufflevector <4 x float> %i.cft, <4 x float> %i.cgh, <2 x i32> <i32 0, i32 4>
  %i.chc = shufflevector <4 x float> %i.cft, <4 x float> %i.cgh, <2 x i32> <i32 1, i32 5>
  %i.chd = fadd <2 x float> %i.chb, %i.chc
  %i.che = fadd <2 x float> %i.chd, %i.cha
  store <2 x float> %i.che, ptr %i.cgz, align 4, !tbaa !72
  %i.chf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cn ; 2 uses
  %i.chg = load float, ptr %i.chf, align 4, !tbaa !72
  %i.chh = fadd float %i.cgy, %i.chg
  store float %i.chh, ptr %i.chf, align 4, !tbaa !72
  %i.chi = getelementptr inbounds nuw i8, ptr %.sroa.01744.03783, i64 16 ; 2 uses
  %.not3656 = icmp eq ptr %i.chi, %i.az
  br i1 %.not3656, label %._crit_edge, label %bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float>, <16 x float>, i16) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float>, <16 x float>, i16) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float>, <16 x float>, <16 x i1>) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, i1 false, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!10 = distinct !{!10, !9, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!11 = distinct !{!11, i1 false, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE0_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!12 = distinct !{!12, !11, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE0_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!13 = distinct !{!13, i1 false, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE1_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!14 = distinct !{!14, !13, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE1_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!15 = distinct !{!15, i1 false, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE2_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!16 = distinct !{!16, !15, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE2_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!17 = distinct !{!17, !101}
!18 = distinct !{!18, !101}
!19 = distinct !{!19, !101}
!20 = distinct !{!20, !101}
!21 = distinct !{!21, !101}
!22 = distinct !{!22, !101}
!23 = !{!"any pointer", !5, i64 0}
!24 = !{!"p1 float", !23, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!25, !24, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!28 = !{!27, !24, i64 0}
!29 = !{!5, !5, i64 0}
!30 = !{!"_ZTS15VanDerWaalsType", !5, i64 0}
!31 = !{!"_ZTS20InteractionModifiers", !5, i64 0}
!32 = !{!"double", !5, i64 0}
!33 = !{!"float", !5, i64 0}
!34 = !{!"_ZTS14shift_consts_t", !33, i64 0, !33, i64 4, !33, i64 8}
!35 = !{!"_ZTS15switch_consts_t", !33, i64 0, !33, i64 4, !33, i64 8}
!36 = !{!"_ZTS12LongRangeVdW", !5, i64 0}
!37 = !{!"_ZTSN19interaction_const_t19VanDerWaalsSettingsE", !30, i64 0, !31, i64 4, !32, i64 8, !33, i64 16, !33, i64 20, !34, i64 24, !34, i64 36, !35, i64 48, !33, i64 60, !36, i64 64, !33, i64 68}
!38 = !{!"_ZTS22CoulombInteractionType", !5, i64 0}
!39 = !{!"_ZTSN19interaction_const_t15CoulombSettingsE", !38, i64 0, !31, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20, !33, i64 24, !33, i64 28, !33, i64 32, !33, i64 36}
!40 = !{!"p1 _ZTS21EwaldCorrectionTables", !23, i64 0}
!41 = !{!"_ZTSSt10_Head_baseILm0EP21EwaldCorrectionTablesLb0EE", !40, i64 0}
!42 = !{!"_ZTSSt11_Tuple_implILm0EJP21EwaldCorrectionTablesSt14default_deleteIS0_EEE", !41, i64 0}
!43 = !{!"_ZTSSt5tupleIJP21EwaldCorrectionTablesSt14default_deleteIS0_EEE", !42, i64 0}
!44 = !{!"_ZTSSt15__uniq_ptr_implI21EwaldCorrectionTablesSt14default_deleteIS0_EE", !43, i64 0}
!45 = !{!"_ZTSSt15__uniq_ptr_dataI21EwaldCorrectionTablesSt14default_deleteIS0_ELb1ELb1EE", !44, i64 0}
!46 = !{!"_ZTSSt10unique_ptrI21EwaldCorrectionTablesSt14default_deleteIS0_EE", !45, i64 0}
!47 = !{!"p1 _ZTSN19interaction_const_t18SoftCoreParametersE", !23, i64 0}
!48 = !{!"_ZTSSt10_Head_baseILm0EPN19interaction_const_t18SoftCoreParametersELb0EE", !47, i64 0}
!49 = !{!"_ZTSSt11_Tuple_implILm0EJPN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EEE", !48, i64 0}
!50 = !{!"_ZTSSt5tupleIJPN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EEE", !49, i64 0}
!51 = !{!"_ZTSSt15__uniq_ptr_implIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EE", !50, i64 0}
!52 = !{!"_ZTSSt15__uniq_ptr_dataIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_ELb1ELb1EE", !51, i64 0}
!53 = !{!"_ZTSSt10unique_ptrIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EE", !52, i64 0}
!54 = !{!"bool", !5, i64 0}
!55 = !{!"_ZTS19interaction_const_t", !37, i64 0, !39, i64 72, !46, i64 112, !46, i64 120, !53, i64 128, !54, i64 136}
!56 = !{!55, !33, i64 80}
!57 = !{!"p1 _ZTSN3gmx10nbnxn_cj_tE", !23, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!58, !57, i64 0}
!60 = !{!"p1 _ZTSN3gmx10nbnxn_ci_tE", !23, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"p1 int", !23, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!64 = !{!63, !62, i64 0}
!65 = !{!"p1 _ZTSN3gmx17EnergyAccumulatorILb1ELb1EEE", !23, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"_ZTSN3gmx10nbnxn_ci_tE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!68 = !{!67, !6, i64 4}
!69 = !{!67, !6, i64 8}
!70 = !{!67, !6, i64 12}
!71 = !{!67, !6, i64 0}
!72 = !{!33, !33, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !27, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !73, i64 0}
!75 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !74, i64 0}
!76 = !{!"any p2 pointer", !23, i64 0}
!77 = !{!"p2 float", !76, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIPfSaIS0_EE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!79 = !{!"_ZTSNSt12_Vector_baseIPfSaIS0_EE12_Vector_implE", !78, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseIPfSaIS0_EE", !79, i64 0}
!81 = !{!"_ZTSSt6vectorIPfSaIS0_EE", !80, i64 0}
!82 = !{!"_ZTSN3gmx17EnergyAccumulatorILb1ELb1EEE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !62, i64 32, !75, i64 40, !75, i64 64, !6, i64 88, !81, i64 96, !81, i64 120, !6, i64 144}
!83 = !{!82, !62, i64 32}
!84 = !{!6, !6, i64 0}
!85 = !{!82, !6, i64 88}
!86 = !{!82, !6, i64 8}
!87 = !{!82, !6, i64 12}
!88 = !{!82, !6, i64 28}
!89 = !{!78, !77, i64 0}
!90 = !{!24, !24, i64 0}
!91 = !{!"_ZTSN3gmx10nbnxn_cj_tE", !6, i64 0, !6, i64 4}
!92 = !{!91, !6, i64 0}
!93 = !{!82, !6, i64 24}
!94 = !{!10}
!95 = !{!12}
!96 = !{!14}
!97 = !{!16}
!98 = !{!91, !6, i64 4}
!99 = !{!82, !6, i64 16}
!100 = !{!82, !6, i64 20}
!101 = !{!"llvm.loop.mustprogress"}
end_hunk_3
