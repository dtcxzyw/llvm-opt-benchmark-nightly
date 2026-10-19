Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ElecEwTwinCut_VdwLJEwCombGeom_VgrpF?download=true
inline.NumInlined: 1739
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(656) %1, ptr noundef nonnull align 8 dereferenceable(137) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat {
.preheader4649.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28
  %.val.i.i = load <16 x float>, ptr %i.l, align 64, !tbaa !32 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 552
  %6 = load ptr, ptr %5, align 8, !tbaa !34       ; 2 uses
  %.sroa.04905.0.copyload = load <16 x i32>, ptr %6, align 64, !tbaa !32 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  %.sroa.6.0.copyload = load <16 x i32>, ptr %.sroa.6.0..sroa_idx, align 64, !tbaa !32 ; 3 uses
  %i.m = fcmp ogt <16 x float> %.val.i.i, zeroinitializer
  %i.n = fadd <16 x float> %.val.i.i, splat (float -2.000000e+00) ; 2 uses
  %i.o = fcmp ogt <16 x float> %i.n, zeroinitializer
  %i.p = fadd <16 x float> %i.n, splat (float -2.000000e+00) ; 2 uses
  %i.q = fcmp ogt <16 x float> %i.p, zeroinitializer
  %i.r = fadd <16 x float> %i.p, splat (float -2.000000e+00)
  %i.s = fcmp ogt <16 x float> %i.r, zeroinitializer
  %i.t = bitcast <16 x i1> %i.m to i16            ; 3 uses
  %i.u = bitcast <16 x i1> %i.o to i16            ; 3 uses
  %i.v = bitcast <16 x i1> %i.q to i16            ; 3 uses
  %i.w = bitcast <16 x i1> %i.s to i16            ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.y = load <4 x float>, ptr %i.x, align 8      ; 4 uses
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <16 x i32> zeroinitializer ; 16 uses
  %i.aa = extractelement <4 x float> %i.y, i64 0
  %foldExtExtBinop = fmul <4 x float> %i.y, %i.y
  %i.ab = shufflevector <4 x float> %foldExtExtBinop, <4 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.ac = fmul float %i.aa, 5.000000e-01
  %i.ad = fpext float %i.ac to double
  %i.ae = fmul double %i.ad, f0x3FF20DD750429B6D
  %i.af = fptrunc double %i.ae to float           ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.ah = load <1 x float>, ptr %i.ag, align 4
  %i.ai = shufflevector <1 x float> %i.ah, <1 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load <1 x float>, ptr %i.aj, align 8
  %i.al = shufflevector <1 x float> %i.ak, <1 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.an = load <1 x float>, ptr %i.am, align 4
  %i.ao = shufflevector <1 x float> %i.an, <1 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !61 ; 2 uses
  %i.ar = fmul float %i.aq, %i.aq                 ; 4 uses
  %i.as = fmul float %i.ar, %i.ar
  %i.at = fmul float %i.ar, %i.as
  %i.au = fdiv float %i.at, 6.000000e+00          ; 2 uses
  %i.av = insertelement <16 x float> poison, float %i.ar, i64 0
  %i.aw = shufflevector <16 x float> %i.av, <16 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %i.ax = insertelement <16 x float> poison, float %i.au, i64 0
  %i.ay = shufflevector <16 x float> %i.ax, <16 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ba = load <16 x float>, ptr %i.az, align 4   ; 5 uses
  %i.bb = shufflevector <16 x float> %i.ba, <16 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %foldExtExtBinop5126 = fmul <16 x float> %i.ba, %i.ba
  %i.bc = shufflevector <16 x float> %foldExtExtBinop5126, <16 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 12 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = load float, ptr %i.bd, align 8, !tbaa !62 ; 2 uses
  %i.bf = fmul float %i.be, %i.be
  %i.bg = insertelement <16 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <16 x float> %i.bg, <16 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !26 ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !26 ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !65 ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !67 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !67 ; 2 uses
  %.not46314795 = icmp eq ptr %i.bp, %i.br
  br i1 %.not46314795, label %._crit_edge, label %.lr.ph4797

.lr.ph4797:                                       ; preds = %.preheader4649.preheader
  %i.bs = extractelement <16 x float> %i.ba, i64 8
  %i.bt = getelementptr i8, ptr %4, i64 136
  %.val.val = load ptr, ptr %i.bt, align 8, !tbaa !69 ; 12 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.val, i64 32 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.val, i64 88
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.val, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %.val.val, i64 40 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.val, i64 28
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.val, i64 96 ; 9 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.val, i64 64 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.val, i64 120 ; 11 uses
  %i.cd = fneg float %i.bs                        ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.val, i64 24 ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cg = fpext float %i.au to double             ; 4 uses
  %i.ch = shufflevector <16 x float> %i.ba, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8> ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.val, i64 16 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.val, i64 20 ; 6 uses
  br label %bb.a

._crit_edge:                                      ; preds = %.loopexit, %.preheader4649.preheader
  ret void

bb.a:                                             ; preds = %.lr.ph4797, %.loopexit
  %.sroa.02097.04796 = phi ptr [ %i.bp, %.lr.ph4797 ], [ %i.czf, %.loopexit ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02097.04796, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !71 ; 3 uses
  %i.cm = and i32 %i.cl, 127                      ; 2 uses
  %i.cn = mul nuw nsw i32 %i.cm, 3                ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.02097.04796, i64 8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !72 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.02097.04796, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !73 ; 10 uses
  %i.cs = load i32, ptr %.sroa.02097.04796, align 4, !tbaa !74 ; 3 uses
  %i.ct = icmp eq i32 %i.cm, 22
  %i.cu = select i1 %i.ct, i32 %i.cs, i32 -1      ; 7 uses
  %i.cv = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !75
  %i.cy = insertelement <16 x float> poison, float %i.cx, i64 0
  %i.cz = shufflevector <16 x float> %i.cy, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.da = zext nneg i32 %i.cn to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !75
  %i.de = insertelement <16 x float> poison, float %i.dd, i64 0
  %i.df = shufflevector <16 x float> %i.de, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dg = add nuw nsw i32 %i.cn, 2
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !75
  %i.dk = insertelement <16 x float> poison, float %i.dj, i64 0
  %i.dl = shufflevector <16 x float> %i.dk, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dm = shl i32 %i.cs, 2                        ; 4 uses
  %i.dn = and i32 %i.dm, -8                       ; 2 uses
  %i.do = mul nsw i32 %i.dn, 3
  %i.dp = and i32 %i.dm, 4                        ; 2 uses
  %i.dq = or disjoint i32 %i.do, %i.dp            ; 3 uses
  %i.dr = shl nsw i32 %i.dn, 1
  %i.ds = or disjoint i32 %i.dr, %i.dp
  %i.dt = and i32 %i.cl, 512
  %i.du = icmp ne i32 %i.dt, 0                    ; 4 uses
  %i.dv = and i32 %i.cl, 384
  %or.cond = icmp ne i32 %i.dv, 128
  %i.dw = and i1 %or.cond, %i.du
  %i.dx = load ptr, ptr %i.bu, align 8, !tbaa !86
  %i.dy = sext i32 %i.cs to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !87 ; 9 uses
  store i32 %i.ea, ptr %i.bv, align 8, !tbaa !88
  %i.eb = load i32, ptr %i.bw, align 8, !tbaa !89 ; 7 uses
  %i.ec = load i32, ptr %i.bx, align 4, !tbaa !90 ; 8 uses
  %i.ed = load i32, ptr %i.bz, align 4, !tbaa !91 ; 4 uses
  %i.ee = load ptr, ptr %i.ca, align 8, !tbaa !92 ; 5 uses
  %i.ef = load ptr, ptr %i.cc, align 8, !tbaa !92 ; 5 uses
  %i.eg = and i32 %i.ec, %i.ea                    ; 3 uses
  %i.eh = load ptr, ptr %i.by, align 8, !tbaa !28
  %i.ei = mul nsw i32 %i.eg, %i.ed
  %i.ej = sext i32 %i.ei to i64                   ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.ej
  store ptr %i.ek, ptr %i.ee, align 8, !tbaa !93
  %i.el = load ptr, ptr %i.cb, align 8, !tbaa !28
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.ej
  store ptr %i.em, ptr %i.ef, align 8, !tbaa !93
  %i.en = ashr i32 %i.ea, %i.eb
  %i.eo = and i32 %i.en, %i.ec                    ; 3 uses
  %i.ep = load ptr, ptr %i.by, align 8, !tbaa !28
  %i.eq = mul nsw i32 %i.eo, %i.ed
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  store ptr %i.es, ptr %i.et, align 8, !tbaa !93
  %i.eu = load ptr, ptr %i.cb, align 8, !tbaa !28
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.er
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !93
  %i.ex = shl i32 %i.eb, 1
  %i.ey = ashr i32 %i.ea, %i.ex
  %i.ez = and i32 %i.ey, %i.ec
  %i.fa = load ptr, ptr %i.by, align 8, !tbaa !28
  %i.fb = mul nsw i32 %i.ez, %i.ed
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !93
  %i.ff = load ptr, ptr %i.cb, align 8, !tbaa !28
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.fc
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !93
  %i.fi = mul i32 %i.eb, 3
  %i.fj = ashr i32 %i.ea, %i.fi
  %i.fk = and i32 %i.fj, %i.ec
  %i.fl = load ptr, ptr %i.by, align 8, !tbaa !28
  %i.fm = mul nsw i32 %i.fk, %i.ed
  %i.fn = sext i32 %i.fm to i64                   ; 2 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ee, i64 24 ; 2 uses
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !93
  %i.fq = load ptr, ptr %i.cb, align 8, !tbaa !28
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fn ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !93
  %i.ft = sext i32 %i.cp to i64                   ; 4 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !95
  %i.fw = ashr i32 %i.cu, 1
  %i.fx = icmp eq i32 %i.fv, %i.fw
  br i1 %i.fx, label %bb.b, label %.loopexit4646

bb.b:                                             ; preds = %bb.a
  %.pre = load i32, ptr %i.ce, align 8, !tbaa !96 ; 8 uses
  %i.fy = sext i32 %i.dm to i64                   ; 8 uses
  br i1 %i.du, label %.preheader4647, label %..loopexit4648_crit_edge

..loopexit4648_crit_edge:                         ; preds = %bb.b
  %.pre4918 = mul nsw i32 %.pre, %i.eg
  %.pre4920 = sext i32 %.pre4918 to i64
  %.pre4922 = or disjoint i64 %i.fy, 1
  %.pre4924 = mul nsw i32 %.pre, %i.eo
  %.pre4926 = sext i32 %.pre4924 to i64
  %.pre4928 = or disjoint i64 %i.fy, 2
  %.pre4930 = shl i32 %i.eb, 1
  %.pre4934 = ashr i32 %i.ea, %.pre4930
  %.pre4936 = and i32 %.pre4934, %i.ec
  %.pre4938 = mul nsw i32 %.pre, %.pre4936
  %.pre4940 = sext i32 %.pre4938 to i64
  %.pre4942 = or disjoint i64 %i.fy, 3
  %.pre4944 = mul i32 %i.eb, 3
  %.pre4948 = ashr i32 %i.ea, %.pre4944
  %.pre4950 = and i32 %.pre4948, %i.ec
  %.pre4952 = mul nsw i32 %.pre, %.pre4950
  %.pre4954 = sext i32 %.pre4952 to i64
  br label %.loopexit4648

.preheader4647:                                   ; preds = %bb.b
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.fy
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !75 ; 2 uses
  %i.gb = fmul float %i.ga, %i.cd
  %i.gc = fmul float %i.ga, %i.gb
  %i.gd = fmul float %i.gc, %i.af
  %i.ge = mul nsw i32 %.pre, %i.eg
  %i.gf = load ptr, ptr %i.ee, align 8, !tbaa !93
  %i.gg = sext i32 %i.ge to i64                   ; 2 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.gg ; 2 uses
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !75
  %i.gj = fadd float %i.gd, %i.gi
  store float %i.gj, ptr %i.gh, align 4, !tbaa !75
  %i.gk = or disjoint i64 %i.fy, 1                ; 2 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !75 ; 2 uses
  %i.gn = fmul float %i.gm, %i.cd
  %i.go = fmul float %i.gm, %i.gn
  %i.gp = fmul float %i.go, %i.af
  %i.gq = mul nsw i32 %.pre, %i.eo
  %i.gr = load ptr, ptr %i.et, align 8, !tbaa !93
  %i.gs = sext i32 %i.gq to i64                   ; 2 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.gs ; 2 uses
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !75
  %i.gv = fadd float %i.gp, %i.gu
  store float %i.gv, ptr %i.gt, align 4, !tbaa !75
  %i.gw = or disjoint i64 %i.fy, 2                ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.gw
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !75 ; 2 uses
  %i.gz = fmul float %i.gy, %i.cd
  %i.ha = fmul float %i.gy, %i.gz
  %i.hb = fmul float %i.ha, %i.af
  %i.hc = shl i32 %i.eb, 1
  %i.hd = ashr i32 %i.ea, %i.hc
  %i.he = and i32 %i.hd, %i.ec
  %i.hf = mul nsw i32 %.pre, %i.he
  %i.hg = load ptr, ptr %i.fe, align 8, !tbaa !93
  %i.hh = sext i32 %i.hf to i64                   ; 2 uses
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.hh ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !75
  %i.hk = fadd float %i.hb, %i.hj
  store float %i.hk, ptr %i.hi, align 4, !tbaa !75
  %i.hl = or disjoint i64 %i.fy, 3                ; 2 uses
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.hl
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !75 ; 2 uses
  %i.ho = fmul float %i.hn, %i.cd
  %i.hp = fmul float %i.hn, %i.ho
  %i.hq = fmul float %i.hp, %i.af
  %i.hr = mul i32 %i.eb, 3
  %i.hs = ashr i32 %i.ea, %i.hr
  %i.ht = and i32 %i.hs, %i.ec
  %i.hu = mul nsw i32 %.pre, %i.ht
  %i.hv = load ptr, ptr %i.fp, align 8, !tbaa !93
  %i.hw = sext i32 %i.hu to i64                   ; 2 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.hw ; 2 uses
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !75
  %i.hz = fadd float %i.hq, %i.hy
  store float %i.hz, ptr %i.hx, align 4, !tbaa !75
  br label %.loopexit4648

.loopexit4648:                                    ; preds = %..loopexit4648_crit_edge, %.preheader4647
  %.pre-phi4955 = phi i64 [ %.pre4954, %..loopexit4648_crit_edge ], [ %i.hw, %.preheader4647 ]
  %.pre-phi4943 = phi i64 [ %.pre4942, %..loopexit4648_crit_edge ], [ %i.hl, %.preheader4647 ]
  %.pre-phi4941 = phi i64 [ %.pre4940, %..loopexit4648_crit_edge ], [ %i.hh, %.preheader4647 ]
end_hunk_0
begin_hunk_1_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4649.preheader
  %factor.op.mul = add i32 %i.ic, 2               ; 4 uses
  %i.id = load ptr, ptr %i.cf, align 8, !tbaa !26 ; 4 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.fy
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !87
  %.reass = mul i32 %i.if, %factor.op.mul
  %i.ig = sext i32 %.reass to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ig
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !75
  %i.ij = fdiv float %i.ii, 6.000000e+00
  %i.ik = fpext float %i.ij to double
  %i.il = fmul double %i.ik, 5.000000e-01
  %i.im = fmul double %i.il, %i.cg
  %i.in = fptrunc double %i.im to float
  %i.io = load ptr, ptr %i.ef, align 8, !tbaa !93
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.io, i64 %.pre-phi4921 ; 2 uses
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !75
  %i.ir = fadd float %i.iq, %i.in
  store float %i.ir, ptr %i.ip, align 4, !tbaa !75
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.pre-phi4923
  %i.it = load i32, ptr %i.is, align 4, !tbaa !87
  %.reass.1 = mul i32 %i.it, %factor.op.mul
  %i.iu = sext i32 %.reass.1 to i64
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.iu
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !75
  %i.ix = fdiv float %i.iw, 6.000000e+00
  %i.iy = fpext float %i.ix to double
  %i.iz = fmul double %i.iy, 5.000000e-01
  %i.ja = fmul double %i.iz, %i.cg
  %i.jb = fptrunc double %i.ja to float
  %i.jc = load ptr, ptr %i.ew, align 8, !tbaa !93
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %.pre-phi4927 ; 2 uses
  %i.je = load float, ptr %i.jd, align 4, !tbaa !75
  %i.jf = fadd float %i.je, %i.jb
  store float %i.jf, ptr %i.jd, align 4, !tbaa !75
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.pre-phi4929
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !87
  %.reass.2 = mul i32 %i.jh, %factor.op.mul
  %i.ji = sext i32 %.reass.2 to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ji
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !75
  %i.jl = fdiv float %i.jk, 6.000000e+00
  %i.jm = fpext float %i.jl to double
  %i.jn = fmul double %i.jm, 5.000000e-01
  %i.jo = fmul double %i.jn, %i.cg
  %i.jp = fptrunc double %i.jo to float
  %i.jq = load ptr, ptr %i.fh, align 8, !tbaa !93
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.jq, i64 %.pre-phi4941 ; 2 uses
  %i.js = load float, ptr %i.jr, align 4, !tbaa !75
  %i.jt = fadd float %i.js, %i.jp
  store float %i.jt, ptr %i.jr, align 4, !tbaa !75
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.pre-phi4943
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !87
  %.reass.3 = mul i32 %i.jv, %factor.op.mul
  %i.jw = sext i32 %.reass.3 to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.jw
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !75
  %i.jz = fdiv float %i.jy, 6.000000e+00
  %i.ka = fpext float %i.jz to double
  %i.kb = fmul double %i.ka, 5.000000e-01
  %i.kc = fmul double %i.kb, %i.cg
  %i.kd = fptrunc double %i.kc to float
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %.pre-phi4955 ; 2 uses
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !75
  %i.kg = fadd float %i.kf, %i.kd
  store float %i.kg, ptr %i.ke, align 4, !tbaa !75
  br label %.loopexit4646

.loopexit4646:                                    ; preds = %.loopexit4648, %bb.a
  %i.kh = add nsw i32 %i.dq, 8
  %i.ki = add nsw i32 %i.dq, 16
  %i.kj = sext i32 %i.dq to i64                   ; 2 uses
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.kj ; 4 uses
  %.val.i = load float, ptr %i.kk, align 1, !tbaa !32, !noalias !117
  %i.kl = getelementptr i8, ptr %i.kk, i64 4
  %.val3.i = load float, ptr %i.kl, align 1, !tbaa !32, !noalias !117
  %i.km = insertelement <4 x float> poison, float %.val.i, i64 0
  %i.kn = insertelement <4 x float> poison, float %.val3.i, i64 0
  %i.ko = shufflevector <4 x float> %i.km, <4 x float> %i.kn, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.kp = fadd <16 x float> %i.cz, %i.ko          ; 6 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.val.i751 = load float, ptr %i.kq, align 1, !tbaa !32, !noalias !117
  %i.kr = getelementptr i8, ptr %i.kk, i64 12
  %.val3.i752 = load float, ptr %i.kr, align 1, !tbaa !32, !noalias !117
  %i.ks = insertelement <4 x float> poison, float %.val.i751, i64 0
  %i.kt = insertelement <4 x float> poison, float %.val3.i752, i64 0
  %i.ku = shufflevector <4 x float> %i.ks, <4 x float> %i.kt, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.kv = fadd <16 x float> %i.cz, %i.ku          ; 6 uses
  %i.kw = sext i32 %i.kh to i64                   ; 2 uses
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.kw ; 4 uses
  %.val.i754 = load float, ptr %i.kx, align 1, !tbaa !32, !noalias !118
  %i.ky = getelementptr i8, ptr %i.kx, i64 4
  %.val3.i755 = load float, ptr %i.ky, align 1, !tbaa !32, !noalias !118
  %i.kz = insertelement <4 x float> poison, float %.val.i754, i64 0
  %i.la = insertelement <4 x float> poison, float %.val3.i755, i64 0
  %i.lb = shufflevector <4 x float> %i.kz, <4 x float> %i.la, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.lc = fadd <16 x float> %i.df, %i.lb          ; 6 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %.val.i757 = load float, ptr %i.ld, align 1, !tbaa !32, !noalias !118
  %i.le = getelementptr i8, ptr %i.kx, i64 12
  %.val3.i758 = load float, ptr %i.le, align 1, !tbaa !32, !noalias !118
  %i.lf = insertelement <4 x float> poison, float %.val.i757, i64 0
  %i.lg = insertelement <4 x float> poison, float %.val3.i758, i64 0
  %i.lh = shufflevector <4 x float> %i.lf, <4 x float> %i.lg, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.li = fadd <16 x float> %i.df, %i.lh          ; 6 uses
  %i.lj = sext i32 %i.ki to i64                   ; 2 uses
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.lj ; 4 uses
  %.val.i760 = load float, ptr %i.lk, align 1, !tbaa !32, !noalias !119
  %i.ll = getelementptr i8, ptr %i.lk, i64 4
  %.val3.i761 = load float, ptr %i.ll, align 1, !tbaa !32, !noalias !119
  %i.lm = insertelement <4 x float> poison, float %.val.i760, i64 0
  %i.ln = insertelement <4 x float> poison, float %.val3.i761, i64 0
  %i.lo = shufflevector <4 x float> %i.lm, <4 x float> %i.ln, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.lp = fadd <16 x float> %i.dl, %i.lo          ; 6 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %.val.i763 = load float, ptr %i.lq, align 1, !tbaa !32, !noalias !119
  %i.lr = getelementptr i8, ptr %i.lk, i64 12
  %.val3.i764 = load float, ptr %i.lr, align 1, !tbaa !32, !noalias !119
  %i.ls = insertelement <4 x float> poison, float %.val.i763, i64 0
  %i.lt = insertelement <4 x float> poison, float %.val3.i764, i64 0
  %i.lu = shufflevector <4 x float> %i.ls, <4 x float> %i.lt, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.lv = fadd <16 x float> %i.dl, %i.lu          ; 6 uses
  %i.lw = sext i32 %i.dm to i64                   ; 5 uses
  br i1 %i.du, label %bb.c, label %.preheader4645

bb.c:                                             ; preds = %.loopexit4646
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.lw ; 4 uses
  %.val.i766 = load float, ptr %i.lx, align 1, !tbaa !32, !noalias !120
  %i.ly = getelementptr i8, ptr %i.lx, i64 4
  %.val2.i = load float, ptr %i.ly, align 1, !tbaa !32, !noalias !120
  %i.lz = insertelement <4 x float> poison, float %.val.i766, i64 0
  %i.ma = insertelement <4 x float> poison, float %.val2.i, i64 0
  %i.mb = shufflevector <4 x float> %i.lz, <4 x float> %i.ma, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.mc = fmul <16 x float> %i.ch, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %.val.i767 = load float, ptr %i.md, align 1, !tbaa !32, !noalias !120
  %i.me = getelementptr i8, ptr %i.lx, i64 12
  %.val2.i768 = load float, ptr %i.me, align 1, !tbaa !32, !noalias !120
  %i.mf = insertelement <4 x float> poison, float %.val.i767, i64 0
  %i.mg = insertelement <4 x float> poison, float %.val2.i768, i64 0
  %i.mh = shufflevector <4 x float> %i.mf, <4 x float> %i.mg, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.mi = fmul <16 x float> %i.ch, %i.mh
  br label %.preheader4645

.preheader4645:                                   ; preds = %.loopexit4646, %bb.c
  %.sroa.04221.0 = phi <16 x float> [ %i.mc, %bb.c ], [ undef, %.loopexit4646 ] ; 4 uses
  %.sroa.74225.0 = phi <16 x float> [ %i.mi, %bb.c ], [ undef, %.loopexit4646 ] ; 4 uses
  %i.mj = load i32, ptr %1, align 8, !tbaa !116
  %i.mk = shl i32 %i.mj, 1                        ; 4 uses
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.lw
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !87
  %i.mn = mul i32 %i.mk, %i.mm
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.mo ; 6 uses
  %i.mq = getelementptr [4 x i8], ptr %i.j, i64 %i.lw
  %i.mr = getelementptr i8, ptr %i.mq, i64 4
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !87
  %i.mt = mul i32 %i.mk, %i.ms
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.mu ; 6 uses
  %i.mw = getelementptr [4 x i8], ptr %i.j, i64 %i.lw
  %i.mx = getelementptr i8, ptr %i.mw, i64 8
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !87
  %i.mz = mul i32 %i.mk, %i.my
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.na ; 4 uses
  %i.nc = getelementptr [4 x i8], ptr %i.j, i64 %i.lw
  %i.nd = getelementptr i8, ptr %i.nc, i64 12
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !87
  %i.nf = mul i32 %i.mk, %i.ne
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ng ; 4 uses
  %i.ni = sext i32 %i.ds to i64
  %i.nj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ni ; 4 uses
  %.val714 = load float, ptr %i.nj, align 1, !tbaa !32
  %i.nk = getelementptr i8, ptr %i.nj, i64 4
  %.val715 = load float, ptr %i.nk, align 1, !tbaa !32
  %i.nl = insertelement <4 x float> poison, float %.val714, i64 0
  %i.nm = insertelement <4 x float> poison, float %.val715, i64 0
  %i.nn = shufflevector <4 x float> %i.nl, <4 x float> %i.nm, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %.val714.1 = load float, ptr %i.no, align 1, !tbaa !32
  %i.np = getelementptr i8, ptr %i.nj, i64 12
  %.val715.1 = load float, ptr %i.np, align 1, !tbaa !32
  %i.nq = insertelement <4 x float> poison, float %.val714.1, i64 0
  %i.nr = insertelement <4 x float> poison, float %.val715.1, i64 0
  %i.ns = shufflevector <4 x float> %i.nq, <4 x float> %i.nr, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.nt = icmp slt i32 %i.cp, %i.cr               ; 3 uses
  br i1 %i.dw, label %.preheader, label %bb.h

.preheader:                                       ; preds = %.preheader4645
  br i1 %i.nt, label %.lr.ph4753, label %.critedge

.lr.ph4753:                                       ; preds = %.preheader, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616
  %indvars.iv4855 = phi i64 [ %indvars.iv.next4856, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ %i.ft, %.preheader ] ; 4 uses
  %.sroa.03952.04751 = phi <16 x float> [ %i.abs, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %.sroa.16.04750 = phi <16 x float> [ %i.abt, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %.sroa.03969.04749 = phi <16 x float> [ %i.abq, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %.sroa.163976.04748 = phi <16 x float> [ %i.abr, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %.sroa.03987.04747 = phi <16 x float> [ %i.abo, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %.sroa.163994.04746 = phi <16 x float> [ %i.abp, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %i.nu = load ptr, ptr %i.bm, align 8, !tbaa !65
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %indvars.iv4855
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !87
  %.not606 = icmp eq i32 %i.nx, -1
  br i1 %.not606, label %.critedge.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit614

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit614: ; preds = %.lr.ph4753
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %indvars.iv4855 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !95 ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !121
  %i.oc = insertelement <16 x i32> poison, i32 %i.ob, i64 0
  %i.od = shufflevector <16 x i32> %i.oc, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.oe = and <16 x i32> %.sroa.04905.0.copyload, %i.od
  %.not4977 = icmp eq <16 x i32> %i.oe, zeroinitializer ; 5 uses
  %i.of = and <16 x i32> %.sroa.6.0.copyload, %i.od
  %.not4978 = icmp eq <16 x i32> %i.of, zeroinitializer ; 2 uses
  %i.og = shl nsw i32 %i.nz, 3
  %i.oh = mul nsw i32 %i.nz, 24
  %i.oi = sext i32 %i.oh to i64                   ; 2 uses
  %i.oj = getelementptr [4 x i8], ptr %i.bl, i64 %i.oi ; 3 uses
  %.val7165146 = load <8 x float>, ptr %i.oj, align 32, !tbaa !32
  %i.ok = shufflevector <8 x float> %.val7165146, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ol = getelementptr i8, ptr %i.oj, i64 32
  %.val7175147 = load <8 x float>, ptr %i.ol, align 32, !tbaa !32
  %i.om = shufflevector <8 x float> %.val7175147, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.on = getelementptr i8, ptr %i.oj, i64 64
  %.val7185148 = load <8 x float>, ptr %i.on, align 32, !tbaa !32
  %i.oo = shufflevector <8 x float> %.val7185148, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.op = fsub <16 x float> %i.kp, %i.ok          ; 3 uses
  %i.oq = fsub <16 x float> %i.kv, %i.ok          ; 3 uses
  %i.or = fsub <16 x float> %i.lc, %i.om          ; 3 uses
  %i.os = fsub <16 x float> %i.li, %i.om          ; 3 uses
  %i.ot = fsub <16 x float> %i.lp, %i.oo          ; 3 uses
  %i.ou = fsub <16 x float> %i.lv, %i.oo          ; 3 uses
  %i.ov = fmul <16 x float> %i.op, %i.op
  %i.ow = fmul <16 x float> %i.or, %i.or
  %i.ox = fadd <16 x float> %i.ov, %i.ow
  %i.oy = fmul <16 x float> %i.ot, %i.ot
  %i.oz = fadd <16 x float> %i.ox, %i.oy          ; 2 uses
  %i.pa = fmul <16 x float> %i.oq, %i.oq
  %i.pb = fmul <16 x float> %i.os, %i.os
  %i.pc = fadd <16 x float> %i.pa, %i.pb
  %i.pd = fmul <16 x float> %i.ou, %i.ou
  %i.pe = fadd <16 x float> %i.pc, %i.pd          ; 2 uses
  %i.pf = fcmp olt <16 x float> %i.oz, %i.bc
  %i.pg = bitcast <16 x i1> %i.pf to i16          ; 3 uses
  %i.ph = fcmp olt <16 x float> %i.pe, %i.bc
  %i.pi = bitcast <16 x i1> %i.ph to i16          ; 3 uses
  %i.pj = shl nsw i32 %i.nz, 1                    ; 3 uses
  %i.pk = icmp eq i32 %i.pj, %i.cu
  br i1 %i.pk, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit614
  %i.pl = and i16 %i.pg, %i.t
  %i.pm = and i16 %i.pi, %i.u
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616

bb.e:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit614
  %i.pn = or disjoint i32 %i.pj, 1
  %i.po = icmp eq i32 %i.pn, %i.cu
  br i1 %i.po, label %bb.f, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616

bb.f:                                             ; preds = %bb.e
  %i.pp = and i16 %i.pg, %i.v
  %i.pq = and i16 %i.pi, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.11.0 = phi i16 [ %i.pm, %bb.d ], [ %i.pq, %bb.f ], [ %i.pi, %bb.e ]
  %.sroa.0.0 = phi i16 [ %i.pl, %bb.d ], [ %i.pp, %bb.f ], [ %i.pg, %bb.e ]
  %i.pr = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.oz, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.ps = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.pe, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.pt = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.pr, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.pu = fmul <16 x float> %i.pr, %i.pt
  %i.pv = fmul <16 x float> %i.pt, splat (float -5.000000e-01)
  %i.pw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pu, <16 x float> %i.pt, <16 x float> splat (float -3.000000e+00))
  %i.px = fmul <16 x float> %i.pv, %i.pw
  %i.py = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.ps, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.pz = fmul <16 x float> %i.ps, %i.py
  %i.qa = fmul <16 x float> %i.py, splat (float -5.000000e-01)
  %i.qb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pz, <16 x float> %i.py, <16 x float> splat (float -3.000000e+00))
  %i.qc = fmul <16 x float> %i.qa, %i.qb
  %i.qd = sext i32 %i.og to i64                   ; 2 uses
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.qd
  %.val7195149 = load <8 x float>, ptr %i.qe, align 32, !tbaa !32
  %i.qf = shufflevector <8 x float> %.val7195149, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.qg = fmul <16 x float> %.sroa.04221.0, %i.qf ; 2 uses
  %i.qh = fmul <16 x float> %.sroa.74225.0, %i.qf ; 2 uses
  %i.qi = bitcast i16 %.sroa.0.0 to <16 x i1>     ; 3 uses
  %i.qj = select <16 x i1> %i.qi, <16 x float> %i.px, <16 x float> zeroinitializer ; 3 uses
  %i.qk = bitcast i16 %.sroa.11.0 to <16 x i1>    ; 3 uses
  %i.ql = select <16 x i1> %i.qk, <16 x float> %i.qc, <16 x float> zeroinitializer ; 3 uses
  %i.qm = fmul <16 x float> %i.qj, %i.qj          ; 4 uses
  %i.qn = fmul <16 x float> %i.ql, %i.ql
  %i.qo = select <16 x i1> %.not4977, <16 x float> zeroinitializer, <16 x float> %i.qj ; 2 uses
  %i.qp = select <16 x i1> %.not4978, <16 x float> zeroinitializer, <16 x float> %i.ql ; 2 uses
  %i.qq = select <16 x i1> %i.qi, <16 x float> %i.pr, <16 x float> zeroinitializer ; 2 uses
  %i.qr = fmul <16 x float> %i.ab, %i.qq          ; 7 uses
  %i.qs = select <16 x i1> %i.qk, <16 x float> %i.ps, <16 x float> zeroinitializer
  %i.qt = fmul <16 x float> %i.ab, %i.qs          ; 7 uses
  %i.qu = fmul <16 x float> %i.qr, %i.qr          ; 15 uses
  %i.qv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qu, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.qw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qu, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.qx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qv, <16 x float> %i.qu, <16 x float> splat (float 1.000000e+00))
  %i.qy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qw, <16 x float> %i.qr, <16 x float> %i.qx) ; 2 uses
  %i.qz = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.qy, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.ra = fneg <16 x float> %i.qz
  %i.rb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ra, <16 x float> %i.qy, <16 x float> splat (float 2.000000e+00))
  %i.rc = fmul <16 x float> %i.qz, %i.rb
  %i.rd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qu, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.re = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qu, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.rf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rd, <16 x float> %i.qu, <16 x float> splat (float f0xBC9DED90))
  %i.rg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.re, <16 x float> %i.qu, <16 x float> splat (float f0x3D8EAF3B))
  %i.rh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rf, <16 x float> %i.qu, <16 x float> splat (float f0xBF409397))
  %i.ri = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> %i.qr, <16 x float> %i.rh)
  %i.rj = fmul <16 x float> %i.ri, %i.rc
  %i.rk = fmul <16 x float> %i.z, %i.rj
  %i.rl = fmul <16 x float> %i.qt, %i.qt          ; 15 uses
  %i.rm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rl, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.rn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rl, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.ro = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rm, <16 x float> %i.rl, <16 x float> splat (float 1.000000e+00))
  %i.rp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rn, <16 x float> %i.qt, <16 x float> %i.ro) ; 2 uses
  %i.rq = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.rp, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.rr = fneg <16 x float> %i.rq
  %i.rs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rr, <16 x float> %i.rp, <16 x float> splat (float 2.000000e+00))
  %i.rt = fmul <16 x float> %i.rq, %i.rs
  %i.ru = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rl, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.rv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rl, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.rw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ru, <16 x float> %i.rl, <16 x float> splat (float f0xBC9DED90))
  %i.rx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rv, <16 x float> %i.rl, <16 x float> splat (float f0x3D8EAF3B))
  %i.ry = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rw, <16 x float> %i.rl, <16 x float> splat (float f0xBF409397))
  %i.rz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rx, <16 x float> %i.qt, <16 x float> %i.ry)
  %i.sa = fmul <16 x float> %i.rz, %i.rt
  %i.sb = fmul <16 x float> %i.z, %i.sa
  %i.sc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rk, <16 x float> %i.qr, <16 x float> %i.qo)
  %i.sd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sb, <16 x float> %i.qt, <16 x float> %i.qp)
  %i.se = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qu, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.sf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qu, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.sg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.se, <16 x float> %i.qr, <16 x float> %i.sf) ; 2 uses
  %i.sh = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.sg, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.si = fneg <16 x float> %i.sh
  %i.sj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.si, <16 x float> %i.sg, <16 x float> splat (float 2.000000e+00))
  %i.sk = fmul <16 x float> %i.sh, %i.sj
  %i.sl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qu, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.sm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qu, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.sn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sl, <16 x float> %i.qu, <16 x float> splat (float f0x3D1E57D6))
  %i.so = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sm, <16 x float> %i.qu, <16 x float> splat (float f0x3DE71E23))
  %i.sp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sn, <16 x float> %i.qu, <16 x float> splat (float f0x3F906EC3))
  %i.sq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.so, <16 x float> %i.qr, <16 x float> %i.sp)
  %i.sr = fmul <16 x float> %i.sq, %i.sk
  %i.ss = fmul <16 x float> %i.z, %i.sr
  %i.st = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rl, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.su = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rl, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.sv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.st, <16 x float> %i.qt, <16 x float> %i.su) ; 2 uses
  %i.sw = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.sv, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.sx = fneg <16 x float> %i.sw
  %i.sy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sx, <16 x float> %i.sv, <16 x float> splat (float 2.000000e+00))
  %i.sz = fmul <16 x float> %i.sw, %i.sy
  %i.ta = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rl, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.tb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rl, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.tc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ta, <16 x float> %i.rl, <16 x float> splat (float f0x3D1E57D6))
  %i.td = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tb, <16 x float> %i.rl, <16 x float> splat (float f0x3DE71E23))
  %i.te = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tc, <16 x float> %i.rl, <16 x float> splat (float f0x3F906EC3))
  %i.tf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.td, <16 x float> %i.qt, <16 x float> %i.te)
  %i.tg = fmul <16 x float> %i.tf, %i.sz
  %i.th = fmul <16 x float> %i.z, %i.tg
  %i.ti = fmul <16 x float> %i.qg, %i.sc
  %i.tj = fmul <16 x float> %i.qh, %i.sd
  %i.tk = select <16 x i1> %.not4977, <16 x float> zeroinitializer, <16 x float> %i.ai
  %i.tl = fadd <16 x float> %i.tk, %i.ss
  %i.tm = select <16 x i1> %.not4978, <16 x float> zeroinitializer, <16 x float> %i.ai
  %i.tn = fadd <16 x float> %i.tm, %i.th
  %i.to = fsub <16 x float> %i.qo, %i.tl
  %i.tp = fmul <16 x float> %i.qg, %i.to
  %i.tq = fsub <16 x float> %i.qp, %i.tn
  %i.tr = fmul <16 x float> %i.qh, %i.tq
  %i.ts = select <16 x i1> %i.qi, <16 x float> %i.tp, <16 x float> zeroinitializer ; 2 uses
  %i.tt = select <16 x i1> %i.qk, <16 x float> %i.tr, <16 x float> zeroinitializer ; 2 uses
  %i.tu = fcmp olt <16 x float> %i.pr, %i.bh      ; 2 uses
  %i.tv = shl nsw i32 %i.nz, 4
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.qd
  %.val7494638.le = load <8 x i32>, ptr %i.tw, align 32, !tbaa !32 ; 2 uses
  %i.tx = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mp, <8 x i32> %.val7494638.le, <8 x i1> splat (i1 true), i32 8)
  %i.ty = bitcast <8 x double> %i.tx to <16 x float> ; 2 uses
  %i.tz = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mv, <8 x i32> %.val7494638.le, <8 x i1> splat (i1 true), i32 8)
  %i.ua = bitcast <8 x double> %i.tz to <16 x float> ; 2 uses
  %i.ub = shufflevector <16 x float> %i.ty, <16 x float> %i.ua, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.uc = shufflevector <16 x float> %i.ty, <16 x float> %i.ua, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.ud = fmul <16 x float> %i.qm, %i.qm
  %i.ue = fmul <16 x float> %i.qm, %i.ud          ; 4 uses
  %i.uf = select <16 x i1> %.not4977, <16 x float> zeroinitializer, <16 x float> %i.ue ; 3 uses
  %i.ug = fmul <16 x float> %i.uf, %i.uf
  %i.uh = fmul <16 x float> %i.uf, %i.ub          ; 2 uses
  %i.ui = fmul <16 x float> %i.ug, %i.uc          ; 2 uses
  %i.uj = fsub <16 x float> %i.ui, %i.uh
  %i.uk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ub, <16 x float> %i.al, <16 x float> %i.uh)
  %i.ul = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uc, <16 x float> %i.ao, <16 x float> %i.ui)
  %i.um = fmul <16 x float> %i.uk, splat (float f0xBE2AAAAB)
  %i.un = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ul, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.um)
  %i.uo = select <16 x i1> %.not4977, <16 x float> zeroinitializer, <16 x float> %i.un
  %i.up = sext i32 %i.tv to i64
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.up
  %.val7205150 = load <8 x float>, ptr %i.uq, align 32, !tbaa !32
  %i.ur = shufflevector <8 x float> %.val7205150, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.us = fmul <16 x float> %i.nn, %i.ur          ; 2 uses
  %i.ut = fmul <16 x float> %i.aw, %i.qq          ; 3 uses
  %i.uu = bitcast <16 x float> %i.ut to <8 x i64>
  %i.uv = xor <8 x i64> %i.uu, splat (i64 -9223372034707292160)
  %i.uw = bitcast <8 x i64> %i.uv to <16 x float> ; 2 uses
  %i.ux = fmul <16 x float> %i.uw, splat (float f0x3FB8AA3B) ; 2 uses
  %i.uy = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.ux, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.uz = shl <16 x i32> %i.uy, splat (i32 23)
  %i.va = add <16 x i32> %i.uz, splat (i32 1065353216)
  %i.vb = bitcast <16 x i32> %i.va to <16 x float> ; 2 uses
  %i.vc = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ux, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4649.preheader
  %i.akx = getelementptr inbounds [4 x i8], ptr %i.akr, i64 %i.akv ; 2 uses
  %i.aky = load <8 x float>, ptr %i.akw, align 32, !tbaa !32
  %i.akz = fadd <8 x float> %i.aks, %i.aky
  store <8 x float> %i.akz, ptr %i.akw, align 32, !tbaa !32
  %i.ala = load <8 x float>, ptr %i.akx, align 32, !tbaa !32
  %i.alb = fadd <8 x float> %i.ala, %i.akt
  store <8 x float> %i.alb, ptr %i.akx, align 32, !tbaa !32
  %i.alc = extractelement <4 x i32> %i.akn, i64 1
  %i.ald = sext i32 %i.alc to i64                 ; 6 uses
  %i.ale = getelementptr inbounds [4 x i8], ptr %i.akp, i64 %i.ald
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 32 ; 2 uses
  %i.alg = getelementptr inbounds [4 x i8], ptr %i.akr, i64 %i.ald
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 32 ; 2 uses
  %i.ali = load <8 x float>, ptr %i.alf, align 32, !tbaa !32
  %i.alj = fadd <8 x float> %i.aks, %i.ali
  store <8 x float> %i.alj, ptr %i.alf, align 32, !tbaa !32
  %i.alk = load <8 x float>, ptr %i.alh, align 32, !tbaa !32
  %i.all = fadd <8 x float> %i.alk, %i.akt
  store <8 x float> %i.all, ptr %i.alh, align 32, !tbaa !32
  %i.alm = extractelement <4 x i32> %i.akn, i64 2
  %i.aln = sext i32 %i.alm to i64                 ; 6 uses
  %i.alo = getelementptr inbounds [4 x i8], ptr %i.akp, i64 %i.aln
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 64 ; 2 uses
  %i.alq = getelementptr inbounds [4 x i8], ptr %i.akr, i64 %i.aln
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 64 ; 2 uses
  %i.als = load <8 x float>, ptr %i.alp, align 32, !tbaa !32
  %i.alt = fadd <8 x float> %i.aks, %i.als
  store <8 x float> %i.alt, ptr %i.alp, align 32, !tbaa !32
  %i.alu = load <8 x float>, ptr %i.alr, align 32, !tbaa !32
  %i.alv = fadd <8 x float> %i.alu, %i.akt
  store <8 x float> %i.alv, ptr %i.alr, align 32, !tbaa !32
  %i.alw = extractelement <4 x i32> %i.akn, i64 3
  %i.alx = sext i32 %i.alw to i64                 ; 6 uses
  %i.aly = getelementptr inbounds [4 x i8], ptr %i.akp, i64 %i.alx
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 96 ; 2 uses
  %i.ama = getelementptr inbounds [4 x i8], ptr %i.akr, i64 %i.alx
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 96 ; 2 uses
  %i.amc = load <8 x float>, ptr %i.alz, align 32, !tbaa !32
  %i.amd = fadd <8 x float> %i.aks, %i.amc
  store <8 x float> %i.amd, ptr %i.alz, align 32, !tbaa !32
  %i.ame = load <8 x float>, ptr %i.amb, align 32, !tbaa !32
  %i.amf = fadd <8 x float> %i.ame, %i.akt
  store <8 x float> %i.amf, ptr %i.amb, align 32, !tbaa !32
  %i.amg = load ptr, ptr %i.ca, align 8, !tbaa !92 ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 16
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !93 ; 4 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amg, i64 24
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !93 ; 4 uses
  %i.aml = shufflevector <16 x float> %i.ahr, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.amm = shufflevector <16 x float> %i.ahr, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.amn = getelementptr inbounds [4 x i8], ptr %i.ami, i64 %i.akv ; 2 uses
  %i.amo = getelementptr inbounds [4 x i8], ptr %i.amk, i64 %i.akv ; 2 uses
  %i.amp = load <8 x float>, ptr %i.amn, align 32, !tbaa !32
  %i.amq = fadd <8 x float> %i.aml, %i.amp
  store <8 x float> %i.amq, ptr %i.amn, align 32, !tbaa !32
  %i.amr = load <8 x float>, ptr %i.amo, align 32, !tbaa !32
  %i.ams = fadd <8 x float> %i.amr, %i.amm
  store <8 x float> %i.ams, ptr %i.amo, align 32, !tbaa !32
  %i.amt = getelementptr inbounds [4 x i8], ptr %i.ami, i64 %i.ald
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 32 ; 2 uses
  %i.amv = getelementptr inbounds [4 x i8], ptr %i.amk, i64 %i.ald
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 32 ; 2 uses
  %i.amx = load <8 x float>, ptr %i.amu, align 32, !tbaa !32
  %i.amy = fadd <8 x float> %i.aml, %i.amx
  store <8 x float> %i.amy, ptr %i.amu, align 32, !tbaa !32
  %i.amz = load <8 x float>, ptr %i.amw, align 32, !tbaa !32
  %i.ana = fadd <8 x float> %i.amz, %i.amm
  store <8 x float> %i.ana, ptr %i.amw, align 32, !tbaa !32
  %i.anb = getelementptr inbounds [4 x i8], ptr %i.ami, i64 %i.aln
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 64 ; 2 uses
  %i.and = getelementptr inbounds [4 x i8], ptr %i.amk, i64 %i.aln
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 64 ; 2 uses
  %i.anf = load <8 x float>, ptr %i.anc, align 32, !tbaa !32
  %i.ang = fadd <8 x float> %i.aml, %i.anf
  store <8 x float> %i.ang, ptr %i.anc, align 32, !tbaa !32
  %i.anh = load <8 x float>, ptr %i.ane, align 32, !tbaa !32
  %i.ani = fadd <8 x float> %i.anh, %i.amm
  store <8 x float> %i.ani, ptr %i.ane, align 32, !tbaa !32
  %i.anj = getelementptr inbounds [4 x i8], ptr %i.ami, i64 %i.alx
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 96 ; 2 uses
  %i.anl = getelementptr inbounds [4 x i8], ptr %i.amk, i64 %i.alx
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 96 ; 2 uses
  %i.ann = load <8 x float>, ptr %i.ank, align 32, !tbaa !32
  %i.ano = fadd <8 x float> %i.aml, %i.ann
  store <8 x float> %i.ano, ptr %i.ank, align 32, !tbaa !32
  %i.anp = load <8 x float>, ptr %i.anm, align 32, !tbaa !32
  %i.anq = fadd <8 x float> %i.anp, %i.amm
  store <8 x float> %i.anq, ptr %i.anm, align 32, !tbaa !32
  %i.anr = load ptr, ptr %i.cc, align 8, !tbaa !92 ; 2 uses
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !93 ; 4 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anr, i64 8
  %i.anu = load ptr, ptr %i.ant, align 8, !tbaa !93 ; 4 uses
  %i.anv = shufflevector <16 x float> %i.ajt, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.anw = shufflevector <16 x float> %i.ajt, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.anx = getelementptr inbounds [4 x i8], ptr %i.ans, i64 %i.akv ; 2 uses
  %i.any = getelementptr inbounds [4 x i8], ptr %i.anu, i64 %i.akv ; 2 uses
  %i.anz = load <8 x float>, ptr %i.anx, align 32, !tbaa !32
  %i.aoa = fadd <8 x float> %i.anv, %i.anz
  store <8 x float> %i.aoa, ptr %i.anx, align 32, !tbaa !32
  %i.aob = load <8 x float>, ptr %i.any, align 32, !tbaa !32
  %i.aoc = fadd <8 x float> %i.aob, %i.anw
  store <8 x float> %i.aoc, ptr %i.any, align 32, !tbaa !32
  %i.aod = getelementptr inbounds [4 x i8], ptr %i.ans, i64 %i.ald
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 32 ; 2 uses
  %i.aof = getelementptr inbounds [4 x i8], ptr %i.anu, i64 %i.ald
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 32 ; 2 uses
  %i.aoh = load <8 x float>, ptr %i.aoe, align 32, !tbaa !32
  %i.aoi = fadd <8 x float> %i.anv, %i.aoh
  store <8 x float> %i.aoi, ptr %i.aoe, align 32, !tbaa !32
  %i.aoj = load <8 x float>, ptr %i.aog, align 32, !tbaa !32
  %i.aok = fadd <8 x float> %i.aoj, %i.anw
  store <8 x float> %i.aok, ptr %i.aog, align 32, !tbaa !32
  %i.aol = getelementptr inbounds [4 x i8], ptr %i.ans, i64 %i.aln
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 64 ; 2 uses
  %i.aon = getelementptr inbounds [4 x i8], ptr %i.anu, i64 %i.aln
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 64 ; 2 uses
  %i.aop = load <8 x float>, ptr %i.aom, align 32, !tbaa !32
  %i.aoq = fadd <8 x float> %i.anv, %i.aop
  store <8 x float> %i.aoq, ptr %i.aom, align 32, !tbaa !32
  %i.aor = load <8 x float>, ptr %i.aoo, align 32, !tbaa !32
  %i.aos = fadd <8 x float> %i.aor, %i.anw
  store <8 x float> %i.aos, ptr %i.aoo, align 32, !tbaa !32
  %i.aot = getelementptr inbounds [4 x i8], ptr %i.ans, i64 %i.alx
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aot, i64 96 ; 2 uses
  %i.aov = getelementptr inbounds [4 x i8], ptr %i.anu, i64 %i.alx
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 96 ; 2 uses
  %i.aox = load <8 x float>, ptr %i.aou, align 32, !tbaa !32
  %i.aoy = fadd <8 x float> %i.anv, %i.aox
  store <8 x float> %i.aoy, ptr %i.aou, align 32, !tbaa !32
  %i.aoz = load <8 x float>, ptr %i.aow, align 32, !tbaa !32
  %i.apa = fadd <8 x float> %i.aoz, %i.anw
  store <8 x float> %i.apa, ptr %i.aow, align 32, !tbaa !32
  %i.apb = fadd <16 x float> %i.ahi, %i.ajs
  %i.apc = fmul <16 x float> %i.aeo, %i.apb       ; 3 uses
  %i.apd = fmul <16 x float> %i.aep, %i.ahj       ; 3 uses
  %i.ape = fmul <16 x float> %i.add, %i.apc       ; 2 uses
  %i.apf = fmul <16 x float> %i.ade, %i.apd       ; 2 uses
  %i.apg = fmul <16 x float> %i.adf, %i.apc       ; 2 uses
  %i.aph = fmul <16 x float> %i.adg, %i.apd       ; 2 uses
  %i.api = fmul <16 x float> %i.adh, %i.apc       ; 2 uses
  %i.apj = fmul <16 x float> %i.adi, %i.apd       ; 2 uses
  %i.apk = fadd <16 x float> %.sroa.03987.14782, %i.ape ; 2 uses
  %i.apl = fadd <16 x float> %.sroa.163994.14781, %i.apf ; 2 uses
  %i.apm = fadd <16 x float> %.sroa.03969.14784, %i.apg ; 2 uses
  %i.apn = fadd <16 x float> %.sroa.163976.14783, %i.aph ; 2 uses
  %i.apo = fadd <16 x float> %.sroa.03952.14786, %i.api ; 2 uses
  %i.app = fadd <16 x float> %.sroa.16.14785, %i.apj ; 2 uses
  %i.apq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.acw ; 4 uses
  %i.apr = fadd <16 x float> %i.apf, %i.ape       ; 2 uses
  %i.aps = fadd <16 x float> %i.aph, %i.apg       ; 2 uses
  %i.apt = fadd <16 x float> %i.apj, %i.api       ; 2 uses
  %i.apu = load <8 x float>, ptr %i.apq, align 32, !tbaa !32
  %i.apv = shufflevector <16 x float> %i.apr, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.apw = shufflevector <16 x float> %i.apr, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apx = fadd <8 x float> %i.apv, %i.apw
  %i.apy = fsub <8 x float> %i.apu, %i.apx
  store <8 x float> %i.apy, ptr %i.apq, align 32, !tbaa !32
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apq, i64 32 ; 2 uses
  %i.aqa = load <8 x float>, ptr %i.apz, align 32, !tbaa !32
  %i.aqb = shufflevector <16 x float> %i.aps, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aqc = shufflevector <16 x float> %i.aps, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aqd = fadd <8 x float> %i.aqb, %i.aqc
  %i.aqe = fsub <8 x float> %i.aqa, %i.aqd
  store <8 x float> %i.aqe, ptr %i.apz, align 32, !tbaa !32
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.apq, i64 64 ; 2 uses
  %i.aqg = load <8 x float>, ptr %i.aqf, align 32, !tbaa !32
  %i.aqh = shufflevector <16 x float> %i.apt, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aqi = shufflevector <16 x float> %i.apt, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aqj = fadd <8 x float> %i.aqh, %i.aqi
  %i.aqk = fsub <8 x float> %i.aqg, %i.aqj
  store <8 x float> %i.aqk, ptr %i.aqf, align 32, !tbaa !32
  %indvars.iv.next4860 = add nsw i64 %indvars.iv4859, 1 ; 2 uses
  %exitcond4863.not = icmp eq i64 %indvars.iv.next4860, %wide.trip.count4862
  br i1 %exitcond4863.not, label %.loopexit, label %bb.g, !llvm.loop !18

bb.h:                                             ; preds = %.preheader4645
  br i1 %i.du, label %.preheader4642, label %.preheader4644

.preheader4644:                                   ; preds = %bb.h
  br i1 %i.nt, label %.lr.ph, label %.critedge5

.lr.ph:                                           ; preds = %.preheader4644
  %wide.trip.count = sext i32 %i.cr to i64
  br label %bb.n

.preheader4642:                                   ; preds = %bb.h
  br i1 %i.nt, label %.lr.ph4702, label %.critedge3

.lr.ph4702:                                       ; preds = %.preheader4642
  %wide.trip.count4842 = sext i32 %i.cr to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph4702, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615
  %indvars.iv4839 = phi i64 [ %i.ft, %.lr.ph4702 ], [ %indvars.iv.next4840, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ] ; 4 uses
  %.sroa.03952.24700 = phi <16 x float> [ zeroinitializer, %.lr.ph4702 ], [ %i.bhv, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ] ; 2 uses
  %.sroa.16.24699 = phi <16 x float> [ zeroinitializer, %.lr.ph4702 ], [ %i.bhw, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ] ; 2 uses
  %.sroa.03969.24698 = phi <16 x float> [ zeroinitializer, %.lr.ph4702 ], [ %i.bht, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ] ; 2 uses
  %.sroa.163976.24697 = phi <16 x float> [ zeroinitializer, %.lr.ph4702 ], [ %i.bhu, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ] ; 2 uses
  %.sroa.03987.24696 = phi <16 x float> [ zeroinitializer, %.lr.ph4702 ], [ %i.bhr, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ] ; 2 uses
  %.sroa.163994.24695 = phi <16 x float> [ zeroinitializer, %.lr.ph4702 ], [ %i.bhs, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ] ; 2 uses
  %i.aql = load ptr, ptr %i.bm, align 8, !tbaa !65
  %i.aqm = getelementptr inbounds nuw [8 x i8], ptr %i.aql, i64 %indvars.iv4839
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 4
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !87
  %.not605 = icmp eq i32 %i.aqo, -1
  br i1 %.not605, label %.critedge3.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit610

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit610: ; preds = %bb.i
  %i.aqp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %indvars.iv4839 ; 2 uses
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !95 ; 4 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqp, i64 4
  %i.aqs = load i32, ptr %i.aqr, align 4, !tbaa !121
  %i.aqt = insertelement <16 x i32> poison, i32 %i.aqs, i64 0
  %i.aqu = shufflevector <16 x i32> %i.aqt, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.aqv = and <16 x i32> %.sroa.04905.0.copyload, %i.aqu
  %.not4975 = icmp eq <16 x i32> %i.aqv, zeroinitializer ; 5 uses
  %i.aqw = and <16 x i32> %.sroa.6.0.copyload, %i.aqu
  %.not4976 = icmp eq <16 x i32> %i.aqw, zeroinitializer ; 5 uses
  %i.aqx = shl nsw i32 %i.aqq, 3
  %i.aqy = mul nsw i32 %i.aqq, 24
  %i.aqz = sext i32 %i.aqy to i64                 ; 2 uses
  %i.ara = getelementptr [4 x i8], ptr %i.bl, i64 %i.aqz ; 3 uses
  %.val7265136 = load <8 x float>, ptr %i.ara, align 32, !tbaa !32
  %i.arb = shufflevector <8 x float> %.val7265136, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.arc = getelementptr i8, ptr %i.ara, i64 32
  %.val7275137 = load <8 x float>, ptr %i.arc, align 32, !tbaa !32
  %i.ard = shufflevector <8 x float> %.val7275137, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.are = getelementptr i8, ptr %i.ara, i64 64
  %.val7285138 = load <8 x float>, ptr %i.are, align 32, !tbaa !32
  %i.arf = shufflevector <8 x float> %.val7285138, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.arg = fsub <16 x float> %i.kp, %i.arb        ; 3 uses
  %i.arh = fsub <16 x float> %i.kv, %i.arb        ; 3 uses
  %i.ari = fsub <16 x float> %i.lc, %i.ard        ; 3 uses
  %i.arj = fsub <16 x float> %i.li, %i.ard        ; 3 uses
  %i.ark = fsub <16 x float> %i.lp, %i.arf        ; 3 uses
  %i.arl = fsub <16 x float> %i.lv, %i.arf        ; 3 uses
  %i.arm = fmul <16 x float> %i.arg, %i.arg
  %i.arn = fmul <16 x float> %i.ari, %i.ari
  %i.aro = fadd <16 x float> %i.arm, %i.arn
  %i.arp = fmul <16 x float> %i.ark, %i.ark
  %i.arq = fadd <16 x float> %i.aro, %i.arp       ; 2 uses
  %i.arr = fmul <16 x float> %i.arh, %i.arh
  %i.ars = fmul <16 x float> %i.arj, %i.arj
  %i.art = fadd <16 x float> %i.arr, %i.ars
  %i.aru = fmul <16 x float> %i.arl, %i.arl
  %i.arv = fadd <16 x float> %i.art, %i.aru       ; 2 uses
  %i.arw = fcmp olt <16 x float> %i.arq, %i.bc
  %i.arx = bitcast <16 x i1> %i.arw to i16        ; 3 uses
  %i.ary = fcmp olt <16 x float> %i.arv, %i.bc
  %i.arz = bitcast <16 x i1> %i.ary to i16        ; 3 uses
  %i.asa = shl nsw i32 %i.aqq, 1                  ; 3 uses
  %i.asb = icmp eq i32 %i.asa, %i.cu
  br i1 %i.asb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit610
  %i.asc = and i16 %i.arx, %i.t
  %i.asd = and i16 %i.arz, %i.u
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615

bb.k:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit610
  %i.ase = or disjoint i32 %i.asa, 1
  %i.asf = icmp eq i32 %i.ase, %i.cu
  br i1 %i.asf, label %bb.l, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615

bb.l:                                             ; preds = %bb.k
  %i.asg = and i16 %i.arx, %i.v
  %i.ash = and i16 %i.arz, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.114623.0 = phi i16 [ %i.asd, %bb.j ], [ %i.ash, %bb.l ], [ %i.arz, %bb.k ]
  %.sroa.04620.0 = phi i16 [ %i.asc, %bb.j ], [ %i.asg, %bb.l ], [ %i.arx, %bb.k ]
  %i.asi = sext i32 %i.aqx to i64                 ; 2 uses
  %i.asj = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.asi
  %.val7295139 = load <8 x float>, ptr %i.asj, align 32, !tbaa !32
  %i.ask = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.asi
  %.val7474635 = load <8 x i32>, ptr %i.ask, align 32, !tbaa !32 ; 4 uses
  %i.asl = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mp, <8 x i32> %.val7474635, <8 x i1> splat (i1 true), i32 8)
  %i.asm = bitcast <8 x double> %i.asl to <16 x float> ; 2 uses
  %i.asn = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mv, <8 x i32> %.val7474635, <8 x i1> splat (i1 true), i32 8)
  %i.aso = bitcast <8 x double> %i.asn to <16 x float> ; 2 uses
  %i.asp = shufflevector <16 x float> %i.asm, <16 x float> %i.aso, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.asq = shufflevector <16 x float> %i.asm, <16 x float> %i.aso, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.asr = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nb, <8 x i32> %.val7474635, <8 x i1> splat (i1 true), i32 8)
  %i.ass = bitcast <8 x double> %i.asr to <16 x float> ; 2 uses
  %i.ast = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nh, <8 x i32> %.val7474635, <8 x i1> splat (i1 true), i32 8)
  %i.asu = bitcast <8 x double> %i.ast to <16 x float> ; 2 uses
  %i.asv = shufflevector <16 x float> %i.ass, <16 x float> %i.asu, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.asw = shufflevector <16 x float> %i.ass, <16 x float> %i.asu, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.asx = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.arq, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.asy = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.arv, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.asz = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.asx, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.ata = fmul <16 x float> %i.asx, %i.asz
  %i.atb = fmul <16 x float> %i.asz, splat (float -5.000000e-01)
  %i.atc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ata, <16 x float> %i.asz, <16 x float> splat (float -3.000000e+00))
  %i.atd = fmul <16 x float> %i.atb, %i.atc
  %i.ate = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.asy, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.atf = fmul <16 x float> %i.asy, %i.ate
  %i.atg = fmul <16 x float> %i.ate, splat (float -5.000000e-01)
  %i.ath = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atf, <16 x float> %i.ate, <16 x float> splat (float -3.000000e+00))
  %i.ati = fmul <16 x float> %i.atg, %i.ath
  %i.atj = shufflevector <8 x float> %.val7295139, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.atk = fmul <16 x float> %.sroa.04221.0, %i.atj ; 2 uses
  %i.atl = fmul <16 x float> %.sroa.74225.0, %i.atj ; 2 uses
  %i.atm = bitcast i16 %.sroa.04620.0 to <16 x i1> ; 3 uses
  %i.atn = select <16 x i1> %i.atm, <16 x float> %i.atd, <16 x float> zeroinitializer ; 3 uses
  %i.ato = bitcast i16 %.sroa.114623.0 to <16 x i1> ; 3 uses
  %i.atp = select <16 x i1> %i.ato, <16 x float> %i.ati, <16 x float> zeroinitializer ; 3 uses
  %i.atq = fmul <16 x float> %i.atn, %i.atn       ; 4 uses
  %i.atr = fmul <16 x float> %i.atp, %i.atp       ; 4 uses
  %i.ats = select <16 x i1> %.not4975, <16 x float> zeroinitializer, <16 x float> %i.atn ; 2 uses
  %i.att = select <16 x i1> %.not4976, <16 x float> zeroinitializer, <16 x float> %i.atp ; 2 uses
  %i.atu = select <16 x i1> %i.atm, <16 x float> %i.asx, <16 x float> zeroinitializer ; 2 uses
  %i.atv = fmul <16 x float> %i.ab, %i.atu        ; 7 uses
  %i.atw = select <16 x i1> %i.ato, <16 x float> %i.asy, <16 x float> zeroinitializer ; 2 uses
  %i.atx = fmul <16 x float> %i.ab, %i.atw        ; 7 uses
  %i.aty = fmul <16 x float> %i.atv, %i.atv       ; 15 uses
  %i.atz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aty, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.aua = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aty, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.aub = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atz, <16 x float> %i.aty, <16 x float> splat (float 1.000000e+00))
  %i.auc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aua, <16 x float> %i.atv, <16 x float> %i.aub) ; 2 uses
  %i.aud = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.auc, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.aue = fneg <16 x float> %i.aud
  %i.auf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aue, <16 x float> %i.auc, <16 x float> splat (float 2.000000e+00))
  %i.aug = fmul <16 x float> %i.aud, %i.auf
  %i.auh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aty, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.aui = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aty, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.auj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auh, <16 x float> %i.aty, <16 x float> splat (float f0xBC9DED90))
  %i.auk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aui, <16 x float> %i.aty, <16 x float> splat (float f0x3D8EAF3B))
  %i.aul = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auj, <16 x float> %i.aty, <16 x float> splat (float f0xBF409397))
  %i.aum = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auk, <16 x float> %i.atv, <16 x float> %i.aul)
  %i.aun = fmul <16 x float> %i.aum, %i.aug
  %i.auo = fmul <16 x float> %i.z, %i.aun
  %i.aup = fmul <16 x float> %i.atx, %i.atx       ; 15 uses
  %i.auq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aup, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.aur = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aup, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.aus = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auq, <16 x float> %i.aup, <16 x float> splat (float 1.000000e+00))
  %i.aut = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aur, <16 x float> %i.atx, <16 x float> %i.aus) ; 2 uses
  %i.auu = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.aut, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.auv = fneg <16 x float> %i.auu
  %i.auw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auv, <16 x float> %i.aut, <16 x float> splat (float 2.000000e+00))
  %i.aux = fmul <16 x float> %i.auu, %i.auw
  %i.auy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aup, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.auz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aup, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.ava = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auy, <16 x float> %i.aup, <16 x float> splat (float f0xBC9DED90))
  %i.avb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auz, <16 x float> %i.aup, <16 x float> splat (float f0x3D8EAF3B))
  %i.avc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ava, <16 x float> %i.aup, <16 x float> splat (float f0xBF409397))
  %i.avd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avb, <16 x float> %i.atx, <16 x float> %i.avc)
  %i.ave = fmul <16 x float> %i.avd, %i.aux
  %i.avf = fmul <16 x float> %i.z, %i.ave
  %i.avg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auo, <16 x float> %i.atv, <16 x float> %i.ats)
  %i.avh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avf, <16 x float> %i.atx, <16 x float> %i.att)
  %i.avi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aty, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.avj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aty, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.avk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avi, <16 x float> %i.atv, <16 x float> %i.avj) ; 2 uses
  %i.avl = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.avk, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.avm = fneg <16 x float> %i.avl
  %i.avn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avm, <16 x float> %i.avk, <16 x float> splat (float 2.000000e+00))
  %i.avo = fmul <16 x float> %i.avl, %i.avn
  %i.avp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aty, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.avq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aty, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.avr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avp, <16 x float> %i.aty, <16 x float> splat (float f0x3D1E57D6))
  %i.avs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avq, <16 x float> %i.aty, <16 x float> splat (float f0x3DE71E23))
  %i.avt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avr, <16 x float> %i.aty, <16 x float> splat (float f0x3F906EC3))
  %i.avu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avs, <16 x float> %i.atv, <16 x float> %i.avt)
  %i.avv = fmul <16 x float> %i.avu, %i.avo
  %i.avw = fmul <16 x float> %i.z, %i.avv
  %i.avx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aup, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.avy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aup, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.avz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avx, <16 x float> %i.atx, <16 x float> %i.avy) ; 2 uses
  %i.awa = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.avz, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.awb = fneg <16 x float> %i.awa
  %i.awc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.awb, <16 x float> %i.avz, <16 x float> splat (float 2.000000e+00))
  %i.awd = fmul <16 x float> %i.awa, %i.awc
  %i.awe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aup, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.awf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aup, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.awg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.awe, <16 x float> %i.aup, <16 x float> splat (float f0x3D1E57D6))
  %i.awh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.awf, <16 x float> %i.aup, <16 x float> splat (float f0x3DE71E23))
  %i.awi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.awg, <16 x float> %i.aup, <16 x float> splat (float f0x3F906EC3))
  %i.awj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.awh, <16 x float> %i.atx, <16 x float> %i.awi)
  %i.awk = fmul <16 x float> %i.awj, %i.awd
  %i.awl = fmul <16 x float> %i.z, %i.awk
  %i.awm = fmul <16 x float> %i.atk, %i.avg
  %i.awn = fmul <16 x float> %i.atl, %i.avh
  %i.awo = select <16 x i1> %.not4975, <16 x float> zeroinitializer, <16 x float> %i.ai
  %i.awp = fadd <16 x float> %i.awo, %i.avw
  %i.awq = select <16 x i1> %.not4976, <16 x float> zeroinitializer, <16 x float> %i.ai
  %i.awr = fadd <16 x float> %i.awq, %i.awl
  %i.aws = fsub <16 x float> %i.ats, %i.awp
  %i.awt = fmul <16 x float> %i.atk, %i.aws
  %i.awu = fsub <16 x float> %i.att, %i.awr
  %i.awv = fmul <16 x float> %i.atl, %i.awu
  %i.aww = select <16 x i1> %i.atm, <16 x float> %i.awt, <16 x float> zeroinitializer ; 2 uses
  %i.awx = select <16 x i1> %i.ato, <16 x float> %i.awv, <16 x float> zeroinitializer ; 2 uses
  %i.awy = fcmp olt <16 x float> %i.asx, %i.bh    ; 2 uses
  %i.awz = fcmp olt <16 x float> %i.asy, %i.bh    ; 2 uses
  %i.axa = shl nsw i32 %i.aqq, 4
  %i.axb = fmul <16 x float> %i.atq, %i.atq
  %i.axc = fmul <16 x float> %i.atq, %i.axb       ; 4 uses
  %i.axd = fmul <16 x float> %i.atr, %i.atr
  %i.axe = fmul <16 x float> %i.atr, %i.axd       ; 4 uses
  %i.axf = select <16 x i1> %.not4975, <16 x float> zeroinitializer, <16 x float> %i.axc ; 3 uses
  %i.axg = select <16 x i1> %.not4976, <16 x float> zeroinitializer, <16 x float> %i.axe ; 3 uses
  %i.axh = fmul <16 x float> %i.axf, %i.axf
  %i.axi = fmul <16 x float> %i.axg, %i.axg
  %i.axj = fmul <16 x float> %i.axf, %i.asp       ; 2 uses
  %i.axk = fmul <16 x float> %i.axg, %i.asv       ; 2 uses
  %i.axl = fmul <16 x float> %i.axh, %i.asq       ; 2 uses
  %i.axm = fmul <16 x float> %i.axi, %i.asw       ; 2 uses
  %i.axn = fsub <16 x float> %i.axl, %i.axj
  %i.axo = fsub <16 x float> %i.axm, %i.axk
  %i.axp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asp, <16 x float> %i.al, <16 x float> %i.axj)
  %i.axq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asv, <16 x float> %i.al, <16 x float> %i.axk)
  %i.axr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asq, <16 x float> %i.ao, <16 x float> %i.axl)
  %i.axs = fmul <16 x float> %i.axp, splat (float f0xBE2AAAAB)
  %i.axt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.axr, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.axs)
  %i.axu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asw, <16 x float> %i.ao, <16 x float> %i.axm)
end_hunk_2
begin_hunk_3_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4649.preheader
  %i.btv = fadd <8 x float> %i.btu, %i.bst
  store <8 x float> %i.btv, ptr %i.btr, align 32, !tbaa !32
  %i.btw = extractelement <4 x i32> %i.bsn, i64 3
  %i.btx = sext i32 %i.btw to i64                 ; 8 uses
  %i.bty = getelementptr inbounds [4 x i8], ptr %i.bsp, i64 %i.btx
  %i.btz = getelementptr inbounds nuw i8, ptr %i.bty, i64 96 ; 2 uses
  %i.bua = getelementptr inbounds [4 x i8], ptr %i.bsr, i64 %i.btx
  %i.bub = getelementptr inbounds nuw i8, ptr %i.bua, i64 96 ; 2 uses
  %i.buc = load <8 x float>, ptr %i.btz, align 32, !tbaa !32
  %i.bud = fadd <8 x float> %i.bss, %i.buc
  store <8 x float> %i.bud, ptr %i.btz, align 32, !tbaa !32
  %i.bue = load <8 x float>, ptr %i.bub, align 32, !tbaa !32
  %i.buf = fadd <8 x float> %i.bue, %i.bst
  store <8 x float> %i.buf, ptr %i.bub, align 32, !tbaa !32
  %i.bug = load ptr, ptr %i.ca, align 8, !tbaa !92 ; 2 uses
  %i.buh = getelementptr inbounds nuw i8, ptr %i.bug, i64 16
  %i.bui = load ptr, ptr %i.buh, align 8, !tbaa !93 ; 4 uses
  %i.buj = getelementptr inbounds nuw i8, ptr %i.bug, i64 24
  %i.buk = load ptr, ptr %i.buj, align 8, !tbaa !93 ; 4 uses
  %i.bul = shufflevector <16 x float> %i.boh, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bum = shufflevector <16 x float> %i.boh, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bun = getelementptr inbounds [4 x i8], ptr %i.bui, i64 %i.bsv ; 2 uses
  %i.buo = getelementptr inbounds [4 x i8], ptr %i.buk, i64 %i.bsv ; 2 uses
  %i.bup = load <8 x float>, ptr %i.bun, align 32, !tbaa !32
  %i.buq = fadd <8 x float> %i.bul, %i.bup
  store <8 x float> %i.buq, ptr %i.bun, align 32, !tbaa !32
  %i.bur = load <8 x float>, ptr %i.buo, align 32, !tbaa !32
  %i.bus = fadd <8 x float> %i.bur, %i.bum
  store <8 x float> %i.bus, ptr %i.buo, align 32, !tbaa !32
  %i.but = getelementptr inbounds [4 x i8], ptr %i.bui, i64 %i.btd
  %i.buu = getelementptr inbounds nuw i8, ptr %i.but, i64 32 ; 2 uses
  %i.buv = getelementptr inbounds [4 x i8], ptr %i.buk, i64 %i.btd
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buv, i64 32 ; 2 uses
  %i.bux = load <8 x float>, ptr %i.buu, align 32, !tbaa !32
  %i.buy = fadd <8 x float> %i.bul, %i.bux
  store <8 x float> %i.buy, ptr %i.buu, align 32, !tbaa !32
  %i.buz = load <8 x float>, ptr %i.buw, align 32, !tbaa !32
  %i.bva = fadd <8 x float> %i.buz, %i.bum
  store <8 x float> %i.bva, ptr %i.buw, align 32, !tbaa !32
  %i.bvb = getelementptr inbounds [4 x i8], ptr %i.bui, i64 %i.btn
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bvb, i64 64 ; 2 uses
  %i.bvd = getelementptr inbounds [4 x i8], ptr %i.buk, i64 %i.btn
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bvd, i64 64 ; 2 uses
  %i.bvf = load <8 x float>, ptr %i.bvc, align 32, !tbaa !32
  %i.bvg = fadd <8 x float> %i.bul, %i.bvf
  store <8 x float> %i.bvg, ptr %i.bvc, align 32, !tbaa !32
  %i.bvh = load <8 x float>, ptr %i.bve, align 32, !tbaa !32
  %i.bvi = fadd <8 x float> %i.bvh, %i.bum
  store <8 x float> %i.bvi, ptr %i.bve, align 32, !tbaa !32
  %i.bvj = getelementptr inbounds [4 x i8], ptr %i.bui, i64 %i.btx
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bvj, i64 96 ; 2 uses
  %i.bvl = getelementptr inbounds [4 x i8], ptr %i.buk, i64 %i.btx
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvl, i64 96 ; 2 uses
  %i.bvn = load <8 x float>, ptr %i.bvk, align 32, !tbaa !32
  %i.bvo = fadd <8 x float> %i.bul, %i.bvn
  store <8 x float> %i.bvo, ptr %i.bvk, align 32, !tbaa !32
  %i.bvp = load <8 x float>, ptr %i.bvm, align 32, !tbaa !32
  %i.bvq = fadd <8 x float> %i.bvp, %i.bum
  store <8 x float> %i.bvq, ptr %i.bvm, align 32, !tbaa !32
  %i.bvr = load ptr, ptr %i.cc, align 8, !tbaa !92 ; 2 uses
  %i.bvs = load ptr, ptr %i.bvr, align 8, !tbaa !93 ; 4 uses
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bvr, i64 8
  %i.bvu = load ptr, ptr %i.bvt, align 8, !tbaa !93 ; 4 uses
  %i.bvv = shufflevector <16 x float> %i.brs, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bvw = shufflevector <16 x float> %i.brs, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bvx = getelementptr inbounds [4 x i8], ptr %i.bvs, i64 %i.bsv ; 2 uses
  %i.bvy = getelementptr inbounds [4 x i8], ptr %i.bvu, i64 %i.bsv ; 2 uses
  %i.bvz = load <8 x float>, ptr %i.bvx, align 32, !tbaa !32
  %i.bwa = fadd <8 x float> %i.bvv, %i.bvz
  store <8 x float> %i.bwa, ptr %i.bvx, align 32, !tbaa !32
  %i.bwb = load <8 x float>, ptr %i.bvy, align 32, !tbaa !32
  %i.bwc = fadd <8 x float> %i.bwb, %i.bvw
  store <8 x float> %i.bwc, ptr %i.bvy, align 32, !tbaa !32
  %i.bwd = getelementptr inbounds [4 x i8], ptr %i.bvs, i64 %i.btd
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bwd, i64 32 ; 2 uses
  %i.bwf = getelementptr inbounds [4 x i8], ptr %i.bvu, i64 %i.btd
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwf, i64 32 ; 2 uses
  %i.bwh = load <8 x float>, ptr %i.bwe, align 32, !tbaa !32
  %i.bwi = fadd <8 x float> %i.bvv, %i.bwh
  store <8 x float> %i.bwi, ptr %i.bwe, align 32, !tbaa !32
  %i.bwj = load <8 x float>, ptr %i.bwg, align 32, !tbaa !32
  %i.bwk = fadd <8 x float> %i.bwj, %i.bvw
  store <8 x float> %i.bwk, ptr %i.bwg, align 32, !tbaa !32
  %i.bwl = getelementptr inbounds [4 x i8], ptr %i.bvs, i64 %i.btn
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwl, i64 64 ; 2 uses
  %i.bwn = getelementptr inbounds [4 x i8], ptr %i.bvu, i64 %i.btn
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bwn, i64 64 ; 2 uses
  %i.bwp = load <8 x float>, ptr %i.bwm, align 32, !tbaa !32
  %i.bwq = fadd <8 x float> %i.bvv, %i.bwp
  store <8 x float> %i.bwq, ptr %i.bwm, align 32, !tbaa !32
  %i.bwr = load <8 x float>, ptr %i.bwo, align 32, !tbaa !32
  %i.bws = fadd <8 x float> %i.bwr, %i.bvw
  store <8 x float> %i.bws, ptr %i.bwo, align 32, !tbaa !32
  %i.bwt = getelementptr inbounds [4 x i8], ptr %i.bvs, i64 %i.btx
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bwt, i64 96 ; 2 uses
  %i.bwv = getelementptr inbounds [4 x i8], ptr %i.bvu, i64 %i.btx
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bwv, i64 96 ; 2 uses
  %i.bwx = load <8 x float>, ptr %i.bwu, align 32, !tbaa !32
  %i.bwy = fadd <8 x float> %i.bvv, %i.bwx
  store <8 x float> %i.bwy, ptr %i.bwu, align 32, !tbaa !32
  %i.bwz = load <8 x float>, ptr %i.bww, align 32, !tbaa !32
  %i.bxa = fadd <8 x float> %i.bwz, %i.bvw
  store <8 x float> %i.bxa, ptr %i.bww, align 32, !tbaa !32
  %i.bxb = load ptr, ptr %i.cc, align 8, !tbaa !92 ; 2 uses
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bxb, i64 16
  %i.bxd = load ptr, ptr %i.bxc, align 8, !tbaa !93 ; 4 uses
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bxb, i64 24
  %i.bxf = load ptr, ptr %i.bxe, align 8, !tbaa !93 ; 4 uses
  %i.bxg = shufflevector <16 x float> %i.brt, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bxh = shufflevector <16 x float> %i.brt, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bxi = getelementptr inbounds [4 x i8], ptr %i.bxd, i64 %i.bsv ; 2 uses
  %i.bxj = getelementptr inbounds [4 x i8], ptr %i.bxf, i64 %i.bsv ; 2 uses
  %i.bxk = load <8 x float>, ptr %i.bxi, align 32, !tbaa !32
  %i.bxl = fadd <8 x float> %i.bxg, %i.bxk
  store <8 x float> %i.bxl, ptr %i.bxi, align 32, !tbaa !32
  %i.bxm = load <8 x float>, ptr %i.bxj, align 32, !tbaa !32
  %i.bxn = fadd <8 x float> %i.bxm, %i.bxh
  store <8 x float> %i.bxn, ptr %i.bxj, align 32, !tbaa !32
  %i.bxo = getelementptr inbounds [4 x i8], ptr %i.bxd, i64 %i.btd
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bxo, i64 32 ; 2 uses
  %i.bxq = getelementptr inbounds [4 x i8], ptr %i.bxf, i64 %i.btd
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bxq, i64 32 ; 2 uses
  %i.bxs = load <8 x float>, ptr %i.bxp, align 32, !tbaa !32
  %i.bxt = fadd <8 x float> %i.bxg, %i.bxs
  store <8 x float> %i.bxt, ptr %i.bxp, align 32, !tbaa !32
  %i.bxu = load <8 x float>, ptr %i.bxr, align 32, !tbaa !32
  %i.bxv = fadd <8 x float> %i.bxu, %i.bxh
  store <8 x float> %i.bxv, ptr %i.bxr, align 32, !tbaa !32
  %i.bxw = getelementptr inbounds [4 x i8], ptr %i.bxd, i64 %i.btn
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxw, i64 64 ; 2 uses
  %i.bxy = getelementptr inbounds [4 x i8], ptr %i.bxf, i64 %i.btn
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxy, i64 64 ; 2 uses
  %i.bya = load <8 x float>, ptr %i.bxx, align 32, !tbaa !32
  %i.byb = fadd <8 x float> %i.bxg, %i.bya
  store <8 x float> %i.byb, ptr %i.bxx, align 32, !tbaa !32
  %i.byc = load <8 x float>, ptr %i.bxz, align 32, !tbaa !32
  %i.byd = fadd <8 x float> %i.byc, %i.bxh
  store <8 x float> %i.byd, ptr %i.bxz, align 32, !tbaa !32
  %i.bye = getelementptr inbounds [4 x i8], ptr %i.bxd, i64 %i.btx
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bye, i64 96 ; 2 uses
  %i.byg = getelementptr inbounds [4 x i8], ptr %i.bxf, i64 %i.btx
  %i.byh = getelementptr inbounds nuw i8, ptr %i.byg, i64 96 ; 2 uses
  %i.byi = load <8 x float>, ptr %i.byf, align 32, !tbaa !32
  %i.byj = fadd <8 x float> %i.bxg, %i.byi
  store <8 x float> %i.byj, ptr %i.byf, align 32, !tbaa !32
  %i.byk = load <8 x float>, ptr %i.byh, align 32, !tbaa !32
  %i.byl = fadd <8 x float> %i.byk, %i.bxh
  store <8 x float> %i.byl, ptr %i.byh, align 32, !tbaa !32
  %i.bym = fadd <16 x float> %i.bny, %i.brq
  %i.byn = fmul <16 x float> %i.ble, %i.bym       ; 3 uses
  %i.byo = fadd <16 x float> %i.bnz, %i.brr
  %i.byp = fmul <16 x float> %i.blf, %i.byo       ; 3 uses
  %i.byq = fmul <16 x float> %i.bjv, %i.byn       ; 2 uses
  %i.byr = fmul <16 x float> %i.bjw, %i.byp       ; 2 uses
  %i.bys = fmul <16 x float> %i.bjx, %i.byn       ; 2 uses
  %i.byt = fmul <16 x float> %i.bjy, %i.byp       ; 2 uses
  %i.byu = fmul <16 x float> %i.bjz, %i.byn       ; 2 uses
  %i.byv = fmul <16 x float> %i.bka, %i.byp       ; 2 uses
  %i.byw = fadd <16 x float> %.sroa.03987.34720, %i.byq ; 2 uses
  %i.byx = fadd <16 x float> %.sroa.163994.34719, %i.byr ; 2 uses
  %i.byy = fadd <16 x float> %.sroa.03969.34722, %i.bys ; 2 uses
  %i.byz = fadd <16 x float> %.sroa.163976.34721, %i.byt ; 2 uses
  %i.bza = fadd <16 x float> %.sroa.03952.34724, %i.byu ; 2 uses
  %i.bzb = fadd <16 x float> %.sroa.16.34723, %i.byv ; 2 uses
  %i.bzc = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.biz ; 4 uses
  %i.bzd = fadd <16 x float> %i.byq, %i.byr       ; 2 uses
  %i.bze = fadd <16 x float> %i.bys, %i.byt       ; 2 uses
  %i.bzf = fadd <16 x float> %i.byu, %i.byv       ; 2 uses
  %i.bzg = load <8 x float>, ptr %i.bzc, align 32, !tbaa !32
  %i.bzh = shufflevector <16 x float> %i.bzd, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bzi = shufflevector <16 x float> %i.bzd, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bzj = fadd <8 x float> %i.bzh, %i.bzi
  %i.bzk = fsub <8 x float> %i.bzg, %i.bzj
  store <8 x float> %i.bzk, ptr %i.bzc, align 32, !tbaa !32
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bzc, i64 32 ; 2 uses
  %i.bzm = load <8 x float>, ptr %i.bzl, align 32, !tbaa !32
  %i.bzn = shufflevector <16 x float> %i.bze, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bzo = shufflevector <16 x float> %i.bze, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bzp = fadd <8 x float> %i.bzn, %i.bzo
  %i.bzq = fsub <8 x float> %i.bzm, %i.bzp
  store <8 x float> %i.bzq, ptr %i.bzl, align 32, !tbaa !32
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.bzc, i64 64 ; 2 uses
  %i.bzs = load <8 x float>, ptr %i.bzr, align 32, !tbaa !32
  %i.bzt = shufflevector <16 x float> %i.bzf, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bzu = shufflevector <16 x float> %i.bzf, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bzv = fadd <8 x float> %i.bzt, %i.bzu
  %i.bzw = fsub <8 x float> %i.bzs, %i.bzv
  store <8 x float> %i.bzw, ptr %i.bzr, align 32, !tbaa !32
  %indvars.iv.next4848 = add nsw i64 %indvars.iv4847, 1 ; 2 uses
  %exitcond4851.not = icmp eq i64 %indvars.iv.next4848, %wide.trip.count4850
  br i1 %exitcond4851.not, label %.loopexit, label %bb.m, !llvm.loop !20

bb.n:                                             ; preds = %.lr.ph, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit
  %indvars.iv = phi i64 [ %i.ft, %.lr.ph ], [ %indvars.iv.next, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 4 uses
  %.sroa.03952.44662 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.clc, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.44661 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cld, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03969.44660 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cla, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163976.44659 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.clb, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03987.44658 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cky, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163994.44657 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.ckz, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.bzx = load ptr, ptr %i.bm, align 8, !tbaa !65
  %i.bzy = getelementptr inbounds nuw [8 x i8], ptr %i.bzx, i64 %indvars.iv
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.bzy, i64 4
  %i.caa = load i32, ptr %i.bzz, align 4, !tbaa !87
  %.not = icmp eq i32 %i.caa, -1
  br i1 %.not, label %.critedge5.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit: ; preds = %bb.n
  %i.cab = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %indvars.iv ; 2 uses
  %i.cac = load i32, ptr %i.cab, align 4, !tbaa !95 ; 4 uses
  %i.cad = getelementptr inbounds nuw i8, ptr %i.cab, i64 4
  %i.cae = load i32, ptr %i.cad, align 4, !tbaa !121
  %i.caf = insertelement <16 x i32> poison, i32 %i.cae, i64 0
  %i.cag = shufflevector <16 x i32> %i.caf, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cah = and <16 x i32> %.sroa.04905.0.copyload, %i.cag
  %.not4973 = icmp eq <16 x i32> %i.cah, zeroinitializer ; 3 uses
  %i.cai = and <16 x i32> %.sroa.6.0.copyload, %i.cag
  %.not4974 = icmp eq <16 x i32> %i.cai, zeroinitializer ; 3 uses
  %i.caj = shl nsw i32 %i.cac, 3
  %i.cak = mul nsw i32 %i.cac, 24
  %i.cal = sext i32 %i.cak to i64                 ; 2 uses
  %i.cam = getelementptr [4 x i8], ptr %i.bl, i64 %i.cal ; 3 uses
  %.val7365128 = load <8 x float>, ptr %i.cam, align 32, !tbaa !32
  %i.can = shufflevector <8 x float> %.val7365128, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cao = getelementptr i8, ptr %i.cam, i64 32
  %.val7375129 = load <8 x float>, ptr %i.cao, align 32, !tbaa !32
  %i.cap = shufflevector <8 x float> %.val7375129, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.caq = getelementptr i8, ptr %i.cam, i64 64
  %.val7385130 = load <8 x float>, ptr %i.caq, align 32, !tbaa !32
  %i.car = shufflevector <8 x float> %.val7385130, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cas = fsub <16 x float> %i.kp, %i.can        ; 3 uses
  %i.cat = fsub <16 x float> %i.kv, %i.can        ; 3 uses
  %i.cau = fsub <16 x float> %i.lc, %i.cap        ; 3 uses
  %i.cav = fsub <16 x float> %i.li, %i.cap        ; 3 uses
  %i.caw = fsub <16 x float> %i.lp, %i.car        ; 3 uses
  %i.cax = fsub <16 x float> %i.lv, %i.car        ; 3 uses
  %i.cay = fmul <16 x float> %i.cas, %i.cas
  %i.caz = fmul <16 x float> %i.cau, %i.cau
  %i.cba = fadd <16 x float> %i.cay, %i.caz
  %i.cbb = fmul <16 x float> %i.caw, %i.caw
  %i.cbc = fadd <16 x float> %i.cba, %i.cbb       ; 2 uses
  %i.cbd = fmul <16 x float> %i.cat, %i.cat
  %i.cbe = fmul <16 x float> %i.cav, %i.cav
  %i.cbf = fadd <16 x float> %i.cbd, %i.cbe
  %i.cbg = fmul <16 x float> %i.cax, %i.cax
  %i.cbh = fadd <16 x float> %i.cbf, %i.cbg       ; 2 uses
  %i.cbi = fcmp olt <16 x float> %i.cbc, %i.bc
  %i.cbj = bitcast <16 x i1> %i.cbi to i16        ; 3 uses
  %i.cbk = fcmp olt <16 x float> %i.cbh, %i.bc
  %i.cbl = bitcast <16 x i1> %i.cbk to i16        ; 3 uses
  %i.cbm = shl nsw i32 %i.cac, 1                  ; 3 uses
  %i.cbn = icmp eq i32 %i.cbm, %i.cu
  br i1 %i.cbn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %i.cbo = and i16 %i.cbj, %i.t
  %i.cbp = and i16 %i.cbl, %i.u
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.p:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %i.cbq = or disjoint i32 %i.cbm, 1
  %i.cbr = icmp eq i32 %i.cbq, %i.cu
  br i1 %i.cbr, label %bb.q, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.q:                                             ; preds = %bb.p
  %i.cbs = and i16 %i.cbj, %i.v
  %i.cbt = and i16 %i.cbl, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.sroa.9.0 = phi i16 [ %i.cbp, %bb.o ], [ %i.cbt, %bb.q ], [ %i.cbl, %bb.p ]
  %.sroa.04611.0 = phi i16 [ %i.cbo, %bb.o ], [ %i.cbs, %bb.q ], [ %i.cbj, %bb.p ]
  %i.cbu = sext i32 %i.caj to i64
  %i.cbv = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cbu
  %.val7454632 = load <8 x i32>, ptr %i.cbv, align 32, !tbaa !32 ; 4 uses
  %i.cbw = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mp, <8 x i32> %.val7454632, <8 x i1> splat (i1 true), i32 8)
  %i.cbx = bitcast <8 x double> %i.cbw to <16 x float> ; 2 uses
  %i.cby = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mv, <8 x i32> %.val7454632, <8 x i1> splat (i1 true), i32 8)
  %i.cbz = bitcast <8 x double> %i.cby to <16 x float> ; 2 uses
  %i.cca = shufflevector <16 x float> %i.cbx, <16 x float> %i.cbz, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.ccb = shufflevector <16 x float> %i.cbx, <16 x float> %i.cbz, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.ccc = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nb, <8 x i32> %.val7454632, <8 x i1> splat (i1 true), i32 8)
  %i.ccd = bitcast <8 x double> %i.ccc to <16 x float> ; 2 uses
  %i.cce = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nh, <8 x i32> %.val7454632, <8 x i1> splat (i1 true), i32 8)
  %i.ccf = bitcast <8 x double> %i.cce to <16 x float> ; 2 uses
  %i.ccg = shufflevector <16 x float> %i.ccd, <16 x float> %i.ccf, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.cch = shufflevector <16 x float> %i.ccd, <16 x float> %i.ccf, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.cci = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.cbc, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.ccj = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.cbh, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.cck = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.cci, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.ccl = fmul <16 x float> %i.cci, %i.cck
  %i.ccm = fmul <16 x float> %i.cck, splat (float -5.000000e-01)
  %i.ccn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ccl, <16 x float> %i.cck, <16 x float> splat (float -3.000000e+00))
  %i.cco = fmul <16 x float> %i.ccm, %i.ccn
  %i.ccp = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.ccj, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.ccq = fmul <16 x float> %i.ccj, %i.ccp
  %i.ccr = fmul <16 x float> %i.ccp, splat (float -5.000000e-01)
  %i.ccs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ccq, <16 x float> %i.ccp, <16 x float> splat (float -3.000000e+00))
  %i.cct = fmul <16 x float> %i.ccr, %i.ccs
  %i.ccu = bitcast i16 %.sroa.04611.0 to <16 x i1> ; 2 uses
  %i.ccv = select <16 x i1> %i.ccu, <16 x float> %i.cco, <16 x float> zeroinitializer ; 2 uses
  %i.ccw = bitcast i16 %.sroa.9.0 to <16 x i1>    ; 2 uses
  %i.ccx = select <16 x i1> %i.ccw, <16 x float> %i.cct, <16 x float> zeroinitializer ; 2 uses
  %i.ccy = fmul <16 x float> %i.ccv, %i.ccv       ; 4 uses
  %i.ccz = fmul <16 x float> %i.ccx, %i.ccx       ; 4 uses
  %i.cda = fcmp olt <16 x float> %i.cci, %i.bh    ; 2 uses
  %i.cdb = fcmp olt <16 x float> %i.ccj, %i.bh    ; 2 uses
  %i.cdc = shl nsw i32 %i.cac, 4
  %i.cdd = fmul <16 x float> %i.ccy, %i.ccy
  %i.cde = fmul <16 x float> %i.ccy, %i.cdd       ; 4 uses
  %i.cdf = fmul <16 x float> %i.ccz, %i.ccz
  %i.cdg = fmul <16 x float> %i.ccz, %i.cdf       ; 4 uses
  %i.cdh = select <16 x i1> %.not4973, <16 x float> zeroinitializer, <16 x float> %i.cde ; 3 uses
  %i.cdi = select <16 x i1> %.not4974, <16 x float> zeroinitializer, <16 x float> %i.cdg ; 3 uses
  %i.cdj = fmul <16 x float> %i.cdh, %i.cdh
  %i.cdk = fmul <16 x float> %i.cdi, %i.cdi
  %i.cdl = fmul <16 x float> %i.cdh, %i.cca       ; 2 uses
  %i.cdm = fmul <16 x float> %i.cdi, %i.ccg       ; 2 uses
  %i.cdn = fmul <16 x float> %i.cdj, %i.ccb       ; 2 uses
  %i.cdo = fmul <16 x float> %i.cdk, %i.cch       ; 2 uses
  %i.cdp = fsub <16 x float> %i.cdn, %i.cdl
  %i.cdq = fsub <16 x float> %i.cdo, %i.cdm
  %i.cdr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cca, <16 x float> %i.al, <16 x float> %i.cdl)
  %i.cds = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ccg, <16 x float> %i.al, <16 x float> %i.cdm)
  %i.cdt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ccb, <16 x float> %i.ao, <16 x float> %i.cdn)
  %i.cdu = fmul <16 x float> %i.cdr, splat (float f0xBE2AAAAB)
  %i.cdv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdt, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.cdu)
  %i.cdw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cch, <16 x float> %i.ao, <16 x float> %i.cdo)
  %i.cdx = fmul <16 x float> %i.cds, splat (float f0xBE2AAAAB)
  %i.cdy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdw, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.cdx)
  %i.cdz = select <16 x i1> %.not4973, <16 x float> zeroinitializer, <16 x float> %i.cdv
  %i.cea = select <16 x i1> %.not4974, <16 x float> zeroinitializer, <16 x float> %i.cdy
  %i.ceb = sext i32 %i.cdc to i64
  %i.cec = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ceb
  %.val7395131 = load <8 x float>, ptr %i.cec, align 32, !tbaa !32
  %i.ced = shufflevector <8 x float> %.val7395131, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cee = fmul <16 x float> %i.nn, %i.ced        ; 2 uses
  %i.cef = fmul <16 x float> %i.ns, %i.ced        ; 2 uses
  %i.ceg = select <16 x i1> %i.ccu, <16 x float> %i.cci, <16 x float> zeroinitializer
  %i.ceh = fmul <16 x float> %i.aw, %i.ceg        ; 3 uses
  %i.cei = bitcast <16 x float> %i.ceh to <8 x i64>
  %i.cej = select <16 x i1> %i.ccw, <16 x float> %i.ccj, <16 x float> zeroinitializer
  %i.cek = fmul <16 x float> %i.aw, %i.cej        ; 3 uses
  %i.cel = bitcast <16 x float> %i.cek to <8 x i64>
  %i.cem = xor <8 x i64> %i.cei, splat (i64 -9223372034707292160)
  %i.cen = bitcast <8 x i64> %i.cem to <16 x float> ; 2 uses
  %i.ceo = fmul <16 x float> %i.cen, splat (float f0x3FB8AA3B) ; 2 uses
  %i.cep = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.ceo, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ceq = shl <16 x i32> %i.cep, splat (i32 23)
  %i.cer = add <16 x i32> %i.ceq, splat (i32 1065353216)
  %i.ces = bitcast <16 x i32> %i.cer to <16 x float> ; 2 uses
  %i.cet = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ceo, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.ceu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cet, <16 x float> splat (float f0xBF317200), <16 x float> %i.cen)
  %i.cev = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cet, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.ceu) ; 7 uses
  %i.cew = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cev, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.cex = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cew, <16 x float> %i.cev, <16 x float> splat (float f0x3D2AAF4C))
  %i.cey = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cex, <16 x float> %i.cev, <16 x float> splat (float f0x3E2AAA5E))
  %i.cez = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cey, <16 x float> %i.cev, <16 x float> splat (float f0x3EFFFFFB))
  %i.cfa = fmul <16 x float> %i.cev, %i.cev
  %i.cfb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfa, <16 x float> %i.cez, <16 x float> %i.cev)
  %i.cfc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfb, <16 x float> %i.ces, <16 x float> %i.ces)
  %i.cfd = xor <8 x i64> %i.cel, splat (i64 -9223372034707292160)
  %i.cfe = bitcast <8 x i64> %i.cfd to <16 x float> ; 2 uses
  %i.cff = fmul <16 x float> %i.cfe, splat (float f0x3FB8AA3B) ; 2 uses
  %i.cfg = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cff, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cfh = shl <16 x i32> %i.cfg, splat (i32 23)
  %i.cfi = add <16 x i32> %i.cfh, splat (i32 1065353216)
  %i.cfj = bitcast <16 x i32> %i.cfi to <16 x float> ; 2 uses
  %i.cfk = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.cff, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.cfl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfk, <16 x float> splat (float f0xBF317200), <16 x float> %i.cfe)
  %i.cfm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfk, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.cfl) ; 7 uses
  %i.cfn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfm, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.cfo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfn, <16 x float> %i.cfm, <16 x float> splat (float f0x3D2AAF4C))
  %i.cfp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfo, <16 x float> %i.cfm, <16 x float> splat (float f0x3E2AAA5E))
  %i.cfq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfp, <16 x float> %i.cfm, <16 x float> splat (float f0x3EFFFFFB))
  %i.cfr = fmul <16 x float> %i.cfm, %i.cfm
  %i.cfs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfr, <16 x float> %i.cfq, <16 x float> %i.cfm)
  %i.cft = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfs, <16 x float> %i.cfj, <16 x float> %i.cfj)
  %i.cfu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ceh, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.cfv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfu, <16 x float> %i.ceh, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.cfw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cek, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.cfx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfw, <16 x float> %i.cek, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.cfy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cde, <16 x float> %i.cfv, <16 x float> %i.ay)
  %i.cfz = fneg <16 x float> %i.cfc               ; 2 uses
  %i.cga = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfz, <16 x float> %i.cfy, <16 x float> %i.cde)
  %i.cgb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cee, <16 x float> %i.cga, <16 x float> %i.cdp)
  %i.cgc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdg, <16 x float> %i.cfx, <16 x float> %i.ay)
  %i.cgd = fneg <16 x float> %i.cft               ; 2 uses
  %i.cge = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cgd, <16 x float> %i.cgc, <16 x float> %i.cdg)
  %i.cgf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cef, <16 x float> %i.cge, <16 x float> %i.cdq)
  %i.cgg = select <16 x i1> %.not4973, <16 x float> zeroinitializer, <16 x float> %i.bb
  %i.cgh = select <16 x i1> %.not4974, <16 x float> zeroinitializer, <16 x float> %i.bb
  %i.cgi = fmul <16 x float> %i.cee, splat (float f0x3E2AAAAB)
  %i.cgj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfz, <16 x float> %i.cfv, <16 x float> splat (float 1.000000e+00))
  %i.cgk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cde, <16 x float> %i.cgj, <16 x float> %i.cgg)
  %i.cgl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cgi, <16 x float> %i.cgk, <16 x float> %i.cdz)
  %i.cgm = fmul <16 x float> %i.cef, splat (float f0x3E2AAAAB)
  %i.cgn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cgd, <16 x float> %i.cfx, <16 x float> splat (float 1.000000e+00))
  %i.cgo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdg, <16 x float> %i.cgn, <16 x float> %i.cgh)
  %i.cgp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cgm, <16 x float> %i.cgo, <16 x float> %i.cea)
  %i.cgq = select <16 x i1> %i.cda, <16 x float> %i.cgb, <16 x float> zeroinitializer
  %i.cgr = select <16 x i1> %i.cdb, <16 x float> %i.cgf, <16 x float> zeroinitializer
  %i.cgs = select <16 x i1> %i.cda, <16 x float> %i.cgl, <16 x float> zeroinitializer ; 2 uses
  %i.cgt = select <16 x i1> %i.cdb, <16 x float> %i.cgp, <16 x float> zeroinitializer ; 2 uses
  %i.cgu = load ptr, ptr %i.bu, align 8, !tbaa !86
  %i.cgv = load i32, ptr %i.ci, align 8, !tbaa !122
  %i.cgw = sext i32 %i.cbm to i64
  %i.cgx = getelementptr inbounds [4 x i8], ptr %i.cgu, i64 %i.cgw
  %i.cgy = load i32, ptr %i.cj, align 4, !tbaa !123
  %i.cgz = load i32, ptr %i.ce, align 8, !tbaa !96
  %i.cha = load <2 x i32>, ptr %i.cgx, align 4, !tbaa !87 ; 2 uses
  %i.chb = insertelement <2 x i32> poison, i32 %i.cgv, i64 0
  %i.chc = shufflevector <2 x i32> %i.cha, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.chd = shufflevector <2 x i32> %i.cha, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.che = shufflevector <2 x i32> %i.chb, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.chf = ashr <4 x i32> %i.chd, %i.che
  %i.chg = shufflevector <4 x i32> %i.chf, <4 x i32> %i.chc, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
end_hunk_3
begin_hunk_4_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4649.preheader
  store <8 x float> %i.cvd, ptr %i.cuz, align 32, !tbaa !32
  %i.cve = getelementptr inbounds [4 x i8], ptr %i.cul, i64 %i.ctq
  %i.cvf = getelementptr inbounds nuw i8, ptr %i.cve, i64 64 ; 2 uses
  %i.cvg = getelementptr inbounds [4 x i8], ptr %i.cun, i64 %i.ctq
  %i.cvh = getelementptr inbounds nuw i8, ptr %i.cvg, i64 64 ; 2 uses
  %i.cvi = load <8 x float>, ptr %i.cvf, align 32, !tbaa !32
  %i.cvj = fadd <8 x float> %i.cuo, %i.cvi
  store <8 x float> %i.cvj, ptr %i.cvf, align 32, !tbaa !32
  %i.cvk = load <8 x float>, ptr %i.cvh, align 32, !tbaa !32
  %i.cvl = fadd <8 x float> %i.cvk, %i.cup
  store <8 x float> %i.cvl, ptr %i.cvh, align 32, !tbaa !32
  %i.cvm = getelementptr inbounds [4 x i8], ptr %i.cul, i64 %i.cua
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cvm, i64 96 ; 2 uses
  %i.cvo = getelementptr inbounds [4 x i8], ptr %i.cun, i64 %i.cua
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cvo, i64 96 ; 2 uses
  %i.cvq = load <8 x float>, ptr %i.cvn, align 32, !tbaa !32
  %i.cvr = fadd <8 x float> %i.cuo, %i.cvq
  store <8 x float> %i.cvr, ptr %i.cvn, align 32, !tbaa !32
  %i.cvs = load <8 x float>, ptr %i.cvp, align 32, !tbaa !32
  %i.cvt = fadd <8 x float> %i.cvs, %i.cup
  store <8 x float> %i.cvt, ptr %i.cvp, align 32, !tbaa !32
  %i.cvu = fmul <16 x float> %i.coh, %i.crt       ; 3 uses
  %i.cvv = fmul <16 x float> %i.coi, %i.cru       ; 3 uses
  %i.cvw = fmul <16 x float> %i.cnb, %i.cvu       ; 2 uses
  %i.cvx = fmul <16 x float> %i.cnc, %i.cvv       ; 2 uses
  %i.cvy = fmul <16 x float> %i.cnd, %i.cvu       ; 2 uses
  %i.cvz = fmul <16 x float> %i.cne, %i.cvv       ; 2 uses
  %i.cwa = fmul <16 x float> %i.cnf, %i.cvu       ; 2 uses
  %i.cwb = fmul <16 x float> %i.cng, %i.cvv       ; 2 uses
  %i.cwc = fadd <16 x float> %.sroa.03987.54680, %i.cvw ; 2 uses
  %i.cwd = fadd <16 x float> %.sroa.163994.54679, %i.cvx ; 2 uses
  %i.cwe = fadd <16 x float> %.sroa.03969.54682, %i.cvy ; 2 uses
  %i.cwf = fadd <16 x float> %.sroa.163976.54681, %i.cvz ; 2 uses
  %i.cwg = fadd <16 x float> %.sroa.03952.54684, %i.cwa ; 2 uses
  %i.cwh = fadd <16 x float> %.sroa.16.54683, %i.cwb ; 2 uses
  %i.cwi = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cmg ; 4 uses
  %i.cwj = fadd <16 x float> %i.cvw, %i.cvx       ; 2 uses
  %i.cwk = fadd <16 x float> %i.cvy, %i.cvz       ; 2 uses
  %i.cwl = fadd <16 x float> %i.cwa, %i.cwb       ; 2 uses
  %i.cwm = load <8 x float>, ptr %i.cwi, align 32, !tbaa !32
  %i.cwn = shufflevector <16 x float> %i.cwj, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cwo = shufflevector <16 x float> %i.cwj, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cwp = fadd <8 x float> %i.cwn, %i.cwo
  %i.cwq = fsub <8 x float> %i.cwm, %i.cwp
  store <8 x float> %i.cwq, ptr %i.cwi, align 32, !tbaa !32
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.cwi, i64 32 ; 2 uses
  %i.cws = load <8 x float>, ptr %i.cwr, align 32, !tbaa !32
  %i.cwt = shufflevector <16 x float> %i.cwk, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cwu = shufflevector <16 x float> %i.cwk, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cwv = fadd <8 x float> %i.cwt, %i.cwu
  %i.cww = fsub <8 x float> %i.cws, %i.cwv
  store <8 x float> %i.cww, ptr %i.cwr, align 32, !tbaa !32
  %i.cwx = getelementptr inbounds nuw i8, ptr %i.cwi, i64 64 ; 2 uses
  %i.cwy = load <8 x float>, ptr %i.cwx, align 32, !tbaa !32
  %i.cwz = shufflevector <16 x float> %i.cwl, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cxa = shufflevector <16 x float> %i.cwl, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cxb = fadd <8 x float> %i.cwz, %i.cxa
  %i.cxc = fsub <8 x float> %i.cwy, %i.cxb
  store <8 x float> %i.cxc, ptr %i.cwx, align 32, !tbaa !32
  %indvars.iv.next4829 = add nsw i64 %indvars.iv4828, 1 ; 2 uses
  %exitcond4832.not = icmp eq i64 %indvars.iv.next4829, %wide.trip.count4831
  br i1 %exitcond4832.not, label %.loopexit, label %bb.r, !llvm.loop !22

.loopexit:                                        ; preds = %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit, %bb.r, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615, %bb.m, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616, %bb.g, %.critedge5, %.critedge3, %.critedge
  %.sroa.163994.6 = phi <16 x float> [ %i.cwd, %bb.r ], [ %i.byx, %bb.m ], [ %.sroa.163994.0.lcssa, %.critedge ], [ %.sroa.163994.2.lcssa, %.critedge3 ], [ %.sroa.163994.4.lcssa, %.critedge5 ], [ %i.abp, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ %i.bhs, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ], [ %i.apl, %bb.g ], [ %i.ckz, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03987.6 = phi <16 x float> [ %i.cwc, %bb.r ], [ %i.byw, %bb.m ], [ %.sroa.03987.0.lcssa, %.critedge ], [ %.sroa.03987.2.lcssa, %.critedge3 ], [ %.sroa.03987.4.lcssa, %.critedge5 ], [ %i.abo, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ %i.bhr, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ], [ %i.apk, %bb.g ], [ %i.cky, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163976.6 = phi <16 x float> [ %i.cwf, %bb.r ], [ %i.byz, %bb.m ], [ %.sroa.163976.0.lcssa, %.critedge ], [ %.sroa.163976.2.lcssa, %.critedge3 ], [ %.sroa.163976.4.lcssa, %.critedge5 ], [ %i.abr, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ %i.bhu, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ], [ %i.apn, %bb.g ], [ %i.clb, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03969.6 = phi <16 x float> [ %i.cwe, %bb.r ], [ %i.byy, %bb.m ], [ %.sroa.03969.0.lcssa, %.critedge ], [ %.sroa.03969.2.lcssa, %.critedge3 ], [ %.sroa.03969.4.lcssa, %.critedge5 ], [ %i.abq, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ %i.bht, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ], [ %i.apm, %bb.g ], [ %i.cla, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.6 = phi <16 x float> [ %i.cwh, %bb.r ], [ %i.bzb, %bb.m ], [ %.sroa.16.0.lcssa, %.critedge ], [ %.sroa.16.2.lcssa, %.critedge3 ], [ %.sroa.16.4.lcssa, %.critedge5 ], [ %i.abt, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ %i.bhw, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ], [ %i.app, %bb.g ], [ %i.cld, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03952.6 = phi <16 x float> [ %i.cwg, %bb.r ], [ %i.bza, %bb.m ], [ %.sroa.03952.0.lcssa, %.critedge ], [ %.sroa.03952.2.lcssa, %.critedge3 ], [ %.sroa.03952.4.lcssa, %.critedge5 ], [ %i.abs, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ %i.bhv, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ], [ %i.apo, %bb.g ], [ %i.clc, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.cxd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.kj ; 2 uses
  %i.cxe = shufflevector <16 x float> %.sroa.03987.6, <16 x float> %.sroa.163994.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cxf = shufflevector <16 x float> %.sroa.03987.6, <16 x float> %.sroa.163994.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cxg = fadd <16 x float> %i.cxe, %i.cxf       ; 2 uses
  %i.cxh = shufflevector <16 x float> %i.cxg, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cxi = fadd <16 x float> %i.cxg, %i.cxh       ; 2 uses
  %i.cxj = shufflevector <16 x float> %i.cxi, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cxk = fadd <16 x float> %i.cxi, %i.cxj
  %i.cxl = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.cxk, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cxm = shufflevector <16 x float> %i.cxl, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cxn = load <4 x float>, ptr %i.cxd, align 16, !tbaa !32
  %i.cxo = fadd <4 x float> %i.cxn, %i.cxm
  store <4 x float> %i.cxo, ptr %i.cxd, align 16, !tbaa !32
  %i.cxp = shufflevector <16 x float> %i.cxl, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cxq = fadd <4 x float> %i.cxm, %i.cxp        ; 2 uses
  %i.cxr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.kw ; 2 uses
  %i.cxs = shufflevector <16 x float> %.sroa.03969.6, <16 x float> %.sroa.163976.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cxt = shufflevector <16 x float> %.sroa.03969.6, <16 x float> %.sroa.163976.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cxu = fadd <16 x float> %i.cxs, %i.cxt       ; 2 uses
  %i.cxv = shufflevector <16 x float> %i.cxu, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cxw = fadd <16 x float> %i.cxu, %i.cxv       ; 2 uses
  %i.cxx = shufflevector <16 x float> %i.cxw, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cxy = fadd <16 x float> %i.cxw, %i.cxx
  %i.cxz = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.cxy, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cya = shufflevector <16 x float> %i.cxz, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cyb = load <4 x float>, ptr %i.cxr, align 16, !tbaa !32
  %i.cyc = fadd <4 x float> %i.cyb, %i.cya
  store <4 x float> %i.cyc, ptr %i.cxr, align 16, !tbaa !32
  %i.cyd = shufflevector <16 x float> %i.cxz, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cye = fadd <4 x float> %i.cya, %i.cyd        ; 2 uses
  %i.cyf = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.lj ; 2 uses
  %i.cyg = shufflevector <16 x float> %.sroa.03952.6, <16 x float> %.sroa.16.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cyh = shufflevector <16 x float> %.sroa.03952.6, <16 x float> %.sroa.16.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cyi = fadd <16 x float> %i.cyg, %i.cyh       ; 2 uses
  %i.cyj = shufflevector <16 x float> %i.cyi, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cyk = fadd <16 x float> %i.cyi, %i.cyj       ; 2 uses
  %i.cyl = shufflevector <16 x float> %i.cyk, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cym = fadd <16 x float> %i.cyk, %i.cyl
  %i.cyn = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.cym, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cyo = shufflevector <16 x float> %i.cyn, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cyp = load <4 x float>, ptr %i.cyf, align 16, !tbaa !32
  %i.cyq = fadd <4 x float> %i.cyp, %i.cyo
  store <4 x float> %i.cyq, ptr %i.cyf, align 16, !tbaa !32
  %i.cyr = shufflevector <16 x float> %i.cyn, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cys = fadd <4 x float> %i.cyo, %i.cyr        ; 2 uses
  %i.cyt = shufflevector <4 x float> %i.cys, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cyu = fadd <4 x float> %i.cys, %i.cyt
  %i.cyv = extractelement <4 x float> %i.cyu, i64 0
  %i.cyw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cv ; 2 uses
  %i.cyx = load <2 x float>, ptr %i.cyw, align 4, !tbaa !75
  %i.cyy = shufflevector <4 x float> %i.cxq, <4 x float> %i.cye, <2 x i32> <i32 0, i32 4>
  %i.cyz = shufflevector <4 x float> %i.cxq, <4 x float> %i.cye, <2 x i32> <i32 1, i32 5>
  %i.cza = fadd <2 x float> %i.cyy, %i.cyz
  %i.czb = fadd <2 x float> %i.cza, %i.cyx
  store <2 x float> %i.czb, ptr %i.cyw, align 4, !tbaa !75
  %i.czc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dh ; 2 uses
  %i.czd = load float, ptr %i.czc, align 4, !tbaa !75
  %i.cze = fadd float %i.cyv, %i.czd
  store float %i.cze, ptr %i.czc, align 4, !tbaa !75
  %i.czf = getelementptr inbounds nuw i8, ptr %.sroa.02097.04796, i64 16 ; 2 uses
  %.not4631 = icmp eq ptr %i.czf, %i.br
  br i1 %.not4631, label %._crit_edge, label %bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float>, <16 x float>, i16) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float>, <16 x float>, i16) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double>, ptr, <8 x i32>, <8 x i1>, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float>, <16 x float>, <16 x i1>) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(read) }

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
!9 = distinct !{!9, i1 true, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!10 = distinct !{!10, !9, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!11 = distinct !{!11, i1 true, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE0_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!12 = distinct !{!12, !11, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE0_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!13 = distinct !{!13, i1 true, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE1_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!14 = distinct !{!14, !13, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE1_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!15 = distinct !{!15, i1 true, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE2_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!16 = distinct !{!16, !15, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE2_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!17 = distinct !{!17, !124}
!18 = distinct !{!18, !124}
!19 = distinct !{!19, !124}
!20 = distinct !{!20, !124}
!21 = distinct !{!21, !124}
!22 = distinct !{!22, !124}
!23 = !{!"any pointer", !5, i64 0}
!24 = !{!"p1 float", !23, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!25, !24, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!28 = !{!27, !24, i64 0}
!29 = !{!"p1 int", !23, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!30, !29, i64 0}
!32 = !{!5, !5, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!34 = !{!33, !29, i64 0}
!35 = !{!"_ZTS15VanDerWaalsType", !5, i64 0}
!36 = !{!"_ZTS20InteractionModifiers", !5, i64 0}
!37 = !{!"double", !5, i64 0}
!38 = !{!"float", !5, i64 0}
!39 = !{!"_ZTS14shift_consts_t", !38, i64 0, !38, i64 4, !38, i64 8}
!40 = !{!"_ZTS15switch_consts_t", !38, i64 0, !38, i64 4, !38, i64 8}
!41 = !{!"_ZTS12LongRangeVdW", !5, i64 0}
!42 = !{!"_ZTSN19interaction_const_t19VanDerWaalsSettingsE", !35, i64 0, !36, i64 4, !37, i64 8, !38, i64 16, !38, i64 20, !39, i64 24, !39, i64 36, !40, i64 48, !38, i64 60, !41, i64 64, !38, i64 68}
!43 = !{!"_ZTS22CoulombInteractionType", !5, i64 0}
!44 = !{!"_ZTSN19interaction_const_t15CoulombSettingsE", !43, i64 0, !36, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36}
!45 = !{!"p1 _ZTS21EwaldCorrectionTables", !23, i64 0}
!46 = !{!"_ZTSSt10_Head_baseILm0EP21EwaldCorrectionTablesLb0EE", !45, i64 0}
!47 = !{!"_ZTSSt11_Tuple_implILm0EJP21EwaldCorrectionTablesSt14default_deleteIS0_EEE", !46, i64 0}
!48 = !{!"_ZTSSt5tupleIJP21EwaldCorrectionTablesSt14default_deleteIS0_EEE", !47, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_implI21EwaldCorrectionTablesSt14default_deleteIS0_EE", !48, i64 0}
!50 = !{!"_ZTSSt15__uniq_ptr_dataI21EwaldCorrectionTablesSt14default_deleteIS0_ELb1ELb1EE", !49, i64 0}
!51 = !{!"_ZTSSt10unique_ptrI21EwaldCorrectionTablesSt14default_deleteIS0_EE", !50, i64 0}
!52 = !{!"p1 _ZTSN19interaction_const_t18SoftCoreParametersE", !23, i64 0}
!53 = !{!"_ZTSSt10_Head_baseILm0EPN19interaction_const_t18SoftCoreParametersELb0EE", !52, i64 0}
!54 = !{!"_ZTSSt11_Tuple_implILm0EJPN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EEE", !53, i64 0}
!55 = !{!"_ZTSSt5tupleIJPN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EEE", !54, i64 0}
!56 = !{!"_ZTSSt15__uniq_ptr_implIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EE", !55, i64 0}
!57 = !{!"_ZTSSt15__uniq_ptr_dataIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_ELb1ELb1EE", !56, i64 0}
!58 = !{!"_ZTSSt10unique_ptrIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EE", !57, i64 0}
!59 = !{!"bool", !5, i64 0}
!60 = !{!"_ZTS19interaction_const_t", !42, i64 0, !44, i64 72, !51, i64 112, !51, i64 120, !58, i64 128, !59, i64 136}
!61 = !{!60, !38, i64 60}
!62 = !{!60, !38, i64 16}
!63 = !{!"p1 _ZTSN3gmx10nbnxn_cj_tE", !23, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!64, !63, i64 0}
!66 = !{!"p1 _ZTSN3gmx10nbnxn_ci_tE", !23, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"p1 _ZTSN3gmx17EnergyAccumulatorILb1ELb1EEE", !23, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"_ZTSN3gmx10nbnxn_ci_tE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!71 = !{!70, !6, i64 4}
!72 = !{!70, !6, i64 8}
!73 = !{!70, !6, i64 12}
!74 = !{!70, !6, i64 0}
!75 = !{!38, !38, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !27, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !76, i64 0}
!78 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !77, i64 0}
!79 = !{!"any p2 pointer", !23, i64 0}
!80 = !{!"p2 float", !79, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIPfSaIS0_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!82 = !{!"_ZTSNSt12_Vector_baseIPfSaIS0_EE12_Vector_implE", !81, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseIPfSaIS0_EE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorIPfSaIS0_EE", !83, i64 0}
!85 = !{!"_ZTSN3gmx17EnergyAccumulatorILb1ELb1EEE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !29, i64 32, !78, i64 40, !78, i64 64, !6, i64 88, !84, i64 96, !84, i64 120, !6, i64 144}
!86 = !{!85, !29, i64 32}
!87 = !{!6, !6, i64 0}
!88 = !{!85, !6, i64 88}
!89 = !{!85, !6, i64 8}
!90 = !{!85, !6, i64 12}
!91 = !{!85, !6, i64 28}
!92 = !{!81, !80, i64 0}
!93 = !{!24, !24, i64 0}
!94 = !{!"_ZTSN3gmx10nbnxn_cj_tE", !6, i64 0, !6, i64 4}
!95 = !{!94, !6, i64 0}
!96 = !{!85, !6, i64 24}
!97 = !{!"_ZTSN3gmx13PinningPolicyE", !5, i64 0}
!98 = !{!"_ZTSN3gmx20HostAllocationPolicyE", !97, i64 0, !59, i64 4}
!99 = !{!"_ZTSN3gmx9AllocatorIfNS_20HostAllocationPolicyEEE", !98, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE12_Vector_implE", !99, i64 0, !25, i64 8}
!101 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE", !100, i64 0}
!102 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE", !101, i64 0}
!103 = !{!"_ZTSN3gmx17LJCombinationRuleE", !5, i64 0}
!104 = !{!"_ZTSN3gmx9AllocatorIiNS_20HostAllocationPolicyEEE", !98, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE12_Vector_implE", !104, i64 0, !30, i64 8}
!106 = !{!"_ZTSSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE", !105, i64 0}
!107 = !{!"_ZTSSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE", !106, i64 0}
!108 = !{!"p1 _ZTSN3gmx22EnergyGroupsPerClusterE", !23, i64 0}
!109 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx22EnergyGroupsPerClusterELb0EE", !108, i64 0}
!110 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EEE", !109, i64 0}
!111 = !{!"_ZTSSt5tupleIJPN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EEE", !110, i64 0}
!112 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EE", !111, i64 0}
!113 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_ELb1ELb1EE", !112, i64 0}
!114 = !{!"_ZTSSt10unique_ptrIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EE", !113, i64 0}
!115 = !{!"_ZTSN3gmx16nbnxn_atomdata_t6ParamsE", !6, i64 0, !102, i64 8, !103, i64 40, !102, i64 48, !78, i64 80, !107, i64 104, !102, i64 136, !102, i64 168, !107, i64 200, !102, i64 232, !102, i64 264, !107, i64 296, !102, i64 328, !102, i64 360, !6, i64 392, !114, i64 400}
!116 = !{!115, !6, i64 0}
!117 = !{!10}
!118 = !{!12}
!119 = !{!14}
!120 = !{!16}
!121 = !{!94, !6, i64 4}
!122 = !{!85, !6, i64 16}
!123 = !{!85, !6, i64 20}
!124 = !{!"llvm.loop.mustprogress"}
end_hunk_4
