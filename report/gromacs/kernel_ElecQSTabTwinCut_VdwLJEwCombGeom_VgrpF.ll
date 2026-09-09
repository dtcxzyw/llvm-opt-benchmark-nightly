Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ElecQSTabTwinCut_VdwLJEwCombGeom_VgrpF?download=true
inline.NumInlined: 1805
inline.NumDeleted: 353
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(656) %1, ptr noundef nonnull align 8 dereferenceable(137) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat {
.preheader4894.preheader:
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
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34   ; 2 uses
  %.sroa.05183.0.copyload = load <16 x i32>, ptr %i.n, align 64, !tbaa !32 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.6.0.copyload = load <16 x i32>, ptr %.sroa.6.0..sroa_idx, align 64, !tbaa !32 ; 3 uses
  %i.o = fcmp ogt <16 x float> %.val.i.i, zeroinitializer
  %i.p = fadd <16 x float> %.val.i.i, splat (float -2.000000e+00) ; 2 uses
  %i.q = fcmp ogt <16 x float> %i.p, zeroinitializer
  %i.r = fadd <16 x float> %i.p, splat (float -2.000000e+00) ; 2 uses
  %i.s = fcmp ogt <16 x float> %i.r, zeroinitializer
  %i.t = fadd <16 x float> %i.r, splat (float -2.000000e+00)
  %i.u = fcmp ogt <16 x float> %i.t, zeroinitializer
  %i.v = bitcast <16 x i1> %i.o to i16            ; 3 uses
  %i.w = bitcast <16 x i1> %i.q to i16            ; 3 uses
  %i.x = bitcast <16 x i1> %i.s to i16            ; 3 uses
  %i.y = bitcast <16 x i1> %i.u to i16            ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36  ; 3 uses
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !42 ; 2 uses
  %i.ac = insertelement <16 x float> poison, float %i.ab, i64 0
  %i.ad = shufflevector <16 x float> %i.ac, <16 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.ae = fdiv float -5.000000e-01, %i.ab
  %i.af = insertelement <16 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <16 x float> %i.af, <16 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !28 ; 9 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !43
  %i.am = fmul float %i.al, 5.000000e-01          ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.ao = load float, ptr %i.an, align 4, !tbaa !68
  %i.ap = insertelement <16 x float> poison, float %i.ao, i64 0
  %i.aq = shufflevector <16 x float> %i.ap, <16 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.as = load <1 x float>, ptr %i.ar, align 8
  %i.at = shufflevector <1 x float> %i.as, <1 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.av = load <1 x float>, ptr %i.au, align 4
  %i.aw = shufflevector <1 x float> %i.av, <1 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !69 ; 2 uses
  %i.az = fmul float %i.ay, %i.ay                 ; 4 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fmul float %i.az, %i.ba
  %i.bc = fdiv float %i.bb, 6.000000e+00          ; 2 uses
  %i.bd = insertelement <16 x float> poison, float %i.az, i64 0
  %i.be = shufflevector <16 x float> %i.bd, <16 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %i.bf = insertelement <16 x float> poison, float %i.bc, i64 0
  %i.bg = shufflevector <16 x float> %i.bf, <16 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !70
  %i.bj = insertelement <16 x float> poison, float %i.bi, i64 0
  %i.bk = shufflevector <16 x float> %i.bj, <16 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !71 ; 2 uses
  %i.bn = fmul float %i.bm, %i.bm
  %i.bo = insertelement <16 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <16 x float> %i.bo, <16 x float> poison, <16 x i32> zeroinitializer ; 12 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load float, ptr %i.bq, align 8, !tbaa !72 ; 2 uses
  %i.bs = fmul float %i.br, %i.br
  %i.bt = insertelement <16 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <16 x float> %i.bt, <16 x float> poison, <16 x i32> zeroinitializer ; 10 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !26 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !26 ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !75 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !77 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !77 ; 2 uses
  %.not48725048 = icmp eq ptr %i.cc, %i.ce
  br i1 %.not48725048, label %._crit_edge, label %.lr.ph5050

.lr.ph5050:                                       ; preds = %.preheader4894.preheader
  %i.cf = getelementptr i8, ptr %4, i64 136
  %.val.val = load ptr, ptr %i.cf, align 8, !tbaa !79 ; 12 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !80 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.val, i64 32 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.val, i64 88
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.val, i64 12
  %i.cm = getelementptr inbounds nuw i8, ptr %.val.val, i64 40 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.val, i64 28
  %i.co = getelementptr inbounds nuw i8, ptr %.val.val, i64 96 ; 9 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.val, i64 64 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.val, i64 120 ; 11 uses
  %i.cr = fneg float %i.ch                        ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.val, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = fpext float %i.bc to double             ; 4 uses
  %i.cv = insertelement <16 x float> poison, float %i.ch, i64 0
  %i.cw = shufflevector <16 x float> %i.cv, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.val, i64 16 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.val, i64 20 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 8 uses
  br label %bb.a

._crit_edge:                                      ; preds = %.loopexit, %.preheader4894.preheader
  ret void

bb.a:                                             ; preds = %.lr.ph5050, %.loopexit
  %.sroa.02198.05049 = phi ptr [ %i.cc, %.lr.ph5050 ], [ %i.cst, %.loopexit ] ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.02198.05049, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !82 ; 3 uses
  %i.dc = and i32 %i.db, 127                      ; 2 uses
  %i.dd = mul nuw nsw i32 %i.dc, 3                ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.02198.05049, i64 8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !83 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.02198.05049, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !84 ; 10 uses
  %i.di = load i32, ptr %.sroa.02198.05049, align 4, !tbaa !85 ; 3 uses
  %i.dj = icmp eq i32 %i.dc, 22
  %i.dk = select i1 %i.dj, i32 %i.di, i32 -1      ; 7 uses
  %i.dl = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dl
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !43
  %i.do = insertelement <16 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <16 x float> %i.do, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dq = zext nneg i32 %i.dd to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !43
  %i.du = insertelement <16 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <16 x float> %i.du, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dw = add nuw nsw i32 %i.dd, 2
  %i.dx = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dx
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !43
  %i.ea = insertelement <16 x float> poison, float %i.dz, i64 0
  %i.eb = shufflevector <16 x float> %i.ea, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ec = shl i32 %i.di, 2                        ; 4 uses
  %i.ed = and i32 %i.ec, -8                       ; 2 uses
  %i.ee = mul nsw i32 %i.ed, 3
  %i.ef = and i32 %i.ec, 4                        ; 2 uses
  %i.eg = or disjoint i32 %i.ee, %i.ef            ; 3 uses
  %i.eh = shl nsw i32 %i.ed, 1
  %i.ei = or disjoint i32 %i.eh, %i.ef
  %i.ej = and i32 %i.db, 512
  %i.ek = icmp ne i32 %i.ej, 0                    ; 4 uses
  %i.el = and i32 %i.db, 384
  %or.cond = icmp ne i32 %i.el, 128
  %i.em = and i1 %or.cond, %i.ek
  %i.en = load ptr, ptr %i.ci, align 8, !tbaa !93
  %i.eo = sext i32 %i.di to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !94 ; 9 uses
  store i32 %i.eq, ptr %i.cj, align 8, !tbaa !95
  %i.er = load i32, ptr %i.ck, align 8, !tbaa !96 ; 7 uses
  %i.es = load i32, ptr %i.cl, align 4, !tbaa !97 ; 8 uses
  %i.et = load i32, ptr %i.cn, align 4, !tbaa !98 ; 4 uses
  %i.eu = load ptr, ptr %i.co, align 8, !tbaa !99 ; 5 uses
  %i.ev = load ptr, ptr %i.cq, align 8, !tbaa !99 ; 5 uses
  %i.ew = and i32 %i.es, %i.eq                    ; 3 uses
  %i.ex = load ptr, ptr %i.cm, align 8, !tbaa !28
  %i.ey = mul nsw i32 %i.ew, %i.et
  %i.ez = sext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ez
  store ptr %i.fa, ptr %i.eu, align 8, !tbaa !100
  %i.fb = load ptr, ptr %i.cp, align 8, !tbaa !28
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.ez
  store ptr %i.fc, ptr %i.ev, align 8, !tbaa !100
  %i.fd = ashr i32 %i.eq, %i.er
  %i.fe = and i32 %i.fd, %i.es                    ; 3 uses
  %i.ff = load ptr, ptr %i.cm, align 8, !tbaa !28
  %i.fg = mul nsw i32 %i.fe, %i.et
  %i.fh = sext i32 %i.fg to i64                   ; 2 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !100
  %i.fk = load ptr, ptr %i.cp, align 8, !tbaa !28
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.fh
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !100
  %i.fn = shl i32 %i.er, 1
  %i.fo = ashr i32 %i.eq, %i.fn
  %i.fp = and i32 %i.fo, %i.es
  %i.fq = load ptr, ptr %i.cm, align 8, !tbaa !28
  %i.fr = mul nsw i32 %i.fp, %i.et
  %i.fs = sext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 2 uses
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !100
  %i.fv = load ptr, ptr %i.cp, align 8, !tbaa !28
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.fs
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !100
  %i.fy = mul i32 %i.er, 3
  %i.fz = ashr i32 %i.eq, %i.fy
  %i.ga = and i32 %i.fz, %i.es
  %i.gb = load ptr, ptr %i.cm, align 8, !tbaa !28
  %i.gc = mul nsw i32 %i.ga, %i.et
  %i.gd = sext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !100
  %i.gg = load ptr, ptr %i.cp, align 8, !tbaa !28
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.gd ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !100
  %i.gj = sext i32 %i.df to i64                   ; 4 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !102
  %i.gm = ashr i32 %i.dk, 1
  %i.gn = icmp eq i32 %i.gl, %i.gm
  br i1 %i.gn, label %bb.b, label %.loopexit4891

bb.b:                                             ; preds = %bb.a
  %.pre = load i32, ptr %i.cs, align 8, !tbaa !103 ; 8 uses
  %i.go = sext i32 %i.ec to i64                   ; 8 uses
  br i1 %i.ek, label %.preheader4892, label %..loopexit4893_crit_edge

..loopexit4893_crit_edge:                         ; preds = %bb.b
  %.pre5236 = mul nsw i32 %.pre, %i.ew
  %.pre5238 = sext i32 %.pre5236 to i64
  %.pre5240 = or disjoint i64 %i.go, 1
  %.pre5242 = mul nsw i32 %.pre, %i.fe
  %.pre5244 = sext i32 %.pre5242 to i64
  %.pre5246 = or disjoint i64 %i.go, 2
  %.pre5248 = shl i32 %i.er, 1
  %.pre5252 = ashr i32 %i.eq, %.pre5248
  %.pre5254 = and i32 %.pre5252, %i.es
  %.pre5256 = mul nsw i32 %.pre, %.pre5254
  %.pre5258 = sext i32 %.pre5256 to i64
  %.pre5260 = or disjoint i64 %i.go, 3
  %.pre5262 = mul i32 %i.er, 3
  %.pre5266 = ashr i32 %i.eq, %.pre5262
  %.pre5268 = and i32 %.pre5266, %i.es
  %.pre5270 = mul nsw i32 %.pre, %.pre5268
  %.pre5272 = sext i32 %.pre5270 to i64
  br label %.loopexit4893

.preheader4892:                                   ; preds = %bb.b
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.go
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !43 ; 2 uses
  %i.gr = fmul float %i.gq, %i.cr
  %i.gs = fmul float %i.gq, %i.gr
  %i.gt = fmul float %i.am, %i.gs
  %i.gu = mul nsw i32 %.pre, %i.ew
  %i.gv = load ptr, ptr %i.eu, align 8, !tbaa !100
  %i.gw = sext i32 %i.gu to i64                   ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gw ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !43
  %i.gz = fadd float %i.gt, %i.gy
  store float %i.gz, ptr %i.gx, align 4, !tbaa !43
  %i.ha = or disjoint i64 %i.go, 1                ; 2 uses
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.ha
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !43 ; 2 uses
  %i.hd = fmul float %i.hc, %i.cr
  %i.he = fmul float %i.hc, %i.hd
  %i.hf = fmul float %i.am, %i.he
  %i.hg = mul nsw i32 %.pre, %i.fe
  %i.hh = load ptr, ptr %i.fj, align 8, !tbaa !100
  %i.hi = sext i32 %i.hg to i64                   ; 2 uses
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.hi ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !43
  %i.hl = fadd float %i.hf, %i.hk
  store float %i.hl, ptr %i.hj, align 4, !tbaa !43
  %i.hm = or disjoint i64 %i.go, 2                ; 2 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.hm
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !43 ; 2 uses
  %i.hp = fmul float %i.ho, %i.cr
  %i.hq = fmul float %i.ho, %i.hp
  %i.hr = fmul float %i.am, %i.hq
  %i.hs = shl i32 %i.er, 1
  %i.ht = ashr i32 %i.eq, %i.hs
  %i.hu = and i32 %i.ht, %i.es
  %i.hv = mul nsw i32 %.pre, %i.hu
  %i.hw = load ptr, ptr %i.fu, align 8, !tbaa !100
  %i.hx = sext i32 %i.hv to i64                   ; 2 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.hx ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !43
  %i.ia = fadd float %i.hr, %i.hz
  store float %i.ia, ptr %i.hy, align 4, !tbaa !43
  %i.ib = or disjoint i64 %i.go, 3                ; 2 uses
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !43 ; 2 uses
  %i.ie = fmul float %i.id, %i.cr
  %i.if = fmul float %i.id, %i.ie
  %i.ig = fmul float %i.am, %i.if
  %i.ih = mul i32 %i.er, 3
  %i.ii = ashr i32 %i.eq, %i.ih
  %i.ij = and i32 %i.ii, %i.es
  %i.ik = mul nsw i32 %.pre, %i.ij
  %i.il = load ptr, ptr %i.gf, align 8, !tbaa !100
  %i.im = sext i32 %i.ik to i64                   ; 2 uses
  %i.in = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.im ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !43
  %i.ip = fadd float %i.ig, %i.io
end_hunk_0
begin_hunk_1_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4894.preheader
  %.not606 = icmp eq i32 %i.on, -1
  br i1 %.not606, label %.critedge.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit614

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit614: ; preds = %bb.d
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %indvars.iv5126 ; 2 uses
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !102 ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !128
  %i.os = insertelement <16 x i32> poison, i32 %i.or, i64 0
  %i.ot = shufflevector <16 x i32> %i.os, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ou = and <16 x i32> %.sroa.05183.0.copyload, %i.ot
  %.not5293 = icmp eq <16 x i32> %i.ou, zeroinitializer ; 5 uses
  %i.ov = and <16 x i32> %.sroa.6.0.copyload, %i.ot
  %.not5294 = icmp eq <16 x i32> %i.ov, zeroinitializer ; 2 uses
  %i.ow = shl nsw i32 %i.op, 3
  %i.ox = mul nsw i32 %i.op, 24
  %i.oy = sext i32 %i.ox to i64                   ; 2 uses
  %i.oz = getelementptr [4 x i8], ptr %i.by, i64 %i.oy ; 3 uses
  %.val7365459 = load <8 x float>, ptr %i.oz, align 32, !tbaa !32
  %i.pa = shufflevector <8 x float> %.val7365459, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.pb = getelementptr i8, ptr %i.oz, i64 32
  %.val7375460 = load <8 x float>, ptr %i.pb, align 32, !tbaa !32
  %i.pc = shufflevector <8 x float> %.val7375460, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.pd = getelementptr i8, ptr %i.oz, i64 64
  %.val7385461 = load <8 x float>, ptr %i.pd, align 32, !tbaa !32
  %i.pe = shufflevector <8 x float> %.val7385461, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.pf = fsub <16 x float> %i.lf, %i.pa          ; 3 uses
  %i.pg = fsub <16 x float> %i.ll, %i.pa          ; 3 uses
  %i.ph = fsub <16 x float> %i.ls, %i.pc          ; 3 uses
  %i.pi = fsub <16 x float> %i.ly, %i.pc          ; 3 uses
  %i.pj = fsub <16 x float> %i.mf, %i.pe          ; 3 uses
  %i.pk = fsub <16 x float> %i.ml, %i.pe          ; 3 uses
  %i.pl = fmul <16 x float> %i.pf, %i.pf
  %i.pm = fmul <16 x float> %i.ph, %i.ph
  %i.pn = fadd <16 x float> %i.pl, %i.pm
  %i.po = fmul <16 x float> %i.pj, %i.pj
  %i.pp = fadd <16 x float> %i.pn, %i.po          ; 2 uses
  %i.pq = fmul <16 x float> %i.pg, %i.pg
  %i.pr = fmul <16 x float> %i.pi, %i.pi
  %i.ps = fadd <16 x float> %i.pq, %i.pr
  %i.pt = fmul <16 x float> %i.pk, %i.pk
  %i.pu = fadd <16 x float> %i.ps, %i.pt          ; 2 uses
  %i.pv = fcmp olt <16 x float> %i.pp, %i.bp
  %i.pw = bitcast <16 x i1> %i.pv to i16          ; 3 uses
  %i.px = fcmp olt <16 x float> %i.pu, %i.bp
  %i.py = bitcast <16 x i1> %i.px to i16          ; 3 uses
  %i.pz = shl nsw i32 %i.op, 1                    ; 3 uses
  %i.qa = icmp eq i32 %i.pz, %i.dk
  br i1 %i.qa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit614
  %i.qb = and i16 %i.pw, %i.v
  %i.qc = and i16 %i.py, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616

bb.f:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit614
  %i.qd = or disjoint i32 %i.pz, 1
  %i.qe = icmp eq i32 %i.qd, %i.dk
  br i1 %i.qe, label %bb.g, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616

bb.g:                                             ; preds = %bb.f
  %i.qf = and i16 %i.pw, %i.x
  %i.qg = and i16 %i.py, %i.y
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.10.0 = phi i16 [ %i.qc, %bb.e ], [ %i.qg, %bb.g ], [ %i.py, %bb.f ]
  %.sroa.0.0 = phi i16 [ %i.qb, %bb.e ], [ %i.qf, %bb.g ], [ %i.pw, %bb.f ]
  %i.qh = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.pp, <16 x float> splat (float 3.820000e-07), i32 4) ; 5 uses
  %i.qi = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.pu, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.qj = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.qh, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.qk = fmul <16 x float> %i.qh, %i.qj
  %i.ql = fmul <16 x float> %i.qj, splat (float -5.000000e-01)
  %i.qm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qk, <16 x float> %i.qj, <16 x float> splat (float -3.000000e+00))
  %i.qn = fmul <16 x float> %i.ql, %i.qm
  %i.qo = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.qi, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.qp = fmul <16 x float> %i.qi, %i.qo
  %i.qq = fmul <16 x float> %i.qo, splat (float -5.000000e-01)
  %i.qr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> %i.qo, <16 x float> splat (float -3.000000e+00))
  %i.qs = fmul <16 x float> %i.qq, %i.qr
  %i.qt = sext i32 %i.ow to i64                   ; 2 uses
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.qt
  %.val7395462 = load <8 x float>, ptr %i.qu, align 32, !tbaa !32
  %i.qv = bitcast i16 %.sroa.0.0 to <16 x i1>     ; 3 uses
  %i.qw = select <16 x i1> %i.qv, <16 x float> %i.qn, <16 x float> zeroinitializer ; 4 uses
  %i.qx = bitcast i16 %.sroa.10.0 to <16 x i1>    ; 2 uses
  %i.qy = select <16 x i1> %i.qx, <16 x float> %i.qs, <16 x float> zeroinitializer ; 4 uses
  %i.qz = fmul <16 x float> %i.qh, %i.qw          ; 2 uses
  %i.ra = fmul <16 x float> %i.qi, %i.qy          ; 2 uses
  %i.rb = fmul <16 x float> %i.ad, %i.qz          ; 2 uses
  %i.rc = fmul <16 x float> %i.ad, %i.ra          ; 2 uses
  %i.rd = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.rb, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.re = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.rc, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.rf = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ai, <16 x i32> %i.rd, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.rg = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cz, <16 x i32> %i.rd, <16 x i1> splat (i1 true), i32 4)
  %i.rh = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ak, <16 x i32> %i.rd, <16 x i1> splat (i1 true), i32 4)
  %i.ri = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ai, <16 x i32> %i.re, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.rj = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cz, <16 x i32> %i.re, <16 x i1> splat (i1 true), i32 4)
  %i.rk = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ak, <16 x i32> %i.re, <16 x i1> splat (i1 true), i32 4)
  %i.rl = shufflevector <8 x float> %.val7395462, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.rm = fmul <16 x float> %.sroa.04460.0, %i.rl ; 2 uses
  %i.rn = fmul <16 x float> %.sroa.74464.0, %i.rl ; 2 uses
  %i.ro = fmul <16 x float> %i.qw, %i.qw          ; 4 uses
  %i.rp = fmul <16 x float> %i.qy, %i.qy
  %i.rq = select <16 x i1> %.not5293, <16 x float> zeroinitializer, <16 x float> %i.qw ; 2 uses
  %i.rr = select <16 x i1> %.not5294, <16 x float> zeroinitializer, <16 x float> %i.qy ; 2 uses
  %i.rs = sitofp <16 x i32> %i.rd to <16 x float>
  %i.rt = sitofp <16 x i32> %i.re to <16 x float>
  %i.ru = fsub <16 x float> %i.rb, %i.rs          ; 2 uses
  %i.rv = fsub <16 x float> %i.rc, %i.rt          ; 2 uses
  %i.rw = fsub <16 x float> %i.rg, %i.rf
  %i.rx = fsub <16 x float> %i.rj, %i.ri
  %i.ry = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ru, <16 x float> %i.rw, <16 x float> %i.rf) ; 2 uses
  %i.rz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rv, <16 x float> %i.rx, <16 x float> %i.ri) ; 2 uses
  %i.sa = fneg <16 x float> %i.ry
  %i.sb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sa, <16 x float> %i.qz, <16 x float> %i.rq)
  %i.sc = fneg <16 x float> %i.rz
  %i.sd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sc, <16 x float> %i.ra, <16 x float> %i.rr)
  %i.se = fmul <16 x float> %i.ag, %i.ru
  %i.sf = fadd <16 x float> %i.rf, %i.ry
  %i.sg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.se, <16 x float> %i.sf, <16 x float> %i.rh)
  %i.sh = fmul <16 x float> %i.ag, %i.rv
  %i.si = fadd <16 x float> %i.ri, %i.rz
  %i.sj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sh, <16 x float> %i.si, <16 x float> %i.rk)
  %i.sk = fmul <16 x float> %i.rm, %i.sb
  %i.sl = fmul <16 x float> %i.rn, %i.sd
  %i.sm = select <16 x i1> %.not5293, <16 x float> zeroinitializer, <16 x float> %i.aq
  %i.sn = fadd <16 x float> %i.sm, %i.sg
  %i.so = select <16 x i1> %.not5294, <16 x float> zeroinitializer, <16 x float> %i.aq
  %i.sp = fadd <16 x float> %i.so, %i.sj
  %i.sq = fsub <16 x float> %i.rq, %i.sn
  %i.sr = fmul <16 x float> %i.rm, %i.sq
  %i.ss = fsub <16 x float> %i.rr, %i.sp
  %i.st = fmul <16 x float> %i.rn, %i.ss
  %i.su = select <16 x i1> %i.qv, <16 x float> %i.sr, <16 x float> zeroinitializer ; 2 uses
  %i.sv = select <16 x i1> %i.qx, <16 x float> %i.st, <16 x float> zeroinitializer ; 2 uses
  %i.sw = fcmp olt <16 x float> %i.qh, %i.bu      ; 2 uses
  %i.sx = shl nsw i32 %i.op, 4
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.qt
  %.val7694881.le = load <8 x i32>, ptr %i.sy, align 32, !tbaa !32 ; 2 uses
  %i.sz = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nf, <8 x i32> %.val7694881.le, <8 x i1> splat (i1 true), i32 8)
  %i.ta = bitcast <8 x double> %i.sz to <16 x float> ; 2 uses
  %i.tb = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nl, <8 x i32> %.val7694881.le, <8 x i1> splat (i1 true), i32 8)
  %i.tc = bitcast <8 x double> %i.tb to <16 x float> ; 2 uses
  %i.td = shufflevector <16 x float> %i.ta, <16 x float> %i.tc, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.te = shufflevector <16 x float> %i.ta, <16 x float> %i.tc, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.tf = fmul <16 x float> %i.ro, %i.ro
  %i.tg = fmul <16 x float> %i.ro, %i.tf          ; 4 uses
  %i.th = select <16 x i1> %.not5293, <16 x float> zeroinitializer, <16 x float> %i.tg ; 3 uses
  %i.ti = fmul <16 x float> %i.th, %i.th
  %i.tj = fmul <16 x float> %i.th, %i.td          ; 2 uses
  %i.tk = fmul <16 x float> %i.ti, %i.te          ; 2 uses
  %i.tl = fsub <16 x float> %i.tk, %i.tj
  %i.tm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.td, <16 x float> %i.at, <16 x float> %i.tj)
  %i.tn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.te, <16 x float> %i.aw, <16 x float> %i.tk)
  %i.to = fmul <16 x float> %i.tm, splat (float f0xBE2AAAAB)
  %i.tp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tn, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.to)
  %i.tq = select <16 x i1> %.not5293, <16 x float> zeroinitializer, <16 x float> %i.tp
  %i.tr = sext i32 %i.sx to i64
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.tr
  %.val7405463 = load <8 x float>, ptr %i.ts, align 32, !tbaa !32
  %i.tt = shufflevector <8 x float> %.val7405463, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.tu = fmul <16 x float> %i.od, %i.tt          ; 2 uses
  %i.tv = select <16 x i1> %i.qv, <16 x float> %i.qh, <16 x float> zeroinitializer
  %i.tw = fmul <16 x float> %i.be, %i.tv          ; 3 uses
  %i.tx = bitcast <16 x float> %i.tw to <8 x i64>
  %i.ty = xor <8 x i64> %i.tx, splat (i64 -9223372034707292160)
  %i.tz = bitcast <8 x i64> %i.ty to <16 x float> ; 2 uses
  %i.ua = fmul <16 x float> %i.tz, splat (float f0x3FB8AA3B) ; 2 uses
  %i.ub = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.ua, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.uc = shl <16 x i32> %i.ub, splat (i32 23)
  %i.ud = add <16 x i32> %i.uc, splat (i32 1065353216)
  %i.ue = bitcast <16 x i32> %i.ud to <16 x float> ; 2 uses
  %i.uf = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ua, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.ug = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uf, <16 x float> splat (float f0xBF317200), <16 x float> %i.tz)
  %i.uh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uf, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.ug) ; 7 uses
  %i.ui = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uh, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.uj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ui, <16 x float> %i.uh, <16 x float> splat (float f0x3D2AAF4C))
  %i.uk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uj, <16 x float> %i.uh, <16 x float> splat (float f0x3E2AAA5E))
  %i.ul = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uk, <16 x float> %i.uh, <16 x float> splat (float f0x3EFFFFFB))
  %i.um = fmul <16 x float> %i.uh, %i.uh
  %i.un = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.um, <16 x float> %i.ul, <16 x float> %i.uh)
  %i.uo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.un, <16 x float> %i.ue, <16 x float> %i.ue)
  %i.up = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tw, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.uq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.up, <16 x float> %i.tw, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.ur = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tg, <16 x float> %i.uq, <16 x float> %i.bg)
  %i.us = fneg <16 x float> %i.uo                 ; 2 uses
  %i.ut = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.us, <16 x float> %i.ur, <16 x float> %i.tg)
  %i.uu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tu, <16 x float> %i.ut, <16 x float> %i.tl)
  %i.uv = select <16 x i1> %.not5293, <16 x float> zeroinitializer, <16 x float> %i.bk
  %i.uw = fmul <16 x float> %i.tu, splat (float f0x3E2AAAAB)
  %i.ux = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.us, <16 x float> %i.uq, <16 x float> splat (float 1.000000e+00))
  %i.uy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tg, <16 x float> %i.ux, <16 x float> %i.uv)
  %i.uz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uw, <16 x float> %i.uy, <16 x float> %i.tq)
  %i.va = select <16 x i1> %i.sw, <16 x float> %i.uu, <16 x float> zeroinitializer
  %i.vb = select <16 x i1> %i.sw, <16 x float> %i.uz, <16 x float> zeroinitializer ; 2 uses
  %i.vc = load ptr, ptr %i.ci, align 8, !tbaa !93
  %i.vd = load i32, ptr %i.cx, align 8, !tbaa !129
  %i.ve = sext i32 %i.pz to i64
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.vc, i64 %i.ve
  %5 = load <2 x i32>, ptr %i.cy, align 4, !tbaa !94 ; 2 uses
  %i.vg = load <2 x i32>, ptr %i.vf, align 4, !tbaa !94 ; 2 uses
  %i.vh = insertelement <2 x i32> poison, i32 %i.vd, i64 0
  %i.vi = shufflevector <2 x i32> %i.vg, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.vj = shufflevector <2 x i32> %i.vg, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.vk = shufflevector <2 x i32> %i.vh, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.vl = ashr <4 x i32> %i.vj, %i.vk
  %i.vm = shufflevector <4 x i32> %i.vl, <4 x i32> %i.vi, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.vn = shufflevector <2 x i32> %5, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.vo = and <4 x i32> %i.vm, %i.vn
  %6 = shufflevector <2 x i32> %5, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.vp = mul nsw <4 x i32> %i.vo, %6             ; 4 uses
  %i.vq = load ptr, ptr %i.co, align 8, !tbaa !99 ; 2 uses
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !100 ; 4 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !100 ; 4 uses
  %i.vu = shufflevector <16 x float> %i.su, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.vv = shufflevector <16 x float> %i.su, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.vw = extractelement <4 x i32> %i.vp, i64 0
  %i.vx = sext i32 %i.vw to i64                   ; 6 uses
  %i.vy = getelementptr inbounds [4 x i8], ptr %i.vr, i64 %i.vx ; 2 uses
  %i.vz = getelementptr inbounds [4 x i8], ptr %i.vt, i64 %i.vx ; 2 uses
  %i.wa = load <8 x float>, ptr %i.vy, align 32, !tbaa !32
  %i.wb = fadd <8 x float> %i.vu, %i.wa
  store <8 x float> %i.wb, ptr %i.vy, align 32, !tbaa !32
  %i.wc = load <8 x float>, ptr %i.vz, align 32, !tbaa !32
  %i.wd = fadd <8 x float> %i.wc, %i.vv
  store <8 x float> %i.wd, ptr %i.vz, align 32, !tbaa !32
  %i.we = extractelement <4 x i32> %i.vp, i64 1
  %i.wf = sext i32 %i.we to i64                   ; 6 uses
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.vr, i64 %i.wf
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 32 ; 2 uses
  %i.wi = getelementptr inbounds [4 x i8], ptr %i.vt, i64 %i.wf
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 32 ; 2 uses
  %i.wk = load <8 x float>, ptr %i.wh, align 32, !tbaa !32
  %i.wl = fadd <8 x float> %i.vu, %i.wk
  store <8 x float> %i.wl, ptr %i.wh, align 32, !tbaa !32
  %i.wm = load <8 x float>, ptr %i.wj, align 32, !tbaa !32
  %i.wn = fadd <8 x float> %i.wm, %i.vv
  store <8 x float> %i.wn, ptr %i.wj, align 32, !tbaa !32
  %i.wo = extractelement <4 x i32> %i.vp, i64 2
  %i.wp = sext i32 %i.wo to i64                   ; 6 uses
  %i.wq = getelementptr inbounds [4 x i8], ptr %i.vr, i64 %i.wp
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 64 ; 2 uses
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.vt, i64 %i.wp
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 64 ; 2 uses
  %i.wu = load <8 x float>, ptr %i.wr, align 32, !tbaa !32
  %i.wv = fadd <8 x float> %i.vu, %i.wu
  store <8 x float> %i.wv, ptr %i.wr, align 32, !tbaa !32
  %i.ww = load <8 x float>, ptr %i.wt, align 32, !tbaa !32
  %i.wx = fadd <8 x float> %i.ww, %i.vv
  store <8 x float> %i.wx, ptr %i.wt, align 32, !tbaa !32
  %i.wy = extractelement <4 x i32> %i.vp, i64 3
  %i.wz = sext i32 %i.wy to i64                   ; 6 uses
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.vr, i64 %i.wz
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 96 ; 2 uses
  %i.xc = getelementptr inbounds [4 x i8], ptr %i.vt, i64 %i.wz
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 96 ; 2 uses
  %i.xe = load <8 x float>, ptr %i.xb, align 32, !tbaa !32
  %i.xf = fadd <8 x float> %i.vu, %i.xe
  store <8 x float> %i.xf, ptr %i.xb, align 32, !tbaa !32
  %i.xg = load <8 x float>, ptr %i.xd, align 32, !tbaa !32
  %i.xh = fadd <8 x float> %i.xg, %i.vv
  store <8 x float> %i.xh, ptr %i.xd, align 32, !tbaa !32
  %i.xi = load ptr, ptr %i.co, align 8, !tbaa !99 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !100 ; 4 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xi, i64 24
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !100 ; 4 uses
  %i.xn = shufflevector <16 x float> %i.sv, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.xo = shufflevector <16 x float> %i.sv, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.xp = getelementptr inbounds [4 x i8], ptr %i.xk, i64 %i.vx ; 2 uses
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.xm, i64 %i.vx ; 2 uses
  %i.xr = load <8 x float>, ptr %i.xp, align 32, !tbaa !32
  %i.xs = fadd <8 x float> %i.xn, %i.xr
  store <8 x float> %i.xs, ptr %i.xp, align 32, !tbaa !32
  %i.xt = load <8 x float>, ptr %i.xq, align 32, !tbaa !32
  %i.xu = fadd <8 x float> %i.xt, %i.xo
  store <8 x float> %i.xu, ptr %i.xq, align 32, !tbaa !32
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.xk, i64 %i.wf
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 32 ; 2 uses
  %i.xx = getelementptr inbounds [4 x i8], ptr %i.xm, i64 %i.wf
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 32 ; 2 uses
  %i.xz = load <8 x float>, ptr %i.xw, align 32, !tbaa !32
  %i.ya = fadd <8 x float> %i.xn, %i.xz
  store <8 x float> %i.ya, ptr %i.xw, align 32, !tbaa !32
  %i.yb = load <8 x float>, ptr %i.xy, align 32, !tbaa !32
  %i.yc = fadd <8 x float> %i.yb, %i.xo
  store <8 x float> %i.yc, ptr %i.xy, align 32, !tbaa !32
  %i.yd = getelementptr inbounds [4 x i8], ptr %i.xk, i64 %i.wp
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 64 ; 2 uses
  %i.yf = getelementptr inbounds [4 x i8], ptr %i.xm, i64 %i.wp
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 64 ; 2 uses
  %i.yh = load <8 x float>, ptr %i.ye, align 32, !tbaa !32
  %i.yi = fadd <8 x float> %i.xn, %i.yh
  store <8 x float> %i.yi, ptr %i.ye, align 32, !tbaa !32
  %i.yj = load <8 x float>, ptr %i.yg, align 32, !tbaa !32
  %i.yk = fadd <8 x float> %i.yj, %i.xo
  store <8 x float> %i.yk, ptr %i.yg, align 32, !tbaa !32
  %i.yl = getelementptr inbounds [4 x i8], ptr %i.xk, i64 %i.wz
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 96 ; 2 uses
  %i.yn = getelementptr inbounds [4 x i8], ptr %i.xm, i64 %i.wz
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 96 ; 2 uses
  %i.yp = load <8 x float>, ptr %i.ym, align 32, !tbaa !32
  %i.yq = fadd <8 x float> %i.xn, %i.yp
  store <8 x float> %i.yq, ptr %i.ym, align 32, !tbaa !32
  %i.yr = load <8 x float>, ptr %i.yo, align 32, !tbaa !32
  %i.ys = fadd <8 x float> %i.yr, %i.xo
  store <8 x float> %i.ys, ptr %i.yo, align 32, !tbaa !32
  %i.yt = load ptr, ptr %i.cq, align 8, !tbaa !99 ; 2 uses
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !100 ; 4 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !100 ; 4 uses
  %i.yx = shufflevector <16 x float> %i.vb, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.yy = shufflevector <16 x float> %i.vb, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.yz = getelementptr inbounds [4 x i8], ptr %i.yu, i64 %i.vx ; 2 uses
  %i.za = getelementptr inbounds [4 x i8], ptr %i.yw, i64 %i.vx ; 2 uses
  %i.zb = load <8 x float>, ptr %i.yz, align 32, !tbaa !32
  %i.zc = fadd <8 x float> %i.yx, %i.zb
  store <8 x float> %i.zc, ptr %i.yz, align 32, !tbaa !32
  %i.zd = load <8 x float>, ptr %i.za, align 32, !tbaa !32
  %i.ze = fadd <8 x float> %i.zd, %i.yy
  store <8 x float> %i.ze, ptr %i.za, align 32, !tbaa !32
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.yu, i64 %i.wf
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 32 ; 2 uses
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.yw, i64 %i.wf
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 32 ; 2 uses
  %i.zj = load <8 x float>, ptr %i.zg, align 32, !tbaa !32
  %i.zk = fadd <8 x float> %i.yx, %i.zj
  store <8 x float> %i.zk, ptr %i.zg, align 32, !tbaa !32
  %i.zl = load <8 x float>, ptr %i.zi, align 32, !tbaa !32
  %i.zm = fadd <8 x float> %i.zl, %i.yy
  store <8 x float> %i.zm, ptr %i.zi, align 32, !tbaa !32
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.yu, i64 %i.wp
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 64 ; 2 uses
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.yw, i64 %i.wp
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 64 ; 2 uses
  %i.zr = load <8 x float>, ptr %i.zo, align 32, !tbaa !32
  %i.zs = fadd <8 x float> %i.yx, %i.zr
  store <8 x float> %i.zs, ptr %i.zo, align 32, !tbaa !32
  %i.zt = load <8 x float>, ptr %i.zq, align 32, !tbaa !32
  %i.zu = fadd <8 x float> %i.zt, %i.yy
  store <8 x float> %i.zu, ptr %i.zq, align 32, !tbaa !32
  %i.zv = getelementptr inbounds [4 x i8], ptr %i.yu, i64 %i.wz
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 96 ; 2 uses
  %i.zx = getelementptr inbounds [4 x i8], ptr %i.yw, i64 %i.wz
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 96 ; 2 uses
  %i.zz = load <8 x float>, ptr %i.zw, align 32, !tbaa !32
  %i.aaa = fadd <8 x float> %i.yx, %i.zz
  store <8 x float> %i.aaa, ptr %i.zw, align 32, !tbaa !32
  %i.aab = load <8 x float>, ptr %i.zy, align 32, !tbaa !32
  %i.aac = fadd <8 x float> %i.aab, %i.yy
  store <8 x float> %i.aac, ptr %i.zy, align 32, !tbaa !32
  %i.aad = fadd <16 x float> %i.sk, %i.va
  %i.aae = fmul <16 x float> %i.ro, %i.aad        ; 3 uses
  %i.aaf = fmul <16 x float> %i.rp, %i.sl         ; 3 uses
  %i.aag = fmul <16 x float> %i.pf, %i.aae        ; 2 uses
  %i.aah = fmul <16 x float> %i.pg, %i.aaf        ; 2 uses
  %i.aai = fmul <16 x float> %i.ph, %i.aae        ; 2 uses
  %i.aaj = fmul <16 x float> %i.pi, %i.aaf        ; 2 uses
  %i.aak = fmul <16 x float> %i.pj, %i.aae        ; 2 uses
  %i.aal = fmul <16 x float> %i.pk, %i.aaf        ; 2 uses
  %i.aam = fadd <16 x float> %.sroa.04244.04998, %i.aag ; 2 uses
  %i.aan = fadd <16 x float> %.sroa.164251.04997, %i.aah ; 2 uses
  %i.aao = fadd <16 x float> %.sroa.04226.05000, %i.aai ; 2 uses
  %i.aap = fadd <16 x float> %.sroa.164233.04999, %i.aaj ; 2 uses
  %i.aaq = fadd <16 x float> %.sroa.04209.05002, %i.aak ; 2 uses
  %i.aar = fadd <16 x float> %.sroa.16.05001, %i.aal ; 2 uses
  %i.aas = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.oy ; 4 uses
  %i.aat = fadd <16 x float> %i.aah, %i.aag       ; 2 uses
  %i.aau = fadd <16 x float> %i.aaj, %i.aai       ; 2 uses
  %i.aav = fadd <16 x float> %i.aal, %i.aak       ; 2 uses
  %i.aaw = load <8 x float>, ptr %i.aas, align 32, !tbaa !32
  %i.aax = shufflevector <16 x float> %i.aat, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aay = shufflevector <16 x float> %i.aat, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaz = fadd <8 x float> %i.aax, %i.aay
  %i.aba = fsub <8 x float> %i.aaw, %i.aaz
  store <8 x float> %i.aba, ptr %i.aas, align 32, !tbaa !32
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aas, i64 32 ; 2 uses
  %i.abc = load <8 x float>, ptr %i.abb, align 32, !tbaa !32
  %i.abd = shufflevector <16 x float> %i.aau, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abe = shufflevector <16 x float> %i.aau, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abf = fadd <8 x float> %i.abd, %i.abe
  %i.abg = fsub <8 x float> %i.abc, %i.abf
  store <8 x float> %i.abg, ptr %i.abb, align 32, !tbaa !32
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aas, i64 64 ; 2 uses
  %i.abi = load <8 x float>, ptr %i.abh, align 32, !tbaa !32
  %i.abj = shufflevector <16 x float> %i.aav, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.abk = shufflevector <16 x float> %i.aav, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abl = fadd <8 x float> %i.abj, %i.abk
  %i.abm = fsub <8 x float> %i.abi, %i.abl
  store <8 x float> %i.abm, ptr %i.abh, align 32, !tbaa !32
  %indvars.iv.next5127 = add nsw i64 %indvars.iv5126, 1 ; 2 uses
  %exitcond5130.not = icmp eq i64 %indvars.iv.next5127, %wide.trip.count5129
  br i1 %exitcond5130.not, label %.loopexit, label %bb.d, !llvm.loop !17

.critedge.loopexit:                               ; preds = %bb.d
  %i.abn = trunc nsw i64 %indvars.iv5126 to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.sroa.164251.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.164251.04997, %.critedge.loopexit ] ; 2 uses
  %.sroa.04244.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.04244.04998, %.critedge.loopexit ] ; 2 uses
  %.sroa.164233.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.164233.04999, %.critedge.loopexit ] ; 2 uses
  %.sroa.04226.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.04226.05000, %.critedge.loopexit ] ; 2 uses
  %.sroa.16.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.16.05001, %.critedge.loopexit ] ; 2 uses
  %.sroa.04209.0.lcssa = phi <16 x float> [ zeroinitializer, %.preheader ], [ %.sroa.04209.05002, %.critedge.loopexit ] ; 2 uses
  %.0598.lcssa = phi i32 [ %i.df, %.preheader ], [ %i.abn, %.critedge.loopexit ] ; 2 uses
  %i.abo = icmp slt i32 %.0598.lcssa, %i.dh
  br i1 %i.abo, label %.lr.ph5041, label %.loopexit

.lr.ph5041:                                       ; preds = %.critedge
  %i.abp = sext i32 %.0598.lcssa to i64
  %wide.trip.count5140 = sext i32 %i.dh to i64
  br label %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630

_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630: ; preds = %.lr.ph5041, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630
  %indvars.iv5137 = phi i64 [ %i.abp, %.lr.ph5041 ], [ %indvars.iv.next5138, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630 ] ; 2 uses
  %.sroa.04209.15039 = phi <16 x float> [ %.sroa.04209.0.lcssa, %.lr.ph5041 ], [ %i.amu, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630 ]
  %.sroa.16.15038 = phi <16 x float> [ %.sroa.16.0.lcssa, %.lr.ph5041 ], [ %i.amv, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630 ]
  %.sroa.04226.15037 = phi <16 x float> [ %.sroa.04226.0.lcssa, %.lr.ph5041 ], [ %i.ams, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630 ]
  %.sroa.164233.15036 = phi <16 x float> [ %.sroa.164233.0.lcssa, %.lr.ph5041 ], [ %i.amt, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630 ]
  %.sroa.04244.15035 = phi <16 x float> [ %.sroa.04244.0.lcssa, %.lr.ph5041 ], [ %i.amq, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630 ]
  %.sroa.164251.15034 = phi <16 x float> [ %.sroa.164251.0.lcssa, %.lr.ph5041 ], [ %i.amr, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630 ]
  %i.abq = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %indvars.iv5137
  %i.abr = load i32, ptr %i.abq, align 4, !tbaa !102 ; 4 uses
  %i.abs = shl nsw i32 %i.abr, 3
  %i.abt = mul nsw i32 %i.abr, 24
  %i.abu = sext i32 %i.abt to i64                 ; 2 uses
  %i.abv = getelementptr [4 x i8], ptr %i.by, i64 %i.abu ; 3 uses
  %.val7415464 = load <8 x float>, ptr %i.abv, align 32, !tbaa !32
  %i.abw = shufflevector <8 x float> %.val7415464, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.abx = getelementptr i8, ptr %i.abv, i64 32
  %.val7425465 = load <8 x float>, ptr %i.abx, align 32, !tbaa !32
  %i.aby = shufflevector <8 x float> %.val7425465, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.abz = getelementptr i8, ptr %i.abv, i64 64
  %.val7435466 = load <8 x float>, ptr %i.abz, align 32, !tbaa !32
  %i.aca = shufflevector <8 x float> %.val7435466, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.acb = fsub <16 x float> %i.lf, %i.abw        ; 3 uses
  %i.acc = fsub <16 x float> %i.ll, %i.abw        ; 3 uses
  %i.acd = fsub <16 x float> %i.ls, %i.aby        ; 3 uses
  %i.ace = fsub <16 x float> %i.ly, %i.aby        ; 3 uses
  %i.acf = fsub <16 x float> %i.mf, %i.aca        ; 3 uses
  %i.acg = fsub <16 x float> %i.ml, %i.aca        ; 3 uses
  %i.ach = fmul <16 x float> %i.acb, %i.acb
  %i.aci = fmul <16 x float> %i.acd, %i.acd
  %i.acj = fadd <16 x float> %i.ach, %i.aci
  %i.ack = fmul <16 x float> %i.acf, %i.acf
  %i.acl = fadd <16 x float> %i.acj, %i.ack       ; 2 uses
  %i.acm = fmul <16 x float> %i.acc, %i.acc
  %i.acn = fmul <16 x float> %i.ace, %i.ace
  %i.aco = fadd <16 x float> %i.acm, %i.acn
  %i.acp = fmul <16 x float> %i.acg, %i.acg
  %i.acq = fadd <16 x float> %i.aco, %i.acp       ; 2 uses
  %i.acr = fcmp olt <16 x float> %i.acl, %i.bp    ; 3 uses
  %i.acs = fcmp olt <16 x float> %i.acq, %i.bp    ; 2 uses
  %i.act = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.acl, <16 x float> splat (float 3.820000e-07), i32 4) ; 5 uses
  %i.acu = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.acq, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.acv = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.act, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.acw = fmul <16 x float> %i.act, %i.acv
  %i.acx = fmul <16 x float> %i.acv, splat (float -5.000000e-01)
  %i.acy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.acw, <16 x float> %i.acv, <16 x float> splat (float -3.000000e+00))
  %i.acz = fmul <16 x float> %i.acx, %i.acy
  %i.ada = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.acu, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.adb = fmul <16 x float> %i.acu, %i.ada
  %i.adc = fmul <16 x float> %i.ada, splat (float -5.000000e-01)
  %i.add = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.adb, <16 x float> %i.ada, <16 x float> splat (float -3.000000e+00))
  %i.ade = fmul <16 x float> %i.adc, %i.add
  %i.adf = sext i32 %i.abs to i64                 ; 2 uses
  %i.adg = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.adf
  %.val7445467 = load <8 x float>, ptr %i.adg, align 32, !tbaa !32
  %i.adh = select <16 x i1> %i.acr, <16 x float> %i.acz, <16 x float> zeroinitializer ; 5 uses
  %i.adi = select <16 x i1> %i.acs, <16 x float> %i.ade, <16 x float> zeroinitializer ; 5 uses
  %i.adj = fmul <16 x float> %i.act, %i.adh       ; 2 uses
  %i.adk = fmul <16 x float> %i.acu, %i.adi       ; 2 uses
  %i.adl = fmul <16 x float> %i.ad, %i.adj        ; 2 uses
  %i.adm = fmul <16 x float> %i.ad, %i.adk        ; 2 uses
  %i.adn = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.adl, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.ado = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.adm, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.adp = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ai, <16 x i32> %i.adn, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.adq = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cz, <16 x i32> %i.adn, <16 x i1> splat (i1 true), i32 4)
  %i.adr = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ak, <16 x i32> %i.adn, <16 x i1> splat (i1 true), i32 4)
  %i.ads = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ai, <16 x i32> %i.ado, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.adt = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cz, <16 x i32> %i.ado, <16 x i1> splat (i1 true), i32 4)
  %i.adu = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ak, <16 x i32> %i.ado, <16 x i1> splat (i1 true), i32 4)
  %i.adv = shufflevector <8 x float> %.val7445467, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.adw = fmul <16 x float> %.sroa.04460.0, %i.adv ; 2 uses
  %i.adx = fmul <16 x float> %.sroa.74464.0, %i.adv ; 2 uses
  %i.ady = fmul <16 x float> %i.adh, %i.adh       ; 4 uses
  %i.adz = fmul <16 x float> %i.adi, %i.adi
  %i.aea = sitofp <16 x i32> %i.adn to <16 x float>
  %i.aeb = sitofp <16 x i32> %i.ado to <16 x float>
  %i.aec = fsub <16 x float> %i.adl, %i.aea       ; 2 uses
  %i.aed = fsub <16 x float> %i.adm, %i.aeb       ; 2 uses
  %i.aee = fsub <16 x float> %i.adq, %i.adp
  %i.aef = fsub <16 x float> %i.adt, %i.ads
  %i.aeg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aec, <16 x float> %i.aee, <16 x float> %i.adp) ; 2 uses
  %i.aeh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aed, <16 x float> %i.aef, <16 x float> %i.ads) ; 2 uses
  %i.aei = fneg <16 x float> %i.aeg
  %i.aej = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aei, <16 x float> %i.adj, <16 x float> %i.adh)
  %i.aek = fneg <16 x float> %i.aeh
  %i.ael = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aek, <16 x float> %i.adk, <16 x float> %i.adi)
  %i.aem = fmul <16 x float> %i.ag, %i.aec
  %i.aen = fadd <16 x float> %i.adp, %i.aeg
  %i.aeo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aem, <16 x float> %i.aen, <16 x float> %i.adr)
  %i.aep = fmul <16 x float> %i.ag, %i.aed
  %i.aeq = fadd <16 x float> %i.ads, %i.aeh
  %i.aer = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aep, <16 x float> %i.aeq, <16 x float> %i.adu)
  %i.aes = fmul <16 x float> %i.adw, %i.aej
  %i.aet = fmul <16 x float> %i.adx, %i.ael
  %i.aeu = fadd <16 x float> %i.aq, %i.aeo
  %i.aev = fadd <16 x float> %i.aq, %i.aer
  %i.aew = fsub <16 x float> %i.adh, %i.aeu
  %i.aex = fmul <16 x float> %i.adw, %i.aew
  %i.aey = fsub <16 x float> %i.adi, %i.aev
  %i.aez = fmul <16 x float> %i.adx, %i.aey
  %i.afa = select <16 x i1> %i.acr, <16 x float> %i.aex, <16 x float> zeroinitializer ; 2 uses
  %i.afb = select <16 x i1> %i.acs, <16 x float> %i.aez, <16 x float> zeroinitializer ; 2 uses
  %i.afc = fcmp olt <16 x float> %i.act, %i.bu    ; 2 uses
  %i.afd = shl nsw i32 %i.abr, 4
  %i.afe = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.adf
  %.val7684884.le = load <8 x i32>, ptr %i.afe, align 32, !tbaa !32 ; 2 uses
  %i.aff = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nf, <8 x i32> %.val7684884.le, <8 x i1> splat (i1 true), i32 8)
  %i.afg = bitcast <8 x double> %i.aff to <16 x float> ; 2 uses
  %i.afh = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nl, <8 x i32> %.val7684884.le, <8 x i1> splat (i1 true), i32 8)
  %i.afi = bitcast <8 x double> %i.afh to <16 x float> ; 2 uses
  %i.afj = shufflevector <16 x float> %i.afg, <16 x float> %i.afi, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.afk = shufflevector <16 x float> %i.afg, <16 x float> %i.afi, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.afl = fmul <16 x float> %i.ady, %i.ady
  %i.afm = fmul <16 x float> %i.ady, %i.afl       ; 6 uses
  %i.afn = fmul <16 x float> %i.afm, %i.afm
  %i.afo = fmul <16 x float> %i.afm, %i.afj       ; 2 uses
  %i.afp = fmul <16 x float> %i.afn, %i.afk       ; 2 uses
  %i.afq = fsub <16 x float> %i.afp, %i.afo
  %i.afr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.afj, <16 x float> %i.at, <16 x float> %i.afo)
  %i.afs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.afk, <16 x float> %i.aw, <16 x float> %i.afp)
  %i.aft = fmul <16 x float> %i.afr, splat (float f0xBE2AAAAB)
  %i.afu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.afs, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.aft)
  %i.afv = sext i32 %i.afd to i64
  %i.afw = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.afv
  %.val7455468 = load <8 x float>, ptr %i.afw, align 32, !tbaa !32
  %i.afx = shufflevector <8 x float> %.val7455468, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afy = fmul <16 x float> %i.od, %i.afx        ; 2 uses
  %i.afz = select <16 x i1> %i.acr, <16 x float> %i.act, <16 x float> zeroinitializer
  %i.aga = fmul <16 x float> %i.be, %i.afz        ; 3 uses
  %i.agb = bitcast <16 x float> %i.aga to <8 x i64>
  %i.agc = xor <8 x i64> %i.agb, splat (i64 -9223372034707292160)
  %i.agd = bitcast <8 x i64> %i.agc to <16 x float> ; 2 uses
  %i.age = fmul <16 x float> %i.agd, splat (float f0x3FB8AA3B) ; 2 uses
  %i.agf = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.age, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.agg = shl <16 x i32> %i.agf, splat (i32 23)
  %i.agh = add <16 x i32> %i.agg, splat (i32 1065353216)
  %i.agi = bitcast <16 x i32> %i.agh to <16 x float> ; 2 uses
  %i.agj = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.age, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.agk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.agj, <16 x float> splat (float f0xBF317200), <16 x float> %i.agd)
  %i.agl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.agj, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.agk) ; 7 uses
  %i.agm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.agl, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.agn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.agm, <16 x float> %i.agl, <16 x float> splat (float f0x3D2AAF4C))
  %i.ago = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.agn, <16 x float> %i.agl, <16 x float> splat (float f0x3E2AAA5E))
  %i.agp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ago, <16 x float> %i.agl, <16 x float> splat (float f0x3EFFFFFB))
  %i.agq = fmul <16 x float> %i.agl, %i.agl
  %i.agr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.agq, <16 x float> %i.agp, <16 x float> %i.agl)
  %i.ags = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.agr, <16 x float> %i.agi, <16 x float> %i.agi)
  %i.agt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aga, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.agu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.agt, <16 x float> %i.aga, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.agv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.afm, <16 x float> %i.agu, <16 x float> %i.bg)
  %i.agw = fneg <16 x float> %i.ags               ; 2 uses
  %i.agx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.agw, <16 x float> %i.agv, <16 x float> %i.afm)
  %i.agy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.afy, <16 x float> %i.agx, <16 x float> %i.afq)
  %i.agz = fmul <16 x float> %i.afy, splat (float f0x3E2AAAAB)
  %i.aha = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.agw, <16 x float> %i.agu, <16 x float> splat (float 1.000000e+00))
  %i.ahb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.afm, <16 x float> %i.aha, <16 x float> %i.bk)
  %i.ahc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.agz, <16 x float> %i.ahb, <16 x float> %i.afu)
  %i.ahd = select <16 x i1> %i.afc, <16 x float> %i.agy, <16 x float> zeroinitializer
  %i.ahe = select <16 x i1> %i.afc, <16 x float> %i.ahc, <16 x float> zeroinitializer ; 2 uses
  %i.ahf = load ptr, ptr %i.ci, align 8, !tbaa !93
  %i.ahg = shl nsw i32 %i.abr, 1
  %i.ahh = load i32, ptr %i.cx, align 8, !tbaa !129
  %i.ahi = sext i32 %i.ahg to i64
  %i.ahj = getelementptr inbounds [4 x i8], ptr %i.ahf, i64 %i.ahi
  %7 = load <2 x i32>, ptr %i.cy, align 4, !tbaa !94 ; 2 uses
  %i.ahk = load <2 x i32>, ptr %i.ahj, align 4, !tbaa !94 ; 2 uses
  %i.ahl = insertelement <2 x i32> poison, i32 %i.ahh, i64 0
  %i.ahm = shufflevector <2 x i32> %i.ahk, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ahn = shufflevector <2 x i32> %i.ahk, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aho = shufflevector <2 x i32> %i.ahl, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.ahp = ashr <4 x i32> %i.ahn, %i.aho
  %i.ahq = shufflevector <4 x i32> %i.ahp, <4 x i32> %i.ahm, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.ahr = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.ahs = and <4 x i32> %i.ahq, %i.ahr
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aht = mul nsw <4 x i32> %i.ahs, %8           ; 4 uses
  %i.ahu = load ptr, ptr %i.co, align 8, !tbaa !99 ; 2 uses
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !100 ; 4 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !100 ; 4 uses
  %i.ahy = shufflevector <16 x float> %i.afa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ahz = shufflevector <16 x float> %i.afa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aia = extractelement <4 x i32> %i.aht, i64 0
  %i.aib = sext i32 %i.aia to i64                 ; 6 uses
  %i.aic = getelementptr inbounds [4 x i8], ptr %i.ahv, i64 %i.aib ; 2 uses
  %i.aid = getelementptr inbounds [4 x i8], ptr %i.ahx, i64 %i.aib ; 2 uses
  %i.aie = load <8 x float>, ptr %i.aic, align 32, !tbaa !32
  %i.aif = fadd <8 x float> %i.ahy, %i.aie
  store <8 x float> %i.aif, ptr %i.aic, align 32, !tbaa !32
  %i.aig = load <8 x float>, ptr %i.aid, align 32, !tbaa !32
  %i.aih = fadd <8 x float> %i.aig, %i.ahz
  store <8 x float> %i.aih, ptr %i.aid, align 32, !tbaa !32
  %i.aii = extractelement <4 x i32> %i.aht, i64 1
  %i.aij = sext i32 %i.aii to i64                 ; 6 uses
  %i.aik = getelementptr inbounds [4 x i8], ptr %i.ahv, i64 %i.aij
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 32 ; 2 uses
  %i.aim = getelementptr inbounds [4 x i8], ptr %i.ahx, i64 %i.aij
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 32 ; 2 uses
  %i.aio = load <8 x float>, ptr %i.ail, align 32, !tbaa !32
  %i.aip = fadd <8 x float> %i.ahy, %i.aio
  store <8 x float> %i.aip, ptr %i.ail, align 32, !tbaa !32
  %i.aiq = load <8 x float>, ptr %i.ain, align 32, !tbaa !32
  %i.air = fadd <8 x float> %i.aiq, %i.ahz
  store <8 x float> %i.air, ptr %i.ain, align 32, !tbaa !32
  %i.ais = extractelement <4 x i32> %i.aht, i64 2
  %i.ait = sext i32 %i.ais to i64                 ; 6 uses
  %i.aiu = getelementptr inbounds [4 x i8], ptr %i.ahv, i64 %i.ait
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 64 ; 2 uses
  %i.aiw = getelementptr inbounds [4 x i8], ptr %i.ahx, i64 %i.ait
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 64 ; 2 uses
  %i.aiy = load <8 x float>, ptr %i.aiv, align 32, !tbaa !32
  %i.aiz = fadd <8 x float> %i.ahy, %i.aiy
  store <8 x float> %i.aiz, ptr %i.aiv, align 32, !tbaa !32
  %i.aja = load <8 x float>, ptr %i.aix, align 32, !tbaa !32
  %i.ajb = fadd <8 x float> %i.aja, %i.ahz
  store <8 x float> %i.ajb, ptr %i.aix, align 32, !tbaa !32
  %i.ajc = extractelement <4 x i32> %i.aht, i64 3
  %i.ajd = sext i32 %i.ajc to i64                 ; 6 uses
  %i.aje = getelementptr inbounds [4 x i8], ptr %i.ahv, i64 %i.ajd
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 96 ; 2 uses
  %i.ajg = getelementptr inbounds [4 x i8], ptr %i.ahx, i64 %i.ajd
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 96 ; 2 uses
  %i.aji = load <8 x float>, ptr %i.ajf, align 32, !tbaa !32
  %i.ajj = fadd <8 x float> %i.ahy, %i.aji
  store <8 x float> %i.ajj, ptr %i.ajf, align 32, !tbaa !32
  %i.ajk = load <8 x float>, ptr %i.ajh, align 32, !tbaa !32
  %i.ajl = fadd <8 x float> %i.ajk, %i.ahz
  store <8 x float> %i.ajl, ptr %i.ajh, align 32, !tbaa !32
  %i.ajm = load ptr, ptr %i.co, align 8, !tbaa !99 ; 2 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 16
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !100 ; 4 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajm, i64 24
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !100 ; 4 uses
  %i.ajr = shufflevector <16 x float> %i.afb, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ajs = shufflevector <16 x float> %i.afb, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ajt = getelementptr inbounds [4 x i8], ptr %i.ajo, i64 %i.aib ; 2 uses
  %i.aju = getelementptr inbounds [4 x i8], ptr %i.ajq, i64 %i.aib ; 2 uses
  %i.ajv = load <8 x float>, ptr %i.ajt, align 32, !tbaa !32
  %i.ajw = fadd <8 x float> %i.ajr, %i.ajv
  store <8 x float> %i.ajw, ptr %i.ajt, align 32, !tbaa !32
  %i.ajx = load <8 x float>, ptr %i.aju, align 32, !tbaa !32
  %i.ajy = fadd <8 x float> %i.ajx, %i.ajs
  store <8 x float> %i.ajy, ptr %i.aju, align 32, !tbaa !32
  %i.ajz = getelementptr inbounds [4 x i8], ptr %i.ajo, i64 %i.aij
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 32 ; 2 uses
  %i.akb = getelementptr inbounds [4 x i8], ptr %i.ajq, i64 %i.aij
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 32 ; 2 uses
  %i.akd = load <8 x float>, ptr %i.aka, align 32, !tbaa !32
  %i.ake = fadd <8 x float> %i.ajr, %i.akd
  store <8 x float> %i.ake, ptr %i.aka, align 32, !tbaa !32
  %i.akf = load <8 x float>, ptr %i.akc, align 32, !tbaa !32
  %i.akg = fadd <8 x float> %i.akf, %i.ajs
  store <8 x float> %i.akg, ptr %i.akc, align 32, !tbaa !32
  %i.akh = getelementptr inbounds [4 x i8], ptr %i.ajo, i64 %i.ait
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 64 ; 2 uses
  %i.akj = getelementptr inbounds [4 x i8], ptr %i.ajq, i64 %i.ait
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 64 ; 2 uses
  %i.akl = load <8 x float>, ptr %i.aki, align 32, !tbaa !32
  %i.akm = fadd <8 x float> %i.ajr, %i.akl
  store <8 x float> %i.akm, ptr %i.aki, align 32, !tbaa !32
  %i.akn = load <8 x float>, ptr %i.akk, align 32, !tbaa !32
  %i.ako = fadd <8 x float> %i.akn, %i.ajs
  store <8 x float> %i.ako, ptr %i.akk, align 32, !tbaa !32
  %i.akp = getelementptr inbounds [4 x i8], ptr %i.ajo, i64 %i.ajd
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 96 ; 2 uses
  %i.akr = getelementptr inbounds [4 x i8], ptr %i.ajq, i64 %i.ajd
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 96 ; 2 uses
  %i.akt = load <8 x float>, ptr %i.akq, align 32, !tbaa !32
  %i.aku = fadd <8 x float> %i.ajr, %i.akt
  store <8 x float> %i.aku, ptr %i.akq, align 32, !tbaa !32
  %i.akv = load <8 x float>, ptr %i.aks, align 32, !tbaa !32
  %i.akw = fadd <8 x float> %i.akv, %i.ajs
  store <8 x float> %i.akw, ptr %i.aks, align 32, !tbaa !32
  %i.akx = load ptr, ptr %i.cq, align 8, !tbaa !99 ; 2 uses
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !100 ; 4 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akx, i64 8
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !100 ; 4 uses
  %i.alb = shufflevector <16 x float> %i.ahe, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.alc = shufflevector <16 x float> %i.ahe, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ald = getelementptr inbounds [4 x i8], ptr %i.aky, i64 %i.aib ; 2 uses
  %i.ale = getelementptr inbounds [4 x i8], ptr %i.ala, i64 %i.aib ; 2 uses
  %i.alf = load <8 x float>, ptr %i.ald, align 32, !tbaa !32
  %i.alg = fadd <8 x float> %i.alb, %i.alf
  store <8 x float> %i.alg, ptr %i.ald, align 32, !tbaa !32
  %i.alh = load <8 x float>, ptr %i.ale, align 32, !tbaa !32
  %i.ali = fadd <8 x float> %i.alh, %i.alc
  store <8 x float> %i.ali, ptr %i.ale, align 32, !tbaa !32
  %i.alj = getelementptr inbounds [4 x i8], ptr %i.aky, i64 %i.aij
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 32 ; 2 uses
  %i.all = getelementptr inbounds [4 x i8], ptr %i.ala, i64 %i.aij
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 32 ; 2 uses
  %i.aln = load <8 x float>, ptr %i.alk, align 32, !tbaa !32
  %i.alo = fadd <8 x float> %i.alb, %i.aln
  store <8 x float> %i.alo, ptr %i.alk, align 32, !tbaa !32
  %i.alp = load <8 x float>, ptr %i.alm, align 32, !tbaa !32
  %i.alq = fadd <8 x float> %i.alp, %i.alc
  store <8 x float> %i.alq, ptr %i.alm, align 32, !tbaa !32
  %i.alr = getelementptr inbounds [4 x i8], ptr %i.aky, i64 %i.ait
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 64 ; 2 uses
  %i.alt = getelementptr inbounds [4 x i8], ptr %i.ala, i64 %i.ait
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 64 ; 2 uses
  %i.alv = load <8 x float>, ptr %i.als, align 32, !tbaa !32
  %i.alw = fadd <8 x float> %i.alb, %i.alv
  store <8 x float> %i.alw, ptr %i.als, align 32, !tbaa !32
  %i.alx = load <8 x float>, ptr %i.alu, align 32, !tbaa !32
  %i.aly = fadd <8 x float> %i.alx, %i.alc
  store <8 x float> %i.aly, ptr %i.alu, align 32, !tbaa !32
  %i.alz = getelementptr inbounds [4 x i8], ptr %i.aky, i64 %i.ajd
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 96 ; 2 uses
  %i.amb = getelementptr inbounds [4 x i8], ptr %i.ala, i64 %i.ajd
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 96 ; 2 uses
  %i.amd = load <8 x float>, ptr %i.ama, align 32, !tbaa !32
  %i.ame = fadd <8 x float> %i.alb, %i.amd
  store <8 x float> %i.ame, ptr %i.ama, align 32, !tbaa !32
  %i.amf = load <8 x float>, ptr %i.amc, align 32, !tbaa !32
  %i.amg = fadd <8 x float> %i.amf, %i.alc
  store <8 x float> %i.amg, ptr %i.amc, align 32, !tbaa !32
  %i.amh = fadd <16 x float> %i.aes, %i.ahd
  %i.ami = fmul <16 x float> %i.ady, %i.amh       ; 3 uses
  %i.amj = fmul <16 x float> %i.adz, %i.aet       ; 3 uses
  %i.amk = fmul <16 x float> %i.acb, %i.ami       ; 2 uses
  %i.aml = fmul <16 x float> %i.acc, %i.amj       ; 2 uses
  %i.amm = fmul <16 x float> %i.acd, %i.ami       ; 2 uses
  %i.amn = fmul <16 x float> %i.ace, %i.amj       ; 2 uses
  %i.amo = fmul <16 x float> %i.acf, %i.ami       ; 2 uses
  %i.amp = fmul <16 x float> %i.acg, %i.amj       ; 2 uses
  %i.amq = fadd <16 x float> %.sroa.04244.15035, %i.amk ; 2 uses
  %i.amr = fadd <16 x float> %.sroa.164251.15034, %i.aml ; 2 uses
  %i.ams = fadd <16 x float> %.sroa.04226.15037, %i.amm ; 2 uses
  %i.amt = fadd <16 x float> %.sroa.164233.15036, %i.amn ; 2 uses
  %i.amu = fadd <16 x float> %.sroa.04209.15039, %i.amo ; 2 uses
  %i.amv = fadd <16 x float> %.sroa.16.15038, %i.amp ; 2 uses
  %i.amw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.abu ; 4 uses
  %i.amx = fadd <16 x float> %i.aml, %i.amk       ; 2 uses
  %i.amy = fadd <16 x float> %i.amn, %i.amm       ; 2 uses
  %i.amz = fadd <16 x float> %i.amp, %i.amo       ; 2 uses
  %i.ana = load <8 x float>, ptr %i.amw, align 32, !tbaa !32
  %i.anb = shufflevector <16 x float> %i.amx, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.anc = shufflevector <16 x float> %i.amx, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.and = fadd <8 x float> %i.anb, %i.anc
  %i.ane = fsub <8 x float> %i.ana, %i.and
  store <8 x float> %i.ane, ptr %i.amw, align 32, !tbaa !32
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amw, i64 32 ; 2 uses
  %i.ang = load <8 x float>, ptr %i.anf, align 32, !tbaa !32
  %i.anh = shufflevector <16 x float> %i.amy, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ani = shufflevector <16 x float> %i.amy, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anj = fadd <8 x float> %i.anh, %i.ani
  %i.ank = fsub <8 x float> %i.ang, %i.anj
  store <8 x float> %i.ank, ptr %i.anf, align 32, !tbaa !32
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amw, i64 64 ; 2 uses
  %i.anm = load <8 x float>, ptr %i.anl, align 32, !tbaa !32
  %i.ann = shufflevector <16 x float> %i.amz, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ano = shufflevector <16 x float> %i.amz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anp = fadd <8 x float> %i.ann, %i.ano
  %i.anq = fsub <8 x float> %i.anm, %i.anp
  store <8 x float> %i.anq, ptr %i.anl, align 32, !tbaa !32
  %indvars.iv.next5138 = add nsw i64 %indvars.iv5137, 1 ; 2 uses
  %exitcond5141.not = icmp eq i64 %indvars.iv.next5138, %wide.trip.count5140
  br i1 %exitcond5141.not, label %.loopexit, label %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630, !llvm.loop !18

bb.h:                                             ; preds = %.preheader4890
  br i1 %i.ek, label %.preheader4887, label %.preheader4889

.preheader4889:                                   ; preds = %bb.h
  br i1 %i.oj, label %.lr.ph, label %.critedge5

.lr.ph:                                           ; preds = %.preheader4889
  %wide.trip.count = sext i32 %i.dh to i64
  br label %bb.m

.preheader4887:                                   ; preds = %bb.h
  br i1 %i.oj, label %.lr.ph4949, label %.critedge3

.lr.ph4949:                                       ; preds = %.preheader4887
  %wide.trip.count5101 = sext i32 %i.dh to i64
  br label %bb.i
end_hunk_1
begin_hunk_2_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4894.preheader
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615

bb.k:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit610
  %i.apk = or disjoint i32 %i.apg, 1
  %i.apl = icmp eq i32 %i.apk, %i.dk
  br i1 %i.apl, label %bb.l, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615

bb.l:                                             ; preds = %bb.k
  %i.apm = and i16 %i.apd, %i.x
  %i.apn = and i16 %i.apf, %i.y
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.104864.0 = phi i16 [ %i.apj, %bb.j ], [ %i.apn, %bb.l ], [ %i.apf, %bb.k ]
  %.sroa.04861.0 = phi i16 [ %i.api, %bb.j ], [ %i.apm, %bb.l ], [ %i.apd, %bb.k ]
  %i.apo = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.aow, <16 x float> splat (float 3.820000e-07), i32 4) ; 5 uses
  %i.app = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.apb, <16 x float> splat (float 3.820000e-07), i32 4) ; 5 uses
  %i.apq = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.apo, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.apr = fmul <16 x float> %i.apo, %i.apq
  %i.aps = fmul <16 x float> %i.apq, splat (float -5.000000e-01)
  %i.apt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apr, <16 x float> %i.apq, <16 x float> splat (float -3.000000e+00))
  %i.apu = fmul <16 x float> %i.aps, %i.apt
  %i.apv = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.app, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.apw = fmul <16 x float> %i.app, %i.apv
  %i.apx = fmul <16 x float> %i.apv, splat (float -5.000000e-01)
  %i.apy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.apw, <16 x float> %i.apv, <16 x float> splat (float -3.000000e+00))
  %i.apz = fmul <16 x float> %i.apx, %i.apy
  %i.aqa = sext i32 %i.aod to i64                 ; 2 uses
  %i.aqb = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.aqa
  %.val7495452 = load <8 x float>, ptr %i.aqb, align 32, !tbaa !32
  %i.aqc = bitcast i16 %.sroa.04861.0 to <16 x i1> ; 3 uses
  %i.aqd = select <16 x i1> %i.aqc, <16 x float> %i.apu, <16 x float> zeroinitializer ; 4 uses
  %i.aqe = bitcast i16 %.sroa.104864.0 to <16 x i1> ; 3 uses
  %i.aqf = select <16 x i1> %i.aqe, <16 x float> %i.apz, <16 x float> zeroinitializer ; 4 uses
  %i.aqg = fmul <16 x float> %i.apo, %i.aqd       ; 2 uses
  %i.aqh = fmul <16 x float> %i.app, %i.aqf       ; 2 uses
  %i.aqi = fmul <16 x float> %i.ad, %i.aqg        ; 2 uses
  %i.aqj = fmul <16 x float> %i.ad, %i.aqh        ; 2 uses
  %i.aqk = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.aqi, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.aql = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.aqj, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.aqm = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ai, <16 x i32> %i.aqk, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.aqn = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cz, <16 x i32> %i.aqk, <16 x i1> splat (i1 true), i32 4)
  %i.aqo = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ak, <16 x i32> %i.aqk, <16 x i1> splat (i1 true), i32 4)
  %i.aqp = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ai, <16 x i32> %i.aql, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.aqq = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cz, <16 x i32> %i.aql, <16 x i1> splat (i1 true), i32 4)
  %i.aqr = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ak, <16 x i32> %i.aql, <16 x i1> splat (i1 true), i32 4)
  %i.aqs = fsub <16 x float> %i.aqn, %i.aqm
  %i.aqt = fsub <16 x float> %i.aqq, %i.aqp
  %i.aqu = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.aqa
  %.val7674876 = load <8 x i32>, ptr %i.aqu, align 32, !tbaa !32 ; 4 uses
  %i.aqv = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nf, <8 x i32> %.val7674876, <8 x i1> splat (i1 true), i32 8)
  %i.aqw = bitcast <8 x double> %i.aqv to <16 x float> ; 2 uses
  %i.aqx = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nl, <8 x i32> %.val7674876, <8 x i1> splat (i1 true), i32 8)
  %i.aqy = bitcast <8 x double> %i.aqx to <16 x float> ; 2 uses
  %i.aqz = shufflevector <16 x float> %i.aqw, <16 x float> %i.aqy, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.ara = shufflevector <16 x float> %i.aqw, <16 x float> %i.aqy, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.arb = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nr, <8 x i32> %.val7674876, <8 x i1> splat (i1 true), i32 8)
  %i.arc = bitcast <8 x double> %i.arb to <16 x float> ; 2 uses
  %i.ard = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nx, <8 x i32> %.val7674876, <8 x i1> splat (i1 true), i32 8)
  %i.are = bitcast <8 x double> %i.ard to <16 x float> ; 2 uses
  %i.arf = shufflevector <16 x float> %i.arc, <16 x float> %i.are, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.arg = shufflevector <16 x float> %i.arc, <16 x float> %i.are, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.arh = shufflevector <8 x float> %.val7495452, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ari = fmul <16 x float> %.sroa.04460.0, %i.arh ; 2 uses
  %i.arj = fmul <16 x float> %.sroa.74464.0, %i.arh ; 2 uses
  %i.ark = fmul <16 x float> %i.aqd, %i.aqd       ; 4 uses
  %i.arl = fmul <16 x float> %i.aqf, %i.aqf       ; 4 uses
  %i.arm = select <16 x i1> %.not5291, <16 x float> zeroinitializer, <16 x float> %i.aqd ; 2 uses
  %i.arn = select <16 x i1> %.not5292, <16 x float> zeroinitializer, <16 x float> %i.aqf ; 2 uses
  %i.aro = sitofp <16 x i32> %i.aqk to <16 x float>
  %i.arp = sitofp <16 x i32> %i.aql to <16 x float>
  %i.arq = fsub <16 x float> %i.aqi, %i.aro       ; 2 uses
  %i.arr = fsub <16 x float> %i.aqj, %i.arp       ; 2 uses
  %i.ars = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arq, <16 x float> %i.aqs, <16 x float> %i.aqm) ; 2 uses
  %i.art = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arr, <16 x float> %i.aqt, <16 x float> %i.aqp) ; 2 uses
  %i.aru = fneg <16 x float> %i.ars
  %i.arv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aru, <16 x float> %i.aqg, <16 x float> %i.arm)
  %i.arw = fneg <16 x float> %i.art
  %i.arx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arw, <16 x float> %i.aqh, <16 x float> %i.arn)
  %i.ary = fmul <16 x float> %i.ag, %i.arq
  %i.arz = fadd <16 x float> %i.aqm, %i.ars
  %i.asa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ary, <16 x float> %i.arz, <16 x float> %i.aqo)
  %i.asb = fmul <16 x float> %i.ag, %i.arr
  %i.asc = fadd <16 x float> %i.aqp, %i.art
  %i.asd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asb, <16 x float> %i.asc, <16 x float> %i.aqr)
  %i.ase = fmul <16 x float> %i.ari, %i.arv
  %i.asf = fmul <16 x float> %i.arj, %i.arx
  %i.asg = select <16 x i1> %.not5291, <16 x float> zeroinitializer, <16 x float> %i.aq
  %i.ash = fadd <16 x float> %i.asg, %i.asa
  %i.asi = select <16 x i1> %.not5292, <16 x float> zeroinitializer, <16 x float> %i.aq
  %i.asj = fadd <16 x float> %i.asi, %i.asd
  %i.ask = fsub <16 x float> %i.arm, %i.ash
  %i.asl = fmul <16 x float> %i.ari, %i.ask
  %i.asm = fsub <16 x float> %i.arn, %i.asj
  %i.asn = fmul <16 x float> %i.arj, %i.asm
  %i.aso = select <16 x i1> %i.aqc, <16 x float> %i.asl, <16 x float> zeroinitializer ; 2 uses
  %i.asp = select <16 x i1> %i.aqe, <16 x float> %i.asn, <16 x float> zeroinitializer ; 2 uses
  %i.asq = fcmp olt <16 x float> %i.apo, %i.bu    ; 2 uses
  %i.asr = fcmp olt <16 x float> %i.app, %i.bu    ; 2 uses
  %i.ass = shl nsw i32 %i.anw, 4
  %i.ast = fmul <16 x float> %i.ark, %i.ark
  %i.asu = fmul <16 x float> %i.ark, %i.ast       ; 4 uses
  %i.asv = fmul <16 x float> %i.arl, %i.arl
  %i.asw = fmul <16 x float> %i.arl, %i.asv       ; 4 uses
  %i.asx = select <16 x i1> %.not5291, <16 x float> zeroinitializer, <16 x float> %i.asu ; 3 uses
  %i.asy = select <16 x i1> %.not5292, <16 x float> zeroinitializer, <16 x float> %i.asw ; 3 uses
  %i.asz = fmul <16 x float> %i.asx, %i.asx
  %i.ata = fmul <16 x float> %i.asy, %i.asy
  %i.atb = fmul <16 x float> %i.asx, %i.aqz       ; 2 uses
  %i.atc = fmul <16 x float> %i.asy, %i.arf       ; 2 uses
  %i.atd = fmul <16 x float> %i.asz, %i.ara       ; 2 uses
  %i.ate = fmul <16 x float> %i.ata, %i.arg       ; 2 uses
  %i.atf = fsub <16 x float> %i.atd, %i.atb
  %i.atg = fsub <16 x float> %i.ate, %i.atc
  %i.ath = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aqz, <16 x float> %i.at, <16 x float> %i.atb)
  %i.ati = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arf, <16 x float> %i.at, <16 x float> %i.atc)
  %i.atj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ara, <16 x float> %i.aw, <16 x float> %i.atd)
  %i.atk = fmul <16 x float> %i.ath, splat (float f0xBE2AAAAB)
  %i.atl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atj, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.atk)
  %i.atm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.arg, <16 x float> %i.aw, <16 x float> %i.ate)
  %i.atn = fmul <16 x float> %i.ati, splat (float f0xBE2AAAAB)
  %i.ato = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atm, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.atn)
  %i.atp = select <16 x i1> %.not5291, <16 x float> zeroinitializer, <16 x float> %i.atl
  %i.atq = select <16 x i1> %.not5292, <16 x float> zeroinitializer, <16 x float> %i.ato
  %i.atr = sext i32 %i.ass to i64
  %i.ats = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.atr
  %.val7505453 = load <8 x float>, ptr %i.ats, align 32, !tbaa !32
  %i.att = shufflevector <8 x float> %.val7505453, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.atu = fmul <16 x float> %i.od, %i.att        ; 2 uses
  %i.atv = fmul <16 x float> %i.oi, %i.att        ; 2 uses
  %i.atw = select <16 x i1> %i.aqc, <16 x float> %i.apo, <16 x float> zeroinitializer
  %i.atx = fmul <16 x float> %i.be, %i.atw        ; 3 uses
  %i.aty = bitcast <16 x float> %i.atx to <8 x i64>
  %i.atz = select <16 x i1> %i.aqe, <16 x float> %i.app, <16 x float> zeroinitializer
  %i.aua = fmul <16 x float> %i.be, %i.atz        ; 3 uses
  %i.aub = bitcast <16 x float> %i.aua to <8 x i64>
  %i.auc = xor <8 x i64> %i.aty, splat (i64 -9223372034707292160)
  %i.aud = bitcast <8 x i64> %i.auc to <16 x float> ; 2 uses
  %i.aue = fmul <16 x float> %i.aud, splat (float f0x3FB8AA3B) ; 2 uses
  %i.auf = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.aue, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aug = shl <16 x i32> %i.auf, splat (i32 23)
  %i.auh = add <16 x i32> %i.aug, splat (i32 1065353216)
  %i.aui = bitcast <16 x i32> %i.auh to <16 x float> ; 2 uses
  %i.auj = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aue, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.auk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auj, <16 x float> splat (float f0xBF317200), <16 x float> %i.aud)
  %i.aul = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auj, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.auk) ; 7 uses
  %i.aum = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aul, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.aun = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aum, <16 x float> %i.aul, <16 x float> splat (float f0x3D2AAF4C))
  %i.auo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aun, <16 x float> %i.aul, <16 x float> splat (float f0x3E2AAA5E))
  %i.aup = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auo, <16 x float> %i.aul, <16 x float> splat (float f0x3EFFFFFB))
  %i.auq = fmul <16 x float> %i.aul, %i.aul
  %i.aur = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auq, <16 x float> %i.aup, <16 x float> %i.aul)
  %i.aus = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aur, <16 x float> %i.aui, <16 x float> %i.aui)
  %i.aut = xor <8 x i64> %i.aub, splat (i64 -9223372034707292160)
  %i.auu = bitcast <8 x i64> %i.aut to <16 x float> ; 2 uses
  %i.auv = fmul <16 x float> %i.auu, splat (float f0x3FB8AA3B) ; 2 uses
  %i.auw = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.auv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aux = shl <16 x i32> %i.auw, splat (i32 23)
  %i.auy = add <16 x i32> %i.aux, splat (i32 1065353216)
  %i.auz = bitcast <16 x i32> %i.auy to <16 x float> ; 2 uses
  %i.ava = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.auv, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.avb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ava, <16 x float> splat (float f0xBF317200), <16 x float> %i.auu)
  %i.avc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ava, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.avb) ; 7 uses
  %i.avd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avc, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.ave = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avd, <16 x float> %i.avc, <16 x float> splat (float f0x3D2AAF4C))
  %i.avf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ave, <16 x float> %i.avc, <16 x float> splat (float f0x3E2AAA5E))
  %i.avg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avf, <16 x float> %i.avc, <16 x float> splat (float f0x3EFFFFFB))
  %i.avh = fmul <16 x float> %i.avc, %i.avc
  %i.avi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avh, <16 x float> %i.avg, <16 x float> %i.avc)
  %i.avj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avi, <16 x float> %i.auz, <16 x float> %i.auz)
  %i.avk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atx, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.avl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avk, <16 x float> %i.atx, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.avm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aua, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.avn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avm, <16 x float> %i.aua, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.avo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asu, <16 x float> %i.avl, <16 x float> %i.bg)
  %i.avp = fneg <16 x float> %i.aus               ; 2 uses
  %i.avq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avp, <16 x float> %i.avo, <16 x float> %i.asu)
  %i.avr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atu, <16 x float> %i.avq, <16 x float> %i.atf)
  %i.avs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asw, <16 x float> %i.avn, <16 x float> %i.bg)
  %i.avt = fneg <16 x float> %i.avj               ; 2 uses
  %i.avu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avt, <16 x float> %i.avs, <16 x float> %i.asw)
  %i.avv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atv, <16 x float> %i.avu, <16 x float> %i.atg)
  %i.avw = select <16 x i1> %.not5291, <16 x float> zeroinitializer, <16 x float> %i.bk
  %i.avx = select <16 x i1> %.not5292, <16 x float> zeroinitializer, <16 x float> %i.bk
  %i.avy = fmul <16 x float> %i.atu, splat (float f0x3E2AAAAB)
  %i.avz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avp, <16 x float> %i.avl, <16 x float> splat (float 1.000000e+00))
  %i.awa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asu, <16 x float> %i.avz, <16 x float> %i.avw)
  %i.awb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avy, <16 x float> %i.awa, <16 x float> %i.atp)
  %i.awc = fmul <16 x float> %i.atv, splat (float f0x3E2AAAAB)
  %i.awd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avt, <16 x float> %i.avn, <16 x float> splat (float 1.000000e+00))
  %i.awe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asw, <16 x float> %i.awd, <16 x float> %i.avx)
  %i.awf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.awc, <16 x float> %i.awe, <16 x float> %i.atq)
  %i.awg = select <16 x i1> %i.asq, <16 x float> %i.avr, <16 x float> zeroinitializer
  %i.awh = select <16 x i1> %i.asr, <16 x float> %i.avv, <16 x float> zeroinitializer
  %i.awi = select <16 x i1> %i.asq, <16 x float> %i.awb, <16 x float> zeroinitializer ; 2 uses
  %i.awj = select <16 x i1> %i.asr, <16 x float> %i.awf, <16 x float> zeroinitializer ; 2 uses
  %i.awk = load ptr, ptr %i.ci, align 8, !tbaa !93
  %i.awl = load i32, ptr %i.cx, align 8, !tbaa !129
  %i.awm = sext i32 %i.apg to i64
  %i.awn = getelementptr inbounds [4 x i8], ptr %i.awk, i64 %i.awm
  %9 = load <2 x i32>, ptr %i.cy, align 4, !tbaa !94 ; 2 uses
  %i.awo = load <2 x i32>, ptr %i.awn, align 4, !tbaa !94 ; 2 uses
  %i.awp = insertelement <2 x i32> poison, i32 %i.awl, i64 0
  %i.awq = shufflevector <2 x i32> %i.awo, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.awr = shufflevector <2 x i32> %i.awo, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aws = shufflevector <2 x i32> %i.awp, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.awt = ashr <4 x i32> %i.awr, %i.aws
  %i.awu = shufflevector <4 x i32> %i.awt, <4 x i32> %i.awq, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.awv = shufflevector <2 x i32> %9, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.aww = and <4 x i32> %i.awu, %i.awv
  %10 = shufflevector <2 x i32> %9, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.awx = mul nsw <4 x i32> %i.aww, %10          ; 4 uses
  %i.awy = load ptr, ptr %i.co, align 8, !tbaa !99 ; 2 uses
  %i.awz = load ptr, ptr %i.awy, align 8, !tbaa !100 ; 4 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awy, i64 8
  %i.axb = load ptr, ptr %i.axa, align 8, !tbaa !100 ; 4 uses
  %i.axc = shufflevector <16 x float> %i.aso, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.axd = shufflevector <16 x float> %i.aso, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.axe = extractelement <4 x i32> %i.awx, i64 0
  %i.axf = sext i32 %i.axe to i64                 ; 8 uses
  %i.axg = getelementptr inbounds [4 x i8], ptr %i.awz, i64 %i.axf ; 2 uses
  %i.axh = getelementptr inbounds [4 x i8], ptr %i.axb, i64 %i.axf ; 2 uses
  %i.axi = load <8 x float>, ptr %i.axg, align 32, !tbaa !32
  %i.axj = fadd <8 x float> %i.axc, %i.axi
  store <8 x float> %i.axj, ptr %i.axg, align 32, !tbaa !32
  %i.axk = load <8 x float>, ptr %i.axh, align 32, !tbaa !32
  %i.axl = fadd <8 x float> %i.axk, %i.axd
  store <8 x float> %i.axl, ptr %i.axh, align 32, !tbaa !32
  %i.axm = extractelement <4 x i32> %i.awx, i64 1
  %i.axn = sext i32 %i.axm to i64                 ; 8 uses
  %i.axo = getelementptr inbounds [4 x i8], ptr %i.awz, i64 %i.axn
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 32 ; 2 uses
  %i.axq = getelementptr inbounds [4 x i8], ptr %i.axb, i64 %i.axn
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axq, i64 32 ; 2 uses
  %i.axs = load <8 x float>, ptr %i.axp, align 32, !tbaa !32
  %i.axt = fadd <8 x float> %i.axc, %i.axs
  store <8 x float> %i.axt, ptr %i.axp, align 32, !tbaa !32
  %i.axu = load <8 x float>, ptr %i.axr, align 32, !tbaa !32
  %i.axv = fadd <8 x float> %i.axu, %i.axd
  store <8 x float> %i.axv, ptr %i.axr, align 32, !tbaa !32
  %i.axw = extractelement <4 x i32> %i.awx, i64 2
  %i.axx = sext i32 %i.axw to i64                 ; 8 uses
  %i.axy = getelementptr inbounds [4 x i8], ptr %i.awz, i64 %i.axx
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 64 ; 2 uses
  %i.aya = getelementptr inbounds [4 x i8], ptr %i.axb, i64 %i.axx
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 64 ; 2 uses
  %i.ayc = load <8 x float>, ptr %i.axz, align 32, !tbaa !32
  %i.ayd = fadd <8 x float> %i.axc, %i.ayc
  store <8 x float> %i.ayd, ptr %i.axz, align 32, !tbaa !32
  %i.aye = load <8 x float>, ptr %i.ayb, align 32, !tbaa !32
  %i.ayf = fadd <8 x float> %i.aye, %i.axd
  store <8 x float> %i.ayf, ptr %i.ayb, align 32, !tbaa !32
  %i.ayg = extractelement <4 x i32> %i.awx, i64 3
  %i.ayh = sext i32 %i.ayg to i64                 ; 8 uses
  %i.ayi = getelementptr inbounds [4 x i8], ptr %i.awz, i64 %i.ayh
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 96 ; 2 uses
  %i.ayk = getelementptr inbounds [4 x i8], ptr %i.axb, i64 %i.ayh
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 96 ; 2 uses
  %i.aym = load <8 x float>, ptr %i.ayj, align 32, !tbaa !32
  %i.ayn = fadd <8 x float> %i.axc, %i.aym
  store <8 x float> %i.ayn, ptr %i.ayj, align 32, !tbaa !32
  %i.ayo = load <8 x float>, ptr %i.ayl, align 32, !tbaa !32
  %i.ayp = fadd <8 x float> %i.ayo, %i.axd
  store <8 x float> %i.ayp, ptr %i.ayl, align 32, !tbaa !32
  %i.ayq = load ptr, ptr %i.co, align 8, !tbaa !99 ; 2 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 16
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !100 ; 4 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayq, i64 24
  %i.ayu = load ptr, ptr %i.ayt, align 8, !tbaa !100 ; 4 uses
  %i.ayv = shufflevector <16 x float> %i.asp, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ayw = shufflevector <16 x float> %i.asp, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ayx = getelementptr inbounds [4 x i8], ptr %i.ays, i64 %i.axf ; 2 uses
  %i.ayy = getelementptr inbounds [4 x i8], ptr %i.ayu, i64 %i.axf ; 2 uses
  %i.ayz = load <8 x float>, ptr %i.ayx, align 32, !tbaa !32
  %i.aza = fadd <8 x float> %i.ayv, %i.ayz
  store <8 x float> %i.aza, ptr %i.ayx, align 32, !tbaa !32
  %i.azb = load <8 x float>, ptr %i.ayy, align 32, !tbaa !32
  %i.azc = fadd <8 x float> %i.azb, %i.ayw
  store <8 x float> %i.azc, ptr %i.ayy, align 32, !tbaa !32
  %i.azd = getelementptr inbounds [4 x i8], ptr %i.ays, i64 %i.axn
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 32 ; 2 uses
  %i.azf = getelementptr inbounds [4 x i8], ptr %i.ayu, i64 %i.axn
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azf, i64 32 ; 2 uses
  %i.azh = load <8 x float>, ptr %i.aze, align 32, !tbaa !32
  %i.azi = fadd <8 x float> %i.ayv, %i.azh
  store <8 x float> %i.azi, ptr %i.aze, align 32, !tbaa !32
  %i.azj = load <8 x float>, ptr %i.azg, align 32, !tbaa !32
  %i.azk = fadd <8 x float> %i.azj, %i.ayw
  store <8 x float> %i.azk, ptr %i.azg, align 32, !tbaa !32
  %i.azl = getelementptr inbounds [4 x i8], ptr %i.ays, i64 %i.axx
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 64 ; 2 uses
  %i.azn = getelementptr inbounds [4 x i8], ptr %i.ayu, i64 %i.axx
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 64 ; 2 uses
  %i.azp = load <8 x float>, ptr %i.azm, align 32, !tbaa !32
  %i.azq = fadd <8 x float> %i.ayv, %i.azp
  store <8 x float> %i.azq, ptr %i.azm, align 32, !tbaa !32
  %i.azr = load <8 x float>, ptr %i.azo, align 32, !tbaa !32
  %i.azs = fadd <8 x float> %i.azr, %i.ayw
  store <8 x float> %i.azs, ptr %i.azo, align 32, !tbaa !32
  %i.azt = getelementptr inbounds [4 x i8], ptr %i.ays, i64 %i.ayh
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 96 ; 2 uses
  %i.azv = getelementptr inbounds [4 x i8], ptr %i.ayu, i64 %i.ayh
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 96 ; 2 uses
  %i.azx = load <8 x float>, ptr %i.azu, align 32, !tbaa !32
  %i.azy = fadd <8 x float> %i.ayv, %i.azx
  store <8 x float> %i.azy, ptr %i.azu, align 32, !tbaa !32
  %i.azz = load <8 x float>, ptr %i.azw, align 32, !tbaa !32
  %i.baa = fadd <8 x float> %i.azz, %i.ayw
  store <8 x float> %i.baa, ptr %i.azw, align 32, !tbaa !32
  %i.bab = load ptr, ptr %i.cq, align 8, !tbaa !99 ; 2 uses
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !100 ; 4 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bab, i64 8
  %i.bae = load ptr, ptr %i.bad, align 8, !tbaa !100 ; 4 uses
  %i.baf = shufflevector <16 x float> %i.awi, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bag = shufflevector <16 x float> %i.awi, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bah = getelementptr inbounds [4 x i8], ptr %i.bac, i64 %i.axf ; 2 uses
  %i.bai = getelementptr inbounds [4 x i8], ptr %i.bae, i64 %i.axf ; 2 uses
  %i.baj = load <8 x float>, ptr %i.bah, align 32, !tbaa !32
  %i.bak = fadd <8 x float> %i.baf, %i.baj
  store <8 x float> %i.bak, ptr %i.bah, align 32, !tbaa !32
  %i.bal = load <8 x float>, ptr %i.bai, align 32, !tbaa !32
  %i.bam = fadd <8 x float> %i.bal, %i.bag
  store <8 x float> %i.bam, ptr %i.bai, align 32, !tbaa !32
  %i.ban = getelementptr inbounds [4 x i8], ptr %i.bac, i64 %i.axn
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 32 ; 2 uses
  %i.bap = getelementptr inbounds [4 x i8], ptr %i.bae, i64 %i.axn
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bap, i64 32 ; 2 uses
  %i.bar = load <8 x float>, ptr %i.bao, align 32, !tbaa !32
  %i.bas = fadd <8 x float> %i.baf, %i.bar
  store <8 x float> %i.bas, ptr %i.bao, align 32, !tbaa !32
  %i.bat = load <8 x float>, ptr %i.baq, align 32, !tbaa !32
  %i.bau = fadd <8 x float> %i.bat, %i.bag
  store <8 x float> %i.bau, ptr %i.baq, align 32, !tbaa !32
  %i.bav = getelementptr inbounds [4 x i8], ptr %i.bac, i64 %i.axx
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bav, i64 64 ; 2 uses
  %i.bax = getelementptr inbounds [4 x i8], ptr %i.bae, i64 %i.axx
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 64 ; 2 uses
  %i.baz = load <8 x float>, ptr %i.baw, align 32, !tbaa !32
  %i.bba = fadd <8 x float> %i.baf, %i.baz
  store <8 x float> %i.bba, ptr %i.baw, align 32, !tbaa !32
  %i.bbb = load <8 x float>, ptr %i.bay, align 32, !tbaa !32
  %i.bbc = fadd <8 x float> %i.bbb, %i.bag
  store <8 x float> %i.bbc, ptr %i.bay, align 32, !tbaa !32
  %i.bbd = getelementptr inbounds [4 x i8], ptr %i.bac, i64 %i.ayh
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbd, i64 96 ; 2 uses
  %i.bbf = getelementptr inbounds [4 x i8], ptr %i.bae, i64 %i.ayh
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbf, i64 96 ; 2 uses
  %i.bbh = load <8 x float>, ptr %i.bbe, align 32, !tbaa !32
  %i.bbi = fadd <8 x float> %i.baf, %i.bbh
  store <8 x float> %i.bbi, ptr %i.bbe, align 32, !tbaa !32
  %i.bbj = load <8 x float>, ptr %i.bbg, align 32, !tbaa !32
  %i.bbk = fadd <8 x float> %i.bbj, %i.bag
  store <8 x float> %i.bbk, ptr %i.bbg, align 32, !tbaa !32
  %i.bbl = load ptr, ptr %i.cq, align 8, !tbaa !99 ; 2 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbl, i64 16
  %i.bbn = load ptr, ptr %i.bbm, align 8, !tbaa !100 ; 4 uses
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbl, i64 24
  %i.bbp = load ptr, ptr %i.bbo, align 8, !tbaa !100 ; 4 uses
  %i.bbq = shufflevector <16 x float> %i.awj, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bbr = shufflevector <16 x float> %i.awj, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bbs = getelementptr inbounds [4 x i8], ptr %i.bbn, i64 %i.axf ; 2 uses
  %i.bbt = getelementptr inbounds [4 x i8], ptr %i.bbp, i64 %i.axf ; 2 uses
  %i.bbu = load <8 x float>, ptr %i.bbs, align 32, !tbaa !32
  %i.bbv = fadd <8 x float> %i.bbq, %i.bbu
  store <8 x float> %i.bbv, ptr %i.bbs, align 32, !tbaa !32
  %i.bbw = load <8 x float>, ptr %i.bbt, align 32, !tbaa !32
  %i.bbx = fadd <8 x float> %i.bbw, %i.bbr
  store <8 x float> %i.bbx, ptr %i.bbt, align 32, !tbaa !32
  %i.bby = getelementptr inbounds [4 x i8], ptr %i.bbn, i64 %i.axn
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 32 ; 2 uses
  %i.bca = getelementptr inbounds [4 x i8], ptr %i.bbp, i64 %i.axn
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bca, i64 32 ; 2 uses
  %i.bcc = load <8 x float>, ptr %i.bbz, align 32, !tbaa !32
  %i.bcd = fadd <8 x float> %i.bbq, %i.bcc
  store <8 x float> %i.bcd, ptr %i.bbz, align 32, !tbaa !32
  %i.bce = load <8 x float>, ptr %i.bcb, align 32, !tbaa !32
  %i.bcf = fadd <8 x float> %i.bce, %i.bbr
  store <8 x float> %i.bcf, ptr %i.bcb, align 32, !tbaa !32
  %i.bcg = getelementptr inbounds [4 x i8], ptr %i.bbn, i64 %i.axx
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 64 ; 2 uses
  %i.bci = getelementptr inbounds [4 x i8], ptr %i.bbp, i64 %i.axx
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bci, i64 64 ; 2 uses
  %i.bck = load <8 x float>, ptr %i.bch, align 32, !tbaa !32
  %i.bcl = fadd <8 x float> %i.bbq, %i.bck
  store <8 x float> %i.bcl, ptr %i.bch, align 32, !tbaa !32
  %i.bcm = load <8 x float>, ptr %i.bcj, align 32, !tbaa !32
  %i.bcn = fadd <8 x float> %i.bcm, %i.bbr
  store <8 x float> %i.bcn, ptr %i.bcj, align 32, !tbaa !32
  %i.bco = getelementptr inbounds [4 x i8], ptr %i.bbn, i64 %i.ayh
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 96 ; 2 uses
  %i.bcq = getelementptr inbounds [4 x i8], ptr %i.bbp, i64 %i.ayh
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcq, i64 96 ; 2 uses
  %i.bcs = load <8 x float>, ptr %i.bcp, align 32, !tbaa !32
  %i.bct = fadd <8 x float> %i.bbq, %i.bcs
  store <8 x float> %i.bct, ptr %i.bcp, align 32, !tbaa !32
  %i.bcu = load <8 x float>, ptr %i.bcr, align 32, !tbaa !32
  %i.bcv = fadd <8 x float> %i.bcu, %i.bbr
  store <8 x float> %i.bcv, ptr %i.bcr, align 32, !tbaa !32
  %i.bcw = fadd <16 x float> %i.ase, %i.awg
  %i.bcx = fmul <16 x float> %i.ark, %i.bcw       ; 3 uses
  %i.bcy = fadd <16 x float> %i.asf, %i.awh
  %i.bcz = fmul <16 x float> %i.arl, %i.bcy       ; 3 uses
  %i.bda = fmul <16 x float> %i.aom, %i.bcx       ; 2 uses
  %i.bdb = fmul <16 x float> %i.aon, %i.bcz       ; 2 uses
  %i.bdc = fmul <16 x float> %i.aoo, %i.bcx       ; 2 uses
  %i.bdd = fmul <16 x float> %i.aop, %i.bcz       ; 2 uses
  %i.bde = fmul <16 x float> %i.aoq, %i.bcx       ; 2 uses
  %i.bdf = fmul <16 x float> %i.aor, %i.bcz       ; 2 uses
  %i.bdg = fadd <16 x float> %.sroa.04244.24943, %i.bda ; 2 uses
  %i.bdh = fadd <16 x float> %.sroa.164251.24942, %i.bdb ; 2 uses
  %i.bdi = fadd <16 x float> %.sroa.04226.24945, %i.bdc ; 2 uses
  %i.bdj = fadd <16 x float> %.sroa.164233.24944, %i.bdd ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4894.preheader
  %.val7515454 = load <8 x float>, ptr %i.bep, align 32, !tbaa !32
  %i.beq = shufflevector <8 x float> %.val7515454, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ber = getelementptr i8, ptr %i.bep, i64 32
  %.val7525455 = load <8 x float>, ptr %i.ber, align 32, !tbaa !32
  %i.bes = shufflevector <8 x float> %.val7525455, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bet = getelementptr i8, ptr %i.bep, i64 64
  %.val7535456 = load <8 x float>, ptr %i.bet, align 32, !tbaa !32
  %i.beu = shufflevector <8 x float> %.val7535456, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bev = fsub <16 x float> %i.lf, %i.beq        ; 3 uses
  %i.bew = fsub <16 x float> %i.ll, %i.beq        ; 3 uses
  %i.bex = fsub <16 x float> %i.ls, %i.bes        ; 3 uses
  %i.bey = fsub <16 x float> %i.ly, %i.bes        ; 3 uses
  %i.bez = fsub <16 x float> %i.mf, %i.beu        ; 3 uses
  %i.bfa = fsub <16 x float> %i.ml, %i.beu        ; 3 uses
  %i.bfb = fmul <16 x float> %i.bev, %i.bev
  %i.bfc = fmul <16 x float> %i.bex, %i.bex
  %i.bfd = fadd <16 x float> %i.bfb, %i.bfc
  %i.bfe = fmul <16 x float> %i.bez, %i.bez
  %i.bff = fadd <16 x float> %i.bfd, %i.bfe       ; 2 uses
  %i.bfg = fmul <16 x float> %i.bew, %i.bew
  %i.bfh = fmul <16 x float> %i.bey, %i.bey
  %i.bfi = fadd <16 x float> %i.bfg, %i.bfh
  %i.bfj = fmul <16 x float> %i.bfa, %i.bfa
  %i.bfk = fadd <16 x float> %i.bfi, %i.bfj       ; 2 uses
  %i.bfl = fcmp olt <16 x float> %i.bff, %i.bp    ; 3 uses
  %i.bfm = fcmp olt <16 x float> %i.bfk, %i.bp    ; 3 uses
  %i.bfn = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bff, <16 x float> splat (float 3.820000e-07), i32 4) ; 5 uses
  %i.bfo = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bfk, <16 x float> splat (float 3.820000e-07), i32 4) ; 5 uses
  %i.bfp = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.bfn, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bfq = fmul <16 x float> %i.bfn, %i.bfp
  %i.bfr = fmul <16 x float> %i.bfp, splat (float -5.000000e-01)
  %i.bfs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bfq, <16 x float> %i.bfp, <16 x float> splat (float -3.000000e+00))
  %i.bft = fmul <16 x float> %i.bfr, %i.bfs
  %i.bfu = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.bfo, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bfv = fmul <16 x float> %i.bfo, %i.bfu
  %i.bfw = fmul <16 x float> %i.bfu, splat (float -5.000000e-01)
  %i.bfx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bfv, <16 x float> %i.bfu, <16 x float> splat (float -3.000000e+00))
  %i.bfy = fmul <16 x float> %i.bfw, %i.bfx
  %i.bfz = sext i32 %i.bem to i64                 ; 2 uses
  %i.bga = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bfz
  %.val7545457 = load <8 x float>, ptr %i.bga, align 32, !tbaa !32
  %i.bgb = select <16 x i1> %i.bfl, <16 x float> %i.bft, <16 x float> zeroinitializer ; 5 uses
  %i.bgc = select <16 x i1> %i.bfm, <16 x float> %i.bfy, <16 x float> zeroinitializer ; 5 uses
  %i.bgd = fmul <16 x float> %i.bfn, %i.bgb       ; 2 uses
  %i.bge = fmul <16 x float> %i.bfo, %i.bgc       ; 2 uses
  %i.bgf = fmul <16 x float> %i.ad, %i.bgd        ; 2 uses
  %i.bgg = fmul <16 x float> %i.ad, %i.bge        ; 2 uses
  %i.bgh = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.bgf, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.bgi = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> %i.bgg, <16 x i32> zeroinitializer, i16 -1, i32 4) ; 4 uses
  %i.bgj = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ai, <16 x i32> %i.bgh, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.bgk = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cz, <16 x i32> %i.bgh, <16 x i1> splat (i1 true), i32 4)
  %i.bgl = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ak, <16 x i32> %i.bgh, <16 x i1> splat (i1 true), i32 4)
  %i.bgm = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ai, <16 x i32> %i.bgi, <16 x i1> splat (i1 true), i32 4) ; 3 uses
  %i.bgn = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.cz, <16 x i32> %i.bgi, <16 x i1> splat (i1 true), i32 4)
  %i.bgo = tail call <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ak, <16 x i32> %i.bgi, <16 x i1> splat (i1 true), i32 4)
  %i.bgp = fsub <16 x float> %i.bgk, %i.bgj
  %i.bgq = fsub <16 x float> %i.bgn, %i.bgm
  %i.bgr = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bfz
  %.val7664879 = load <8 x i32>, ptr %i.bgr, align 32, !tbaa !32 ; 4 uses
  %i.bgs = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nf, <8 x i32> %.val7664879, <8 x i1> splat (i1 true), i32 8)
  %i.bgt = bitcast <8 x double> %i.bgs to <16 x float> ; 2 uses
  %i.bgu = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nl, <8 x i32> %.val7664879, <8 x i1> splat (i1 true), i32 8)
  %i.bgv = bitcast <8 x double> %i.bgu to <16 x float> ; 2 uses
  %i.bgw = shufflevector <16 x float> %i.bgt, <16 x float> %i.bgv, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.bgx = shufflevector <16 x float> %i.bgt, <16 x float> %i.bgv, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.bgy = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nr, <8 x i32> %.val7664879, <8 x i1> splat (i1 true), i32 8)
  %i.bgz = bitcast <8 x double> %i.bgy to <16 x float> ; 2 uses
  %i.bha = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nx, <8 x i32> %.val7664879, <8 x i1> splat (i1 true), i32 8)
  %i.bhb = bitcast <8 x double> %i.bha to <16 x float> ; 2 uses
  %i.bhc = shufflevector <16 x float> %i.bgz, <16 x float> %i.bhb, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.bhd = shufflevector <16 x float> %i.bgz, <16 x float> %i.bhb, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.bhe = shufflevector <8 x float> %.val7545457, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bhf = fmul <16 x float> %.sroa.04460.0, %i.bhe ; 2 uses
  %i.bhg = fmul <16 x float> %.sroa.74464.0, %i.bhe ; 2 uses
  %i.bhh = fmul <16 x float> %i.bgb, %i.bgb       ; 4 uses
  %i.bhi = fmul <16 x float> %i.bgc, %i.bgc       ; 4 uses
  %i.bhj = sitofp <16 x i32> %i.bgh to <16 x float>
  %i.bhk = sitofp <16 x i32> %i.bgi to <16 x float>
  %i.bhl = fsub <16 x float> %i.bgf, %i.bhj       ; 2 uses
  %i.bhm = fsub <16 x float> %i.bgg, %i.bhk       ; 2 uses
  %i.bhn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhl, <16 x float> %i.bgp, <16 x float> %i.bgj) ; 2 uses
  %i.bho = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhm, <16 x float> %i.bgq, <16 x float> %i.bgm) ; 2 uses
  %i.bhp = fneg <16 x float> %i.bhn
  %i.bhq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhp, <16 x float> %i.bgd, <16 x float> %i.bgb)
  %i.bhr = fneg <16 x float> %i.bho
  %i.bhs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhr, <16 x float> %i.bge, <16 x float> %i.bgc)
  %i.bht = fmul <16 x float> %i.ag, %i.bhl
  %i.bhu = fadd <16 x float> %i.bgj, %i.bhn
  %i.bhv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bht, <16 x float> %i.bhu, <16 x float> %i.bgl)
  %i.bhw = fmul <16 x float> %i.ag, %i.bhm
  %i.bhx = fadd <16 x float> %i.bgm, %i.bho
  %i.bhy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhw, <16 x float> %i.bhx, <16 x float> %i.bgo)
  %i.bhz = fmul <16 x float> %i.bhf, %i.bhq
  %i.bia = fmul <16 x float> %i.bhg, %i.bhs
  %i.bib = fadd <16 x float> %i.aq, %i.bhv
  %i.bic = fadd <16 x float> %i.aq, %i.bhy
  %i.bid = fsub <16 x float> %i.bgb, %i.bib
  %i.bie = fmul <16 x float> %i.bhf, %i.bid
  %i.bif = fsub <16 x float> %i.bgc, %i.bic
  %i.big = fmul <16 x float> %i.bhg, %i.bif
  %i.bih = select <16 x i1> %i.bfl, <16 x float> %i.bie, <16 x float> zeroinitializer ; 2 uses
  %i.bii = select <16 x i1> %i.bfm, <16 x float> %i.big, <16 x float> zeroinitializer ; 2 uses
  %i.bij = fcmp olt <16 x float> %i.bfn, %i.bu    ; 2 uses
  %i.bik = fcmp olt <16 x float> %i.bfo, %i.bu    ; 2 uses
  %i.bil = shl nsw i32 %i.bel, 4
  %i.bim = fmul <16 x float> %i.bhh, %i.bhh
  %i.bin = fmul <16 x float> %i.bhh, %i.bim       ; 6 uses
  %i.bio = fmul <16 x float> %i.bhi, %i.bhi
  %i.bip = fmul <16 x float> %i.bhi, %i.bio       ; 6 uses
  %i.biq = fmul <16 x float> %i.bin, %i.bin
  %i.bir = fmul <16 x float> %i.bip, %i.bip
  %i.bis = fmul <16 x float> %i.bin, %i.bgw       ; 2 uses
  %i.bit = fmul <16 x float> %i.bip, %i.bhc       ; 2 uses
  %i.biu = fmul <16 x float> %i.biq, %i.bgx       ; 2 uses
  %i.biv = fmul <16 x float> %i.bir, %i.bhd       ; 2 uses
  %i.biw = fsub <16 x float> %i.biu, %i.bis
  %i.bix = fsub <16 x float> %i.biv, %i.bit
  %i.biy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgw, <16 x float> %i.at, <16 x float> %i.bis)
  %i.biz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhc, <16 x float> %i.at, <16 x float> %i.bit)
  %i.bja = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bgx, <16 x float> %i.aw, <16 x float> %i.biu)
  %i.bjb = fmul <16 x float> %i.biy, splat (float f0xBE2AAAAB)
  %i.bjc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bja, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bjb)
  %i.bjd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bhd, <16 x float> %i.aw, <16 x float> %i.biv)
  %i.bje = fmul <16 x float> %i.biz, splat (float f0xBE2AAAAB)
  %i.bjf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bjd, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bje)
  %i.bjg = sext i32 %i.bil to i64
  %i.bjh = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bjg
  %.val7555458 = load <8 x float>, ptr %i.bjh, align 32, !tbaa !32
  %i.bji = shufflevector <8 x float> %.val7555458, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bjj = fmul <16 x float> %i.od, %i.bji        ; 2 uses
  %i.bjk = fmul <16 x float> %i.oi, %i.bji        ; 2 uses
  %i.bjl = select <16 x i1> %i.bfl, <16 x float> %i.bfn, <16 x float> zeroinitializer
  %i.bjm = fmul <16 x float> %i.be, %i.bjl        ; 3 uses
  %i.bjn = bitcast <16 x float> %i.bjm to <8 x i64>
  %i.bjo = select <16 x i1> %i.bfm, <16 x float> %i.bfo, <16 x float> zeroinitializer
  %i.bjp = fmul <16 x float> %i.be, %i.bjo        ; 3 uses
  %i.bjq = bitcast <16 x float> %i.bjp to <8 x i64>
  %i.bjr = xor <8 x i64> %i.bjn, splat (i64 -9223372034707292160)
  %i.bjs = bitcast <8 x i64> %i.bjr to <16 x float> ; 2 uses
  %i.bjt = fmul <16 x float> %i.bjs, splat (float f0x3FB8AA3B) ; 2 uses
  %i.bju = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.bjt, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bjv = shl <16 x i32> %i.bju, splat (i32 23)
  %i.bjw = add <16 x i32> %i.bjv, splat (i32 1065353216)
  %i.bjx = bitcast <16 x i32> %i.bjw to <16 x float> ; 2 uses
  %i.bjy = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bjt, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.bjz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bjy, <16 x float> splat (float f0xBF317200), <16 x float> %i.bjs)
  %i.bka = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bjy, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.bjz) ; 7 uses
  %i.bkb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bka, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.bkc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkb, <16 x float> %i.bka, <16 x float> splat (float f0x3D2AAF4C))
  %i.bkd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkc, <16 x float> %i.bka, <16 x float> splat (float f0x3E2AAA5E))
  %i.bke = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkd, <16 x float> %i.bka, <16 x float> splat (float f0x3EFFFFFB))
  %i.bkf = fmul <16 x float> %i.bka, %i.bka
  %i.bkg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkf, <16 x float> %i.bke, <16 x float> %i.bka)
  %i.bkh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkg, <16 x float> %i.bjx, <16 x float> %i.bjx)
  %i.bki = xor <8 x i64> %i.bjq, splat (i64 -9223372034707292160)
  %i.bkj = bitcast <8 x i64> %i.bki to <16 x float> ; 2 uses
  %i.bkk = fmul <16 x float> %i.bkj, splat (float f0x3FB8AA3B) ; 2 uses
  %i.bkl = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.bkk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bkm = shl <16 x i32> %i.bkl, splat (i32 23)
  %i.bkn = add <16 x i32> %i.bkm, splat (i32 1065353216)
  %i.bko = bitcast <16 x i32> %i.bkn to <16 x float> ; 2 uses
  %i.bkp = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bkk, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.bkq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkp, <16 x float> splat (float f0xBF317200), <16 x float> %i.bkj)
  %i.bkr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkp, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.bkq) ; 7 uses
  %i.bks = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkr, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.bkt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bks, <16 x float> %i.bkr, <16 x float> splat (float f0x3D2AAF4C))
  %i.bku = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkt, <16 x float> %i.bkr, <16 x float> splat (float f0x3E2AAA5E))
  %i.bkv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bku, <16 x float> %i.bkr, <16 x float> splat (float f0x3EFFFFFB))
  %i.bkw = fmul <16 x float> %i.bkr, %i.bkr
  %i.bkx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkw, <16 x float> %i.bkv, <16 x float> %i.bkr)
  %i.bky = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkx, <16 x float> %i.bko, <16 x float> %i.bko)
  %i.bkz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bjm, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.bla = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bkz, <16 x float> %i.bjm, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.blb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bjp, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.blc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.blb, <16 x float> %i.bjp, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.bld = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bin, <16 x float> %i.bla, <16 x float> %i.bg)
  %i.ble = fneg <16 x float> %i.bkh               ; 2 uses
  %i.blf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ble, <16 x float> %i.bld, <16 x float> %i.bin)
  %i.blg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bjj, <16 x float> %i.blf, <16 x float> %i.biw)
  %i.blh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bip, <16 x float> %i.blc, <16 x float> %i.bg)
  %i.bli = fneg <16 x float> %i.bky               ; 2 uses
  %i.blj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bli, <16 x float> %i.blh, <16 x float> %i.bip)
  %i.blk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bjk, <16 x float> %i.blj, <16 x float> %i.bix)
  %i.bll = fmul <16 x float> %i.bjj, splat (float f0x3E2AAAAB)
  %i.blm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ble, <16 x float> %i.bla, <16 x float> splat (float 1.000000e+00))
  %i.bln = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bin, <16 x float> %i.blm, <16 x float> %i.bk)
  %i.blo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bll, <16 x float> %i.bln, <16 x float> %i.bjc)
  %i.blp = fmul <16 x float> %i.bjk, splat (float f0x3E2AAAAB)
  %i.blq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bli, <16 x float> %i.blc, <16 x float> splat (float 1.000000e+00))
  %i.blr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bip, <16 x float> %i.blq, <16 x float> %i.bk)
  %i.bls = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.blp, <16 x float> %i.blr, <16 x float> %i.bjf)
  %i.blt = select <16 x i1> %i.bij, <16 x float> %i.blg, <16 x float> zeroinitializer
  %i.blu = select <16 x i1> %i.bik, <16 x float> %i.blk, <16 x float> zeroinitializer
  %i.blv = select <16 x i1> %i.bij, <16 x float> %i.blo, <16 x float> zeroinitializer ; 2 uses
  %i.blw = select <16 x i1> %i.bik, <16 x float> %i.bls, <16 x float> zeroinitializer ; 2 uses
  %i.blx = load ptr, ptr %i.ci, align 8, !tbaa !93
  %i.bly = shl nsw i32 %i.bel, 1
  %i.blz = load i32, ptr %i.cx, align 8, !tbaa !129
  %i.bma = sext i32 %i.bly to i64
  %i.bmb = getelementptr inbounds [4 x i8], ptr %i.blx, i64 %i.bma
  %11 = load <2 x i32>, ptr %i.cy, align 4, !tbaa !94 ; 2 uses
  %i.bmc = load <2 x i32>, ptr %i.bmb, align 4, !tbaa !94 ; 2 uses
  %i.bmd = insertelement <2 x i32> poison, i32 %i.blz, i64 0
  %i.bme = shufflevector <2 x i32> %i.bmc, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.bmf = shufflevector <2 x i32> %i.bmc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bmg = shufflevector <2 x i32> %i.bmd, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.bmh = ashr <4 x i32> %i.bmf, %i.bmg
  %i.bmi = shufflevector <4 x i32> %i.bmh, <4 x i32> %i.bme, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.bmj = shufflevector <2 x i32> %11, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.bmk = and <4 x i32> %i.bmi, %i.bmj
  %12 = shufflevector <2 x i32> %11, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bml = mul nsw <4 x i32> %i.bmk, %12          ; 4 uses
  %i.bmm = load ptr, ptr %i.co, align 8, !tbaa !99 ; 2 uses
  %i.bmn = load ptr, ptr %i.bmm, align 8, !tbaa !100 ; 4 uses
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmm, i64 8
  %i.bmp = load ptr, ptr %i.bmo, align 8, !tbaa !100 ; 4 uses
  %i.bmq = shufflevector <16 x float> %i.bih, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bmr = shufflevector <16 x float> %i.bih, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bms = extractelement <4 x i32> %i.bml, i64 0
  %i.bmt = sext i32 %i.bms to i64                 ; 8 uses
  %i.bmu = getelementptr inbounds [4 x i8], ptr %i.bmn, i64 %i.bmt ; 2 uses
  %i.bmv = getelementptr inbounds [4 x i8], ptr %i.bmp, i64 %i.bmt ; 2 uses
  %i.bmw = load <8 x float>, ptr %i.bmu, align 32, !tbaa !32
  %i.bmx = fadd <8 x float> %i.bmq, %i.bmw
  store <8 x float> %i.bmx, ptr %i.bmu, align 32, !tbaa !32
  %i.bmy = load <8 x float>, ptr %i.bmv, align 32, !tbaa !32
  %i.bmz = fadd <8 x float> %i.bmy, %i.bmr
  store <8 x float> %i.bmz, ptr %i.bmv, align 32, !tbaa !32
  %i.bna = extractelement <4 x i32> %i.bml, i64 1
  %i.bnb = sext i32 %i.bna to i64                 ; 8 uses
  %i.bnc = getelementptr inbounds [4 x i8], ptr %i.bmn, i64 %i.bnb
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bnc, i64 32 ; 2 uses
  %i.bne = getelementptr inbounds [4 x i8], ptr %i.bmp, i64 %i.bnb
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bne, i64 32 ; 2 uses
  %i.bng = load <8 x float>, ptr %i.bnd, align 32, !tbaa !32
  %i.bnh = fadd <8 x float> %i.bmq, %i.bng
  store <8 x float> %i.bnh, ptr %i.bnd, align 32, !tbaa !32
  %i.bni = load <8 x float>, ptr %i.bnf, align 32, !tbaa !32
  %i.bnj = fadd <8 x float> %i.bni, %i.bmr
  store <8 x float> %i.bnj, ptr %i.bnf, align 32, !tbaa !32
  %i.bnk = extractelement <4 x i32> %i.bml, i64 2
  %i.bnl = sext i32 %i.bnk to i64                 ; 8 uses
  %i.bnm = getelementptr inbounds [4 x i8], ptr %i.bmn, i64 %i.bnl
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnm, i64 64 ; 2 uses
  %i.bno = getelementptr inbounds [4 x i8], ptr %i.bmp, i64 %i.bnl
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bno, i64 64 ; 2 uses
  %i.bnq = load <8 x float>, ptr %i.bnn, align 32, !tbaa !32
  %i.bnr = fadd <8 x float> %i.bmq, %i.bnq
  store <8 x float> %i.bnr, ptr %i.bnn, align 32, !tbaa !32
  %i.bns = load <8 x float>, ptr %i.bnp, align 32, !tbaa !32
  %i.bnt = fadd <8 x float> %i.bns, %i.bmr
  store <8 x float> %i.bnt, ptr %i.bnp, align 32, !tbaa !32
  %i.bnu = extractelement <4 x i32> %i.bml, i64 3
  %i.bnv = sext i32 %i.bnu to i64                 ; 8 uses
  %i.bnw = getelementptr inbounds [4 x i8], ptr %i.bmn, i64 %i.bnv
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnw, i64 96 ; 2 uses
  %i.bny = getelementptr inbounds [4 x i8], ptr %i.bmp, i64 %i.bnv
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 96 ; 2 uses
  %i.boa = load <8 x float>, ptr %i.bnx, align 32, !tbaa !32
  %i.bob = fadd <8 x float> %i.bmq, %i.boa
  store <8 x float> %i.bob, ptr %i.bnx, align 32, !tbaa !32
  %i.boc = load <8 x float>, ptr %i.bnz, align 32, !tbaa !32
  %i.bod = fadd <8 x float> %i.boc, %i.bmr
  store <8 x float> %i.bod, ptr %i.bnz, align 32, !tbaa !32
  %i.boe = load ptr, ptr %i.co, align 8, !tbaa !99 ; 2 uses
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boe, i64 16
  %i.bog = load ptr, ptr %i.bof, align 8, !tbaa !100 ; 4 uses
  %i.boh = getelementptr inbounds nuw i8, ptr %i.boe, i64 24
  %i.boi = load ptr, ptr %i.boh, align 8, !tbaa !100 ; 4 uses
  %i.boj = shufflevector <16 x float> %i.bii, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bok = shufflevector <16 x float> %i.bii, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bol = getelementptr inbounds [4 x i8], ptr %i.bog, i64 %i.bmt ; 2 uses
  %i.bom = getelementptr inbounds [4 x i8], ptr %i.boi, i64 %i.bmt ; 2 uses
  %i.bon = load <8 x float>, ptr %i.bol, align 32, !tbaa !32
  %i.boo = fadd <8 x float> %i.boj, %i.bon
  store <8 x float> %i.boo, ptr %i.bol, align 32, !tbaa !32
  %i.bop = load <8 x float>, ptr %i.bom, align 32, !tbaa !32
  %i.boq = fadd <8 x float> %i.bop, %i.bok
  store <8 x float> %i.boq, ptr %i.bom, align 32, !tbaa !32
  %i.bor = getelementptr inbounds [4 x i8], ptr %i.bog, i64 %i.bnb
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 32 ; 2 uses
  %i.bot = getelementptr inbounds [4 x i8], ptr %i.boi, i64 %i.bnb
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bot, i64 32 ; 2 uses
  %i.bov = load <8 x float>, ptr %i.bos, align 32, !tbaa !32
  %i.bow = fadd <8 x float> %i.boj, %i.bov
  store <8 x float> %i.bow, ptr %i.bos, align 32, !tbaa !32
  %i.box = load <8 x float>, ptr %i.bou, align 32, !tbaa !32
  %i.boy = fadd <8 x float> %i.box, %i.bok
  store <8 x float> %i.boy, ptr %i.bou, align 32, !tbaa !32
  %i.boz = getelementptr inbounds [4 x i8], ptr %i.bog, i64 %i.bnl
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.boz, i64 64 ; 2 uses
  %i.bpb = getelementptr inbounds [4 x i8], ptr %i.boi, i64 %i.bnl
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bpb, i64 64 ; 2 uses
  %i.bpd = load <8 x float>, ptr %i.bpa, align 32, !tbaa !32
  %i.bpe = fadd <8 x float> %i.boj, %i.bpd
  store <8 x float> %i.bpe, ptr %i.bpa, align 32, !tbaa !32
  %i.bpf = load <8 x float>, ptr %i.bpc, align 32, !tbaa !32
  %i.bpg = fadd <8 x float> %i.bpf, %i.bok
  store <8 x float> %i.bpg, ptr %i.bpc, align 32, !tbaa !32
  %i.bph = getelementptr inbounds [4 x i8], ptr %i.bog, i64 %i.bnv
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 96 ; 2 uses
  %i.bpj = getelementptr inbounds [4 x i8], ptr %i.boi, i64 %i.bnv
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bpj, i64 96 ; 2 uses
  %i.bpl = load <8 x float>, ptr %i.bpi, align 32, !tbaa !32
  %i.bpm = fadd <8 x float> %i.boj, %i.bpl
  store <8 x float> %i.bpm, ptr %i.bpi, align 32, !tbaa !32
  %i.bpn = load <8 x float>, ptr %i.bpk, align 32, !tbaa !32
  %i.bpo = fadd <8 x float> %i.bpn, %i.bok
  store <8 x float> %i.bpo, ptr %i.bpk, align 32, !tbaa !32
  %i.bpp = load ptr, ptr %i.cq, align 8, !tbaa !99 ; 2 uses
  %i.bpq = load ptr, ptr %i.bpp, align 8, !tbaa !100 ; 4 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpp, i64 8
  %i.bps = load ptr, ptr %i.bpr, align 8, !tbaa !100 ; 4 uses
  %i.bpt = shufflevector <16 x float> %i.blv, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bpu = shufflevector <16 x float> %i.blv, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bpv = getelementptr inbounds [4 x i8], ptr %i.bpq, i64 %i.bmt ; 2 uses
  %i.bpw = getelementptr inbounds [4 x i8], ptr %i.bps, i64 %i.bmt ; 2 uses
  %i.bpx = load <8 x float>, ptr %i.bpv, align 32, !tbaa !32
  %i.bpy = fadd <8 x float> %i.bpt, %i.bpx
  store <8 x float> %i.bpy, ptr %i.bpv, align 32, !tbaa !32
  %i.bpz = load <8 x float>, ptr %i.bpw, align 32, !tbaa !32
  %i.bqa = fadd <8 x float> %i.bpz, %i.bpu
  store <8 x float> %i.bqa, ptr %i.bpw, align 32, !tbaa !32
  %i.bqb = getelementptr inbounds [4 x i8], ptr %i.bpq, i64 %i.bnb
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bqb, i64 32 ; 2 uses
  %i.bqd = getelementptr inbounds [4 x i8], ptr %i.bps, i64 %i.bnb
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bqd, i64 32 ; 2 uses
  %i.bqf = load <8 x float>, ptr %i.bqc, align 32, !tbaa !32
  %i.bqg = fadd <8 x float> %i.bpt, %i.bqf
  store <8 x float> %i.bqg, ptr %i.bqc, align 32, !tbaa !32
  %i.bqh = load <8 x float>, ptr %i.bqe, align 32, !tbaa !32
  %i.bqi = fadd <8 x float> %i.bqh, %i.bpu
  store <8 x float> %i.bqi, ptr %i.bqe, align 32, !tbaa !32
  %i.bqj = getelementptr inbounds [4 x i8], ptr %i.bpq, i64 %i.bnl
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqj, i64 64 ; 2 uses
  %i.bql = getelementptr inbounds [4 x i8], ptr %i.bps, i64 %i.bnl
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bql, i64 64 ; 2 uses
  %i.bqn = load <8 x float>, ptr %i.bqk, align 32, !tbaa !32
  %i.bqo = fadd <8 x float> %i.bpt, %i.bqn
  store <8 x float> %i.bqo, ptr %i.bqk, align 32, !tbaa !32
  %i.bqp = load <8 x float>, ptr %i.bqm, align 32, !tbaa !32
  %i.bqq = fadd <8 x float> %i.bqp, %i.bpu
  store <8 x float> %i.bqq, ptr %i.bqm, align 32, !tbaa !32
  %i.bqr = getelementptr inbounds [4 x i8], ptr %i.bpq, i64 %i.bnv
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqr, i64 96 ; 2 uses
  %i.bqt = getelementptr inbounds [4 x i8], ptr %i.bps, i64 %i.bnv
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 96 ; 2 uses
  %i.bqv = load <8 x float>, ptr %i.bqs, align 32, !tbaa !32
  %i.bqw = fadd <8 x float> %i.bpt, %i.bqv
  store <8 x float> %i.bqw, ptr %i.bqs, align 32, !tbaa !32
  %i.bqx = load <8 x float>, ptr %i.bqu, align 32, !tbaa !32
  %i.bqy = fadd <8 x float> %i.bqx, %i.bpu
  store <8 x float> %i.bqy, ptr %i.bqu, align 32, !tbaa !32
  %i.bqz = load ptr, ptr %i.cq, align 8, !tbaa !99 ; 2 uses
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqz, i64 16
  %i.brb = load ptr, ptr %i.bra, align 8, !tbaa !100 ; 4 uses
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bqz, i64 24
  %i.brd = load ptr, ptr %i.brc, align 8, !tbaa !100 ; 4 uses
  %i.bre = shufflevector <16 x float> %i.blw, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.brf = shufflevector <16 x float> %i.blw, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.brg = getelementptr inbounds [4 x i8], ptr %i.brb, i64 %i.bmt ; 2 uses
  %i.brh = getelementptr inbounds [4 x i8], ptr %i.brd, i64 %i.bmt ; 2 uses
  %i.bri = load <8 x float>, ptr %i.brg, align 32, !tbaa !32
  %i.brj = fadd <8 x float> %i.bre, %i.bri
  store <8 x float> %i.brj, ptr %i.brg, align 32, !tbaa !32
  %i.brk = load <8 x float>, ptr %i.brh, align 32, !tbaa !32
  %i.brl = fadd <8 x float> %i.brk, %i.brf
  store <8 x float> %i.brl, ptr %i.brh, align 32, !tbaa !32
  %i.brm = getelementptr inbounds [4 x i8], ptr %i.brb, i64 %i.bnb
  %i.brn = getelementptr inbounds nuw i8, ptr %i.brm, i64 32 ; 2 uses
  %i.bro = getelementptr inbounds [4 x i8], ptr %i.brd, i64 %i.bnb
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bro, i64 32 ; 2 uses
  %i.brq = load <8 x float>, ptr %i.brn, align 32, !tbaa !32
  %i.brr = fadd <8 x float> %i.bre, %i.brq
  store <8 x float> %i.brr, ptr %i.brn, align 32, !tbaa !32
  %i.brs = load <8 x float>, ptr %i.brp, align 32, !tbaa !32
  %i.brt = fadd <8 x float> %i.brs, %i.brf
  store <8 x float> %i.brt, ptr %i.brp, align 32, !tbaa !32
  %i.bru = getelementptr inbounds [4 x i8], ptr %i.brb, i64 %i.bnl
  %i.brv = getelementptr inbounds nuw i8, ptr %i.bru, i64 64 ; 2 uses
  %i.brw = getelementptr inbounds [4 x i8], ptr %i.brd, i64 %i.bnl
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brw, i64 64 ; 2 uses
  %i.bry = load <8 x float>, ptr %i.brv, align 32, !tbaa !32
  %i.brz = fadd <8 x float> %i.bre, %i.bry
  store <8 x float> %i.brz, ptr %i.brv, align 32, !tbaa !32
  %i.bsa = load <8 x float>, ptr %i.brx, align 32, !tbaa !32
  %i.bsb = fadd <8 x float> %i.bsa, %i.brf
  store <8 x float> %i.bsb, ptr %i.brx, align 32, !tbaa !32
  %i.bsc = getelementptr inbounds [4 x i8], ptr %i.brb, i64 %i.bnv
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bsc, i64 96 ; 2 uses
  %i.bse = getelementptr inbounds [4 x i8], ptr %i.brd, i64 %i.bnv
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bse, i64 96 ; 2 uses
  %i.bsg = load <8 x float>, ptr %i.bsd, align 32, !tbaa !32
  %i.bsh = fadd <8 x float> %i.bre, %i.bsg
  store <8 x float> %i.bsh, ptr %i.bsd, align 32, !tbaa !32
  %i.bsi = load <8 x float>, ptr %i.bsf, align 32, !tbaa !32
  %i.bsj = fadd <8 x float> %i.bsi, %i.brf
  store <8 x float> %i.bsj, ptr %i.bsf, align 32, !tbaa !32
  %i.bsk = fadd <16 x float> %i.bhz, %i.blt
  %i.bsl = fmul <16 x float> %i.bhh, %i.bsk       ; 3 uses
  %i.bsm = fadd <16 x float> %i.bia, %i.blu
  %i.bsn = fmul <16 x float> %i.bhi, %i.bsm       ; 3 uses
  %i.bso = fmul <16 x float> %i.bev, %i.bsl       ; 2 uses
  %i.bsp = fmul <16 x float> %i.bew, %i.bsn       ; 2 uses
  %i.bsq = fmul <16 x float> %i.bex, %i.bsl       ; 2 uses
  %i.bsr = fmul <16 x float> %i.bey, %i.bsn       ; 2 uses
  %i.bss = fmul <16 x float> %i.bez, %i.bsl       ; 2 uses
  %i.bst = fmul <16 x float> %i.bfa, %i.bsn       ; 2 uses
  %i.bsu = fadd <16 x float> %.sroa.04244.34969, %i.bso ; 2 uses
  %i.bsv = fadd <16 x float> %.sroa.164251.34968, %i.bsp ; 2 uses
  %i.bsw = fadd <16 x float> %.sroa.04226.34971, %i.bsq ; 2 uses
  %i.bsx = fadd <16 x float> %.sroa.164233.34970, %i.bsr ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4894.preheader
  %i.btz = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %indvars.iv ; 2 uses
  %i.bua = load i32, ptr %i.btz, align 4, !tbaa !102 ; 4 uses
  %i.bub = getelementptr inbounds nuw i8, ptr %i.btz, i64 4
  %i.buc = load i32, ptr %i.bub, align 4, !tbaa !128
  %i.bud = insertelement <16 x i32> poison, i32 %i.buc, i64 0
  %i.bue = shufflevector <16 x i32> %i.bud, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.buf = and <16 x i32> %.sroa.05183.0.copyload, %i.bue
  %.not5289 = icmp eq <16 x i32> %i.buf, zeroinitializer ; 3 uses
  %i.bug = and <16 x i32> %.sroa.6.0.copyload, %i.bue
  %.not5290 = icmp eq <16 x i32> %i.bug, zeroinitializer ; 3 uses
  %i.buh = shl nsw i32 %i.bua, 3
  %i.bui = mul nsw i32 %i.bua, 24
  %i.buj = sext i32 %i.bui to i64                 ; 2 uses
  %i.buk = getelementptr [4 x i8], ptr %i.by, i64 %i.buj ; 3 uses
  %.val7565441 = load <8 x float>, ptr %i.buk, align 32, !tbaa !32
  %i.bul = shufflevector <8 x float> %.val7565441, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bum = getelementptr i8, ptr %i.buk, i64 32
  %.val7575442 = load <8 x float>, ptr %i.bum, align 32, !tbaa !32
  %i.bun = shufflevector <8 x float> %.val7575442, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.buo = getelementptr i8, ptr %i.buk, i64 64
  %.val7585443 = load <8 x float>, ptr %i.buo, align 32, !tbaa !32
  %i.bup = shufflevector <8 x float> %.val7585443, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.buq = fsub <16 x float> %i.lf, %i.bul        ; 3 uses
  %i.bur = fsub <16 x float> %i.ll, %i.bul        ; 3 uses
  %i.bus = fsub <16 x float> %i.ls, %i.bun        ; 3 uses
  %i.but = fsub <16 x float> %i.ly, %i.bun        ; 3 uses
  %i.buu = fsub <16 x float> %i.mf, %i.bup        ; 3 uses
  %i.buv = fsub <16 x float> %i.ml, %i.bup        ; 3 uses
  %i.buw = fmul <16 x float> %i.buq, %i.buq
  %i.bux = fmul <16 x float> %i.bus, %i.bus
  %i.buy = fadd <16 x float> %i.buw, %i.bux
  %i.buz = fmul <16 x float> %i.buu, %i.buu
  %i.bva = fadd <16 x float> %i.buy, %i.buz       ; 2 uses
  %i.bvb = fmul <16 x float> %i.bur, %i.bur
  %i.bvc = fmul <16 x float> %i.but, %i.but
  %i.bvd = fadd <16 x float> %i.bvb, %i.bvc
  %i.bve = fmul <16 x float> %i.buv, %i.buv
  %i.bvf = fadd <16 x float> %i.bvd, %i.bve       ; 2 uses
  %i.bvg = fcmp olt <16 x float> %i.bva, %i.bp
  %i.bvh = bitcast <16 x i1> %i.bvg to i16        ; 3 uses
  %i.bvi = fcmp olt <16 x float> %i.bvf, %i.bp
  %i.bvj = bitcast <16 x i1> %i.bvi to i16        ; 3 uses
  %i.bvk = shl nsw i32 %i.bua, 1                  ; 3 uses
  %i.bvl = icmp eq i32 %i.bvk, %i.dk
  br i1 %i.bvl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %i.bvm = and i16 %i.bvh, %i.v
  %i.bvn = and i16 %i.bvj, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.o:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %i.bvo = or disjoint i32 %i.bvk, 1
  %i.bvp = icmp eq i32 %i.bvo, %i.dk
  br i1 %i.bvp, label %bb.p, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.p:                                             ; preds = %bb.o
  %i.bvq = and i16 %i.bvh, %i.x
  %i.bvr = and i16 %i.bvj, %i.y
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit: ; preds = %bb.n, %bb.o, %bb.p
  %.sroa.9.0 = phi i16 [ %i.bvn, %bb.n ], [ %i.bvr, %bb.p ], [ %i.bvj, %bb.o ]
  %.sroa.04852.0 = phi i16 [ %i.bvm, %bb.n ], [ %i.bvq, %bb.p ], [ %i.bvh, %bb.o ]
  %i.bvs = sext i32 %i.buh to i64
  %i.bvt = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bvs
  %.val7654873 = load <8 x i32>, ptr %i.bvt, align 32, !tbaa !32 ; 4 uses
  %i.bvu = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nf, <8 x i32> %.val7654873, <8 x i1> splat (i1 true), i32 8)
  %i.bvv = bitcast <8 x double> %i.bvu to <16 x float> ; 2 uses
  %i.bvw = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nl, <8 x i32> %.val7654873, <8 x i1> splat (i1 true), i32 8)
  %i.bvx = bitcast <8 x double> %i.bvw to <16 x float> ; 2 uses
  %i.bvy = shufflevector <16 x float> %i.bvv, <16 x float> %i.bvx, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.bvz = shufflevector <16 x float> %i.bvv, <16 x float> %i.bvx, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.bwa = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nr, <8 x i32> %.val7654873, <8 x i1> splat (i1 true), i32 8)
  %i.bwb = bitcast <8 x double> %i.bwa to <16 x float> ; 2 uses
  %i.bwc = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nx, <8 x i32> %.val7654873, <8 x i1> splat (i1 true), i32 8)
  %i.bwd = bitcast <8 x double> %i.bwc to <16 x float> ; 2 uses
  %i.bwe = shufflevector <16 x float> %i.bwb, <16 x float> %i.bwd, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.bwf = shufflevector <16 x float> %i.bwb, <16 x float> %i.bwd, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.bwg = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bva, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.bwh = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.bvf, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.bwi = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.bwg, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bwj = fmul <16 x float> %i.bwg, %i.bwi
  %i.bwk = fmul <16 x float> %i.bwi, splat (float -5.000000e-01)
  %i.bwl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwj, <16 x float> %i.bwi, <16 x float> splat (float -3.000000e+00))
  %i.bwm = fmul <16 x float> %i.bwk, %i.bwl
  %i.bwn = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.bwh, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.bwo = fmul <16 x float> %i.bwh, %i.bwn
  %i.bwp = fmul <16 x float> %i.bwn, splat (float -5.000000e-01)
  %i.bwq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwo, <16 x float> %i.bwn, <16 x float> splat (float -3.000000e+00))
  %i.bwr = fmul <16 x float> %i.bwp, %i.bwq
  %i.bws = bitcast i16 %.sroa.04852.0 to <16 x i1> ; 2 uses
  %i.bwt = select <16 x i1> %i.bws, <16 x float> %i.bwm, <16 x float> zeroinitializer ; 2 uses
  %i.bwu = bitcast i16 %.sroa.9.0 to <16 x i1>    ; 2 uses
  %i.bwv = select <16 x i1> %i.bwu, <16 x float> %i.bwr, <16 x float> zeroinitializer ; 2 uses
  %i.bww = fmul <16 x float> %i.bwt, %i.bwt       ; 4 uses
  %i.bwx = fmul <16 x float> %i.bwv, %i.bwv       ; 4 uses
  %i.bwy = fcmp olt <16 x float> %i.bwg, %i.bu    ; 2 uses
  %i.bwz = fcmp olt <16 x float> %i.bwh, %i.bu    ; 2 uses
  %i.bxa = shl nsw i32 %i.bua, 4
  %i.bxb = fmul <16 x float> %i.bww, %i.bww
  %i.bxc = fmul <16 x float> %i.bww, %i.bxb       ; 4 uses
  %i.bxd = fmul <16 x float> %i.bwx, %i.bwx
  %i.bxe = fmul <16 x float> %i.bwx, %i.bxd       ; 4 uses
  %i.bxf = select <16 x i1> %.not5289, <16 x float> zeroinitializer, <16 x float> %i.bxc ; 3 uses
  %i.bxg = select <16 x i1> %.not5290, <16 x float> zeroinitializer, <16 x float> %i.bxe ; 3 uses
  %i.bxh = fmul <16 x float> %i.bxf, %i.bxf
  %i.bxi = fmul <16 x float> %i.bxg, %i.bxg
  %i.bxj = fmul <16 x float> %i.bxf, %i.bvy       ; 2 uses
  %i.bxk = fmul <16 x float> %i.bxg, %i.bwe       ; 2 uses
  %i.bxl = fmul <16 x float> %i.bxh, %i.bvz       ; 2 uses
  %i.bxm = fmul <16 x float> %i.bxi, %i.bwf       ; 2 uses
  %i.bxn = fsub <16 x float> %i.bxl, %i.bxj
  %i.bxo = fsub <16 x float> %i.bxm, %i.bxk
  %i.bxp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bvy, <16 x float> %i.at, <16 x float> %i.bxj)
  %i.bxq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwe, <16 x float> %i.at, <16 x float> %i.bxk)
  %i.bxr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bvz, <16 x float> %i.aw, <16 x float> %i.bxl)
  %i.bxs = fmul <16 x float> %i.bxp, splat (float f0xBE2AAAAB)
  %i.bxt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxr, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bxs)
  %i.bxu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bwf, <16 x float> %i.aw, <16 x float> %i.bxm)
  %i.bxv = fmul <16 x float> %i.bxq, splat (float f0xBE2AAAAB)
  %i.bxw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxu, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.bxv)
  %i.bxx = select <16 x i1> %.not5289, <16 x float> zeroinitializer, <16 x float> %i.bxt
  %i.bxy = select <16 x i1> %.not5290, <16 x float> zeroinitializer, <16 x float> %i.bxw
  %i.bxz = sext i32 %i.bxa to i64
  %i.bya = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bxz
  %.val7595444 = load <8 x float>, ptr %i.bya, align 32, !tbaa !32
  %i.byb = shufflevector <8 x float> %.val7595444, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.byc = fmul <16 x float> %i.od, %i.byb        ; 2 uses
  %i.byd = fmul <16 x float> %i.oi, %i.byb        ; 2 uses
  %i.bye = select <16 x i1> %i.bws, <16 x float> %i.bwg, <16 x float> zeroinitializer
  %i.byf = fmul <16 x float> %i.be, %i.bye        ; 3 uses
  %i.byg = bitcast <16 x float> %i.byf to <8 x i64>
  %i.byh = select <16 x i1> %i.bwu, <16 x float> %i.bwh, <16 x float> zeroinitializer
  %i.byi = fmul <16 x float> %i.be, %i.byh        ; 3 uses
  %i.byj = bitcast <16 x float> %i.byi to <8 x i64>
  %i.byk = xor <8 x i64> %i.byg, splat (i64 -9223372034707292160)
  %i.byl = bitcast <8 x i64> %i.byk to <16 x float> ; 2 uses
  %i.bym = fmul <16 x float> %i.byl, splat (float f0x3FB8AA3B) ; 2 uses
  %i.byn = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.bym, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.byo = shl <16 x i32> %i.byn, splat (i32 23)
  %i.byp = add <16 x i32> %i.byo, splat (i32 1065353216)
  %i.byq = bitcast <16 x i32> %i.byp to <16 x float> ; 2 uses
  %i.byr = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bym, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.bys = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byr, <16 x float> splat (float f0xBF317200), <16 x float> %i.byl)
  %i.byt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byr, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.bys) ; 7 uses
  %i.byu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byt, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.byv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byu, <16 x float> %i.byt, <16 x float> splat (float f0x3D2AAF4C))
  %i.byw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byv, <16 x float> %i.byt, <16 x float> splat (float f0x3E2AAA5E))
  %i.byx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byw, <16 x float> %i.byt, <16 x float> splat (float f0x3EFFFFFB))
  %i.byy = fmul <16 x float> %i.byt, %i.byt
  %i.byz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byy, <16 x float> %i.byx, <16 x float> %i.byt)
  %i.bza = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byz, <16 x float> %i.byq, <16 x float> %i.byq)
  %i.bzb = xor <8 x i64> %i.byj, splat (i64 -9223372034707292160)
  %i.bzc = bitcast <8 x i64> %i.bzb to <16 x float> ; 2 uses
  %i.bzd = fmul <16 x float> %i.bzc, splat (float f0x3FB8AA3B) ; 2 uses
  %i.bze = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.bzd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bzf = shl <16 x i32> %i.bze, splat (i32 23)
  %i.bzg = add <16 x i32> %i.bzf, splat (i32 1065353216)
  %i.bzh = bitcast <16 x i32> %i.bzg to <16 x float> ; 2 uses
  %i.bzi = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bzd, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.bzj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzi, <16 x float> splat (float f0xBF317200), <16 x float> %i.bzc)
  %i.bzk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzi, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.bzj) ; 7 uses
  %i.bzl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzk, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.bzm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzl, <16 x float> %i.bzk, <16 x float> splat (float f0x3D2AAF4C))
  %i.bzn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzm, <16 x float> %i.bzk, <16 x float> splat (float f0x3E2AAA5E))
  %i.bzo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzn, <16 x float> %i.bzk, <16 x float> splat (float f0x3EFFFFFB))
  %i.bzp = fmul <16 x float> %i.bzk, %i.bzk
  %i.bzq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzp, <16 x float> %i.bzo, <16 x float> %i.bzk)
  %i.bzr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzq, <16 x float> %i.bzh, <16 x float> %i.bzh)
  %i.bzs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byf, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.bzt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzs, <16 x float> %i.byf, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.bzu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byi, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.bzv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzu, <16 x float> %i.byi, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.bzw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxc, <16 x float> %i.bzt, <16 x float> %i.bg)
  %i.bzx = fneg <16 x float> %i.bza               ; 2 uses
  %i.bzy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzx, <16 x float> %i.bzw, <16 x float> %i.bxc)
  %i.bzz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byc, <16 x float> %i.bzy, <16 x float> %i.bxn)
  %i.caa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxe, <16 x float> %i.bzv, <16 x float> %i.bg)
  %i.cab = fneg <16 x float> %i.bzr               ; 2 uses
  %i.cac = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cab, <16 x float> %i.caa, <16 x float> %i.bxe)
  %i.cad = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.byd, <16 x float> %i.cac, <16 x float> %i.bxo)
  %i.cae = select <16 x i1> %.not5289, <16 x float> zeroinitializer, <16 x float> %i.bk
  %i.caf = select <16 x i1> %.not5290, <16 x float> zeroinitializer, <16 x float> %i.bk
  %i.cag = fmul <16 x float> %i.byc, splat (float f0x3E2AAAAB)
  %i.cah = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bzx, <16 x float> %i.bzt, <16 x float> splat (float 1.000000e+00))
  %i.cai = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxc, <16 x float> %i.cah, <16 x float> %i.cae)
  %i.caj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cag, <16 x float> %i.cai, <16 x float> %i.bxx)
  %i.cak = fmul <16 x float> %i.byd, splat (float f0x3E2AAAAB)
  %i.cal = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cab, <16 x float> %i.bzv, <16 x float> splat (float 1.000000e+00))
  %i.cam = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bxe, <16 x float> %i.cal, <16 x float> %i.caf)
  %i.can = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cak, <16 x float> %i.cam, <16 x float> %i.bxy)
  %i.cao = select <16 x i1> %i.bwy, <16 x float> %i.bzz, <16 x float> zeroinitializer
  %i.cap = select <16 x i1> %i.bwz, <16 x float> %i.cad, <16 x float> zeroinitializer
  %i.caq = select <16 x i1> %i.bwy, <16 x float> %i.caj, <16 x float> zeroinitializer ; 2 uses
  %i.car = select <16 x i1> %i.bwz, <16 x float> %i.can, <16 x float> zeroinitializer ; 2 uses
  %i.cas = load ptr, ptr %i.ci, align 8, !tbaa !93
  %i.cat = load i32, ptr %i.cx, align 8, !tbaa !129
  %i.cau = sext i32 %i.bvk to i64
  %i.cav = getelementptr inbounds [4 x i8], ptr %i.cas, i64 %i.cau
  %13 = load <2 x i32>, ptr %i.cy, align 4, !tbaa !94 ; 2 uses
  %i.caw = load <2 x i32>, ptr %i.cav, align 4, !tbaa !94 ; 2 uses
  %i.cax = insertelement <2 x i32> poison, i32 %i.cat, i64 0
  %i.cay = shufflevector <2 x i32> %i.caw, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.caz = shufflevector <2 x i32> %i.caw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cba = shufflevector <2 x i32> %i.cax, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.cbb = ashr <4 x i32> %i.caz, %i.cba
  %i.cbc = shufflevector <4 x i32> %i.cbb, <4 x i32> %i.cay, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.cbd = shufflevector <2 x i32> %13, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.cbe = and <4 x i32> %i.cbc, %i.cbd
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cbf = mul nsw <4 x i32> %i.cbe, %14          ; 4 uses
  %i.cbg = load ptr, ptr %i.cq, align 8, !tbaa !99 ; 2 uses
  %i.cbh = load ptr, ptr %i.cbg, align 8, !tbaa !100 ; 4 uses
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cbg, i64 8
  %i.cbj = load ptr, ptr %i.cbi, align 8, !tbaa !100 ; 4 uses
  %i.cbk = shufflevector <16 x float> %i.caq, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.cbl = shufflevector <16 x float> %i.caq, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.cbm = extractelement <4 x i32> %i.cbf, i64 0
  %i.cbn = sext i32 %i.cbm to i64                 ; 4 uses
  %i.cbo = getelementptr inbounds [4 x i8], ptr %i.cbh, i64 %i.cbn ; 2 uses
  %i.cbp = getelementptr inbounds [4 x i8], ptr %i.cbj, i64 %i.cbn ; 2 uses
  %i.cbq = load <8 x float>, ptr %i.cbo, align 32, !tbaa !32
  %i.cbr = fadd <8 x float> %i.cbq, %i.cbk
  store <8 x float> %i.cbr, ptr %i.cbo, align 32, !tbaa !32
  %i.cbs = load <8 x float>, ptr %i.cbp, align 32, !tbaa !32
  %i.cbt = fadd <8 x float> %i.cbs, %i.cbl
  store <8 x float> %i.cbt, ptr %i.cbp, align 32, !tbaa !32
  %i.cbu = extractelement <4 x i32> %i.cbf, i64 1
  %i.cbv = sext i32 %i.cbu to i64                 ; 4 uses
  %i.cbw = getelementptr inbounds [4 x i8], ptr %i.cbh, i64 %i.cbv
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbw, i64 32 ; 2 uses
  %i.cby = getelementptr inbounds [4 x i8], ptr %i.cbj, i64 %i.cbv
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cby, i64 32 ; 2 uses
  %i.cca = load <8 x float>, ptr %i.cbx, align 32, !tbaa !32
  %i.ccb = fadd <8 x float> %i.cbk, %i.cca
  store <8 x float> %i.ccb, ptr %i.cbx, align 32, !tbaa !32
  %i.ccc = load <8 x float>, ptr %i.cbz, align 32, !tbaa !32
  %i.ccd = fadd <8 x float> %i.ccc, %i.cbl
  store <8 x float> %i.ccd, ptr %i.cbz, align 32, !tbaa !32
  %i.cce = extractelement <4 x i32> %i.cbf, i64 2
  %i.ccf = sext i32 %i.cce to i64                 ; 4 uses
  %i.ccg = getelementptr inbounds [4 x i8], ptr %i.cbh, i64 %i.ccf
  %i.cch = getelementptr inbounds nuw i8, ptr %i.ccg, i64 64 ; 2 uses
  %i.cci = getelementptr inbounds [4 x i8], ptr %i.cbj, i64 %i.ccf
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.cci, i64 64 ; 2 uses
  %i.cck = load <8 x float>, ptr %i.cch, align 32, !tbaa !32
  %i.ccl = fadd <8 x float> %i.cbk, %i.cck
  store <8 x float> %i.ccl, ptr %i.cch, align 32, !tbaa !32
  %i.ccm = load <8 x float>, ptr %i.ccj, align 32, !tbaa !32
  %i.ccn = fadd <8 x float> %i.ccm, %i.cbl
  store <8 x float> %i.ccn, ptr %i.ccj, align 32, !tbaa !32
  %i.cco = extractelement <4 x i32> %i.cbf, i64 3
  %i.ccp = sext i32 %i.cco to i64                 ; 4 uses
  %i.ccq = getelementptr inbounds [4 x i8], ptr %i.cbh, i64 %i.ccp
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.ccq, i64 96 ; 2 uses
  %i.ccs = getelementptr inbounds [4 x i8], ptr %i.cbj, i64 %i.ccp
  %i.cct = getelementptr inbounds nuw i8, ptr %i.ccs, i64 96 ; 2 uses
  %i.ccu = load <8 x float>, ptr %i.ccr, align 32, !tbaa !32
  %i.ccv = fadd <8 x float> %i.cbk, %i.ccu
  store <8 x float> %i.ccv, ptr %i.ccr, align 32, !tbaa !32
  %i.ccw = load <8 x float>, ptr %i.cct, align 32, !tbaa !32
  %i.ccx = fadd <8 x float> %i.ccw, %i.cbl
  store <8 x float> %i.ccx, ptr %i.cct, align 32, !tbaa !32
  %i.ccy = load ptr, ptr %i.cq, align 8, !tbaa !99 ; 2 uses
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.ccy, i64 16
  %i.cda = load ptr, ptr %i.ccz, align 8, !tbaa !100 ; 4 uses
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.ccy, i64 24
  %i.cdc = load ptr, ptr %i.cdb, align 8, !tbaa !100 ; 4 uses
  %i.cdd = shufflevector <16 x float> %i.car, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.cde = shufflevector <16 x float> %i.car, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.cdf = getelementptr inbounds [4 x i8], ptr %i.cda, i64 %i.cbn ; 2 uses
  %i.cdg = getelementptr inbounds [4 x i8], ptr %i.cdc, i64 %i.cbn ; 2 uses
  %i.cdh = load <8 x float>, ptr %i.cdf, align 32, !tbaa !32
  %i.cdi = fadd <8 x float> %i.cdd, %i.cdh
  store <8 x float> %i.cdi, ptr %i.cdf, align 32, !tbaa !32
  %i.cdj = load <8 x float>, ptr %i.cdg, align 32, !tbaa !32
  %i.cdk = fadd <8 x float> %i.cdj, %i.cde
  store <8 x float> %i.cdk, ptr %i.cdg, align 32, !tbaa !32
  %i.cdl = getelementptr inbounds [4 x i8], ptr %i.cda, i64 %i.cbv
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.cdl, i64 32 ; 2 uses
  %i.cdn = getelementptr inbounds [4 x i8], ptr %i.cdc, i64 %i.cbv
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.cdn, i64 32 ; 2 uses
  %i.cdp = load <8 x float>, ptr %i.cdm, align 32, !tbaa !32
  %i.cdq = fadd <8 x float> %i.cdd, %i.cdp
  store <8 x float> %i.cdq, ptr %i.cdm, align 32, !tbaa !32
  %i.cdr = load <8 x float>, ptr %i.cdo, align 32, !tbaa !32
  %i.cds = fadd <8 x float> %i.cdr, %i.cde
  store <8 x float> %i.cds, ptr %i.cdo, align 32, !tbaa !32
  %i.cdt = getelementptr inbounds [4 x i8], ptr %i.cda, i64 %i.ccf
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cdt, i64 64 ; 2 uses
  %i.cdv = getelementptr inbounds [4 x i8], ptr %i.cdc, i64 %i.ccf
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.cdv, i64 64 ; 2 uses
  %i.cdx = load <8 x float>, ptr %i.cdu, align 32, !tbaa !32
  %i.cdy = fadd <8 x float> %i.cdd, %i.cdx
  store <8 x float> %i.cdy, ptr %i.cdu, align 32, !tbaa !32
  %i.cdz = load <8 x float>, ptr %i.cdw, align 32, !tbaa !32
  %i.cea = fadd <8 x float> %i.cdz, %i.cde
  store <8 x float> %i.cea, ptr %i.cdw, align 32, !tbaa !32
  %i.ceb = getelementptr inbounds [4 x i8], ptr %i.cda, i64 %i.ccp
  %i.cec = getelementptr inbounds nuw i8, ptr %i.ceb, i64 96 ; 2 uses
  %i.ced = getelementptr inbounds [4 x i8], ptr %i.cdc, i64 %i.ccp
  %i.cee = getelementptr inbounds nuw i8, ptr %i.ced, i64 96 ; 2 uses
  %i.cef = load <8 x float>, ptr %i.cec, align 32, !tbaa !32
  %i.ceg = fadd <8 x float> %i.cdd, %i.cef
  store <8 x float> %i.ceg, ptr %i.cec, align 32, !tbaa !32
  %i.ceh = load <8 x float>, ptr %i.cee, align 32, !tbaa !32
  %i.cei = fadd <8 x float> %i.ceh, %i.cde
  store <8 x float> %i.cei, ptr %i.cee, align 32, !tbaa !32
  %i.cej = fmul <16 x float> %i.bww, %i.cao       ; 3 uses
  %i.cek = fmul <16 x float> %i.bwx, %i.cap       ; 3 uses
  %i.cel = fmul <16 x float> %i.buq, %i.cej       ; 2 uses
  %i.cem = fmul <16 x float> %i.bur, %i.cek       ; 2 uses
  %i.cen = fmul <16 x float> %i.bus, %i.cej       ; 2 uses
  %i.ceo = fmul <16 x float> %i.but, %i.cek       ; 2 uses
  %i.cep = fmul <16 x float> %i.buu, %i.cej       ; 2 uses
  %i.ceq = fmul <16 x float> %i.buv, %i.cek       ; 2 uses
  %i.cer = fadd <16 x float> %.sroa.04244.44903, %i.cel ; 2 uses
  %i.ces = fadd <16 x float> %.sroa.164251.44902, %i.cem ; 2 uses
  %i.cet = fadd <16 x float> %.sroa.04226.44905, %i.cen ; 2 uses
  %i.ceu = fadd <16 x float> %.sroa.164233.44904, %i.ceo ; 2 uses
  %i.cev = fadd <16 x float> %.sroa.04209.44907, %i.cep ; 2 uses
  %i.cew = fadd <16 x float> %.sroa.16.44906, %i.ceq ; 2 uses
  %i.cex = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.buj ; 4 uses
  %i.cey = fadd <16 x float> %i.cel, %i.cem       ; 2 uses
  %i.cez = fadd <16 x float> %i.cen, %i.ceo       ; 2 uses
  %i.cfa = fadd <16 x float> %i.cep, %i.ceq       ; 2 uses
  %i.cfb = load <8 x float>, ptr %i.cex, align 32, !tbaa !32
  %i.cfc = shufflevector <16 x float> %i.cey, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cfd = shufflevector <16 x float> %i.cey, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cfe = fadd <8 x float> %i.cfc, %i.cfd
  %i.cff = fsub <8 x float> %i.cfb, %i.cfe
  store <8 x float> %i.cff, ptr %i.cex, align 32, !tbaa !32
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cex, i64 32 ; 2 uses
  %i.cfh = load <8 x float>, ptr %i.cfg, align 32, !tbaa !32
  %i.cfi = shufflevector <16 x float> %i.cez, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cfj = shufflevector <16 x float> %i.cez, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cfk = fadd <8 x float> %i.cfi, %i.cfj
  %i.cfl = fsub <8 x float> %i.cfh, %i.cfk
  store <8 x float> %i.cfl, ptr %i.cfg, align 32, !tbaa !32
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.cex, i64 64 ; 2 uses
  %i.cfn = load <8 x float>, ptr %i.cfm, align 32, !tbaa !32
  %i.cfo = shufflevector <16 x float> %i.cfa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cfp = shufflevector <16 x float> %i.cfa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cfq = fadd <8 x float> %i.cfo, %i.cfp
  %i.cfr = fsub <8 x float> %i.cfn, %i.cfq
  store <8 x float> %i.cfr, ptr %i.cfm, align 32, !tbaa !32
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !21

.critedge5.loopexit:                              ; preds = %bb.m
  %i.cfs = trunc nsw i64 %indvars.iv to i32
  br label %.critedge5

.critedge5:                                       ; preds = %.critedge5.loopexit, %.preheader4889
  %.sroa.164251.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4889 ], [ %.sroa.164251.44902, %.critedge5.loopexit ] ; 2 uses
  %.sroa.04244.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4889 ], [ %.sroa.04244.44903, %.critedge5.loopexit ] ; 2 uses
  %.sroa.164233.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4889 ], [ %.sroa.164233.44904, %.critedge5.loopexit ] ; 2 uses
  %.sroa.04226.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4889 ], [ %.sroa.04226.44905, %.critedge5.loopexit ] ; 2 uses
  %.sroa.16.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4889 ], [ %.sroa.16.44906, %.critedge5.loopexit ] ; 2 uses
  %.sroa.04209.4.lcssa = phi <16 x float> [ zeroinitializer, %.preheader4889 ], [ %.sroa.04209.44907, %.critedge5.loopexit ] ; 2 uses
  %.4.lcssa = phi i32 [ %i.df, %.preheader4889 ], [ %i.cfs, %.critedge5.loopexit ] ; 2 uses
  %i.cft = icmp slt i32 %.4.lcssa, %i.dh
  br i1 %i.cft, label %.lr.ph4931, label %.loopexit

.lr.ph4931:                                       ; preds = %.critedge5
  %i.cfu = sext i32 %.4.lcssa to i64
  %wide.trip.count5084 = sext i32 %i.dh to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph4931, %bb.q
  %indvars.iv5081 = phi i64 [ %i.cfu, %.lr.ph4931 ], [ %indvars.iv.next5082, %bb.q ] ; 2 uses
  %.sroa.04209.54929 = phi <16 x float> [ %.sroa.04209.4.lcssa, %.lr.ph4931 ], [ %i.cpu, %bb.q ]
  %.sroa.16.54928 = phi <16 x float> [ %.sroa.16.4.lcssa, %.lr.ph4931 ], [ %i.cpv, %bb.q ]
  %.sroa.04226.54927 = phi <16 x float> [ %.sroa.04226.4.lcssa, %.lr.ph4931 ], [ %i.cps, %bb.q ]
  %.sroa.164233.54926 = phi <16 x float> [ %.sroa.164233.4.lcssa, %.lr.ph4931 ], [ %i.cpt, %bb.q ]
  %.sroa.04244.54925 = phi <16 x float> [ %.sroa.04244.4.lcssa, %.lr.ph4931 ], [ %i.cpq, %bb.q ]
  %.sroa.164251.54924 = phi <16 x float> [ %.sroa.164251.4.lcssa, %.lr.ph4931 ], [ %i.cpr, %bb.q ]
  %i.cfv = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %indvars.iv5081
  %i.cfw = load i32, ptr %i.cfv, align 4, !tbaa !102 ; 4 uses
  %i.cfx = shl nsw i32 %i.cfw, 3
  %i.cfy = mul nsw i32 %i.cfw, 24
  %i.cfz = sext i32 %i.cfy to i64                 ; 2 uses
  %i.cga = getelementptr [4 x i8], ptr %i.by, i64 %i.cfz ; 3 uses
  %.val7605445 = load <8 x float>, ptr %i.cga, align 32, !tbaa !32
  %i.cgb = getelementptr i8, ptr %i.cga, i64 32
  %.val7615446 = load <8 x float>, ptr %i.cgb, align 32, !tbaa !32
  %i.cgc = getelementptr i8, ptr %i.cga, i64 64
  %.val7625447 = load <8 x float>, ptr %i.cgc, align 32, !tbaa !32
  %i.cgd = sext i32 %i.cfx to i64
  %i.cge = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cgd
  %.val7644875 = load <8 x i32>, ptr %i.cge, align 32, !tbaa !32 ; 4 uses
  %i.cgf = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nf, <8 x i32> %.val7644875, <8 x i1> splat (i1 true), i32 8)
  %i.cgg = bitcast <8 x double> %i.cgf to <16 x float> ; 2 uses
  %i.cgh = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nl, <8 x i32> %.val7644875, <8 x i1> splat (i1 true), i32 8)
  %i.cgi = bitcast <8 x double> %i.cgh to <16 x float> ; 2 uses
  %i.cgj = shufflevector <16 x float> %i.cgg, <16 x float> %i.cgi, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.cgk = shufflevector <16 x float> %i.cgg, <16 x float> %i.cgi, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.cgl = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nr, <8 x i32> %.val7644875, <8 x i1> splat (i1 true), i32 8)
  %i.cgm = bitcast <8 x double> %i.cgl to <16 x float> ; 2 uses
  %i.cgn = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nx, <8 x i32> %.val7644875, <8 x i1> splat (i1 true), i32 8)
  %i.cgo = bitcast <8 x double> %i.cgn to <16 x float> ; 2 uses
  %i.cgp = shufflevector <16 x float> %i.cgm, <16 x float> %i.cgo, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.cgq = shufflevector <16 x float> %i.cgm, <16 x float> %i.cgo, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.cgr = shufflevector <8 x float> %.val7605445, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cgs = shufflevector <8 x float> %.val7615446, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cgt = shufflevector <8 x float> %.val7625447, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cgu = fsub <16 x float> %i.lf, %i.cgr        ; 3 uses
  %i.cgv = fsub <16 x float> %i.ll, %i.cgr        ; 3 uses
  %i.cgw = fsub <16 x float> %i.ls, %i.cgs        ; 3 uses
  %i.cgx = fsub <16 x float> %i.ly, %i.cgs        ; 3 uses
  %i.cgy = fsub <16 x float> %i.mf, %i.cgt        ; 3 uses
  %i.cgz = fsub <16 x float> %i.ml, %i.cgt        ; 3 uses
  %i.cha = fmul <16 x float> %i.cgu, %i.cgu
  %i.chb = fmul <16 x float> %i.cgw, %i.cgw
  %i.chc = fadd <16 x float> %i.cha, %i.chb
  %i.chd = fmul <16 x float> %i.cgy, %i.cgy
  %i.che = fadd <16 x float> %i.chc, %i.chd       ; 2 uses
  %i.chf = fmul <16 x float> %i.cgv, %i.cgv
  %i.chg = fmul <16 x float> %i.cgx, %i.cgx
  %i.chh = fadd <16 x float> %i.chf, %i.chg
  %i.chi = fmul <16 x float> %i.cgz, %i.cgz
  %i.chj = fadd <16 x float> %i.chh, %i.chi       ; 2 uses
  %i.chk = fcmp olt <16 x float> %i.che, %i.bp    ; 2 uses
  %i.chl = fcmp olt <16 x float> %i.chj, %i.bp    ; 2 uses
  %i.chm = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.che, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.chn = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.chj, <16 x float> splat (float 3.820000e-07), i32 4) ; 4 uses
  %i.cho = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.chm, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.chp = fmul <16 x float> %i.chm, %i.cho
  %i.chq = fmul <16 x float> %i.cho, splat (float -5.000000e-01)
  %i.chr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.chp, <16 x float> %i.cho, <16 x float> splat (float -3.000000e+00))
  %i.chs = fmul <16 x float> %i.chq, %i.chr
  %i.cht = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.chn, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.chu = fmul <16 x float> %i.chn, %i.cht
  %i.chv = fmul <16 x float> %i.cht, splat (float -5.000000e-01)
  %i.chw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.chu, <16 x float> %i.cht, <16 x float> splat (float -3.000000e+00))
  %i.chx = fmul <16 x float> %i.chv, %i.chw
  %i.chy = select <16 x i1> %i.chk, <16 x float> %i.chs, <16 x float> zeroinitializer ; 2 uses
  %i.chz = select <16 x i1> %i.chl, <16 x float> %i.chx, <16 x float> zeroinitializer ; 2 uses
  %i.cia = fmul <16 x float> %i.chy, %i.chy       ; 4 uses
  %i.cib = fmul <16 x float> %i.chz, %i.chz       ; 4 uses
  %i.cic = fcmp olt <16 x float> %i.chm, %i.bu    ; 2 uses
  %i.cid = fcmp olt <16 x float> %i.chn, %i.bu    ; 2 uses
  %i.cie = shl nsw i32 %i.cfw, 4
  %i.cif = fmul <16 x float> %i.cia, %i.cia
  %i.cig = fmul <16 x float> %i.cia, %i.cif       ; 6 uses
  %i.cih = fmul <16 x float> %i.cib, %i.cib
  %i.cii = fmul <16 x float> %i.cib, %i.cih       ; 6 uses
  %i.cij = fmul <16 x float> %i.cig, %i.cig
  %i.cik = fmul <16 x float> %i.cii, %i.cii
  %i.cil = fmul <16 x float> %i.cig, %i.cgj       ; 2 uses
  %i.cim = fmul <16 x float> %i.cii, %i.cgp       ; 2 uses
  %i.cin = fmul <16 x float> %i.cij, %i.cgk       ; 2 uses
  %i.cio = fmul <16 x float> %i.cik, %i.cgq       ; 2 uses
  %i.cip = fsub <16 x float> %i.cin, %i.cil
  %i.ciq = fsub <16 x float> %i.cio, %i.cim
  %i.cir = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cgj, <16 x float> %i.at, <16 x float> %i.cil)
  %i.cis = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cgp, <16 x float> %i.at, <16 x float> %i.cim)
  %i.cit = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cgk, <16 x float> %i.aw, <16 x float> %i.cin)
  %i.ciu = fmul <16 x float> %i.cir, splat (float f0xBE2AAAAB)
  %i.civ = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cit, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.ciu)
  %i.ciw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cgq, <16 x float> %i.aw, <16 x float> %i.cio)
  %i.cix = fmul <16 x float> %i.cis, splat (float f0xBE2AAAAB)
  %i.ciy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ciw, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.cix)
  %i.ciz = sext i32 %i.cie to i64
  %i.cja = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ciz
  %.val7635448 = load <8 x float>, ptr %i.cja, align 32, !tbaa !32
  %i.cjb = shufflevector <8 x float> %.val7635448, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cjc = fmul <16 x float> %i.od, %i.cjb        ; 2 uses
  %i.cjd = fmul <16 x float> %i.oi, %i.cjb        ; 2 uses
  %i.cje = select <16 x i1> %i.chk, <16 x float> %i.chm, <16 x float> zeroinitializer
  %i.cjf = fmul <16 x float> %i.be, %i.cje        ; 3 uses
  %i.cjg = bitcast <16 x float> %i.cjf to <8 x i64>
  %i.cjh = select <16 x i1> %i.chl, <16 x float> %i.chn, <16 x float> zeroinitializer
  %i.cji = fmul <16 x float> %i.be, %i.cjh        ; 3 uses
  %i.cjj = bitcast <16 x float> %i.cji to <8 x i64>
  %i.cjk = xor <8 x i64> %i.cjg, splat (i64 -9223372034707292160)
  %i.cjl = bitcast <8 x i64> %i.cjk to <16 x float> ; 2 uses
  %i.cjm = fmul <16 x float> %i.cjl, splat (float f0x3FB8AA3B) ; 2 uses
  %i.cjn = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cjm, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cjo = shl <16 x i32> %i.cjn, splat (i32 23)
  %i.cjp = add <16 x i32> %i.cjo, splat (i32 1065353216)
  %i.cjq = bitcast <16 x i32> %i.cjp to <16 x float> ; 2 uses
  %i.cjr = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.cjm, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.cjs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cjr, <16 x float> splat (float f0xBF317200), <16 x float> %i.cjl)
  %i.cjt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cjr, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.cjs) ; 7 uses
  %i.cju = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cjt, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.cjv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cju, <16 x float> %i.cjt, <16 x float> splat (float f0x3D2AAF4C))
  %i.cjw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cjv, <16 x float> %i.cjt, <16 x float> splat (float f0x3E2AAA5E))
  %i.cjx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cjw, <16 x float> %i.cjt, <16 x float> splat (float f0x3EFFFFFB))
  %i.cjy = fmul <16 x float> %i.cjt, %i.cjt
  %i.cjz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cjy, <16 x float> %i.cjx, <16 x float> %i.cjt)
  %i.cka = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cjz, <16 x float> %i.cjq, <16 x float> %i.cjq)
  %i.ckb = xor <8 x i64> %i.cjj, splat (i64 -9223372034707292160)
  %i.ckc = bitcast <8 x i64> %i.ckb to <16 x float> ; 2 uses
  %i.ckd = fmul <16 x float> %i.ckc, splat (float f0x3FB8AA3B) ; 2 uses
  %i.cke = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.ckd, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ckf = shl <16 x i32> %i.cke, splat (i32 23)
  %i.ckg = add <16 x i32> %i.ckf, splat (i32 1065353216)
  %i.ckh = bitcast <16 x i32> %i.ckg to <16 x float> ; 2 uses
  %i.cki = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ckd, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.ckj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cki, <16 x float> splat (float f0xBF317200), <16 x float> %i.ckc)
  %i.ckk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cki, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.ckj) ; 7 uses
  %i.ckl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ckk, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.ckm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ckl, <16 x float> %i.ckk, <16 x float> splat (float f0x3D2AAF4C))
  %i.ckn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ckm, <16 x float> %i.ckk, <16 x float> splat (float f0x3E2AAA5E))
  %i.cko = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ckn, <16 x float> %i.ckk, <16 x float> splat (float f0x3EFFFFFB))
  %i.ckp = fmul <16 x float> %i.ckk, %i.ckk
  %i.ckq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ckp, <16 x float> %i.cko, <16 x float> %i.ckk)
  %i.ckr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ckq, <16 x float> %i.ckh, <16 x float> %i.ckh)
  %i.cks = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cjf, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.ckt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cks, <16 x float> %i.cjf, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.cku = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cji, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.ckv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cku, <16 x float> %i.cji, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.ckw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cig, <16 x float> %i.ckt, <16 x float> %i.bg)
  %i.ckx = fneg <16 x float> %i.cka               ; 2 uses
  %i.cky = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ckx, <16 x float> %i.ckw, <16 x float> %i.cig)
  %i.ckz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cjc, <16 x float> %i.cky, <16 x float> %i.cip)
  %i.cla = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cii, <16 x float> %i.ckv, <16 x float> %i.bg)
  %i.clb = fneg <16 x float> %i.ckr               ; 2 uses
  %i.clc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.clb, <16 x float> %i.cla, <16 x float> %i.cii)
  %i.cld = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cjd, <16 x float> %i.clc, <16 x float> %i.ciq)
  %i.cle = fmul <16 x float> %i.cjc, splat (float f0x3E2AAAAB)
  %i.clf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ckx, <16 x float> %i.ckt, <16 x float> splat (float 1.000000e+00))
  %i.clg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cig, <16 x float> %i.clf, <16 x float> %i.bk)
  %i.clh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cle, <16 x float> %i.clg, <16 x float> %i.civ)
  %i.cli = fmul <16 x float> %i.cjd, splat (float f0x3E2AAAAB)
  %i.clj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.clb, <16 x float> %i.ckv, <16 x float> splat (float 1.000000e+00))
  %i.clk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cii, <16 x float> %i.clj, <16 x float> %i.bk)
  %i.cll = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cli, <16 x float> %i.clk, <16 x float> %i.ciy)
  %i.clm = select <16 x i1> %i.cic, <16 x float> %i.ckz, <16 x float> zeroinitializer
  %i.cln = select <16 x i1> %i.cid, <16 x float> %i.cld, <16 x float> zeroinitializer
  %i.clo = select <16 x i1> %i.cic, <16 x float> %i.clh, <16 x float> zeroinitializer ; 2 uses
  %i.clp = select <16 x i1> %i.cid, <16 x float> %i.cll, <16 x float> zeroinitializer ; 2 uses
  %i.clq = load ptr, ptr %i.ci, align 8, !tbaa !93
  %i.clr = shl nsw i32 %i.cfw, 1
  %i.cls = load i32, ptr %i.cx, align 8, !tbaa !129
  %i.clt = sext i32 %i.clr to i64
  %i.clu = getelementptr inbounds [4 x i8], ptr %i.clq, i64 %i.clt
  %15 = load <2 x i32>, ptr %i.cy, align 4, !tbaa !94 ; 2 uses
  %i.clv = load <2 x i32>, ptr %i.clu, align 4, !tbaa !94 ; 2 uses
  %i.clw = insertelement <2 x i32> poison, i32 %i.cls, i64 0
  %i.clx = shufflevector <2 x i32> %i.clv, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.cly = shufflevector <2 x i32> %i.clv, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.clz = shufflevector <2 x i32> %i.clw, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.cma = ashr <4 x i32> %i.cly, %i.clz
  %i.cmb = shufflevector <4 x i32> %i.cma, <4 x i32> %i.clx, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.cmc = shufflevector <2 x i32> %15, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.cmd = and <4 x i32> %i.cmb, %i.cmc
  %16 = shufflevector <2 x i32> %15, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cme = mul nsw <4 x i32> %i.cmd, %16          ; 4 uses
  %i.cmf = load ptr, ptr %i.cq, align 8, !tbaa !99 ; 2 uses
  %i.cmg = load ptr, ptr %i.cmf, align 8, !tbaa !100 ; 4 uses
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.cmf, i64 8
  %i.cmi = load ptr, ptr %i.cmh, align 8, !tbaa !100 ; 4 uses
  %i.cmj = shufflevector <16 x float> %i.clo, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.cmk = shufflevector <16 x float> %i.clo, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.cml = extractelement <4 x i32> %i.cme, i64 0
  %i.cmm = sext i32 %i.cml to i64                 ; 4 uses
  %i.cmn = getelementptr inbounds [4 x i8], ptr %i.cmg, i64 %i.cmm ; 2 uses
  %i.cmo = getelementptr inbounds [4 x i8], ptr %i.cmi, i64 %i.cmm ; 2 uses
  %i.cmp = load <8 x float>, ptr %i.cmn, align 32, !tbaa !32
  %i.cmq = fadd <8 x float> %i.cmp, %i.cmj
  store <8 x float> %i.cmq, ptr %i.cmn, align 32, !tbaa !32
  %i.cmr = load <8 x float>, ptr %i.cmo, align 32, !tbaa !32
  %i.cms = fadd <8 x float> %i.cmr, %i.cmk
  store <8 x float> %i.cms, ptr %i.cmo, align 32, !tbaa !32
  %i.cmt = extractelement <4 x i32> %i.cme, i64 1
  %i.cmu = sext i32 %i.cmt to i64                 ; 4 uses
  %i.cmv = getelementptr inbounds [4 x i8], ptr %i.cmg, i64 %i.cmu
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.cmv, i64 32 ; 2 uses
  %i.cmx = getelementptr inbounds [4 x i8], ptr %i.cmi, i64 %i.cmu
  %i.cmy = getelementptr inbounds nuw i8, ptr %i.cmx, i64 32 ; 2 uses
  %i.cmz = load <8 x float>, ptr %i.cmw, align 32, !tbaa !32
  %i.cna = fadd <8 x float> %i.cmj, %i.cmz
  store <8 x float> %i.cna, ptr %i.cmw, align 32, !tbaa !32
  %i.cnb = load <8 x float>, ptr %i.cmy, align 32, !tbaa !32
  %i.cnc = fadd <8 x float> %i.cnb, %i.cmk
  store <8 x float> %i.cnc, ptr %i.cmy, align 32, !tbaa !32
  %i.cnd = extractelement <4 x i32> %i.cme, i64 2
  %i.cne = sext i32 %i.cnd to i64                 ; 4 uses
  %i.cnf = getelementptr inbounds [4 x i8], ptr %i.cmg, i64 %i.cne
  %i.cng = getelementptr inbounds nuw i8, ptr %i.cnf, i64 64 ; 2 uses
  %i.cnh = getelementptr inbounds [4 x i8], ptr %i.cmi, i64 %i.cne
  %i.cni = getelementptr inbounds nuw i8, ptr %i.cnh, i64 64 ; 2 uses
  %i.cnj = load <8 x float>, ptr %i.cng, align 32, !tbaa !32
  %i.cnk = fadd <8 x float> %i.cmj, %i.cnj
  store <8 x float> %i.cnk, ptr %i.cng, align 32, !tbaa !32
  %i.cnl = load <8 x float>, ptr %i.cni, align 32, !tbaa !32
  %i.cnm = fadd <8 x float> %i.cnl, %i.cmk
  store <8 x float> %i.cnm, ptr %i.cni, align 32, !tbaa !32
  %i.cnn = extractelement <4 x i32> %i.cme, i64 3
  %i.cno = sext i32 %i.cnn to i64                 ; 4 uses
  %i.cnp = getelementptr inbounds [4 x i8], ptr %i.cmg, i64 %i.cno
  %i.cnq = getelementptr inbounds nuw i8, ptr %i.cnp, i64 96 ; 2 uses
  %i.cnr = getelementptr inbounds [4 x i8], ptr %i.cmi, i64 %i.cno
  %i.cns = getelementptr inbounds nuw i8, ptr %i.cnr, i64 96 ; 2 uses
  %i.cnt = load <8 x float>, ptr %i.cnq, align 32, !tbaa !32
  %i.cnu = fadd <8 x float> %i.cmj, %i.cnt
  store <8 x float> %i.cnu, ptr %i.cnq, align 32, !tbaa !32
  %i.cnv = load <8 x float>, ptr %i.cns, align 32, !tbaa !32
  %i.cnw = fadd <8 x float> %i.cnv, %i.cmk
  store <8 x float> %i.cnw, ptr %i.cns, align 32, !tbaa !32
  %i.cnx = load ptr, ptr %i.cq, align 8, !tbaa !99 ; 2 uses
  %i.cny = getelementptr inbounds nuw i8, ptr %i.cnx, i64 16
  %i.cnz = load ptr, ptr %i.cny, align 8, !tbaa !100 ; 4 uses
  %i.coa = getelementptr inbounds nuw i8, ptr %i.cnx, i64 24
  %i.cob = load ptr, ptr %i.coa, align 8, !tbaa !100 ; 4 uses
  %i.coc = shufflevector <16 x float> %i.clp, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.cod = shufflevector <16 x float> %i.clp, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.coe = getelementptr inbounds [4 x i8], ptr %i.cnz, i64 %i.cmm ; 2 uses
  %i.cof = getelementptr inbounds [4 x i8], ptr %i.cob, i64 %i.cmm ; 2 uses
  %i.cog = load <8 x float>, ptr %i.coe, align 32, !tbaa !32
  %i.coh = fadd <8 x float> %i.coc, %i.cog
  store <8 x float> %i.coh, ptr %i.coe, align 32, !tbaa !32
  %i.coi = load <8 x float>, ptr %i.cof, align 32, !tbaa !32
  %i.coj = fadd <8 x float> %i.coi, %i.cod
  store <8 x float> %i.coj, ptr %i.cof, align 32, !tbaa !32
  %i.cok = getelementptr inbounds [4 x i8], ptr %i.cnz, i64 %i.cmu
  %i.col = getelementptr inbounds nuw i8, ptr %i.cok, i64 32 ; 2 uses
  %i.com = getelementptr inbounds [4 x i8], ptr %i.cob, i64 %i.cmu
  %i.con = getelementptr inbounds nuw i8, ptr %i.com, i64 32 ; 2 uses
  %i.coo = load <8 x float>, ptr %i.col, align 32, !tbaa !32
  %i.cop = fadd <8 x float> %i.coc, %i.coo
  store <8 x float> %i.cop, ptr %i.col, align 32, !tbaa !32
  %i.coq = load <8 x float>, ptr %i.con, align 32, !tbaa !32
  %i.cor = fadd <8 x float> %i.coq, %i.cod
  store <8 x float> %i.cor, ptr %i.con, align 32, !tbaa !32
  %i.cos = getelementptr inbounds [4 x i8], ptr %i.cnz, i64 %i.cne
  %i.cot = getelementptr inbounds nuw i8, ptr %i.cos, i64 64 ; 2 uses
  %i.cou = getelementptr inbounds [4 x i8], ptr %i.cob, i64 %i.cne
  %i.cov = getelementptr inbounds nuw i8, ptr %i.cou, i64 64 ; 2 uses
  %i.cow = load <8 x float>, ptr %i.cot, align 32, !tbaa !32
  %i.cox = fadd <8 x float> %i.coc, %i.cow
  store <8 x float> %i.cox, ptr %i.cot, align 32, !tbaa !32
  %i.coy = load <8 x float>, ptr %i.cov, align 32, !tbaa !32
  %i.coz = fadd <8 x float> %i.coy, %i.cod
  store <8 x float> %i.coz, ptr %i.cov, align 32, !tbaa !32
  %i.cpa = getelementptr inbounds [4 x i8], ptr %i.cnz, i64 %i.cno
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.cpa, i64 96 ; 2 uses
  %i.cpc = getelementptr inbounds [4 x i8], ptr %i.cob, i64 %i.cno
  %i.cpd = getelementptr inbounds nuw i8, ptr %i.cpc, i64 96 ; 2 uses
  %i.cpe = load <8 x float>, ptr %i.cpb, align 32, !tbaa !32
  %i.cpf = fadd <8 x float> %i.coc, %i.cpe
  store <8 x float> %i.cpf, ptr %i.cpb, align 32, !tbaa !32
  %i.cpg = load <8 x float>, ptr %i.cpd, align 32, !tbaa !32
  %i.cph = fadd <8 x float> %i.cpg, %i.cod
  store <8 x float> %i.cph, ptr %i.cpd, align 32, !tbaa !32
  %i.cpi = fmul <16 x float> %i.cia, %i.clm       ; 3 uses
  %i.cpj = fmul <16 x float> %i.cib, %i.cln       ; 3 uses
  %i.cpk = fmul <16 x float> %i.cgu, %i.cpi       ; 2 uses
  %i.cpl = fmul <16 x float> %i.cgv, %i.cpj       ; 2 uses
  %i.cpm = fmul <16 x float> %i.cgw, %i.cpi       ; 2 uses
  %i.cpn = fmul <16 x float> %i.cgx, %i.cpj       ; 2 uses
  %i.cpo = fmul <16 x float> %i.cgy, %i.cpi       ; 2 uses
  %i.cpp = fmul <16 x float> %i.cgz, %i.cpj       ; 2 uses
  %i.cpq = fadd <16 x float> %.sroa.04244.54925, %i.cpk ; 2 uses
  %i.cpr = fadd <16 x float> %.sroa.164251.54924, %i.cpl ; 2 uses
  %i.cps = fadd <16 x float> %.sroa.04226.54927, %i.cpm ; 2 uses
  %i.cpt = fadd <16 x float> %.sroa.164233.54926, %i.cpn ; 2 uses
  %i.cpu = fadd <16 x float> %.sroa.04209.54929, %i.cpo ; 2 uses
  %i.cpv = fadd <16 x float> %.sroa.16.54928, %i.cpp ; 2 uses
  %i.cpw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cfz ; 4 uses
  %i.cpx = fadd <16 x float> %i.cpk, %i.cpl       ; 2 uses
  %i.cpy = fadd <16 x float> %i.cpm, %i.cpn       ; 2 uses
  %i.cpz = fadd <16 x float> %i.cpo, %i.cpp       ; 2 uses
  %i.cqa = load <8 x float>, ptr %i.cpw, align 32, !tbaa !32
  %i.cqb = shufflevector <16 x float> %i.cpx, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cqc = shufflevector <16 x float> %i.cpx, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cqd = fadd <8 x float> %i.cqb, %i.cqc
  %i.cqe = fsub <8 x float> %i.cqa, %i.cqd
  store <8 x float> %i.cqe, ptr %i.cpw, align 32, !tbaa !32
  %i.cqf = getelementptr inbounds nuw i8, ptr %i.cpw, i64 32 ; 2 uses
  %i.cqg = load <8 x float>, ptr %i.cqf, align 32, !tbaa !32
  %i.cqh = shufflevector <16 x float> %i.cpy, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cqi = shufflevector <16 x float> %i.cpy, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cqj = fadd <8 x float> %i.cqh, %i.cqi
  %i.cqk = fsub <8 x float> %i.cqg, %i.cqj
  store <8 x float> %i.cqk, ptr %i.cqf, align 32, !tbaa !32
  %i.cql = getelementptr inbounds nuw i8, ptr %i.cpw, i64 64 ; 2 uses
  %i.cqm = load <8 x float>, ptr %i.cql, align 32, !tbaa !32
  %i.cqn = shufflevector <16 x float> %i.cpz, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cqo = shufflevector <16 x float> %i.cpz, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cqp = fadd <8 x float> %i.cqn, %i.cqo
  %i.cqq = fsub <8 x float> %i.cqm, %i.cqp
  store <8 x float> %i.cqq, ptr %i.cql, align 32, !tbaa !32
  %indvars.iv.next5082 = add nsw i64 %indvars.iv5081, 1 ; 2 uses
  %exitcond5085.not = icmp eq i64 %indvars.iv.next5082, %wide.trip.count5084
  br i1 %exitcond5085.not, label %.loopexit, label %bb.q, !llvm.loop !22

.loopexit:                                        ; preds = %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit, %bb.q, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630, %.critedge5, %.critedge3, %.critedge
  %.sroa.164251.6 = phi <16 x float> [ %i.cpr, %bb.q ], [ %i.bsv, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ], [ %.sroa.164251.0.lcssa, %.critedge ], [ %.sroa.164251.2.lcssa, %.critedge3 ], [ %.sroa.164251.4.lcssa, %.critedge5 ], [ %i.aan, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ %i.bdh, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ], [ %i.amr, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630 ], [ %i.ces, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.04244.6 = phi <16 x float> [ %i.cpq, %bb.q ], [ %i.bsu, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ], [ %.sroa.04244.0.lcssa, %.critedge ], [ %.sroa.04244.2.lcssa, %.critedge3 ], [ %.sroa.04244.4.lcssa, %.critedge5 ], [ %i.aam, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ %i.bdg, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ], [ %i.amq, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630 ], [ %i.cer, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.164233.6 = phi <16 x float> [ %i.cpt, %bb.q ], [ %i.bsx, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ], [ %.sroa.164233.0.lcssa, %.critedge ], [ %.sroa.164233.2.lcssa, %.critedge3 ], [ %.sroa.164233.4.lcssa, %.critedge5 ], [ %i.aap, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ %i.bdj, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ], [ %i.amt, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630 ], [ %i.ceu, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.04226.6 = phi <16 x float> [ %i.cps, %bb.q ], [ %i.bsw, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ], [ %.sroa.04226.0.lcssa, %.critedge ], [ %.sroa.04226.2.lcssa, %.critedge3 ], [ %.sroa.04226.4.lcssa, %.critedge5 ], [ %i.aao, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ %i.bdi, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ], [ %i.ams, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630 ], [ %i.cet, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.6 = phi <16 x float> [ %i.cpv, %bb.q ], [ %i.bsz, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ], [ %.sroa.16.0.lcssa, %.critedge ], [ %.sroa.16.2.lcssa, %.critedge3 ], [ %.sroa.16.4.lcssa, %.critedge5 ], [ %i.aar, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ %i.bdl, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ], [ %i.amv, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630 ], [ %i.cew, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.04209.6 = phi <16 x float> [ %i.cpu, %bb.q ], [ %i.bsy, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit ], [ %.sroa.04209.0.lcssa, %.critedge ], [ %.sroa.04209.2.lcssa, %.critedge3 ], [ %.sroa.04209.4.lcssa, %.critedge5 ], [ %i.aaq, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit616 ], [ %i.bdk, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit615 ], [ %i.amu, %_ZN3gmx17CoulombCalculatorILNS_17KernelCoulombTypeE2EE24forceAndCorrectionEnergyILi2ELm2EEEvRKSt5arrayINS_9SimdFloatEXT_EES8_S8_RKS4_INS_9SimdFBoolEXT_EERS6_RS4_IS5_XT0_EE.exit630 ], [ %i.cev, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.cqr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.kz ; 2 uses
  %i.cqs = shufflevector <16 x float> %.sroa.04244.6, <16 x float> %.sroa.164251.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cqt = shufflevector <16 x float> %.sroa.04244.6, <16 x float> %.sroa.164251.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cqu = fadd <16 x float> %i.cqs, %i.cqt       ; 2 uses
  %i.cqv = shufflevector <16 x float> %i.cqu, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cqw = fadd <16 x float> %i.cqu, %i.cqv       ; 2 uses
  %i.cqx = shufflevector <16 x float> %i.cqw, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cqy = fadd <16 x float> %i.cqw, %i.cqx
  %i.cqz = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.cqy, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cra = shufflevector <16 x float> %i.cqz, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.crb = load <4 x float>, ptr %i.cqr, align 16, !tbaa !32
  %i.crc = fadd <4 x float> %i.crb, %i.cra
  store <4 x float> %i.crc, ptr %i.cqr, align 16, !tbaa !32
  %i.crd = shufflevector <16 x float> %i.cqz, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cre = fadd <4 x float> %i.cra, %i.crd        ; 2 uses
  %i.crf = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.lm ; 2 uses
  %i.crg = shufflevector <16 x float> %.sroa.04226.6, <16 x float> %.sroa.164233.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.crh = shufflevector <16 x float> %.sroa.04226.6, <16 x float> %.sroa.164233.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cri = fadd <16 x float> %i.crg, %i.crh       ; 2 uses
  %i.crj = shufflevector <16 x float> %i.cri, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.crk = fadd <16 x float> %i.cri, %i.crj       ; 2 uses
  %i.crl = shufflevector <16 x float> %i.crk, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.crm = fadd <16 x float> %i.crk, %i.crl
  %i.crn = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.crm, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cro = shufflevector <16 x float> %i.crn, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.crp = load <4 x float>, ptr %i.crf, align 16, !tbaa !32
  %i.crq = fadd <4 x float> %i.crp, %i.cro
  store <4 x float> %i.crq, ptr %i.crf, align 16, !tbaa !32
  %i.crr = shufflevector <16 x float> %i.crn, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.crs = fadd <4 x float> %i.cro, %i.crr        ; 2 uses
  %i.crt = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.lz ; 2 uses
  %i.cru = shufflevector <16 x float> %.sroa.04209.6, <16 x float> %.sroa.16.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.crv = shufflevector <16 x float> %.sroa.04209.6, <16 x float> %.sroa.16.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.crw = fadd <16 x float> %i.cru, %i.crv       ; 2 uses
  %i.crx = shufflevector <16 x float> %i.crw, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cry = fadd <16 x float> %i.crw, %i.crx       ; 2 uses
  %i.crz = shufflevector <16 x float> %i.cry, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.csa = fadd <16 x float> %i.cry, %i.crz
  %i.csb = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.csa, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.csc = shufflevector <16 x float> %i.csb, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.csd = load <4 x float>, ptr %i.crt, align 16, !tbaa !32
  %i.cse = fadd <4 x float> %i.csd, %i.csc
  store <4 x float> %i.cse, ptr %i.crt, align 16, !tbaa !32
  %i.csf = shufflevector <16 x float> %i.csb, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.csg = fadd <4 x float> %i.csc, %i.csf        ; 2 uses
  %i.csh = shufflevector <4 x float> %i.csg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.csi = fadd <4 x float> %i.csg, %i.csh
  %i.csj = extractelement <4 x float> %i.csi, i64 0
  %i.csk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dl ; 2 uses
  %i.csl = load <2 x float>, ptr %i.csk, align 4, !tbaa !43
  %i.csm = shufflevector <4 x float> %i.cre, <4 x float> %i.crs, <2 x i32> <i32 0, i32 4>
  %i.csn = shufflevector <4 x float> %i.cre, <4 x float> %i.crs, <2 x i32> <i32 1, i32 5>
  %i.cso = fadd <2 x float> %i.csm, %i.csn
  %i.csp = fadd <2 x float> %i.cso, %i.csl
  store <2 x float> %i.csp, ptr %i.csk, align 4, !tbaa !43
  %i.csq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dx ; 2 uses
  %i.csr = load float, ptr %i.csq, align 4, !tbaa !43
  %i.css = fadd float %i.csj, %i.csr
  store float %i.css, ptr %i.csq, align 4, !tbaa !43
  %i.cst = getelementptr inbounds nuw i8, ptr %.sroa.02198.05049, i64 16 ; 2 uses
  %.not4872 = icmp eq ptr %i.cst, %i.ce
  br i1 %.not4872, label %._crit_edge, label %bb.a
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
!9 = distinct !{!9, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!10 = distinct !{!10, !9, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!11 = distinct !{!11, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE0_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!12 = distinct !{!12, !11, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE0_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!13 = distinct !{!13, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE1_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!14 = distinct !{!14, !13, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE1_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!15 = distinct !{!15, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE2_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!16 = distinct !{!16, !15, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE2EL14VdwCutoffCheck1ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE2_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!17 = distinct !{!17, !130}
!18 = distinct !{!18, !130}
!19 = distinct !{!19, !130}
!20 = distinct !{!20, !130}
!21 = distinct !{!21, !130}
!22 = distinct !{!22, !130}
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
!35 = !{!"p1 _ZTS21EwaldCorrectionTables", !23, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"float", !5, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !27, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !39, i64 0}
!41 = !{!"_ZTS21EwaldCorrectionTables", !37, i64 0, !40, i64 8, !40, i64 32, !40, i64 56}
!42 = !{!41, !37, i64 0}
!43 = !{!37, !37, i64 0}
!44 = !{!"_ZTS15VanDerWaalsType", !5, i64 0}
!45 = !{!"_ZTS20InteractionModifiers", !5, i64 0}
!46 = !{!"double", !5, i64 0}
!47 = !{!"_ZTS14shift_consts_t", !37, i64 0, !37, i64 4, !37, i64 8}
!48 = !{!"_ZTS15switch_consts_t", !37, i64 0, !37, i64 4, !37, i64 8}
!49 = !{!"_ZTS12LongRangeVdW", !5, i64 0}
!50 = !{!"_ZTSN19interaction_const_t19VanDerWaalsSettingsE", !44, i64 0, !45, i64 4, !46, i64 8, !37, i64 16, !37, i64 20, !47, i64 24, !47, i64 36, !48, i64 48, !37, i64 60, !49, i64 64, !37, i64 68}
!51 = !{!"_ZTS22CoulombInteractionType", !5, i64 0}
!52 = !{!"_ZTSN19interaction_const_t15CoulombSettingsE", !51, i64 0, !45, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36}
!53 = !{!"_ZTSSt10_Head_baseILm0EP21EwaldCorrectionTablesLb0EE", !35, i64 0}
!54 = !{!"_ZTSSt11_Tuple_implILm0EJP21EwaldCorrectionTablesSt14default_deleteIS0_EEE", !53, i64 0}
!55 = !{!"_ZTSSt5tupleIJP21EwaldCorrectionTablesSt14default_deleteIS0_EEE", !54, i64 0}
!56 = !{!"_ZTSSt15__uniq_ptr_implI21EwaldCorrectionTablesSt14default_deleteIS0_EE", !55, i64 0}
!57 = !{!"_ZTSSt15__uniq_ptr_dataI21EwaldCorrectionTablesSt14default_deleteIS0_ELb1ELb1EE", !56, i64 0}
!58 = !{!"_ZTSSt10unique_ptrI21EwaldCorrectionTablesSt14default_deleteIS0_EE", !57, i64 0}
!59 = !{!"p1 _ZTSN19interaction_const_t18SoftCoreParametersE", !23, i64 0}
!60 = !{!"_ZTSSt10_Head_baseILm0EPN19interaction_const_t18SoftCoreParametersELb0EE", !59, i64 0}
!61 = !{!"_ZTSSt11_Tuple_implILm0EJPN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EEE", !60, i64 0}
!62 = !{!"_ZTSSt5tupleIJPN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EEE", !61, i64 0}
!63 = !{!"_ZTSSt15__uniq_ptr_implIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EE", !62, i64 0}
!64 = !{!"_ZTSSt15__uniq_ptr_dataIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_ELb1ELb1EE", !63, i64 0}
!65 = !{!"_ZTSSt10unique_ptrIN19interaction_const_t18SoftCoreParametersESt14default_deleteIS1_EE", !64, i64 0}
!66 = !{!"bool", !5, i64 0}
!67 = !{!"_ZTS19interaction_const_t", !50, i64 0, !52, i64 72, !58, i64 112, !58, i64 120, !65, i64 128, !66, i64 136}
!68 = !{!67, !37, i64 92}
!69 = !{!67, !37, i64 60}
!70 = !{!67, !37, i64 68}
!71 = !{!67, !37, i64 80}
!72 = !{!67, !37, i64 16}
!73 = !{!"p1 _ZTSN3gmx10nbnxn_cj_tE", !23, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!75 = !{!74, !73, i64 0}
!76 = !{!"p1 _ZTSN3gmx10nbnxn_ci_tE", !23, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!"p1 _ZTSN3gmx17EnergyAccumulatorILb1ELb1EEE", !23, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!67, !37, i64 100}
!81 = !{!"_ZTSN3gmx10nbnxn_ci_tE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!82 = !{!81, !6, i64 4}
!83 = !{!81, !6, i64 8}
!84 = !{!81, !6, i64 12}
!85 = !{!81, !6, i64 0}
!86 = !{!"any p2 pointer", !23, i64 0}
!87 = !{!"p2 float", !86, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIPfSaIS0_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseIPfSaIS0_EE12_Vector_implE", !88, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIPfSaIS0_EE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorIPfSaIS0_EE", !90, i64 0}
!92 = !{!"_ZTSN3gmx17EnergyAccumulatorILb1ELb1EEE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !29, i64 32, !40, i64 40, !40, i64 64, !6, i64 88, !91, i64 96, !91, i64 120, !6, i64 144}
!93 = !{!92, !29, i64 32}
!94 = !{!6, !6, i64 0}
!95 = !{!92, !6, i64 88}
!96 = !{!92, !6, i64 8}
!97 = !{!92, !6, i64 12}
!98 = !{!92, !6, i64 28}
!99 = !{!88, !87, i64 0}
!100 = !{!24, !24, i64 0}
!101 = !{!"_ZTSN3gmx10nbnxn_cj_tE", !6, i64 0, !6, i64 4}
!102 = !{!101, !6, i64 0}
!103 = !{!92, !6, i64 24}
!104 = !{!"_ZTSN3gmx13PinningPolicyE", !5, i64 0}
!105 = !{!"_ZTSN3gmx20HostAllocationPolicyE", !104, i64 0, !66, i64 4}
!106 = !{!"_ZTSN3gmx9AllocatorIfNS_20HostAllocationPolicyEEE", !105, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE12_Vector_implE", !106, i64 0, !25, i64 8}
!108 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE", !107, i64 0}
!109 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE", !108, i64 0}
!110 = !{!"_ZTSN3gmx17LJCombinationRuleE", !5, i64 0}
!111 = !{!"_ZTSN3gmx9AllocatorIiNS_20HostAllocationPolicyEEE", !105, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE12_Vector_implE", !111, i64 0, !30, i64 8}
!113 = !{!"_ZTSSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE", !112, i64 0}
!114 = !{!"_ZTSSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE", !113, i64 0}
!115 = !{!"p1 _ZTSN3gmx22EnergyGroupsPerClusterE", !23, i64 0}
!116 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx22EnergyGroupsPerClusterELb0EE", !115, i64 0}
!117 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EEE", !116, i64 0}
!118 = !{!"_ZTSSt5tupleIJPN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EEE", !117, i64 0}
!119 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EE", !118, i64 0}
!120 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_ELb1ELb1EE", !119, i64 0}
!121 = !{!"_ZTSSt10unique_ptrIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EE", !120, i64 0}
!122 = !{!"_ZTSN3gmx16nbnxn_atomdata_t6ParamsE", !6, i64 0, !109, i64 8, !110, i64 40, !109, i64 48, !40, i64 80, !114, i64 104, !109, i64 136, !109, i64 168, !114, i64 200, !109, i64 232, !109, i64 264, !114, i64 296, !109, i64 328, !109, i64 360, !6, i64 392, !121, i64 400}
!123 = !{!122, !6, i64 0}
!124 = !{!10}
!125 = !{!12}
!126 = !{!14}
!127 = !{!16}
!128 = !{!101, !6, i64 4}
!129 = !{!92, !6, i64 16}
!130 = !{!"llvm.loop.mustprogress"}
end_hunk_4
