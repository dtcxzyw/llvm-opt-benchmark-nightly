Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ElecEw_VdwLJCombGeom_VgrpF?download=true
inline.NumInlined: 1416
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(656) %1, ptr noundef nonnull align 8 dereferenceable(137) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat {
.preheader3718.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %.val.i.i = load <16 x float>, ptr %i.h, align 64, !tbaa !29 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 552
  %6 = load ptr, ptr %5, align 8, !tbaa !32       ; 2 uses
  %.sroa.03909.0.copyload = load <16 x i32>, ptr %6, align 64, !tbaa !29 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  %.sroa.6.0.copyload = load <16 x i32>, ptr %.sroa.6.0..sroa_idx, align 64, !tbaa !29 ; 3 uses
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
  %i.am = load float, ptr %i.al, align 8, !tbaa !59 ; 2 uses
  %i.an = fmul float %i.am, %i.am
  %i.ao = insertelement <16 x float> poison, float %i.an, i64 0
  %i.ap = shufflevector <16 x float> %i.ao, <16 x float> poison, <16 x i32> zeroinitializer ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !26 ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !26 ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !62 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !64 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !64 ; 2 uses
  %.not37083834 = icmp eq ptr %i.ax, %i.az
  br i1 %.not37083834, label %._crit_edge, label %.lr.ph3836

.lr.ph3836:                                       ; preds = %.preheader3718.preheader
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
  br label %bb.a

._crit_edge:                                      ; preds = %.loopexit, %.preheader3718.preheader
  ret void

bb.a:                                             ; preds = %.lr.ph3836, %.loopexit
  %.sroa.01744.03835 = phi ptr [ %i.ax, %.lr.ph3836 ], [ %i.chm, %.loopexit ] ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.01744.03835, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !68 ; 3 uses
  %i.bs = and i32 %i.br, 127                      ; 2 uses
  %i.bt = mul nuw nsw i32 %i.bs, 3                ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.01744.03835, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !69 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.01744.03835, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !70 ; 10 uses
  %i.by = load i32, ptr %.sroa.01744.03835, align 4, !tbaa !71 ; 3 uses
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
  br i1 %i.da, label %bb.b, label %.loopexit3717

bb.b:                                             ; preds = %bb.a
  %i.ez = sext i32 %i.bv to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !92
  %i.fc = ashr i32 %i.ca, 1
  %i.fd = icmp eq i32 %i.fb, %i.fc
  br i1 %i.fd, label %.preheader3716, label %.loopexit3717

.preheader3716:                                   ; preds = %bb.b
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
  br label %.loopexit3717

.loopexit3717:                                    ; preds = %.preheader3716, %bb.b, %bb.a
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

bb.c:                                             ; preds = %.loopexit3717
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

bb.d:                                             ; preds = %bb.c, %.loopexit3717
  %.sroa.03284.0 = phi <16 x float> [ %i.jc, %bb.c ], [ undef, %.loopexit3717 ] ; 4 uses
  %.sroa.73288.0 = phi <16 x float> [ %i.ji, %bb.c ], [ undef, %.loopexit3717 ] ; 4 uses
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
  br i1 %i.ke, label %.lr.ph3804, label %.critedge

.lr.ph3804:                                       ; preds = %.preheader
  %i.kf = sext i32 %i.bv to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph3804, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532
  %indvars.iv3881 = phi i64 [ %i.kf, %.lr.ph3804 ], [ %indvars.iv.next3882, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ] ; 4 uses
  %.sroa.163145.03802 = phi <16 x float> [ zeroinitializer, %.lr.ph3804 ], [ %i.wu, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ] ; 2 uses
  %.sroa.03138.03801 = phi <16 x float> [ zeroinitializer, %.lr.ph3804 ], [ %i.wt, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ] ; 2 uses
  %.sroa.163127.03800 = phi <16 x float> [ zeroinitializer, %.lr.ph3804 ], [ %i.ww, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ] ; 2 uses
  %.sroa.03120.03799 = phi <16 x float> [ zeroinitializer, %.lr.ph3804 ], [ %i.wv, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ] ; 2 uses
  %.sroa.16.03798 = phi <16 x float> [ zeroinitializer, %.lr.ph3804 ], [ %i.wy, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ] ; 2 uses
  %.sroa.03103.03797 = phi <16 x float> [ zeroinitializer, %.lr.ph3804 ], [ %i.wx, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ] ; 2 uses
  %i.kg = load ptr, ptr %i.au, align 8, !tbaa !62
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv3881
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !84
  %.not523 = icmp eq i32 %i.kj, -1
  br i1 %.not523, label %.critedge.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit531

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit531: ; preds = %bb.e
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv3881 ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !92 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !98
  %i.ko = insertelement <16 x i32> poison, i32 %i.kn, i64 0
  %i.kp = shufflevector <16 x i32> %i.ko, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.kq = and <16 x i32> %.sroa.03909.0.copyload, %i.kp
  %i.kr = icmp ne <16 x i32> %i.kq, zeroinitializer ; 4 uses
  %i.ks = and <16 x i32> %.sroa.6.0.copyload, %i.kp
  %.not3933 = icmp eq <16 x i32> %i.ks, zeroinitializer ; 2 uses
  %i.kt = shl nsw i32 %i.kl, 3
  %i.ku = mul nsw i32 %i.kl, 24
  %i.kv = sext i32 %i.ku to i64                   ; 2 uses
  %i.kw = getelementptr [4 x i8], ptr %i.at, i64 %i.kv ; 3 uses
  %.val6144103 = load <8 x float>, ptr %i.kw, align 32, !tbaa !29
  %i.kx = shufflevector <8 x float> %.val6144103, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kw, i64 32
  %.val6154104 = load <8 x float>, ptr %i.ky, align 32, !tbaa !29
  %i.kz = shufflevector <8 x float> %.val6154104, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.la = getelementptr i8, ptr %i.kw, i64 64
  %.val6164105 = load <8 x float>, ptr %i.la, align 32, !tbaa !29
  %i.lb = shufflevector <8 x float> %.val6164105, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
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
  %i.ls = fcmp olt <16 x float> %i.lm, %i.ap      ; 2 uses
  %i.lt = bitcast <16 x i1> %i.ls to i16          ; 2 uses
  %i.lu = fcmp olt <16 x float> %i.lr, %i.ap      ; 2 uses
  %i.lv = bitcast <16 x i1> %i.lu to i16          ; 2 uses
  %i.lw = shl nsw i32 %i.kl, 1                    ; 3 uses
  %i.lx = icmp eq i32 %i.lw, %i.ca
  br i1 %i.lx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit531
  %i.ly = and i16 %i.lt, %i.p
  %i.lz = and i16 %i.lv, %i.q
  %i.ma = bitcast i16 %i.ly to <16 x i1>
  %i.mb = bitcast i16 %i.lz to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532

bb.g:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit531
  %i.mc = or disjoint i32 %i.lw, 1
  %i.md = icmp eq i32 %i.mc, %i.ca
  br i1 %i.md, label %bb.h, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532

bb.h:                                             ; preds = %bb.g
  %i.me = and i16 %i.lt, %i.r
  %i.mf = and i16 %i.lv, %i.s
  %i.mg = bitcast i16 %i.me to <16 x i1>
  %i.mh = bitcast i16 %i.mf to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532: ; preds = %bb.f, %bb.g, %bb.h
  %.sroa.03445.0 = phi <16 x i1> [ %i.ma, %bb.f ], [ %i.mg, %bb.h ], [ %i.ls, %bb.g ] ; 4 uses
  %.sroa.11.0 = phi <16 x i1> [ %i.mb, %bb.f ], [ %i.mh, %bb.h ], [ %i.lu, %bb.g ] ; 3 uses
  %i.mi = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.lm, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.mj = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.lr, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.mk = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.mi, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.ml = fmul <16 x float> %i.mi, %i.mk
  %i.mm = fmul <16 x float> %i.mk, splat (float -5.000000e-01)
  %i.mn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ml, <16 x float> %i.mk, <16 x float> splat (float -3.000000e+00))
  %i.mo = fmul <16 x float> %i.mm, %i.mn
  %i.mp = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.mj, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.mq = fmul <16 x float> %i.mj, %i.mp
  %i.mr = fmul <16 x float> %i.mp, splat (float -5.000000e-01)
  %i.ms = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mq, <16 x float> %i.mp, <16 x float> splat (float -3.000000e+00))
  %i.mt = fmul <16 x float> %i.mr, %i.ms
  %i.mu = sext i32 %i.kt to i64
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.mu
  %.val6174106 = load <8 x float>, ptr %i.mv, align 32, !tbaa !29
  %i.mw = shufflevector <8 x float> %.val6174106, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.mx = fmul <16 x float> %.sroa.03284.0, %i.mw ; 2 uses
  %i.my = fmul <16 x float> %.sroa.73288.0, %i.mw ; 2 uses
  %i.mz = select <16 x i1> %.sroa.03445.0, <16 x float> %i.mo, <16 x float> zeroinitializer ; 3 uses
  %i.na = select <16 x i1> %.sroa.11.0, <16 x float> %i.mt, <16 x float> zeroinitializer ; 3 uses
  %i.nb = fmul <16 x float> %i.mz, %i.mz          ; 4 uses
  %i.nc = fmul <16 x float> %i.na, %i.na
  %i.nd = select <16 x i1> %i.kr, <16 x float> %i.mz, <16 x float> zeroinitializer ; 2 uses
  %i.ne = select <16 x i1> %.not3933, <16 x float> zeroinitializer, <16 x float> %i.na ; 2 uses
  %i.nf = select <16 x i1> %.sroa.03445.0, <16 x float> %i.mi, <16 x float> zeroinitializer
  %i.ng = fmul <16 x float> %i.x, %i.nf           ; 7 uses
  %i.nh = select <16 x i1> %.sroa.11.0, <16 x float> %i.mj, <16 x float> zeroinitializer
  %i.ni = fmul <16 x float> %i.x, %i.nh           ; 7 uses
  %i.nj = fmul <16 x float> %i.ng, %i.ng          ; 15 uses
  %i.nk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nj, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.nl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nj, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.nm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nk, <16 x float> %i.nj, <16 x float> splat (float 1.000000e+00))
  %i.nn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nl, <16 x float> %i.ng, <16 x float> %i.nm) ; 2 uses
  %i.no = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.nn, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.np = fneg <16 x float> %i.no
  %i.nq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.np, <16 x float> %i.nn, <16 x float> splat (float 2.000000e+00))
  %i.nr = fmul <16 x float> %i.no, %i.nq
  %i.ns = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nj, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.nt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nj, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.nu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ns, <16 x float> %i.nj, <16 x float> splat (float f0xBC9DED90))
  %i.nv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nt, <16 x float> %i.nj, <16 x float> splat (float f0x3D8EAF3B))
  %i.nw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nu, <16 x float> %i.nj, <16 x float> splat (float f0xBF409397))
  %i.nx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nv, <16 x float> %i.ng, <16 x float> %i.nw)
  %i.ny = fmul <16 x float> %i.nx, %i.nr
  %i.nz = fmul <16 x float> %i.v, %i.ny
  %i.oa = fmul <16 x float> %i.ni, %i.ni          ; 15 uses
  %i.ob = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oa, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.oc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oa, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.od = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ob, <16 x float> %i.oa, <16 x float> splat (float 1.000000e+00))
  %i.oe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oc, <16 x float> %i.ni, <16 x float> %i.od) ; 2 uses
  %i.of = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.oe, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.og = fneg <16 x float> %i.of
  %i.oh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.og, <16 x float> %i.oe, <16 x float> splat (float 2.000000e+00))
  %i.oi = fmul <16 x float> %i.of, %i.oh
  %i.oj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oa, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.ok = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oa, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.ol = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oj, <16 x float> %i.oa, <16 x float> splat (float f0xBC9DED90))
  %i.om = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ok, <16 x float> %i.oa, <16 x float> splat (float f0x3D8EAF3B))
  %i.on = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ol, <16 x float> %i.oa, <16 x float> splat (float f0xBF409397))
  %i.oo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.om, <16 x float> %i.ni, <16 x float> %i.on)
  %i.op = fmul <16 x float> %i.oo, %i.oi
  %i.oq = fmul <16 x float> %i.v, %i.op
  %i.or = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nz, <16 x float> %i.ng, <16 x float> %i.nd)
  %i.os = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oq, <16 x float> %i.ni, <16 x float> %i.ne)
  %i.ot = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nj, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.ou = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nj, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.ov = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ot, <16 x float> %i.ng, <16 x float> %i.ou) ; 2 uses
  %i.ow = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.ov, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.ox = fneg <16 x float> %i.ow
  %i.oy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ox, <16 x float> %i.ov, <16 x float> splat (float 2.000000e+00))
  %i.oz = fmul <16 x float> %i.ow, %i.oy
  %i.pa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nj, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.pb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nj, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.pc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pa, <16 x float> %i.nj, <16 x float> splat (float f0x3D1E57D6))
  %i.pd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pb, <16 x float> %i.nj, <16 x float> splat (float f0x3DE71E23))
  %i.pe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pc, <16 x float> %i.nj, <16 x float> splat (float f0x3F906EC3))
  %i.pf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pd, <16 x float> %i.ng, <16 x float> %i.pe)
  %i.pg = fmul <16 x float> %i.pf, %i.oz
  %i.ph = fmul <16 x float> %i.v, %i.pg
  %i.pi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oa, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.pj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oa, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.pk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pi, <16 x float> %i.ni, <16 x float> %i.pj) ; 2 uses
  %i.pl = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.pk, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.pm = fneg <16 x float> %i.pl
  %i.pn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pm, <16 x float> %i.pk, <16 x float> splat (float 2.000000e+00))
  %i.po = fmul <16 x float> %i.pl, %i.pn
  %i.pp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oa, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.pq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oa, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.pr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pp, <16 x float> %i.oa, <16 x float> splat (float f0x3D1E57D6))
  %i.ps = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pq, <16 x float> %i.oa, <16 x float> splat (float f0x3DE71E23))
  %i.pt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pr, <16 x float> %i.oa, <16 x float> splat (float f0x3F906EC3))
  %i.pu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ps, <16 x float> %i.ni, <16 x float> %i.pt)
  %i.pv = fmul <16 x float> %i.pu, %i.po
  %i.pw = fmul <16 x float> %i.v, %i.pv
  %i.px = fmul <16 x float> %i.mx, %i.or
  %i.py = fmul <16 x float> %i.my, %i.os
  %i.pz = select <16 x i1> %i.kr, <16 x float> %i.ae, <16 x float> zeroinitializer
  %i.qa = fadd <16 x float> %i.pz, %i.ph
  %i.qb = select <16 x i1> %.not3933, <16 x float> zeroinitializer, <16 x float> %i.ae
  %i.qc = fadd <16 x float> %i.qb, %i.pw
  %i.qd = fsub <16 x float> %i.nd, %i.qa
  %i.qe = fmul <16 x float> %i.mx, %i.qd
  %i.qf = fsub <16 x float> %i.ne, %i.qc
  %i.qg = fmul <16 x float> %i.my, %i.qf
  %i.qh = select <16 x i1> %.sroa.03445.0, <16 x float> %i.qe, <16 x float> zeroinitializer ; 2 uses
  %i.qi = select <16 x i1> %.sroa.11.0, <16 x float> %i.qg, <16 x float> zeroinitializer ; 2 uses
  %i.qj = shl nsw i32 %i.kl, 4
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr [4 x i8], ptr %i.f, i64 %i.qk ; 2 uses
  %.val6184107 = load <8 x float>, ptr %i.ql, align 32, !tbaa !29
  %i.qm = shufflevector <8 x float> %.val6184107, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qn = getelementptr i8, ptr %i.ql, i64 32
  %.val6194108 = load <8 x float>, ptr %i.qn, align 32, !tbaa !29
  %i.qo = shufflevector <8 x float> %.val6194108, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qp = fmul <16 x float> %i.jp, %i.qm          ; 2 uses
  %i.qq = fmul <16 x float> %i.jt, %i.qo          ; 2 uses
  %i.qr = fmul <16 x float> %i.nb, %i.nb
  %i.qs = fmul <16 x float> %i.nb, %i.qr
  %i.qt = select <16 x i1> %i.kr, <16 x float> %i.qs, <16 x float> zeroinitializer ; 3 uses
  %i.qu = fmul <16 x float> %i.qt, %i.qt
  %i.qv = fmul <16 x float> %i.qt, %i.qp          ; 2 uses
  %i.qw = fmul <16 x float> %i.qu, %i.qq          ; 2 uses
  %i.qx = fsub <16 x float> %i.qw, %i.qv
  %i.qy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> %i.ah, <16 x float> %i.qv)
  %i.qz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qq, <16 x float> %i.ak, <16 x float> %i.qw)
  %i.ra = fmul <16 x float> %i.qy, splat (float f0xBE2AAAAB)
  %i.rb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qz, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.ra)
  %i.rc = select <16 x i1> %.sroa.03445.0, <16 x i1> %i.kr, <16 x i1> zeroinitializer
  %i.rd = select <16 x i1> %i.rc, <16 x float> %i.rb, <16 x float> zeroinitializer ; 2 uses
  %i.re = load ptr, ptr %i.bc, align 8, !tbaa !83
  %i.rf = load i32, ptr %i.bo, align 8, !tbaa !99
  %i.rg = sext i32 %i.lw to i64
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.re, i64 %i.rg
  %i.ri = load i32, ptr %i.bp, align 4, !tbaa !100
  %i.rj = load i32, ptr %i.bm, align 8, !tbaa !93
  %i.rk = load <2 x i32>, ptr %i.rh, align 4, !tbaa !84 ; 2 uses
  %i.rl = insertelement <2 x i32> poison, i32 %i.rf, i64 0
  %i.rm = shufflevector <2 x i32> %i.rk, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.rn = shufflevector <2 x i32> %i.rk, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ro = shufflevector <2 x i32> %i.rl, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.rp = ashr <4 x i32> %i.rn, %i.ro
end_hunk_0
begin_hunk_1_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader3718.preheader
  %i.aeu = load <8 x float>, ptr %i.aes, align 32, !tbaa !29
  %i.aev = fadd <8 x float> %i.aeo, %i.aeu
  store <8 x float> %i.aev, ptr %i.aes, align 32, !tbaa !29
  %i.aew = load <8 x float>, ptr %i.aet, align 32, !tbaa !29
  %i.aex = fadd <8 x float> %i.aew, %i.aep
  store <8 x float> %i.aex, ptr %i.aet, align 32, !tbaa !29
  %i.aey = extractelement <4 x i32> %i.aej, i64 1
  %i.aez = sext i32 %i.aey to i64                 ; 6 uses
  %i.afa = getelementptr inbounds [4 x i8], ptr %i.ael, i64 %i.aez
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 32 ; 2 uses
  %i.afc = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %i.aez
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 32 ; 2 uses
  %i.afe = load <8 x float>, ptr %i.afb, align 32, !tbaa !29
  %i.aff = fadd <8 x float> %i.aeo, %i.afe
  store <8 x float> %i.aff, ptr %i.afb, align 32, !tbaa !29
  %i.afg = load <8 x float>, ptr %i.afd, align 32, !tbaa !29
  %i.afh = fadd <8 x float> %i.afg, %i.aep
  store <8 x float> %i.afh, ptr %i.afd, align 32, !tbaa !29
  %i.afi = extractelement <4 x i32> %i.aej, i64 2
  %i.afj = sext i32 %i.afi to i64                 ; 6 uses
  %i.afk = getelementptr inbounds [4 x i8], ptr %i.ael, i64 %i.afj
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 64 ; 2 uses
  %i.afm = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %i.afj
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 64 ; 2 uses
  %i.afo = load <8 x float>, ptr %i.afl, align 32, !tbaa !29
  %i.afp = fadd <8 x float> %i.aeo, %i.afo
  store <8 x float> %i.afp, ptr %i.afl, align 32, !tbaa !29
  %i.afq = load <8 x float>, ptr %i.afn, align 32, !tbaa !29
  %i.afr = fadd <8 x float> %i.afq, %i.aep
  store <8 x float> %i.afr, ptr %i.afn, align 32, !tbaa !29
  %i.afs = extractelement <4 x i32> %i.aej, i64 3
  %i.aft = sext i32 %i.afs to i64                 ; 6 uses
  %i.afu = getelementptr inbounds [4 x i8], ptr %i.ael, i64 %i.aft
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 96 ; 2 uses
  %i.afw = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %i.aft
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 96 ; 2 uses
  %i.afy = load <8 x float>, ptr %i.afv, align 32, !tbaa !29
  %i.afz = fadd <8 x float> %i.aeo, %i.afy
  store <8 x float> %i.afz, ptr %i.afv, align 32, !tbaa !29
  %i.aga = load <8 x float>, ptr %i.afx, align 32, !tbaa !29
  %i.agb = fadd <8 x float> %i.aga, %i.aep
  store <8 x float> %i.agb, ptr %i.afx, align 32, !tbaa !29
  %i.agc = load ptr, ptr %i.bi, align 8, !tbaa !89 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 16
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !90 ; 4 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agc, i64 24
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !90 ; 4 uses
  %i.agh = shufflevector <16 x float> %i.acw, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.agi = shufflevector <16 x float> %i.acw, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.agj = getelementptr inbounds [4 x i8], ptr %i.age, i64 %i.aer ; 2 uses
  %i.agk = getelementptr inbounds [4 x i8], ptr %i.agg, i64 %i.aer ; 2 uses
  %i.agl = load <8 x float>, ptr %i.agj, align 32, !tbaa !29
  %i.agm = fadd <8 x float> %i.agh, %i.agl
  store <8 x float> %i.agm, ptr %i.agj, align 32, !tbaa !29
  %i.agn = load <8 x float>, ptr %i.agk, align 32, !tbaa !29
  %i.ago = fadd <8 x float> %i.agn, %i.agi
  store <8 x float> %i.ago, ptr %i.agk, align 32, !tbaa !29
  %i.agp = getelementptr inbounds [4 x i8], ptr %i.age, i64 %i.aez
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 32 ; 2 uses
  %i.agr = getelementptr inbounds [4 x i8], ptr %i.agg, i64 %i.aez
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 32 ; 2 uses
  %i.agt = load <8 x float>, ptr %i.agq, align 32, !tbaa !29
  %i.agu = fadd <8 x float> %i.agh, %i.agt
  store <8 x float> %i.agu, ptr %i.agq, align 32, !tbaa !29
  %i.agv = load <8 x float>, ptr %i.ags, align 32, !tbaa !29
  %i.agw = fadd <8 x float> %i.agv, %i.agi
  store <8 x float> %i.agw, ptr %i.ags, align 32, !tbaa !29
  %i.agx = getelementptr inbounds [4 x i8], ptr %i.age, i64 %i.afj
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 64 ; 2 uses
  %i.agz = getelementptr inbounds [4 x i8], ptr %i.agg, i64 %i.afj
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 64 ; 2 uses
  %i.ahb = load <8 x float>, ptr %i.agy, align 32, !tbaa !29
  %i.ahc = fadd <8 x float> %i.agh, %i.ahb
  store <8 x float> %i.ahc, ptr %i.agy, align 32, !tbaa !29
  %i.ahd = load <8 x float>, ptr %i.aha, align 32, !tbaa !29
  %i.ahe = fadd <8 x float> %i.ahd, %i.agi
  store <8 x float> %i.ahe, ptr %i.aha, align 32, !tbaa !29
  %i.ahf = getelementptr inbounds [4 x i8], ptr %i.age, i64 %i.aft
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 96 ; 2 uses
  %i.ahh = getelementptr inbounds [4 x i8], ptr %i.agg, i64 %i.aft
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 96 ; 2 uses
  %i.ahj = load <8 x float>, ptr %i.ahg, align 32, !tbaa !29
  %i.ahk = fadd <8 x float> %i.agh, %i.ahj
  store <8 x float> %i.ahk, ptr %i.ahg, align 32, !tbaa !29
  %i.ahl = load <8 x float>, ptr %i.ahi, align 32, !tbaa !29
  %i.ahm = fadd <8 x float> %i.ahl, %i.agi
  store <8 x float> %i.ahm, ptr %i.ahi, align 32, !tbaa !29
  %i.ahn = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !90 ; 4 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !90 ; 4 uses
  %i.ahr = shufflevector <16 x float> %i.adp, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ahs = shufflevector <16 x float> %i.adp, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aht = getelementptr inbounds [4 x i8], ptr %i.aho, i64 %i.aer ; 2 uses
  %i.ahu = getelementptr inbounds [4 x i8], ptr %i.ahq, i64 %i.aer ; 2 uses
  %i.ahv = load <8 x float>, ptr %i.aht, align 32, !tbaa !29
  %i.ahw = fadd <8 x float> %i.ahr, %i.ahv
  store <8 x float> %i.ahw, ptr %i.aht, align 32, !tbaa !29
  %i.ahx = load <8 x float>, ptr %i.ahu, align 32, !tbaa !29
  %i.ahy = fadd <8 x float> %i.ahx, %i.ahs
  store <8 x float> %i.ahy, ptr %i.ahu, align 32, !tbaa !29
  %i.ahz = getelementptr inbounds [4 x i8], ptr %i.aho, i64 %i.aez
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 32 ; 2 uses
  %i.aib = getelementptr inbounds [4 x i8], ptr %i.ahq, i64 %i.aez
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 32 ; 2 uses
  %i.aid = load <8 x float>, ptr %i.aia, align 32, !tbaa !29
  %i.aie = fadd <8 x float> %i.ahr, %i.aid
  store <8 x float> %i.aie, ptr %i.aia, align 32, !tbaa !29
  %i.aif = load <8 x float>, ptr %i.aic, align 32, !tbaa !29
  %i.aig = fadd <8 x float> %i.aif, %i.ahs
  store <8 x float> %i.aig, ptr %i.aic, align 32, !tbaa !29
  %i.aih = getelementptr inbounds [4 x i8], ptr %i.aho, i64 %i.afj
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 64 ; 2 uses
  %i.aij = getelementptr inbounds [4 x i8], ptr %i.ahq, i64 %i.afj
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 64 ; 2 uses
  %i.ail = load <8 x float>, ptr %i.aii, align 32, !tbaa !29
  %i.aim = fadd <8 x float> %i.ahr, %i.ail
  store <8 x float> %i.aim, ptr %i.aii, align 32, !tbaa !29
  %i.ain = load <8 x float>, ptr %i.aik, align 32, !tbaa !29
  %i.aio = fadd <8 x float> %i.ain, %i.ahs
  store <8 x float> %i.aio, ptr %i.aik, align 32, !tbaa !29
  %i.aip = getelementptr inbounds [4 x i8], ptr %i.aho, i64 %i.aft
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 96 ; 2 uses
  %i.air = getelementptr inbounds [4 x i8], ptr %i.ahq, i64 %i.aft
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 96 ; 2 uses
  %i.ait = load <8 x float>, ptr %i.aiq, align 32, !tbaa !29
  %i.aiu = fadd <8 x float> %i.ahr, %i.ait
  store <8 x float> %i.aiu, ptr %i.aiq, align 32, !tbaa !29
  %i.aiv = load <8 x float>, ptr %i.ais, align 32, !tbaa !29
  %i.aiw = fadd <8 x float> %i.aiv, %i.ahs
  store <8 x float> %i.aiw, ptr %i.ais, align 32, !tbaa !29
  %i.aix = fadd <16 x float> %i.adk, %i.acn
  %i.aiy = fmul <16 x float> %i.zt, %i.aix        ; 3 uses
  %i.aiz = fmul <16 x float> %i.zu, %i.aco        ; 3 uses
  %i.aja = fmul <16 x float> %i.yi, %i.aiy        ; 2 uses
  %i.ajb = fmul <16 x float> %i.yj, %i.aiz        ; 2 uses
  %i.ajc = fmul <16 x float> %i.yk, %i.aiy        ; 2 uses
  %i.ajd = fmul <16 x float> %i.yl, %i.aiz        ; 2 uses
  %i.aje = fmul <16 x float> %i.ym, %i.aiy        ; 2 uses
  %i.ajf = fmul <16 x float> %i.yn, %i.aiz        ; 2 uses
  %i.ajg = fadd <16 x float> %.sroa.03138.13824, %i.aja ; 2 uses
  %i.ajh = fadd <16 x float> %.sroa.163145.13825, %i.ajb ; 2 uses
  %i.aji = fadd <16 x float> %.sroa.03120.13822, %i.ajc ; 2 uses
  %i.ajj = fadd <16 x float> %.sroa.163127.13823, %i.ajd ; 2 uses
  %i.ajk = fadd <16 x float> %.sroa.03103.13820, %i.aje ; 2 uses
  %i.ajl = fadd <16 x float> %.sroa.16.13821, %i.ajf ; 2 uses
  %i.ajm = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.yb ; 4 uses
  %i.ajn = fadd <16 x float> %i.ajb, %i.aja       ; 2 uses
  %i.ajo = fadd <16 x float> %i.ajd, %i.ajc       ; 2 uses
  %i.ajp = fadd <16 x float> %i.ajf, %i.aje       ; 2 uses
  %i.ajq = load <8 x float>, ptr %i.ajm, align 32, !tbaa !29
  %i.ajr = shufflevector <16 x float> %i.ajn, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ajs = shufflevector <16 x float> %i.ajn, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ajt = fadd <8 x float> %i.ajr, %i.ajs
  %i.aju = fsub <8 x float> %i.ajq, %i.ajt
  store <8 x float> %i.aju, ptr %i.ajm, align 32, !tbaa !29
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajm, i64 32 ; 2 uses
  %i.ajw = load <8 x float>, ptr %i.ajv, align 32, !tbaa !29
  %i.ajx = shufflevector <16 x float> %i.ajo, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ajy = shufflevector <16 x float> %i.ajo, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ajz = fadd <8 x float> %i.ajx, %i.ajy
  %i.aka = fsub <8 x float> %i.ajw, %i.ajz
  store <8 x float> %i.aka, ptr %i.ajv, align 32, !tbaa !29
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajm, i64 64 ; 2 uses
  %i.akc = load <8 x float>, ptr %i.akb, align 32, !tbaa !29
  %i.akd = shufflevector <16 x float> %i.ajp, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ake = shufflevector <16 x float> %i.ajp, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akf = fadd <8 x float> %i.akd, %i.ake
  %i.akg = fsub <8 x float> %i.akc, %i.akf
  store <8 x float> %i.akg, ptr %i.akb, align 32, !tbaa !29
  %indvars.iv.next3887 = add nsw i64 %indvars.iv3886, 1 ; 2 uses
  %exitcond3890.not = icmp eq i64 %indvars.iv.next3887, %wide.trip.count3889
  br i1 %exitcond3890.not, label %.loopexit, label %bb.i, !llvm.loop !18

bb.j:                                             ; preds = %bb.d
  br i1 %i.da, label %.preheader3713, label %.preheader3715

.preheader3715:                                   ; preds = %bb.j
  br i1 %i.ke, label %.lr.ph.a, label %.critedge5

.lr.ph.a:                                         ; preds = %.preheader3715
  %i.akh = sext i32 %i.bv to i64
  %wide.trip.count = sext i32 %i.bx to i64
  br label %bb.p

.preheader3713:                                   ; preds = %bb.j
  br i1 %i.ke, label %.lr.ph3766, label %.critedge3

.lr.ph3766:                                       ; preds = %.preheader3713
  %i.aki = sext i32 %i.bv to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph3766, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit
  %indvars.iv3869 = phi i64 [ %i.aki, %.lr.ph3766 ], [ %indvars.iv.next3870, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 4 uses
  %.sroa.163145.23764 = phi <16 x float> [ zeroinitializer, %.lr.ph3766 ], [ %i.ayz, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03138.23763 = phi <16 x float> [ zeroinitializer, %.lr.ph3766 ], [ %i.ayy, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163127.23762 = phi <16 x float> [ zeroinitializer, %.lr.ph3766 ], [ %i.azb, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03120.23761 = phi <16 x float> [ zeroinitializer, %.lr.ph3766 ], [ %i.aza, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.23760 = phi <16 x float> [ zeroinitializer, %.lr.ph3766 ], [ %i.azd, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03103.23759 = phi <16 x float> [ zeroinitializer, %.lr.ph3766 ], [ %i.azc, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.akj = load ptr, ptr %i.au, align 8, !tbaa !62
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %i.akj, i64 %indvars.iv3869
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 4
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !84
  %.not522 = icmp eq i32 %i.akm, -1
  br i1 %.not522, label %.critedge3.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527: ; preds = %bb.k
  %i.akn = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv3869 ; 2 uses
  %i.ako = load i32, ptr %i.akn, align 4, !tbaa !92 ; 4 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akn, i64 4
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !98
  %i.akr = insertelement <16 x i32> poison, i32 %i.akq, i64 0
  %i.aks = shufflevector <16 x i32> %i.akr, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.akt = and <16 x i32> %.sroa.03909.0.copyload, %i.aks
  %i.aku = icmp ne <16 x i32> %i.akt, zeroinitializer ; 4 uses
  %i.akv = and <16 x i32> %.sroa.6.0.copyload, %i.aks
  %i.akw = icmp ne <16 x i32> %i.akv, zeroinitializer ; 4 uses
  %i.akx = shl nsw i32 %i.ako, 3
  %i.aky = mul nsw i32 %i.ako, 24
  %i.akz = sext i32 %i.aky to i64                 ; 2 uses
  %i.ala = getelementptr [4 x i8], ptr %i.at, i64 %i.akz ; 3 uses
  %.val6264091 = load <8 x float>, ptr %i.ala, align 32, !tbaa !29
  %i.alb = shufflevector <8 x float> %.val6264091, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.alc = getelementptr i8, ptr %i.ala, i64 32
  %.val6274092 = load <8 x float>, ptr %i.alc, align 32, !tbaa !29
  %i.ald = shufflevector <8 x float> %.val6274092, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ale = getelementptr i8, ptr %i.ala, i64 64
  %.val6284093 = load <8 x float>, ptr %i.ale, align 32, !tbaa !29
  %i.alf = shufflevector <8 x float> %.val6284093, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.alg = fsub <16 x float> %i.hp, %i.alb        ; 3 uses
  %i.alh = fsub <16 x float> %i.hv, %i.alb        ; 3 uses
  %i.ali = fsub <16 x float> %i.ic, %i.ald        ; 3 uses
  %i.alj = fsub <16 x float> %i.ii, %i.ald        ; 3 uses
  %i.alk = fsub <16 x float> %i.ip, %i.alf        ; 3 uses
  %i.all = fsub <16 x float> %i.iv, %i.alf        ; 3 uses
  %i.alm = fmul <16 x float> %i.alg, %i.alg
  %i.aln = fmul <16 x float> %i.ali, %i.ali
  %i.alo = fadd <16 x float> %i.alm, %i.aln
  %i.alp = fmul <16 x float> %i.alk, %i.alk
  %i.alq = fadd <16 x float> %i.alo, %i.alp       ; 2 uses
  %i.alr = fmul <16 x float> %i.alh, %i.alh
  %i.als = fmul <16 x float> %i.alj, %i.alj
  %i.alt = fadd <16 x float> %i.alr, %i.als
  %i.alu = fmul <16 x float> %i.all, %i.all
  %i.alv = fadd <16 x float> %i.alt, %i.alu       ; 2 uses
  %i.alw = fcmp olt <16 x float> %i.alq, %i.ap    ; 2 uses
  %i.alx = bitcast <16 x i1> %i.alw to i16        ; 2 uses
  %i.aly = fcmp olt <16 x float> %i.alv, %i.ap    ; 2 uses
  %i.alz = bitcast <16 x i1> %i.aly to i16        ; 2 uses
  %i.ama = shl nsw i32 %i.ako, 1                  ; 3 uses
  %i.amb = icmp eq i32 %i.ama, %i.ca
  br i1 %i.amb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527
  %i.amc = and i16 %i.alx, %i.p
  %i.amd = and i16 %i.alz, %i.q
  %i.ame = bitcast i16 %i.amc to <16 x i1>
  %i.amf = bitcast i16 %i.amd to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.m:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527
  %i.amg = or disjoint i32 %i.ama, 1
  %i.amh = icmp eq i32 %i.amg, %i.ca
  br i1 %i.amh, label %bb.n, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.n:                                             ; preds = %bb.m
  %i.ami = and i16 %i.alx, %i.r
  %i.amj = and i16 %i.alz, %i.s
  %i.amk = bitcast i16 %i.ami to <16 x i1>
  %i.aml = bitcast i16 %i.amj to <16 x i1>
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.03559.0 = phi <16 x i1> [ %i.ame, %bb.l ], [ %i.amk, %bb.n ], [ %i.alw, %bb.m ] ; 4 uses
  %.sroa.113570.0 = phi <16 x i1> [ %i.amf, %bb.l ], [ %i.aml, %bb.n ], [ %i.aly, %bb.m ] ; 4 uses
  %i.amm = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.alq, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.amn = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.alv, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.amo = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.amm, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.amp = fmul <16 x float> %i.amm, %i.amo
  %i.amq = fmul <16 x float> %i.amo, splat (float -5.000000e-01)
  %i.amr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.amp, <16 x float> %i.amo, <16 x float> splat (float -3.000000e+00))
  %i.ams = fmul <16 x float> %i.amq, %i.amr
  %i.amt = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.amn, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.amu = fmul <16 x float> %i.amn, %i.amt
  %i.amv = fmul <16 x float> %i.amt, splat (float -5.000000e-01)
  %i.amw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.amu, <16 x float> %i.amt, <16 x float> splat (float -3.000000e+00))
  %i.amx = fmul <16 x float> %i.amv, %i.amw
  %i.amy = sext i32 %i.akx to i64
  %i.amz = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.amy
  %.val6294094 = load <8 x float>, ptr %i.amz, align 32, !tbaa !29
  %i.ana = shufflevector <8 x float> %.val6294094, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.anb = fmul <16 x float> %.sroa.03284.0, %i.ana ; 2 uses
  %i.anc = fmul <16 x float> %.sroa.73288.0, %i.ana ; 2 uses
  %i.and = select <16 x i1> %.sroa.03559.0, <16 x float> %i.ams, <16 x float> zeroinitializer ; 3 uses
  %i.ane = select <16 x i1> %.sroa.113570.0, <16 x float> %i.amx, <16 x float> zeroinitializer ; 3 uses
  %i.anf = fmul <16 x float> %i.and, %i.and       ; 4 uses
  %i.ang = fmul <16 x float> %i.ane, %i.ane       ; 4 uses
  %i.anh = select <16 x i1> %i.aku, <16 x float> %i.and, <16 x float> zeroinitializer ; 2 uses
  %i.ani = select <16 x i1> %i.akw, <16 x float> %i.ane, <16 x float> zeroinitializer ; 2 uses
  %i.anj = select <16 x i1> %.sroa.03559.0, <16 x float> %i.amm, <16 x float> zeroinitializer
  %i.ank = fmul <16 x float> %i.x, %i.anj         ; 7 uses
  %i.anl = select <16 x i1> %.sroa.113570.0, <16 x float> %i.amn, <16 x float> zeroinitializer
  %i.anm = fmul <16 x float> %i.x, %i.anl         ; 7 uses
  %i.ann = fmul <16 x float> %i.ank, %i.ank       ; 15 uses
  %i.ano = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ann, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.anp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ann, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.anq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ano, <16 x float> %i.ann, <16 x float> splat (float 1.000000e+00))
  %i.anr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anp, <16 x float> %i.ank, <16 x float> %i.anq) ; 2 uses
  %i.ans = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.anr, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.ant = fneg <16 x float> %i.ans
  %i.anu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ant, <16 x float> %i.anr, <16 x float> splat (float 2.000000e+00))
  %i.anv = fmul <16 x float> %i.ans, %i.anu
  %i.anw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ann, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.anx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ann, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.any = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anw, <16 x float> %i.ann, <16 x float> splat (float f0xBC9DED90))
  %i.anz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anx, <16 x float> %i.ann, <16 x float> splat (float f0x3D8EAF3B))
  %i.aoa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.any, <16 x float> %i.ann, <16 x float> splat (float f0xBF409397))
  %i.aob = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anz, <16 x float> %i.ank, <16 x float> %i.aoa)
  %i.aoc = fmul <16 x float> %i.aob, %i.anv
  %i.aod = fmul <16 x float> %i.v, %i.aoc
  %i.aoe = fmul <16 x float> %i.anm, %i.anm       ; 15 uses
  %i.aof = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoe, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.aog = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoe, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.aoh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aof, <16 x float> %i.aoe, <16 x float> splat (float 1.000000e+00))
  %i.aoi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aog, <16 x float> %i.anm, <16 x float> %i.aoh) ; 2 uses
  %i.aoj = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.aoi, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.aok = fneg <16 x float> %i.aoj
  %i.aol = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aok, <16 x float> %i.aoi, <16 x float> splat (float 2.000000e+00))
  %i.aom = fmul <16 x float> %i.aoj, %i.aol
  %i.aon = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoe, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.aoo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoe, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.aop = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aon, <16 x float> %i.aoe, <16 x float> splat (float f0xBC9DED90))
  %i.aoq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoo, <16 x float> %i.aoe, <16 x float> splat (float f0x3D8EAF3B))
  %i.aor = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aop, <16 x float> %i.aoe, <16 x float> splat (float f0xBF409397))
  %i.aos = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoq, <16 x float> %i.anm, <16 x float> %i.aor)
  %i.aot = fmul <16 x float> %i.aos, %i.aom
  %i.aou = fmul <16 x float> %i.v, %i.aot
  %i.aov = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aod, <16 x float> %i.ank, <16 x float> %i.anh)
  %i.aow = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aou, <16 x float> %i.anm, <16 x float> %i.ani)
  %i.aox = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ann, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.aoy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ann, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.aoz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aox, <16 x float> %i.ank, <16 x float> %i.aoy) ; 2 uses
  %i.apa = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.aoz, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.apb = fneg <16 x float> %i.apa
  %i.apc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apb, <16 x float> %i.aoz, <16 x float> splat (float 2.000000e+00))
  %i.apd = fmul <16 x float> %i.apa, %i.apc
  %i.ape = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ann, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.apf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ann, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.apg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ape, <16 x float> %i.ann, <16 x float> splat (float f0x3D1E57D6))
  %i.aph = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apf, <16 x float> %i.ann, <16 x float> splat (float f0x3DE71E23))
  %i.api = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apg, <16 x float> %i.ann, <16 x float> splat (float f0x3F906EC3))
  %i.apj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aph, <16 x float> %i.ank, <16 x float> %i.api)
  %i.apk = fmul <16 x float> %i.apj, %i.apd
  %i.apl = fmul <16 x float> %i.v, %i.apk
  %i.apm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoe, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.apn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoe, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.apo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apm, <16 x float> %i.anm, <16 x float> %i.apn) ; 2 uses
  %i.app = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.apo, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.apq = fneg <16 x float> %i.app
  %i.apr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apq, <16 x float> %i.apo, <16 x float> splat (float 2.000000e+00))
  %i.aps = fmul <16 x float> %i.app, %i.apr
  %i.apt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoe, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.apu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoe, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.apv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apt, <16 x float> %i.aoe, <16 x float> splat (float f0x3D1E57D6))
  %i.apw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apu, <16 x float> %i.aoe, <16 x float> splat (float f0x3DE71E23))
  %i.apx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apv, <16 x float> %i.aoe, <16 x float> splat (float f0x3F906EC3))
  %i.apy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apw, <16 x float> %i.anm, <16 x float> %i.apx)
  %i.apz = fmul <16 x float> %i.apy, %i.aps
  %i.aqa = fmul <16 x float> %i.v, %i.apz
  %i.aqb = fmul <16 x float> %i.anb, %i.aov
  %i.aqc = fmul <16 x float> %i.anc, %i.aow
  %i.aqd = select <16 x i1> %i.aku, <16 x float> %i.ae, <16 x float> zeroinitializer
  %i.aqe = fadd <16 x float> %i.aqd, %i.apl
  %i.aqf = select <16 x i1> %i.akw, <16 x float> %i.ae, <16 x float> zeroinitializer
  %i.aqg = fadd <16 x float> %i.aqf, %i.aqa
  %i.aqh = fsub <16 x float> %i.anh, %i.aqe
  %i.aqi = fmul <16 x float> %i.anb, %i.aqh
  %i.aqj = fsub <16 x float> %i.ani, %i.aqg
  %i.aqk = fmul <16 x float> %i.anc, %i.aqj
  %i.aql = select <16 x i1> %.sroa.03559.0, <16 x float> %i.aqi, <16 x float> zeroinitializer ; 2 uses
  %i.aqm = select <16 x i1> %.sroa.113570.0, <16 x float> %i.aqk, <16 x float> zeroinitializer ; 2 uses
  %i.aqn = shl nsw i32 %i.ako, 4
  %i.aqo = sext i32 %i.aqn to i64
  %i.aqp = getelementptr [4 x i8], ptr %i.f, i64 %i.aqo ; 2 uses
  %.val6304095 = load <8 x float>, ptr %i.aqp, align 32, !tbaa !29
  %i.aqq = shufflevector <8 x float> %.val6304095, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aqr = getelementptr i8, ptr %i.aqp, i64 32
  %.val6314096 = load <8 x float>, ptr %i.aqr, align 32, !tbaa !29
  %i.aqs = shufflevector <8 x float> %.val6314096, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aqt = fmul <16 x float> %i.jp, %i.aqq        ; 2 uses
  %i.aqu = fmul <16 x float> %i.jy, %i.aqq        ; 2 uses
  %i.aqv = fmul <16 x float> %i.jt, %i.aqs        ; 2 uses
  %i.aqw = fmul <16 x float> %i.kd, %i.aqs        ; 2 uses
  %i.aqx = fmul <16 x float> %i.anf, %i.anf
  %i.aqy = fmul <16 x float> %i.anf, %i.aqx
  %i.aqz = fmul <16 x float> %i.ang, %i.ang
  %i.ara = fmul <16 x float> %i.ang, %i.aqz
  %i.arb = select <16 x i1> %i.aku, <16 x float> %i.aqy, <16 x float> zeroinitializer ; 3 uses
  %i.arc = select <16 x i1> %i.akw, <16 x float> %i.ara, <16 x float> zeroinitializer ; 3 uses
  %i.ard = fmul <16 x float> %i.arb, %i.arb
  %i.are = fmul <16 x float> %i.arc, %i.arc
  %i.arf = fmul <16 x float> %i.arb, %i.aqt       ; 2 uses
  %i.arg = fmul <16 x float> %i.arc, %i.aqu       ; 2 uses
  %i.arh = fmul <16 x float> %i.ard, %i.aqv       ; 2 uses
  %i.ari = fmul <16 x float> %i.are, %i.aqw       ; 2 uses
  %i.arj = fsub <16 x float> %i.arh, %i.arf
  %i.ark = fsub <16 x float> %i.ari, %i.arg
  %i.arl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqt, <16 x float> %i.ah, <16 x float> %i.arf)
  %i.arm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqu, <16 x float> %i.ah, <16 x float> %i.arg)
  %i.arn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqv, <16 x float> %i.ak, <16 x float> %i.arh)
  %i.aro = fmul <16 x float> %i.arl, splat (float f0xBE2AAAAB)
  %i.arp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arn, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.aro)
  %i.arq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqw, <16 x float> %i.ak, <16 x float> %i.ari)
  %i.arr = fmul <16 x float> %i.arm, splat (float f0xBE2AAAAB)
  %i.ars = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arq, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.arr)
  %i.art = select <16 x i1> %.sroa.03559.0, <16 x i1> %i.aku, <16 x i1> zeroinitializer
end_hunk_1
begin_hunk_2_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader3718.preheader
  %i.bgq = insertelement <2 x i32> poison, i32 %i.bgk, i64 0
  %i.bgr = shufflevector <2 x i32> %i.bgp, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bgs = shufflevector <2 x i32> %i.bgp, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bgt = shufflevector <2 x i32> %i.bgq, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.bgu = ashr <4 x i32> %i.bgs, %i.bgt
  %i.bgv = shufflevector <4 x i32> %i.bgu, <4 x i32> %i.bgr, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.bgw = insertelement <4 x i32> poison, i32 %i.bgn, i64 0
  %i.bgx = shufflevector <4 x i32> %i.bgw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bgy = and <4 x i32> %i.bgv, %i.bgx
  %i.bgz = insertelement <4 x i32> poison, i32 %i.bgo, i64 0
  %i.bha = shufflevector <4 x i32> %i.bgz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bhb = mul nsw <4 x i32> %i.bgy, %i.bha       ; 4 uses
  %i.bhc = load ptr, ptr %i.bi, align 8, !tbaa !89 ; 2 uses
  %i.bhd = load ptr, ptr %i.bhc, align 8, !tbaa !90 ; 4 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhc, i64 8
  %i.bhf = load ptr, ptr %i.bhe, align 8, !tbaa !90 ; 4 uses
  %i.bhg = shufflevector <16 x float> %i.bfa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bhh = shufflevector <16 x float> %i.bfa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bhi = extractelement <4 x i32> %i.bhb, i64 0
  %i.bhj = sext i32 %i.bhi to i64                 ; 8 uses
  %i.bhk = getelementptr inbounds [4 x i8], ptr %i.bhd, i64 %i.bhj ; 2 uses
  %i.bhl = getelementptr inbounds [4 x i8], ptr %i.bhf, i64 %i.bhj ; 2 uses
  %i.bhm = load <8 x float>, ptr %i.bhk, align 32, !tbaa !29
  %i.bhn = fadd <8 x float> %i.bhg, %i.bhm
  store <8 x float> %i.bhn, ptr %i.bhk, align 32, !tbaa !29
  %i.bho = load <8 x float>, ptr %i.bhl, align 32, !tbaa !29
  %i.bhp = fadd <8 x float> %i.bho, %i.bhh
  store <8 x float> %i.bhp, ptr %i.bhl, align 32, !tbaa !29
  %i.bhq = extractelement <4 x i32> %i.bhb, i64 1
  %i.bhr = sext i32 %i.bhq to i64                 ; 8 uses
  %i.bhs = getelementptr inbounds [4 x i8], ptr %i.bhd, i64 %i.bhr
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhs, i64 32 ; 2 uses
  %i.bhu = getelementptr inbounds [4 x i8], ptr %i.bhf, i64 %i.bhr
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhu, i64 32 ; 2 uses
  %i.bhw = load <8 x float>, ptr %i.bht, align 32, !tbaa !29
  %i.bhx = fadd <8 x float> %i.bhg, %i.bhw
  store <8 x float> %i.bhx, ptr %i.bht, align 32, !tbaa !29
  %i.bhy = load <8 x float>, ptr %i.bhv, align 32, !tbaa !29
  %i.bhz = fadd <8 x float> %i.bhy, %i.bhh
  store <8 x float> %i.bhz, ptr %i.bhv, align 32, !tbaa !29
  %i.bia = extractelement <4 x i32> %i.bhb, i64 2
  %i.bib = sext i32 %i.bia to i64                 ; 8 uses
  %i.bic = getelementptr inbounds [4 x i8], ptr %i.bhd, i64 %i.bib
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bic, i64 64 ; 2 uses
  %i.bie = getelementptr inbounds [4 x i8], ptr %i.bhf, i64 %i.bib
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bie, i64 64 ; 2 uses
  %i.big = load <8 x float>, ptr %i.bid, align 32, !tbaa !29
  %i.bih = fadd <8 x float> %i.bhg, %i.big
  store <8 x float> %i.bih, ptr %i.bid, align 32, !tbaa !29
  %i.bii = load <8 x float>, ptr %i.bif, align 32, !tbaa !29
  %i.bij = fadd <8 x float> %i.bii, %i.bhh
  store <8 x float> %i.bij, ptr %i.bif, align 32, !tbaa !29
  %i.bik = extractelement <4 x i32> %i.bhb, i64 3
  %i.bil = sext i32 %i.bik to i64                 ; 8 uses
  %i.bim = getelementptr inbounds [4 x i8], ptr %i.bhd, i64 %i.bil
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bim, i64 96 ; 2 uses
  %i.bio = getelementptr inbounds [4 x i8], ptr %i.bhf, i64 %i.bil
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bio, i64 96 ; 2 uses
  %i.biq = load <8 x float>, ptr %i.bin, align 32, !tbaa !29
  %i.bir = fadd <8 x float> %i.bhg, %i.biq
  store <8 x float> %i.bir, ptr %i.bin, align 32, !tbaa !29
  %i.bis = load <8 x float>, ptr %i.bip, align 32, !tbaa !29
  %i.bit = fadd <8 x float> %i.bis, %i.bhh
  store <8 x float> %i.bit, ptr %i.bip, align 32, !tbaa !29
  %i.biu = load ptr, ptr %i.bi, align 8, !tbaa !89 ; 2 uses
  %i.biv = getelementptr inbounds nuw i8, ptr %i.biu, i64 16
  %i.biw = load ptr, ptr %i.biv, align 8, !tbaa !90 ; 4 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %i.biu, i64 24
  %i.biy = load ptr, ptr %i.bix, align 8, !tbaa !90 ; 4 uses
  %i.biz = shufflevector <16 x float> %i.bfb, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bja = shufflevector <16 x float> %i.bfb, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bjb = getelementptr inbounds [4 x i8], ptr %i.biw, i64 %i.bhj ; 2 uses
  %i.bjc = getelementptr inbounds [4 x i8], ptr %i.biy, i64 %i.bhj ; 2 uses
  %i.bjd = load <8 x float>, ptr %i.bjb, align 32, !tbaa !29
  %i.bje = fadd <8 x float> %i.biz, %i.bjd
  store <8 x float> %i.bje, ptr %i.bjb, align 32, !tbaa !29
  %i.bjf = load <8 x float>, ptr %i.bjc, align 32, !tbaa !29
  %i.bjg = fadd <8 x float> %i.bjf, %i.bja
  store <8 x float> %i.bjg, ptr %i.bjc, align 32, !tbaa !29
  %i.bjh = getelementptr inbounds [4 x i8], ptr %i.biw, i64 %i.bhr
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjh, i64 32 ; 2 uses
  %i.bjj = getelementptr inbounds [4 x i8], ptr %i.biy, i64 %i.bhr
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 32 ; 2 uses
  %i.bjl = load <8 x float>, ptr %i.bji, align 32, !tbaa !29
  %i.bjm = fadd <8 x float> %i.biz, %i.bjl
  store <8 x float> %i.bjm, ptr %i.bji, align 32, !tbaa !29
  %i.bjn = load <8 x float>, ptr %i.bjk, align 32, !tbaa !29
  %i.bjo = fadd <8 x float> %i.bjn, %i.bja
  store <8 x float> %i.bjo, ptr %i.bjk, align 32, !tbaa !29
  %i.bjp = getelementptr inbounds [4 x i8], ptr %i.biw, i64 %i.bib
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjp, i64 64 ; 2 uses
  %i.bjr = getelementptr inbounds [4 x i8], ptr %i.biy, i64 %i.bib
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjr, i64 64 ; 2 uses
  %i.bjt = load <8 x float>, ptr %i.bjq, align 32, !tbaa !29
  %i.bju = fadd <8 x float> %i.biz, %i.bjt
  store <8 x float> %i.bju, ptr %i.bjq, align 32, !tbaa !29
  %i.bjv = load <8 x float>, ptr %i.bjs, align 32, !tbaa !29
  %i.bjw = fadd <8 x float> %i.bjv, %i.bja
  store <8 x float> %i.bjw, ptr %i.bjs, align 32, !tbaa !29
  %i.bjx = getelementptr inbounds [4 x i8], ptr %i.biw, i64 %i.bil
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjx, i64 96 ; 2 uses
  %i.bjz = getelementptr inbounds [4 x i8], ptr %i.biy, i64 %i.bil
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjz, i64 96 ; 2 uses
  %i.bkb = load <8 x float>, ptr %i.bjy, align 32, !tbaa !29
  %i.bkc = fadd <8 x float> %i.biz, %i.bkb
  store <8 x float> %i.bkc, ptr %i.bjy, align 32, !tbaa !29
  %i.bkd = load <8 x float>, ptr %i.bka, align 32, !tbaa !29
  %i.bke = fadd <8 x float> %i.bkd, %i.bja
  store <8 x float> %i.bke, ptr %i.bka, align 32, !tbaa !29
  %i.bkf = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.bkg = load ptr, ptr %i.bkf, align 8, !tbaa !90 ; 4 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkf, i64 8
  %i.bki = load ptr, ptr %i.bkh, align 8, !tbaa !90 ; 4 uses
  %i.bkj = shufflevector <16 x float> %i.bgg, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bkk = shufflevector <16 x float> %i.bgg, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bkl = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %i.bhj ; 2 uses
  %i.bkm = getelementptr inbounds [4 x i8], ptr %i.bki, i64 %i.bhj ; 2 uses
  %i.bkn = load <8 x float>, ptr %i.bkl, align 32, !tbaa !29
  %i.bko = fadd <8 x float> %i.bkj, %i.bkn
  store <8 x float> %i.bko, ptr %i.bkl, align 32, !tbaa !29
  %i.bkp = load <8 x float>, ptr %i.bkm, align 32, !tbaa !29
  %i.bkq = fadd <8 x float> %i.bkp, %i.bkk
  store <8 x float> %i.bkq, ptr %i.bkm, align 32, !tbaa !29
  %i.bkr = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %i.bhr
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkr, i64 32 ; 2 uses
  %i.bkt = getelementptr inbounds [4 x i8], ptr %i.bki, i64 %i.bhr
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkt, i64 32 ; 2 uses
  %i.bkv = load <8 x float>, ptr %i.bks, align 32, !tbaa !29
  %i.bkw = fadd <8 x float> %i.bkj, %i.bkv
  store <8 x float> %i.bkw, ptr %i.bks, align 32, !tbaa !29
  %i.bkx = load <8 x float>, ptr %i.bku, align 32, !tbaa !29
  %i.bky = fadd <8 x float> %i.bkx, %i.bkk
  store <8 x float> %i.bky, ptr %i.bku, align 32, !tbaa !29
  %i.bkz = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %i.bib
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkz, i64 64 ; 2 uses
  %i.blb = getelementptr inbounds [4 x i8], ptr %i.bki, i64 %i.bib
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 64 ; 2 uses
  %i.bld = load <8 x float>, ptr %i.bla, align 32, !tbaa !29
  %i.ble = fadd <8 x float> %i.bkj, %i.bld
  store <8 x float> %i.ble, ptr %i.bla, align 32, !tbaa !29
  %i.blf = load <8 x float>, ptr %i.blc, align 32, !tbaa !29
  %i.blg = fadd <8 x float> %i.blf, %i.bkk
  store <8 x float> %i.blg, ptr %i.blc, align 32, !tbaa !29
  %i.blh = getelementptr inbounds [4 x i8], ptr %i.bkg, i64 %i.bil
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blh, i64 96 ; 2 uses
  %i.blj = getelementptr inbounds [4 x i8], ptr %i.bki, i64 %i.bil
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blj, i64 96 ; 2 uses
  %i.bll = load <8 x float>, ptr %i.bli, align 32, !tbaa !29
  %i.blm = fadd <8 x float> %i.bkj, %i.bll
  store <8 x float> %i.blm, ptr %i.bli, align 32, !tbaa !29
  %i.bln = load <8 x float>, ptr %i.blk, align 32, !tbaa !29
  %i.blo = fadd <8 x float> %i.bln, %i.bkk
  store <8 x float> %i.blo, ptr %i.blk, align 32, !tbaa !29
  %i.blp = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blp, i64 16
  %i.blr = load ptr, ptr %i.blq, align 8, !tbaa !90 ; 4 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blp, i64 24
  %i.blt = load ptr, ptr %i.bls, align 8, !tbaa !90 ; 4 uses
  %i.blu = shufflevector <16 x float> %i.bgh, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.blv = shufflevector <16 x float> %i.bgh, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.blw = getelementptr inbounds [4 x i8], ptr %i.blr, i64 %i.bhj ; 2 uses
  %i.blx = getelementptr inbounds [4 x i8], ptr %i.blt, i64 %i.bhj ; 2 uses
  %i.bly = load <8 x float>, ptr %i.blw, align 32, !tbaa !29
  %i.blz = fadd <8 x float> %i.blu, %i.bly
  store <8 x float> %i.blz, ptr %i.blw, align 32, !tbaa !29
  %i.bma = load <8 x float>, ptr %i.blx, align 32, !tbaa !29
  %i.bmb = fadd <8 x float> %i.bma, %i.blv
  store <8 x float> %i.bmb, ptr %i.blx, align 32, !tbaa !29
  %i.bmc = getelementptr inbounds [4 x i8], ptr %i.blr, i64 %i.bhr
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bmc, i64 32 ; 2 uses
  %i.bme = getelementptr inbounds [4 x i8], ptr %i.blt, i64 %i.bhr
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bme, i64 32 ; 2 uses
  %i.bmg = load <8 x float>, ptr %i.bmd, align 32, !tbaa !29
  %i.bmh = fadd <8 x float> %i.blu, %i.bmg
  store <8 x float> %i.bmh, ptr %i.bmd, align 32, !tbaa !29
  %i.bmi = load <8 x float>, ptr %i.bmf, align 32, !tbaa !29
  %i.bmj = fadd <8 x float> %i.bmi, %i.blv
  store <8 x float> %i.bmj, ptr %i.bmf, align 32, !tbaa !29
  %i.bmk = getelementptr inbounds [4 x i8], ptr %i.blr, i64 %i.bib
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 64 ; 2 uses
  %i.bmm = getelementptr inbounds [4 x i8], ptr %i.blt, i64 %i.bib
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmm, i64 64 ; 2 uses
  %i.bmo = load <8 x float>, ptr %i.bml, align 32, !tbaa !29
  %i.bmp = fadd <8 x float> %i.blu, %i.bmo
  store <8 x float> %i.bmp, ptr %i.bml, align 32, !tbaa !29
  %i.bmq = load <8 x float>, ptr %i.bmn, align 32, !tbaa !29
  %i.bmr = fadd <8 x float> %i.bmq, %i.blv
  store <8 x float> %i.bmr, ptr %i.bmn, align 32, !tbaa !29
  %i.bms = getelementptr inbounds [4 x i8], ptr %i.blr, i64 %i.bil
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bms, i64 96 ; 2 uses
  %i.bmu = getelementptr inbounds [4 x i8], ptr %i.blt, i64 %i.bil
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmu, i64 96 ; 2 uses
  %i.bmw = load <8 x float>, ptr %i.bmt, align 32, !tbaa !29
  %i.bmx = fadd <8 x float> %i.blu, %i.bmw
  store <8 x float> %i.bmx, ptr %i.bmt, align 32, !tbaa !29
  %i.bmy = load <8 x float>, ptr %i.bmv, align 32, !tbaa !29
  %i.bmz = fadd <8 x float> %i.bmy, %i.blv
  store <8 x float> %i.bmz, ptr %i.bmv, align 32, !tbaa !29
  %i.bna = fadd <16 x float> %i.bfw, %i.bes
  %i.bnb = fmul <16 x float> %i.bby, %i.bna       ; 3 uses
  %i.bnc = fadd <16 x float> %i.bet, %i.bfx
  %i.bnd = fmul <16 x float> %i.bbz, %i.bnc       ; 3 uses
  %i.bne = fmul <16 x float> %i.ban, %i.bnb       ; 2 uses
  %i.bnf = fmul <16 x float> %i.bao, %i.bnd       ; 2 uses
  %i.bng = fmul <16 x float> %i.bap, %i.bnb       ; 2 uses
  %i.bnh = fmul <16 x float> %i.baq, %i.bnd       ; 2 uses
  %i.bni = fmul <16 x float> %i.bar, %i.bnb       ; 2 uses
  %i.bnj = fmul <16 x float> %i.bas, %i.bnd       ; 2 uses
  %i.bnk = fadd <16 x float> %.sroa.03138.33786, %i.bne ; 2 uses
  %i.bnl = fadd <16 x float> %.sroa.163145.33787, %i.bnf ; 2 uses
  %i.bnm = fadd <16 x float> %.sroa.03120.33784, %i.bng ; 2 uses
  %i.bnn = fadd <16 x float> %.sroa.163127.33785, %i.bnh ; 2 uses
  %i.bno = fadd <16 x float> %.sroa.03103.33782, %i.bni ; 2 uses
  %i.bnp = fadd <16 x float> %.sroa.16.33783, %i.bnj ; 2 uses
  %i.bnq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bag ; 4 uses
  %i.bnr = fadd <16 x float> %i.bne, %i.bnf       ; 2 uses
  %i.bns = fadd <16 x float> %i.bng, %i.bnh       ; 2 uses
  %i.bnt = fadd <16 x float> %i.bni, %i.bnj       ; 2 uses
  %i.bnu = load <8 x float>, ptr %i.bnq, align 32, !tbaa !29
  %i.bnv = shufflevector <16 x float> %i.bnr, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bnw = shufflevector <16 x float> %i.bnr, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bnx = fadd <8 x float> %i.bnv, %i.bnw
  %i.bny = fsub <8 x float> %i.bnu, %i.bnx
  store <8 x float> %i.bny, ptr %i.bnq, align 32, !tbaa !29
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bnq, i64 32 ; 2 uses
  %i.boa = load <8 x float>, ptr %i.bnz, align 32, !tbaa !29
  %i.bob = shufflevector <16 x float> %i.bns, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.boc = shufflevector <16 x float> %i.bns, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bod = fadd <8 x float> %i.bob, %i.boc
  %i.boe = fsub <8 x float> %i.boa, %i.bod
  store <8 x float> %i.boe, ptr %i.bnz, align 32, !tbaa !29
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bnq, i64 64 ; 2 uses
  %i.bog = load <8 x float>, ptr %i.bof, align 32, !tbaa !29
  %i.boh = shufflevector <16 x float> %i.bnt, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.boi = shufflevector <16 x float> %i.bnt, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.boj = fadd <8 x float> %i.boh, %i.boi
  %i.bok = fsub <8 x float> %i.bog, %i.boj
  store <8 x float> %i.bok, ptr %i.bof, align 32, !tbaa !29
  %indvars.iv.next3874 = add nsw i64 %indvars.iv3873, 1 ; 2 uses
  %exitcond3877.not = icmp eq i64 %indvars.iv.next3874, %wide.trip.count3876
  br i1 %exitcond3877.not, label %.loopexit, label %bb.o, !llvm.loop !20

bb.p:                                             ; preds = %.lr.ph.a, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %indvars.iv = phi i64 [ %i.akh, %.lr.ph.a ], [ %indvars.iv.next, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 4 uses
  %.sroa.163145.43728 = phi <16 x float> [ zeroinitializer, %.lr.ph.a ], [ %i.bwd, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03138.43727 = phi <16 x float> [ zeroinitializer, %.lr.ph.a ], [ %i.bwc, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.163127.43726 = phi <16 x float> [ zeroinitializer, %.lr.ph.a ], [ %i.bwf, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03120.43725 = phi <16 x float> [ zeroinitializer, %.lr.ph.a ], [ %i.bwe, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.16.43724 = phi <16 x float> [ zeroinitializer, %.lr.ph.a ], [ %i.bwh, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03103.43723 = phi <16 x float> [ zeroinitializer, %.lr.ph.a ], [ %i.bwg, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %i.bol = load ptr, ptr %i.au, align 8, !tbaa !62
  %i.bom = getelementptr inbounds nuw [8 x i8], ptr %i.bol, i64 %indvars.iv
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bom, i64 4
  %i.boo = load i32, ptr %i.bon, align 4, !tbaa !84
  %.not = icmp eq i32 %i.boo, -1
  br i1 %.not, label %.critedge5.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit: ; preds = %bb.p
  %i.bop = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.boq = load i32, ptr %i.bop, align 4, !tbaa !92 ; 3 uses
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bop, i64 4
  %i.bos = load i32, ptr %i.bor, align 4, !tbaa !98
  %i.bot = insertelement <16 x i32> poison, i32 %i.bos, i64 0
  %i.bou = shufflevector <16 x i32> %i.bot, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.bov = and <16 x i32> %.sroa.03909.0.copyload, %i.bou
  %i.bow = icmp ne <16 x i32> %i.bov, zeroinitializer
  %i.box = and <16 x i32> %.sroa.6.0.copyload, %i.bou
  %i.boy = icmp ne <16 x i32> %i.box, zeroinitializer
  %i.boz = mul nsw i32 %i.boq, 24
  %i.bpa = sext i32 %i.boz to i64                 ; 2 uses
  %i.bpb = getelementptr [4 x i8], ptr %i.at, i64 %i.bpa ; 3 uses
  %.val6384081 = load <8 x float>, ptr %i.bpb, align 32, !tbaa !29
  %i.bpc = shufflevector <8 x float> %.val6384081, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bpd = getelementptr i8, ptr %i.bpb, i64 32
  %.val6394082 = load <8 x float>, ptr %i.bpd, align 32, !tbaa !29
  %i.bpe = shufflevector <8 x float> %.val6394082, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bpf = getelementptr i8, ptr %i.bpb, i64 64
  %.val6404083 = load <8 x float>, ptr %i.bpf, align 32, !tbaa !29
  %i.bpg = shufflevector <8 x float> %.val6404083, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bph = fsub <16 x float> %i.hp, %i.bpc        ; 3 uses
  %i.bpi = fsub <16 x float> %i.hv, %i.bpc        ; 3 uses
  %i.bpj = fsub <16 x float> %i.ic, %i.bpe        ; 3 uses
  %i.bpk = fsub <16 x float> %i.ii, %i.bpe        ; 3 uses
  %i.bpl = fsub <16 x float> %i.ip, %i.bpg        ; 3 uses
  %i.bpm = fsub <16 x float> %i.iv, %i.bpg        ; 3 uses
  %i.bpn = fmul <16 x float> %i.bph, %i.bph
  %i.bpo = fmul <16 x float> %i.bpj, %i.bpj
  %i.bpp = fadd <16 x float> %i.bpn, %i.bpo
  %i.bpq = fmul <16 x float> %i.bpl, %i.bpl
  %i.bpr = fadd <16 x float> %i.bpp, %i.bpq       ; 2 uses
  %i.bps = fmul <16 x float> %i.bpi, %i.bpi
  %i.bpt = fmul <16 x float> %i.bpk, %i.bpk
  %i.bpu = fadd <16 x float> %i.bps, %i.bpt
  %i.bpv = fmul <16 x float> %i.bpm, %i.bpm
  %i.bpw = fadd <16 x float> %i.bpu, %i.bpv       ; 2 uses
  %i.bpx = fcmp olt <16 x float> %i.bpr, %i.ap
  %i.bpy = fcmp olt <16 x float> %i.bpw, %i.ap
  %i.bpz = and <16 x i1> %i.bow, %i.bpx           ; 2 uses
  %i.bqa = and <16 x i1> %i.boy, %i.bpy           ; 2 uses
  %i.bqb = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bpr, <16 x float> splat (float 3.820000e-07), i32 4) ; 2 uses
  %i.bqc = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bpw, <16 x float> splat (float 3.820000e-07), i32 4) ; 2 uses
  %i.bqd = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.bqb, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bqe = fmul <16 x float> %i.bqb, %i.bqd
  %i.bqf = fmul <16 x float> %i.bqd, splat (float -5.000000e-01)
  %i.bqg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqe, <16 x float> %i.bqd, <16 x float> splat (float -3.000000e+00))
  %i.bqh = fmul <16 x float> %i.bqf, %i.bqg
  %i.bqi = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.bqc, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bqj = fmul <16 x float> %i.bqc, %i.bqi
  %i.bqk = fmul <16 x float> %i.bqi, splat (float -5.000000e-01)
  %i.bql = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqj, <16 x float> %i.bqi, <16 x float> splat (float -3.000000e+00))
  %i.bqm = fmul <16 x float> %i.bqk, %i.bql
  %i.bqn = select <16 x i1> %i.bpz, <16 x float> %i.bqh, <16 x float> zeroinitializer ; 2 uses
  %i.bqo = select <16 x i1> %i.bqa, <16 x float> %i.bqm, <16 x float> zeroinitializer ; 2 uses
  %i.bqp = fmul <16 x float> %i.bqn, %i.bqn       ; 4 uses
  %i.bqq = fmul <16 x float> %i.bqo, %i.bqo       ; 4 uses
  %i.bqr = shl nsw i32 %i.boq, 4
  %i.bqs = sext i32 %i.bqr to i64
  %i.bqt = getelementptr [4 x i8], ptr %i.f, i64 %i.bqs ; 2 uses
  %.val6414084 = load <8 x float>, ptr %i.bqt, align 32, !tbaa !29
  %i.bqu = shufflevector <8 x float> %.val6414084, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bqv = getelementptr i8, ptr %i.bqt, i64 32
  %.val6424085 = load <8 x float>, ptr %i.bqv, align 32, !tbaa !29
  %i.bqw = shufflevector <8 x float> %.val6424085, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bqx = fmul <16 x float> %i.jp, %i.bqu        ; 2 uses
  %i.bqy = fmul <16 x float> %i.jy, %i.bqu        ; 2 uses
  %i.bqz = fmul <16 x float> %i.jt, %i.bqw        ; 2 uses
  %i.bra = fmul <16 x float> %i.kd, %i.bqw        ; 2 uses
  %i.brb = fmul <16 x float> %i.bqp, %i.bqp
  %i.brc = fmul <16 x float> %i.bqp, %i.brb       ; 3 uses
  %i.brd = fmul <16 x float> %i.bqq, %i.bqq
  %i.bre = fmul <16 x float> %i.bqq, %i.brd       ; 3 uses
  %i.brf = fmul <16 x float> %i.brc, %i.brc
  %i.brg = fmul <16 x float> %i.bre, %i.bre
  %i.brh = fmul <16 x float> %i.bqx, %i.brc       ; 2 uses
  %i.bri = fmul <16 x float> %i.bqy, %i.bre       ; 2 uses
  %i.brj = fmul <16 x float> %i.bqz, %i.brf       ; 2 uses
  %i.brk = fmul <16 x float> %i.bra, %i.brg       ; 2 uses
  %i.brl = fsub <16 x float> %i.brj, %i.brh
  %i.brm = fsub <16 x float> %i.brk, %i.bri
  %i.brn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqx, <16 x float> %i.ah, <16 x float> %i.brh)
  %i.bro = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqy, <16 x float> %i.ah, <16 x float> %i.bri)
  %i.brp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bqz, <16 x float> %i.ak, <16 x float> %i.brj)
  %i.brq = fmul <16 x float> %i.brn, splat (float f0xBE2AAAAB)
  %i.brr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.brp, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.brq)
  %i.brs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bra, <16 x float> %i.ak, <16 x float> %i.brk)
  %i.brt = fmul <16 x float> %i.bro, splat (float f0xBE2AAAAB)
  %i.bru = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.brs, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.brt)
  %i.brv = select <16 x i1> %i.bpz, <16 x float> %i.brr, <16 x float> zeroinitializer ; 2 uses
  %i.brw = select <16 x i1> %i.bqa, <16 x float> %i.bru, <16 x float> zeroinitializer ; 2 uses
  %i.brx = load ptr, ptr %i.bc, align 8, !tbaa !83
  %i.bry = shl nsw i32 %i.boq, 1
  %i.brz = load i32, ptr %i.bo, align 8, !tbaa !99
  %i.bsa = sext i32 %i.bry to i64
  %i.bsb = getelementptr inbounds [4 x i8], ptr %i.brx, i64 %i.bsa
  %i.bsc = load i32, ptr %i.bp, align 4, !tbaa !100
  %i.bsd = load i32, ptr %i.bm, align 8, !tbaa !93
  %i.bse = load <2 x i32>, ptr %i.bsb, align 4, !tbaa !84 ; 2 uses
  %i.bsf = insertelement <2 x i32> poison, i32 %i.brz, i64 0
  %i.bsg = shufflevector <2 x i32> %i.bse, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bsh = shufflevector <2 x i32> %i.bse, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bsi = shufflevector <2 x i32> %i.bsf, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.bsj = ashr <4 x i32> %i.bsh, %i.bsi
  %i.bsk = shufflevector <4 x i32> %i.bsj, <4 x i32> %i.bsg, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.bsl = insertelement <4 x i32> poison, i32 %i.bsc, i64 0
  %i.bsm = shufflevector <4 x i32> %i.bsl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bsn = and <4 x i32> %i.bsk, %i.bsm
  %i.bso = insertelement <4 x i32> poison, i32 %i.bsd, i64 0
  %i.bsp = shufflevector <4 x i32> %i.bso, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bsq = mul nsw <4 x i32> %i.bsn, %i.bsp       ; 4 uses
  %i.bsr = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.bss = load ptr, ptr %i.bsr, align 8, !tbaa !90 ; 4 uses
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bsr, i64 8
  %i.bsu = load ptr, ptr %i.bst, align 8, !tbaa !90 ; 4 uses
  %i.bsv = shufflevector <16 x float> %i.brv, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bsw = shufflevector <16 x float> %i.brv, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bsx = extractelement <4 x i32> %i.bsq, i64 0
  %i.bsy = sext i32 %i.bsx to i64                 ; 4 uses
  %i.bsz = getelementptr inbounds [4 x i8], ptr %i.bss, i64 %i.bsy ; 2 uses
  %i.bta = getelementptr inbounds [4 x i8], ptr %i.bsu, i64 %i.bsy ; 2 uses
  %i.btb = load <8 x float>, ptr %i.bsz, align 32, !tbaa !29
  %i.btc = fadd <8 x float> %i.bsv, %i.btb
  store <8 x float> %i.btc, ptr %i.bsz, align 32, !tbaa !29
  %i.btd = load <8 x float>, ptr %i.bta, align 32, !tbaa !29
  %i.bte = fadd <8 x float> %i.btd, %i.bsw
  store <8 x float> %i.bte, ptr %i.bta, align 32, !tbaa !29
  %i.btf = extractelement <4 x i32> %i.bsq, i64 1
  %i.btg = sext i32 %i.btf to i64                 ; 4 uses
  %i.bth = getelementptr inbounds [4 x i8], ptr %i.bss, i64 %i.btg
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bth, i64 32 ; 2 uses
  %i.btj = getelementptr inbounds [4 x i8], ptr %i.bsu, i64 %i.btg
  %i.btk = getelementptr inbounds nuw i8, ptr %i.btj, i64 32 ; 2 uses
  %i.btl = load <8 x float>, ptr %i.bti, align 32, !tbaa !29
  %i.btm = fadd <8 x float> %i.bsv, %i.btl
  store <8 x float> %i.btm, ptr %i.bti, align 32, !tbaa !29
  %i.btn = load <8 x float>, ptr %i.btk, align 32, !tbaa !29
  %i.bto = fadd <8 x float> %i.btn, %i.bsw
  store <8 x float> %i.bto, ptr %i.btk, align 32, !tbaa !29
  %i.btp = extractelement <4 x i32> %i.bsq, i64 2
  %i.btq = sext i32 %i.btp to i64                 ; 4 uses
  %i.btr = getelementptr inbounds [4 x i8], ptr %i.bss, i64 %i.btq
  %i.bts = getelementptr inbounds nuw i8, ptr %i.btr, i64 64 ; 2 uses
  %i.btt = getelementptr inbounds [4 x i8], ptr %i.bsu, i64 %i.btq
  %i.btu = getelementptr inbounds nuw i8, ptr %i.btt, i64 64 ; 2 uses
  %i.btv = load <8 x float>, ptr %i.bts, align 32, !tbaa !29
  %i.btw = fadd <8 x float> %i.bsv, %i.btv
  store <8 x float> %i.btw, ptr %i.bts, align 32, !tbaa !29
  %i.btx = load <8 x float>, ptr %i.btu, align 32, !tbaa !29
  %i.bty = fadd <8 x float> %i.btx, %i.bsw
  store <8 x float> %i.bty, ptr %i.btu, align 32, !tbaa !29
  %i.btz = extractelement <4 x i32> %i.bsq, i64 3
  %i.bua = sext i32 %i.btz to i64                 ; 4 uses
  %i.bub = getelementptr inbounds [4 x i8], ptr %i.bss, i64 %i.bua
  %i.buc = getelementptr inbounds nuw i8, ptr %i.bub, i64 96 ; 2 uses
  %i.bud = getelementptr inbounds [4 x i8], ptr %i.bsu, i64 %i.bua
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bud, i64 96 ; 2 uses
  %i.buf = load <8 x float>, ptr %i.buc, align 32, !tbaa !29
  %i.bug = fadd <8 x float> %i.bsv, %i.buf
  store <8 x float> %i.bug, ptr %i.buc, align 32, !tbaa !29
  %i.buh = load <8 x float>, ptr %i.bue, align 32, !tbaa !29
  %i.bui = fadd <8 x float> %i.buh, %i.bsw
  store <8 x float> %i.bui, ptr %i.bue, align 32, !tbaa !29
  %i.buj = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.buk = getelementptr inbounds nuw i8, ptr %i.buj, i64 16
  %i.bul = load ptr, ptr %i.buk, align 8, !tbaa !90 ; 4 uses
  %i.bum = getelementptr inbounds nuw i8, ptr %i.buj, i64 24
  %i.bun = load ptr, ptr %i.bum, align 8, !tbaa !90 ; 4 uses
  %i.buo = shufflevector <16 x float> %i.brw, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bup = shufflevector <16 x float> %i.brw, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.buq = getelementptr inbounds [4 x i8], ptr %i.bul, i64 %i.bsy ; 2 uses
  %i.bur = getelementptr inbounds [4 x i8], ptr %i.bun, i64 %i.bsy ; 2 uses
  %i.bus = load <8 x float>, ptr %i.buq, align 32, !tbaa !29
  %i.but = fadd <8 x float> %i.buo, %i.bus
  store <8 x float> %i.but, ptr %i.buq, align 32, !tbaa !29
  %i.buu = load <8 x float>, ptr %i.bur, align 32, !tbaa !29
  %i.buv = fadd <8 x float> %i.buu, %i.bup
  store <8 x float> %i.buv, ptr %i.bur, align 32, !tbaa !29
  %i.buw = getelementptr inbounds [4 x i8], ptr %i.bul, i64 %i.btg
  %i.bux = getelementptr inbounds nuw i8, ptr %i.buw, i64 32 ; 2 uses
  %i.buy = getelementptr inbounds [4 x i8], ptr %i.bun, i64 %i.btg
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buy, i64 32 ; 2 uses
  %i.bva = load <8 x float>, ptr %i.bux, align 32, !tbaa !29
  %i.bvb = fadd <8 x float> %i.buo, %i.bva
  store <8 x float> %i.bvb, ptr %i.bux, align 32, !tbaa !29
  %i.bvc = load <8 x float>, ptr %i.buz, align 32, !tbaa !29
  %i.bvd = fadd <8 x float> %i.bvc, %i.bup
  store <8 x float> %i.bvd, ptr %i.buz, align 32, !tbaa !29
  %i.bve = getelementptr inbounds [4 x i8], ptr %i.bul, i64 %i.btq
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.bve, i64 64 ; 2 uses
  %i.bvg = getelementptr inbounds [4 x i8], ptr %i.bun, i64 %i.btq
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bvg, i64 64 ; 2 uses
  %i.bvi = load <8 x float>, ptr %i.bvf, align 32, !tbaa !29
  %i.bvj = fadd <8 x float> %i.buo, %i.bvi
  store <8 x float> %i.bvj, ptr %i.bvf, align 32, !tbaa !29
  %i.bvk = load <8 x float>, ptr %i.bvh, align 32, !tbaa !29
  %i.bvl = fadd <8 x float> %i.bvk, %i.bup
  store <8 x float> %i.bvl, ptr %i.bvh, align 32, !tbaa !29
  %i.bvm = getelementptr inbounds [4 x i8], ptr %i.bul, i64 %i.bua
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvm, i64 96 ; 2 uses
  %i.bvo = getelementptr inbounds [4 x i8], ptr %i.bun, i64 %i.bua
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.bvo, i64 96 ; 2 uses
  %i.bvq = load <8 x float>, ptr %i.bvn, align 32, !tbaa !29
  %i.bvr = fadd <8 x float> %i.buo, %i.bvq
  store <8 x float> %i.bvr, ptr %i.bvn, align 32, !tbaa !29
  %i.bvs = load <8 x float>, ptr %i.bvp, align 32, !tbaa !29
  %i.bvt = fadd <8 x float> %i.bvs, %i.bup
  store <8 x float> %i.bvt, ptr %i.bvp, align 32, !tbaa !29
  %i.bvu = fmul <16 x float> %i.bqp, %i.brl       ; 3 uses
  %i.bvv = fmul <16 x float> %i.bqq, %i.brm       ; 3 uses
  %i.bvw = fmul <16 x float> %i.bph, %i.bvu       ; 2 uses
  %i.bvx = fmul <16 x float> %i.bpi, %i.bvv       ; 2 uses
  %i.bvy = fmul <16 x float> %i.bpj, %i.bvu       ; 2 uses
  %i.bvz = fmul <16 x float> %i.bpk, %i.bvv       ; 2 uses
  %i.bwa = fmul <16 x float> %i.bpl, %i.bvu       ; 2 uses
  %i.bwb = fmul <16 x float> %i.bpm, %i.bvv       ; 2 uses
  %i.bwc = fadd <16 x float> %.sroa.03138.43727, %i.bvw ; 2 uses
  %i.bwd = fadd <16 x float> %.sroa.163145.43728, %i.bvx ; 2 uses
  %i.bwe = fadd <16 x float> %.sroa.03120.43725, %i.bvy ; 2 uses
  %i.bwf = fadd <16 x float> %.sroa.163127.43726, %i.bvz ; 2 uses
  %i.bwg = fadd <16 x float> %.sroa.03103.43723, %i.bwa ; 2 uses
  %i.bwh = fadd <16 x float> %.sroa.16.43724, %i.bwb ; 2 uses
  %i.bwi = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bpa ; 4 uses
  %i.bwj = fadd <16 x float> %i.bvw, %i.bvx       ; 2 uses
  %i.bwk = fadd <16 x float> %i.bvy, %i.bvz       ; 2 uses
  %i.bwl = fadd <16 x float> %i.bwa, %i.bwb       ; 2 uses
  %i.bwm = load <8 x float>, ptr %i.bwi, align 32, !tbaa !29
  %i.bwn = shufflevector <16 x float> %i.bwj, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bwo = shufflevector <16 x float> %i.bwj, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bwp = fadd <8 x float> %i.bwn, %i.bwo
  %i.bwq = fsub <8 x float> %i.bwm, %i.bwp
  store <8 x float> %i.bwq, ptr %i.bwi, align 32, !tbaa !29
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwi, i64 32 ; 2 uses
  %i.bws = load <8 x float>, ptr %i.bwr, align 32, !tbaa !29
  %i.bwt = shufflevector <16 x float> %i.bwk, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bwu = shufflevector <16 x float> %i.bwk, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bwv = fadd <8 x float> %i.bwt, %i.bwu
  %i.bww = fsub <8 x float> %i.bws, %i.bwv
  store <8 x float> %i.bww, ptr %i.bwr, align 32, !tbaa !29
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.bwi, i64 64 ; 2 uses
  %i.bwy = load <8 x float>, ptr %i.bwx, align 32, !tbaa !29
  %i.bwz = shufflevector <16 x float> %i.bwl, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bxa = shufflevector <16 x float> %i.bwl, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bxb = fadd <8 x float> %i.bwz, %i.bxa
  %i.bxc = fsub <8 x float> %i.bwy, %i.bxb
  store <8 x float> %i.bxc, ptr %i.bwx, align 32, !tbaa !29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.p, !llvm.loop !21

.critedge5.loopexit:                              ; preds = %bb.p
  %i.bxd = trunc nsw i64 %indvars.iv to i32
  br label %.critedge5

.critedge5:                                       ; preds = %.critedge5.loopexit, %.preheader3715
  %.sroa.03103.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader3715 ], [ %.sroa.03103.43723, %.critedge5.loopexit ] ; 2 uses
  %.sroa.16.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader3715 ], [ %.sroa.16.43724, %.critedge5.loopexit ] ; 2 uses
  %.sroa.03120.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader3715 ], [ %.sroa.03120.43725, %.critedge5.loopexit ] ; 2 uses
  %.sroa.163127.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader3715 ], [ %.sroa.163127.43726, %.critedge5.loopexit ] ; 2 uses
  %.sroa.03138.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader3715 ], [ %.sroa.03138.43727, %.critedge5.loopexit ] ; 2 uses
  %.sroa.163145.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader3715 ], [ %.sroa.163145.43728, %.critedge5.loopexit ] ; 2 uses
  %.4.lcssa = phi i32 [ %i.bv, %.preheader3715 ], [ %i.bxd, %.critedge5.loopexit ] ; 2 uses
  %i.bxe = icmp slt i32 %.4.lcssa, %i.bx
  br i1 %i.bxe, label %.lr.ph3751, label %.loopexit

.lr.ph3751:                                       ; preds = %.critedge5
  %i.bxf = sext i32 %.4.lcssa to i64
  %wide.trip.count3864 = sext i32 %i.bx to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph3751, %bb.q
  %indvars.iv3861 = phi i64 [ %i.bxf, %.lr.ph3751 ], [ %indvars.iv.next3862, %bb.q ] ; 2 uses
  %.sroa.163145.53749 = phi <16 x float> [ %.sroa.163145.4.lcssa, %.lr.ph3751 ], [ %i.cek, %bb.q ]
  %.sroa.03138.53748 = phi <16 x float> [ %.sroa.03138.4.lcssa, %.lr.ph3751 ], [ %i.cej, %bb.q ]
  %.sroa.163127.53747 = phi <16 x float> [ %.sroa.163127.4.lcssa, %.lr.ph3751 ], [ %i.cem, %bb.q ]
  %.sroa.03120.53746 = phi <16 x float> [ %.sroa.03120.4.lcssa, %.lr.ph3751 ], [ %i.cel, %bb.q ]
  %.sroa.16.53745 = phi <16 x float> [ %.sroa.16.4.lcssa, %.lr.ph3751 ], [ %i.ceo, %bb.q ]
  %.sroa.03103.53744 = phi <16 x float> [ %.sroa.03103.4.lcssa, %.lr.ph3751 ], [ %i.cen, %bb.q ]
  %i.bxg = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv3861
  %i.bxh = load i32, ptr %i.bxg, align 4, !tbaa !92 ; 3 uses
  %i.bxi = mul nsw i32 %i.bxh, 24
  %i.bxj = sext i32 %i.bxi to i64                 ; 2 uses
  %i.bxk = getelementptr [4 x i8], ptr %i.at, i64 %i.bxj ; 3 uses
  %.val6434086 = load <8 x float>, ptr %i.bxk, align 32, !tbaa !29
  %i.bxl = shufflevector <8 x float> %.val6434086, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bxm = getelementptr i8, ptr %i.bxk, i64 32
  %.val6444087 = load <8 x float>, ptr %i.bxm, align 32, !tbaa !29
  %i.bxn = shufflevector <8 x float> %.val6444087, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bxo = getelementptr i8, ptr %i.bxk, i64 64
  %.val6454088 = load <8 x float>, ptr %i.bxo, align 32, !tbaa !29
  %i.bxp = shufflevector <8 x float> %.val6454088, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bxq = fsub <16 x float> %i.hp, %i.bxl        ; 3 uses
  %i.bxr = fsub <16 x float> %i.hv, %i.bxl        ; 3 uses
  %i.bxs = fsub <16 x float> %i.ic, %i.bxn        ; 3 uses
  %i.bxt = fsub <16 x float> %i.ii, %i.bxn        ; 3 uses
  %i.bxu = fsub <16 x float> %i.ip, %i.bxp        ; 3 uses
  %i.bxv = fsub <16 x float> %i.iv, %i.bxp        ; 3 uses
  %i.bxw = fmul <16 x float> %i.bxq, %i.bxq
  %i.bxx = fmul <16 x float> %i.bxs, %i.bxs
  %i.bxy = fadd <16 x float> %i.bxw, %i.bxx
  %i.bxz = fmul <16 x float> %i.bxu, %i.bxu
  %i.bya = fadd <16 x float> %i.bxy, %i.bxz       ; 2 uses
  %i.byb = fmul <16 x float> %i.bxr, %i.bxr
  %i.byc = fmul <16 x float> %i.bxt, %i.bxt
  %i.byd = fadd <16 x float> %i.byb, %i.byc
  %i.bye = fmul <16 x float> %i.bxv, %i.bxv
  %i.byf = fadd <16 x float> %i.byd, %i.bye       ; 2 uses
  %i.byg = fcmp olt <16 x float> %i.bya, %i.ap    ; 2 uses
  %i.byh = fcmp olt <16 x float> %i.byf, %i.ap    ; 2 uses
  %i.byi = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bya, <16 x float> splat (float 3.820000e-07), i32 4) ; 2 uses
  %i.byj = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.byf, <16 x float> splat (float 3.820000e-07), i32 4) ; 2 uses
  %i.byk = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.byi, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.byl = fmul <16 x float> %i.byi, %i.byk
  %i.bym = fmul <16 x float> %i.byk, splat (float -5.000000e-01)
  %i.byn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byl, <16 x float> %i.byk, <16 x float> splat (float -3.000000e+00))
  %i.byo = fmul <16 x float> %i.bym, %i.byn
  %i.byp = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.byj, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.byq = fmul <16 x float> %i.byj, %i.byp
  %i.byr = fmul <16 x float> %i.byp, splat (float -5.000000e-01)
  %i.bys = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byq, <16 x float> %i.byp, <16 x float> splat (float -3.000000e+00))
  %i.byt = fmul <16 x float> %i.byr, %i.bys
  %i.byu = select <16 x i1> %i.byg, <16 x float> %i.byo, <16 x float> zeroinitializer ; 2 uses
  %i.byv = select <16 x i1> %i.byh, <16 x float> %i.byt, <16 x float> zeroinitializer ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader3718.preheader
  store <8 x float> %i.cda, ptr %i.ccx, align 32, !tbaa !29
  %i.cdb = load <8 x float>, ptr %i.ccy, align 32, !tbaa !29
  %i.cdc = fadd <8 x float> %i.cdb, %i.ccw
  store <8 x float> %i.cdc, ptr %i.ccy, align 32, !tbaa !29
  %i.cdd = getelementptr inbounds [4 x i8], ptr %i.ccs, i64 %i.cbn
  %i.cde = getelementptr inbounds nuw i8, ptr %i.cdd, i64 32 ; 2 uses
  %i.cdf = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %i.cbn
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.cdf, i64 32 ; 2 uses
  %i.cdh = load <8 x float>, ptr %i.cde, align 32, !tbaa !29
  %i.cdi = fadd <8 x float> %i.ccv, %i.cdh
  store <8 x float> %i.cdi, ptr %i.cde, align 32, !tbaa !29
  %i.cdj = load <8 x float>, ptr %i.cdg, align 32, !tbaa !29
  %i.cdk = fadd <8 x float> %i.cdj, %i.ccw
  store <8 x float> %i.cdk, ptr %i.cdg, align 32, !tbaa !29
  %i.cdl = getelementptr inbounds [4 x i8], ptr %i.ccs, i64 %i.cbx
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cdl, i64 64 ; 2 uses
  %i.cdn = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %i.cbx
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.cdn, i64 64 ; 2 uses
  %i.cdp = load <8 x float>, ptr %i.cdm, align 32, !tbaa !29
  %i.cdq = fadd <8 x float> %i.ccv, %i.cdp
  store <8 x float> %i.cdq, ptr %i.cdm, align 32, !tbaa !29
  %i.cdr = load <8 x float>, ptr %i.cdo, align 32, !tbaa !29
  %i.cds = fadd <8 x float> %i.cdr, %i.ccw
  store <8 x float> %i.cds, ptr %i.cdo, align 32, !tbaa !29
  %i.cdt = getelementptr inbounds [4 x i8], ptr %i.ccs, i64 %i.cch
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cdt, i64 96 ; 2 uses
  %i.cdv = getelementptr inbounds [4 x i8], ptr %i.ccu, i64 %i.cch
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.cdv, i64 96 ; 2 uses
  %i.cdx = load <8 x float>, ptr %i.cdu, align 32, !tbaa !29
  %i.cdy = fadd <8 x float> %i.ccv, %i.cdx
  store <8 x float> %i.cdy, ptr %i.cdu, align 32, !tbaa !29
  %i.cdz = load <8 x float>, ptr %i.cdw, align 32, !tbaa !29
  %i.cea = fadd <8 x float> %i.cdz, %i.ccw
  store <8 x float> %i.cea, ptr %i.cdw, align 32, !tbaa !29
  %i.ceb = fmul <16 x float> %i.byw, %i.bzs       ; 3 uses
  %i.cec = fmul <16 x float> %i.byx, %i.bzt       ; 3 uses
  %i.ced = fmul <16 x float> %i.bxq, %i.ceb       ; 2 uses
  %i.cee = fmul <16 x float> %i.bxr, %i.cec       ; 2 uses
  %i.cef = fmul <16 x float> %i.bxs, %i.ceb       ; 2 uses
  %i.ceg = fmul <16 x float> %i.bxt, %i.cec       ; 2 uses
  %i.ceh = fmul <16 x float> %i.bxu, %i.ceb       ; 2 uses
  %i.cei = fmul <16 x float> %i.bxv, %i.cec       ; 2 uses
  %i.cej = fadd <16 x float> %.sroa.03138.53748, %i.ced ; 2 uses
  %i.cek = fadd <16 x float> %.sroa.163145.53749, %i.cee ; 2 uses
  %i.cel = fadd <16 x float> %.sroa.03120.53746, %i.cef ; 2 uses
  %i.cem = fadd <16 x float> %.sroa.163127.53747, %i.ceg ; 2 uses
  %i.cen = fadd <16 x float> %.sroa.03103.53744, %i.ceh ; 2 uses
  %i.ceo = fadd <16 x float> %.sroa.16.53745, %i.cei ; 2 uses
  %i.cep = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bxj ; 4 uses
  %i.ceq = fadd <16 x float> %i.ced, %i.cee       ; 2 uses
  %i.cer = fadd <16 x float> %i.cef, %i.ceg       ; 2 uses
  %i.ces = fadd <16 x float> %i.ceh, %i.cei       ; 2 uses
  %i.cet = load <8 x float>, ptr %i.cep, align 32, !tbaa !29
  %i.ceu = shufflevector <16 x float> %i.ceq, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cev = shufflevector <16 x float> %i.ceq, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cew = fadd <8 x float> %i.ceu, %i.cev
  %i.cex = fsub <8 x float> %i.cet, %i.cew
  store <8 x float> %i.cex, ptr %i.cep, align 32, !tbaa !29
  %i.cey = getelementptr inbounds nuw i8, ptr %i.cep, i64 32 ; 2 uses
  %i.cez = load <8 x float>, ptr %i.cey, align 32, !tbaa !29
  %i.cfa = shufflevector <16 x float> %i.cer, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cfb = shufflevector <16 x float> %i.cer, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cfc = fadd <8 x float> %i.cfa, %i.cfb
  %i.cfd = fsub <8 x float> %i.cez, %i.cfc
  store <8 x float> %i.cfd, ptr %i.cey, align 32, !tbaa !29
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.cep, i64 64 ; 2 uses
  %i.cff = load <8 x float>, ptr %i.cfe, align 32, !tbaa !29
  %i.cfg = shufflevector <16 x float> %i.ces, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cfh = shufflevector <16 x float> %i.ces, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cfi = fadd <8 x float> %i.cfg, %i.cfh
  %i.cfj = fsub <8 x float> %i.cff, %i.cfi
  store <8 x float> %i.cfj, ptr %i.cfe, align 32, !tbaa !29
  %indvars.iv.next3862 = add nsw i64 %indvars.iv3861, 1 ; 2 uses
  %exitcond3865.not = icmp eq i64 %indvars.iv.next3862, %wide.trip.count3864
  br i1 %exitcond3865.not, label %.loopexit, label %bb.q, !llvm.loop !22

.loopexit:                                        ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit, %bb.q, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit, %bb.o, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532, %bb.i, %.critedge5, %.critedge3, %.critedge
  %.sroa.03103.6 = phi <16 x float> [ %i.cen, %bb.q ], [ %i.bno, %bb.o ], [ %.sroa.03103.0.lcssa, %.critedge ], [ %.sroa.03103.2.lcssa, %.critedge3 ], [ %.sroa.03103.4.lcssa, %.critedge5 ], [ %i.wx, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ], [ %i.azc, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ajk, %bb.i ], [ %i.bwg, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.16.6 = phi <16 x float> [ %i.ceo, %bb.q ], [ %i.bnp, %bb.o ], [ %.sroa.16.0.lcssa, %.critedge ], [ %.sroa.16.2.lcssa, %.critedge3 ], [ %.sroa.16.4.lcssa, %.critedge5 ], [ %i.wy, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ], [ %i.azd, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ajl, %bb.i ], [ %i.bwh, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03120.6 = phi <16 x float> [ %i.cel, %bb.q ], [ %i.bnm, %bb.o ], [ %.sroa.03120.0.lcssa, %.critedge ], [ %.sroa.03120.2.lcssa, %.critedge3 ], [ %.sroa.03120.4.lcssa, %.critedge5 ], [ %i.wv, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ], [ %i.aza, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.aji, %bb.i ], [ %i.bwe, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.163127.6 = phi <16 x float> [ %i.cem, %bb.q ], [ %i.bnn, %bb.o ], [ %.sroa.163127.0.lcssa, %.critedge ], [ %.sroa.163127.2.lcssa, %.critedge3 ], [ %.sroa.163127.4.lcssa, %.critedge5 ], [ %i.ww, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ], [ %i.azb, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ajj, %bb.i ], [ %i.bwf, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03138.6 = phi <16 x float> [ %i.cej, %bb.q ], [ %i.bnk, %bb.o ], [ %.sroa.03138.0.lcssa, %.critedge ], [ %.sroa.03138.2.lcssa, %.critedge3 ], [ %.sroa.03138.4.lcssa, %.critedge5 ], [ %i.wt, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ], [ %i.ayy, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ajg, %bb.i ], [ %i.bwc, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.163145.6 = phi <16 x float> [ %i.cek, %bb.q ], [ %i.bnl, %bb.o ], [ %.sroa.163145.0.lcssa, %.critedge ], [ %.sroa.163145.2.lcssa, %.critedge3 ], [ %.sroa.163145.4.lcssa, %.critedge5 ], [ %i.wu, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit532 ], [ %i.ayz, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ajh, %bb.i ], [ %i.bwd, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %i.cfk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hj ; 2 uses
  %i.cfl = shufflevector <16 x float> %.sroa.03138.6, <16 x float> %.sroa.163145.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cfm = shufflevector <16 x float> %.sroa.03138.6, <16 x float> %.sroa.163145.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cfn = fadd <16 x float> %i.cfl, %i.cfm       ; 2 uses
  %i.cfo = shufflevector <16 x float> %i.cfn, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cfp = fadd <16 x float> %i.cfn, %i.cfo       ; 2 uses
  %i.cfq = shufflevector <16 x float> %i.cfp, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cfr = fadd <16 x float> %i.cfp, %i.cfq
  %i.cfs = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.cfr, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cft = shufflevector <16 x float> %i.cfs, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cfu = load <4 x float>, ptr %i.cfk, align 16, !tbaa !29
  %i.cfv = fadd <4 x float> %i.cfu, %i.cft
  store <4 x float> %i.cfv, ptr %i.cfk, align 16, !tbaa !29
  %i.cfw = shufflevector <16 x float> %i.cfs, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cfx = fadd <4 x float> %i.cft, %i.cfw        ; 2 uses
  %i.cfy = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hw ; 2 uses
  %i.cfz = shufflevector <16 x float> %.sroa.03120.6, <16 x float> %.sroa.163127.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cga = shufflevector <16 x float> %.sroa.03120.6, <16 x float> %.sroa.163127.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cgb = fadd <16 x float> %i.cfz, %i.cga       ; 2 uses
  %i.cgc = shufflevector <16 x float> %i.cgb, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cgd = fadd <16 x float> %i.cgb, %i.cgc       ; 2 uses
  %i.cge = shufflevector <16 x float> %i.cgd, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cgf = fadd <16 x float> %i.cgd, %i.cge
  %i.cgg = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.cgf, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cgh = shufflevector <16 x float> %i.cgg, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cgi = load <4 x float>, ptr %i.cfy, align 16, !tbaa !29
  %i.cgj = fadd <4 x float> %i.cgi, %i.cgh
  store <4 x float> %i.cgj, ptr %i.cfy, align 16, !tbaa !29
  %i.cgk = shufflevector <16 x float> %i.cgg, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cgl = fadd <4 x float> %i.cgh, %i.cgk        ; 2 uses
  %i.cgm = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ij ; 2 uses
  %i.cgn = shufflevector <16 x float> %.sroa.03103.6, <16 x float> %.sroa.16.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cgo = shufflevector <16 x float> %.sroa.03103.6, <16 x float> %.sroa.16.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cgp = fadd <16 x float> %i.cgn, %i.cgo       ; 2 uses
  %i.cgq = shufflevector <16 x float> %i.cgp, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cgr = fadd <16 x float> %i.cgp, %i.cgq       ; 2 uses
  %i.cgs = shufflevector <16 x float> %i.cgr, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cgt = fadd <16 x float> %i.cgr, %i.cgs
  %i.cgu = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.cgt, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cgv = shufflevector <16 x float> %i.cgu, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cgw = load <4 x float>, ptr %i.cgm, align 16, !tbaa !29
  %i.cgx = fadd <4 x float> %i.cgw, %i.cgv
  store <4 x float> %i.cgx, ptr %i.cgm, align 16, !tbaa !29
  %i.cgy = shufflevector <16 x float> %i.cgu, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cgz = fadd <4 x float> %i.cgv, %i.cgy        ; 2 uses
  %i.cha = shufflevector <4 x float> %i.cgz, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.chb = fadd <4 x float> %i.cgz, %i.cha
  %i.chc = extractelement <4 x float> %i.chb, i64 0
  %i.chd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cb ; 2 uses
  %i.che = load <2 x float>, ptr %i.chd, align 4, !tbaa !72
  %i.chf = shufflevector <4 x float> %i.cfx, <4 x float> %i.cgl, <2 x i32> <i32 0, i32 4>
  %i.chg = shufflevector <4 x float> %i.cfx, <4 x float> %i.cgl, <2 x i32> <i32 1, i32 5>
  %i.chh = fadd <2 x float> %i.chf, %i.chg
  %i.chi = fadd <2 x float> %i.chh, %i.che
  store <2 x float> %i.chi, ptr %i.chd, align 4, !tbaa !72
  %i.chj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cn ; 2 uses
  %i.chk = load float, ptr %i.chj, align 4, !tbaa !72
  %i.chl = fadd float %i.chc, %i.chk
  store float %i.chl, ptr %i.chj, align 4, !tbaa !72
  %i.chm = getelementptr inbounds nuw i8, ptr %.sroa.01744.03835, i64 16 ; 2 uses
  %.not3708 = icmp eq ptr %i.chm, %i.az
  br i1 %.not3708, label %._crit_edge, label %bb.a
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
!9 = distinct !{!9, i1 true, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!10 = distinct !{!10, !9, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!11 = distinct !{!11, i1 true, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE0_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!12 = distinct !{!12, !11, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE0_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!13 = distinct !{!13, i1 true, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE1_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!14 = distinct !{!14, !13, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE1_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!15 = distinct !{!15, i1 true, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE0EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE2_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
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
!30 = !{!"p1 int", !23, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!31, !30, i64 0}
!33 = !{!"_ZTS15VanDerWaalsType", !5, i64 0}
!34 = !{!"_ZTS20InteractionModifiers", !5, i64 0}
!35 = !{!"double", !5, i64 0}
!36 = !{!"float", !5, i64 0}
!37 = !{!"_ZTS14shift_consts_t", !36, i64 0, !36, i64 4, !36, i64 8}
!38 = !{!"_ZTS15switch_consts_t", !36, i64 0, !36, i64 4, !36, i64 8}
!39 = !{!"_ZTS12LongRangeVdW", !5, i64 0}
!40 = !{!"_ZTSN19interaction_const_t19VanDerWaalsSettingsE", !33, i64 0, !34, i64 4, !35, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 36, !38, i64 48, !36, i64 60, !39, i64 64, !36, i64 68}
!41 = !{!"_ZTS22CoulombInteractionType", !5, i64 0}
!42 = !{!"_ZTSN19interaction_const_t15CoulombSettingsE", !41, i64 0, !34, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36}
!43 = !{!"p1 _ZTS21EwaldCorrectionTables", !23, i64 0}
!44 = !{!"_ZTSSt10_Head_baseILm0EP21EwaldCorrectionTablesLb0EE", !43, i64 0}
!45 = !{!"_ZTSSt11_Tuple_implILm0EJP21EwaldCorrectionTablesSt14default_deleteIS0_EEE", !44, i64 0}
!46 = !{!"_ZTSSt5tupleIJP21EwaldCorrectionTablesSt14default_deleteIS0_EEE", !45, i64 0}
!47 = !{!"_ZTSSt15__uniq_ptr_implI21EwaldCorrectionTablesSt14default_deleteIS0_EE", !46, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_dataI21EwaldCorrectionTablesSt14default_deleteIS0_ELb1ELb1EE", !47, i64 0}
!49 = !{!"_ZTSSt10unique_ptrI21EwaldCorrectionTablesSt14default_deleteIS0_EE", !48, i64 0}
!50 = !{!"p1 _ZTSN19interaction_const_t18SoftCoreParametersE", !23, i64 0}
!51 = !{!"_ZTSSt10_Head_baseILm0EPN19interaction_const_t18SoftCoreParametersELb0EE", !50, i64 0}
!52 = !{!"_ZTSSt11_Tuple_implILm0EJPN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EEE", !51, i64 0}
!53 = !{!"_ZTSSt5tupleIJPN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EEE", !52, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_implIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EE", !53, i64 0}
!55 = !{!"_ZTSSt15__uniq_ptr_dataIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_ELb1ELb1EE", !54, i64 0}
!56 = !{!"_ZTSSt10unique_ptrIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EE", !55, i64 0}
!57 = !{!"bool", !5, i64 0}
!58 = !{!"_ZTS19interaction_const_t", !40, i64 0, !42, i64 72, !49, i64 112, !49, i64 120, !56, i64 128, !57, i64 136}
!59 = !{!58, !36, i64 80}
!60 = !{!"p1 _ZTSN3gmx10nbnxn_cj_tE", !23, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!62 = !{!61, !60, i64 0}
!63 = !{!"p1 _ZTSN3gmx10nbnxn_ci_tE", !23, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"p1 _ZTSN3gmx17EnergyAccumulatorILb1ELb1EEE", !23, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"_ZTSN3gmx10nbnxn_ci_tE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!68 = !{!67, !6, i64 4}
!69 = !{!67, !6, i64 8}
!70 = !{!67, !6, i64 12}
!71 = !{!67, !6, i64 0}
!72 = !{!36, !36, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !27, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !73, i64 0}
!75 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !74, i64 0}
!76 = !{!"any p2 pointer", !23, i64 0}
!77 = !{!"p2 float", !76, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIPfSaIS0_EE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!79 = !{!"_ZTSNSt12_Vector_baseIPfSaIS0_EE12_Vector_implE", !78, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseIPfSaIS0_EE", !79, i64 0}
!81 = !{!"_ZTSSt6vectorIPfSaIS0_EE", !80, i64 0}
!82 = !{!"_ZTSN3gmx17EnergyAccumulatorILb1ELb1EEE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !30, i64 32, !75, i64 40, !75, i64 64, !6, i64 88, !81, i64 96, !81, i64 120, !6, i64 144}
!83 = !{!82, !30, i64 32}
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
