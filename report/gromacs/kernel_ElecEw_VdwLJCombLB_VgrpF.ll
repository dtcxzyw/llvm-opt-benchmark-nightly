Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ElecEw_VdwLJCombLB_VgrpF?download=true
inline.NumInlined: 1527
inline.NumDeleted: 322
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(656) %1, ptr noundef nonnull align 8 dereferenceable(137) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat {
.preheader3878.preheader:
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
  %.sroa.04069.0.copyload = load <16 x i32>, ptr %6, align 64, !tbaa !29 ; 3 uses
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
  %.not38683994 = icmp eq ptr %i.ax, %i.az
  br i1 %.not38683994, label %._crit_edge, label %.lr.ph3996

.lr.ph3996:                                       ; preds = %.preheader3878.preheader
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

._crit_edge:                                      ; preds = %.loopexit, %.preheader3878.preheader
  ret void

bb.a:                                             ; preds = %.lr.ph3996, %.loopexit
  %.sroa.01816.03995 = phi ptr [ %i.ax, %.lr.ph3996 ], [ %i.cjq, %.loopexit ] ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.01816.03995, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !68 ; 3 uses
  %i.bs = and i32 %i.br, 127                      ; 2 uses
  %i.bt = mul nuw nsw i32 %i.bs, 3                ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.01816.03995, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !69 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.01816.03995, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !70 ; 10 uses
  %i.by = load i32, ptr %.sroa.01816.03995, align 4, !tbaa !71 ; 3 uses
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
  br i1 %i.da, label %bb.b, label %.loopexit3877

bb.b:                                             ; preds = %bb.a
  %i.ez = sext i32 %i.bv to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !92
  %i.fc = ashr i32 %i.ca, 1
  %i.fd = icmp eq i32 %i.fb, %i.fc
  br i1 %i.fd, label %.preheader3876, label %.loopexit3877

.preheader3876:                                   ; preds = %bb.b
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
  br label %.loopexit3877

.loopexit3877:                                    ; preds = %.preheader3876, %bb.b, %bb.a
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
  %.val.i655 = load float, ptr %i.hq, align 1, !tbaa !29, !noalias !94
  %i.hr = getelementptr i8, ptr %i.hk, i64 12
  %.val3.i656 = load float, ptr %i.hr, align 1, !tbaa !29, !noalias !94
  %i.hs = insertelement <4 x float> poison, float %.val.i655, i64 0
  %i.ht = insertelement <4 x float> poison, float %.val3.i656, i64 0
  %i.hu = shufflevector <4 x float> %i.hs, <4 x float> %i.ht, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.hv = fadd <16 x float> %i.cf, %i.hu          ; 6 uses
  %i.hw = sext i32 %i.hh to i64                   ; 2 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.hw ; 4 uses
  %.val.i658 = load float, ptr %i.hx, align 1, !tbaa !29, !noalias !95
  %i.hy = getelementptr i8, ptr %i.hx, i64 4
  %.val3.i659 = load float, ptr %i.hy, align 1, !tbaa !29, !noalias !95
  %i.hz = insertelement <4 x float> poison, float %.val.i658, i64 0
  %i.ia = insertelement <4 x float> poison, float %.val3.i659, i64 0
  %i.ib = shufflevector <4 x float> %i.hz, <4 x float> %i.ia, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ic = fadd <16 x float> %i.cl, %i.ib          ; 6 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.val.i661 = load float, ptr %i.id, align 1, !tbaa !29, !noalias !95
  %i.ie = getelementptr i8, ptr %i.hx, i64 12
  %.val3.i662 = load float, ptr %i.ie, align 1, !tbaa !29, !noalias !95
  %i.if = insertelement <4 x float> poison, float %.val.i661, i64 0
  %i.ig = insertelement <4 x float> poison, float %.val3.i662, i64 0
  %i.ih = shufflevector <4 x float> %i.if, <4 x float> %i.ig, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ii = fadd <16 x float> %i.cl, %i.ih          ; 6 uses
  %i.ij = sext i32 %i.hi to i64                   ; 2 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ij ; 4 uses
  %.val.i664 = load float, ptr %i.ik, align 1, !tbaa !29, !noalias !96
  %i.il = getelementptr i8, ptr %i.ik, i64 4
  %.val3.i665 = load float, ptr %i.il, align 1, !tbaa !29, !noalias !96
  %i.im = insertelement <4 x float> poison, float %.val.i664, i64 0
  %i.in = insertelement <4 x float> poison, float %.val3.i665, i64 0
  %i.io = shufflevector <4 x float> %i.im, <4 x float> %i.in, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ip = fadd <16 x float> %i.cr, %i.io          ; 6 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %.val.i667 = load float, ptr %i.iq, align 1, !tbaa !29, !noalias !96
  %i.ir = getelementptr i8, ptr %i.ik, i64 12
  %.val3.i668 = load float, ptr %i.ir, align 1, !tbaa !29, !noalias !96
  %i.is = insertelement <4 x float> poison, float %.val.i667, i64 0
  %i.it = insertelement <4 x float> poison, float %.val3.i668, i64 0
  %i.iu = shufflevector <4 x float> %i.is, <4 x float> %i.it, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.iv = fadd <16 x float> %i.cr, %i.iu          ; 6 uses
  br i1 %i.da, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit3877
  %i.iw = sext i32 %i.cs to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.iw ; 4 uses
  %.val.i670 = load float, ptr %i.ix, align 1, !tbaa !29, !noalias !97
  %i.iy = getelementptr i8, ptr %i.ix, i64 4
  %.val2.i = load float, ptr %i.iy, align 1, !tbaa !29, !noalias !97
  %i.iz = insertelement <4 x float> poison, float %.val.i670, i64 0
  %i.ja = insertelement <4 x float> poison, float %.val2.i, i64 0
  %i.jb = shufflevector <4 x float> %i.iz, <4 x float> %i.ja, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.jc = fmul <16 x float> %i.bn, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %.val.i671 = load float, ptr %i.jd, align 1, !tbaa !29, !noalias !97
  %i.je = getelementptr i8, ptr %i.ix, i64 12
  %.val2.i672 = load float, ptr %i.je, align 1, !tbaa !29, !noalias !97
  %i.jf = insertelement <4 x float> poison, float %.val.i671, i64 0
  %i.jg = insertelement <4 x float> poison, float %.val2.i672, i64 0
  %i.jh = shufflevector <4 x float> %i.jf, <4 x float> %i.jg, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ji = fmul <16 x float> %i.bn, %i.jh
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit3877
  %.sroa.03503.0 = phi <16 x float> [ %i.jc, %bb.c ], [ undef, %.loopexit3877 ] ; 4 uses
  %.sroa.73507.0 = phi <16 x float> [ %i.ji, %bb.c ], [ undef, %.loopexit3877 ] ; 4 uses
  %i.jj = sext i32 %i.cy to i64
  %i.jk = getelementptr [4 x i8], ptr %i.f, i64 %i.jj ; 8 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 32
  %.val616 = load float, ptr %i.jk, align 1, !tbaa !29
  %i.jm = getelementptr i8, ptr %i.jk, i64 4
  %.val617 = load float, ptr %i.jm, align 1, !tbaa !29
  %i.jn = insertelement <4 x float> poison, float %.val616, i64 0
  %i.jo = insertelement <4 x float> poison, float %.val617, i64 0
  %i.jp = shufflevector <4 x float> %i.jn, <4 x float> %i.jo, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %.val618 = load float, ptr %i.jl, align 1, !tbaa !29
  %i.jq = getelementptr i8, ptr %i.jk, i64 36
  %.val619 = load float, ptr %i.jq, align 1, !tbaa !29
  %i.jr = insertelement <4 x float> poison, float %.val618, i64 0
  %i.js = insertelement <4 x float> poison, float %.val619, i64 0
  %i.jt = shufflevector <4 x float> %i.jr, <4 x float> %i.js, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %.val616.1 = load float, ptr %i.ju, align 1, !tbaa !29
  %i.jv = getelementptr i8, ptr %i.jk, i64 12
  %.val617.1 = load float, ptr %i.jv, align 1, !tbaa !29
  %i.jw = insertelement <4 x float> poison, float %.val616.1, i64 0
  %i.jx = insertelement <4 x float> poison, float %.val617.1, i64 0
  %i.jy = shufflevector <4 x float> %i.jw, <4 x float> %i.jx, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.jz = getelementptr i8, ptr %i.jk, i64 40
  %.val618.1 = load float, ptr %i.jz, align 1, !tbaa !29
  %i.ka = getelementptr i8, ptr %i.jk, i64 44
  %.val619.1 = load float, ptr %i.ka, align 1, !tbaa !29
  %i.kb = insertelement <4 x float> poison, float %.val618.1, i64 0
  %i.kc = insertelement <4 x float> poison, float %.val619.1, i64 0
  %i.kd = shufflevector <4 x float> %i.kb, <4 x float> %i.kc, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.ke = icmp slt i32 %i.bv, %i.bx               ; 3 uses
  br i1 %i.dc, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.d
  br i1 %i.ke, label %.lr.ph3964, label %.critedge

.lr.ph3964:                                       ; preds = %.preheader
  %i.kf = sext i32 %i.bv to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph3964, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528
  %indvars.iv4041 = phi i64 [ %i.kf, %.lr.ph3964 ], [ %indvars.iv.next4042, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 4 uses
  %.sroa.163396.03962 = phi <16 x float> [ zeroinitializer, %.lr.ph3964 ], [ %i.wy, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %.sroa.03389.03961 = phi <16 x float> [ zeroinitializer, %.lr.ph3964 ], [ %i.wx, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %.sroa.163378.03960 = phi <16 x float> [ zeroinitializer, %.lr.ph3964 ], [ %i.xa, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %.sroa.03371.03959 = phi <16 x float> [ zeroinitializer, %.lr.ph3964 ], [ %i.wz, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %.sroa.16.03958 = phi <16 x float> [ zeroinitializer, %.lr.ph3964 ], [ %i.xc, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %.sroa.03354.03957 = phi <16 x float> [ zeroinitializer, %.lr.ph3964 ], [ %i.xb, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ] ; 2 uses
  %i.kg = load ptr, ptr %i.au, align 8, !tbaa !62
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv4041
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !84
  %.not519 = icmp eq i32 %i.kj, -1
  br i1 %.not519, label %.critedge.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527: ; preds = %bb.e
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv4041 ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !92 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !98
  %i.ko = insertelement <16 x i32> poison, i32 %i.kn, i64 0
  %i.kp = shufflevector <16 x i32> %i.ko, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.kq = and <16 x i32> %.sroa.04069.0.copyload, %i.kp
  %i.kr = icmp ne <16 x i32> %i.kq, zeroinitializer ; 4 uses
  %i.ks = and <16 x i32> %.sroa.6.0.copyload, %i.kp
  %.not4093 = icmp eq <16 x i32> %i.ks, zeroinitializer ; 2 uses
  %i.kt = shl nsw i32 %i.kl, 3
  %i.ku = mul nsw i32 %i.kl, 24
  %i.kv = sext i32 %i.ku to i64                   ; 2 uses
  %i.kw = getelementptr [4 x i8], ptr %i.at, i64 %i.kv ; 3 uses
  %.val6204263 = load <8 x float>, ptr %i.kw, align 32, !tbaa !29
  %i.kx = shufflevector <8 x float> %.val6204263, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kw, i64 32
  %.val6214264 = load <8 x float>, ptr %i.ky, align 32, !tbaa !29
  %i.kz = shufflevector <8 x float> %.val6214264, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.la = getelementptr i8, ptr %i.kw, i64 64
  %.val6224265 = load <8 x float>, ptr %i.la, align 32, !tbaa !29
  %i.lb = shufflevector <8 x float> %.val6224265, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
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

bb.f:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527
  %i.ly = and i16 %i.lt, %i.p
  %i.lz = and i16 %i.lv, %i.q
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528

bb.g:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit527
  %i.ma = or disjoint i32 %i.lw, 1
  %i.mb = icmp eq i32 %i.ma, %i.ca
  br i1 %i.mb, label %bb.h, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528

bb.h:                                             ; preds = %bb.g
  %i.mc = and i16 %i.lt, %i.r
  %i.md = and i16 %i.lv, %i.s
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528: ; preds = %bb.f, %bb.g, %bb.h
  %.sroa.03664.0 = phi i16 [ %i.ly, %bb.f ], [ %i.mc, %bb.h ], [ %i.lt, %bb.g ]
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
  %.val6234266 = load <8 x float>, ptr %i.mr, align 32, !tbaa !29
  %i.ms = shufflevector <8 x float> %.val6234266, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.mt = fmul <16 x float> %.sroa.03503.0, %i.ms ; 2 uses
  %i.mu = fmul <16 x float> %.sroa.73507.0, %i.ms ; 2 uses
  %i.mv = bitcast i16 %.sroa.03664.0 to <16 x i1> ; 4 uses
  %i.mw = select <16 x i1> %i.mv, <16 x float> %i.mk, <16 x float> zeroinitializer ; 4 uses
  %i.mx = bitcast i16 %.sroa.11.0 to <16 x i1>    ; 3 uses
  %i.my = select <16 x i1> %i.mx, <16 x float> %i.mp, <16 x float> zeroinitializer ; 3 uses
  %i.mz = fmul <16 x float> %i.mw, %i.mw
  %i.na = fmul <16 x float> %i.my, %i.my
  %i.nb = select <16 x i1> %i.kr, <16 x float> %i.mw, <16 x float> zeroinitializer ; 2 uses
  %i.nc = select <16 x i1> %.not4093, <16 x float> zeroinitializer, <16 x float> %i.my ; 2 uses
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
  %i.pz = select <16 x i1> %.not4093, <16 x float> zeroinitializer, <16 x float> %i.ae
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
  %.val6244267 = load <8 x float>, ptr %i.qj, align 32, !tbaa !29
  %i.qk = shufflevector <8 x float> %.val6244267, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ql = getelementptr i8, ptr %i.qj, i64 32
  %.val6254268 = load <8 x float>, ptr %i.ql, align 32, !tbaa !29
  %i.qm = shufflevector <8 x float> %.val6254268, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qn = fadd <16 x float> %i.jp, %i.qk          ; 3 uses
  %i.qo = fmul <16 x float> %i.jt, %i.qm          ; 2 uses
  %i.qp = fmul <16 x float> %i.mw, %i.qn          ; 2 uses
  %i.qq = fmul <16 x float> %i.qp, %i.qp          ; 3 uses
  %i.qr = fmul <16 x float> %i.qq, %i.qq
  %i.qs = fmul <16 x float> %i.qq, %i.qr
  %i.qt = select <16 x i1> %i.kr, <16 x float> %i.qs, <16 x float> zeroinitializer ; 2 uses
  %i.qu = fmul <16 x float> %i.qo, %i.qt          ; 3 uses
  %i.qv = fmul <16 x float> %i.qt, %i.qu          ; 2 uses
  %i.qw = fsub <16 x float> %i.qv, %i.qu
  %i.qx = fmul <16 x float> %i.qn, %i.qn          ; 3 uses
  %i.qy = fmul <16 x float> %i.qx, %i.qx
  %i.qz = fmul <16 x float> %i.qx, %i.qy          ; 2 uses
  %i.ra = fmul <16 x float> %i.qo, %i.qz          ; 2 uses
  %i.rb = fmul <16 x float> %i.qz, %i.ra
  %i.rc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ra, <16 x float> %i.ah, <16 x float> %i.qu)
  %i.rd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rb, <16 x float> %i.ak, <16 x float> %i.qv)
  %i.re = fmul <16 x float> %i.rc, splat (float f0xBE2AAAAB)
  %i.rf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rd, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.re)
  %i.rg = select <16 x i1> %i.mv, <16 x i1> %i.kr, <16 x i1> zeroinitializer
  %i.rh = select <16 x i1> %i.rg, <16 x float> %i.rf, <16 x float> zeroinitializer ; 2 uses
  %i.ri = load ptr, ptr %i.bc, align 8, !tbaa !83
  %i.rj = load i32, ptr %i.bo, align 8, !tbaa !99
  %i.rk = sext i32 %i.lw to i64
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.ri, i64 %i.rk
  %i.rm = load i32, ptr %i.bp, align 4, !tbaa !100
  %i.rn = load i32, ptr %i.bm, align 8, !tbaa !93
  %i.ro = load <2 x i32>, ptr %i.rl, align 4, !tbaa !84 ; 2 uses
  %i.rp = insertelement <2 x i32> poison, i32 %i.rj, i64 0
end_hunk_0
begin_hunk_1_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader3878.preheader
  %i.afe = load <8 x float>, ptr %i.afc, align 32, !tbaa !29
  %i.aff = fadd <8 x float> %i.aey, %i.afe
  store <8 x float> %i.aff, ptr %i.afc, align 32, !tbaa !29
  %i.afg = load <8 x float>, ptr %i.afd, align 32, !tbaa !29
  %i.afh = fadd <8 x float> %i.afg, %i.aez
  store <8 x float> %i.afh, ptr %i.afd, align 32, !tbaa !29
  %i.afi = extractelement <4 x i32> %i.aet, i64 1
  %i.afj = sext i32 %i.afi to i64                 ; 6 uses
  %i.afk = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %i.afj
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 32 ; 2 uses
  %i.afm = getelementptr inbounds [4 x i8], ptr %i.aex, i64 %i.afj
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 32 ; 2 uses
  %i.afo = load <8 x float>, ptr %i.afl, align 32, !tbaa !29
  %i.afp = fadd <8 x float> %i.aey, %i.afo
  store <8 x float> %i.afp, ptr %i.afl, align 32, !tbaa !29
  %i.afq = load <8 x float>, ptr %i.afn, align 32, !tbaa !29
  %i.afr = fadd <8 x float> %i.afq, %i.aez
  store <8 x float> %i.afr, ptr %i.afn, align 32, !tbaa !29
  %i.afs = extractelement <4 x i32> %i.aet, i64 2
  %i.aft = sext i32 %i.afs to i64                 ; 6 uses
  %i.afu = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %i.aft
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 64 ; 2 uses
  %i.afw = getelementptr inbounds [4 x i8], ptr %i.aex, i64 %i.aft
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 64 ; 2 uses
  %i.afy = load <8 x float>, ptr %i.afv, align 32, !tbaa !29
  %i.afz = fadd <8 x float> %i.aey, %i.afy
  store <8 x float> %i.afz, ptr %i.afv, align 32, !tbaa !29
  %i.aga = load <8 x float>, ptr %i.afx, align 32, !tbaa !29
  %i.agb = fadd <8 x float> %i.aga, %i.aez
  store <8 x float> %i.agb, ptr %i.afx, align 32, !tbaa !29
  %i.agc = extractelement <4 x i32> %i.aet, i64 3
  %i.agd = sext i32 %i.agc to i64                 ; 6 uses
  %i.age = getelementptr inbounds [4 x i8], ptr %i.aev, i64 %i.agd
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 96 ; 2 uses
  %i.agg = getelementptr inbounds [4 x i8], ptr %i.aex, i64 %i.agd
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 96 ; 2 uses
  %i.agi = load <8 x float>, ptr %i.agf, align 32, !tbaa !29
  %i.agj = fadd <8 x float> %i.aey, %i.agi
  store <8 x float> %i.agj, ptr %i.agf, align 32, !tbaa !29
  %i.agk = load <8 x float>, ptr %i.agh, align 32, !tbaa !29
  %i.agl = fadd <8 x float> %i.agk, %i.aez
  store <8 x float> %i.agl, ptr %i.agh, align 32, !tbaa !29
  %i.agm = load ptr, ptr %i.bi, align 8, !tbaa !89 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 16
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !90 ; 4 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agm, i64 24
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !90 ; 4 uses
  %i.agr = shufflevector <16 x float> %i.ada, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ags = shufflevector <16 x float> %i.ada, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.agt = getelementptr inbounds [4 x i8], ptr %i.ago, i64 %i.afb ; 2 uses
  %i.agu = getelementptr inbounds [4 x i8], ptr %i.agq, i64 %i.afb ; 2 uses
  %i.agv = load <8 x float>, ptr %i.agt, align 32, !tbaa !29
  %i.agw = fadd <8 x float> %i.agr, %i.agv
  store <8 x float> %i.agw, ptr %i.agt, align 32, !tbaa !29
  %i.agx = load <8 x float>, ptr %i.agu, align 32, !tbaa !29
  %i.agy = fadd <8 x float> %i.agx, %i.ags
  store <8 x float> %i.agy, ptr %i.agu, align 32, !tbaa !29
  %i.agz = getelementptr inbounds [4 x i8], ptr %i.ago, i64 %i.afj
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 32 ; 2 uses
  %i.ahb = getelementptr inbounds [4 x i8], ptr %i.agq, i64 %i.afj
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 32 ; 2 uses
  %i.ahd = load <8 x float>, ptr %i.aha, align 32, !tbaa !29
  %i.ahe = fadd <8 x float> %i.agr, %i.ahd
  store <8 x float> %i.ahe, ptr %i.aha, align 32, !tbaa !29
  %i.ahf = load <8 x float>, ptr %i.ahc, align 32, !tbaa !29
  %i.ahg = fadd <8 x float> %i.ahf, %i.ags
  store <8 x float> %i.ahg, ptr %i.ahc, align 32, !tbaa !29
  %i.ahh = getelementptr inbounds [4 x i8], ptr %i.ago, i64 %i.aft
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 64 ; 2 uses
  %i.ahj = getelementptr inbounds [4 x i8], ptr %i.agq, i64 %i.aft
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 64 ; 2 uses
  %i.ahl = load <8 x float>, ptr %i.ahi, align 32, !tbaa !29
  %i.ahm = fadd <8 x float> %i.agr, %i.ahl
  store <8 x float> %i.ahm, ptr %i.ahi, align 32, !tbaa !29
  %i.ahn = load <8 x float>, ptr %i.ahk, align 32, !tbaa !29
  %i.aho = fadd <8 x float> %i.ahn, %i.ags
  store <8 x float> %i.aho, ptr %i.ahk, align 32, !tbaa !29
  %i.ahp = getelementptr inbounds [4 x i8], ptr %i.ago, i64 %i.agd
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 96 ; 2 uses
  %i.ahr = getelementptr inbounds [4 x i8], ptr %i.agq, i64 %i.agd
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 96 ; 2 uses
  %i.aht = load <8 x float>, ptr %i.ahq, align 32, !tbaa !29
  %i.ahu = fadd <8 x float> %i.agr, %i.aht
  store <8 x float> %i.ahu, ptr %i.ahq, align 32, !tbaa !29
  %i.ahv = load <8 x float>, ptr %i.ahs, align 32, !tbaa !29
  %i.ahw = fadd <8 x float> %i.ahv, %i.ags
  store <8 x float> %i.ahw, ptr %i.ahs, align 32, !tbaa !29
  %i.ahx = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !90 ; 4 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !90 ; 4 uses
  %i.aib = shufflevector <16 x float> %i.adz, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.aic = shufflevector <16 x float> %i.adz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aid = getelementptr inbounds [4 x i8], ptr %i.ahy, i64 %i.afb ; 2 uses
  %i.aie = getelementptr inbounds [4 x i8], ptr %i.aia, i64 %i.afb ; 2 uses
  %i.aif = load <8 x float>, ptr %i.aid, align 32, !tbaa !29
  %i.aig = fadd <8 x float> %i.aib, %i.aif
  store <8 x float> %i.aig, ptr %i.aid, align 32, !tbaa !29
  %i.aih = load <8 x float>, ptr %i.aie, align 32, !tbaa !29
  %i.aii = fadd <8 x float> %i.aih, %i.aic
  store <8 x float> %i.aii, ptr %i.aie, align 32, !tbaa !29
  %i.aij = getelementptr inbounds [4 x i8], ptr %i.ahy, i64 %i.afj
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 32 ; 2 uses
  %i.ail = getelementptr inbounds [4 x i8], ptr %i.aia, i64 %i.afj
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 32 ; 2 uses
  %i.ain = load <8 x float>, ptr %i.aik, align 32, !tbaa !29
  %i.aio = fadd <8 x float> %i.aib, %i.ain
  store <8 x float> %i.aio, ptr %i.aik, align 32, !tbaa !29
  %i.aip = load <8 x float>, ptr %i.aim, align 32, !tbaa !29
  %i.aiq = fadd <8 x float> %i.aip, %i.aic
  store <8 x float> %i.aiq, ptr %i.aim, align 32, !tbaa !29
  %i.air = getelementptr inbounds [4 x i8], ptr %i.ahy, i64 %i.aft
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 64 ; 2 uses
  %i.ait = getelementptr inbounds [4 x i8], ptr %i.aia, i64 %i.aft
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 64 ; 2 uses
  %i.aiv = load <8 x float>, ptr %i.ais, align 32, !tbaa !29
  %i.aiw = fadd <8 x float> %i.aib, %i.aiv
  store <8 x float> %i.aiw, ptr %i.ais, align 32, !tbaa !29
  %i.aix = load <8 x float>, ptr %i.aiu, align 32, !tbaa !29
  %i.aiy = fadd <8 x float> %i.aix, %i.aic
  store <8 x float> %i.aiy, ptr %i.aiu, align 32, !tbaa !29
  %i.aiz = getelementptr inbounds [4 x i8], ptr %i.ahy, i64 %i.agd
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 96 ; 2 uses
  %i.ajb = getelementptr inbounds [4 x i8], ptr %i.aia, i64 %i.agd
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 96 ; 2 uses
  %i.ajd = load <8 x float>, ptr %i.aja, align 32, !tbaa !29
  %i.aje = fadd <8 x float> %i.aib, %i.ajd
  store <8 x float> %i.aje, ptr %i.aja, align 32, !tbaa !29
  %i.ajf = load <8 x float>, ptr %i.ajc, align 32, !tbaa !29
  %i.ajg = fadd <8 x float> %i.ajf, %i.aic
  store <8 x float> %i.ajg, ptr %i.ajc, align 32, !tbaa !29
  %i.ajh = fadd <16 x float> %i.acr, %i.adp
  %i.aji = fmul <16 x float> %i.zx, %i.ajh        ; 3 uses
  %i.ajj = fmul <16 x float> %i.zy, %i.acs        ; 3 uses
  %i.ajk = fmul <16 x float> %i.ym, %i.aji        ; 2 uses
  %i.ajl = fmul <16 x float> %i.yn, %i.ajj        ; 2 uses
  %i.ajm = fmul <16 x float> %i.yo, %i.aji        ; 2 uses
  %i.ajn = fmul <16 x float> %i.yp, %i.ajj        ; 2 uses
  %i.ajo = fmul <16 x float> %i.yq, %i.aji        ; 2 uses
  %i.ajp = fmul <16 x float> %i.yr, %i.ajj        ; 2 uses
  %i.ajq = fadd <16 x float> %.sroa.03389.13984, %i.ajk ; 2 uses
  %i.ajr = fadd <16 x float> %.sroa.163396.13985, %i.ajl ; 2 uses
  %i.ajs = fadd <16 x float> %.sroa.03371.13982, %i.ajm ; 2 uses
  %i.ajt = fadd <16 x float> %.sroa.163378.13983, %i.ajn ; 2 uses
  %i.aju = fadd <16 x float> %.sroa.03354.13980, %i.ajo ; 2 uses
  %i.ajv = fadd <16 x float> %.sroa.16.13981, %i.ajp ; 2 uses
  %i.ajw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.yf ; 4 uses
  %i.ajx = fadd <16 x float> %i.ajl, %i.ajk       ; 2 uses
  %i.ajy = fadd <16 x float> %i.ajn, %i.ajm       ; 2 uses
  %i.ajz = fadd <16 x float> %i.ajp, %i.ajo       ; 2 uses
  %i.aka = load <8 x float>, ptr %i.ajw, align 32, !tbaa !29
  %i.akb = shufflevector <16 x float> %i.ajx, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.akc = shufflevector <16 x float> %i.ajx, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akd = fadd <8 x float> %i.akb, %i.akc
  %i.ake = fsub <8 x float> %i.aka, %i.akd
  store <8 x float> %i.ake, ptr %i.ajw, align 32, !tbaa !29
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajw, i64 32 ; 2 uses
  %i.akg = load <8 x float>, ptr %i.akf, align 32, !tbaa !29
  %i.akh = shufflevector <16 x float> %i.ajy, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aki = shufflevector <16 x float> %i.ajy, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akj = fadd <8 x float> %i.akh, %i.aki
  %i.akk = fsub <8 x float> %i.akg, %i.akj
  store <8 x float> %i.akk, ptr %i.akf, align 32, !tbaa !29
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ajw, i64 64 ; 2 uses
  %i.akm = load <8 x float>, ptr %i.akl, align 32, !tbaa !29
  %i.akn = shufflevector <16 x float> %i.ajz, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ako = shufflevector <16 x float> %i.ajz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akp = fadd <8 x float> %i.akn, %i.ako
  %i.akq = fsub <8 x float> %i.akm, %i.akp
  store <8 x float> %i.akq, ptr %i.akl, align 32, !tbaa !29
  %indvars.iv.next4047 = add nsw i64 %indvars.iv4046, 1 ; 2 uses
  %exitcond4050.not = icmp eq i64 %indvars.iv.next4047, %wide.trip.count4049
  br i1 %exitcond4050.not, label %.loopexit, label %bb.i, !llvm.loop !18

bb.j:                                             ; preds = %bb.d
  br i1 %i.da, label %.preheader3873, label %.preheader3875

.preheader3875:                                   ; preds = %bb.j
  br i1 %i.ke, label %.lr.ph, label %.critedge5

.lr.ph:                                           ; preds = %.preheader3875
  %i.akr = sext i32 %i.bv to i64
  %wide.trip.count = sext i32 %i.bx to i64
  br label %bb.p

.preheader3873:                                   ; preds = %bb.j
  br i1 %i.ke, label %.lr.ph3926, label %.critedge3

.lr.ph3926:                                       ; preds = %.preheader3873
  %i.aks = sext i32 %i.bv to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph3926, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit
  %indvars.iv4029 = phi i64 [ %i.aks, %.lr.ph3926 ], [ %indvars.iv.next4030, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 4 uses
  %.sroa.163396.23924 = phi <16 x float> [ zeroinitializer, %.lr.ph3926 ], [ %i.azt, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03389.23923 = phi <16 x float> [ zeroinitializer, %.lr.ph3926 ], [ %i.azs, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163378.23922 = phi <16 x float> [ zeroinitializer, %.lr.ph3926 ], [ %i.azv, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03371.23921 = phi <16 x float> [ zeroinitializer, %.lr.ph3926 ], [ %i.azu, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.23920 = phi <16 x float> [ zeroinitializer, %.lr.ph3926 ], [ %i.azx, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03354.23919 = phi <16 x float> [ zeroinitializer, %.lr.ph3926 ], [ %i.azw, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.akt = load ptr, ptr %i.au, align 8, !tbaa !62
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %i.akt, i64 %indvars.iv4029
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 4
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !84
  %.not518 = icmp eq i32 %i.akw, -1
  br i1 %.not518, label %.critedge3.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit523

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit523: ; preds = %bb.k
  %i.akx = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv4029 ; 2 uses
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !92 ; 4 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akx, i64 4
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !98
  %i.alb = insertelement <16 x i32> poison, i32 %i.ala, i64 0
  %i.alc = shufflevector <16 x i32> %i.alb, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ald = and <16 x i32> %.sroa.04069.0.copyload, %i.alc
  %i.ale = icmp ne <16 x i32> %i.ald, zeroinitializer ; 4 uses
  %i.alf = and <16 x i32> %.sroa.6.0.copyload, %i.alc
  %i.alg = icmp ne <16 x i32> %i.alf, zeroinitializer ; 4 uses
  %i.alh = shl nsw i32 %i.aky, 3
  %i.ali = mul nsw i32 %i.aky, 24
  %i.alj = sext i32 %i.ali to i64                 ; 2 uses
  %i.alk = getelementptr [4 x i8], ptr %i.at, i64 %i.alj ; 3 uses
  %.val6324251 = load <8 x float>, ptr %i.alk, align 32, !tbaa !29
  %i.all = shufflevector <8 x float> %.val6324251, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.alm = getelementptr i8, ptr %i.alk, i64 32
  %.val6334252 = load <8 x float>, ptr %i.alm, align 32, !tbaa !29
  %i.aln = shufflevector <8 x float> %.val6334252, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.alo = getelementptr i8, ptr %i.alk, i64 64
  %.val6344253 = load <8 x float>, ptr %i.alo, align 32, !tbaa !29
  %i.alp = shufflevector <8 x float> %.val6344253, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.alq = fsub <16 x float> %i.hp, %i.all        ; 3 uses
  %i.alr = fsub <16 x float> %i.hv, %i.all        ; 3 uses
  %i.als = fsub <16 x float> %i.ic, %i.aln        ; 3 uses
  %i.alt = fsub <16 x float> %i.ii, %i.aln        ; 3 uses
  %i.alu = fsub <16 x float> %i.ip, %i.alp        ; 3 uses
  %i.alv = fsub <16 x float> %i.iv, %i.alp        ; 3 uses
  %i.alw = fmul <16 x float> %i.alq, %i.alq
  %i.alx = fmul <16 x float> %i.als, %i.als
  %i.aly = fadd <16 x float> %i.alw, %i.alx
  %i.alz = fmul <16 x float> %i.alu, %i.alu
  %i.ama = fadd <16 x float> %i.aly, %i.alz       ; 2 uses
  %i.amb = fmul <16 x float> %i.alr, %i.alr
  %i.amc = fmul <16 x float> %i.alt, %i.alt
  %i.amd = fadd <16 x float> %i.amb, %i.amc
  %i.ame = fmul <16 x float> %i.alv, %i.alv
  %i.amf = fadd <16 x float> %i.amd, %i.ame       ; 2 uses
  %i.amg = fcmp olt <16 x float> %i.ama, %i.ap
  %i.amh = bitcast <16 x i1> %i.amg to i16        ; 3 uses
  %i.ami = fcmp olt <16 x float> %i.amf, %i.ap
  %i.amj = bitcast <16 x i1> %i.ami to i16        ; 3 uses
  %i.amk = shl nsw i32 %i.aky, 1                  ; 3 uses
  %i.aml = icmp eq i32 %i.amk, %i.ca
  br i1 %i.aml, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit523
  %i.amm = and i16 %i.amh, %i.p
  %i.amn = and i16 %i.amj, %i.q
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.m:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit523
  %i.amo = or disjoint i32 %i.amk, 1
  %i.amp = icmp eq i32 %i.amo, %i.ca
  br i1 %i.amp, label %bb.n, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.n:                                             ; preds = %bb.m
  %i.amq = and i16 %i.amh, %i.r
  %i.amr = and i16 %i.amj, %i.s
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.03756.0 = phi i16 [ %i.amm, %bb.l ], [ %i.amq, %bb.n ], [ %i.amh, %bb.m ]
  %.sroa.113759.0 = phi i16 [ %i.amn, %bb.l ], [ %i.amr, %bb.n ], [ %i.amj, %bb.m ]
  %i.ams = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ama, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.amt = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.amf, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.amu = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.ams, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.amv = fmul <16 x float> %i.ams, %i.amu
  %i.amw = fmul <16 x float> %i.amu, splat (float -5.000000e-01)
  %i.amx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.amv, <16 x float> %i.amu, <16 x float> splat (float -3.000000e+00))
  %i.amy = fmul <16 x float> %i.amw, %i.amx
  %i.amz = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.amt, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.ana = fmul <16 x float> %i.amt, %i.amz
  %i.anb = fmul <16 x float> %i.amz, splat (float -5.000000e-01)
  %i.anc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ana, <16 x float> %i.amz, <16 x float> splat (float -3.000000e+00))
  %i.and = fmul <16 x float> %i.anb, %i.anc
  %i.ane = sext i32 %i.alh to i64
  %i.anf = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ane
  %.val6354254 = load <8 x float>, ptr %i.anf, align 32, !tbaa !29
  %i.ang = shufflevector <8 x float> %.val6354254, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.anh = fmul <16 x float> %.sroa.03503.0, %i.ang ; 2 uses
  %i.ani = fmul <16 x float> %.sroa.73507.0, %i.ang ; 2 uses
  %i.anj = bitcast i16 %.sroa.03756.0 to <16 x i1> ; 4 uses
  %i.ank = select <16 x i1> %i.anj, <16 x float> %i.amy, <16 x float> zeroinitializer ; 4 uses
  %i.anl = bitcast i16 %.sroa.113759.0 to <16 x i1> ; 4 uses
  %i.anm = select <16 x i1> %i.anl, <16 x float> %i.and, <16 x float> zeroinitializer ; 4 uses
  %i.ann = fmul <16 x float> %i.ank, %i.ank
  %i.ano = fmul <16 x float> %i.anm, %i.anm
  %i.anp = select <16 x i1> %i.ale, <16 x float> %i.ank, <16 x float> zeroinitializer ; 2 uses
  %i.anq = select <16 x i1> %i.alg, <16 x float> %i.anm, <16 x float> zeroinitializer ; 2 uses
  %i.anr = select <16 x i1> %i.anj, <16 x float> %i.ams, <16 x float> zeroinitializer
  %i.ans = fmul <16 x float> %i.x, %i.anr         ; 7 uses
  %i.ant = select <16 x i1> %i.anl, <16 x float> %i.amt, <16 x float> zeroinitializer
  %i.anu = fmul <16 x float> %i.x, %i.ant         ; 7 uses
  %i.anv = fmul <16 x float> %i.ans, %i.ans       ; 15 uses
  %i.anw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anv, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.anx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anv, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.any = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anw, <16 x float> %i.anv, <16 x float> splat (float 1.000000e+00))
  %i.anz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anx, <16 x float> %i.ans, <16 x float> %i.any) ; 2 uses
  %i.aoa = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.anz, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.aob = fneg <16 x float> %i.aoa
  %i.aoc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aob, <16 x float> %i.anz, <16 x float> splat (float 2.000000e+00))
  %i.aod = fmul <16 x float> %i.aoa, %i.aoc
  %i.aoe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anv, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.aof = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anv, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.aog = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoe, <16 x float> %i.anv, <16 x float> splat (float f0xBC9DED90))
  %i.aoh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aof, <16 x float> %i.anv, <16 x float> splat (float f0x3D8EAF3B))
  %i.aoi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aog, <16 x float> %i.anv, <16 x float> splat (float f0xBF409397))
  %i.aoj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoh, <16 x float> %i.ans, <16 x float> %i.aoi)
  %i.aok = fmul <16 x float> %i.aoj, %i.aod
  %i.aol = fmul <16 x float> %i.v, %i.aok
  %i.aom = fmul <16 x float> %i.anu, %i.anu       ; 15 uses
  %i.aon = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aom, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.aoo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aom, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.aop = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aon, <16 x float> %i.aom, <16 x float> splat (float 1.000000e+00))
  %i.aoq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoo, <16 x float> %i.anu, <16 x float> %i.aop) ; 2 uses
  %i.aor = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.aoq, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.aos = fneg <16 x float> %i.aor
  %i.aot = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aos, <16 x float> %i.aoq, <16 x float> splat (float 2.000000e+00))
  %i.aou = fmul <16 x float> %i.aor, %i.aot
  %i.aov = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aom, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.aow = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aom, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.aox = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aov, <16 x float> %i.aom, <16 x float> splat (float f0xBC9DED90))
  %i.aoy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aow, <16 x float> %i.aom, <16 x float> splat (float f0x3D8EAF3B))
  %i.aoz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aox, <16 x float> %i.aom, <16 x float> splat (float f0xBF409397))
  %i.apa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoy, <16 x float> %i.anu, <16 x float> %i.aoz)
  %i.apb = fmul <16 x float> %i.apa, %i.aou
  %i.apc = fmul <16 x float> %i.v, %i.apb
  %i.apd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aol, <16 x float> %i.ans, <16 x float> %i.anp)
  %i.ape = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apc, <16 x float> %i.anu, <16 x float> %i.anq)
  %i.apf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anv, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.apg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anv, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.aph = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apf, <16 x float> %i.ans, <16 x float> %i.apg) ; 2 uses
  %i.api = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.aph, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.apj = fneg <16 x float> %i.api
  %i.apk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apj, <16 x float> %i.aph, <16 x float> splat (float 2.000000e+00))
  %i.apl = fmul <16 x float> %i.api, %i.apk
  %i.apm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anv, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.apn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anv, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.apo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apm, <16 x float> %i.anv, <16 x float> splat (float f0x3D1E57D6))
  %i.app = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apn, <16 x float> %i.anv, <16 x float> splat (float f0x3DE71E23))
  %i.apq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apo, <16 x float> %i.anv, <16 x float> splat (float f0x3F906EC3))
  %i.apr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.app, <16 x float> %i.ans, <16 x float> %i.apq)
  %i.aps = fmul <16 x float> %i.apr, %i.apl
  %i.apt = fmul <16 x float> %i.v, %i.aps
  %i.apu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aom, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.apv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aom, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.apw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apu, <16 x float> %i.anu, <16 x float> %i.apv) ; 2 uses
  %i.apx = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.apw, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.apy = fneg <16 x float> %i.apx
  %i.apz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apy, <16 x float> %i.apw, <16 x float> splat (float 2.000000e+00))
  %i.aqa = fmul <16 x float> %i.apx, %i.apz
  %i.aqb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aom, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.aqc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aom, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.aqd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqb, <16 x float> %i.aom, <16 x float> splat (float f0x3D1E57D6))
  %i.aqe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqc, <16 x float> %i.aom, <16 x float> splat (float f0x3DE71E23))
  %i.aqf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqd, <16 x float> %i.aom, <16 x float> splat (float f0x3F906EC3))
  %i.aqg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqe, <16 x float> %i.anu, <16 x float> %i.aqf)
  %i.aqh = fmul <16 x float> %i.aqg, %i.aqa
  %i.aqi = fmul <16 x float> %i.v, %i.aqh
  %i.aqj = fmul <16 x float> %i.anh, %i.apd
  %i.aqk = fmul <16 x float> %i.ani, %i.ape
  %i.aql = select <16 x i1> %i.ale, <16 x float> %i.ae, <16 x float> zeroinitializer
  %i.aqm = fadd <16 x float> %i.aql, %i.apt
  %i.aqn = select <16 x i1> %i.alg, <16 x float> %i.ae, <16 x float> zeroinitializer
  %i.aqo = fadd <16 x float> %i.aqn, %i.aqi
  %i.aqp = fsub <16 x float> %i.anp, %i.aqm
  %i.aqq = fmul <16 x float> %i.anh, %i.aqp
  %i.aqr = fsub <16 x float> %i.anq, %i.aqo
  %i.aqs = fmul <16 x float> %i.ani, %i.aqr
  %i.aqt = select <16 x i1> %i.anj, <16 x float> %i.aqq, <16 x float> zeroinitializer ; 2 uses
  %i.aqu = select <16 x i1> %i.anl, <16 x float> %i.aqs, <16 x float> zeroinitializer ; 2 uses
  %i.aqv = shl nsw i32 %i.aky, 4
  %i.aqw = sext i32 %i.aqv to i64
  %i.aqx = getelementptr [4 x i8], ptr %i.f, i64 %i.aqw ; 2 uses
  %.val6364255 = load <8 x float>, ptr %i.aqx, align 32, !tbaa !29
  %i.aqy = shufflevector <8 x float> %.val6364255, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aqz = getelementptr i8, ptr %i.aqx, i64 32
  %.val6374256 = load <8 x float>, ptr %i.aqz, align 32, !tbaa !29
  %i.ara = shufflevector <8 x float> %.val6374256, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.arb = fadd <16 x float> %i.jp, %i.aqy        ; 3 uses
  %i.arc = fadd <16 x float> %i.jy, %i.aqy        ; 3 uses
  %i.ard = fmul <16 x float> %i.jt, %i.ara        ; 2 uses
  %i.are = fmul <16 x float> %i.kd, %i.ara        ; 2 uses
  %i.arf = fmul <16 x float> %i.ank, %i.arb       ; 2 uses
  %i.arg = fmul <16 x float> %i.anm, %i.arc       ; 2 uses
  %i.arh = fmul <16 x float> %i.arf, %i.arf       ; 3 uses
  %i.ari = fmul <16 x float> %i.arg, %i.arg       ; 3 uses
  %i.arj = fmul <16 x float> %i.arh, %i.arh
  %i.ark = fmul <16 x float> %i.arh, %i.arj
  %i.arl = fmul <16 x float> %i.ari, %i.ari
  %i.arm = fmul <16 x float> %i.ari, %i.arl
  %i.arn = select <16 x i1> %i.ale, <16 x float> %i.ark, <16 x float> zeroinitializer ; 2 uses
  %i.aro = select <16 x i1> %i.alg, <16 x float> %i.arm, <16 x float> zeroinitializer ; 2 uses
  %i.arp = fmul <16 x float> %i.ard, %i.arn       ; 3 uses
  %i.arq = fmul <16 x float> %i.are, %i.aro       ; 3 uses
  %i.arr = fmul <16 x float> %i.arn, %i.arp       ; 2 uses
  %i.ars = fmul <16 x float> %i.aro, %i.arq       ; 2 uses
  %i.art = fsub <16 x float> %i.arr, %i.arp
  %i.aru = fsub <16 x float> %i.ars, %i.arq
  %i.arv = fmul <16 x float> %i.arb, %i.arb       ; 3 uses
  %i.arw = fmul <16 x float> %i.arc, %i.arc       ; 3 uses
  %i.arx = fmul <16 x float> %i.arv, %i.arv
  %i.ary = fmul <16 x float> %i.arv, %i.arx       ; 2 uses
  %i.arz = fmul <16 x float> %i.arw, %i.arw
  %i.asa = fmul <16 x float> %i.arw, %i.arz       ; 2 uses
  %i.asb = fmul <16 x float> %i.ard, %i.ary       ; 2 uses
  %i.asc = fmul <16 x float> %i.are, %i.asa       ; 2 uses
  %i.asd = fmul <16 x float> %i.ary, %i.asb
end_hunk_1
begin_hunk_2_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader3878.preheader
  %i.bjp = fadd <8 x float> %i.bjo, %i.bin
  store <8 x float> %i.bjp, ptr %i.bjl, align 32, !tbaa !29
  %i.bjq = extractelement <4 x i32> %i.bih, i64 3
  %i.bjr = sext i32 %i.bjq to i64                 ; 8 uses
  %i.bjs = getelementptr inbounds [4 x i8], ptr %i.bij, i64 %i.bjr
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjs, i64 96 ; 2 uses
  %i.bju = getelementptr inbounds [4 x i8], ptr %i.bil, i64 %i.bjr
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bju, i64 96 ; 2 uses
  %i.bjw = load <8 x float>, ptr %i.bjt, align 32, !tbaa !29
  %i.bjx = fadd <8 x float> %i.bim, %i.bjw
  store <8 x float> %i.bjx, ptr %i.bjt, align 32, !tbaa !29
  %i.bjy = load <8 x float>, ptr %i.bjv, align 32, !tbaa !29
  %i.bjz = fadd <8 x float> %i.bjy, %i.bin
  store <8 x float> %i.bjz, ptr %i.bjv, align 32, !tbaa !29
  %i.bka = load ptr, ptr %i.bi, align 8, !tbaa !89 ; 2 uses
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bka, i64 16
  %i.bkc = load ptr, ptr %i.bkb, align 8, !tbaa !90 ; 4 uses
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bka, i64 24
  %i.bke = load ptr, ptr %i.bkd, align 8, !tbaa !90 ; 4 uses
  %i.bkf = shufflevector <16 x float> %i.bfv, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bkg = shufflevector <16 x float> %i.bfv, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bkh = getelementptr inbounds [4 x i8], ptr %i.bkc, i64 %i.bip ; 2 uses
  %i.bki = getelementptr inbounds [4 x i8], ptr %i.bke, i64 %i.bip ; 2 uses
  %i.bkj = load <8 x float>, ptr %i.bkh, align 32, !tbaa !29
  %i.bkk = fadd <8 x float> %i.bkf, %i.bkj
  store <8 x float> %i.bkk, ptr %i.bkh, align 32, !tbaa !29
  %i.bkl = load <8 x float>, ptr %i.bki, align 32, !tbaa !29
  %i.bkm = fadd <8 x float> %i.bkl, %i.bkg
  store <8 x float> %i.bkm, ptr %i.bki, align 32, !tbaa !29
  %i.bkn = getelementptr inbounds [4 x i8], ptr %i.bkc, i64 %i.bix
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 32 ; 2 uses
  %i.bkp = getelementptr inbounds [4 x i8], ptr %i.bke, i64 %i.bix
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkp, i64 32 ; 2 uses
  %i.bkr = load <8 x float>, ptr %i.bko, align 32, !tbaa !29
  %i.bks = fadd <8 x float> %i.bkf, %i.bkr
  store <8 x float> %i.bks, ptr %i.bko, align 32, !tbaa !29
  %i.bkt = load <8 x float>, ptr %i.bkq, align 32, !tbaa !29
  %i.bku = fadd <8 x float> %i.bkt, %i.bkg
  store <8 x float> %i.bku, ptr %i.bkq, align 32, !tbaa !29
  %i.bkv = getelementptr inbounds [4 x i8], ptr %i.bkc, i64 %i.bjh
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkv, i64 64 ; 2 uses
  %i.bkx = getelementptr inbounds [4 x i8], ptr %i.bke, i64 %i.bjh
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkx, i64 64 ; 2 uses
  %i.bkz = load <8 x float>, ptr %i.bkw, align 32, !tbaa !29
  %i.bla = fadd <8 x float> %i.bkf, %i.bkz
  store <8 x float> %i.bla, ptr %i.bkw, align 32, !tbaa !29
  %i.blb = load <8 x float>, ptr %i.bky, align 32, !tbaa !29
  %i.blc = fadd <8 x float> %i.blb, %i.bkg
  store <8 x float> %i.blc, ptr %i.bky, align 32, !tbaa !29
  %i.bld = getelementptr inbounds [4 x i8], ptr %i.bkc, i64 %i.bjr
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bld, i64 96 ; 2 uses
  %i.blf = getelementptr inbounds [4 x i8], ptr %i.bke, i64 %i.bjr
  %i.blg = getelementptr inbounds nuw i8, ptr %i.blf, i64 96 ; 2 uses
  %i.blh = load <8 x float>, ptr %i.ble, align 32, !tbaa !29
  %i.bli = fadd <8 x float> %i.bkf, %i.blh
  store <8 x float> %i.bli, ptr %i.ble, align 32, !tbaa !29
  %i.blj = load <8 x float>, ptr %i.blg, align 32, !tbaa !29
  %i.blk = fadd <8 x float> %i.blj, %i.bkg
  store <8 x float> %i.blk, ptr %i.blg, align 32, !tbaa !29
  %i.bll = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.blm = load ptr, ptr %i.bll, align 8, !tbaa !90 ; 4 uses
  %i.bln = getelementptr inbounds nuw i8, ptr %i.bll, i64 8
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !90 ; 4 uses
  %i.blp = shufflevector <16 x float> %i.bhm, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.blq = shufflevector <16 x float> %i.bhm, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.blr = getelementptr inbounds [4 x i8], ptr %i.blm, i64 %i.bip ; 2 uses
  %i.bls = getelementptr inbounds [4 x i8], ptr %i.blo, i64 %i.bip ; 2 uses
  %i.blt = load <8 x float>, ptr %i.blr, align 32, !tbaa !29
  %i.blu = fadd <8 x float> %i.blp, %i.blt
  store <8 x float> %i.blu, ptr %i.blr, align 32, !tbaa !29
  %i.blv = load <8 x float>, ptr %i.bls, align 32, !tbaa !29
  %i.blw = fadd <8 x float> %i.blv, %i.blq
  store <8 x float> %i.blw, ptr %i.bls, align 32, !tbaa !29
  %i.blx = getelementptr inbounds [4 x i8], ptr %i.blm, i64 %i.bix
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blx, i64 32 ; 2 uses
  %i.blz = getelementptr inbounds [4 x i8], ptr %i.blo, i64 %i.bix
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 32 ; 2 uses
  %i.bmb = load <8 x float>, ptr %i.bly, align 32, !tbaa !29
  %i.bmc = fadd <8 x float> %i.blp, %i.bmb
  store <8 x float> %i.bmc, ptr %i.bly, align 32, !tbaa !29
  %i.bmd = load <8 x float>, ptr %i.bma, align 32, !tbaa !29
  %i.bme = fadd <8 x float> %i.bmd, %i.blq
  store <8 x float> %i.bme, ptr %i.bma, align 32, !tbaa !29
  %i.bmf = getelementptr inbounds [4 x i8], ptr %i.blm, i64 %i.bjh
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bmf, i64 64 ; 2 uses
  %i.bmh = getelementptr inbounds [4 x i8], ptr %i.blo, i64 %i.bjh
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmh, i64 64 ; 2 uses
  %i.bmj = load <8 x float>, ptr %i.bmg, align 32, !tbaa !29
  %i.bmk = fadd <8 x float> %i.blp, %i.bmj
  store <8 x float> %i.bmk, ptr %i.bmg, align 32, !tbaa !29
  %i.bml = load <8 x float>, ptr %i.bmi, align 32, !tbaa !29
  %i.bmm = fadd <8 x float> %i.bml, %i.blq
  store <8 x float> %i.bmm, ptr %i.bmi, align 32, !tbaa !29
  %i.bmn = getelementptr inbounds [4 x i8], ptr %i.blm, i64 %i.bjr
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmn, i64 96 ; 2 uses
  %i.bmp = getelementptr inbounds [4 x i8], ptr %i.blo, i64 %i.bjr
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmp, i64 96 ; 2 uses
  %i.bmr = load <8 x float>, ptr %i.bmo, align 32, !tbaa !29
  %i.bms = fadd <8 x float> %i.blp, %i.bmr
  store <8 x float> %i.bms, ptr %i.bmo, align 32, !tbaa !29
  %i.bmt = load <8 x float>, ptr %i.bmq, align 32, !tbaa !29
  %i.bmu = fadd <8 x float> %i.bmt, %i.blq
  store <8 x float> %i.bmu, ptr %i.bmq, align 32, !tbaa !29
  %i.bmv = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmv, i64 16
  %i.bmx = load ptr, ptr %i.bmw, align 8, !tbaa !90 ; 4 uses
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmv, i64 24
  %i.bmz = load ptr, ptr %i.bmy, align 8, !tbaa !90 ; 4 uses
  %i.bna = shufflevector <16 x float> %i.bhn, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bnb = shufflevector <16 x float> %i.bhn, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bnc = getelementptr inbounds [4 x i8], ptr %i.bmx, i64 %i.bip ; 2 uses
  %i.bnd = getelementptr inbounds [4 x i8], ptr %i.bmz, i64 %i.bip ; 2 uses
  %i.bne = load <8 x float>, ptr %i.bnc, align 32, !tbaa !29
  %i.bnf = fadd <8 x float> %i.bna, %i.bne
  store <8 x float> %i.bnf, ptr %i.bnc, align 32, !tbaa !29
  %i.bng = load <8 x float>, ptr %i.bnd, align 32, !tbaa !29
  %i.bnh = fadd <8 x float> %i.bng, %i.bnb
  store <8 x float> %i.bnh, ptr %i.bnd, align 32, !tbaa !29
  %i.bni = getelementptr inbounds [4 x i8], ptr %i.bmx, i64 %i.bix
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bni, i64 32 ; 2 uses
  %i.bnk = getelementptr inbounds [4 x i8], ptr %i.bmz, i64 %i.bix
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bnk, i64 32 ; 2 uses
  %i.bnm = load <8 x float>, ptr %i.bnj, align 32, !tbaa !29
  %i.bnn = fadd <8 x float> %i.bna, %i.bnm
  store <8 x float> %i.bnn, ptr %i.bnj, align 32, !tbaa !29
  %i.bno = load <8 x float>, ptr %i.bnl, align 32, !tbaa !29
  %i.bnp = fadd <8 x float> %i.bno, %i.bnb
  store <8 x float> %i.bnp, ptr %i.bnl, align 32, !tbaa !29
  %i.bnq = getelementptr inbounds [4 x i8], ptr %i.bmx, i64 %i.bjh
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnq, i64 64 ; 2 uses
  %i.bns = getelementptr inbounds [4 x i8], ptr %i.bmz, i64 %i.bjh
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bns, i64 64 ; 2 uses
  %i.bnu = load <8 x float>, ptr %i.bnr, align 32, !tbaa !29
  %i.bnv = fadd <8 x float> %i.bna, %i.bnu
  store <8 x float> %i.bnv, ptr %i.bnr, align 32, !tbaa !29
  %i.bnw = load <8 x float>, ptr %i.bnt, align 32, !tbaa !29
  %i.bnx = fadd <8 x float> %i.bnw, %i.bnb
  store <8 x float> %i.bnx, ptr %i.bnt, align 32, !tbaa !29
  %i.bny = getelementptr inbounds [4 x i8], ptr %i.bmx, i64 %i.bjr
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 96 ; 2 uses
  %i.boa = getelementptr inbounds [4 x i8], ptr %i.bmz, i64 %i.bjr
  %i.bob = getelementptr inbounds nuw i8, ptr %i.boa, i64 96 ; 2 uses
  %i.boc = load <8 x float>, ptr %i.bnz, align 32, !tbaa !29
  %i.bod = fadd <8 x float> %i.bna, %i.boc
  store <8 x float> %i.bod, ptr %i.bnz, align 32, !tbaa !29
  %i.boe = load <8 x float>, ptr %i.bob, align 32, !tbaa !29
  %i.bof = fadd <8 x float> %i.boe, %i.bnb
  store <8 x float> %i.bof, ptr %i.bob, align 32, !tbaa !29
  %i.bog = fadd <16 x float> %i.bfm, %i.bgs
  %i.boh = fmul <16 x float> %i.bcs, %i.bog       ; 3 uses
  %i.boi = fadd <16 x float> %i.bfn, %i.bgt
  %i.boj = fmul <16 x float> %i.bct, %i.boi       ; 3 uses
  %i.bok = fmul <16 x float> %i.bbh, %i.boh       ; 2 uses
  %i.bol = fmul <16 x float> %i.bbi, %i.boj       ; 2 uses
  %i.bom = fmul <16 x float> %i.bbj, %i.boh       ; 2 uses
  %i.bon = fmul <16 x float> %i.bbk, %i.boj       ; 2 uses
  %i.boo = fmul <16 x float> %i.bbl, %i.boh       ; 2 uses
  %i.bop = fmul <16 x float> %i.bbm, %i.boj       ; 2 uses
  %i.boq = fadd <16 x float> %.sroa.03389.33946, %i.bok ; 2 uses
  %i.bor = fadd <16 x float> %.sroa.163396.33947, %i.bol ; 2 uses
  %i.bos = fadd <16 x float> %.sroa.03371.33944, %i.bom ; 2 uses
  %i.bot = fadd <16 x float> %.sroa.163378.33945, %i.bon ; 2 uses
  %i.bou = fadd <16 x float> %.sroa.03354.33942, %i.boo ; 2 uses
  %i.bov = fadd <16 x float> %.sroa.16.33943, %i.bop ; 2 uses
  %i.bow = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bba ; 4 uses
  %i.box = fadd <16 x float> %i.bok, %i.bol       ; 2 uses
  %i.boy = fadd <16 x float> %i.bom, %i.bon       ; 2 uses
  %i.boz = fadd <16 x float> %i.boo, %i.bop       ; 2 uses
  %i.bpa = load <8 x float>, ptr %i.bow, align 32, !tbaa !29
  %i.bpb = shufflevector <16 x float> %i.box, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpc = shufflevector <16 x float> %i.box, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpd = fadd <8 x float> %i.bpb, %i.bpc
  %i.bpe = fsub <8 x float> %i.bpa, %i.bpd
  store <8 x float> %i.bpe, ptr %i.bow, align 32, !tbaa !29
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bow, i64 32 ; 2 uses
  %i.bpg = load <8 x float>, ptr %i.bpf, align 32, !tbaa !29
  %i.bph = shufflevector <16 x float> %i.boy, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpi = shufflevector <16 x float> %i.boy, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpj = fadd <8 x float> %i.bph, %i.bpi
  %i.bpk = fsub <8 x float> %i.bpg, %i.bpj
  store <8 x float> %i.bpk, ptr %i.bpf, align 32, !tbaa !29
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bow, i64 64 ; 2 uses
  %i.bpm = load <8 x float>, ptr %i.bpl, align 32, !tbaa !29
  %i.bpn = shufflevector <16 x float> %i.boz, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpo = shufflevector <16 x float> %i.boz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpp = fadd <8 x float> %i.bpn, %i.bpo
  %i.bpq = fsub <8 x float> %i.bpm, %i.bpp
  store <8 x float> %i.bpq, ptr %i.bpl, align 32, !tbaa !29
  %indvars.iv.next4034 = add nsw i64 %indvars.iv4033, 1 ; 2 uses
  %exitcond4037.not = icmp eq i64 %indvars.iv.next4034, %wide.trip.count4036
  br i1 %exitcond4037.not, label %.loopexit, label %bb.o, !llvm.loop !20

bb.p:                                             ; preds = %.lr.ph, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %indvars.iv = phi i64 [ %i.akr, %.lr.ph ], [ %indvars.iv.next, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 4 uses
  %.sroa.163396.43888 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.bxv, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03389.43887 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.bxu, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.163378.43886 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.bxx, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03371.43885 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.bxw, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.16.43884 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.bxz, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03354.43883 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.bxy, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %i.bpr = load ptr, ptr %i.au, align 8, !tbaa !62
  %i.bps = getelementptr inbounds nuw [8 x i8], ptr %i.bpr, i64 %indvars.iv
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bps, i64 4
  %i.bpu = load i32, ptr %i.bpt, align 4, !tbaa !84
  %.not = icmp eq i32 %i.bpu, -1
  br i1 %.not, label %.critedge5.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit: ; preds = %bb.p
  %i.bpv = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.bpw = load i32, ptr %i.bpv, align 4, !tbaa !92 ; 3 uses
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bpv, i64 4
  %i.bpy = load i32, ptr %i.bpx, align 4, !tbaa !98
  %i.bpz = insertelement <16 x i32> poison, i32 %i.bpy, i64 0
  %i.bqa = shufflevector <16 x i32> %i.bpz, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.bqb = and <16 x i32> %.sroa.04069.0.copyload, %i.bqa
  %i.bqc = icmp ne <16 x i32> %i.bqb, zeroinitializer
  %i.bqd = and <16 x i32> %.sroa.6.0.copyload, %i.bqa
  %i.bqe = icmp ne <16 x i32> %i.bqd, zeroinitializer
  %i.bqf = mul nsw i32 %i.bpw, 24
  %i.bqg = sext i32 %i.bqf to i64                 ; 2 uses
  %i.bqh = getelementptr [4 x i8], ptr %i.at, i64 %i.bqg ; 3 uses
  %.val6444241 = load <8 x float>, ptr %i.bqh, align 32, !tbaa !29
  %i.bqi = shufflevector <8 x float> %.val6444241, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bqj = getelementptr i8, ptr %i.bqh, i64 32
  %.val6454242 = load <8 x float>, ptr %i.bqj, align 32, !tbaa !29
  %i.bqk = shufflevector <8 x float> %.val6454242, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bql = getelementptr i8, ptr %i.bqh, i64 64
  %.val6464243 = load <8 x float>, ptr %i.bql, align 32, !tbaa !29
  %i.bqm = shufflevector <8 x float> %.val6464243, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bqn = fsub <16 x float> %i.hp, %i.bqi        ; 3 uses
  %i.bqo = fsub <16 x float> %i.hv, %i.bqi        ; 3 uses
  %i.bqp = fsub <16 x float> %i.ic, %i.bqk        ; 3 uses
  %i.bqq = fsub <16 x float> %i.ii, %i.bqk        ; 3 uses
  %i.bqr = fsub <16 x float> %i.ip, %i.bqm        ; 3 uses
  %i.bqs = fsub <16 x float> %i.iv, %i.bqm        ; 3 uses
  %i.bqt = fmul <16 x float> %i.bqn, %i.bqn
  %i.bqu = fmul <16 x float> %i.bqp, %i.bqp
  %i.bqv = fadd <16 x float> %i.bqt, %i.bqu
  %i.bqw = fmul <16 x float> %i.bqr, %i.bqr
  %i.bqx = fadd <16 x float> %i.bqv, %i.bqw       ; 2 uses
  %i.bqy = fmul <16 x float> %i.bqo, %i.bqo
  %i.bqz = fmul <16 x float> %i.bqq, %i.bqq
  %i.bra = fadd <16 x float> %i.bqy, %i.bqz
  %i.brb = fmul <16 x float> %i.bqs, %i.bqs
  %i.brc = fadd <16 x float> %i.bra, %i.brb       ; 2 uses
  %i.brd = fcmp olt <16 x float> %i.bqx, %i.ap
  %i.bre = fcmp olt <16 x float> %i.brc, %i.ap
  %i.brf = and <16 x i1> %i.bqc, %i.brd           ; 2 uses
  %i.brg = and <16 x i1> %i.bqe, %i.bre           ; 2 uses
  %i.brh = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bqx, <16 x float> splat (float 3.820000e-07), i32 4) ; 2 uses
  %i.bri = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.brc, <16 x float> splat (float 3.820000e-07), i32 4) ; 2 uses
  %i.brj = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.brh, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.brk = fmul <16 x float> %i.brh, %i.brj
  %i.brl = fmul <16 x float> %i.brj, splat (float -5.000000e-01)
  %i.brm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.brk, <16 x float> %i.brj, <16 x float> splat (float -3.000000e+00))
  %i.brn = fmul <16 x float> %i.brl, %i.brm
  %i.bro = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.bri, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.brp = fmul <16 x float> %i.bri, %i.bro
  %i.brq = fmul <16 x float> %i.bro, splat (float -5.000000e-01)
  %i.brr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.brp, <16 x float> %i.bro, <16 x float> splat (float -3.000000e+00))
  %i.brs = fmul <16 x float> %i.brq, %i.brr
  %i.brt = select <16 x i1> %i.brf, <16 x float> %i.brn, <16 x float> zeroinitializer ; 3 uses
  %i.bru = select <16 x i1> %i.brg, <16 x float> %i.brs, <16 x float> zeroinitializer ; 3 uses
  %i.brv = fmul <16 x float> %i.brt, %i.brt
  %i.brw = fmul <16 x float> %i.bru, %i.bru
  %i.brx = shl nsw i32 %i.bpw, 4
  %i.bry = sext i32 %i.brx to i64
  %i.brz = getelementptr [4 x i8], ptr %i.f, i64 %i.bry ; 2 uses
  %.val6474244 = load <8 x float>, ptr %i.brz, align 32, !tbaa !29
  %i.bsa = shufflevector <8 x float> %.val6474244, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bsb = getelementptr i8, ptr %i.brz, i64 32
  %.val6484245 = load <8 x float>, ptr %i.bsb, align 32, !tbaa !29
  %i.bsc = shufflevector <8 x float> %.val6484245, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bsd = fadd <16 x float> %i.jp, %i.bsa        ; 3 uses
  %i.bse = fadd <16 x float> %i.jy, %i.bsa        ; 3 uses
  %i.bsf = fmul <16 x float> %i.jt, %i.bsc        ; 2 uses
  %i.bsg = fmul <16 x float> %i.kd, %i.bsc        ; 2 uses
  %i.bsh = fmul <16 x float> %i.bsd, %i.brt       ; 2 uses
  %i.bsi = fmul <16 x float> %i.bse, %i.bru       ; 2 uses
  %i.bsj = fmul <16 x float> %i.bsh, %i.bsh       ; 3 uses
  %i.bsk = fmul <16 x float> %i.bsi, %i.bsi       ; 3 uses
  %i.bsl = fmul <16 x float> %i.bsj, %i.bsj
  %i.bsm = fmul <16 x float> %i.bsj, %i.bsl       ; 2 uses
  %i.bsn = fmul <16 x float> %i.bsk, %i.bsk
  %i.bso = fmul <16 x float> %i.bsk, %i.bsn       ; 2 uses
  %i.bsp = fmul <16 x float> %i.bsf, %i.bsm       ; 3 uses
  %i.bsq = fmul <16 x float> %i.bsg, %i.bso       ; 3 uses
  %i.bsr = fmul <16 x float> %i.bsm, %i.bsp       ; 2 uses
  %i.bss = fmul <16 x float> %i.bso, %i.bsq       ; 2 uses
  %i.bst = fsub <16 x float> %i.bsr, %i.bsp
  %i.bsu = fsub <16 x float> %i.bss, %i.bsq
  %i.bsv = fmul <16 x float> %i.bsd, %i.bsd       ; 3 uses
  %i.bsw = fmul <16 x float> %i.bse, %i.bse       ; 3 uses
  %i.bsx = fmul <16 x float> %i.bsv, %i.bsv
  %i.bsy = fmul <16 x float> %i.bsv, %i.bsx       ; 2 uses
  %i.bsz = fmul <16 x float> %i.bsw, %i.bsw
  %i.bta = fmul <16 x float> %i.bsw, %i.bsz       ; 2 uses
  %i.btb = fmul <16 x float> %i.bsf, %i.bsy       ; 2 uses
  %i.btc = fmul <16 x float> %i.bsg, %i.bta       ; 2 uses
  %i.btd = fmul <16 x float> %i.bsy, %i.btb
  %i.bte = fmul <16 x float> %i.bta, %i.btc
  %i.btf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.btb, <16 x float> %i.ah, <16 x float> %i.bsp)
  %i.btg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.btc, <16 x float> %i.ah, <16 x float> %i.bsq)
  %i.bth = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.btd, <16 x float> %i.ak, <16 x float> %i.bsr)
  %i.bti = fmul <16 x float> %i.btf, splat (float f0xBE2AAAAB)
  %i.btj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bth, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bti)
  %i.btk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bte, <16 x float> %i.ak, <16 x float> %i.bss)
  %i.btl = fmul <16 x float> %i.btg, splat (float f0xBE2AAAAB)
  %i.btm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.btk, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.btl)
  %i.btn = select <16 x i1> %i.brf, <16 x float> %i.btj, <16 x float> zeroinitializer ; 2 uses
  %i.bto = select <16 x i1> %i.brg, <16 x float> %i.btm, <16 x float> zeroinitializer ; 2 uses
  %i.btp = load ptr, ptr %i.bc, align 8, !tbaa !83
  %i.btq = shl nsw i32 %i.bpw, 1
  %i.btr = load i32, ptr %i.bo, align 8, !tbaa !99
  %i.bts = sext i32 %i.btq to i64
  %i.btt = getelementptr inbounds [4 x i8], ptr %i.btp, i64 %i.bts
  %i.btu = load i32, ptr %i.bp, align 4, !tbaa !100
  %i.btv = load i32, ptr %i.bm, align 8, !tbaa !93
  %i.btw = load <2 x i32>, ptr %i.btt, align 4, !tbaa !84 ; 2 uses
  %i.btx = insertelement <2 x i32> poison, i32 %i.btr, i64 0
  %i.bty = shufflevector <2 x i32> %i.btw, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.btz = shufflevector <2 x i32> %i.btw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bua = shufflevector <2 x i32> %i.btx, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.bub = ashr <4 x i32> %i.btz, %i.bua
  %i.buc = shufflevector <4 x i32> %i.bub, <4 x i32> %i.bty, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.bud = insertelement <4 x i32> poison, i32 %i.btu, i64 0
  %i.bue = shufflevector <4 x i32> %i.bud, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.buf = and <4 x i32> %i.buc, %i.bue
  %i.bug = insertelement <4 x i32> poison, i32 %i.btv, i64 0
  %i.buh = shufflevector <4 x i32> %i.bug, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bui = mul nsw <4 x i32> %i.buf, %i.buh       ; 4 uses
  %i.buj = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.buk = load ptr, ptr %i.buj, align 8, !tbaa !90 ; 4 uses
  %i.bul = getelementptr inbounds nuw i8, ptr %i.buj, i64 8
  %i.bum = load ptr, ptr %i.bul, align 8, !tbaa !90 ; 4 uses
  %i.bun = shufflevector <16 x float> %i.btn, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.buo = shufflevector <16 x float> %i.btn, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bup = extractelement <4 x i32> %i.bui, i64 0
  %i.buq = sext i32 %i.bup to i64                 ; 4 uses
  %i.bur = getelementptr inbounds [4 x i8], ptr %i.buk, i64 %i.buq ; 2 uses
  %i.bus = getelementptr inbounds [4 x i8], ptr %i.bum, i64 %i.buq ; 2 uses
  %i.but = load <8 x float>, ptr %i.bur, align 32, !tbaa !29
  %i.buu = fadd <8 x float> %i.bun, %i.but
  store <8 x float> %i.buu, ptr %i.bur, align 32, !tbaa !29
  %i.buv = load <8 x float>, ptr %i.bus, align 32, !tbaa !29
  %i.buw = fadd <8 x float> %i.buv, %i.buo
  store <8 x float> %i.buw, ptr %i.bus, align 32, !tbaa !29
  %i.bux = extractelement <4 x i32> %i.bui, i64 1
  %i.buy = sext i32 %i.bux to i64                 ; 4 uses
  %i.buz = getelementptr inbounds [4 x i8], ptr %i.buk, i64 %i.buy
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buz, i64 32 ; 2 uses
  %i.bvb = getelementptr inbounds [4 x i8], ptr %i.bum, i64 %i.buy
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bvb, i64 32 ; 2 uses
  %i.bvd = load <8 x float>, ptr %i.bva, align 32, !tbaa !29
  %i.bve = fadd <8 x float> %i.bun, %i.bvd
  store <8 x float> %i.bve, ptr %i.bva, align 32, !tbaa !29
  %i.bvf = load <8 x float>, ptr %i.bvc, align 32, !tbaa !29
  %i.bvg = fadd <8 x float> %i.bvf, %i.buo
  store <8 x float> %i.bvg, ptr %i.bvc, align 32, !tbaa !29
  %i.bvh = extractelement <4 x i32> %i.bui, i64 2
  %i.bvi = sext i32 %i.bvh to i64                 ; 4 uses
  %i.bvj = getelementptr inbounds [4 x i8], ptr %i.buk, i64 %i.bvi
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bvj, i64 64 ; 2 uses
  %i.bvl = getelementptr inbounds [4 x i8], ptr %i.bum, i64 %i.bvi
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvl, i64 64 ; 2 uses
  %i.bvn = load <8 x float>, ptr %i.bvk, align 32, !tbaa !29
  %i.bvo = fadd <8 x float> %i.bun, %i.bvn
  store <8 x float> %i.bvo, ptr %i.bvk, align 32, !tbaa !29
  %i.bvp = load <8 x float>, ptr %i.bvm, align 32, !tbaa !29
  %i.bvq = fadd <8 x float> %i.bvp, %i.buo
  store <8 x float> %i.bvq, ptr %i.bvm, align 32, !tbaa !29
  %i.bvr = extractelement <4 x i32> %i.bui, i64 3
  %i.bvs = sext i32 %i.bvr to i64                 ; 4 uses
  %i.bvt = getelementptr inbounds [4 x i8], ptr %i.buk, i64 %i.bvs
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bvt, i64 96 ; 2 uses
  %i.bvv = getelementptr inbounds [4 x i8], ptr %i.bum, i64 %i.bvs
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bvv, i64 96 ; 2 uses
  %i.bvx = load <8 x float>, ptr %i.bvu, align 32, !tbaa !29
  %i.bvy = fadd <8 x float> %i.bun, %i.bvx
  store <8 x float> %i.bvy, ptr %i.bvu, align 32, !tbaa !29
  %i.bvz = load <8 x float>, ptr %i.bvw, align 32, !tbaa !29
  %i.bwa = fadd <8 x float> %i.bvz, %i.buo
  store <8 x float> %i.bwa, ptr %i.bvw, align 32, !tbaa !29
  %i.bwb = load ptr, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bwb, i64 16
  %i.bwd = load ptr, ptr %i.bwc, align 8, !tbaa !90 ; 4 uses
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bwb, i64 24
  %i.bwf = load ptr, ptr %i.bwe, align 8, !tbaa !90 ; 4 uses
  %i.bwg = shufflevector <16 x float> %i.bto, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bwh = shufflevector <16 x float> %i.bto, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bwi = getelementptr inbounds [4 x i8], ptr %i.bwd, i64 %i.buq ; 2 uses
  %i.bwj = getelementptr inbounds [4 x i8], ptr %i.bwf, i64 %i.buq ; 2 uses
  %i.bwk = load <8 x float>, ptr %i.bwi, align 32, !tbaa !29
  %i.bwl = fadd <8 x float> %i.bwg, %i.bwk
  store <8 x float> %i.bwl, ptr %i.bwi, align 32, !tbaa !29
  %i.bwm = load <8 x float>, ptr %i.bwj, align 32, !tbaa !29
  %i.bwn = fadd <8 x float> %i.bwm, %i.bwh
  store <8 x float> %i.bwn, ptr %i.bwj, align 32, !tbaa !29
  %i.bwo = getelementptr inbounds [4 x i8], ptr %i.bwd, i64 %i.buy
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwo, i64 32 ; 2 uses
  %i.bwq = getelementptr inbounds [4 x i8], ptr %i.bwf, i64 %i.buy
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwq, i64 32 ; 2 uses
  %i.bws = load <8 x float>, ptr %i.bwp, align 32, !tbaa !29
  %i.bwt = fadd <8 x float> %i.bwg, %i.bws
  store <8 x float> %i.bwt, ptr %i.bwp, align 32, !tbaa !29
  %i.bwu = load <8 x float>, ptr %i.bwr, align 32, !tbaa !29
  %i.bwv = fadd <8 x float> %i.bwu, %i.bwh
  store <8 x float> %i.bwv, ptr %i.bwr, align 32, !tbaa !29
  %i.bww = getelementptr inbounds [4 x i8], ptr %i.bwd, i64 %i.bvi
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.bww, i64 64 ; 2 uses
  %i.bwy = getelementptr inbounds [4 x i8], ptr %i.bwf, i64 %i.bvi
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bwy, i64 64 ; 2 uses
  %i.bxa = load <8 x float>, ptr %i.bwx, align 32, !tbaa !29
  %i.bxb = fadd <8 x float> %i.bwg, %i.bxa
  store <8 x float> %i.bxb, ptr %i.bwx, align 32, !tbaa !29
  %i.bxc = load <8 x float>, ptr %i.bwz, align 32, !tbaa !29
  %i.bxd = fadd <8 x float> %i.bxc, %i.bwh
end_hunk_2
begin_hunk_3_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader3878.preheader
  store <8 x float> %i.cfe, ptr %i.cfb, align 32, !tbaa !29
  %i.cff = load <8 x float>, ptr %i.cfc, align 32, !tbaa !29
  %i.cfg = fadd <8 x float> %i.cff, %i.cfa
  store <8 x float> %i.cfg, ptr %i.cfc, align 32, !tbaa !29
  %i.cfh = getelementptr inbounds [4 x i8], ptr %i.cew, i64 %i.cdr
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cfh, i64 32 ; 2 uses
  %i.cfj = getelementptr inbounds [4 x i8], ptr %i.cey, i64 %i.cdr
  %i.cfk = getelementptr inbounds nuw i8, ptr %i.cfj, i64 32 ; 2 uses
  %i.cfl = load <8 x float>, ptr %i.cfi, align 32, !tbaa !29
  %i.cfm = fadd <8 x float> %i.cez, %i.cfl
  store <8 x float> %i.cfm, ptr %i.cfi, align 32, !tbaa !29
  %i.cfn = load <8 x float>, ptr %i.cfk, align 32, !tbaa !29
  %i.cfo = fadd <8 x float> %i.cfn, %i.cfa
  store <8 x float> %i.cfo, ptr %i.cfk, align 32, !tbaa !29
  %i.cfp = getelementptr inbounds [4 x i8], ptr %i.cew, i64 %i.ceb
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.cfp, i64 64 ; 2 uses
  %i.cfr = getelementptr inbounds [4 x i8], ptr %i.cey, i64 %i.ceb
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cfr, i64 64 ; 2 uses
  %i.cft = load <8 x float>, ptr %i.cfq, align 32, !tbaa !29
  %i.cfu = fadd <8 x float> %i.cez, %i.cft
  store <8 x float> %i.cfu, ptr %i.cfq, align 32, !tbaa !29
  %i.cfv = load <8 x float>, ptr %i.cfs, align 32, !tbaa !29
  %i.cfw = fadd <8 x float> %i.cfv, %i.cfa
  store <8 x float> %i.cfw, ptr %i.cfs, align 32, !tbaa !29
  %i.cfx = getelementptr inbounds [4 x i8], ptr %i.cew, i64 %i.cel
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfx, i64 96 ; 2 uses
  %i.cfz = getelementptr inbounds [4 x i8], ptr %i.cey, i64 %i.cel
  %i.cga = getelementptr inbounds nuw i8, ptr %i.cfz, i64 96 ; 2 uses
  %i.cgb = load <8 x float>, ptr %i.cfy, align 32, !tbaa !29
  %i.cgc = fadd <8 x float> %i.cez, %i.cgb
  store <8 x float> %i.cgc, ptr %i.cfy, align 32, !tbaa !29
  %i.cgd = load <8 x float>, ptr %i.cga, align 32, !tbaa !29
  %i.cge = fadd <8 x float> %i.cgd, %i.cfa
  store <8 x float> %i.cge, ptr %i.cga, align 32, !tbaa !29
  %i.cgf = fmul <16 x float> %i.cao, %i.cbm       ; 3 uses
  %i.cgg = fmul <16 x float> %i.cap, %i.cbn       ; 3 uses
  %i.cgh = fmul <16 x float> %i.bzi, %i.cgf       ; 2 uses
  %i.cgi = fmul <16 x float> %i.bzj, %i.cgg       ; 2 uses
  %i.cgj = fmul <16 x float> %i.bzk, %i.cgf       ; 2 uses
  %i.cgk = fmul <16 x float> %i.bzl, %i.cgg       ; 2 uses
  %i.cgl = fmul <16 x float> %i.bzm, %i.cgf       ; 2 uses
  %i.cgm = fmul <16 x float> %i.bzn, %i.cgg       ; 2 uses
  %i.cgn = fadd <16 x float> %.sroa.03389.53908, %i.cgh ; 2 uses
  %i.cgo = fadd <16 x float> %.sroa.163396.53909, %i.cgi ; 2 uses
  %i.cgp = fadd <16 x float> %.sroa.03371.53906, %i.cgj ; 2 uses
  %i.cgq = fadd <16 x float> %.sroa.163378.53907, %i.cgk ; 2 uses
  %i.cgr = fadd <16 x float> %.sroa.03354.53904, %i.cgl ; 2 uses
  %i.cgs = fadd <16 x float> %.sroa.16.53905, %i.cgm ; 2 uses
  %i.cgt = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bzb ; 4 uses
  %i.cgu = fadd <16 x float> %i.cgh, %i.cgi       ; 2 uses
  %i.cgv = fadd <16 x float> %i.cgj, %i.cgk       ; 2 uses
  %i.cgw = fadd <16 x float> %i.cgl, %i.cgm       ; 2 uses
  %i.cgx = load <8 x float>, ptr %i.cgt, align 32, !tbaa !29
  %i.cgy = shufflevector <16 x float> %i.cgu, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cgz = shufflevector <16 x float> %i.cgu, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cha = fadd <8 x float> %i.cgy, %i.cgz
  %i.chb = fsub <8 x float> %i.cgx, %i.cha
  store <8 x float> %i.chb, ptr %i.cgt, align 32, !tbaa !29
  %i.chc = getelementptr inbounds nuw i8, ptr %i.cgt, i64 32 ; 2 uses
  %i.chd = load <8 x float>, ptr %i.chc, align 32, !tbaa !29
  %i.che = shufflevector <16 x float> %i.cgv, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.chf = shufflevector <16 x float> %i.cgv, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.chg = fadd <8 x float> %i.che, %i.chf
  %i.chh = fsub <8 x float> %i.chd, %i.chg
  store <8 x float> %i.chh, ptr %i.chc, align 32, !tbaa !29
  %i.chi = getelementptr inbounds nuw i8, ptr %i.cgt, i64 64 ; 2 uses
  %i.chj = load <8 x float>, ptr %i.chi, align 32, !tbaa !29
  %i.chk = shufflevector <16 x float> %i.cgw, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.chl = shufflevector <16 x float> %i.cgw, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.chm = fadd <8 x float> %i.chk, %i.chl
  %i.chn = fsub <8 x float> %i.chj, %i.chm
  store <8 x float> %i.chn, ptr %i.chi, align 32, !tbaa !29
  %indvars.iv.next4022 = add nsw i64 %indvars.iv4021, 1 ; 2 uses
  %exitcond4025.not = icmp eq i64 %indvars.iv.next4022, %wide.trip.count4024
  br i1 %exitcond4025.not, label %.loopexit, label %bb.q, !llvm.loop !22

.loopexit:                                        ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit, %bb.q, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit, %bb.o, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528, %bb.i, %.critedge5, %.critedge3, %.critedge
  %.sroa.03354.6 = phi <16 x float> [ %i.cgr, %bb.q ], [ %i.bou, %bb.o ], [ %.sroa.03354.0.lcssa, %.critedge ], [ %.sroa.03354.2.lcssa, %.critedge3 ], [ %.sroa.03354.4.lcssa, %.critedge5 ], [ %i.xb, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ], [ %i.azw, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.aju, %bb.i ], [ %i.bxy, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.16.6 = phi <16 x float> [ %i.cgs, %bb.q ], [ %i.bov, %bb.o ], [ %.sroa.16.0.lcssa, %.critedge ], [ %.sroa.16.2.lcssa, %.critedge3 ], [ %.sroa.16.4.lcssa, %.critedge5 ], [ %i.xc, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ], [ %i.azx, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ajv, %bb.i ], [ %i.bxz, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03371.6 = phi <16 x float> [ %i.cgp, %bb.q ], [ %i.bos, %bb.o ], [ %.sroa.03371.0.lcssa, %.critedge ], [ %.sroa.03371.2.lcssa, %.critedge3 ], [ %.sroa.03371.4.lcssa, %.critedge5 ], [ %i.wz, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ], [ %i.azu, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ajs, %bb.i ], [ %i.bxw, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.163378.6 = phi <16 x float> [ %i.cgq, %bb.q ], [ %i.bot, %bb.o ], [ %.sroa.163378.0.lcssa, %.critedge ], [ %.sroa.163378.2.lcssa, %.critedge3 ], [ %.sroa.163378.4.lcssa, %.critedge5 ], [ %i.xa, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ], [ %i.azv, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ajt, %bb.i ], [ %i.bxx, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03389.6 = phi <16 x float> [ %i.cgn, %bb.q ], [ %i.boq, %bb.o ], [ %.sroa.03389.0.lcssa, %.critedge ], [ %.sroa.03389.2.lcssa, %.critedge3 ], [ %.sroa.03389.4.lcssa, %.critedge5 ], [ %i.wx, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ], [ %i.azs, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ajq, %bb.i ], [ %i.bxu, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.163396.6 = phi <16 x float> [ %i.cgo, %bb.q ], [ %i.bor, %bb.o ], [ %.sroa.163396.0.lcssa, %.critedge ], [ %.sroa.163396.2.lcssa, %.critedge3 ], [ %.sroa.163396.4.lcssa, %.critedge5 ], [ %i.wy, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit528 ], [ %i.azt, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ajr, %bb.i ], [ %i.bxv, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %i.cho = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hj ; 2 uses
  %i.chp = shufflevector <16 x float> %.sroa.03389.6, <16 x float> %.sroa.163396.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.chq = shufflevector <16 x float> %.sroa.03389.6, <16 x float> %.sroa.163396.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.chr = fadd <16 x float> %i.chp, %i.chq       ; 2 uses
  %i.chs = shufflevector <16 x float> %i.chr, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cht = fadd <16 x float> %i.chr, %i.chs       ; 2 uses
  %i.chu = shufflevector <16 x float> %i.cht, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.chv = fadd <16 x float> %i.cht, %i.chu
  %i.chw = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.chv, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.chx = shufflevector <16 x float> %i.chw, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.chy = load <4 x float>, ptr %i.cho, align 16, !tbaa !29
  %i.chz = fadd <4 x float> %i.chy, %i.chx
  store <4 x float> %i.chz, ptr %i.cho, align 16, !tbaa !29
  %i.cia = shufflevector <16 x float> %i.chw, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cib = fadd <4 x float> %i.chx, %i.cia        ; 2 uses
  %i.cic = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hw ; 2 uses
  %i.cid = shufflevector <16 x float> %.sroa.03371.6, <16 x float> %.sroa.163378.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cie = shufflevector <16 x float> %.sroa.03371.6, <16 x float> %.sroa.163378.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cif = fadd <16 x float> %i.cid, %i.cie       ; 2 uses
  %i.cig = shufflevector <16 x float> %i.cif, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cih = fadd <16 x float> %i.cif, %i.cig       ; 2 uses
  %i.cii = shufflevector <16 x float> %i.cih, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cij = fadd <16 x float> %i.cih, %i.cii
  %i.cik = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.cij, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cil = shufflevector <16 x float> %i.cik, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cim = load <4 x float>, ptr %i.cic, align 16, !tbaa !29
  %i.cin = fadd <4 x float> %i.cim, %i.cil
  store <4 x float> %i.cin, ptr %i.cic, align 16, !tbaa !29
  %i.cio = shufflevector <16 x float> %i.cik, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cip = fadd <4 x float> %i.cil, %i.cio        ; 2 uses
  %i.ciq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ij ; 2 uses
  %i.cir = shufflevector <16 x float> %.sroa.03354.6, <16 x float> %.sroa.16.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cis = shufflevector <16 x float> %.sroa.03354.6, <16 x float> %.sroa.16.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cit = fadd <16 x float> %i.cir, %i.cis       ; 2 uses
  %i.ciu = shufflevector <16 x float> %i.cit, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.civ = fadd <16 x float> %i.cit, %i.ciu       ; 2 uses
  %i.ciw = shufflevector <16 x float> %i.civ, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cix = fadd <16 x float> %i.civ, %i.ciw
  %i.ciy = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.cix, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.ciz = shufflevector <16 x float> %i.ciy, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cja = load <4 x float>, ptr %i.ciq, align 16, !tbaa !29
  %i.cjb = fadd <4 x float> %i.cja, %i.ciz
  store <4 x float> %i.cjb, ptr %i.ciq, align 16, !tbaa !29
  %i.cjc = shufflevector <16 x float> %i.ciy, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cjd = fadd <4 x float> %i.ciz, %i.cjc        ; 2 uses
  %i.cje = shufflevector <4 x float> %i.cjd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cjf = fadd <4 x float> %i.cjd, %i.cje
  %i.cjg = extractelement <4 x float> %i.cjf, i64 0
  %i.cjh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cb ; 2 uses
  %i.cji = load <2 x float>, ptr %i.cjh, align 4, !tbaa !72
  %i.cjj = shufflevector <4 x float> %i.cib, <4 x float> %i.cip, <2 x i32> <i32 0, i32 4>
  %i.cjk = shufflevector <4 x float> %i.cib, <4 x float> %i.cip, <2 x i32> <i32 1, i32 5>
  %i.cjl = fadd <2 x float> %i.cjj, %i.cjk
  %i.cjm = fadd <2 x float> %i.cjl, %i.cji
  store <2 x float> %i.cjm, ptr %i.cjh, align 4, !tbaa !72
  %i.cjn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cn ; 2 uses
  %i.cjo = load float, ptr %i.cjn, align 4, !tbaa !72
  %i.cjp = fadd float %i.cjg, %i.cjo
  store float %i.cjp, ptr %i.cjn, align 4, !tbaa !72
  %i.cjq = getelementptr inbounds nuw i8, ptr %.sroa.01816.03995, i64 16 ; 2 uses
  %.not3868 = icmp eq ptr %i.cjq, %i.az
  br i1 %.not3868, label %._crit_edge, label %bb.a
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
!9 = distinct !{!9, i1 true, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!10 = distinct !{!10, !9, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!11 = distinct !{!11, i1 true, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE0_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!12 = distinct !{!12, !11, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE0_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!13 = distinct !{!13, i1 true, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE1_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!14 = distinct !{!14, !13, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE1_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!15 = distinct !{!15, i1 true, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE2_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!16 = distinct !{!16, !15, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE2_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
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
