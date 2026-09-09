Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ElecQSTabTwinCut_VdwLJCombLB_VgrpF?download=true
inline.NumInlined: 1665
inline.NumDeleted: 359
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(656) %1, ptr noundef nonnull align 8 dereferenceable(137) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat {
.preheader4359.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %.val.i.i = load <16 x float>, ptr %i.h, align 64, !tbaa !29 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %.sroa.04583.0.copyload = load <16 x i32>, ptr %i.j, align 64, !tbaa !29 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.6.0.copyload = load <16 x i32>, ptr %.sroa.6.0..sroa_idx, align 64, !tbaa !29 ; 3 uses
  %i.k = fcmp ogt <16 x float> %.val.i.i, zeroinitializer
  %i.l = fadd <16 x float> %.val.i.i, splat (float -2.000000e+00) ; 2 uses
  %i.m = fcmp ogt <16 x float> %i.l, zeroinitializer
  %i.n = fadd <16 x float> %i.l, splat (float -2.000000e+00) ; 2 uses
  %i.o = fcmp ogt <16 x float> %i.n, zeroinitializer
  %i.p = fadd <16 x float> %i.n, splat (float -2.000000e+00)
  %i.q = fcmp ogt <16 x float> %i.p, zeroinitializer
  %i.r = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %i.s = bitcast <16 x i1> %i.m to i16            ; 2 uses
  %i.t = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %i.u = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34   ; 3 uses
  %i.x = load float, ptr %i.w, align 8, !tbaa !40 ; 2 uses
  %i.y = insertelement <16 x float> poison, float %i.x, i64 0
  %i.z = shufflevector <16 x float> %i.y, <16 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.aa = fdiv float -5.000000e-01, %i.x
  %i.ab = insertelement <16 x float> poison, float %i.aa, i64 0
  %i.ac = shufflevector <16 x float> %i.ab, <16 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28 ; 9 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !41
  %i.ai = fmul float %i.ah, 5.000000e-01          ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !66
  %i.al = insertelement <16 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <16 x float> %i.al, <16 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ao = load <1 x float>, ptr %i.an, align 8
  %i.ap = shufflevector <1 x float> %i.ao, <1 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ar = load <1 x float>, ptr %i.aq, align 4
  %i.as = shufflevector <1 x float> %i.ar, <1 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.au = load float, ptr %i.at, align 8, !tbaa !67 ; 2 uses
  %i.av = fmul float %i.au, %i.au
  %i.aw = insertelement <16 x float> poison, float %i.av, i64 0
  %i.ax = shufflevector <16 x float> %i.aw, <16 x float> poison, <16 x i32> zeroinitializer ; 12 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = load float, ptr %i.ay, align 8, !tbaa !68 ; 2 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = insertelement <16 x float> poison, float %i.ba, i64 0
  %i.bc = shufflevector <16 x float> %i.bb, <16 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !26 ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26 ; 9 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !71 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !73 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !73 ; 2 uses
  %.not43454483 = icmp eq ptr %i.bk, %i.bm
  br i1 %.not43454483, label %._crit_edge, label %.lr.ph4485

.lr.ph4485:                                       ; preds = %.preheader4359.preheader
  %i.bn = getelementptr i8, ptr %4, i64 136
  %.val.val = load ptr, ptr %i.bn, align 8, !tbaa !75 ; 12 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !76 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.val, i64 32 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val.val, i64 88
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.val, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.val, i64 40 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.val, i64 28
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.val, i64 96 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.val, i64 64 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val.val, i64 120 ; 11 uses
  %i.bz = fneg float %i.bp                        ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.val, i64 24 ; 7 uses
  %i.cb = insertelement <16 x float> poison, float %i.bp, i64 0
  %i.cc = shufflevector <16 x float> %i.cb, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.val, i64 16 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.val, i64 20 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 8 uses
  br label %bb.a

._crit_edge:                                      ; preds = %.loopexit, %.preheader4359.preheader
  ret void

bb.a:                                             ; preds = %.lr.ph4485, %.loopexit
  %.sroa.02034.04484 = phi ptr [ %i.bk, %.lr.ph4485 ], [ %i.ceb, %.loopexit ] ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.02034.04484, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !78 ; 3 uses
  %i.ci = and i32 %i.ch, 127                      ; 2 uses
  %i.cj = mul nuw nsw i32 %i.ci, 3                ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02034.04484, i64 8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !79 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.02034.04484, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !80 ; 10 uses
  %i.co = load i32, ptr %.sroa.02034.04484, align 4, !tbaa !81 ; 3 uses
  %i.cp = icmp eq i32 %i.ci, 22
  %i.cq = select i1 %i.cp, i32 %i.co, i32 -1      ; 5 uses
  %i.cr = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !41
  %i.cu = insertelement <16 x float> poison, float %i.ct, i64 0
  %i.cv = shufflevector <16 x float> %i.cu, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cw = zext nneg i32 %i.cj to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !41
  %i.da = insertelement <16 x float> poison, float %i.cz, i64 0
  %i.db = shufflevector <16 x float> %i.da, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dc = add nuw nsw i32 %i.cj, 2
  %i.dd = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !41
  %i.dg = insertelement <16 x float> poison, float %i.df, i64 0
  %i.dh = shufflevector <16 x float> %i.dg, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.di = shl i32 %i.co, 2                        ; 4 uses
  %i.dj = and i32 %i.di, -8                       ; 2 uses
  %i.dk = mul nsw i32 %i.dj, 3
  %i.dl = and i32 %i.di, 4                        ; 2 uses
  %i.dm = or disjoint i32 %i.dk, %i.dl            ; 3 uses
  %i.dn = shl nsw i32 %i.dj, 1
  %i.do = or disjoint i32 %i.dn, %i.dl
  %i.dp = and i32 %i.ch, 512
  %i.dq = icmp ne i32 %i.dp, 0                    ; 4 uses
  %i.dr = and i32 %i.ch, 384
  %or.cond = icmp ne i32 %i.dr, 128
  %i.ds = and i1 %or.cond, %i.dq
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !89
  %i.du = sext i32 %i.co to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !90 ; 7 uses
  store i32 %i.dw, ptr %i.br, align 8, !tbaa !91
  %i.dx = load i32, ptr %i.bs, align 8, !tbaa !92 ; 5 uses
  %i.dy = load i32, ptr %i.bt, align 4, !tbaa !93 ; 6 uses
  %i.dz = load i32, ptr %i.bv, align 4, !tbaa !94 ; 4 uses
  %i.ea = load ptr, ptr %i.bw, align 8, !tbaa !95 ; 5 uses
  %i.eb = load ptr, ptr %i.by, align 8, !tbaa !95 ; 4 uses
  %i.ec = and i32 %i.dy, %i.dw                    ; 2 uses
  %i.ed = load ptr, ptr %i.bu, align 8, !tbaa !28
  %i.ee = mul nsw i32 %i.ec, %i.dz
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ef
  store ptr %i.eg, ptr %i.ea, align 8, !tbaa !96
  %i.eh = load ptr, ptr %i.bx, align 8, !tbaa !28
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.ef
  store ptr %i.ei, ptr %i.eb, align 8, !tbaa !96
  %i.ej = ashr i32 %i.dw, %i.dx
  %i.ek = and i32 %i.ej, %i.dy                    ; 2 uses
  %i.el = load ptr, ptr %i.bu, align 8, !tbaa !28
  %i.em = mul nsw i32 %i.ek, %i.dz
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !96
  %i.eq = load ptr, ptr %i.bx, align 8, !tbaa !28
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.en
  %i.es = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.er, ptr %i.es, align 8, !tbaa !96
  %i.et = shl i32 %i.dx, 1
  %i.eu = ashr i32 %i.dw, %i.et
  %i.ev = and i32 %i.eu, %i.dy
  %i.ew = load ptr, ptr %i.bu, align 8, !tbaa !28
  %i.ex = mul nsw i32 %i.ev, %i.dz
  %i.ey = sext i32 %i.ex to i64                   ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !96
  %i.fb = load ptr, ptr %i.bx, align 8, !tbaa !28
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.ey
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !96
  %i.fe = mul i32 %i.dx, 3
  %i.ff = ashr i32 %i.dw, %i.fe
  %i.fg = and i32 %i.ff, %i.dy
  %i.fh = load ptr, ptr %i.bu, align 8, !tbaa !28
  %i.fi = mul nsw i32 %i.fg, %i.dz
  %i.fj = sext i32 %i.fi to i64                   ; 2 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 2 uses
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !96
  %i.fm = load ptr, ptr %i.bx, align 8, !tbaa !28
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fj
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !96
  br i1 %i.dq, label %bb.b, label %.loopexit4358

bb.b:                                             ; preds = %bb.a
  %i.fp = sext i32 %i.cl to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !98
  %i.fs = ashr i32 %i.cq, 1
  %i.ft = icmp eq i32 %i.fr, %i.fs
  br i1 %i.ft, label %.preheader4357, label %.loopexit4358

.preheader4357:                                   ; preds = %bb.b
  %i.fu = load i32, ptr %i.ca, align 8, !tbaa !99 ; 4 uses
  %i.fv = sext i32 %i.di to i64                   ; 4 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !41 ; 2 uses
  %i.fy = fmul float %i.fx, %i.bz
  %i.fz = fmul float %i.fx, %i.fy
  %i.ga = fmul float %i.ai, %i.fz
  %i.gb = mul nsw i32 %i.fu, %i.ec
  %i.gc = load ptr, ptr %i.ea, align 8, !tbaa !96
  %i.gd = sext i32 %i.gb to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.gd ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !41
  %i.gg = fadd float %i.ga, %i.gf
  store float %i.gg, ptr %i.ge, align 4, !tbaa !41
  %i.gh = getelementptr [4 x i8], ptr %i.be, i64 %i.fv
  %i.gi = getelementptr i8, ptr %i.gh, i64 4
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !41 ; 2 uses
  %i.gk = fmul float %i.gj, %i.bz
  %i.gl = fmul float %i.gj, %i.gk
  %i.gm = fmul float %i.ai, %i.gl
  %i.gn = mul nsw i32 %i.fu, %i.ek
  %i.go = load ptr, ptr %i.ep, align 8, !tbaa !96
  %i.gp = sext i32 %i.gn to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gp ; 2 uses
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !41
  %i.gs = fadd float %i.gm, %i.gr
  store float %i.gs, ptr %i.gq, align 4, !tbaa !41
  %i.gt = getelementptr [4 x i8], ptr %i.be, i64 %i.fv
  %i.gu = getelementptr i8, ptr %i.gt, i64 8
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !41 ; 2 uses
  %i.gw = fmul float %i.gv, %i.bz
  %i.gx = fmul float %i.gv, %i.gw
  %i.gy = fmul float %i.ai, %i.gx
  %i.gz = shl i32 %i.dx, 1
  %i.ha = ashr i32 %i.dw, %i.gz
  %i.hb = and i32 %i.ha, %i.dy
  %i.hc = mul nsw i32 %i.fu, %i.hb
  %i.hd = load ptr, ptr %i.fa, align 8, !tbaa !96
  %i.he = sext i32 %i.hc to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.he ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !41
  %i.hh = fadd float %i.gy, %i.hg
  store float %i.hh, ptr %i.hf, align 4, !tbaa !41
  %i.hi = getelementptr [4 x i8], ptr %i.be, i64 %i.fv
  %i.hj = getelementptr i8, ptr %i.hi, i64 12
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !41 ; 2 uses
  %i.hl = fmul float %i.hk, %i.bz
  %i.hm = fmul float %i.hk, %i.hl
  %i.hn = fmul float %i.ai, %i.hm
  %i.ho = mul i32 %i.dx, 3
  %i.hp = ashr i32 %i.dw, %i.ho
  %i.hq = and i32 %i.hp, %i.dy
  %i.hr = mul nsw i32 %i.fu, %i.hq
  %i.hs = load ptr, ptr %i.fl, align 8, !tbaa !96
  %i.ht = sext i32 %i.hr to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.ht ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !41
  %i.hw = fadd float %i.hn, %i.hv
  store float %i.hw, ptr %i.hu, align 4, !tbaa !41
  br label %.loopexit4358

.loopexit4358:                                    ; preds = %.preheader4357, %bb.b, %bb.a
  %i.hx = add nsw i32 %i.dm, 8
  %i.hy = add nsw i32 %i.dm, 16
  %i.hz = sext i32 %i.dm to i64                   ; 2 uses
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.hz ; 4 uses
  %.val.i = load float, ptr %i.ia, align 1, !tbaa !29, !noalias !100
  %i.ib = getelementptr i8, ptr %i.ia, i64 4
  %.val3.i = load float, ptr %i.ib, align 1, !tbaa !29, !noalias !100
  %i.ic = insertelement <4 x float> poison, float %.val.i, i64 0
  %i.id = insertelement <4 x float> poison, float %.val3.i, i64 0
  %i.ie = shufflevector <4 x float> %i.ic, <4 x float> %i.id, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.if = fadd <16 x float> %i.cv, %i.ie          ; 6 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.val.i725 = load float, ptr %i.ig, align 1, !tbaa !29, !noalias !100
  %i.ih = getelementptr i8, ptr %i.ia, i64 12
  %.val3.i726 = load float, ptr %i.ih, align 1, !tbaa !29, !noalias !100
  %i.ii = insertelement <4 x float> poison, float %.val.i725, i64 0
  %i.ij = insertelement <4 x float> poison, float %.val3.i726, i64 0
  %i.ik = shufflevector <4 x float> %i.ii, <4 x float> %i.ij, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
end_hunk_0
begin_hunk_1_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4359.preheader
  %.val688.1 = load float, ptr %i.kp, align 1, !tbaa !29
  %i.kq = getelementptr i8, ptr %i.ka, i64 44
  %.val689.1 = load float, ptr %i.kq, align 1, !tbaa !29
  %i.kr = insertelement <4 x float> poison, float %.val688.1, i64 0
  %i.ks = insertelement <4 x float> poison, float %.val689.1, i64 0
  %i.kt = shufflevector <4 x float> %i.kr, <4 x float> %i.ks, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.ku = icmp slt i32 %i.cl, %i.cn               ; 3 uses
  br i1 %i.ds, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.d
  br i1 %i.ku, label %.lr.ph4451, label %.critedge

.lr.ph4451:                                       ; preds = %.preheader
  %i.kv = sext i32 %i.cl to i64
  %wide.trip.count4552 = sext i32 %i.cn to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph4451, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561
  %indvars.iv4549 = phi i64 [ %i.kv, %.lr.ph4451 ], [ %indvars.iv.next4550, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 4 uses
  %.sroa.163860.04449 = phi <16 x float> [ zeroinitializer, %.lr.ph4451 ], [ %i.vx, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %.sroa.03853.04448 = phi <16 x float> [ zeroinitializer, %.lr.ph4451 ], [ %i.vw, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %.sroa.163842.04447 = phi <16 x float> [ zeroinitializer, %.lr.ph4451 ], [ %i.vz, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %.sroa.03835.04446 = phi <16 x float> [ zeroinitializer, %.lr.ph4451 ], [ %i.vy, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %.sroa.16.04445 = phi <16 x float> [ zeroinitializer, %.lr.ph4451 ], [ %i.wb, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %.sroa.03818.04444 = phi <16 x float> [ zeroinitializer, %.lr.ph4451 ], [ %i.wa, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ] ; 2 uses
  %i.kw = load ptr, ptr %i.bh, align 8, !tbaa !71
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv4549
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !90
  %.not552 = icmp eq i32 %i.kz, -1
  br i1 %.not552, label %.critedge.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit560

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit560: ; preds = %bb.e
  %i.la = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv4549 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !98 ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !104
  %i.le = insertelement <16 x i32> poison, i32 %i.ld, i64 0
  %i.lf = shufflevector <16 x i32> %i.le, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.lg = and <16 x i32> %.sroa.04583.0.copyload, %i.lf
  %i.lh = icmp ne <16 x i32> %i.lg, zeroinitializer ; 3 uses
  %i.li = and <16 x i32> %.sroa.6.0.copyload, %i.lf
  %.not4645 = icmp eq <16 x i32> %i.li, zeroinitializer ; 2 uses
  %i.lj = shl nsw i32 %i.lb, 3
  %i.lk = mul nsw i32 %i.lb, 24
  %i.ll = sext i32 %i.lk to i64                   ; 2 uses
  %i.lm = getelementptr [4 x i8], ptr %i.bg, i64 %i.ll ; 3 uses
  %.val6904814 = load <8 x float>, ptr %i.lm, align 32, !tbaa !29
  %i.ln = shufflevector <8 x float> %.val6904814, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.lo = getelementptr i8, ptr %i.lm, i64 32
  %.val6914815 = load <8 x float>, ptr %i.lo, align 32, !tbaa !29
  %i.lp = shufflevector <8 x float> %.val6914815, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.lq = getelementptr i8, ptr %i.lm, i64 64
  %.val6924816 = load <8 x float>, ptr %i.lq, align 32, !tbaa !29
  %i.lr = shufflevector <8 x float> %.val6924816, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ls = fsub <16 x float> %i.if, %i.ln          ; 3 uses
  %i.lt = fsub <16 x float> %i.il, %i.ln          ; 3 uses
  %i.lu = fsub <16 x float> %i.is, %i.lp          ; 3 uses
  %i.lv = fsub <16 x float> %i.iy, %i.lp          ; 3 uses
  %i.lw = fsub <16 x float> %i.jf, %i.lr          ; 3 uses
  %i.lx = fsub <16 x float> %i.jl, %i.lr          ; 3 uses
  %i.ly = fmul <16 x float> %i.ls, %i.ls
  %i.lz = fmul <16 x float> %i.lu, %i.lu
  %i.ma = fadd <16 x float> %i.ly, %i.lz
  %i.mb = fmul <16 x float> %i.lw, %i.lw
  %i.mc = fadd <16 x float> %i.ma, %i.mb          ; 2 uses
  %i.md = fmul <16 x float> %i.lt, %i.lt
  %i.me = fmul <16 x float> %i.lv, %i.lv
  %i.mf = fadd <16 x float> %i.md, %i.me
  %i.mg = fmul <16 x float> %i.lx, %i.lx
  %i.mh = fadd <16 x float> %i.mf, %i.mg          ; 2 uses
  %i.mi = fcmp olt <16 x float> %i.mc, %i.ax
  %i.mj = bitcast <16 x i1> %i.mi to i16          ; 3 uses
  %i.mk = fcmp olt <16 x float> %i.mh, %i.ax
  %i.ml = bitcast <16 x i1> %i.mk to i16          ; 3 uses
  %i.mm = shl nsw i32 %i.lb, 1                    ; 3 uses
  %i.mn = icmp eq i32 %i.mm, %i.cq
  br i1 %i.mn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit560
  %i.mo = and i16 %i.mj, %i.r
  %i.mp = and i16 %i.ml, %i.s
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561

bb.g:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit560
  %i.mq = or disjoint i32 %i.mm, 1
  %i.mr = icmp eq i32 %i.mq, %i.cq
  br i1 %i.mr, label %bb.h, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561

bb.h:                                             ; preds = %bb.g
  %i.ms = and i16 %i.mj, %i.t
  %i.mt = and i16 %i.ml, %i.u
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561: ; preds = %bb.f, %bb.g, %bb.h
  %.sroa.04132.0 = phi i16 [ %i.mo, %bb.f ], [ %i.ms, %bb.h ], [ %i.mj, %bb.g ]
  %.sroa.94135.0 = phi i16 [ %i.mp, %bb.f ], [ %i.mt, %bb.h ], [ %i.ml, %bb.g ]
  %i.mu = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.mc, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.mv = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.mh, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.mw = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.mu, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.mx = fmul <16 x float> %i.mu, %i.mw
  %i.my = fmul <16 x float> %i.mw, splat (float -5.000000e-01)
  %i.mz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.mx, <16 x float> %i.mw, <16 x float> splat (float -3.000000e+00))
  %i.na = fmul <16 x float> %i.my, %i.mz
  %i.nb = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.mv, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.nc = fmul <16 x float> %i.mv, %i.nb
  %i.nd = fmul <16 x float> %i.nb, splat (float -5.000000e-01)
  %i.ne = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.nc, <16 x float> %i.nb, <16 x float> splat (float -3.000000e+00))
  %i.nf = fmul <16 x float> %i.nd, %i.ne
  %i.ng = sext i32 %i.lj to i64
  %i.nh = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.ng
  %.val6934817 = load <8 x float>, ptr %i.nh, align 32, !tbaa !29
  %i.ni = bitcast i16 %.sroa.04132.0 to <16 x i1> ; 2 uses
  %i.nj = select <16 x i1> %i.ni, <16 x float> %i.na, <16 x float> zeroinitializer ; 5 uses
  %i.nk = bitcast i16 %.sroa.94135.0 to <16 x i1> ; 2 uses
  %i.nl = select <16 x i1> %i.nk, <16 x float> %i.nf, <16 x float> zeroinitializer ; 4 uses
  %i.nm = fmul <16 x float> %i.mu, %i.nj          ; 2 uses
  %i.nn = fmul <16 x float> %i.mv, %i.nl          ; 2 uses
  %i.no = fmul <16 x float> %i.z, %i.nm           ; 2 uses
  %i.np = fmul <16 x float> %i.z, %i.nn           ; 2 uses
  %i.nq = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.no, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.nr = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.np, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.ns = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ae, <16 x i32> %i.nq, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.nt = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cf, <16 x i32> %i.nq, <16 x i1> splat (i1 true), i32 4)
  %i.nu = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ag, <16 x i32> %i.nq, <16 x i1> splat (i1 true), i32 4)
  %i.nv = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ae, <16 x i32> %i.nr, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.nw = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cf, <16 x i32> %i.nr, <16 x i1> splat (i1 true), i32 4)
  %i.nx = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ag, <16 x i32> %i.nr, <16 x i1> splat (i1 true), i32 4)
  %i.ny = shufflevector <8 x float> %.val6934817, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.nz = fmul <16 x float> %.sroa.03969.0, %i.ny ; 2 uses
  %i.oa = fmul <16 x float> %.sroa.73973.0, %i.ny ; 2 uses
  %i.ob = fmul <16 x float> %i.nj, %i.nj
  %i.oc = fmul <16 x float> %i.nl, %i.nl
  %i.od = select <16 x i1> %i.lh, <16 x float> %i.nj, <16 x float> zeroinitializer ; 2 uses
  %i.oe = select <16 x i1> %.not4645, <16 x float> zeroinitializer, <16 x float> %i.nl ; 2 uses
  %i.of = sitofp <16 x i32> %i.nq to <16 x float>
  %i.og = sitofp <16 x i32> %i.nr to <16 x float>
  %i.oh = fsub <16 x float> %i.no, %i.of          ; 2 uses
  %i.oi = fsub <16 x float> %i.np, %i.og          ; 2 uses
  %i.oj = fsub <16 x float> %i.nt, %i.ns
  %i.ok = fsub <16 x float> %i.nw, %i.nv
  %i.ol = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oh, <16 x float> %i.oj, <16 x float> %i.ns) ; 2 uses
  %i.om = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.oi, <16 x float> %i.ok, <16 x float> %i.nv) ; 2 uses
  %i.on = fneg <16 x float> %i.ol
  %i.oo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.on, <16 x float> %i.nm, <16 x float> %i.od)
  %i.op = fneg <16 x float> %i.om
  %i.oq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.op, <16 x float> %i.nn, <16 x float> %i.oe)
  %i.or = fmul <16 x float> %i.ac, %i.oh
  %i.os = fadd <16 x float> %i.ns, %i.ol
  %i.ot = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.or, <16 x float> %i.os, <16 x float> %i.nu)
  %i.ou = fmul <16 x float> %i.ac, %i.oi
  %i.ov = fadd <16 x float> %i.nv, %i.om
  %i.ow = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ou, <16 x float> %i.ov, <16 x float> %i.nx)
  %i.ox = fmul <16 x float> %i.nz, %i.oo
  %i.oy = fmul <16 x float> %i.oa, %i.oq
  %i.oz = select <16 x i1> %i.lh, <16 x float> %i.am, <16 x float> zeroinitializer
  %i.pa = fadd <16 x float> %i.oz, %i.ot
  %i.pb = select <16 x i1> %.not4645, <16 x float> zeroinitializer, <16 x float> %i.am
  %i.pc = fadd <16 x float> %i.pb, %i.ow
  %i.pd = fsub <16 x float> %i.od, %i.pa
  %i.pe = fmul <16 x float> %i.nz, %i.pd
  %i.pf = fsub <16 x float> %i.oe, %i.pc
  %i.pg = fmul <16 x float> %i.oa, %i.pf
  %i.ph = select <16 x i1> %i.ni, <16 x float> %i.pe, <16 x float> zeroinitializer ; 2 uses
  %i.pi = select <16 x i1> %i.nk, <16 x float> %i.pg, <16 x float> zeroinitializer ; 2 uses
  %i.pj = fcmp olt <16 x float> %i.mu, %i.bc      ; 2 uses
  %i.pk = shl nsw i32 %i.lb, 4
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr [4 x i8], ptr %i.f, i64 %i.pl ; 2 uses
  %.val6944818 = load <8 x float>, ptr %i.pm, align 32, !tbaa !29
  %i.pn = shufflevector <8 x float> %.val6944818, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.po = getelementptr i8, ptr %i.pm, i64 32
  %.val6954819 = load <8 x float>, ptr %i.po, align 32, !tbaa !29
  %i.pp = shufflevector <8 x float> %.val6954819, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pq = fadd <16 x float> %i.kf, %i.pn          ; 3 uses
  %i.pr = fmul <16 x float> %i.kj, %i.pp          ; 2 uses
  %i.ps = fmul <16 x float> %i.nj, %i.pq          ; 2 uses
  %i.pt = fmul <16 x float> %i.ps, %i.ps          ; 3 uses
  %i.pu = fmul <16 x float> %i.pt, %i.pt
  %i.pv = fmul <16 x float> %i.pt, %i.pu
  %i.pw = select <16 x i1> %i.pj, <16 x i1> %i.lh, <16 x i1> zeroinitializer ; 2 uses
  %i.px = select <16 x i1> %i.pw, <16 x float> %i.pv, <16 x float> zeroinitializer ; 2 uses
  %i.py = fmul <16 x float> %i.pr, %i.px          ; 3 uses
  %i.pz = fmul <16 x float> %i.px, %i.py          ; 2 uses
  %i.qa = fsub <16 x float> %i.pz, %i.py
  %i.qb = fmul <16 x float> %i.pq, %i.pq          ; 3 uses
  %i.qc = fmul <16 x float> %i.qb, %i.qb
  %i.qd = fmul <16 x float> %i.qb, %i.qc          ; 2 uses
  %i.qe = fmul <16 x float> %i.pr, %i.qd          ; 2 uses
  %i.qf = fmul <16 x float> %i.qd, %i.qe
  %i.qg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qe, <16 x float> %i.ap, <16 x float> %i.py)
  %i.qh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qf, <16 x float> %i.as, <16 x float> %i.pz)
  %i.qi = fmul <16 x float> %i.qg, splat (float f0xBE2AAAAB)
  %i.qj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qh, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.qi)
  %i.qk = select <16 x i1> %i.pj, <16 x float> %i.qa, <16 x float> zeroinitializer
  %i.ql = select <16 x i1> %i.pw, <16 x float> %i.qj, <16 x float> zeroinitializer ; 2 uses
  %i.qm = load ptr, ptr %i.bq, align 8, !tbaa !89
  %i.qn = load i32, ptr %i.cd, align 8, !tbaa !105
  %i.qo = sext i32 %i.mm to i64
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.qm, i64 %i.qo
  %5 = load i32, ptr %i.ca, align 8, !tbaa !99
  %6 = load i32, ptr %i.ce, align 4, !tbaa !106
  %i.qq = load <2 x i32>, ptr %i.qp, align 4, !tbaa !90 ; 2 uses
  %i.qr = insertelement <2 x i32> poison, i32 %i.qn, i64 0
  %i.qs = shufflevector <2 x i32> %i.qq, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.qt = shufflevector <2 x i32> %i.qq, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.qu = shufflevector <2 x i32> %i.qr, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.qv = ashr <4 x i32> %i.qt, %i.qu
  %i.qw = shufflevector <4 x i32> %i.qv, <4 x i32> %i.qs, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %7 = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.qx = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.qy = and <4 x i32> %i.qw, %i.qx
  %8 = insertelement <4 x i32> poison, i32 %5, i64 0
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.qz = mul nsw <4 x i32> %i.qy, %9             ; 4 uses
  %i.ra = load ptr, ptr %i.bw, align 8, !tbaa !95 ; 2 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !96 ; 4 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !96 ; 4 uses
  %i.re = shufflevector <16 x float> %i.ph, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.rf = shufflevector <16 x float> %i.ph, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.rg = extractelement <4 x i32> %i.qz, i64 0
  %i.rh = sext i32 %i.rg to i64                   ; 6 uses
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %i.rh ; 2 uses
  %i.rj = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.rh ; 2 uses
  %i.rk = load <8 x float>, ptr %i.ri, align 32, !tbaa !29
  %i.rl = fadd <8 x float> %i.re, %i.rk
  store <8 x float> %i.rl, ptr %i.ri, align 32, !tbaa !29
  %i.rm = load <8 x float>, ptr %i.rj, align 32, !tbaa !29
  %i.rn = fadd <8 x float> %i.rm, %i.rf
  store <8 x float> %i.rn, ptr %i.rj, align 32, !tbaa !29
  %i.ro = extractelement <4 x i32> %i.qz, i64 1
  %i.rp = sext i32 %i.ro to i64                   ; 6 uses
  %i.rq = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %i.rp
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 32 ; 2 uses
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.rp
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 32 ; 2 uses
  %i.ru = load <8 x float>, ptr %i.rr, align 32, !tbaa !29
  %i.rv = fadd <8 x float> %i.re, %i.ru
  store <8 x float> %i.rv, ptr %i.rr, align 32, !tbaa !29
  %i.rw = load <8 x float>, ptr %i.rt, align 32, !tbaa !29
  %i.rx = fadd <8 x float> %i.rw, %i.rf
  store <8 x float> %i.rx, ptr %i.rt, align 32, !tbaa !29
  %i.ry = extractelement <4 x i32> %i.qz, i64 2
  %i.rz = sext i32 %i.ry to i64                   ; 6 uses
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %i.rz
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 64 ; 2 uses
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.rz
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 64 ; 2 uses
  %i.se = load <8 x float>, ptr %i.sb, align 32, !tbaa !29
  %i.sf = fadd <8 x float> %i.re, %i.se
  store <8 x float> %i.sf, ptr %i.sb, align 32, !tbaa !29
  %i.sg = load <8 x float>, ptr %i.sd, align 32, !tbaa !29
  %i.sh = fadd <8 x float> %i.sg, %i.rf
  store <8 x float> %i.sh, ptr %i.sd, align 32, !tbaa !29
  %i.si = extractelement <4 x i32> %i.qz, i64 3
  %i.sj = sext i32 %i.si to i64                   ; 6 uses
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.rb, i64 %i.sj
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 96 ; 2 uses
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.sj
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 96 ; 2 uses
  %i.so = load <8 x float>, ptr %i.sl, align 32, !tbaa !29
  %i.sp = fadd <8 x float> %i.re, %i.so
  store <8 x float> %i.sp, ptr %i.sl, align 32, !tbaa !29
  %i.sq = load <8 x float>, ptr %i.sn, align 32, !tbaa !29
  %i.sr = fadd <8 x float> %i.sq, %i.rf
  store <8 x float> %i.sr, ptr %i.sn, align 32, !tbaa !29
  %i.ss = load ptr, ptr %i.bw, align 8, !tbaa !95 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !96 ; 4 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !96 ; 4 uses
  %i.sx = shufflevector <16 x float> %i.pi, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.sy = shufflevector <16 x float> %i.pi, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.sz = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rh ; 2 uses
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.rh ; 2 uses
  %i.tb = load <8 x float>, ptr %i.sz, align 32, !tbaa !29
  %i.tc = fadd <8 x float> %i.sx, %i.tb
  store <8 x float> %i.tc, ptr %i.sz, align 32, !tbaa !29
  %i.td = load <8 x float>, ptr %i.ta, align 32, !tbaa !29
  %i.te = fadd <8 x float> %i.td, %i.sy
  store <8 x float> %i.te, ptr %i.ta, align 32, !tbaa !29
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rp
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 32 ; 2 uses
  %i.th = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.rp
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 32 ; 2 uses
  %i.tj = load <8 x float>, ptr %i.tg, align 32, !tbaa !29
  %i.tk = fadd <8 x float> %i.sx, %i.tj
  store <8 x float> %i.tk, ptr %i.tg, align 32, !tbaa !29
  %i.tl = load <8 x float>, ptr %i.ti, align 32, !tbaa !29
  %i.tm = fadd <8 x float> %i.tl, %i.sy
  store <8 x float> %i.tm, ptr %i.ti, align 32, !tbaa !29
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.rz
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 64 ; 2 uses
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.rz
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 64 ; 2 uses
  %i.tr = load <8 x float>, ptr %i.to, align 32, !tbaa !29
  %i.ts = fadd <8 x float> %i.sx, %i.tr
  store <8 x float> %i.ts, ptr %i.to, align 32, !tbaa !29
  %i.tt = load <8 x float>, ptr %i.tq, align 32, !tbaa !29
  %i.tu = fadd <8 x float> %i.tt, %i.sy
  store <8 x float> %i.tu, ptr %i.tq, align 32, !tbaa !29
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.su, i64 %i.sj
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 96 ; 2 uses
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.sj
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 96 ; 2 uses
  %i.tz = load <8 x float>, ptr %i.tw, align 32, !tbaa !29
  %i.ua = fadd <8 x float> %i.sx, %i.tz
  store <8 x float> %i.ua, ptr %i.tw, align 32, !tbaa !29
  %i.ub = load <8 x float>, ptr %i.ty, align 32, !tbaa !29
  %i.uc = fadd <8 x float> %i.ub, %i.sy
  store <8 x float> %i.uc, ptr %i.ty, align 32, !tbaa !29
  %i.ud = load ptr, ptr %i.by, align 8, !tbaa !95 ; 2 uses
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !96 ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !96 ; 4 uses
  %i.uh = shufflevector <16 x float> %i.ql, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ui = shufflevector <16 x float> %i.ql, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.rh ; 2 uses
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.rh ; 2 uses
  %i.ul = load <8 x float>, ptr %i.uj, align 32, !tbaa !29
  %i.um = fadd <8 x float> %i.uh, %i.ul
  store <8 x float> %i.um, ptr %i.uj, align 32, !tbaa !29
  %i.un = load <8 x float>, ptr %i.uk, align 32, !tbaa !29
  %i.uo = fadd <8 x float> %i.un, %i.ui
  store <8 x float> %i.uo, ptr %i.uk, align 32, !tbaa !29
  %i.up = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.rp
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 32 ; 2 uses
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.rp
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 32 ; 2 uses
  %i.ut = load <8 x float>, ptr %i.uq, align 32, !tbaa !29
  %i.uu = fadd <8 x float> %i.uh, %i.ut
  store <8 x float> %i.uu, ptr %i.uq, align 32, !tbaa !29
  %i.uv = load <8 x float>, ptr %i.us, align 32, !tbaa !29
  %i.uw = fadd <8 x float> %i.uv, %i.ui
  store <8 x float> %i.uw, ptr %i.us, align 32, !tbaa !29
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.rz
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 64 ; 2 uses
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.rz
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 64 ; 2 uses
  %i.vb = load <8 x float>, ptr %i.uy, align 32, !tbaa !29
  %i.vc = fadd <8 x float> %i.uh, %i.vb
  store <8 x float> %i.vc, ptr %i.uy, align 32, !tbaa !29
  %i.vd = load <8 x float>, ptr %i.va, align 32, !tbaa !29
  %i.ve = fadd <8 x float> %i.vd, %i.ui
  store <8 x float> %i.ve, ptr %i.va, align 32, !tbaa !29
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.sj
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 96 ; 2 uses
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.sj
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 96 ; 2 uses
  %i.vj = load <8 x float>, ptr %i.vg, align 32, !tbaa !29
  %i.vk = fadd <8 x float> %i.uh, %i.vj
  store <8 x float> %i.vk, ptr %i.vg, align 32, !tbaa !29
  %i.vl = load <8 x float>, ptr %i.vi, align 32, !tbaa !29
  %i.vm = fadd <8 x float> %i.vl, %i.ui
  store <8 x float> %i.vm, ptr %i.vi, align 32, !tbaa !29
  %i.vn = fadd <16 x float> %i.ox, %i.qk
  %i.vo = fmul <16 x float> %i.ob, %i.vn          ; 3 uses
  %i.vp = fmul <16 x float> %i.oc, %i.oy          ; 3 uses
  %i.vq = fmul <16 x float> %i.ls, %i.vo          ; 2 uses
  %i.vr = fmul <16 x float> %i.lt, %i.vp          ; 2 uses
  %i.vs = fmul <16 x float> %i.lu, %i.vo          ; 2 uses
  %i.vt = fmul <16 x float> %i.lv, %i.vp          ; 2 uses
  %i.vu = fmul <16 x float> %i.lw, %i.vo          ; 2 uses
  %i.vv = fmul <16 x float> %i.lx, %i.vp          ; 2 uses
  %i.vw = fadd <16 x float> %.sroa.03853.04448, %i.vq ; 2 uses
  %i.vx = fadd <16 x float> %.sroa.163860.04449, %i.vr ; 2 uses
  %i.vy = fadd <16 x float> %.sroa.03835.04446, %i.vs ; 2 uses
  %i.vz = fadd <16 x float> %.sroa.163842.04447, %i.vt ; 2 uses
  %i.wa = fadd <16 x float> %.sroa.03818.04444, %i.vu ; 2 uses
  %i.wb = fadd <16 x float> %.sroa.16.04445, %i.vv ; 2 uses
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ll ; 4 uses
  %i.wd = fadd <16 x float> %i.vr, %i.vq          ; 2 uses
  %i.we = fadd <16 x float> %i.vt, %i.vs          ; 2 uses
  %i.wf = fadd <16 x float> %i.vv, %i.vu          ; 2 uses
  %i.wg = load <8 x float>, ptr %i.wc, align 32, !tbaa !29
  %i.wh = shufflevector <16 x float> %i.wd, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wi = shufflevector <16 x float> %i.wd, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wj = fadd <8 x float> %i.wh, %i.wi
  %i.wk = fsub <8 x float> %i.wg, %i.wj
  store <8 x float> %i.wk, ptr %i.wc, align 32, !tbaa !29
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wc, i64 32 ; 2 uses
  %i.wm = load <8 x float>, ptr %i.wl, align 32, !tbaa !29
  %i.wn = shufflevector <16 x float> %i.we, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wo = shufflevector <16 x float> %i.we, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wp = fadd <8 x float> %i.wn, %i.wo
  %i.wq = fsub <8 x float> %i.wm, %i.wp
  store <8 x float> %i.wq, ptr %i.wl, align 32, !tbaa !29
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wc, i64 64 ; 2 uses
  %i.ws = load <8 x float>, ptr %i.wr, align 32, !tbaa !29
  %i.wt = shufflevector <16 x float> %i.wf, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wu = shufflevector <16 x float> %i.wf, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wv = fadd <8 x float> %i.wt, %i.wu
  %i.ww = fsub <8 x float> %i.ws, %i.wv
  store <8 x float> %i.ww, ptr %i.wr, align 32, !tbaa !29
  %indvars.iv.next4550 = add nsw i64 %indvars.iv4549, 1 ; 2 uses
  %exitcond4553.not = icmp eq i64 %indvars.iv.next4550, %wide.trip.count4552
  br i1 %exitcond4553.not, label %.loopexit, label %bb.e, !llvm.loop !17

.critedge.loopexit:                               ; preds = %bb.e
  %i.wx = trunc nsw i64 %indvars.iv4549 to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.sroa.03818.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.03818.04444, %.critedge.loopexit ] ; 2 uses
  %.sroa.16.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.16.04445, %.critedge.loopexit ] ; 2 uses
  %.sroa.03835.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.03835.04446, %.critedge.loopexit ] ; 2 uses
  %.sroa.163842.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.163842.04447, %.critedge.loopexit ] ; 2 uses
  %.sroa.03853.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.03853.04448, %.critedge.loopexit ] ; 2 uses
  %.sroa.163860.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.163860.04449, %.critedge.loopexit ] ; 2 uses
  %.0548.lcssa = phi i32 [ %i.cl, %.preheader ], [ %i.wx, %.critedge.loopexit ] ; 2 uses
  %i.wy = icmp slt i32 %.0548.lcssa, %i.cn
  br i1 %i.wy, label %.lr.ph4476, label %.loopexit

.lr.ph4476:                                       ; preds = %.critedge
  %i.wz = sext i32 %.0548.lcssa to i64
  %wide.trip.count4563 = sext i32 %i.cn to i64
  br label %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575

_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575: ; preds = %.lr.ph4476, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575
  %indvars.iv4560 = phi i64 [ %i.wz, %.lr.ph4476 ], [ %indvars.iv.next4561, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575 ] ; 2 uses
  %.sroa.163860.14474 = phi <16 x float> [ %.sroa.163860.0.lcssa, %.lr.ph4476 ], [ %i.aha, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575 ]
  %.sroa.03853.14473 = phi <16 x float> [ %.sroa.03853.0.lcssa, %.lr.ph4476 ], [ %i.agz, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575 ]
  %.sroa.163842.14472 = phi <16 x float> [ %.sroa.163842.0.lcssa, %.lr.ph4476 ], [ %i.ahc, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575 ]
  %.sroa.03835.14471 = phi <16 x float> [ %.sroa.03835.0.lcssa, %.lr.ph4476 ], [ %i.ahb, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575 ]
  %.sroa.16.14470 = phi <16 x float> [ %.sroa.16.0.lcssa, %.lr.ph4476 ], [ %i.ahe, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575 ]
  %.sroa.03818.14469 = phi <16 x float> [ %.sroa.03818.0.lcssa, %.lr.ph4476 ], [ %i.ahd, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575 ]
  %i.xa = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv4560
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !98 ; 4 uses
  %i.xc = shl nsw i32 %i.xb, 3
  %i.xd = mul nsw i32 %i.xb, 24
  %i.xe = sext i32 %i.xd to i64                   ; 2 uses
  %i.xf = getelementptr [4 x i8], ptr %i.bg, i64 %i.xe ; 3 uses
  %.val6964820 = load <8 x float>, ptr %i.xf, align 32, !tbaa !29
  %i.xg = shufflevector <8 x float> %.val6964820, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.xh = getelementptr i8, ptr %i.xf, i64 32
  %.val6974821 = load <8 x float>, ptr %i.xh, align 32, !tbaa !29
  %i.xi = shufflevector <8 x float> %.val6974821, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.xj = getelementptr i8, ptr %i.xf, i64 64
  %.val6984822 = load <8 x float>, ptr %i.xj, align 32, !tbaa !29
  %i.xk = shufflevector <8 x float> %.val6984822, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.xl = fsub <16 x float> %i.if, %i.xg          ; 3 uses
  %i.xm = fsub <16 x float> %i.il, %i.xg          ; 3 uses
  %i.xn = fsub <16 x float> %i.is, %i.xi          ; 3 uses
  %i.xo = fsub <16 x float> %i.iy, %i.xi          ; 3 uses
  %i.xp = fsub <16 x float> %i.jf, %i.xk          ; 3 uses
  %i.xq = fsub <16 x float> %i.jl, %i.xk          ; 3 uses
  %i.xr = fmul <16 x float> %i.xl, %i.xl
  %i.xs = fmul <16 x float> %i.xn, %i.xn
  %i.xt = fadd <16 x float> %i.xr, %i.xs
  %i.xu = fmul <16 x float> %i.xp, %i.xp
  %i.xv = fadd <16 x float> %i.xt, %i.xu          ; 2 uses
  %i.xw = fmul <16 x float> %i.xm, %i.xm
  %i.xx = fmul <16 x float> %i.xo, %i.xo
  %i.xy = fadd <16 x float> %i.xw, %i.xx
  %i.xz = fmul <16 x float> %i.xq, %i.xq
  %i.ya = fadd <16 x float> %i.xy, %i.xz          ; 2 uses
  %i.yb = fcmp olt <16 x float> %i.xv, %i.ax      ; 2 uses
  %i.yc = fcmp olt <16 x float> %i.ya, %i.ax      ; 2 uses
  %i.yd = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.xv, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.ye = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ya, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.yf = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.yd, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.yg = fmul <16 x float> %i.yd, %i.yf
  %i.yh = fmul <16 x float> %i.yf, splat (float -5.000000e-01)
  %i.yi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.yg, <16 x float> %i.yf, <16 x float> splat (float -3.000000e+00))
  %i.yj = fmul <16 x float> %i.yh, %i.yi
  %i.yk = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.ye, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.yl = fmul <16 x float> %i.ye, %i.yk
  %i.ym = fmul <16 x float> %i.yk, splat (float -5.000000e-01)
  %i.yn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.yl, <16 x float> %i.yk, <16 x float> splat (float -3.000000e+00))
  %i.yo = fmul <16 x float> %i.ym, %i.yn
  %i.yp = sext i32 %i.xc to i64
  %i.yq = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.yp
  %.val6994823 = load <8 x float>, ptr %i.yq, align 32, !tbaa !29
  %i.yr = select <16 x i1> %i.yb, <16 x float> %i.yj, <16 x float> zeroinitializer ; 6 uses
  %i.ys = select <16 x i1> %i.yc, <16 x float> %i.yo, <16 x float> zeroinitializer ; 5 uses
  %i.yt = fmul <16 x float> %i.yd, %i.yr          ; 2 uses
  %i.yu = fmul <16 x float> %i.ye, %i.ys          ; 2 uses
  %i.yv = fmul <16 x float> %i.z, %i.yt           ; 2 uses
  %i.yw = fmul <16 x float> %i.z, %i.yu           ; 2 uses
  %i.yx = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.yv, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.yy = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.yw, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.yz = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ae, <16 x i32> %i.yx, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.za = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cf, <16 x i32> %i.yx, <16 x i1> splat (i1 true), i32 4)
  %i.zb = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ag, <16 x i32> %i.yx, <16 x i1> splat (i1 true), i32 4)
  %i.zc = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ae, <16 x i32> %i.yy, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.zd = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cf, <16 x i32> %i.yy, <16 x i1> splat (i1 true), i32 4)
  %i.ze = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ag, <16 x i32> %i.yy, <16 x i1> splat (i1 true), i32 4)
  %i.zf = shufflevector <8 x float> %.val6994823, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.zg = fmul <16 x float> %.sroa.03969.0, %i.zf ; 2 uses
  %i.zh = fmul <16 x float> %.sroa.73973.0, %i.zf ; 2 uses
  %i.zi = fmul <16 x float> %i.yr, %i.yr
  %i.zj = fmul <16 x float> %i.ys, %i.ys
  %i.zk = sitofp <16 x i32> %i.yx to <16 x float>
  %i.zl = sitofp <16 x i32> %i.yy to <16 x float>
  %i.zm = fsub <16 x float> %i.yv, %i.zk          ; 2 uses
  %i.zn = fsub <16 x float> %i.yw, %i.zl          ; 2 uses
  %i.zo = fsub <16 x float> %i.za, %i.yz
  %i.zp = fsub <16 x float> %i.zd, %i.zc
  %i.zq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zm, <16 x float> %i.zo, <16 x float> %i.yz) ; 2 uses
  %i.zr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zn, <16 x float> %i.zp, <16 x float> %i.zc) ; 2 uses
  %i.zs = fneg <16 x float> %i.zq
  %i.zt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zs, <16 x float> %i.yt, <16 x float> %i.yr)
  %i.zu = fneg <16 x float> %i.zr
  %i.zv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zu, <16 x float> %i.yu, <16 x float> %i.ys)
  %i.zw = fmul <16 x float> %i.ac, %i.zm
  %i.zx = fadd <16 x float> %i.yz, %i.zq
  %i.zy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zw, <16 x float> %i.zx, <16 x float> %i.zb)
  %i.zz = fmul <16 x float> %i.ac, %i.zn
  %i.aaa = fadd <16 x float> %i.zc, %i.zr
  %i.aab = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zz, <16 x float> %i.aaa, <16 x float> %i.ze)
  %i.aac = fmul <16 x float> %i.zg, %i.zt
  %i.aad = fmul <16 x float> %i.zh, %i.zv
  %i.aae = fadd <16 x float> %i.am, %i.zy
  %i.aaf = fadd <16 x float> %i.am, %i.aab
  %i.aag = fsub <16 x float> %i.yr, %i.aae
  %i.aah = fmul <16 x float> %i.zg, %i.aag
  %i.aai = fsub <16 x float> %i.ys, %i.aaf
  %i.aaj = fmul <16 x float> %i.zh, %i.aai
  %i.aak = select <16 x i1> %i.yb, <16 x float> %i.aah, <16 x float> zeroinitializer ; 2 uses
  %i.aal = select <16 x i1> %i.yc, <16 x float> %i.aaj, <16 x float> zeroinitializer ; 2 uses
  %i.aam = fcmp olt <16 x float> %i.yd, %i.bc     ; 3 uses
  %i.aan = shl nsw i32 %i.xb, 4
  %i.aao = sext i32 %i.aan to i64
  %i.aap = getelementptr [4 x i8], ptr %i.f, i64 %i.aao ; 2 uses
  %.val7004824 = load <8 x float>, ptr %i.aap, align 32, !tbaa !29
  %i.aaq = shufflevector <8 x float> %.val7004824, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aar = getelementptr i8, ptr %i.aap, i64 32
  %.val7014825 = load <8 x float>, ptr %i.aar, align 32, !tbaa !29
  %i.aas = shufflevector <8 x float> %.val7014825, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aat = fadd <16 x float> %i.kf, %i.aaq        ; 3 uses
  %i.aau = fmul <16 x float> %i.kj, %i.aas        ; 2 uses
  %i.aav = fmul <16 x float> %i.yr, %i.aat        ; 2 uses
  %i.aaw = fmul <16 x float> %i.aav, %i.aav       ; 3 uses
  %i.aax = fmul <16 x float> %i.aaw, %i.aaw
  %i.aay = fmul <16 x float> %i.aaw, %i.aax
  %i.aaz = select <16 x i1> %i.aam, <16 x float> %i.aay, <16 x float> zeroinitializer ; 2 uses
  %i.aba = fmul <16 x float> %i.aau, %i.aaz       ; 3 uses
  %i.abb = fmul <16 x float> %i.aaz, %i.aba       ; 2 uses
  %i.abc = fsub <16 x float> %i.abb, %i.aba
  %i.abd = fmul <16 x float> %i.aat, %i.aat       ; 3 uses
  %i.abe = fmul <16 x float> %i.abd, %i.abd
  %i.abf = fmul <16 x float> %i.abd, %i.abe       ; 2 uses
  %i.abg = fmul <16 x float> %i.aau, %i.abf       ; 2 uses
  %i.abh = fmul <16 x float> %i.abf, %i.abg
  %i.abi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abg, <16 x float> %i.ap, <16 x float> %i.aba)
  %i.abj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abh, <16 x float> %i.as, <16 x float> %i.abb)
  %i.abk = fmul <16 x float> %i.abi, splat (float f0xBE2AAAAB)
  %i.abl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.abj, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.abk)
  %i.abm = select <16 x i1> %i.aam, <16 x float> %i.abc, <16 x float> zeroinitializer
  %i.abn = select <16 x i1> %i.aam, <16 x float> %i.abl, <16 x float> zeroinitializer ; 2 uses
  %i.abo = load ptr, ptr %i.bq, align 8, !tbaa !89
  %i.abp = shl nsw i32 %i.xb, 1
  %i.abq = load i32, ptr %i.cd, align 8, !tbaa !105
  %i.abr = sext i32 %i.abp to i64
  %i.abs = getelementptr inbounds [4 x i8], ptr %i.abo, i64 %i.abr
  %10 = load i32, ptr %i.ca, align 8, !tbaa !99
  %11 = load i32, ptr %i.ce, align 4, !tbaa !106
  %i.abt = load <2 x i32>, ptr %i.abs, align 4, !tbaa !90 ; 2 uses
  %i.abu = insertelement <2 x i32> poison, i32 %i.abq, i64 0
  %i.abv = shufflevector <2 x i32> %i.abt, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.abw = shufflevector <2 x i32> %i.abt, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.abx = shufflevector <2 x i32> %i.abu, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.aby = ashr <4 x i32> %i.abw, %i.abx
  %i.abz = shufflevector <4 x i32> %i.aby, <4 x i32> %i.abv, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %12 = insertelement <4 x i32> poison, i32 %11, i64 0
  %i.aca = shufflevector <4 x i32> %12, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.acb = and <4 x i32> %i.abz, %i.aca
  %13 = insertelement <4 x i32> poison, i32 %10, i64 0
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.acc = mul nsw <4 x i32> %i.acb, %14          ; 4 uses
  %i.acd = load ptr, ptr %i.bw, align 8, !tbaa !95 ; 2 uses
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !96 ; 4 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !96 ; 4 uses
  %i.ach = shufflevector <16 x float> %i.aak, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.aci = shufflevector <16 x float> %i.aak, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.acj = extractelement <4 x i32> %i.acc, i64 0
  %i.ack = sext i32 %i.acj to i64                 ; 6 uses
  %i.acl = getelementptr inbounds [4 x i8], ptr %i.ace, i64 %i.ack ; 2 uses
  %i.acm = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %i.ack ; 2 uses
  %i.acn = load <8 x float>, ptr %i.acl, align 32, !tbaa !29
  %i.aco = fadd <8 x float> %i.ach, %i.acn
  store <8 x float> %i.aco, ptr %i.acl, align 32, !tbaa !29
  %i.acp = load <8 x float>, ptr %i.acm, align 32, !tbaa !29
  %i.acq = fadd <8 x float> %i.acp, %i.aci
  store <8 x float> %i.acq, ptr %i.acm, align 32, !tbaa !29
  %i.acr = extractelement <4 x i32> %i.acc, i64 1
  %i.acs = sext i32 %i.acr to i64                 ; 6 uses
  %i.act = getelementptr inbounds [4 x i8], ptr %i.ace, i64 %i.acs
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 32 ; 2 uses
  %i.acv = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %i.acs
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 32 ; 2 uses
  %i.acx = load <8 x float>, ptr %i.acu, align 32, !tbaa !29
  %i.acy = fadd <8 x float> %i.ach, %i.acx
  store <8 x float> %i.acy, ptr %i.acu, align 32, !tbaa !29
  %i.acz = load <8 x float>, ptr %i.acw, align 32, !tbaa !29
  %i.ada = fadd <8 x float> %i.acz, %i.aci
  store <8 x float> %i.ada, ptr %i.acw, align 32, !tbaa !29
  %i.adb = extractelement <4 x i32> %i.acc, i64 2
  %i.adc = sext i32 %i.adb to i64                 ; 6 uses
  %i.add = getelementptr inbounds [4 x i8], ptr %i.ace, i64 %i.adc
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 64 ; 2 uses
  %i.adf = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %i.adc
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 64 ; 2 uses
  %i.adh = load <8 x float>, ptr %i.ade, align 32, !tbaa !29
  %i.adi = fadd <8 x float> %i.ach, %i.adh
  store <8 x float> %i.adi, ptr %i.ade, align 32, !tbaa !29
  %i.adj = load <8 x float>, ptr %i.adg, align 32, !tbaa !29
  %i.adk = fadd <8 x float> %i.adj, %i.aci
  store <8 x float> %i.adk, ptr %i.adg, align 32, !tbaa !29
  %i.adl = extractelement <4 x i32> %i.acc, i64 3
  %i.adm = sext i32 %i.adl to i64                 ; 6 uses
  %i.adn = getelementptr inbounds [4 x i8], ptr %i.ace, i64 %i.adm
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 96 ; 2 uses
  %i.adp = getelementptr inbounds [4 x i8], ptr %i.acg, i64 %i.adm
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 96 ; 2 uses
  %i.adr = load <8 x float>, ptr %i.ado, align 32, !tbaa !29
  %i.ads = fadd <8 x float> %i.ach, %i.adr
  store <8 x float> %i.ads, ptr %i.ado, align 32, !tbaa !29
  %i.adt = load <8 x float>, ptr %i.adq, align 32, !tbaa !29
  %i.adu = fadd <8 x float> %i.adt, %i.aci
  store <8 x float> %i.adu, ptr %i.adq, align 32, !tbaa !29
  %i.adv = load ptr, ptr %i.bw, align 8, !tbaa !95 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 16
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !96 ; 4 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adv, i64 24
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !96 ; 4 uses
  %i.aea = shufflevector <16 x float> %i.aal, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.aeb = shufflevector <16 x float> %i.aal, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aec = getelementptr inbounds [4 x i8], ptr %i.adx, i64 %i.ack ; 2 uses
  %i.aed = getelementptr inbounds [4 x i8], ptr %i.adz, i64 %i.ack ; 2 uses
  %i.aee = load <8 x float>, ptr %i.aec, align 32, !tbaa !29
  %i.aef = fadd <8 x float> %i.aea, %i.aee
  store <8 x float> %i.aef, ptr %i.aec, align 32, !tbaa !29
  %i.aeg = load <8 x float>, ptr %i.aed, align 32, !tbaa !29
  %i.aeh = fadd <8 x float> %i.aeg, %i.aeb
  store <8 x float> %i.aeh, ptr %i.aed, align 32, !tbaa !29
  %i.aei = getelementptr inbounds [4 x i8], ptr %i.adx, i64 %i.acs
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 32 ; 2 uses
  %i.aek = getelementptr inbounds [4 x i8], ptr %i.adz, i64 %i.acs
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 32 ; 2 uses
  %i.aem = load <8 x float>, ptr %i.aej, align 32, !tbaa !29
  %i.aen = fadd <8 x float> %i.aea, %i.aem
  store <8 x float> %i.aen, ptr %i.aej, align 32, !tbaa !29
  %i.aeo = load <8 x float>, ptr %i.ael, align 32, !tbaa !29
  %i.aep = fadd <8 x float> %i.aeo, %i.aeb
  store <8 x float> %i.aep, ptr %i.ael, align 32, !tbaa !29
  %i.aeq = getelementptr inbounds [4 x i8], ptr %i.adx, i64 %i.adc
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 64 ; 2 uses
  %i.aes = getelementptr inbounds [4 x i8], ptr %i.adz, i64 %i.adc
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 64 ; 2 uses
  %i.aeu = load <8 x float>, ptr %i.aer, align 32, !tbaa !29
  %i.aev = fadd <8 x float> %i.aea, %i.aeu
  store <8 x float> %i.aev, ptr %i.aer, align 32, !tbaa !29
  %i.aew = load <8 x float>, ptr %i.aet, align 32, !tbaa !29
  %i.aex = fadd <8 x float> %i.aew, %i.aeb
  store <8 x float> %i.aex, ptr %i.aet, align 32, !tbaa !29
  %i.aey = getelementptr inbounds [4 x i8], ptr %i.adx, i64 %i.adm
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 96 ; 2 uses
  %i.afa = getelementptr inbounds [4 x i8], ptr %i.adz, i64 %i.adm
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 96 ; 2 uses
  %i.afc = load <8 x float>, ptr %i.aez, align 32, !tbaa !29
  %i.afd = fadd <8 x float> %i.aea, %i.afc
  store <8 x float> %i.afd, ptr %i.aez, align 32, !tbaa !29
  %i.afe = load <8 x float>, ptr %i.afb, align 32, !tbaa !29
  %i.aff = fadd <8 x float> %i.afe, %i.aeb
  store <8 x float> %i.aff, ptr %i.afb, align 32, !tbaa !29
  %i.afg = load ptr, ptr %i.by, align 8, !tbaa !95 ; 2 uses
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !96 ; 4 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afg, i64 8
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !96 ; 4 uses
  %i.afk = shufflevector <16 x float> %i.abn, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.afl = shufflevector <16 x float> %i.abn, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.afm = getelementptr inbounds [4 x i8], ptr %i.afh, i64 %i.ack ; 2 uses
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.afj, i64 %i.ack ; 2 uses
  %i.afo = load <8 x float>, ptr %i.afm, align 32, !tbaa !29
  %i.afp = fadd <8 x float> %i.afk, %i.afo
  store <8 x float> %i.afp, ptr %i.afm, align 32, !tbaa !29
  %i.afq = load <8 x float>, ptr %i.afn, align 32, !tbaa !29
  %i.afr = fadd <8 x float> %i.afq, %i.afl
  store <8 x float> %i.afr, ptr %i.afn, align 32, !tbaa !29
  %i.afs = getelementptr inbounds [4 x i8], ptr %i.afh, i64 %i.acs
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 32 ; 2 uses
  %i.afu = getelementptr inbounds [4 x i8], ptr %i.afj, i64 %i.acs
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 32 ; 2 uses
  %i.afw = load <8 x float>, ptr %i.aft, align 32, !tbaa !29
  %i.afx = fadd <8 x float> %i.afk, %i.afw
  store <8 x float> %i.afx, ptr %i.aft, align 32, !tbaa !29
  %i.afy = load <8 x float>, ptr %i.afv, align 32, !tbaa !29
  %i.afz = fadd <8 x float> %i.afy, %i.afl
  store <8 x float> %i.afz, ptr %i.afv, align 32, !tbaa !29
  %i.aga = getelementptr inbounds [4 x i8], ptr %i.afh, i64 %i.adc
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 64 ; 2 uses
  %i.agc = getelementptr inbounds [4 x i8], ptr %i.afj, i64 %i.adc
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 64 ; 2 uses
  %i.age = load <8 x float>, ptr %i.agb, align 32, !tbaa !29
  %i.agf = fadd <8 x float> %i.afk, %i.age
  store <8 x float> %i.agf, ptr %i.agb, align 32, !tbaa !29
  %i.agg = load <8 x float>, ptr %i.agd, align 32, !tbaa !29
  %i.agh = fadd <8 x float> %i.agg, %i.afl
  store <8 x float> %i.agh, ptr %i.agd, align 32, !tbaa !29
  %i.agi = getelementptr inbounds [4 x i8], ptr %i.afh, i64 %i.adm
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 96 ; 2 uses
  %i.agk = getelementptr inbounds [4 x i8], ptr %i.afj, i64 %i.adm
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 96 ; 2 uses
  %i.agm = load <8 x float>, ptr %i.agj, align 32, !tbaa !29
  %i.agn = fadd <8 x float> %i.afk, %i.agm
  store <8 x float> %i.agn, ptr %i.agj, align 32, !tbaa !29
  %i.ago = load <8 x float>, ptr %i.agl, align 32, !tbaa !29
  %i.agp = fadd <8 x float> %i.ago, %i.afl
  store <8 x float> %i.agp, ptr %i.agl, align 32, !tbaa !29
  %i.agq = fadd <16 x float> %i.aac, %i.abm
  %i.agr = fmul <16 x float> %i.zi, %i.agq        ; 3 uses
  %i.ags = fmul <16 x float> %i.zj, %i.aad        ; 3 uses
  %i.agt = fmul <16 x float> %i.xl, %i.agr        ; 2 uses
  %i.agu = fmul <16 x float> %i.xm, %i.ags        ; 2 uses
  %i.agv = fmul <16 x float> %i.xn, %i.agr        ; 2 uses
  %i.agw = fmul <16 x float> %i.xo, %i.ags        ; 2 uses
  %i.agx = fmul <16 x float> %i.xp, %i.agr        ; 2 uses
  %i.agy = fmul <16 x float> %i.xq, %i.ags        ; 2 uses
  %i.agz = fadd <16 x float> %.sroa.03853.14473, %i.agt ; 2 uses
  %i.aha = fadd <16 x float> %.sroa.163860.14474, %i.agu ; 2 uses
  %i.ahb = fadd <16 x float> %.sroa.03835.14471, %i.agv ; 2 uses
  %i.ahc = fadd <16 x float> %.sroa.163842.14472, %i.agw ; 2 uses
  %i.ahd = fadd <16 x float> %.sroa.03818.14469, %i.agx ; 2 uses
  %i.ahe = fadd <16 x float> %.sroa.16.14470, %i.agy ; 2 uses
  %i.ahf = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.xe ; 4 uses
  %i.ahg = fadd <16 x float> %i.agu, %i.agt       ; 2 uses
  %i.ahh = fadd <16 x float> %i.agw, %i.agv       ; 2 uses
  %i.ahi = fadd <16 x float> %i.agy, %i.agx       ; 2 uses
  %i.ahj = load <8 x float>, ptr %i.ahf, align 32, !tbaa !29
  %i.ahk = shufflevector <16 x float> %i.ahg, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahl = shufflevector <16 x float> %i.ahg, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahm = fadd <8 x float> %i.ahk, %i.ahl
  %i.ahn = fsub <8 x float> %i.ahj, %i.ahm
  store <8 x float> %i.ahn, ptr %i.ahf, align 32, !tbaa !29
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahf, i64 32 ; 2 uses
  %i.ahp = load <8 x float>, ptr %i.aho, align 32, !tbaa !29
  %i.ahq = shufflevector <16 x float> %i.ahh, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahr = shufflevector <16 x float> %i.ahh, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahs = fadd <8 x float> %i.ahq, %i.ahr
  %i.aht = fsub <8 x float> %i.ahp, %i.ahs
  store <8 x float> %i.aht, ptr %i.aho, align 32, !tbaa !29
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahf, i64 64 ; 2 uses
  %i.ahv = load <8 x float>, ptr %i.ahu, align 32, !tbaa !29
  %i.ahw = shufflevector <16 x float> %i.ahi, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahx = shufflevector <16 x float> %i.ahi, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahy = fadd <8 x float> %i.ahw, %i.ahx
  %i.ahz = fsub <8 x float> %i.ahv, %i.ahy
  store <8 x float> %i.ahz, ptr %i.ahu, align 32, !tbaa !29
  %indvars.iv.next4561 = add nsw i64 %indvars.iv4560, 1 ; 2 uses
  %exitcond4564.not = icmp eq i64 %indvars.iv.next4561, %wide.trip.count4563
  br i1 %exitcond4564.not, label %.loopexit, label %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575, !llvm.loop !18

bb.i:                                             ; preds = %bb.d
  br i1 %i.dq, label %.preheader4354, label %.preheader4356

.preheader4356:                                   ; preds = %bb.i
  br i1 %i.ku, label %.lr.ph, label %.critedge5

.lr.ph:                                           ; preds = %.preheader4356
  %i.aia = sext i32 %i.cl to i64
  %wide.trip.count = sext i32 %i.cn to i64
  br label %bb.n

.preheader4354:                                   ; preds = %bb.i
  br i1 %i.ku, label %.lr.ph4409, label %.critedge3

.lr.ph4409:                                       ; preds = %.preheader4354
  %i.aib = sext i32 %i.cl to i64
end_hunk_1
begin_hunk_2_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4359.preheader
  %.sroa.16.24403 = phi <16 x float> [ zeroinitializer, %.lr.ph4409 ], [ %i.avr, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03818.24402 = phi <16 x float> [ zeroinitializer, %.lr.ph4409 ], [ %i.avq, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.aic = load ptr, ptr %i.bh, align 8, !tbaa !71
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.aic, i64 %indvars.iv4524
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 4
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !90
  %.not551 = icmp eq i32 %i.aif, -1
  br i1 %.not551, label %.critedge3.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit556

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit556: ; preds = %bb.j
  %i.aig = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv4524 ; 2 uses
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !98 ; 4 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aig, i64 4
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !104
  %i.aik = insertelement <16 x i32> poison, i32 %i.aij, i64 0
  %i.ail = shufflevector <16 x i32> %i.aik, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.aim = and <16 x i32> %.sroa.04583.0.copyload, %i.ail
  %i.ain = icmp ne <16 x i32> %i.aim, zeroinitializer ; 3 uses
  %i.aio = and <16 x i32> %.sroa.6.0.copyload, %i.ail
  %i.aip = icmp ne <16 x i32> %i.aio, zeroinitializer ; 3 uses
  %i.aiq = shl nsw i32 %i.aih, 3
  %i.air = mul nsw i32 %i.aih, 24
  %i.ais = sext i32 %i.air to i64                 ; 2 uses
  %i.ait = getelementptr [4 x i8], ptr %i.bg, i64 %i.ais ; 3 uses
  %.val7024802 = load <8 x float>, ptr %i.ait, align 32, !tbaa !29
  %i.aiu = shufflevector <8 x float> %.val7024802, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aiv = getelementptr i8, ptr %i.ait, i64 32
  %.val7034803 = load <8 x float>, ptr %i.aiv, align 32, !tbaa !29
  %i.aiw = shufflevector <8 x float> %.val7034803, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aix = getelementptr i8, ptr %i.ait, i64 64
  %.val7044804 = load <8 x float>, ptr %i.aix, align 32, !tbaa !29
  %i.aiy = shufflevector <8 x float> %.val7044804, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aiz = fsub <16 x float> %i.if, %i.aiu        ; 3 uses
  %i.aja = fsub <16 x float> %i.il, %i.aiu        ; 3 uses
  %i.ajb = fsub <16 x float> %i.is, %i.aiw        ; 3 uses
  %i.ajc = fsub <16 x float> %i.iy, %i.aiw        ; 3 uses
  %i.ajd = fsub <16 x float> %i.jf, %i.aiy        ; 3 uses
  %i.aje = fsub <16 x float> %i.jl, %i.aiy        ; 3 uses
  %i.ajf = fmul <16 x float> %i.aiz, %i.aiz
  %i.ajg = fmul <16 x float> %i.ajb, %i.ajb
  %i.ajh = fadd <16 x float> %i.ajf, %i.ajg
  %i.aji = fmul <16 x float> %i.ajd, %i.ajd
  %i.ajj = fadd <16 x float> %i.ajh, %i.aji       ; 2 uses
  %i.ajk = fmul <16 x float> %i.aja, %i.aja
  %i.ajl = fmul <16 x float> %i.ajc, %i.ajc
  %i.ajm = fadd <16 x float> %i.ajk, %i.ajl
  %i.ajn = fmul <16 x float> %i.aje, %i.aje
  %i.ajo = fadd <16 x float> %i.ajm, %i.ajn       ; 2 uses
  %i.ajp = fcmp olt <16 x float> %i.ajj, %i.ax
  %i.ajq = bitcast <16 x i1> %i.ajp to i16        ; 3 uses
  %i.ajr = fcmp olt <16 x float> %i.ajo, %i.ax
  %i.ajs = bitcast <16 x i1> %i.ajr to i16        ; 3 uses
  %i.ajt = shl nsw i32 %i.aih, 1                  ; 3 uses
  %i.aju = icmp eq i32 %i.ajt, %i.cq
  br i1 %i.aju, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit556
  %i.ajv = and i16 %i.ajq, %i.r
  %i.ajw = and i16 %i.ajs, %i.s
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.l:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit556
  %i.ajx = or disjoint i32 %i.ajt, 1
  %i.ajy = icmp eq i32 %i.ajx, %i.cq
  br i1 %i.ajy, label %bb.m, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.m:                                             ; preds = %bb.l
  %i.ajz = and i16 %i.ajq, %i.t
  %i.aka = and i16 %i.ajs, %i.u
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.sroa.04225.0 = phi i16 [ %i.ajv, %bb.k ], [ %i.ajz, %bb.m ], [ %i.ajq, %bb.l ]
  %.sroa.94228.0 = phi i16 [ %i.ajw, %bb.k ], [ %i.aka, %bb.m ], [ %i.ajs, %bb.l ]
  %i.akb = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ajj, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.akc = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ajo, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.akd = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.akb, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.ake = fmul <16 x float> %i.akb, %i.akd
  %i.akf = fmul <16 x float> %i.akd, splat (float -5.000000e-01)
  %i.akg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ake, <16 x float> %i.akd, <16 x float> splat (float -3.000000e+00))
  %i.akh = fmul <16 x float> %i.akf, %i.akg
  %i.aki = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.akc, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.akj = fmul <16 x float> %i.akc, %i.aki
  %i.akk = fmul <16 x float> %i.aki, splat (float -5.000000e-01)
  %i.akl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.akj, <16 x float> %i.aki, <16 x float> splat (float -3.000000e+00))
  %i.akm = fmul <16 x float> %i.akk, %i.akl
  %i.akn = sext i32 %i.aiq to i64
  %i.ako = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.akn
  %.val7054805 = load <8 x float>, ptr %i.ako, align 32, !tbaa !29
  %i.akp = bitcast i16 %.sroa.04225.0 to <16 x i1> ; 2 uses
  %i.akq = select <16 x i1> %i.akp, <16 x float> %i.akh, <16 x float> zeroinitializer ; 5 uses
  %i.akr = bitcast i16 %.sroa.94228.0 to <16 x i1> ; 2 uses
  %i.aks = select <16 x i1> %i.akr, <16 x float> %i.akm, <16 x float> zeroinitializer ; 5 uses
  %i.akt = fmul <16 x float> %i.akb, %i.akq       ; 2 uses
  %i.aku = fmul <16 x float> %i.akc, %i.aks       ; 2 uses
  %i.akv = fmul <16 x float> %i.z, %i.akt         ; 2 uses
  %i.akw = fmul <16 x float> %i.z, %i.aku         ; 2 uses
  %i.akx = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.akv, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.aky = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.akw, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.akz = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ae, <16 x i32> %i.akx, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.ala = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cf, <16 x i32> %i.akx, <16 x i1> splat (i1 true), i32 4)
  %i.alb = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ag, <16 x i32> %i.akx, <16 x i1> splat (i1 true), i32 4)
  %i.alc = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ae, <16 x i32> %i.aky, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.ald = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cf, <16 x i32> %i.aky, <16 x i1> splat (i1 true), i32 4)
  %i.ale = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ag, <16 x i32> %i.aky, <16 x i1> splat (i1 true), i32 4)
  %i.alf = shufflevector <8 x float> %.val7054805, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.alg = fmul <16 x float> %.sroa.03969.0, %i.alf ; 2 uses
  %i.alh = fmul <16 x float> %.sroa.73973.0, %i.alf ; 2 uses
  %i.ali = fmul <16 x float> %i.akq, %i.akq
  %i.alj = fmul <16 x float> %i.aks, %i.aks
  %i.alk = select <16 x i1> %i.ain, <16 x float> %i.akq, <16 x float> zeroinitializer ; 2 uses
  %i.all = select <16 x i1> %i.aip, <16 x float> %i.aks, <16 x float> zeroinitializer ; 2 uses
  %i.alm = sitofp <16 x i32> %i.akx to <16 x float>
  %i.aln = sitofp <16 x i32> %i.aky to <16 x float>
  %i.alo = fsub <16 x float> %i.akv, %i.alm       ; 2 uses
  %i.alp = fsub <16 x float> %i.akw, %i.aln       ; 2 uses
  %i.alq = fsub <16 x float> %i.ala, %i.akz
  %i.alr = fsub <16 x float> %i.ald, %i.alc
  %i.als = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alo, <16 x float> %i.alq, <16 x float> %i.akz) ; 2 uses
  %i.alt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alp, <16 x float> %i.alr, <16 x float> %i.alc) ; 2 uses
  %i.alu = fneg <16 x float> %i.als
  %i.alv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alu, <16 x float> %i.akt, <16 x float> %i.alk)
  %i.alw = fneg <16 x float> %i.alt
  %i.alx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.alw, <16 x float> %i.aku, <16 x float> %i.all)
  %i.aly = fmul <16 x float> %i.ac, %i.alo
  %i.alz = fadd <16 x float> %i.akz, %i.als
  %i.ama = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aly, <16 x float> %i.alz, <16 x float> %i.alb)
  %i.amb = fmul <16 x float> %i.ac, %i.alp
  %i.amc = fadd <16 x float> %i.alc, %i.alt
  %i.amd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.amb, <16 x float> %i.amc, <16 x float> %i.ale)
  %i.ame = fmul <16 x float> %i.alg, %i.alv
  %i.amf = fmul <16 x float> %i.alh, %i.alx
  %i.amg = select <16 x i1> %i.ain, <16 x float> %i.am, <16 x float> zeroinitializer
  %i.amh = fadd <16 x float> %i.amg, %i.ama
  %i.ami = select <16 x i1> %i.aip, <16 x float> %i.am, <16 x float> zeroinitializer
  %i.amj = fadd <16 x float> %i.ami, %i.amd
  %i.amk = fsub <16 x float> %i.alk, %i.amh
  %i.aml = fmul <16 x float> %i.alg, %i.amk
  %i.amm = fsub <16 x float> %i.all, %i.amj
  %i.amn = fmul <16 x float> %i.alh, %i.amm
  %i.amo = select <16 x i1> %i.akp, <16 x float> %i.aml, <16 x float> zeroinitializer ; 2 uses
  %i.amp = select <16 x i1> %i.akr, <16 x float> %i.amn, <16 x float> zeroinitializer ; 2 uses
  %i.amq = fcmp olt <16 x float> %i.akb, %i.bc    ; 2 uses
  %i.amr = fcmp olt <16 x float> %i.akc, %i.bc    ; 2 uses
  %i.ams = shl nsw i32 %i.aih, 4
  %i.amt = sext i32 %i.ams to i64
  %i.amu = getelementptr [4 x i8], ptr %i.f, i64 %i.amt ; 2 uses
  %.val7064806 = load <8 x float>, ptr %i.amu, align 32, !tbaa !29
  %i.amv = shufflevector <8 x float> %.val7064806, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.amw = getelementptr i8, ptr %i.amu, i64 32
  %.val7074807 = load <8 x float>, ptr %i.amw, align 32, !tbaa !29
  %i.amx = shufflevector <8 x float> %.val7074807, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.amy = fadd <16 x float> %i.kf, %i.amv        ; 3 uses
  %i.amz = fadd <16 x float> %i.ko, %i.amv        ; 3 uses
  %i.ana = fmul <16 x float> %i.kj, %i.amx        ; 2 uses
  %i.anb = fmul <16 x float> %i.kt, %i.amx        ; 2 uses
  %i.anc = fmul <16 x float> %i.akq, %i.amy       ; 2 uses
  %i.and = fmul <16 x float> %i.aks, %i.amz       ; 2 uses
  %i.ane = fmul <16 x float> %i.anc, %i.anc       ; 3 uses
  %i.anf = fmul <16 x float> %i.and, %i.and       ; 3 uses
  %i.ang = fmul <16 x float> %i.ane, %i.ane
  %i.anh = fmul <16 x float> %i.ane, %i.ang
  %i.ani = fmul <16 x float> %i.anf, %i.anf
  %i.anj = fmul <16 x float> %i.anf, %i.ani
  %i.ank = select <16 x i1> %i.amq, <16 x i1> %i.ain, <16 x i1> zeroinitializer ; 2 uses
  %i.anl = select <16 x i1> %i.ank, <16 x float> %i.anh, <16 x float> zeroinitializer ; 2 uses
  %i.anm = select <16 x i1> %i.amr, <16 x i1> %i.aip, <16 x i1> zeroinitializer ; 2 uses
  %i.ann = select <16 x i1> %i.anm, <16 x float> %i.anj, <16 x float> zeroinitializer ; 2 uses
  %i.ano = fmul <16 x float> %i.ana, %i.anl       ; 3 uses
  %i.anp = fmul <16 x float> %i.anb, %i.ann       ; 3 uses
  %i.anq = fmul <16 x float> %i.anl, %i.ano       ; 2 uses
  %i.anr = fmul <16 x float> %i.ann, %i.anp       ; 2 uses
  %i.ans = fsub <16 x float> %i.anq, %i.ano
  %i.ant = fsub <16 x float> %i.anr, %i.anp
  %i.anu = fmul <16 x float> %i.amy, %i.amy       ; 3 uses
  %i.anv = fmul <16 x float> %i.amz, %i.amz       ; 3 uses
  %i.anw = fmul <16 x float> %i.anu, %i.anu
  %i.anx = fmul <16 x float> %i.anu, %i.anw       ; 2 uses
  %i.any = fmul <16 x float> %i.anv, %i.anv
  %i.anz = fmul <16 x float> %i.anv, %i.any       ; 2 uses
  %i.aoa = fmul <16 x float> %i.ana, %i.anx       ; 2 uses
  %i.aob = fmul <16 x float> %i.anb, %i.anz       ; 2 uses
  %i.aoc = fmul <16 x float> %i.anx, %i.aoa
  %i.aod = fmul <16 x float> %i.anz, %i.aob
  %i.aoe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoa, <16 x float> %i.ap, <16 x float> %i.ano)
  %i.aof = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aob, <16 x float> %i.ap, <16 x float> %i.anp)
  %i.aog = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoc, <16 x float> %i.as, <16 x float> %i.anq)
  %i.aoh = fmul <16 x float> %i.aoe, splat (float f0xBE2AAAAB)
  %i.aoi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aog, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.aoh)
  %i.aoj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aod, <16 x float> %i.as, <16 x float> %i.anr)
  %i.aok = fmul <16 x float> %i.aof, splat (float f0xBE2AAAAB)
  %i.aol = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aoj, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.aok)
  %i.aom = select <16 x i1> %i.amq, <16 x float> %i.ans, <16 x float> zeroinitializer
  %i.aon = select <16 x i1> %i.amr, <16 x float> %i.ant, <16 x float> zeroinitializer
  %i.aoo = select <16 x i1> %i.ank, <16 x float> %i.aoi, <16 x float> zeroinitializer ; 2 uses
  %i.aop = select <16 x i1> %i.anm, <16 x float> %i.aol, <16 x float> zeroinitializer ; 2 uses
  %i.aoq = load ptr, ptr %i.bq, align 8, !tbaa !89
  %i.aor = load i32, ptr %i.cd, align 8, !tbaa !105
  %i.aos = sext i32 %i.ajt to i64
  %i.aot = getelementptr inbounds [4 x i8], ptr %i.aoq, i64 %i.aos
  %15 = load i32, ptr %i.ca, align 8, !tbaa !99
  %16 = load i32, ptr %i.ce, align 4, !tbaa !106
  %i.aou = load <2 x i32>, ptr %i.aot, align 4, !tbaa !90 ; 2 uses
  %i.aov = insertelement <2 x i32> poison, i32 %i.aor, i64 0
  %i.aow = shufflevector <2 x i32> %i.aou, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.aox = shufflevector <2 x i32> %i.aou, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aoy = shufflevector <2 x i32> %i.aov, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.aoz = ashr <4 x i32> %i.aox, %i.aoy
  %i.apa = shufflevector <4 x i32> %i.aoz, <4 x i32> %i.aow, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %17 = insertelement <4 x i32> poison, i32 %16, i64 0
  %i.apb = shufflevector <4 x i32> %17, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.apc = and <4 x i32> %i.apa, %i.apb
  %18 = insertelement <4 x i32> poison, i32 %15, i64 0
  %19 = shufflevector <4 x i32> %18, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.apd = mul nsw <4 x i32> %i.apc, %19          ; 4 uses
  %i.ape = load ptr, ptr %i.bw, align 8, !tbaa !95 ; 2 uses
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !96 ; 4 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %i.ape, i64 8
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !96 ; 4 uses
  %i.api = shufflevector <16 x float> %i.amo, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.apj = shufflevector <16 x float> %i.amo, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.apk = extractelement <4 x i32> %i.apd, i64 0
  %i.apl = sext i32 %i.apk to i64                 ; 8 uses
  %i.apm = getelementptr inbounds [4 x i8], ptr %i.apf, i64 %i.apl ; 2 uses
  %i.apn = getelementptr inbounds [4 x i8], ptr %i.aph, i64 %i.apl ; 2 uses
  %i.apo = load <8 x float>, ptr %i.apm, align 32, !tbaa !29
  %i.app = fadd <8 x float> %i.api, %i.apo
  store <8 x float> %i.app, ptr %i.apm, align 32, !tbaa !29
  %i.apq = load <8 x float>, ptr %i.apn, align 32, !tbaa !29
  %i.apr = fadd <8 x float> %i.apq, %i.apj
  store <8 x float> %i.apr, ptr %i.apn, align 32, !tbaa !29
  %i.aps = extractelement <4 x i32> %i.apd, i64 1
  %i.apt = sext i32 %i.aps to i64                 ; 8 uses
  %i.apu = getelementptr inbounds [4 x i8], ptr %i.apf, i64 %i.apt
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 32 ; 2 uses
  %i.apw = getelementptr inbounds [4 x i8], ptr %i.aph, i64 %i.apt
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 32 ; 2 uses
  %i.apy = load <8 x float>, ptr %i.apv, align 32, !tbaa !29
  %i.apz = fadd <8 x float> %i.api, %i.apy
  store <8 x float> %i.apz, ptr %i.apv, align 32, !tbaa !29
  %i.aqa = load <8 x float>, ptr %i.apx, align 32, !tbaa !29
  %i.aqb = fadd <8 x float> %i.aqa, %i.apj
  store <8 x float> %i.aqb, ptr %i.apx, align 32, !tbaa !29
  %i.aqc = extractelement <4 x i32> %i.apd, i64 2
  %i.aqd = sext i32 %i.aqc to i64                 ; 8 uses
  %i.aqe = getelementptr inbounds [4 x i8], ptr %i.apf, i64 %i.aqd
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 64 ; 2 uses
  %i.aqg = getelementptr inbounds [4 x i8], ptr %i.aph, i64 %i.aqd
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 64 ; 2 uses
  %i.aqi = load <8 x float>, ptr %i.aqf, align 32, !tbaa !29
  %i.aqj = fadd <8 x float> %i.api, %i.aqi
  store <8 x float> %i.aqj, ptr %i.aqf, align 32, !tbaa !29
  %i.aqk = load <8 x float>, ptr %i.aqh, align 32, !tbaa !29
  %i.aql = fadd <8 x float> %i.aqk, %i.apj
  store <8 x float> %i.aql, ptr %i.aqh, align 32, !tbaa !29
  %i.aqm = extractelement <4 x i32> %i.apd, i64 3
  %i.aqn = sext i32 %i.aqm to i64                 ; 8 uses
  %i.aqo = getelementptr inbounds [4 x i8], ptr %i.apf, i64 %i.aqn
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 96 ; 2 uses
  %i.aqq = getelementptr inbounds [4 x i8], ptr %i.aph, i64 %i.aqn
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 96 ; 2 uses
  %i.aqs = load <8 x float>, ptr %i.aqp, align 32, !tbaa !29
  %i.aqt = fadd <8 x float> %i.api, %i.aqs
  store <8 x float> %i.aqt, ptr %i.aqp, align 32, !tbaa !29
  %i.aqu = load <8 x float>, ptr %i.aqr, align 32, !tbaa !29
  %i.aqv = fadd <8 x float> %i.aqu, %i.apj
  store <8 x float> %i.aqv, ptr %i.aqr, align 32, !tbaa !29
  %i.aqw = load ptr, ptr %i.bw, align 8, !tbaa !95 ; 2 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 16
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !96 ; 4 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqw, i64 24
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !96 ; 4 uses
  %i.arb = shufflevector <16 x float> %i.amp, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.arc = shufflevector <16 x float> %i.amp, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ard = getelementptr inbounds [4 x i8], ptr %i.aqy, i64 %i.apl ; 2 uses
  %i.are = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.apl ; 2 uses
  %i.arf = load <8 x float>, ptr %i.ard, align 32, !tbaa !29
  %i.arg = fadd <8 x float> %i.arb, %i.arf
  store <8 x float> %i.arg, ptr %i.ard, align 32, !tbaa !29
  %i.arh = load <8 x float>, ptr %i.are, align 32, !tbaa !29
  %i.ari = fadd <8 x float> %i.arh, %i.arc
  store <8 x float> %i.ari, ptr %i.are, align 32, !tbaa !29
  %i.arj = getelementptr inbounds [4 x i8], ptr %i.aqy, i64 %i.apt
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 32 ; 2 uses
  %i.arl = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.apt
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 32 ; 2 uses
  %i.arn = load <8 x float>, ptr %i.ark, align 32, !tbaa !29
  %i.aro = fadd <8 x float> %i.arb, %i.arn
  store <8 x float> %i.aro, ptr %i.ark, align 32, !tbaa !29
  %i.arp = load <8 x float>, ptr %i.arm, align 32, !tbaa !29
  %i.arq = fadd <8 x float> %i.arp, %i.arc
  store <8 x float> %i.arq, ptr %i.arm, align 32, !tbaa !29
  %i.arr = getelementptr inbounds [4 x i8], ptr %i.aqy, i64 %i.aqd
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 64 ; 2 uses
  %i.art = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.aqd
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 64 ; 2 uses
  %i.arv = load <8 x float>, ptr %i.ars, align 32, !tbaa !29
  %i.arw = fadd <8 x float> %i.arb, %i.arv
  store <8 x float> %i.arw, ptr %i.ars, align 32, !tbaa !29
  %i.arx = load <8 x float>, ptr %i.aru, align 32, !tbaa !29
  %i.ary = fadd <8 x float> %i.arx, %i.arc
  store <8 x float> %i.ary, ptr %i.aru, align 32, !tbaa !29
  %i.arz = getelementptr inbounds [4 x i8], ptr %i.aqy, i64 %i.aqn
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 96 ; 2 uses
  %i.asb = getelementptr inbounds [4 x i8], ptr %i.ara, i64 %i.aqn
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asb, i64 96 ; 2 uses
  %i.asd = load <8 x float>, ptr %i.asa, align 32, !tbaa !29
  %i.ase = fadd <8 x float> %i.arb, %i.asd
  store <8 x float> %i.ase, ptr %i.asa, align 32, !tbaa !29
  %i.asf = load <8 x float>, ptr %i.asc, align 32, !tbaa !29
  %i.asg = fadd <8 x float> %i.asf, %i.arc
  store <8 x float> %i.asg, ptr %i.asc, align 32, !tbaa !29
  %i.ash = load ptr, ptr %i.by, align 8, !tbaa !95 ; 2 uses
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !96 ; 4 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ash, i64 8
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !96 ; 4 uses
  %i.asl = shufflevector <16 x float> %i.aoo, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.asm = shufflevector <16 x float> %i.aoo, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.asn = getelementptr inbounds [4 x i8], ptr %i.asi, i64 %i.apl ; 2 uses
  %i.aso = getelementptr inbounds [4 x i8], ptr %i.ask, i64 %i.apl ; 2 uses
  %i.asp = load <8 x float>, ptr %i.asn, align 32, !tbaa !29
  %i.asq = fadd <8 x float> %i.asl, %i.asp
  store <8 x float> %i.asq, ptr %i.asn, align 32, !tbaa !29
  %i.asr = load <8 x float>, ptr %i.aso, align 32, !tbaa !29
  %i.ass = fadd <8 x float> %i.asr, %i.asm
  store <8 x float> %i.ass, ptr %i.aso, align 32, !tbaa !29
  %i.ast = getelementptr inbounds [4 x i8], ptr %i.asi, i64 %i.apt
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 32 ; 2 uses
  %i.asv = getelementptr inbounds [4 x i8], ptr %i.ask, i64 %i.apt
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 32 ; 2 uses
  %i.asx = load <8 x float>, ptr %i.asu, align 32, !tbaa !29
  %i.asy = fadd <8 x float> %i.asl, %i.asx
  store <8 x float> %i.asy, ptr %i.asu, align 32, !tbaa !29
  %i.asz = load <8 x float>, ptr %i.asw, align 32, !tbaa !29
  %i.ata = fadd <8 x float> %i.asz, %i.asm
  store <8 x float> %i.ata, ptr %i.asw, align 32, !tbaa !29
  %i.atb = getelementptr inbounds [4 x i8], ptr %i.asi, i64 %i.aqd
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 64 ; 2 uses
  %i.atd = getelementptr inbounds [4 x i8], ptr %i.ask, i64 %i.aqd
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 64 ; 2 uses
  %i.atf = load <8 x float>, ptr %i.atc, align 32, !tbaa !29
  %i.atg = fadd <8 x float> %i.asl, %i.atf
  store <8 x float> %i.atg, ptr %i.atc, align 32, !tbaa !29
  %i.ath = load <8 x float>, ptr %i.ate, align 32, !tbaa !29
  %i.ati = fadd <8 x float> %i.ath, %i.asm
  store <8 x float> %i.ati, ptr %i.ate, align 32, !tbaa !29
  %i.atj = getelementptr inbounds [4 x i8], ptr %i.asi, i64 %i.aqn
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 96 ; 2 uses
  %i.atl = getelementptr inbounds [4 x i8], ptr %i.ask, i64 %i.aqn
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 96 ; 2 uses
  %i.atn = load <8 x float>, ptr %i.atk, align 32, !tbaa !29
  %i.ato = fadd <8 x float> %i.asl, %i.atn
  store <8 x float> %i.ato, ptr %i.atk, align 32, !tbaa !29
  %i.atp = load <8 x float>, ptr %i.atm, align 32, !tbaa !29
  %i.atq = fadd <8 x float> %i.atp, %i.asm
  store <8 x float> %i.atq, ptr %i.atm, align 32, !tbaa !29
  %i.atr = load ptr, ptr %i.by, align 8, !tbaa !95 ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atr, i64 16
  %i.att = load ptr, ptr %i.ats, align 8, !tbaa !96 ; 4 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atr, i64 24
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !96 ; 4 uses
  %i.atw = shufflevector <16 x float> %i.aop, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.atx = shufflevector <16 x float> %i.aop, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aty = getelementptr inbounds [4 x i8], ptr %i.att, i64 %i.apl ; 2 uses
  %i.atz = getelementptr inbounds [4 x i8], ptr %i.atv, i64 %i.apl ; 2 uses
  %i.aua = load <8 x float>, ptr %i.aty, align 32, !tbaa !29
  %i.aub = fadd <8 x float> %i.atw, %i.aua
  store <8 x float> %i.aub, ptr %i.aty, align 32, !tbaa !29
  %i.auc = load <8 x float>, ptr %i.atz, align 32, !tbaa !29
  %i.aud = fadd <8 x float> %i.auc, %i.atx
  store <8 x float> %i.aud, ptr %i.atz, align 32, !tbaa !29
  %i.aue = getelementptr inbounds [4 x i8], ptr %i.att, i64 %i.apt
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 32 ; 2 uses
  %i.aug = getelementptr inbounds [4 x i8], ptr %i.atv, i64 %i.apt
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 32 ; 2 uses
  %i.aui = load <8 x float>, ptr %i.auf, align 32, !tbaa !29
  %i.auj = fadd <8 x float> %i.atw, %i.aui
  store <8 x float> %i.auj, ptr %i.auf, align 32, !tbaa !29
  %i.auk = load <8 x float>, ptr %i.auh, align 32, !tbaa !29
  %i.aul = fadd <8 x float> %i.auk, %i.atx
  store <8 x float> %i.aul, ptr %i.auh, align 32, !tbaa !29
  %i.aum = getelementptr inbounds [4 x i8], ptr %i.att, i64 %i.aqd
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 64 ; 2 uses
  %i.auo = getelementptr inbounds [4 x i8], ptr %i.atv, i64 %i.aqd
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auo, i64 64 ; 2 uses
  %i.auq = load <8 x float>, ptr %i.aun, align 32, !tbaa !29
  %i.aur = fadd <8 x float> %i.atw, %i.auq
  store <8 x float> %i.aur, ptr %i.aun, align 32, !tbaa !29
  %i.aus = load <8 x float>, ptr %i.aup, align 32, !tbaa !29
  %i.aut = fadd <8 x float> %i.aus, %i.atx
  store <8 x float> %i.aut, ptr %i.aup, align 32, !tbaa !29
  %i.auu = getelementptr inbounds [4 x i8], ptr %i.att, i64 %i.aqn
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 96 ; 2 uses
  %i.auw = getelementptr inbounds [4 x i8], ptr %i.atv, i64 %i.aqn
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 96 ; 2 uses
  %i.auy = load <8 x float>, ptr %i.auv, align 32, !tbaa !29
  %i.auz = fadd <8 x float> %i.atw, %i.auy
  store <8 x float> %i.auz, ptr %i.auv, align 32, !tbaa !29
  %i.ava = load <8 x float>, ptr %i.aux, align 32, !tbaa !29
  %i.avb = fadd <8 x float> %i.ava, %i.atx
  store <8 x float> %i.avb, ptr %i.aux, align 32, !tbaa !29
  %i.avc = fadd <16 x float> %i.ame, %i.aom
  %i.avd = fmul <16 x float> %i.ali, %i.avc       ; 3 uses
  %i.ave = fadd <16 x float> %i.amf, %i.aon
  %i.avf = fmul <16 x float> %i.alj, %i.ave       ; 3 uses
  %i.avg = fmul <16 x float> %i.aiz, %i.avd       ; 2 uses
  %i.avh = fmul <16 x float> %i.aja, %i.avf       ; 2 uses
  %i.avi = fmul <16 x float> %i.ajb, %i.avd       ; 2 uses
  %i.avj = fmul <16 x float> %i.ajc, %i.avf       ; 2 uses
  %i.avk = fmul <16 x float> %i.ajd, %i.avd       ; 2 uses
  %i.avl = fmul <16 x float> %i.aje, %i.avf       ; 2 uses
  %i.avm = fadd <16 x float> %.sroa.03853.24406, %i.avg ; 2 uses
  %i.avn = fadd <16 x float> %.sroa.163860.24407, %i.avh ; 2 uses
  %i.avo = fadd <16 x float> %.sroa.03835.24404, %i.avi ; 2 uses
  %i.avp = fadd <16 x float> %.sroa.163842.24405, %i.avj ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4359.preheader
  %i.avz = fadd <8 x float> %i.avx, %i.avy
  %i.awa = fsub <8 x float> %i.avw, %i.avz
  store <8 x float> %i.awa, ptr %i.avs, align 32, !tbaa !29
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avs, i64 32 ; 2 uses
  %i.awc = load <8 x float>, ptr %i.awb, align 32, !tbaa !29
  %i.awd = shufflevector <16 x float> %i.avu, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.awe = shufflevector <16 x float> %i.avu, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awf = fadd <8 x float> %i.awd, %i.awe
  %i.awg = fsub <8 x float> %i.awc, %i.awf
  store <8 x float> %i.awg, ptr %i.awb, align 32, !tbaa !29
  %i.awh = getelementptr inbounds nuw i8, ptr %i.avs, i64 64 ; 2 uses
  %i.awi = load <8 x float>, ptr %i.awh, align 32, !tbaa !29
  %i.awj = shufflevector <16 x float> %i.avv, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.awk = shufflevector <16 x float> %i.avv, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awl = fadd <8 x float> %i.awj, %i.awk
  %i.awm = fsub <8 x float> %i.awi, %i.awl
  store <8 x float> %i.awm, ptr %i.awh, align 32, !tbaa !29
  %indvars.iv.next4525 = add nsw i64 %indvars.iv4524, 1 ; 2 uses
  %exitcond4528.not = icmp eq i64 %indvars.iv.next4525, %wide.trip.count4527
  br i1 %exitcond4528.not, label %.loopexit, label %bb.j, !llvm.loop !19

.critedge3.loopexit:                              ; preds = %bb.j
  %i.awn = trunc nsw i64 %indvars.iv4524 to i32
  br label %.critedge3

.critedge3:                                       ; preds = %.critedge3.loopexit, %.preheader4354
  %.sroa.03818.2.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4354 ], [ %.sroa.03818.24402, %.critedge3.loopexit ] ; 2 uses
  %.sroa.16.2.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4354 ], [ %.sroa.16.24403, %.critedge3.loopexit ] ; 2 uses
  %.sroa.03835.2.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4354 ], [ %.sroa.03835.24404, %.critedge3.loopexit ] ; 2 uses
  %.sroa.163842.2.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4354 ], [ %.sroa.163842.24405, %.critedge3.loopexit ] ; 2 uses
  %.sroa.03853.2.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4354 ], [ %.sroa.03853.24406, %.critedge3.loopexit ] ; 2 uses
  %.sroa.163860.2.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4354 ], [ %.sroa.163860.24407, %.critedge3.loopexit ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.cl, %.preheader4354 ], [ %i.awn, %.critedge3.loopexit ] ; 2 uses
  %i.awo = icmp slt i32 %.2.lcssa, %i.cn
  br i1 %i.awo, label %.lr.ph4434, label %.loopexit

.lr.ph4434:                                       ; preds = %.critedge3
  %i.awp = sext i32 %.2.lcssa to i64
  %wide.trip.count4538 = sext i32 %i.cn to i64
  br label %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit

_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit: ; preds = %.lr.ph4434, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit
  %indvars.iv4535 = phi i64 [ %i.awp, %.lr.ph4434 ], [ %indvars.iv.next4536, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ] ; 2 uses
  %.sroa.163860.34432 = phi <16 x float> [ %.sroa.163860.2.lcssa, %.lr.ph4434 ], [ %i.biy, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ]
  %.sroa.03853.34431 = phi <16 x float> [ %.sroa.03853.2.lcssa, %.lr.ph4434 ], [ %i.bix, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ]
  %.sroa.163842.34430 = phi <16 x float> [ %.sroa.163842.2.lcssa, %.lr.ph4434 ], [ %i.bja, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ]
  %.sroa.03835.34429 = phi <16 x float> [ %.sroa.03835.2.lcssa, %.lr.ph4434 ], [ %i.biz, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ]
  %.sroa.16.34428 = phi <16 x float> [ %.sroa.16.2.lcssa, %.lr.ph4434 ], [ %i.bjc, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ]
  %.sroa.03818.34427 = phi <16 x float> [ %.sroa.03818.2.lcssa, %.lr.ph4434 ], [ %i.bjb, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ]
  %i.awq = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv4535
  %i.awr = load i32, ptr %i.awq, align 4, !tbaa !98 ; 4 uses
  %i.aws = shl nsw i32 %i.awr, 3
  %i.awt = mul nsw i32 %i.awr, 24
  %i.awu = sext i32 %i.awt to i64                 ; 2 uses
  %i.awv = getelementptr [4 x i8], ptr %i.bg, i64 %i.awu ; 3 uses
  %.val7084808 = load <8 x float>, ptr %i.awv, align 32, !tbaa !29
  %i.aww = shufflevector <8 x float> %.val7084808, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.awx = getelementptr i8, ptr %i.awv, i64 32
  %.val7094809 = load <8 x float>, ptr %i.awx, align 32, !tbaa !29
  %i.awy = shufflevector <8 x float> %.val7094809, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.awz = getelementptr i8, ptr %i.awv, i64 64
  %.val7104810 = load <8 x float>, ptr %i.awz, align 32, !tbaa !29
  %i.axa = shufflevector <8 x float> %.val7104810, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.axb = fsub <16 x float> %i.if, %i.aww        ; 3 uses
  %i.axc = fsub <16 x float> %i.il, %i.aww        ; 3 uses
  %i.axd = fsub <16 x float> %i.is, %i.awy        ; 3 uses
  %i.axe = fsub <16 x float> %i.iy, %i.awy        ; 3 uses
  %i.axf = fsub <16 x float> %i.jf, %i.axa        ; 3 uses
  %i.axg = fsub <16 x float> %i.jl, %i.axa        ; 3 uses
  %i.axh = fmul <16 x float> %i.axb, %i.axb
  %i.axi = fmul <16 x float> %i.axd, %i.axd
  %i.axj = fadd <16 x float> %i.axh, %i.axi
  %i.axk = fmul <16 x float> %i.axf, %i.axf
  %i.axl = fadd <16 x float> %i.axj, %i.axk       ; 2 uses
  %i.axm = fmul <16 x float> %i.axc, %i.axc
  %i.axn = fmul <16 x float> %i.axe, %i.axe
  %i.axo = fadd <16 x float> %i.axm, %i.axn
  %i.axp = fmul <16 x float> %i.axg, %i.axg
  %i.axq = fadd <16 x float> %i.axo, %i.axp       ; 2 uses
  %i.axr = fcmp olt <16 x float> %i.axl, %i.ax    ; 2 uses
  %i.axs = fcmp olt <16 x float> %i.axq, %i.ax    ; 2 uses
  %i.axt = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.axl, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.axu = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.axq, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.axv = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.axt, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.axw = fmul <16 x float> %i.axt, %i.axv
  %i.axx = fmul <16 x float> %i.axv, splat (float -5.000000e-01)
  %i.axy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.axw, <16 x float> %i.axv, <16 x float> splat (float -3.000000e+00))
  %i.axz = fmul <16 x float> %i.axx, %i.axy
  %i.aya = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.axu, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.ayb = fmul <16 x float> %i.axu, %i.aya
  %i.ayc = fmul <16 x float> %i.aya, splat (float -5.000000e-01)
  %i.ayd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ayb, <16 x float> %i.aya, <16 x float> splat (float -3.000000e+00))
  %i.aye = fmul <16 x float> %i.ayc, %i.ayd
  %i.ayf = sext i32 %i.aws to i64
  %i.ayg = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.ayf
  %.val7114811 = load <8 x float>, ptr %i.ayg, align 32, !tbaa !29
  %i.ayh = select <16 x i1> %i.axr, <16 x float> %i.axz, <16 x float> zeroinitializer ; 6 uses
  %i.ayi = select <16 x i1> %i.axs, <16 x float> %i.aye, <16 x float> zeroinitializer ; 6 uses
  %i.ayj = fmul <16 x float> %i.axt, %i.ayh       ; 2 uses
  %i.ayk = fmul <16 x float> %i.axu, %i.ayi       ; 2 uses
  %i.ayl = fmul <16 x float> %i.z, %i.ayj         ; 2 uses
  %i.aym = fmul <16 x float> %i.z, %i.ayk         ; 2 uses
  %i.ayn = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.ayl, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.ayo = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.aym, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.ayp = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ae, <16 x i32> %i.ayn, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.ayq = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cf, <16 x i32> %i.ayn, <16 x i1> splat (i1 true), i32 4)
  %i.ayr = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ag, <16 x i32> %i.ayn, <16 x i1> splat (i1 true), i32 4)
  %i.ays = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ae, <16 x i32> %i.ayo, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.ayt = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cf, <16 x i32> %i.ayo, <16 x i1> splat (i1 true), i32 4)
  %i.ayu = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ag, <16 x i32> %i.ayo, <16 x i1> splat (i1 true), i32 4)
  %i.ayv = shufflevector <8 x float> %.val7114811, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ayw = fmul <16 x float> %.sroa.03969.0, %i.ayv ; 2 uses
  %i.ayx = fmul <16 x float> %.sroa.73973.0, %i.ayv ; 2 uses
  %i.ayy = fmul <16 x float> %i.ayh, %i.ayh
  %i.ayz = fmul <16 x float> %i.ayi, %i.ayi
  %i.aza = sitofp <16 x i32> %i.ayn to <16 x float>
  %i.azb = sitofp <16 x i32> %i.ayo to <16 x float>
  %i.azc = fsub <16 x float> %i.ayl, %i.aza       ; 2 uses
  %i.azd = fsub <16 x float> %i.aym, %i.azb       ; 2 uses
  %i.aze = fsub <16 x float> %i.ayq, %i.ayp
  %i.azf = fsub <16 x float> %i.ayt, %i.ays
  %i.azg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azc, <16 x float> %i.aze, <16 x float> %i.ayp) ; 2 uses
  %i.azh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azd, <16 x float> %i.azf, <16 x float> %i.ays) ; 2 uses
  %i.azi = fneg <16 x float> %i.azg
  %i.azj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azi, <16 x float> %i.ayj, <16 x float> %i.ayh)
  %i.azk = fneg <16 x float> %i.azh
  %i.azl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azk, <16 x float> %i.ayk, <16 x float> %i.ayi)
  %i.azm = fmul <16 x float> %i.ac, %i.azc
  %i.azn = fadd <16 x float> %i.ayp, %i.azg
  %i.azo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azm, <16 x float> %i.azn, <16 x float> %i.ayr)
  %i.azp = fmul <16 x float> %i.ac, %i.azd
  %i.azq = fadd <16 x float> %i.ays, %i.azh
  %i.azr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.azp, <16 x float> %i.azq, <16 x float> %i.ayu)
  %i.azs = fmul <16 x float> %i.ayw, %i.azj
  %i.azt = fmul <16 x float> %i.ayx, %i.azl
  %i.azu = fadd <16 x float> %i.am, %i.azo
  %i.azv = fadd <16 x float> %i.am, %i.azr
  %i.azw = fsub <16 x float> %i.ayh, %i.azu
  %i.azx = fmul <16 x float> %i.ayw, %i.azw
  %i.azy = fsub <16 x float> %i.ayi, %i.azv
  %i.azz = fmul <16 x float> %i.ayx, %i.azy
  %i.baa = select <16 x i1> %i.axr, <16 x float> %i.azx, <16 x float> zeroinitializer ; 2 uses
  %i.bab = select <16 x i1> %i.axs, <16 x float> %i.azz, <16 x float> zeroinitializer ; 2 uses
  %i.bac = fcmp olt <16 x float> %i.axt, %i.bc    ; 3 uses
  %i.bad = fcmp olt <16 x float> %i.axu, %i.bc    ; 3 uses
  %i.bae = shl nsw i32 %i.awr, 4
  %i.baf = sext i32 %i.bae to i64
  %i.bag = getelementptr [4 x i8], ptr %i.f, i64 %i.baf ; 2 uses
  %.val7124812 = load <8 x float>, ptr %i.bag, align 32, !tbaa !29
  %i.bah = shufflevector <8 x float> %.val7124812, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bai = getelementptr i8, ptr %i.bag, i64 32
  %.val7134813 = load <8 x float>, ptr %i.bai, align 32, !tbaa !29
  %i.baj = shufflevector <8 x float> %.val7134813, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bak = fadd <16 x float> %i.kf, %i.bah        ; 3 uses
  %i.bal = fadd <16 x float> %i.ko, %i.bah        ; 3 uses
  %i.bam = fmul <16 x float> %i.kj, %i.baj        ; 2 uses
  %i.ban = fmul <16 x float> %i.kt, %i.baj        ; 2 uses
  %i.bao = fmul <16 x float> %i.ayh, %i.bak       ; 2 uses
  %i.bap = fmul <16 x float> %i.ayi, %i.bal       ; 2 uses
  %i.baq = fmul <16 x float> %i.bao, %i.bao       ; 3 uses
  %i.bar = fmul <16 x float> %i.bap, %i.bap       ; 3 uses
  %i.bas = fmul <16 x float> %i.baq, %i.baq
  %i.bat = fmul <16 x float> %i.baq, %i.bas
  %i.bau = fmul <16 x float> %i.bar, %i.bar
  %i.bav = fmul <16 x float> %i.bar, %i.bau
  %i.baw = select <16 x i1> %i.bac, <16 x float> %i.bat, <16 x float> zeroinitializer ; 2 uses
  %i.bax = select <16 x i1> %i.bad, <16 x float> %i.bav, <16 x float> zeroinitializer ; 2 uses
  %i.bay = fmul <16 x float> %i.bam, %i.baw       ; 3 uses
  %i.baz = fmul <16 x float> %i.ban, %i.bax       ; 3 uses
  %i.bba = fmul <16 x float> %i.baw, %i.bay       ; 2 uses
  %i.bbb = fmul <16 x float> %i.bax, %i.baz       ; 2 uses
  %i.bbc = fsub <16 x float> %i.bba, %i.bay
  %i.bbd = fsub <16 x float> %i.bbb, %i.baz
  %i.bbe = fmul <16 x float> %i.bak, %i.bak       ; 3 uses
  %i.bbf = fmul <16 x float> %i.bal, %i.bal       ; 3 uses
  %i.bbg = fmul <16 x float> %i.bbe, %i.bbe
  %i.bbh = fmul <16 x float> %i.bbe, %i.bbg       ; 2 uses
  %i.bbi = fmul <16 x float> %i.bbf, %i.bbf
  %i.bbj = fmul <16 x float> %i.bbf, %i.bbi       ; 2 uses
  %i.bbk = fmul <16 x float> %i.bam, %i.bbh       ; 2 uses
  %i.bbl = fmul <16 x float> %i.ban, %i.bbj       ; 2 uses
  %i.bbm = fmul <16 x float> %i.bbh, %i.bbk
  %i.bbn = fmul <16 x float> %i.bbj, %i.bbl
  %i.bbo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbk, <16 x float> %i.ap, <16 x float> %i.bay)
  %i.bbp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbl, <16 x float> %i.ap, <16 x float> %i.baz)
  %i.bbq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbm, <16 x float> %i.as, <16 x float> %i.bba)
  %i.bbr = fmul <16 x float> %i.bbo, splat (float f0xBE2AAAAB)
  %i.bbs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbq, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bbr)
  %i.bbt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbn, <16 x float> %i.as, <16 x float> %i.bbb)
  %i.bbu = fmul <16 x float> %i.bbp, splat (float f0xBE2AAAAB)
  %i.bbv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bbt, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bbu)
  %i.bbw = select <16 x i1> %i.bac, <16 x float> %i.bbc, <16 x float> zeroinitializer
  %i.bbx = select <16 x i1> %i.bad, <16 x float> %i.bbd, <16 x float> zeroinitializer
  %i.bby = select <16 x i1> %i.bac, <16 x float> %i.bbs, <16 x float> zeroinitializer ; 2 uses
  %i.bbz = select <16 x i1> %i.bad, <16 x float> %i.bbv, <16 x float> zeroinitializer ; 2 uses
  %i.bca = load ptr, ptr %i.bq, align 8, !tbaa !89
  %i.bcb = shl nsw i32 %i.awr, 1
  %i.bcc = load i32, ptr %i.cd, align 8, !tbaa !105
  %i.bcd = sext i32 %i.bcb to i64
  %i.bce = getelementptr inbounds [4 x i8], ptr %i.bca, i64 %i.bcd
  %20 = load i32, ptr %i.ca, align 8, !tbaa !99
  %21 = load i32, ptr %i.ce, align 4, !tbaa !106
  %i.bcf = load <2 x i32>, ptr %i.bce, align 4, !tbaa !90 ; 2 uses
  %i.bcg = insertelement <2 x i32> poison, i32 %i.bcc, i64 0
  %i.bch = shufflevector <2 x i32> %i.bcf, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bci = shufflevector <2 x i32> %i.bcf, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bcj = shufflevector <2 x i32> %i.bcg, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.bck = ashr <4 x i32> %i.bci, %i.bcj
  %i.bcl = shufflevector <4 x i32> %i.bck, <4 x i32> %i.bch, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %22 = insertelement <4 x i32> poison, i32 %21, i64 0
  %i.bcm = shufflevector <4 x i32> %22, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bcn = and <4 x i32> %i.bcl, %i.bcm
  %23 = insertelement <4 x i32> poison, i32 %20, i64 0
  %24 = shufflevector <4 x i32> %23, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bco = mul nsw <4 x i32> %i.bcn, %24          ; 4 uses
  %i.bcp = load ptr, ptr %i.bw, align 8, !tbaa !95 ; 2 uses
  %i.bcq = load ptr, ptr %i.bcp, align 8, !tbaa !96 ; 4 uses
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcp, i64 8
  %i.bcs = load ptr, ptr %i.bcr, align 8, !tbaa !96 ; 4 uses
  %i.bct = shufflevector <16 x float> %i.baa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bcu = shufflevector <16 x float> %i.baa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bcv = extractelement <4 x i32> %i.bco, i64 0
  %i.bcw = sext i32 %i.bcv to i64                 ; 8 uses
  %i.bcx = getelementptr inbounds [4 x i8], ptr %i.bcq, i64 %i.bcw ; 2 uses
  %i.bcy = getelementptr inbounds [4 x i8], ptr %i.bcs, i64 %i.bcw ; 2 uses
  %i.bcz = load <8 x float>, ptr %i.bcx, align 32, !tbaa !29
  %i.bda = fadd <8 x float> %i.bct, %i.bcz
  store <8 x float> %i.bda, ptr %i.bcx, align 32, !tbaa !29
  %i.bdb = load <8 x float>, ptr %i.bcy, align 32, !tbaa !29
  %i.bdc = fadd <8 x float> %i.bdb, %i.bcu
  store <8 x float> %i.bdc, ptr %i.bcy, align 32, !tbaa !29
  %i.bdd = extractelement <4 x i32> %i.bco, i64 1
  %i.bde = sext i32 %i.bdd to i64                 ; 8 uses
  %i.bdf = getelementptr inbounds [4 x i8], ptr %i.bcq, i64 %i.bde
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bdf, i64 32 ; 2 uses
  %i.bdh = getelementptr inbounds [4 x i8], ptr %i.bcs, i64 %i.bde
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdh, i64 32 ; 2 uses
  %i.bdj = load <8 x float>, ptr %i.bdg, align 32, !tbaa !29
  %i.bdk = fadd <8 x float> %i.bct, %i.bdj
  store <8 x float> %i.bdk, ptr %i.bdg, align 32, !tbaa !29
  %i.bdl = load <8 x float>, ptr %i.bdi, align 32, !tbaa !29
  %i.bdm = fadd <8 x float> %i.bdl, %i.bcu
  store <8 x float> %i.bdm, ptr %i.bdi, align 32, !tbaa !29
  %i.bdn = extractelement <4 x i32> %i.bco, i64 2
  %i.bdo = sext i32 %i.bdn to i64                 ; 8 uses
  %i.bdp = getelementptr inbounds [4 x i8], ptr %i.bcq, i64 %i.bdo
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 64 ; 2 uses
  %i.bdr = getelementptr inbounds [4 x i8], ptr %i.bcs, i64 %i.bdo
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 64 ; 2 uses
  %i.bdt = load <8 x float>, ptr %i.bdq, align 32, !tbaa !29
  %i.bdu = fadd <8 x float> %i.bct, %i.bdt
  store <8 x float> %i.bdu, ptr %i.bdq, align 32, !tbaa !29
  %i.bdv = load <8 x float>, ptr %i.bds, align 32, !tbaa !29
  %i.bdw = fadd <8 x float> %i.bdv, %i.bcu
  store <8 x float> %i.bdw, ptr %i.bds, align 32, !tbaa !29
  %i.bdx = extractelement <4 x i32> %i.bco, i64 3
  %i.bdy = sext i32 %i.bdx to i64                 ; 8 uses
  %i.bdz = getelementptr inbounds [4 x i8], ptr %i.bcq, i64 %i.bdy
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 96 ; 2 uses
  %i.beb = getelementptr inbounds [4 x i8], ptr %i.bcs, i64 %i.bdy
  %i.bec = getelementptr inbounds nuw i8, ptr %i.beb, i64 96 ; 2 uses
  %i.bed = load <8 x float>, ptr %i.bea, align 32, !tbaa !29
  %i.bee = fadd <8 x float> %i.bct, %i.bed
  store <8 x float> %i.bee, ptr %i.bea, align 32, !tbaa !29
  %i.bef = load <8 x float>, ptr %i.bec, align 32, !tbaa !29
  %i.beg = fadd <8 x float> %i.bef, %i.bcu
  store <8 x float> %i.beg, ptr %i.bec, align 32, !tbaa !29
  %i.beh = load ptr, ptr %i.bw, align 8, !tbaa !95 ; 2 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 16
  %i.bej = load ptr, ptr %i.bei, align 8, !tbaa !96 ; 4 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %i.beh, i64 24
  %i.bel = load ptr, ptr %i.bek, align 8, !tbaa !96 ; 4 uses
  %i.bem = shufflevector <16 x float> %i.bab, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ben = shufflevector <16 x float> %i.bab, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.beo = getelementptr inbounds [4 x i8], ptr %i.bej, i64 %i.bcw ; 2 uses
  %i.bep = getelementptr inbounds [4 x i8], ptr %i.bel, i64 %i.bcw ; 2 uses
  %i.beq = load <8 x float>, ptr %i.beo, align 32, !tbaa !29
  %i.ber = fadd <8 x float> %i.bem, %i.beq
  store <8 x float> %i.ber, ptr %i.beo, align 32, !tbaa !29
  %i.bes = load <8 x float>, ptr %i.bep, align 32, !tbaa !29
  %i.bet = fadd <8 x float> %i.bes, %i.ben
  store <8 x float> %i.bet, ptr %i.bep, align 32, !tbaa !29
  %i.beu = getelementptr inbounds [4 x i8], ptr %i.bej, i64 %i.bde
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 32 ; 2 uses
  %i.bew = getelementptr inbounds [4 x i8], ptr %i.bel, i64 %i.bde
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bew, i64 32 ; 2 uses
  %i.bey = load <8 x float>, ptr %i.bev, align 32, !tbaa !29
  %i.bez = fadd <8 x float> %i.bem, %i.bey
  store <8 x float> %i.bez, ptr %i.bev, align 32, !tbaa !29
  %i.bfa = load <8 x float>, ptr %i.bex, align 32, !tbaa !29
  %i.bfb = fadd <8 x float> %i.bfa, %i.ben
  store <8 x float> %i.bfb, ptr %i.bex, align 32, !tbaa !29
  %i.bfc = getelementptr inbounds [4 x i8], ptr %i.bej, i64 %i.bdo
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 64 ; 2 uses
  %i.bfe = getelementptr inbounds [4 x i8], ptr %i.bel, i64 %i.bdo
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 64 ; 2 uses
  %i.bfg = load <8 x float>, ptr %i.bfd, align 32, !tbaa !29
  %i.bfh = fadd <8 x float> %i.bem, %i.bfg
  store <8 x float> %i.bfh, ptr %i.bfd, align 32, !tbaa !29
  %i.bfi = load <8 x float>, ptr %i.bff, align 32, !tbaa !29
  %i.bfj = fadd <8 x float> %i.bfi, %i.ben
  store <8 x float> %i.bfj, ptr %i.bff, align 32, !tbaa !29
  %i.bfk = getelementptr inbounds [4 x i8], ptr %i.bej, i64 %i.bdy
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfk, i64 96 ; 2 uses
  %i.bfm = getelementptr inbounds [4 x i8], ptr %i.bel, i64 %i.bdy
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfm, i64 96 ; 2 uses
  %i.bfo = load <8 x float>, ptr %i.bfl, align 32, !tbaa !29
  %i.bfp = fadd <8 x float> %i.bem, %i.bfo
  store <8 x float> %i.bfp, ptr %i.bfl, align 32, !tbaa !29
  %i.bfq = load <8 x float>, ptr %i.bfn, align 32, !tbaa !29
  %i.bfr = fadd <8 x float> %i.bfq, %i.ben
  store <8 x float> %i.bfr, ptr %i.bfn, align 32, !tbaa !29
  %i.bfs = load ptr, ptr %i.by, align 8, !tbaa !95 ; 2 uses
  %i.bft = load ptr, ptr %i.bfs, align 8, !tbaa !96 ; 4 uses
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfs, i64 8
  %i.bfv = load ptr, ptr %i.bfu, align 8, !tbaa !96 ; 4 uses
  %i.bfw = shufflevector <16 x float> %i.bby, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bfx = shufflevector <16 x float> %i.bby, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bfy = getelementptr inbounds [4 x i8], ptr %i.bft, i64 %i.bcw ; 2 uses
  %i.bfz = getelementptr inbounds [4 x i8], ptr %i.bfv, i64 %i.bcw ; 2 uses
  %i.bga = load <8 x float>, ptr %i.bfy, align 32, !tbaa !29
  %i.bgb = fadd <8 x float> %i.bfw, %i.bga
  store <8 x float> %i.bgb, ptr %i.bfy, align 32, !tbaa !29
  %i.bgc = load <8 x float>, ptr %i.bfz, align 32, !tbaa !29
  %i.bgd = fadd <8 x float> %i.bgc, %i.bfx
  store <8 x float> %i.bgd, ptr %i.bfz, align 32, !tbaa !29
  %i.bge = getelementptr inbounds [4 x i8], ptr %i.bft, i64 %i.bde
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bge, i64 32 ; 2 uses
  %i.bgg = getelementptr inbounds [4 x i8], ptr %i.bfv, i64 %i.bde
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgg, i64 32 ; 2 uses
  %i.bgi = load <8 x float>, ptr %i.bgf, align 32, !tbaa !29
  %i.bgj = fadd <8 x float> %i.bfw, %i.bgi
  store <8 x float> %i.bgj, ptr %i.bgf, align 32, !tbaa !29
  %i.bgk = load <8 x float>, ptr %i.bgh, align 32, !tbaa !29
  %i.bgl = fadd <8 x float> %i.bgk, %i.bfx
  store <8 x float> %i.bgl, ptr %i.bgh, align 32, !tbaa !29
  %i.bgm = getelementptr inbounds [4 x i8], ptr %i.bft, i64 %i.bdo
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 64 ; 2 uses
  %i.bgo = getelementptr inbounds [4 x i8], ptr %i.bfv, i64 %i.bdo
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgo, i64 64 ; 2 uses
  %i.bgq = load <8 x float>, ptr %i.bgn, align 32, !tbaa !29
  %i.bgr = fadd <8 x float> %i.bfw, %i.bgq
  store <8 x float> %i.bgr, ptr %i.bgn, align 32, !tbaa !29
  %i.bgs = load <8 x float>, ptr %i.bgp, align 32, !tbaa !29
  %i.bgt = fadd <8 x float> %i.bgs, %i.bfx
  store <8 x float> %i.bgt, ptr %i.bgp, align 32, !tbaa !29
  %i.bgu = getelementptr inbounds [4 x i8], ptr %i.bft, i64 %i.bdy
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgu, i64 96 ; 2 uses
  %i.bgw = getelementptr inbounds [4 x i8], ptr %i.bfv, i64 %i.bdy
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgw, i64 96 ; 2 uses
  %i.bgy = load <8 x float>, ptr %i.bgv, align 32, !tbaa !29
  %i.bgz = fadd <8 x float> %i.bfw, %i.bgy
  store <8 x float> %i.bgz, ptr %i.bgv, align 32, !tbaa !29
  %i.bha = load <8 x float>, ptr %i.bgx, align 32, !tbaa !29
  %i.bhb = fadd <8 x float> %i.bha, %i.bfx
  store <8 x float> %i.bhb, ptr %i.bgx, align 32, !tbaa !29
  %i.bhc = load ptr, ptr %i.by, align 8, !tbaa !95 ; 2 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bhc, i64 16
  %i.bhe = load ptr, ptr %i.bhd, align 8, !tbaa !96 ; 4 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bhc, i64 24
  %i.bhg = load ptr, ptr %i.bhf, align 8, !tbaa !96 ; 4 uses
  %i.bhh = shufflevector <16 x float> %i.bbz, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bhi = shufflevector <16 x float> %i.bbz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bhj = getelementptr inbounds [4 x i8], ptr %i.bhe, i64 %i.bcw ; 2 uses
  %i.bhk = getelementptr inbounds [4 x i8], ptr %i.bhg, i64 %i.bcw ; 2 uses
  %i.bhl = load <8 x float>, ptr %i.bhj, align 32, !tbaa !29
  %i.bhm = fadd <8 x float> %i.bhh, %i.bhl
  store <8 x float> %i.bhm, ptr %i.bhj, align 32, !tbaa !29
  %i.bhn = load <8 x float>, ptr %i.bhk, align 32, !tbaa !29
  %i.bho = fadd <8 x float> %i.bhn, %i.bhi
  store <8 x float> %i.bho, ptr %i.bhk, align 32, !tbaa !29
  %i.bhp = getelementptr inbounds [4 x i8], ptr %i.bhe, i64 %i.bde
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 32 ; 2 uses
  %i.bhr = getelementptr inbounds [4 x i8], ptr %i.bhg, i64 %i.bde
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 32 ; 2 uses
  %i.bht = load <8 x float>, ptr %i.bhq, align 32, !tbaa !29
  %i.bhu = fadd <8 x float> %i.bhh, %i.bht
  store <8 x float> %i.bhu, ptr %i.bhq, align 32, !tbaa !29
  %i.bhv = load <8 x float>, ptr %i.bhs, align 32, !tbaa !29
  %i.bhw = fadd <8 x float> %i.bhv, %i.bhi
  store <8 x float> %i.bhw, ptr %i.bhs, align 32, !tbaa !29
  %i.bhx = getelementptr inbounds [4 x i8], ptr %i.bhe, i64 %i.bdo
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhx, i64 64 ; 2 uses
  %i.bhz = getelementptr inbounds [4 x i8], ptr %i.bhg, i64 %i.bdo
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhz, i64 64 ; 2 uses
  %i.bib = load <8 x float>, ptr %i.bhy, align 32, !tbaa !29
  %i.bic = fadd <8 x float> %i.bhh, %i.bib
  store <8 x float> %i.bic, ptr %i.bhy, align 32, !tbaa !29
  %i.bid = load <8 x float>, ptr %i.bia, align 32, !tbaa !29
  %i.bie = fadd <8 x float> %i.bid, %i.bhi
  store <8 x float> %i.bie, ptr %i.bia, align 32, !tbaa !29
  %i.bif = getelementptr inbounds [4 x i8], ptr %i.bhe, i64 %i.bdy
  %i.big = getelementptr inbounds nuw i8, ptr %i.bif, i64 96 ; 2 uses
  %i.bih = getelementptr inbounds [4 x i8], ptr %i.bhg, i64 %i.bdy
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bih, i64 96 ; 2 uses
  %i.bij = load <8 x float>, ptr %i.big, align 32, !tbaa !29
  %i.bik = fadd <8 x float> %i.bhh, %i.bij
  store <8 x float> %i.bik, ptr %i.big, align 32, !tbaa !29
  %i.bil = load <8 x float>, ptr %i.bii, align 32, !tbaa !29
  %i.bim = fadd <8 x float> %i.bil, %i.bhi
  store <8 x float> %i.bim, ptr %i.bii, align 32, !tbaa !29
  %i.bin = fadd <16 x float> %i.azs, %i.bbw
  %i.bio = fmul <16 x float> %i.ayy, %i.bin       ; 3 uses
  %i.bip = fadd <16 x float> %i.azt, %i.bbx
  %i.biq = fmul <16 x float> %i.ayz, %i.bip       ; 3 uses
  %i.bir = fmul <16 x float> %i.axb, %i.bio       ; 2 uses
  %i.bis = fmul <16 x float> %i.axc, %i.biq       ; 2 uses
  %i.bit = fmul <16 x float> %i.axd, %i.bio       ; 2 uses
  %i.biu = fmul <16 x float> %i.axe, %i.biq       ; 2 uses
  %i.biv = fmul <16 x float> %i.axf, %i.bio       ; 2 uses
  %i.biw = fmul <16 x float> %i.axg, %i.biq       ; 2 uses
  %i.bix = fadd <16 x float> %.sroa.03853.34431, %i.bir ; 2 uses
  %i.biy = fadd <16 x float> %.sroa.163860.34432, %i.bis ; 2 uses
  %i.biz = fadd <16 x float> %.sroa.03835.34429, %i.bit ; 2 uses
  %i.bja = fadd <16 x float> %.sroa.163842.34430, %i.biu ; 2 uses
  %i.bjb = fadd <16 x float> %.sroa.03818.34427, %i.biv ; 2 uses
  %i.bjc = fadd <16 x float> %.sroa.16.34428, %i.biw ; 2 uses
  %i.bjd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.awu ; 4 uses
  %i.bje = fadd <16 x float> %i.bir, %i.bis       ; 2 uses
  %i.bjf = fadd <16 x float> %i.bit, %i.biu       ; 2 uses
  %i.bjg = fadd <16 x float> %i.biv, %i.biw       ; 2 uses
  %i.bjh = load <8 x float>, ptr %i.bjd, align 32, !tbaa !29
  %i.bji = shufflevector <16 x float> %i.bje, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bjj = shufflevector <16 x float> %i.bje, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bjk = fadd <8 x float> %i.bji, %i.bjj
  %i.bjl = fsub <8 x float> %i.bjh, %i.bjk
  store <8 x float> %i.bjl, ptr %i.bjd, align 32, !tbaa !29
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjd, i64 32 ; 2 uses
  %i.bjn = load <8 x float>, ptr %i.bjm, align 32, !tbaa !29
  %i.bjo = shufflevector <16 x float> %i.bjf, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bjp = shufflevector <16 x float> %i.bjf, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bjq = fadd <8 x float> %i.bjo, %i.bjp
  %i.bjr = fsub <8 x float> %i.bjn, %i.bjq
  store <8 x float> %i.bjr, ptr %i.bjm, align 32, !tbaa !29
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjd, i64 64 ; 2 uses
  %i.bjt = load <8 x float>, ptr %i.bjs, align 32, !tbaa !29
  %i.bju = shufflevector <16 x float> %i.bjg, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bjv = shufflevector <16 x float> %i.bjg, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bjw = fadd <8 x float> %i.bju, %i.bjv
  %i.bjx = fsub <8 x float> %i.bjt, %i.bjw
  store <8 x float> %i.bjx, ptr %i.bjs, align 32, !tbaa !29
  %indvars.iv.next4536 = add nsw i64 %indvars.iv4535, 1 ; 2 uses
  %exitcond4539.not = icmp eq i64 %indvars.iv.next4536, %wide.trip.count4538
  br i1 %exitcond4539.not, label %.loopexit, label %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit, !llvm.loop !20

bb.n:                                             ; preds = %.lr.ph, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %indvars.iv = phi i64 [ %i.aia, %.lr.ph ], [ %indvars.iv.next, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 4 uses
  %.sroa.163860.44369 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.bsf, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03853.44368 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.bse, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.163842.44367 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.bsh, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03835.44366 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.bsg, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.16.44365 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.bsj, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03818.44364 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.bsi, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %i.bjy = load ptr, ptr %i.bh, align 8, !tbaa !71
  %i.bjz = getelementptr inbounds nuw [8 x i8], ptr %i.bjy, i64 %indvars.iv
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjz, i64 4
  %i.bkb = load i32, ptr %i.bka, align 4, !tbaa !90
  %.not = icmp eq i32 %i.bkb, -1
  br i1 %.not, label %.critedge5.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit: ; preds = %bb.n
  %i.bkc = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv ; 2 uses
  %i.bkd = load i32, ptr %i.bkc, align 4, !tbaa !98 ; 3 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkc, i64 4
  %i.bkf = load i32, ptr %i.bke, align 4, !tbaa !104
  %i.bkg = insertelement <16 x i32> poison, i32 %i.bkf, i64 0
  %i.bkh = shufflevector <16 x i32> %i.bkg, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.bki = and <16 x i32> %.sroa.04583.0.copyload, %i.bkh
  %i.bkj = icmp ne <16 x i32> %i.bki, zeroinitializer ; 2 uses
  %i.bkk = and <16 x i32> %.sroa.6.0.copyload, %i.bkh
  %i.bkl = icmp ne <16 x i32> %i.bkk, zeroinitializer ; 2 uses
  %i.bkm = mul nsw i32 %i.bkd, 24
  %i.bkn = sext i32 %i.bkm to i64                 ; 2 uses
  %i.bko = getelementptr [4 x i8], ptr %i.bg, i64 %i.bkn ; 3 uses
  %.val7144792 = load <8 x float>, ptr %i.bko, align 32, !tbaa !29
  %i.bkp = shufflevector <8 x float> %.val7144792, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bkq = getelementptr i8, ptr %i.bko, i64 32
  %.val7154793 = load <8 x float>, ptr %i.bkq, align 32, !tbaa !29
  %i.bkr = shufflevector <8 x float> %.val7154793, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bks = getelementptr i8, ptr %i.bko, i64 64
  %.val7164794 = load <8 x float>, ptr %i.bks, align 32, !tbaa !29
  %i.bkt = shufflevector <8 x float> %.val7164794, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bku = fsub <16 x float> %i.if, %i.bkp        ; 3 uses
  %i.bkv = fsub <16 x float> %i.il, %i.bkp        ; 3 uses
  %i.bkw = fsub <16 x float> %i.is, %i.bkr        ; 3 uses
  %i.bkx = fsub <16 x float> %i.iy, %i.bkr        ; 3 uses
  %i.bky = fsub <16 x float> %i.jf, %i.bkt        ; 3 uses
  %i.bkz = fsub <16 x float> %i.jl, %i.bkt        ; 3 uses
  %i.bla = fmul <16 x float> %i.bku, %i.bku
  %i.blb = fmul <16 x float> %i.bkw, %i.bkw
  %i.blc = fadd <16 x float> %i.bla, %i.blb
  %i.bld = fmul <16 x float> %i.bky, %i.bky
  %i.ble = fadd <16 x float> %i.blc, %i.bld       ; 2 uses
  %i.blf = fmul <16 x float> %i.bkv, %i.bkv
  %i.blg = fmul <16 x float> %i.bkx, %i.bkx
  %i.blh = fadd <16 x float> %i.blf, %i.blg
  %i.bli = fmul <16 x float> %i.bkz, %i.bkz
  %i.blj = fadd <16 x float> %i.blh, %i.bli       ; 2 uses
  %i.blk = fcmp olt <16 x float> %i.ble, %i.ax
  %i.bll = fcmp olt <16 x float> %i.blj, %i.ax
  %i.blm = and <16 x i1> %i.bkj, %i.blk
  %i.bln = and <16 x i1> %i.bkl, %i.bll
  %i.blo = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ble, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.blp = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.blj, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.blq = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.blo, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.blr = fmul <16 x float> %i.blo, %i.blq
  %i.bls = fmul <16 x float> %i.blq, splat (float -5.000000e-01)
  %i.blt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.blr, <16 x float> %i.blq, <16 x float> splat (float -3.000000e+00))
  %i.blu = fmul <16 x float> %i.bls, %i.blt
  %i.blv = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.blp, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.blw = fmul <16 x float> %i.blp, %i.blv
  %i.blx = fmul <16 x float> %i.blv, splat (float -5.000000e-01)
  %i.bly = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.blw, <16 x float> %i.blv, <16 x float> splat (float -3.000000e+00))
  %i.blz = fmul <16 x float> %i.blx, %i.bly
  %i.bma = select <16 x i1> %i.blm, <16 x float> %i.blu, <16 x float> zeroinitializer ; 3 uses
  %i.bmb = select <16 x i1> %i.bln, <16 x float> %i.blz, <16 x float> zeroinitializer ; 3 uses
  %i.bmc = fmul <16 x float> %i.bma, %i.bma
  %i.bmd = fmul <16 x float> %i.bmb, %i.bmb
  %i.bme = fcmp olt <16 x float> %i.blo, %i.bc    ; 3 uses
  %i.bmf = fcmp olt <16 x float> %i.blp, %i.bc    ; 3 uses
  %i.bmg = shl nsw i32 %i.bkd, 4
  %i.bmh = sext i32 %i.bmg to i64
  %i.bmi = getelementptr [4 x i8], ptr %i.f, i64 %i.bmh ; 2 uses
  %.val7174795 = load <8 x float>, ptr %i.bmi, align 32, !tbaa !29
  %i.bmj = shufflevector <8 x float> %.val7174795, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bmk = getelementptr i8, ptr %i.bmi, i64 32
  %.val7184796 = load <8 x float>, ptr %i.bmk, align 32, !tbaa !29
  %i.bml = shufflevector <8 x float> %.val7184796, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bmm = fadd <16 x float> %i.kf, %i.bmj        ; 3 uses
  %i.bmn = fadd <16 x float> %i.ko, %i.bmj        ; 3 uses
  %i.bmo = fmul <16 x float> %i.kj, %i.bml        ; 2 uses
  %i.bmp = fmul <16 x float> %i.kt, %i.bml        ; 2 uses
  %i.bmq = fmul <16 x float> %i.bmm, %i.bma       ; 2 uses
  %i.bmr = fmul <16 x float> %i.bmn, %i.bmb       ; 2 uses
  %i.bms = fmul <16 x float> %i.bmq, %i.bmq       ; 3 uses
  %i.bmt = fmul <16 x float> %i.bmr, %i.bmr       ; 3 uses
  %i.bmu = fmul <16 x float> %i.bms, %i.bms
  %i.bmv = fmul <16 x float> %i.bms, %i.bmu
  %i.bmw = fmul <16 x float> %i.bmt, %i.bmt
  %i.bmx = fmul <16 x float> %i.bmt, %i.bmw
  %i.bmy = select <16 x i1> %i.bme, <16 x float> %i.bmv, <16 x float> zeroinitializer ; 2 uses
  %i.bmz = select <16 x i1> %i.bmf, <16 x float> %i.bmx, <16 x float> zeroinitializer ; 2 uses
  %i.bna = fmul <16 x float> %i.bmo, %i.bmy       ; 3 uses
  %i.bnb = fmul <16 x float> %i.bmp, %i.bmz       ; 3 uses
  %i.bnc = fmul <16 x float> %i.bmy, %i.bna       ; 2 uses
  %i.bnd = fmul <16 x float> %i.bmz, %i.bnb       ; 2 uses
  %i.bne = fsub <16 x float> %i.bnc, %i.bna
  %i.bnf = fsub <16 x float> %i.bnd, %i.bnb
  %i.bng = fmul <16 x float> %i.bmm, %i.bmm       ; 3 uses
  %i.bnh = fmul <16 x float> %i.bmn, %i.bmn       ; 3 uses
  %i.bni = fmul <16 x float> %i.bng, %i.bng
  %i.bnj = fmul <16 x float> %i.bng, %i.bni       ; 2 uses
  %i.bnk = fmul <16 x float> %i.bnh, %i.bnh
  %i.bnl = fmul <16 x float> %i.bnh, %i.bnk       ; 2 uses
  %i.bnm = fmul <16 x float> %i.bmo, %i.bnj       ; 2 uses
  %i.bnn = fmul <16 x float> %i.bmp, %i.bnl       ; 2 uses
  %i.bno = fmul <16 x float> %i.bnj, %i.bnm
  %i.bnp = fmul <16 x float> %i.bnl, %i.bnn
  %i.bnq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnm, <16 x float> %i.ap, <16 x float> %i.bna)
  %i.bnr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnn, <16 x float> %i.ap, <16 x float> %i.bnb)
  %i.bns = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bno, <16 x float> %i.as, <16 x float> %i.bnc)
  %i.bnt = fmul <16 x float> %i.bnq, splat (float f0xBE2AAAAB)
  %i.bnu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bns, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bnt)
  %i.bnv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnp, <16 x float> %i.as, <16 x float> %i.bnd)
  %i.bnw = fmul <16 x float> %i.bnr, splat (float f0xBE2AAAAB)
  %i.bnx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bnv, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bnw)
  %i.bny = select <16 x i1> %i.bme, <16 x float> %i.bne, <16 x float> zeroinitializer
  %i.bnz = select <16 x i1> %i.bmf, <16 x float> %i.bnf, <16 x float> zeroinitializer
  %i.boa = select <16 x i1> %i.bme, <16 x i1> %i.bkj, <16 x i1> zeroinitializer
  %i.bob = select <16 x i1> %i.boa, <16 x float> %i.bnu, <16 x float> zeroinitializer ; 2 uses
  %i.boc = select <16 x i1> %i.bmf, <16 x i1> %i.bkl, <16 x i1> zeroinitializer
  %i.bod = select <16 x i1> %i.boc, <16 x float> %i.bnx, <16 x float> zeroinitializer ; 2 uses
  %i.boe = load ptr, ptr %i.bq, align 8, !tbaa !89
  %i.bof = shl nsw i32 %i.bkd, 1
  %i.bog = load i32, ptr %i.cd, align 8, !tbaa !105
  %i.boh = sext i32 %i.bof to i64
  %i.boi = getelementptr inbounds [4 x i8], ptr %i.boe, i64 %i.boh
  %25 = load i32, ptr %i.ca, align 8, !tbaa !99
  %26 = load i32, ptr %i.ce, align 4, !tbaa !106
  %i.boj = load <2 x i32>, ptr %i.boi, align 4, !tbaa !90 ; 2 uses
  %i.bok = insertelement <2 x i32> poison, i32 %i.bog, i64 0
  %i.bol = shufflevector <2 x i32> %i.boj, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bom = shufflevector <2 x i32> %i.boj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bon = shufflevector <2 x i32> %i.bok, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.boo = ashr <4 x i32> %i.bom, %i.bon
  %i.bop = shufflevector <4 x i32> %i.boo, <4 x i32> %i.bol, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %27 = insertelement <4 x i32> poison, i32 %26, i64 0
  %i.boq = shufflevector <4 x i32> %27, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bor = and <4 x i32> %i.bop, %i.boq
  %28 = insertelement <4 x i32> poison, i32 %25, i64 0
  %29 = shufflevector <4 x i32> %28, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bos = mul nsw <4 x i32> %i.bor, %29          ; 4 uses
  %i.bot = load ptr, ptr %i.by, align 8, !tbaa !95 ; 2 uses
  %i.bou = load ptr, ptr %i.bot, align 8, !tbaa !96 ; 4 uses
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bot, i64 8
  %i.bow = load ptr, ptr %i.bov, align 8, !tbaa !96 ; 4 uses
  %i.box = shufflevector <16 x float> %i.bob, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.boy = shufflevector <16 x float> %i.bob, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.boz = extractelement <4 x i32> %i.bos, i64 0
  %i.bpa = sext i32 %i.boz to i64                 ; 4 uses
  %i.bpb = getelementptr inbounds [4 x i8], ptr %i.bou, i64 %i.bpa ; 2 uses
  %i.bpc = getelementptr inbounds [4 x i8], ptr %i.bow, i64 %i.bpa ; 2 uses
  %i.bpd = load <8 x float>, ptr %i.bpb, align 32, !tbaa !29
  %i.bpe = fadd <8 x float> %i.bpd, %i.box
  store <8 x float> %i.bpe, ptr %i.bpb, align 32, !tbaa !29
  %i.bpf = load <8 x float>, ptr %i.bpc, align 32, !tbaa !29
  %i.bpg = fadd <8 x float> %i.bpf, %i.boy
  store <8 x float> %i.bpg, ptr %i.bpc, align 32, !tbaa !29
  %i.bph = extractelement <4 x i32> %i.bos, i64 1
  %i.bpi = sext i32 %i.bph to i64                 ; 4 uses
  %i.bpj = getelementptr inbounds [4 x i8], ptr %i.bou, i64 %i.bpi
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bpj, i64 32 ; 2 uses
  %i.bpl = getelementptr inbounds [4 x i8], ptr %i.bow, i64 %i.bpi
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpl, i64 32 ; 2 uses
  %i.bpn = load <8 x float>, ptr %i.bpk, align 32, !tbaa !29
  %i.bpo = fadd <8 x float> %i.box, %i.bpn
  store <8 x float> %i.bpo, ptr %i.bpk, align 32, !tbaa !29
  %i.bpp = load <8 x float>, ptr %i.bpm, align 32, !tbaa !29
  %i.bpq = fadd <8 x float> %i.bpp, %i.boy
  store <8 x float> %i.bpq, ptr %i.bpm, align 32, !tbaa !29
  %i.bpr = extractelement <4 x i32> %i.bos, i64 2
  %i.bps = sext i32 %i.bpr to i64                 ; 4 uses
  %i.bpt = getelementptr inbounds [4 x i8], ptr %i.bou, i64 %i.bps
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpt, i64 64 ; 2 uses
  %i.bpv = getelementptr inbounds [4 x i8], ptr %i.bow, i64 %i.bps
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bpv, i64 64 ; 2 uses
  %i.bpx = load <8 x float>, ptr %i.bpu, align 32, !tbaa !29
  %i.bpy = fadd <8 x float> %i.box, %i.bpx
  store <8 x float> %i.bpy, ptr %i.bpu, align 32, !tbaa !29
  %i.bpz = load <8 x float>, ptr %i.bpw, align 32, !tbaa !29
  %i.bqa = fadd <8 x float> %i.bpz, %i.boy
  store <8 x float> %i.bqa, ptr %i.bpw, align 32, !tbaa !29
  %i.bqb = extractelement <4 x i32> %i.bos, i64 3
  %i.bqc = sext i32 %i.bqb to i64                 ; 4 uses
  %i.bqd = getelementptr inbounds [4 x i8], ptr %i.bou, i64 %i.bqc
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bqd, i64 96 ; 2 uses
  %i.bqf = getelementptr inbounds [4 x i8], ptr %i.bow, i64 %i.bqc
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqf, i64 96 ; 2 uses
  %i.bqh = load <8 x float>, ptr %i.bqe, align 32, !tbaa !29
  %i.bqi = fadd <8 x float> %i.box, %i.bqh
  store <8 x float> %i.bqi, ptr %i.bqe, align 32, !tbaa !29
  %i.bqj = load <8 x float>, ptr %i.bqg, align 32, !tbaa !29
  %i.bqk = fadd <8 x float> %i.bqj, %i.boy
  store <8 x float> %i.bqk, ptr %i.bqg, align 32, !tbaa !29
  %i.bql = load ptr, ptr %i.by, align 8, !tbaa !95 ; 2 uses
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 16
  %i.bqn = load ptr, ptr %i.bqm, align 8, !tbaa !96 ; 4 uses
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bql, i64 24
  %i.bqp = load ptr, ptr %i.bqo, align 8, !tbaa !96 ; 4 uses
  %i.bqq = shufflevector <16 x float> %i.bod, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bqr = shufflevector <16 x float> %i.bod, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bqs = getelementptr inbounds [4 x i8], ptr %i.bqn, i64 %i.bpa ; 2 uses
  %i.bqt = getelementptr inbounds [4 x i8], ptr %i.bqp, i64 %i.bpa ; 2 uses
  %i.bqu = load <8 x float>, ptr %i.bqs, align 32, !tbaa !29
  %i.bqv = fadd <8 x float> %i.bqq, %i.bqu
  store <8 x float> %i.bqv, ptr %i.bqs, align 32, !tbaa !29
  %i.bqw = load <8 x float>, ptr %i.bqt, align 32, !tbaa !29
  %i.bqx = fadd <8 x float> %i.bqw, %i.bqr
  store <8 x float> %i.bqx, ptr %i.bqt, align 32, !tbaa !29
  %i.bqy = getelementptr inbounds [4 x i8], ptr %i.bqn, i64 %i.bpi
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bqy, i64 32 ; 2 uses
  %i.bra = getelementptr inbounds [4 x i8], ptr %i.bqp, i64 %i.bpi
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bra, i64 32 ; 2 uses
  %i.brc = load <8 x float>, ptr %i.bqz, align 32, !tbaa !29
  %i.brd = fadd <8 x float> %i.bqq, %i.brc
  store <8 x float> %i.brd, ptr %i.bqz, align 32, !tbaa !29
  %i.bre = load <8 x float>, ptr %i.brb, align 32, !tbaa !29
  %i.brf = fadd <8 x float> %i.bre, %i.bqr
  store <8 x float> %i.brf, ptr %i.brb, align 32, !tbaa !29
  %i.brg = getelementptr inbounds [4 x i8], ptr %i.bqn, i64 %i.bps
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brg, i64 64 ; 2 uses
  %i.bri = getelementptr inbounds [4 x i8], ptr %i.bqp, i64 %i.bps
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bri, i64 64 ; 2 uses
  %i.brk = load <8 x float>, ptr %i.brh, align 32, !tbaa !29
  %i.brl = fadd <8 x float> %i.bqq, %i.brk
  store <8 x float> %i.brl, ptr %i.brh, align 32, !tbaa !29
  %i.brm = load <8 x float>, ptr %i.brj, align 32, !tbaa !29
  %i.brn = fadd <8 x float> %i.brm, %i.bqr
  store <8 x float> %i.brn, ptr %i.brj, align 32, !tbaa !29
  %i.bro = getelementptr inbounds [4 x i8], ptr %i.bqn, i64 %i.bqc
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bro, i64 96 ; 2 uses
  %i.brq = getelementptr inbounds [4 x i8], ptr %i.bqp, i64 %i.bqc
  %i.brr = getelementptr inbounds nuw i8, ptr %i.brq, i64 96 ; 2 uses
  %i.brs = load <8 x float>, ptr %i.brp, align 32, !tbaa !29
  %i.brt = fadd <8 x float> %i.bqq, %i.brs
  store <8 x float> %i.brt, ptr %i.brp, align 32, !tbaa !29
  %i.bru = load <8 x float>, ptr %i.brr, align 32, !tbaa !29
  %i.brv = fadd <8 x float> %i.bru, %i.bqr
  store <8 x float> %i.brv, ptr %i.brr, align 32, !tbaa !29
  %i.brw = fmul <16 x float> %i.bmc, %i.bny       ; 3 uses
  %i.brx = fmul <16 x float> %i.bmd, %i.bnz       ; 3 uses
  %i.bry = fmul <16 x float> %i.bku, %i.brw       ; 2 uses
  %i.brz = fmul <16 x float> %i.bkv, %i.brx       ; 2 uses
  %i.bsa = fmul <16 x float> %i.bkw, %i.brw       ; 2 uses
  %i.bsb = fmul <16 x float> %i.bkx, %i.brx       ; 2 uses
  %i.bsc = fmul <16 x float> %i.bky, %i.brw       ; 2 uses
  %i.bsd = fmul <16 x float> %i.bkz, %i.brx       ; 2 uses
  %i.bse = fadd <16 x float> %.sroa.03853.44368, %i.bry ; 2 uses
  %i.bsf = fadd <16 x float> %.sroa.163860.44369, %i.brz ; 2 uses
  %i.bsg = fadd <16 x float> %.sroa.03835.44366, %i.bsa ; 2 uses
  %i.bsh = fadd <16 x float> %.sroa.163842.44367, %i.bsb ; 2 uses
  %i.bsi = fadd <16 x float> %.sroa.03818.44364, %i.bsc ; 2 uses
  %i.bsj = fadd <16 x float> %.sroa.16.44365, %i.bsd ; 2 uses
  %i.bsk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bkn ; 4 uses
  %i.bsl = fadd <16 x float> %i.bry, %i.brz       ; 2 uses
  %i.bsm = fadd <16 x float> %i.bsa, %i.bsb       ; 2 uses
  %i.bsn = fadd <16 x float> %i.bsc, %i.bsd       ; 2 uses
  %i.bso = load <8 x float>, ptr %i.bsk, align 32, !tbaa !29
  %i.bsp = shufflevector <16 x float> %i.bsl, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bsq = shufflevector <16 x float> %i.bsl, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bsr = fadd <8 x float> %i.bsp, %i.bsq
  %i.bss = fsub <8 x float> %i.bso, %i.bsr
  store <8 x float> %i.bss, ptr %i.bsk, align 32, !tbaa !29
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bsk, i64 32 ; 2 uses
  %i.bsu = load <8 x float>, ptr %i.bst, align 32, !tbaa !29
  %i.bsv = shufflevector <16 x float> %i.bsm, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bsw = shufflevector <16 x float> %i.bsm, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bsx = fadd <8 x float> %i.bsv, %i.bsw
  %i.bsy = fsub <8 x float> %i.bsu, %i.bsx
  store <8 x float> %i.bsy, ptr %i.bst, align 32, !tbaa !29
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsk, i64 64 ; 2 uses
  %i.bta = load <8 x float>, ptr %i.bsz, align 32, !tbaa !29
  %i.btb = shufflevector <16 x float> %i.bsn, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.btc = shufflevector <16 x float> %i.bsn, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.btd = fadd <8 x float> %i.btb, %i.btc
  %i.bte = fsub <8 x float> %i.bta, %i.btd
  store <8 x float> %i.bte, ptr %i.bsz, align 32, !tbaa !29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.n, !llvm.loop !21

.critedge5.loopexit:                              ; preds = %bb.n
  %i.btf = trunc nsw i64 %indvars.iv to i32
  br label %.critedge5

.critedge5:                                       ; preds = %.critedge5.loopexit, %.preheader4356
  %.sroa.03818.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4356 ], [ %.sroa.03818.44364, %.critedge5.loopexit ] ; 2 uses
  %.sroa.16.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4356 ], [ %.sroa.16.44365, %.critedge5.loopexit ] ; 2 uses
  %.sroa.03835.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4356 ], [ %.sroa.03835.44366, %.critedge5.loopexit ] ; 2 uses
  %.sroa.163842.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4356 ], [ %.sroa.163842.44367, %.critedge5.loopexit ] ; 2 uses
  %.sroa.03853.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4356 ], [ %.sroa.03853.44368, %.critedge5.loopexit ] ; 2 uses
  %.sroa.163860.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4356 ], [ %.sroa.163860.44369, %.critedge5.loopexit ] ; 2 uses
  %.4.lcssa = phi i32 [ %i.cl, %.preheader4356 ], [ %i.btf, %.critedge5.loopexit ] ; 2 uses
  %i.btg = icmp slt i32 %.4.lcssa, %i.cn
  br i1 %i.btg, label %.lr.ph4392, label %.loopexit

.lr.ph4392:                                       ; preds = %.critedge5
  %i.bth = sext i32 %.4.lcssa to i64
  %wide.trip.count4513 = sext i32 %i.cn to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph4392, %bb.o
  %indvars.iv4510 = phi i64 [ %i.bth, %.lr.ph4392 ], [ %indvars.iv.next4511, %bb.o ] ; 2 uses
  %.sroa.163860.54390 = phi <16 x float> [ %.sroa.163860.4.lcssa, %.lr.ph4392 ], [ %i.caz, %bb.o ]
  %.sroa.03853.54389 = phi <16 x float> [ %.sroa.03853.4.lcssa, %.lr.ph4392 ], [ %i.cay, %bb.o ]
  %.sroa.163842.54388 = phi <16 x float> [ %.sroa.163842.4.lcssa, %.lr.ph4392 ], [ %i.cbb, %bb.o ]
  %.sroa.03835.54387 = phi <16 x float> [ %.sroa.03835.4.lcssa, %.lr.ph4392 ], [ %i.cba, %bb.o ]
  %.sroa.16.54386 = phi <16 x float> [ %.sroa.16.4.lcssa, %.lr.ph4392 ], [ %i.cbd, %bb.o ]
  %.sroa.03818.54385 = phi <16 x float> [ %.sroa.03818.4.lcssa, %.lr.ph4392 ], [ %i.cbc, %bb.o ]
  %i.bti = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv4510
  %i.btj = load i32, ptr %i.bti, align 4, !tbaa !98 ; 3 uses
  %i.btk = mul nsw i32 %i.btj, 24
  %i.btl = sext i32 %i.btk to i64                 ; 2 uses
  %i.btm = getelementptr [4 x i8], ptr %i.bg, i64 %i.btl ; 3 uses
  %.val7194797 = load <8 x float>, ptr %i.btm, align 32, !tbaa !29
  %i.btn = shufflevector <8 x float> %.val7194797, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bto = getelementptr i8, ptr %i.btm, i64 32
  %.val7204798 = load <8 x float>, ptr %i.bto, align 32, !tbaa !29
  %i.btp = shufflevector <8 x float> %.val7204798, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.btq = getelementptr i8, ptr %i.btm, i64 64
  %.val7214799 = load <8 x float>, ptr %i.btq, align 32, !tbaa !29
  %i.btr = shufflevector <8 x float> %.val7214799, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bts = fsub <16 x float> %i.if, %i.btn        ; 3 uses
  %i.btt = fsub <16 x float> %i.il, %i.btn        ; 3 uses
  %i.btu = fsub <16 x float> %i.is, %i.btp        ; 3 uses
  %i.btv = fsub <16 x float> %i.iy, %i.btp        ; 3 uses
  %i.btw = fsub <16 x float> %i.jf, %i.btr        ; 3 uses
  %i.btx = fsub <16 x float> %i.jl, %i.btr        ; 3 uses
  %i.bty = fmul <16 x float> %i.bts, %i.bts
  %i.btz = fmul <16 x float> %i.btu, %i.btu
  %i.bua = fadd <16 x float> %i.bty, %i.btz
  %i.bub = fmul <16 x float> %i.btw, %i.btw
  %i.buc = fadd <16 x float> %i.bua, %i.bub       ; 2 uses
  %i.bud = fmul <16 x float> %i.btt, %i.btt
  %i.bue = fmul <16 x float> %i.btv, %i.btv
  %i.buf = fadd <16 x float> %i.bud, %i.bue
  %i.bug = fmul <16 x float> %i.btx, %i.btx
  %i.buh = fadd <16 x float> %i.buf, %i.bug       ; 2 uses
  %i.bui = fcmp olt <16 x float> %i.buc, %i.ax
  %i.buj = fcmp olt <16 x float> %i.buh, %i.ax
  %i.buk = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.buc, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.bul = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.buh, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.bum = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.buk, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bun = fmul <16 x float> %i.buk, %i.bum
  %i.buo = fmul <16 x float> %i.bum, splat (float -5.000000e-01)
  %i.bup = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bun, <16 x float> %i.bum, <16 x float> splat (float -3.000000e+00))
  %i.buq = fmul <16 x float> %i.buo, %i.bup
  %i.bur = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.bul, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bus = fmul <16 x float> %i.bul, %i.bur
  %i.but = fmul <16 x float> %i.bur, splat (float -5.000000e-01)
  %i.buu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bus, <16 x float> %i.bur, <16 x float> splat (float -3.000000e+00))
  %i.buv = fmul <16 x float> %i.but, %i.buu
  %i.buw = select <16 x i1> %i.bui, <16 x float> %i.buq, <16 x float> zeroinitializer ; 3 uses
  %i.bux = select <16 x i1> %i.buj, <16 x float> %i.buv, <16 x float> zeroinitializer ; 3 uses
  %i.buy = fmul <16 x float> %i.buw, %i.buw
  %i.buz = fmul <16 x float> %i.bux, %i.bux
  %i.bva = fcmp olt <16 x float> %i.buk, %i.bc    ; 3 uses
  %i.bvb = fcmp olt <16 x float> %i.bul, %i.bc    ; 3 uses
  %i.bvc = shl nsw i32 %i.btj, 4
  %i.bvd = sext i32 %i.bvc to i64
  %i.bve = getelementptr [4 x i8], ptr %i.f, i64 %i.bvd ; 2 uses
  %.val7224800 = load <8 x float>, ptr %i.bve, align 32, !tbaa !29
  %i.bvf = shufflevector <8 x float> %.val7224800, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bvg = getelementptr i8, ptr %i.bve, i64 32
  %.val7234801 = load <8 x float>, ptr %i.bvg, align 32, !tbaa !29
  %i.bvh = shufflevector <8 x float> %.val7234801, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bvi = fadd <16 x float> %i.kf, %i.bvf        ; 3 uses
  %i.bvj = fadd <16 x float> %i.ko, %i.bvf        ; 3 uses
  %i.bvk = fmul <16 x float> %i.kj, %i.bvh        ; 2 uses
  %i.bvl = fmul <16 x float> %i.kt, %i.bvh        ; 2 uses
  %i.bvm = fmul <16 x float> %i.buw, %i.bvi       ; 2 uses
  %i.bvn = fmul <16 x float> %i.bux, %i.bvj       ; 2 uses
  %i.bvo = fmul <16 x float> %i.bvm, %i.bvm       ; 3 uses
  %i.bvp = fmul <16 x float> %i.bvn, %i.bvn       ; 3 uses
  %i.bvq = fmul <16 x float> %i.bvo, %i.bvo
  %i.bvr = fmul <16 x float> %i.bvo, %i.bvq
  %i.bvs = fmul <16 x float> %i.bvp, %i.bvp
  %i.bvt = fmul <16 x float> %i.bvp, %i.bvs
  %i.bvu = select <16 x i1> %i.bva, <16 x float> %i.bvr, <16 x float> zeroinitializer ; 2 uses
  %i.bvv = select <16 x i1> %i.bvb, <16 x float> %i.bvt, <16 x float> zeroinitializer ; 2 uses
  %i.bvw = fmul <16 x float> %i.bvk, %i.bvu       ; 3 uses
  %i.bvx = fmul <16 x float> %i.bvl, %i.bvv       ; 3 uses
  %i.bvy = fmul <16 x float> %i.bvu, %i.bvw       ; 2 uses
  %i.bvz = fmul <16 x float> %i.bvv, %i.bvx       ; 2 uses
  %i.bwa = fsub <16 x float> %i.bvy, %i.bvw
  %i.bwb = fsub <16 x float> %i.bvz, %i.bvx
  %i.bwc = fmul <16 x float> %i.bvi, %i.bvi       ; 3 uses
  %i.bwd = fmul <16 x float> %i.bvj, %i.bvj       ; 3 uses
  %i.bwe = fmul <16 x float> %i.bwc, %i.bwc
  %i.bwf = fmul <16 x float> %i.bwc, %i.bwe       ; 2 uses
  %i.bwg = fmul <16 x float> %i.bwd, %i.bwd
  %i.bwh = fmul <16 x float> %i.bwd, %i.bwg       ; 2 uses
  %i.bwi = fmul <16 x float> %i.bvk, %i.bwf       ; 2 uses
  %i.bwj = fmul <16 x float> %i.bvl, %i.bwh       ; 2 uses
  %i.bwk = fmul <16 x float> %i.bwf, %i.bwi
  %i.bwl = fmul <16 x float> %i.bwh, %i.bwj
  %i.bwm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwi, <16 x float> %i.ap, <16 x float> %i.bvw)
  %i.bwn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwj, <16 x float> %i.ap, <16 x float> %i.bvx)
  %i.bwo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwk, <16 x float> %i.as, <16 x float> %i.bvy)
  %i.bwp = fmul <16 x float> %i.bwm, splat (float f0xBE2AAAAB)
  %i.bwq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwo, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bwp)
  %i.bwr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwl, <16 x float> %i.as, <16 x float> %i.bvz)
  %i.bws = fmul <16 x float> %i.bwn, splat (float f0xBE2AAAAB)
  %i.bwt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwr, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bws)
  %i.bwu = select <16 x i1> %i.bva, <16 x float> %i.bwa, <16 x float> zeroinitializer
  %i.bwv = select <16 x i1> %i.bvb, <16 x float> %i.bwb, <16 x float> zeroinitializer
  %i.bww = select <16 x i1> %i.bva, <16 x float> %i.bwq, <16 x float> zeroinitializer ; 2 uses
  %i.bwx = select <16 x i1> %i.bvb, <16 x float> %i.bwt, <16 x float> zeroinitializer ; 2 uses
  %i.bwy = load ptr, ptr %i.bq, align 8, !tbaa !89
  %i.bwz = shl nsw i32 %i.btj, 1
  %i.bxa = load i32, ptr %i.cd, align 8, !tbaa !105
  %i.bxb = sext i32 %i.bwz to i64
  %i.bxc = getelementptr inbounds [4 x i8], ptr %i.bwy, i64 %i.bxb
  %30 = load i32, ptr %i.ca, align 8, !tbaa !99
  %31 = load i32, ptr %i.ce, align 4, !tbaa !106
  %i.bxd = load <2 x i32>, ptr %i.bxc, align 4, !tbaa !90 ; 2 uses
  %i.bxe = insertelement <2 x i32> poison, i32 %i.bxa, i64 0
  %i.bxf = shufflevector <2 x i32> %i.bxd, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bxg = shufflevector <2 x i32> %i.bxd, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bxh = shufflevector <2 x i32> %i.bxe, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.bxi = ashr <4 x i32> %i.bxg, %i.bxh
  %i.bxj = shufflevector <4 x i32> %i.bxi, <4 x i32> %i.bxf, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %32 = insertelement <4 x i32> poison, i32 %31, i64 0
  %i.bxk = shufflevector <4 x i32> %32, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bxl = and <4 x i32> %i.bxj, %i.bxk
  %33 = insertelement <4 x i32> poison, i32 %30, i64 0
  %34 = shufflevector <4 x i32> %33, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bxm = mul nsw <4 x i32> %i.bxl, %34          ; 4 uses
  %i.bxn = load ptr, ptr %i.by, align 8, !tbaa !95 ; 2 uses
  %i.bxo = load ptr, ptr %i.bxn, align 8, !tbaa !96 ; 4 uses
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bxn, i64 8
  %i.bxq = load ptr, ptr %i.bxp, align 8, !tbaa !96 ; 4 uses
  %i.bxr = shufflevector <16 x float> %i.bww, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bxs = shufflevector <16 x float> %i.bww, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bxt = extractelement <4 x i32> %i.bxm, i64 0
  %i.bxu = sext i32 %i.bxt to i64                 ; 4 uses
  %i.bxv = getelementptr inbounds [4 x i8], ptr %i.bxo, i64 %i.bxu ; 2 uses
  %i.bxw = getelementptr inbounds [4 x i8], ptr %i.bxq, i64 %i.bxu ; 2 uses
  %i.bxx = load <8 x float>, ptr %i.bxv, align 32, !tbaa !29
  %i.bxy = fadd <8 x float> %i.bxr, %i.bxx
  store <8 x float> %i.bxy, ptr %i.bxv, align 32, !tbaa !29
  %i.bxz = load <8 x float>, ptr %i.bxw, align 32, !tbaa !29
  %i.bya = fadd <8 x float> %i.bxz, %i.bxs
  store <8 x float> %i.bya, ptr %i.bxw, align 32, !tbaa !29
  %i.byb = extractelement <4 x i32> %i.bxm, i64 1
  %i.byc = sext i32 %i.byb to i64                 ; 4 uses
  %i.byd = getelementptr inbounds [4 x i8], ptr %i.bxo, i64 %i.byc
  %i.bye = getelementptr inbounds nuw i8, ptr %i.byd, i64 32 ; 2 uses
  %i.byf = getelementptr inbounds [4 x i8], ptr %i.bxq, i64 %i.byc
  %i.byg = getelementptr inbounds nuw i8, ptr %i.byf, i64 32 ; 2 uses
  %i.byh = load <8 x float>, ptr %i.bye, align 32, !tbaa !29
  %i.byi = fadd <8 x float> %i.bxr, %i.byh
  store <8 x float> %i.byi, ptr %i.bye, align 32, !tbaa !29
  %i.byj = load <8 x float>, ptr %i.byg, align 32, !tbaa !29
  %i.byk = fadd <8 x float> %i.byj, %i.bxs
  store <8 x float> %i.byk, ptr %i.byg, align 32, !tbaa !29
  %i.byl = extractelement <4 x i32> %i.bxm, i64 2
  %i.bym = sext i32 %i.byl to i64                 ; 4 uses
  %i.byn = getelementptr inbounds [4 x i8], ptr %i.bxo, i64 %i.bym
  %i.byo = getelementptr inbounds nuw i8, ptr %i.byn, i64 64 ; 2 uses
  %i.byp = getelementptr inbounds [4 x i8], ptr %i.bxq, i64 %i.bym
  %i.byq = getelementptr inbounds nuw i8, ptr %i.byp, i64 64 ; 2 uses
  %i.byr = load <8 x float>, ptr %i.byo, align 32, !tbaa !29
  %i.bys = fadd <8 x float> %i.bxr, %i.byr
  store <8 x float> %i.bys, ptr %i.byo, align 32, !tbaa !29
  %i.byt = load <8 x float>, ptr %i.byq, align 32, !tbaa !29
  %i.byu = fadd <8 x float> %i.byt, %i.bxs
  store <8 x float> %i.byu, ptr %i.byq, align 32, !tbaa !29
  %i.byv = extractelement <4 x i32> %i.bxm, i64 3
  %i.byw = sext i32 %i.byv to i64                 ; 4 uses
  %i.byx = getelementptr inbounds [4 x i8], ptr %i.bxo, i64 %i.byw
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byx, i64 96 ; 2 uses
  %i.byz = getelementptr inbounds [4 x i8], ptr %i.bxq, i64 %i.byw
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byz, i64 96 ; 2 uses
  %i.bzb = load <8 x float>, ptr %i.byy, align 32, !tbaa !29
  %i.bzc = fadd <8 x float> %i.bxr, %i.bzb
  store <8 x float> %i.bzc, ptr %i.byy, align 32, !tbaa !29
  %i.bzd = load <8 x float>, ptr %i.bza, align 32, !tbaa !29
  %i.bze = fadd <8 x float> %i.bzd, %i.bxs
  store <8 x float> %i.bze, ptr %i.bza, align 32, !tbaa !29
  %i.bzf = load ptr, ptr %i.by, align 8, !tbaa !95 ; 2 uses
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bzf, i64 16
  %i.bzh = load ptr, ptr %i.bzg, align 8, !tbaa !96 ; 4 uses
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bzf, i64 24
  %i.bzj = load ptr, ptr %i.bzi, align 8, !tbaa !96 ; 4 uses
  %i.bzk = shufflevector <16 x float> %i.bwx, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bzl = shufflevector <16 x float> %i.bwx, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bzm = getelementptr inbounds [4 x i8], ptr %i.bzh, i64 %i.bxu ; 2 uses
  %i.bzn = getelementptr inbounds [4 x i8], ptr %i.bzj, i64 %i.bxu ; 2 uses
  %i.bzo = load <8 x float>, ptr %i.bzm, align 32, !tbaa !29
  %i.bzp = fadd <8 x float> %i.bzk, %i.bzo
  store <8 x float> %i.bzp, ptr %i.bzm, align 32, !tbaa !29
  %i.bzq = load <8 x float>, ptr %i.bzn, align 32, !tbaa !29
  %i.bzr = fadd <8 x float> %i.bzq, %i.bzl
  store <8 x float> %i.bzr, ptr %i.bzn, align 32, !tbaa !29
  %i.bzs = getelementptr inbounds [4 x i8], ptr %i.bzh, i64 %i.byc
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.bzs, i64 32 ; 2 uses
  %i.bzu = getelementptr inbounds [4 x i8], ptr %i.bzj, i64 %i.byc
  %i.bzv = getelementptr inbounds nuw i8, ptr %i.bzu, i64 32 ; 2 uses
  %i.bzw = load <8 x float>, ptr %i.bzt, align 32, !tbaa !29
  %i.bzx = fadd <8 x float> %i.bzk, %i.bzw
  store <8 x float> %i.bzx, ptr %i.bzt, align 32, !tbaa !29
  %i.bzy = load <8 x float>, ptr %i.bzv, align 32, !tbaa !29
  %i.bzz = fadd <8 x float> %i.bzy, %i.bzl
  store <8 x float> %i.bzz, ptr %i.bzv, align 32, !tbaa !29
  %i.caa = getelementptr inbounds [4 x i8], ptr %i.bzh, i64 %i.bym
  %i.cab = getelementptr inbounds nuw i8, ptr %i.caa, i64 64 ; 2 uses
  %i.cac = getelementptr inbounds [4 x i8], ptr %i.bzj, i64 %i.bym
  %i.cad = getelementptr inbounds nuw i8, ptr %i.cac, i64 64 ; 2 uses
  %i.cae = load <8 x float>, ptr %i.cab, align 32, !tbaa !29
  %i.caf = fadd <8 x float> %i.bzk, %i.cae
  store <8 x float> %i.caf, ptr %i.cab, align 32, !tbaa !29
  %i.cag = load <8 x float>, ptr %i.cad, align 32, !tbaa !29
  %i.cah = fadd <8 x float> %i.cag, %i.bzl
  store <8 x float> %i.cah, ptr %i.cad, align 32, !tbaa !29
  %i.cai = getelementptr inbounds [4 x i8], ptr %i.bzh, i64 %i.byw
  %i.caj = getelementptr inbounds nuw i8, ptr %i.cai, i64 96 ; 2 uses
  %i.cak = getelementptr inbounds [4 x i8], ptr %i.bzj, i64 %i.byw
  %i.cal = getelementptr inbounds nuw i8, ptr %i.cak, i64 96 ; 2 uses
  %i.cam = load <8 x float>, ptr %i.caj, align 32, !tbaa !29
  %i.can = fadd <8 x float> %i.bzk, %i.cam
  store <8 x float> %i.can, ptr %i.caj, align 32, !tbaa !29
  %i.cao = load <8 x float>, ptr %i.cal, align 32, !tbaa !29
  %i.cap = fadd <8 x float> %i.cao, %i.bzl
  store <8 x float> %i.cap, ptr %i.cal, align 32, !tbaa !29
  %i.caq = fmul <16 x float> %i.buy, %i.bwu       ; 3 uses
  %i.car = fmul <16 x float> %i.buz, %i.bwv       ; 3 uses
  %i.cas = fmul <16 x float> %i.bts, %i.caq       ; 2 uses
  %i.cat = fmul <16 x float> %i.btt, %i.car       ; 2 uses
  %i.cau = fmul <16 x float> %i.btu, %i.caq       ; 2 uses
  %i.cav = fmul <16 x float> %i.btv, %i.car       ; 2 uses
  %i.caw = fmul <16 x float> %i.btw, %i.caq       ; 2 uses
  %i.cax = fmul <16 x float> %i.btx, %i.car       ; 2 uses
  %i.cay = fadd <16 x float> %.sroa.03853.54389, %i.cas ; 2 uses
  %i.caz = fadd <16 x float> %.sroa.163860.54390, %i.cat ; 2 uses
  %i.cba = fadd <16 x float> %.sroa.03835.54387, %i.cau ; 2 uses
  %i.cbb = fadd <16 x float> %.sroa.163842.54388, %i.cav ; 2 uses
  %i.cbc = fadd <16 x float> %.sroa.03818.54385, %i.caw ; 2 uses
  %i.cbd = fadd <16 x float> %.sroa.16.54386, %i.cax ; 2 uses
  %i.cbe = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.btl ; 4 uses
  %i.cbf = fadd <16 x float> %i.cas, %i.cat       ; 2 uses
  %i.cbg = fadd <16 x float> %i.cau, %i.cav       ; 2 uses
  %i.cbh = fadd <16 x float> %i.caw, %i.cax       ; 2 uses
  %i.cbi = load <8 x float>, ptr %i.cbe, align 32, !tbaa !29
  %i.cbj = shufflevector <16 x float> %i.cbf, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cbk = shufflevector <16 x float> %i.cbf, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cbl = fadd <8 x float> %i.cbj, %i.cbk
  %i.cbm = fsub <8 x float> %i.cbi, %i.cbl
  store <8 x float> %i.cbm, ptr %i.cbe, align 32, !tbaa !29
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.cbe, i64 32 ; 2 uses
  %i.cbo = load <8 x float>, ptr %i.cbn, align 32, !tbaa !29
  %i.cbp = shufflevector <16 x float> %i.cbg, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cbq = shufflevector <16 x float> %i.cbg, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cbr = fadd <8 x float> %i.cbp, %i.cbq
  %i.cbs = fsub <8 x float> %i.cbo, %i.cbr
  store <8 x float> %i.cbs, ptr %i.cbn, align 32, !tbaa !29
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbe, i64 64 ; 2 uses
  %i.cbu = load <8 x float>, ptr %i.cbt, align 32, !tbaa !29
  %i.cbv = shufflevector <16 x float> %i.cbh, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cbw = shufflevector <16 x float> %i.cbh, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cbx = fadd <8 x float> %i.cbv, %i.cbw
  %i.cby = fsub <8 x float> %i.cbu, %i.cbx
  store <8 x float> %i.cby, ptr %i.cbt, align 32, !tbaa !29
  %indvars.iv.next4511 = add nsw i64 %indvars.iv4510, 1 ; 2 uses
  %exitcond4514.not = icmp eq i64 %indvars.iv.next4511, %wide.trip.count4513
  br i1 %exitcond4514.not, label %.loopexit, label %bb.o, !llvm.loop !22

.loopexit:                                        ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit, %bb.o, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575, %.critedge5, %.critedge3, %.critedge
  %.sroa.03818.6 = phi <16 x float> [ %i.cbc, %bb.o ], [ %i.bjb, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ], [ %.sroa.03818.0.lcssa, %.critedge ], [ %.sroa.03818.2.lcssa, %.critedge3 ], [ %.sroa.03818.4.lcssa, %.critedge5 ], [ %i.wa, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ], [ %i.avq, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ahd, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575 ], [ %i.bsi, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.16.6 = phi <16 x float> [ %i.cbd, %bb.o ], [ %i.bjc, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ], [ %.sroa.16.0.lcssa, %.critedge ], [ %.sroa.16.2.lcssa, %.critedge3 ], [ %.sroa.16.4.lcssa, %.critedge5 ], [ %i.wb, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ], [ %i.avr, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ahe, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575 ], [ %i.bsj, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03835.6 = phi <16 x float> [ %i.cba, %bb.o ], [ %i.biz, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ], [ %.sroa.03835.0.lcssa, %.critedge ], [ %.sroa.03835.2.lcssa, %.critedge3 ], [ %.sroa.03835.4.lcssa, %.critedge5 ], [ %i.vy, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ], [ %i.avo, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ahb, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575 ], [ %i.bsg, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.163842.6 = phi <16 x float> [ %i.cbb, %bb.o ], [ %i.bja, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ], [ %.sroa.163842.0.lcssa, %.critedge ], [ %.sroa.163842.2.lcssa, %.critedge3 ], [ %.sroa.163842.4.lcssa, %.critedge5 ], [ %i.vz, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ], [ %i.avp, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.ahc, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575 ], [ %i.bsh, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.03853.6 = phi <16 x float> [ %i.cay, %bb.o ], [ %i.bix, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ], [ %.sroa.03853.0.lcssa, %.critedge ], [ %.sroa.03853.2.lcssa, %.critedge3 ], [ %.sroa.03853.4.lcssa, %.critedge5 ], [ %i.vw, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ], [ %i.avm, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.agz, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575 ], [ %i.bse, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %.sroa.163860.6 = phi <16 x float> [ %i.caz, %bb.o ], [ %i.biy, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ], [ %.sroa.163860.0.lcssa, %.critedge ], [ %.sroa.163860.2.lcssa, %.critedge3 ], [ %.sroa.163860.4.lcssa, %.critedge5 ], [ %i.vx, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit561 ], [ %i.avn, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ], [ %i.aha, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit575 ], [ %i.bsf, %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit ] ; 2 uses
  %i.cbz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hz ; 2 uses
  %i.cca = shufflevector <16 x float> %.sroa.03853.6, <16 x float> %.sroa.163860.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ccb = shufflevector <16 x float> %.sroa.03853.6, <16 x float> %.sroa.163860.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ccc = fadd <16 x float> %i.cca, %i.ccb       ; 2 uses
  %i.ccd = shufflevector <16 x float> %i.ccc, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cce = fadd <16 x float> %i.ccc, %i.ccd       ; 2 uses
  %i.ccf = shufflevector <16 x float> %i.cce, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.ccg = fadd <16 x float> %i.cce, %i.ccf
  %i.cch = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.ccg, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cci = shufflevector <16 x float> %i.cch, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ccj = load <4 x float>, ptr %i.cbz, align 16, !tbaa !29
  %i.cck = fadd <4 x float> %i.ccj, %i.cci
  store <4 x float> %i.cck, ptr %i.cbz, align 16, !tbaa !29
  %i.ccl = shufflevector <16 x float> %i.cch, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ccm = fadd <4 x float> %i.cci, %i.ccl        ; 2 uses
  %i.ccn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.im ; 2 uses
  %i.cco = shufflevector <16 x float> %.sroa.03835.6, <16 x float> %.sroa.163842.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ccp = shufflevector <16 x float> %.sroa.03835.6, <16 x float> %.sroa.163842.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ccq = fadd <16 x float> %i.cco, %i.ccp       ; 2 uses
  %i.ccr = shufflevector <16 x float> %i.ccq, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.ccs = fadd <16 x float> %i.ccq, %i.ccr       ; 2 uses
  %i.cct = shufflevector <16 x float> %i.ccs, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.ccu = fadd <16 x float> %i.ccs, %i.cct
  %i.ccv = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.ccu, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.ccw = shufflevector <16 x float> %i.ccv, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ccx = load <4 x float>, ptr %i.ccn, align 16, !tbaa !29
  %i.ccy = fadd <4 x float> %i.ccx, %i.ccw
  store <4 x float> %i.ccy, ptr %i.ccn, align 16, !tbaa !29
  %i.ccz = shufflevector <16 x float> %i.ccv, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cda = fadd <4 x float> %i.ccw, %i.ccz        ; 2 uses
  %i.cdb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.iz ; 2 uses
  %i.cdc = shufflevector <16 x float> %.sroa.03818.6, <16 x float> %.sroa.16.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cdd = shufflevector <16 x float> %.sroa.03818.6, <16 x float> %.sroa.16.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cde = fadd <16 x float> %i.cdc, %i.cdd       ; 2 uses
  %i.cdf = shufflevector <16 x float> %i.cde, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cdg = fadd <16 x float> %i.cde, %i.cdf       ; 2 uses
  %i.cdh = shufflevector <16 x float> %i.cdg, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cdi = fadd <16 x float> %i.cdg, %i.cdh
  %i.cdj = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.cdi, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cdk = shufflevector <16 x float> %i.cdj, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cdl = load <4 x float>, ptr %i.cdb, align 16, !tbaa !29
  %i.cdm = fadd <4 x float> %i.cdl, %i.cdk
  store <4 x float> %i.cdm, ptr %i.cdb, align 16, !tbaa !29
  %i.cdn = shufflevector <16 x float> %i.cdj, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cdo = fadd <4 x float> %i.cdk, %i.cdn        ; 2 uses
  %i.cdp = shufflevector <4 x float> %i.cdo, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cdq = fadd <4 x float> %i.cdo, %i.cdp
  %i.cdr = extractelement <4 x float> %i.cdq, i64 0
  %i.cds = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cr ; 2 uses
  %i.cdt = load <2 x float>, ptr %i.cds, align 4, !tbaa !41
  %i.cdu = shufflevector <4 x float> %i.ccm, <4 x float> %i.cda, <2 x i32> <i32 0, i32 4>
  %i.cdv = shufflevector <4 x float> %i.ccm, <4 x float> %i.cda, <2 x i32> <i32 1, i32 5>
  %i.cdw = fadd <2 x float> %i.cdu, %i.cdv
  %i.cdx = fadd <2 x float> %i.cdw, %i.cdt
  store <2 x float> %i.cdx, ptr %i.cds, align 4, !tbaa !41
  %i.cdy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dd ; 2 uses
  %i.cdz = load float, ptr %i.cdy, align 4, !tbaa !41
  %i.cea = fadd float %i.cdr, %i.cdz
  store float %i.cea, ptr %i.cdy, align 4, !tbaa !41
  %i.ceb = getelementptr inbounds nuw i8, ptr %.sroa.02034.04484, i64 16 ; 2 uses
  %.not4345 = icmp eq ptr %i.ceb, %i.bm
  br i1 %.not4345, label %._crit_edge, label %bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float>, <16 x float>, i16) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #3

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
!9 = distinct !{!9, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!10 = distinct !{!10, !9, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!11 = distinct !{!11, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE0_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!12 = distinct !{!12, !11, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE0_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!13 = distinct !{!13, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE1_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!14 = distinct !{!14, !13, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE1_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!15 = distinct !{!15, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE2_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!16 = distinct !{!16, !15, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE1EL20InteractionModifiers1EL7LJEwald0EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE2_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!17 = distinct !{!17, !107}
!18 = distinct !{!18, !107}
!19 = distinct !{!19, !107}
!20 = distinct !{!20, !107}
!21 = distinct !{!21, !107}
!22 = distinct !{!22, !107}
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
!33 = !{!"p1 _ZTS21EwaldCorrectionTables", !23, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"float", !5, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !27, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !36, i64 0}
!38 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !37, i64 0}
!39 = !{!"_ZTS21EwaldCorrectionTables", !35, i64 0, !38, i64 8, !38, i64 32, !38, i64 56}
!40 = !{!39, !35, i64 0}
!41 = !{!35, !35, i64 0}
!42 = !{!"_ZTS15VanDerWaalsType", !5, i64 0}
!43 = !{!"_ZTS20InteractionModifiers", !5, i64 0}
!44 = !{!"double", !5, i64 0}
!45 = !{!"_ZTS14shift_consts_t", !35, i64 0, !35, i64 4, !35, i64 8}
!46 = !{!"_ZTS15switch_consts_t", !35, i64 0, !35, i64 4, !35, i64 8}
!47 = !{!"_ZTS12LongRangeVdW", !5, i64 0}
!48 = !{!"_ZTSN19interaction_const_t19VanDerWaalsSettingsE", !42, i64 0, !43, i64 4, !44, i64 8, !35, i64 16, !35, i64 20, !45, i64 24, !45, i64 36, !46, i64 48, !35, i64 60, !47, i64 64, !35, i64 68}
!49 = !{!"_ZTS22CoulombInteractionType", !5, i64 0}
!50 = !{!"_ZTSN19interaction_const_t15CoulombSettingsE", !49, i64 0, !43, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36}
!51 = !{!"_ZTSSt10_Head_baseILm0EP21EwaldCorrectionTablesLb0EE", !33, i64 0}
!52 = !{!"_ZTSSt11_Tuple_implILm0EJP21EwaldCorrectionTablesSt14default_deleteIS0_EEE", !51, i64 0}
!53 = !{!"_ZTSSt5tupleIJP21EwaldCorrectionTablesSt14default_deleteIS0_EEE", !52, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_implI21EwaldCorrectionTablesSt14default_deleteIS0_EE", !53, i64 0}
!55 = !{!"_ZTSSt15__uniq_ptr_dataI21EwaldCorrectionTablesSt14default_deleteIS0_ELb1ELb1EE", !54, i64 0}
!56 = !{!"_ZTSSt10unique_ptrI21EwaldCorrectionTablesSt14default_deleteIS0_EE", !55, i64 0}
!57 = !{!"p1 _ZTSN19interaction_const_t18SoftCoreParametersE", !23, i64 0}
!58 = !{!"_ZTSSt10_Head_baseILm0EPN19interaction_const_t18SoftCoreParametersELb0EE", !57, i64 0}
!59 = !{!"_ZTSSt11_Tuple_implILm0EJPN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EEE", !58, i64 0}
!60 = !{!"_ZTSSt5tupleIJPN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EEE", !59, i64 0}
!61 = !{!"_ZTSSt15__uniq_ptr_implIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EE", !60, i64 0}
!62 = !{!"_ZTSSt15__uniq_ptr_dataIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_ELb1ELb1EE", !61, i64 0}
!63 = !{!"_ZTSSt10unique_ptrIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EE", !62, i64 0}
!64 = !{!"bool", !5, i64 0}
!65 = !{!"_ZTS19interaction_const_t", !48, i64 0, !50, i64 72, !56, i64 112, !56, i64 120, !63, i64 128, !64, i64 136}
!66 = !{!65, !35, i64 92}
!67 = !{!65, !35, i64 80}
!68 = !{!65, !35, i64 16}
!69 = !{!"p1 _ZTSN3gmx10nbnxn_cj_tE", !23, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!71 = !{!70, !69, i64 0}
!72 = !{!"p1 _ZTSN3gmx10nbnxn_ci_tE", !23, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"p1 _ZTSN3gmx17EnergyAccumulatorILb1ELb1EEE", !23, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!65, !35, i64 100}
!77 = !{!"_ZTSN3gmx10nbnxn_ci_tE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!78 = !{!77, !6, i64 4}
!79 = !{!77, !6, i64 8}
!80 = !{!77, !6, i64 12}
!81 = !{!77, !6, i64 0}
!82 = !{!"any p2 pointer", !23, i64 0}
!83 = !{!"p2 float", !82, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseIPfSaIS0_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!85 = !{!"_ZTSNSt12_Vector_baseIPfSaIS0_EE12_Vector_implE", !84, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseIPfSaIS0_EE", !85, i64 0}
!87 = !{!"_ZTSSt6vectorIPfSaIS0_EE", !86, i64 0}
!88 = !{!"_ZTSN3gmx17EnergyAccumulatorILb1ELb1EEE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !30, i64 32, !38, i64 40, !38, i64 64, !6, i64 88, !87, i64 96, !87, i64 120, !6, i64 144}
!89 = !{!88, !30, i64 32}
!90 = !{!6, !6, i64 0}
!91 = !{!88, !6, i64 88}
!92 = !{!88, !6, i64 8}
!93 = !{!88, !6, i64 12}
!94 = !{!88, !6, i64 28}
!95 = !{!84, !83, i64 0}
!96 = !{!24, !24, i64 0}
!97 = !{!"_ZTSN3gmx10nbnxn_cj_tE", !6, i64 0, !6, i64 4}
!98 = !{!97, !6, i64 0}
!99 = !{!88, !6, i64 24}
!100 = !{!10}
!101 = !{!12}
!102 = !{!14}
!103 = !{!16}
!104 = !{!97, !6, i64 4}
!105 = !{!88, !6, i64 16}
!106 = !{!88, !6, i64 20}
!107 = !{!"llvm.loop.mustprogress"}
end_hunk_3
