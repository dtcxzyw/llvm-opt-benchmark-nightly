Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_ElecEw_VdwLJEwCombGeom_VgrpF?download=true
inline.NumInlined: 1687
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(656) %1, ptr noundef nonnull align 8 dereferenceable(137) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat {
.preheader4480.preheader:
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
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !59 ; 2 uses
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
  %foldExtExtBinop4957 = fmul <16 x float> %i.ba, %i.ba
  %i.bc = shufflevector <16 x float> %foldExtExtBinop4957, <16 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 12 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !26 ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26 ; 9 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !62 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !64 ; 2 uses
  %.not44624626 = icmp eq ptr %i.bk, %i.bm
  br i1 %.not44624626, label %._crit_edge, label %.lr.ph4628

.lr.ph4628:                                       ; preds = %.preheader4480.preheader
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 552
  %6 = load ptr, ptr %5, align 8, !tbaa !66       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 64
  %.val664.1 = load <8 x i64>, ptr %7, align 64, !tbaa !32 ; 3 uses
  %.val664 = load <8 x i64>, ptr %6, align 64, !tbaa !32 ; 3 uses
  %i.bn = extractelement <16 x float> %i.ba, i64 8
  %i.bo = getelementptr i8, ptr %4, i64 136
  %.val.val = load ptr, ptr %i.bo, align 8, !tbaa !68 ; 12 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.val, i64 32 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.val, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.val, i64 12
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.val, i64 40 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.val, i64 28
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.val, i64 96 ; 9 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.val, i64 64 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.val, i64 120 ; 11 uses
  %i.by = fneg float %i.bn                        ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.val, i64 24 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = fpext float %i.au to double             ; 4 uses
  %i.cc = shufflevector <16 x float> %i.ba, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8> ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.val, i64 16 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.val, i64 20 ; 6 uses
  %8 = bitcast <8 x i64> %.val664 to <16 x i32>
  %9 = bitcast <8 x i64> %.val664.1 to <16 x i32>
  %10 = bitcast <8 x i64> %.val664 to <16 x i32>
  %11 = bitcast <8 x i64> %.val664.1 to <16 x i32>
  %12 = bitcast <8 x i64> %.val664 to <16 x i32>
  %13 = bitcast <8 x i64> %.val664.1 to <16 x i32>
  br label %bb.a

._crit_edge:                                      ; preds = %.loopexit, %.preheader4480.preheader
  ret void

bb.a:                                             ; preds = %.lr.ph4628, %.loopexit
  %.sroa.02000.04627 = phi ptr [ %i.bk, %.lr.ph4628 ], [ %i.cyg, %.loopexit ] ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.02000.04627, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !70 ; 3 uses
  %i.ch = and i32 %i.cg, 127                      ; 2 uses
  %i.ci = mul nuw nsw i32 %i.ch, 3                ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.02000.04627, i64 8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !71 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.02000.04627, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !72 ; 10 uses
  %i.cn = load i32, ptr %.sroa.02000.04627, align 4, !tbaa !73 ; 3 uses
  %i.co = icmp eq i32 %i.ch, 22
  %i.cp = select i1 %i.co, i32 %i.cn, i32 -1      ; 7 uses
  %i.cq = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !74
  %i.ct = insertelement <16 x float> poison, float %i.cs, i64 0
  %i.cu = shufflevector <16 x float> %i.ct, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.cv = zext nneg i32 %i.ci to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !74
  %i.cz = insertelement <16 x float> poison, float %i.cy, i64 0
  %i.da = shufflevector <16 x float> %i.cz, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.db = add nuw nsw i32 %i.ci, 2
  %i.dc = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !74
  %i.df = insertelement <16 x float> poison, float %i.de, i64 0
  %i.dg = shufflevector <16 x float> %i.df, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dh = shl i32 %i.cn, 2                        ; 4 uses
  %i.di = and i32 %i.dh, -8                       ; 2 uses
  %i.dj = mul nsw i32 %i.di, 3
  %i.dk = and i32 %i.dh, 4                        ; 2 uses
  %i.dl = or disjoint i32 %i.dj, %i.dk            ; 3 uses
  %i.dm = shl nsw i32 %i.di, 1
  %i.dn = or disjoint i32 %i.dm, %i.dk
  %i.do = and i32 %i.cg, 512
  %i.dp = icmp ne i32 %i.do, 0                    ; 4 uses
  %i.dq = and i32 %i.cg, 384
  %or.cond = icmp ne i32 %i.dq, 128
  %i.dr = and i1 %or.cond, %i.dp
  %i.ds = load ptr, ptr %i.bp, align 8, !tbaa !85
  %i.dt = sext i32 %i.cn to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !86 ; 9 uses
  store i32 %i.dv, ptr %i.bq, align 8, !tbaa !87
  %i.dw = load i32, ptr %i.br, align 8, !tbaa !88 ; 7 uses
  %i.dx = load i32, ptr %i.bs, align 4, !tbaa !89 ; 8 uses
  %i.dy = load i32, ptr %i.bu, align 4, !tbaa !90 ; 4 uses
  %i.dz = load ptr, ptr %i.bv, align 8, !tbaa !91 ; 5 uses
  %i.ea = load ptr, ptr %i.bx, align 8, !tbaa !91 ; 5 uses
  %i.eb = and i32 %i.dx, %i.dv                    ; 3 uses
  %i.ec = load ptr, ptr %i.bt, align 8, !tbaa !28
  %i.ed = mul nsw i32 %i.eb, %i.dy
  %i.ee = sext i32 %i.ed to i64                   ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ee
  store ptr %i.ef, ptr %i.dz, align 8, !tbaa !92
  %i.eg = load ptr, ptr %i.bw, align 8, !tbaa !28
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.eh, ptr %i.ea, align 8, !tbaa !92
  %i.ei = ashr i32 %i.dv, %i.dw
  %i.ej = and i32 %i.ei, %i.dx                    ; 3 uses
  %i.ek = load ptr, ptr %i.bt, align 8, !tbaa !28
  %i.el = mul nsw i32 %i.ej, %i.dy
  %i.em = sext i32 %i.el to i64                   ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !92
  %i.ep = load ptr, ptr %i.bw, align 8, !tbaa !28
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.em
  %i.er = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !92
  %i.es = shl i32 %i.dw, 1
  %i.et = ashr i32 %i.dv, %i.es
  %i.eu = and i32 %i.et, %i.dx
  %i.ev = load ptr, ptr %i.bt, align 8, !tbaa !28
  %i.ew = mul nsw i32 %i.eu, %i.dy
  %i.ex = sext i32 %i.ew to i64                   ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !92
  %i.fa = load ptr, ptr %i.bw, align 8, !tbaa !28
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.ex
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !92
  %i.fd = mul i32 %i.dw, 3
  %i.fe = ashr i32 %i.dv, %i.fd
  %i.ff = and i32 %i.fe, %i.dx
  %i.fg = load ptr, ptr %i.bt, align 8, !tbaa !28
  %i.fh = mul nsw i32 %i.ff, %i.dy
  %i.fi = sext i32 %i.fh to i64                   ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 2 uses
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !92
  %i.fl = load ptr, ptr %i.bw, align 8, !tbaa !28
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.fi ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !92
  %i.fo = sext i32 %i.ck to i64                   ; 4 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !94
  %i.fr = ashr i32 %i.cp, 1
  %i.fs = icmp eq i32 %i.fq, %i.fr
  br i1 %i.fs, label %bb.b, label %.loopexit4477

bb.b:                                             ; preds = %bb.a
  %.pre = load i32, ptr %i.bz, align 8, !tbaa !95 ; 8 uses
  %i.ft = sext i32 %i.dh to i64                   ; 8 uses
  br i1 %i.dp, label %.preheader4478, label %..loopexit4479_crit_edge

..loopexit4479_crit_edge:                         ; preds = %bb.b
  %.pre4749 = mul nsw i32 %.pre, %i.eb
  %.pre4751 = sext i32 %.pre4749 to i64
  %.pre4753 = or disjoint i64 %i.ft, 1
  %.pre4755 = mul nsw i32 %.pre, %i.ej
  %.pre4757 = sext i32 %.pre4755 to i64
  %.pre4759 = or disjoint i64 %i.ft, 2
  %.pre4761 = shl i32 %i.dw, 1
  %.pre4765 = ashr i32 %i.dv, %.pre4761
  %.pre4767 = and i32 %.pre4765, %i.dx
  %.pre4769 = mul nsw i32 %.pre, %.pre4767
  %.pre4771 = sext i32 %.pre4769 to i64
  %.pre4773 = or disjoint i64 %i.ft, 3
  %.pre4775 = mul i32 %i.dw, 3
  %.pre4779 = ashr i32 %i.dv, %.pre4775
  %.pre4781 = and i32 %.pre4779, %i.dx
  %.pre4783 = mul nsw i32 %.pre, %.pre4781
  %.pre4785 = sext i32 %.pre4783 to i64
  br label %.loopexit4479

.preheader4478:                                   ; preds = %bb.b
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !74 ; 2 uses
  %i.fw = fmul float %i.fv, %i.by
  %i.fx = fmul float %i.fv, %i.fw
  %i.fy = fmul float %i.fx, %i.af
  %i.fz = mul nsw i32 %.pre, %i.eb
  %i.ga = load ptr, ptr %i.dz, align 8, !tbaa !92
  %i.gb = sext i32 %i.fz to i64                   ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.gb ; 2 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !74
  %i.ge = fadd float %i.fy, %i.gd
  store float %i.ge, ptr %i.gc, align 4, !tbaa !74
  %i.gf = or disjoint i64 %i.ft, 1                ; 2 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !74 ; 2 uses
  %i.gi = fmul float %i.gh, %i.by
  %i.gj = fmul float %i.gh, %i.gi
  %i.gk = fmul float %i.gj, %i.af
  %i.gl = mul nsw i32 %.pre, %i.ej
  %i.gm = load ptr, ptr %i.eo, align 8, !tbaa !92
  %i.gn = sext i32 %i.gl to i64                   ; 2 uses
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.gn ; 2 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !74
  %i.gq = fadd float %i.gk, %i.gp
  store float %i.gq, ptr %i.go, align 4, !tbaa !74
  %i.gr = or disjoint i64 %i.ft, 2                ; 2 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.gr
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !74 ; 2 uses
  %i.gu = fmul float %i.gt, %i.by
  %i.gv = fmul float %i.gt, %i.gu
  %i.gw = fmul float %i.gv, %i.af
  %i.gx = shl i32 %i.dw, 1
  %i.gy = ashr i32 %i.dv, %i.gx
  %i.gz = and i32 %i.gy, %i.dx
  %i.ha = mul nsw i32 %.pre, %i.gz
  %i.hb = load ptr, ptr %i.ez, align 8, !tbaa !92
  %i.hc = sext i32 %i.ha to i64                   ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.hc ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !74
  %i.hf = fadd float %i.gw, %i.he
  store float %i.hf, ptr %i.hd, align 4, !tbaa !74
  %i.hg = or disjoint i64 %i.ft, 3                ; 2 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.hg
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !74 ; 2 uses
  %i.hj = fmul float %i.hi, %i.by
  %i.hk = fmul float %i.hi, %i.hj
  %i.hl = fmul float %i.hk, %i.af
  %i.hm = mul i32 %i.dw, 3
  %i.hn = ashr i32 %i.dv, %i.hm
  %i.ho = and i32 %i.hn, %i.dx
  %i.hp = mul nsw i32 %.pre, %i.ho
  %i.hq = load ptr, ptr %i.fk, align 8, !tbaa !92
  %i.hr = sext i32 %i.hp to i64                   ; 2 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.hr ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !74
  %i.hu = fadd float %i.hl, %i.ht
  store float %i.hu, ptr %i.hs, align 4, !tbaa !74
  br label %.loopexit4479

.loopexit4479:                                    ; preds = %..loopexit4479_crit_edge, %.preheader4478
  %.pre-phi4786 = phi i64 [ %.pre4785, %..loopexit4479_crit_edge ], [ %i.hr, %.preheader4478 ]
  %.pre-phi4774 = phi i64 [ %.pre4773, %..loopexit4479_crit_edge ], [ %i.hg, %.preheader4478 ]
  %.pre-phi4772 = phi i64 [ %.pre4771, %..loopexit4479_crit_edge ], [ %i.hc, %.preheader4478 ]
end_hunk_0
begin_hunk_1_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4480.preheader
  %factor.op.mul = add i32 %i.hx, 2               ; 4 uses
  %i.hy = load ptr, ptr %i.ca, align 8, !tbaa !26 ; 4 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.ft
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !86
  %.reass = mul i32 %i.ia, %factor.op.mul
  %i.ib = sext i32 %.reass to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !74
  %i.ie = fdiv float %i.id, 6.000000e+00
  %i.if = fpext float %i.ie to double
  %i.ig = fmul double %i.if, 5.000000e-01
  %i.ih = fmul double %i.ig, %i.cb
  %i.ii = fptrunc double %i.ih to float
  %i.ij = load ptr, ptr %i.ea, align 8, !tbaa !92
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %.pre-phi4752 ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !74
  %i.im = fadd float %i.il, %i.ii
  store float %i.im, ptr %i.ik, align 4, !tbaa !74
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %.pre-phi4754
  %i.io = load i32, ptr %i.in, align 4, !tbaa !86
  %.reass.1 = mul i32 %i.io, %factor.op.mul
  %i.ip = sext i32 %.reass.1 to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ip
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !74
  %i.is = fdiv float %i.ir, 6.000000e+00
  %i.it = fpext float %i.is to double
  %i.iu = fmul double %i.it, 5.000000e-01
  %i.iv = fmul double %i.iu, %i.cb
  %i.iw = fptrunc double %i.iv to float
  %i.ix = load ptr, ptr %i.er, align 8, !tbaa !92
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %.pre-phi4758 ; 2 uses
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !74
  %i.ja = fadd float %i.iz, %i.iw
  store float %i.ja, ptr %i.iy, align 4, !tbaa !74
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %.pre-phi4760
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !86
  %.reass.2 = mul i32 %i.jc, %factor.op.mul
  %i.jd = sext i32 %.reass.2 to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.jd
  %i.jf = load float, ptr %i.je, align 4, !tbaa !74
  %i.jg = fdiv float %i.jf, 6.000000e+00
  %i.jh = fpext float %i.jg to double
  %i.ji = fmul double %i.jh, 5.000000e-01
  %i.jj = fmul double %i.ji, %i.cb
  %i.jk = fptrunc double %i.jj to float
  %i.jl = load ptr, ptr %i.fc, align 8, !tbaa !92
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %.pre-phi4772 ; 2 uses
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !74
  %i.jo = fadd float %i.jn, %i.jk
  store float %i.jo, ptr %i.jm, align 4, !tbaa !74
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %.pre-phi4774
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !86
  %.reass.3 = mul i32 %i.jq, %factor.op.mul
  %i.jr = sext i32 %.reass.3 to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.jr
  %i.jt = load float, ptr %i.js, align 4, !tbaa !74
  %i.ju = fdiv float %i.jt, 6.000000e+00
  %i.jv = fpext float %i.ju to double
  %i.jw = fmul double %i.jv, 5.000000e-01
  %i.jx = fmul double %i.jw, %i.cb
  %i.jy = fptrunc double %i.jx to float
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %.pre-phi4786 ; 2 uses
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !74
  %i.kb = fadd float %i.ka, %i.jy
  store float %i.kb, ptr %i.jz, align 4, !tbaa !74
  br label %.loopexit4477

.loopexit4477:                                    ; preds = %.loopexit4479, %bb.a
  %i.kc = add nsw i32 %i.dl, 8
  %i.kd = add nsw i32 %i.dl, 16
  %i.ke = sext i32 %i.dl to i64                   ; 2 uses
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.ke ; 4 uses
  %.val.i = load float, ptr %i.kf, align 1, !tbaa !32, !noalias !116
  %i.kg = getelementptr i8, ptr %i.kf, i64 4
  %.val3.i = load float, ptr %i.kg, align 1, !tbaa !32, !noalias !116
  %i.kh = insertelement <4 x float> poison, float %.val.i, i64 0
  %i.ki = insertelement <4 x float> poison, float %.val3.i, i64 0
  %i.kj = shufflevector <4 x float> %i.kh, <4 x float> %i.ki, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.kk = fadd <16 x float> %i.cu, %i.kj          ; 6 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %.val.i702 = load float, ptr %i.kl, align 1, !tbaa !32, !noalias !116
  %i.km = getelementptr i8, ptr %i.kf, i64 12
  %.val3.i703 = load float, ptr %i.km, align 1, !tbaa !32, !noalias !116
  %i.kn = insertelement <4 x float> poison, float %.val.i702, i64 0
  %i.ko = insertelement <4 x float> poison, float %.val3.i703, i64 0
  %i.kp = shufflevector <4 x float> %i.kn, <4 x float> %i.ko, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.kq = fadd <16 x float> %i.cu, %i.kp          ; 6 uses
  %i.kr = sext i32 %i.kc to i64                   ; 2 uses
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.kr ; 4 uses
  %.val.i705 = load float, ptr %i.ks, align 1, !tbaa !32, !noalias !117
  %i.kt = getelementptr i8, ptr %i.ks, i64 4
  %.val3.i706 = load float, ptr %i.kt, align 1, !tbaa !32, !noalias !117
  %i.ku = insertelement <4 x float> poison, float %.val.i705, i64 0
  %i.kv = insertelement <4 x float> poison, float %.val3.i706, i64 0
  %i.kw = shufflevector <4 x float> %i.ku, <4 x float> %i.kv, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.kx = fadd <16 x float> %i.da, %i.kw          ; 6 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %.val.i708 = load float, ptr %i.ky, align 1, !tbaa !32, !noalias !117
  %i.kz = getelementptr i8, ptr %i.ks, i64 12
  %.val3.i709 = load float, ptr %i.kz, align 1, !tbaa !32, !noalias !117
  %i.la = insertelement <4 x float> poison, float %.val.i708, i64 0
  %i.lb = insertelement <4 x float> poison, float %.val3.i709, i64 0
  %i.lc = shufflevector <4 x float> %i.la, <4 x float> %i.lb, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.ld = fadd <16 x float> %i.da, %i.lc          ; 6 uses
  %i.le = sext i32 %i.kd to i64                   ; 2 uses
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.le ; 4 uses
  %.val.i711 = load float, ptr %i.lf, align 1, !tbaa !32, !noalias !118
  %i.lg = getelementptr i8, ptr %i.lf, i64 4
  %.val3.i712 = load float, ptr %i.lg, align 1, !tbaa !32, !noalias !118
  %i.lh = insertelement <4 x float> poison, float %.val.i711, i64 0
  %i.li = insertelement <4 x float> poison, float %.val3.i712, i64 0
  %i.lj = shufflevector <4 x float> %i.lh, <4 x float> %i.li, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.lk = fadd <16 x float> %i.dg, %i.lj          ; 6 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %.val.i714 = load float, ptr %i.ll, align 1, !tbaa !32, !noalias !118
  %i.lm = getelementptr i8, ptr %i.lf, i64 12
  %.val3.i715 = load float, ptr %i.lm, align 1, !tbaa !32, !noalias !118
  %i.ln = insertelement <4 x float> poison, float %.val.i714, i64 0
  %i.lo = insertelement <4 x float> poison, float %.val3.i715, i64 0
  %i.lp = shufflevector <4 x float> %i.ln, <4 x float> %i.lo, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.lq = fadd <16 x float> %i.dg, %i.lp          ; 6 uses
  %i.lr = sext i32 %i.dh to i64                   ; 5 uses
  br i1 %i.dp, label %bb.c, label %.preheader4476

bb.c:                                             ; preds = %.loopexit4477
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.lr ; 4 uses
  %.val.i717 = load float, ptr %i.ls, align 1, !tbaa !32, !noalias !119
  %i.lt = getelementptr i8, ptr %i.ls, i64 4
  %.val2.i = load float, ptr %i.lt, align 1, !tbaa !32, !noalias !119
  %i.lu = insertelement <4 x float> poison, float %.val.i717, i64 0
  %i.lv = insertelement <4 x float> poison, float %.val2.i, i64 0
  %i.lw = shufflevector <4 x float> %i.lu, <4 x float> %i.lv, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.lx = fmul <16 x float> %i.cc, %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %.val.i718 = load float, ptr %i.ly, align 1, !tbaa !32, !noalias !119
  %i.lz = getelementptr i8, ptr %i.ls, i64 12
  %.val2.i719 = load float, ptr %i.lz, align 1, !tbaa !32, !noalias !119
  %i.ma = insertelement <4 x float> poison, float %.val.i718, i64 0
  %i.mb = insertelement <4 x float> poison, float %.val2.i719, i64 0
  %i.mc = shufflevector <4 x float> %i.ma, <4 x float> %i.mb, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.md = fmul <16 x float> %i.cc, %i.mc
  br label %.preheader4476

.preheader4476:                                   ; preds = %.loopexit4477, %bb.c
  %.sroa.04061.0 = phi <16 x float> [ %i.lx, %bb.c ], [ undef, %.loopexit4477 ] ; 4 uses
  %.sroa.74065.0 = phi <16 x float> [ %i.md, %bb.c ], [ undef, %.loopexit4477 ] ; 4 uses
  %i.me = load i32, ptr %1, align 8, !tbaa !115
  %i.mf = shl i32 %i.me, 1                        ; 4 uses
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.lr
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !86
  %i.mi = mul i32 %i.mf, %i.mh
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.mj ; 6 uses
  %i.ml = getelementptr [4 x i8], ptr %i.j, i64 %i.lr
  %i.mm = getelementptr i8, ptr %i.ml, i64 4
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !86
  %i.mo = mul i32 %i.mf, %i.mn
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.mp ; 6 uses
  %i.mr = getelementptr [4 x i8], ptr %i.j, i64 %i.lr
  %i.ms = getelementptr i8, ptr %i.mr, i64 8
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !86
  %i.mu = mul i32 %i.mf, %i.mt
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.mv ; 4 uses
  %i.mx = getelementptr [4 x i8], ptr %i.j, i64 %i.lr
  %i.my = getelementptr i8, ptr %i.mx, i64 12
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !86
  %i.na = mul i32 %i.mf, %i.mz
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.nb ; 4 uses
  %i.nd = sext i32 %i.dn to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.nd ; 4 uses
  %.val665 = load float, ptr %i.ne, align 1, !tbaa !32
  %i.nf = getelementptr i8, ptr %i.ne, i64 4
  %.val666 = load float, ptr %i.nf, align 1, !tbaa !32
  %i.ng = insertelement <4 x float> poison, float %.val665, i64 0
  %i.nh = insertelement <4 x float> poison, float %.val666, i64 0
  %i.ni = shufflevector <4 x float> %i.ng, <4 x float> %i.nh, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 6 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %.val665.1 = load float, ptr %i.nj, align 1, !tbaa !32
  %i.nk = getelementptr i8, ptr %i.ne, i64 12
  %.val666.1 = load float, ptr %i.nk, align 1, !tbaa !32
  %i.nl = insertelement <4 x float> poison, float %.val665.1, i64 0
  %i.nm = insertelement <4 x float> poison, float %.val666.1, i64 0
  %i.nn = shufflevector <4 x float> %i.nl, <4 x float> %i.nm, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.no = icmp slt i32 %i.ck, %i.cm               ; 3 uses
  br i1 %i.dr, label %.preheader, label %bb.h

.preheader:                                       ; preds = %.preheader4476
  br i1 %i.no, label %.lr.ph4584, label %.critedge

.lr.ph4584:                                       ; preds = %.preheader, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583
  %indvars.iv4686 = phi i64 [ %indvars.iv.next4687, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583 ], [ %i.fo, %.preheader ] ; 4 uses
  %.sroa.163849.04582 = phi <16 x float> [ %i.abi, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %.sroa.03842.04581 = phi <16 x float> [ %i.abh, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %.sroa.163831.04580 = phi <16 x float> [ %i.abk, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %.sroa.03807.04579 = phi <16 x float> [ %i.abl, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %.sroa.16.04578 = phi <16 x float> [ %i.abm, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %.sroa.03824.04577 = phi <16 x float> [ %i.abj, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583 ], [ zeroinitializer, %.preheader ] ; 2 uses
  %i.np = load ptr, ptr %i.bh, align 8, !tbaa !62
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv4686
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !86
  %.not573 = icmp eq i32 %i.ns, -1
  br i1 %.not573, label %.critedge.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit581

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit581: ; preds = %.lr.ph4584
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv4686 ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !94 ; 4 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !120
  %i.nx = insertelement <16 x i32> poison, i32 %i.nw, i64 0
  %i.ny = shufflevector <16 x i32> %i.nx, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.nz = and <16 x i32> %i.ny, %12
  %.not4808 = icmp eq <16 x i32> %i.nz, zeroinitializer ; 5 uses
  %i.oa = and <16 x i32> %i.ny, %13
  %.not4809 = icmp eq <16 x i32> %i.oa, zeroinitializer ; 2 uses
  %i.ob = shl nsw i32 %i.nu, 3
  %i.oc = mul nsw i32 %i.nu, 24
  %i.od = sext i32 %i.oc to i64                   ; 2 uses
  %i.oe = getelementptr [4 x i8], ptr %i.bg, i64 %i.od ; 3 uses
  %.val6674977 = load <8 x float>, ptr %i.oe, align 32, !tbaa !32
  %i.of = shufflevector <8 x float> %.val6674977, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.og = getelementptr i8, ptr %i.oe, i64 32
  %.val6684978 = load <8 x float>, ptr %i.og, align 32, !tbaa !32
  %i.oh = shufflevector <8 x float> %.val6684978, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.oi = getelementptr i8, ptr %i.oe, i64 64
  %.val6694979 = load <8 x float>, ptr %i.oi, align 32, !tbaa !32
  %i.oj = shufflevector <8 x float> %.val6694979, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ok = fsub <16 x float> %i.kk, %i.of          ; 3 uses
  %i.ol = fsub <16 x float> %i.kq, %i.of          ; 3 uses
  %i.om = fsub <16 x float> %i.kx, %i.oh          ; 3 uses
  %i.on = fsub <16 x float> %i.ld, %i.oh          ; 3 uses
  %i.oo = fsub <16 x float> %i.lk, %i.oj          ; 3 uses
  %i.op = fsub <16 x float> %i.lq, %i.oj          ; 3 uses
  %i.oq = fmul <16 x float> %i.ok, %i.ok
  %i.or = fmul <16 x float> %i.om, %i.om
  %i.os = fadd <16 x float> %i.oq, %i.or
  %i.ot = fmul <16 x float> %i.oo, %i.oo
  %i.ou = fadd <16 x float> %i.os, %i.ot          ; 2 uses
  %i.ov = fmul <16 x float> %i.ol, %i.ol
  %i.ow = fmul <16 x float> %i.on, %i.on
  %i.ox = fadd <16 x float> %i.ov, %i.ow
  %i.oy = fmul <16 x float> %i.op, %i.op
  %i.oz = fadd <16 x float> %i.ox, %i.oy          ; 2 uses
  %i.pa = fcmp olt <16 x float> %i.ou, %i.bc
  %i.pb = bitcast <16 x i1> %i.pa to i16          ; 3 uses
  %i.pc = fcmp olt <16 x float> %i.oz, %i.bc
  %i.pd = bitcast <16 x i1> %i.pc to i16          ; 3 uses
  %i.pe = shl nsw i32 %i.nu, 1                    ; 3 uses
  %i.pf = icmp eq i32 %i.pe, %i.cp
  br i1 %i.pf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit581
  %i.pg = and i16 %i.pb, %i.t
  %i.ph = and i16 %i.pd, %i.u
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583

bb.e:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit581
  %i.pi = or disjoint i32 %i.pe, 1
  %i.pj = icmp eq i32 %i.pi, %i.cp
  br i1 %i.pj, label %bb.f, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583

bb.f:                                             ; preds = %bb.e
  %i.pk = and i16 %i.pb, %i.v
  %i.pl = and i16 %i.pd, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.12.0 = phi i16 [ %i.ph, %bb.d ], [ %i.pl, %bb.f ], [ %i.pd, %bb.e ]
  %.sroa.0.0 = phi i16 [ %i.pg, %bb.d ], [ %i.pk, %bb.f ], [ %i.pb, %bb.e ]
  %i.pm = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.ou, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.pn = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.oz, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.po = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.pm, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.pp = fmul <16 x float> %i.pm, %i.po
  %i.pq = fmul <16 x float> %i.po, splat (float -5.000000e-01)
  %i.pr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pp, <16 x float> %i.po, <16 x float> splat (float -3.000000e+00))
  %i.ps = fmul <16 x float> %i.pq, %i.pr
  %i.pt = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.pn, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.pu = fmul <16 x float> %i.pn, %i.pt
  %i.pv = fmul <16 x float> %i.pt, splat (float -5.000000e-01)
  %i.pw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.pu, <16 x float> %i.pt, <16 x float> splat (float -3.000000e+00))
  %i.px = fmul <16 x float> %i.pv, %i.pw
  %i.py = sext i32 %i.ob to i64                   ; 2 uses
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.py
  %.val6704980 = load <8 x float>, ptr %i.pz, align 32, !tbaa !32
  %i.qa = shufflevector <8 x float> %.val6704980, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.qb = fmul <16 x float> %.sroa.04061.0, %i.qa ; 2 uses
  %i.qc = fmul <16 x float> %.sroa.74065.0, %i.qa ; 2 uses
  %i.qd = bitcast i16 %.sroa.0.0 to <16 x i1>     ; 4 uses
  %i.qe = select <16 x i1> %i.qd, <16 x float> %i.ps, <16 x float> zeroinitializer ; 3 uses
  %i.qf = bitcast i16 %.sroa.12.0 to <16 x i1>    ; 3 uses
  %i.qg = select <16 x i1> %i.qf, <16 x float> %i.px, <16 x float> zeroinitializer ; 3 uses
  %i.qh = fmul <16 x float> %i.qe, %i.qe          ; 4 uses
  %i.qi = fmul <16 x float> %i.qg, %i.qg
  %i.qj = select <16 x i1> %.not4808, <16 x float> zeroinitializer, <16 x float> %i.qe ; 2 uses
  %i.qk = select <16 x i1> %.not4809, <16 x float> zeroinitializer, <16 x float> %i.qg ; 2 uses
  %i.ql = select <16 x i1> %i.qd, <16 x float> %i.pm, <16 x float> zeroinitializer ; 2 uses
  %i.qm = fmul <16 x float> %i.ab, %i.ql          ; 7 uses
  %i.qn = select <16 x i1> %i.qf, <16 x float> %i.pn, <16 x float> zeroinitializer
  %i.qo = fmul <16 x float> %i.ab, %i.qn          ; 7 uses
  %i.qp = fmul <16 x float> %i.qm, %i.qm          ; 15 uses
  %i.qq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.qr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.qs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qq, <16 x float> %i.qp, <16 x float> splat (float 1.000000e+00))
  %i.qt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qr, <16 x float> %i.qm, <16 x float> %i.qs) ; 2 uses
  %i.qu = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.qt, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.qv = fneg <16 x float> %i.qu
  %i.qw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qv, <16 x float> %i.qt, <16 x float> splat (float 2.000000e+00))
  %i.qx = fmul <16 x float> %i.qu, %i.qw
  %i.qy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.qz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.ra = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qy, <16 x float> %i.qp, <16 x float> splat (float f0xBC9DED90))
  %i.rb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qz, <16 x float> %i.qp, <16 x float> splat (float f0x3D8EAF3B))
  %i.rc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ra, <16 x float> %i.qp, <16 x float> splat (float f0xBF409397))
  %i.rd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rb, <16 x float> %i.qm, <16 x float> %i.rc)
  %i.re = fmul <16 x float> %i.rd, %i.qx
  %i.rf = fmul <16 x float> %i.z, %i.re
  %i.rg = fmul <16 x float> %i.qo, %i.qo          ; 15 uses
  %i.rh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.ri = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.rj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rh, <16 x float> %i.rg, <16 x float> splat (float 1.000000e+00))
  %i.rk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ri, <16 x float> %i.qo, <16 x float> %i.rj) ; 2 uses
  %i.rl = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.rk, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.rm = fneg <16 x float> %i.rl
  %i.rn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rm, <16 x float> %i.rk, <16 x float> splat (float 2.000000e+00))
  %i.ro = fmul <16 x float> %i.rl, %i.rn
  %i.rp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.rq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.rr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rp, <16 x float> %i.rg, <16 x float> splat (float f0xBC9DED90))
  %i.rs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rq, <16 x float> %i.rg, <16 x float> splat (float f0x3D8EAF3B))
  %i.rt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rr, <16 x float> %i.rg, <16 x float> splat (float f0xBF409397))
  %i.ru = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rs, <16 x float> %i.qo, <16 x float> %i.rt)
  %i.rv = fmul <16 x float> %i.ru, %i.ro
  %i.rw = fmul <16 x float> %i.z, %i.rv
  %i.rx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rf, <16 x float> %i.qm, <16 x float> %i.qj)
  %i.ry = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rw, <16 x float> %i.qo, <16 x float> %i.qk)
  %i.rz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.sa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.sb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rz, <16 x float> %i.qm, <16 x float> %i.sa) ; 2 uses
  %i.sc = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.sb, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.sd = fneg <16 x float> %i.sc
  %i.se = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sd, <16 x float> %i.sb, <16 x float> splat (float 2.000000e+00))
  %i.sf = fmul <16 x float> %i.sc, %i.se
  %i.sg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.sh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.si = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sg, <16 x float> %i.qp, <16 x float> splat (float f0x3D1E57D6))
  %i.sj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sh, <16 x float> %i.qp, <16 x float> splat (float f0x3DE71E23))
  %i.sk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.si, <16 x float> %i.qp, <16 x float> splat (float f0x3F906EC3))
  %i.sl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sj, <16 x float> %i.qm, <16 x float> %i.sk)
  %i.sm = fmul <16 x float> %i.sl, %i.sf
  %i.sn = fmul <16 x float> %i.z, %i.sm
  %i.so = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.sp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.sq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.so, <16 x float> %i.qo, <16 x float> %i.sp) ; 2 uses
  %i.sr = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.sq, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.ss = fneg <16 x float> %i.sr
  %i.st = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ss, <16 x float> %i.sq, <16 x float> splat (float 2.000000e+00))
  %i.su = fmul <16 x float> %i.sr, %i.st
  %i.sv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.sw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.rg, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.sx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sv, <16 x float> %i.rg, <16 x float> splat (float f0x3D1E57D6))
  %i.sy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sw, <16 x float> %i.rg, <16 x float> splat (float f0x3DE71E23))
  %i.sz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sx, <16 x float> %i.rg, <16 x float> splat (float f0x3F906EC3))
  %i.ta = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.sy, <16 x float> %i.qo, <16 x float> %i.sz)
  %i.tb = fmul <16 x float> %i.ta, %i.su
  %i.tc = fmul <16 x float> %i.z, %i.tb
  %i.td = fmul <16 x float> %i.qb, %i.rx
  %i.te = fmul <16 x float> %i.qc, %i.ry
  %i.tf = select <16 x i1> %.not4808, <16 x float> zeroinitializer, <16 x float> %i.ai
  %i.tg = fadd <16 x float> %i.tf, %i.sn
  %i.th = select <16 x i1> %.not4809, <16 x float> zeroinitializer, <16 x float> %i.ai
  %i.ti = fadd <16 x float> %i.th, %i.tc
  %i.tj = fsub <16 x float> %i.qj, %i.tg
  %i.tk = fmul <16 x float> %i.qb, %i.tj
  %i.tl = fsub <16 x float> %i.qk, %i.ti
  %i.tm = fmul <16 x float> %i.qc, %i.tl
  %i.tn = select <16 x i1> %i.qd, <16 x float> %i.tk, <16 x float> zeroinitializer ; 2 uses
  %i.to = select <16 x i1> %i.qf, <16 x float> %i.tm, <16 x float> zeroinitializer ; 2 uses
  %i.tp = shl nsw i32 %i.nu, 4
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.py
  %.val7004469.le = load <8 x i32>, ptr %i.tq, align 32, !tbaa !32 ; 2 uses
  %i.tr = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mk, <8 x i32> %.val7004469.le, <8 x i1> splat (i1 true), i32 8)
  %i.ts = bitcast <8 x double> %i.tr to <16 x float> ; 2 uses
  %i.tt = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mq, <8 x i32> %.val7004469.le, <8 x i1> splat (i1 true), i32 8)
  %i.tu = bitcast <8 x double> %i.tt to <16 x float> ; 2 uses
  %i.tv = shufflevector <16 x float> %i.ts, <16 x float> %i.tu, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.tw = shufflevector <16 x float> %i.ts, <16 x float> %i.tu, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.tx = fmul <16 x float> %i.qh, %i.qh
  %i.ty = fmul <16 x float> %i.qh, %i.tx          ; 4 uses
  %i.tz = select <16 x i1> %.not4808, <16 x float> zeroinitializer, <16 x float> %i.ty ; 3 uses
  %i.ua = fmul <16 x float> %i.tz, %i.tz
  %i.ub = fmul <16 x float> %i.tz, %i.tv          ; 2 uses
  %i.uc = fmul <16 x float> %i.ua, %i.tw          ; 2 uses
  %i.ud = fsub <16 x float> %i.uc, %i.ub
  %i.ue = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tv, <16 x float> %i.al, <16 x float> %i.ub)
  %i.uf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.tw, <16 x float> %i.ao, <16 x float> %i.uc)
  %i.ug = fmul <16 x float> %i.ue, splat (float f0xBE2AAAAB)
  %i.uh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uf, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.ug)
  %i.ui = select <16 x i1> %.not4808, <16 x float> zeroinitializer, <16 x float> %i.uh
  %i.uj = sext i32 %i.tp to i64
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.uj
  %.val6714981 = load <8 x float>, ptr %i.uk, align 32, !tbaa !32
  %i.ul = shufflevector <8 x float> %.val6714981, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.um = fmul <16 x float> %i.ni, %i.ul          ; 2 uses
  %i.un = fmul <16 x float> %i.aw, %i.ql          ; 3 uses
  %i.uo = bitcast <16 x float> %i.un to <8 x i64>
  %i.up = xor <8 x i64> %i.uo, splat (i64 -9223372034707292160)
  %i.uq = bitcast <8 x i64> %i.up to <16 x float> ; 2 uses
  %i.ur = fmul <16 x float> %i.uq, splat (float f0x3FB8AA3B) ; 2 uses
  %i.us = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.ur, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ut = shl <16 x i32> %i.us, splat (i32 23)
  %i.uu = add <16 x i32> %i.ut, splat (i32 1065353216)
  %i.uv = bitcast <16 x i32> %i.uu to <16 x float> ; 2 uses
  %i.uw = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ur, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.ux = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.uw, <16 x float> splat (float f0xBF317200), <16 x float> %i.uq)
end_hunk_1
begin_hunk_2_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4480.preheader
  %i.ako = getelementptr inbounds [4 x i8], ptr %i.aki, i64 %i.akm ; 2 uses
  %i.akp = load <8 x float>, ptr %i.akn, align 32, !tbaa !32
  %i.akq = fadd <8 x float> %i.akj, %i.akp
  store <8 x float> %i.akq, ptr %i.akn, align 32, !tbaa !32
  %i.akr = load <8 x float>, ptr %i.ako, align 32, !tbaa !32
  %i.aks = fadd <8 x float> %i.akr, %i.akk
  store <8 x float> %i.aks, ptr %i.ako, align 32, !tbaa !32
  %i.akt = extractelement <4 x i32> %i.ake, i64 1
  %i.aku = sext i32 %i.akt to i64                 ; 6 uses
  %i.akv = getelementptr inbounds [4 x i8], ptr %i.akg, i64 %i.aku
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 32 ; 2 uses
  %i.akx = getelementptr inbounds [4 x i8], ptr %i.aki, i64 %i.aku
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 32 ; 2 uses
  %i.akz = load <8 x float>, ptr %i.akw, align 32, !tbaa !32
  %i.ala = fadd <8 x float> %i.akj, %i.akz
  store <8 x float> %i.ala, ptr %i.akw, align 32, !tbaa !32
  %i.alb = load <8 x float>, ptr %i.aky, align 32, !tbaa !32
  %i.alc = fadd <8 x float> %i.alb, %i.akk
  store <8 x float> %i.alc, ptr %i.aky, align 32, !tbaa !32
  %i.ald = extractelement <4 x i32> %i.ake, i64 2
  %i.ale = sext i32 %i.ald to i64                 ; 6 uses
  %i.alf = getelementptr inbounds [4 x i8], ptr %i.akg, i64 %i.ale
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 64 ; 2 uses
  %i.alh = getelementptr inbounds [4 x i8], ptr %i.aki, i64 %i.ale
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 64 ; 2 uses
  %i.alj = load <8 x float>, ptr %i.alg, align 32, !tbaa !32
  %i.alk = fadd <8 x float> %i.akj, %i.alj
  store <8 x float> %i.alk, ptr %i.alg, align 32, !tbaa !32
  %i.all = load <8 x float>, ptr %i.ali, align 32, !tbaa !32
  %i.alm = fadd <8 x float> %i.all, %i.akk
  store <8 x float> %i.alm, ptr %i.ali, align 32, !tbaa !32
  %i.aln = extractelement <4 x i32> %i.ake, i64 3
  %i.alo = sext i32 %i.aln to i64                 ; 6 uses
  %i.alp = getelementptr inbounds [4 x i8], ptr %i.akg, i64 %i.alo
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 96 ; 2 uses
  %i.alr = getelementptr inbounds [4 x i8], ptr %i.aki, i64 %i.alo
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 96 ; 2 uses
  %i.alt = load <8 x float>, ptr %i.alq, align 32, !tbaa !32
  %i.alu = fadd <8 x float> %i.akj, %i.alt
  store <8 x float> %i.alu, ptr %i.alq, align 32, !tbaa !32
  %i.alv = load <8 x float>, ptr %i.als, align 32, !tbaa !32
  %i.alw = fadd <8 x float> %i.alv, %i.akk
  store <8 x float> %i.alw, ptr %i.als, align 32, !tbaa !32
  %i.alx = load ptr, ptr %i.bv, align 8, !tbaa !91 ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 16
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !92 ; 4 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alx, i64 24
  %i.amb = load ptr, ptr %i.ama, align 8, !tbaa !92 ; 4 uses
  %i.amc = shufflevector <16 x float> %i.ahk, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.amd = shufflevector <16 x float> %i.ahk, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ame = getelementptr inbounds [4 x i8], ptr %i.alz, i64 %i.akm ; 2 uses
  %i.amf = getelementptr inbounds [4 x i8], ptr %i.amb, i64 %i.akm ; 2 uses
  %i.amg = load <8 x float>, ptr %i.ame, align 32, !tbaa !32
  %i.amh = fadd <8 x float> %i.amc, %i.amg
  store <8 x float> %i.amh, ptr %i.ame, align 32, !tbaa !32
  %i.ami = load <8 x float>, ptr %i.amf, align 32, !tbaa !32
  %i.amj = fadd <8 x float> %i.ami, %i.amd
  store <8 x float> %i.amj, ptr %i.amf, align 32, !tbaa !32
  %i.amk = getelementptr inbounds [4 x i8], ptr %i.alz, i64 %i.aku
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 32 ; 2 uses
  %i.amm = getelementptr inbounds [4 x i8], ptr %i.amb, i64 %i.aku
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 32 ; 2 uses
  %i.amo = load <8 x float>, ptr %i.aml, align 32, !tbaa !32
  %i.amp = fadd <8 x float> %i.amc, %i.amo
  store <8 x float> %i.amp, ptr %i.aml, align 32, !tbaa !32
  %i.amq = load <8 x float>, ptr %i.amn, align 32, !tbaa !32
  %i.amr = fadd <8 x float> %i.amq, %i.amd
  store <8 x float> %i.amr, ptr %i.amn, align 32, !tbaa !32
  %i.ams = getelementptr inbounds [4 x i8], ptr %i.alz, i64 %i.ale
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 64 ; 2 uses
  %i.amu = getelementptr inbounds [4 x i8], ptr %i.amb, i64 %i.ale
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 64 ; 2 uses
  %i.amw = load <8 x float>, ptr %i.amt, align 32, !tbaa !32
  %i.amx = fadd <8 x float> %i.amc, %i.amw
  store <8 x float> %i.amx, ptr %i.amt, align 32, !tbaa !32
  %i.amy = load <8 x float>, ptr %i.amv, align 32, !tbaa !32
  %i.amz = fadd <8 x float> %i.amy, %i.amd
  store <8 x float> %i.amz, ptr %i.amv, align 32, !tbaa !32
  %i.ana = getelementptr inbounds [4 x i8], ptr %i.alz, i64 %i.alo
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 96 ; 2 uses
  %i.anc = getelementptr inbounds [4 x i8], ptr %i.amb, i64 %i.alo
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 96 ; 2 uses
  %i.ane = load <8 x float>, ptr %i.anb, align 32, !tbaa !32
  %i.anf = fadd <8 x float> %i.amc, %i.ane
  store <8 x float> %i.anf, ptr %i.anb, align 32, !tbaa !32
  %i.ang = load <8 x float>, ptr %i.and, align 32, !tbaa !32
  %i.anh = fadd <8 x float> %i.ang, %i.amd
  store <8 x float> %i.anh, ptr %i.and, align 32, !tbaa !32
  %i.ani = load ptr, ptr %i.bx, align 8, !tbaa !91 ; 2 uses
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !92 ; 4 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ani, i64 8
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !92 ; 4 uses
  %i.anm = shufflevector <16 x float> %i.ajk, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ann = shufflevector <16 x float> %i.ajk, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ano = getelementptr inbounds [4 x i8], ptr %i.anj, i64 %i.akm ; 2 uses
  %i.anp = getelementptr inbounds [4 x i8], ptr %i.anl, i64 %i.akm ; 2 uses
  %i.anq = load <8 x float>, ptr %i.ano, align 32, !tbaa !32
  %i.anr = fadd <8 x float> %i.anm, %i.anq
  store <8 x float> %i.anr, ptr %i.ano, align 32, !tbaa !32
  %i.ans = load <8 x float>, ptr %i.anp, align 32, !tbaa !32
  %i.ant = fadd <8 x float> %i.ans, %i.ann
  store <8 x float> %i.ant, ptr %i.anp, align 32, !tbaa !32
  %i.anu = getelementptr inbounds [4 x i8], ptr %i.anj, i64 %i.aku
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 32 ; 2 uses
  %i.anw = getelementptr inbounds [4 x i8], ptr %i.anl, i64 %i.aku
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 32 ; 2 uses
  %i.any = load <8 x float>, ptr %i.anv, align 32, !tbaa !32
  %i.anz = fadd <8 x float> %i.anm, %i.any
  store <8 x float> %i.anz, ptr %i.anv, align 32, !tbaa !32
  %i.aoa = load <8 x float>, ptr %i.anx, align 32, !tbaa !32
  %i.aob = fadd <8 x float> %i.aoa, %i.ann
  store <8 x float> %i.aob, ptr %i.anx, align 32, !tbaa !32
  %i.aoc = getelementptr inbounds [4 x i8], ptr %i.anj, i64 %i.ale
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 64 ; 2 uses
  %i.aoe = getelementptr inbounds [4 x i8], ptr %i.anl, i64 %i.ale
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 64 ; 2 uses
  %i.aog = load <8 x float>, ptr %i.aod, align 32, !tbaa !32
  %i.aoh = fadd <8 x float> %i.anm, %i.aog
  store <8 x float> %i.aoh, ptr %i.aod, align 32, !tbaa !32
  %i.aoi = load <8 x float>, ptr %i.aof, align 32, !tbaa !32
  %i.aoj = fadd <8 x float> %i.aoi, %i.ann
  store <8 x float> %i.aoj, ptr %i.aof, align 32, !tbaa !32
  %i.aok = getelementptr inbounds [4 x i8], ptr %i.anj, i64 %i.alo
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 96 ; 2 uses
  %i.aom = getelementptr inbounds [4 x i8], ptr %i.anl, i64 %i.alo
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 96 ; 2 uses
  %i.aoo = load <8 x float>, ptr %i.aol, align 32, !tbaa !32
  %i.aop = fadd <8 x float> %i.anm, %i.aoo
  store <8 x float> %i.aop, ptr %i.aol, align 32, !tbaa !32
  %i.aoq = load <8 x float>, ptr %i.aon, align 32, !tbaa !32
  %i.aor = fadd <8 x float> %i.aoq, %i.ann
  store <8 x float> %i.aor, ptr %i.aon, align 32, !tbaa !32
  %i.aos = fadd <16 x float> %i.ahb, %i.ajf
  %i.aot = fmul <16 x float> %i.aeh, %i.aos       ; 3 uses
  %i.aou = fmul <16 x float> %i.aei, %i.ahc       ; 3 uses
  %i.aov = fmul <16 x float> %i.acw, %i.aot       ; 2 uses
  %i.aow = fmul <16 x float> %i.acx, %i.aou       ; 2 uses
  %i.aox = fmul <16 x float> %i.acy, %i.aot       ; 2 uses
  %i.aoy = fmul <16 x float> %i.acz, %i.aou       ; 2 uses
  %i.aoz = fmul <16 x float> %i.ada, %i.aot       ; 2 uses
  %i.apa = fmul <16 x float> %i.adb, %i.aou       ; 2 uses
  %i.apb = fadd <16 x float> %.sroa.03842.14616, %i.aov ; 2 uses
  %i.apc = fadd <16 x float> %.sroa.163849.14617, %i.aow ; 2 uses
  %i.apd = fadd <16 x float> %.sroa.03824.14612, %i.aox ; 2 uses
  %i.ape = fadd <16 x float> %.sroa.163831.14615, %i.aoy ; 2 uses
  %i.apf = fadd <16 x float> %.sroa.03807.14614, %i.aoz ; 2 uses
  %i.apg = fadd <16 x float> %.sroa.16.14613, %i.apa ; 2 uses
  %i.aph = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.acp ; 4 uses
  %i.api = fadd <16 x float> %i.aow, %i.aov       ; 2 uses
  %i.apj = fadd <16 x float> %i.aoy, %i.aox       ; 2 uses
  %i.apk = fadd <16 x float> %i.apa, %i.aoz       ; 2 uses
  %i.apl = load <8 x float>, ptr %i.aph, align 32, !tbaa !32
  %i.apm = shufflevector <16 x float> %i.api, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.apn = shufflevector <16 x float> %i.api, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apo = fadd <8 x float> %i.apm, %i.apn
  %i.app = fsub <8 x float> %i.apl, %i.apo
  store <8 x float> %i.app, ptr %i.aph, align 32, !tbaa !32
  %i.apq = getelementptr inbounds nuw i8, ptr %i.aph, i64 32 ; 2 uses
  %i.apr = load <8 x float>, ptr %i.apq, align 32, !tbaa !32
  %i.aps = shufflevector <16 x float> %i.apj, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.apt = shufflevector <16 x float> %i.apj, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apu = fadd <8 x float> %i.aps, %i.apt
  %i.apv = fsub <8 x float> %i.apr, %i.apu
  store <8 x float> %i.apv, ptr %i.apq, align 32, !tbaa !32
  %i.apw = getelementptr inbounds nuw i8, ptr %i.aph, i64 64 ; 2 uses
  %i.apx = load <8 x float>, ptr %i.apw, align 32, !tbaa !32
  %i.apy = shufflevector <16 x float> %i.apk, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.apz = shufflevector <16 x float> %i.apk, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aqa = fadd <8 x float> %i.apy, %i.apz
  %i.aqb = fsub <8 x float> %i.apx, %i.aqa
  store <8 x float> %i.aqb, ptr %i.apw, align 32, !tbaa !32
  %indvars.iv.next4691 = add nsw i64 %indvars.iv4690, 1 ; 2 uses
  %exitcond4694.not = icmp eq i64 %indvars.iv.next4691, %wide.trip.count4693
  br i1 %exitcond4694.not, label %.loopexit, label %bb.g, !llvm.loop !18

bb.h:                                             ; preds = %.preheader4476
  br i1 %i.dp, label %.preheader4473, label %.preheader4475

.preheader4475:                                   ; preds = %bb.h
  br i1 %i.no, label %.lr.ph, label %.critedge5

.lr.ph:                                           ; preds = %.preheader4475
  %wide.trip.count = sext i32 %i.cm to i64
  br label %bb.n

.preheader4473:                                   ; preds = %bb.h
  br i1 %i.no, label %.lr.ph4533, label %.critedge3

.lr.ph4533:                                       ; preds = %.preheader4473
  %wide.trip.count4673 = sext i32 %i.cm to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph4533, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582
  %indvars.iv4670 = phi i64 [ %i.fo, %.lr.ph4533 ], [ %indvars.iv.next4671, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582 ] ; 4 uses
  %.sroa.163849.24531 = phi <16 x float> [ zeroinitializer, %.lr.ph4533 ], [ %i.bhf, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582 ] ; 2 uses
  %.sroa.03842.24530 = phi <16 x float> [ zeroinitializer, %.lr.ph4533 ], [ %i.bhe, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582 ] ; 2 uses
  %.sroa.163831.24529 = phi <16 x float> [ zeroinitializer, %.lr.ph4533 ], [ %i.bhh, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582 ] ; 2 uses
  %.sroa.03807.24528 = phi <16 x float> [ zeroinitializer, %.lr.ph4533 ], [ %i.bhi, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582 ] ; 2 uses
  %.sroa.16.24527 = phi <16 x float> [ zeroinitializer, %.lr.ph4533 ], [ %i.bhj, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582 ] ; 2 uses
  %.sroa.03824.24526 = phi <16 x float> [ zeroinitializer, %.lr.ph4533 ], [ %i.bhg, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582 ] ; 2 uses
  %i.aqc = load ptr, ptr %i.bh, align 8, !tbaa !62
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %i.aqc, i64 %indvars.iv4670
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 4
  %i.aqf = load i32, ptr %i.aqe, align 4, !tbaa !86
  %.not572 = icmp eq i32 %i.aqf, -1
  br i1 %.not572, label %.critedge3.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit577

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit577: ; preds = %bb.i
  %i.aqg = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv4670 ; 2 uses
  %i.aqh = load i32, ptr %i.aqg, align 4, !tbaa !94 ; 4 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqg, i64 4
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !120
  %i.aqk = insertelement <16 x i32> poison, i32 %i.aqj, i64 0
  %i.aql = shufflevector <16 x i32> %i.aqk, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.aqm = and <16 x i32> %i.aql, %10
  %.not4806 = icmp eq <16 x i32> %i.aqm, zeroinitializer ; 5 uses
  %i.aqn = and <16 x i32> %i.aql, %11
  %.not4807 = icmp eq <16 x i32> %i.aqn, zeroinitializer ; 5 uses
  %i.aqo = shl nsw i32 %i.aqh, 3
  %i.aqp = mul nsw i32 %i.aqh, 24
  %i.aqq = sext i32 %i.aqp to i64                 ; 2 uses
  %i.aqr = getelementptr [4 x i8], ptr %i.bg, i64 %i.aqq ; 3 uses
  %.val6774967 = load <8 x float>, ptr %i.aqr, align 32, !tbaa !32
  %i.aqs = shufflevector <8 x float> %.val6774967, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aqt = getelementptr i8, ptr %i.aqr, i64 32
  %.val6784968 = load <8 x float>, ptr %i.aqt, align 32, !tbaa !32
  %i.aqu = shufflevector <8 x float> %.val6784968, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aqv = getelementptr i8, ptr %i.aqr, i64 64
  %.val6794969 = load <8 x float>, ptr %i.aqv, align 32, !tbaa !32
  %i.aqw = shufflevector <8 x float> %.val6794969, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aqx = fsub <16 x float> %i.kk, %i.aqs        ; 3 uses
  %i.aqy = fsub <16 x float> %i.kq, %i.aqs        ; 3 uses
  %i.aqz = fsub <16 x float> %i.kx, %i.aqu        ; 3 uses
  %i.ara = fsub <16 x float> %i.ld, %i.aqu        ; 3 uses
  %i.arb = fsub <16 x float> %i.lk, %i.aqw        ; 3 uses
  %i.arc = fsub <16 x float> %i.lq, %i.aqw        ; 3 uses
  %i.ard = fmul <16 x float> %i.aqx, %i.aqx
  %i.are = fmul <16 x float> %i.aqz, %i.aqz
  %i.arf = fadd <16 x float> %i.ard, %i.are
  %i.arg = fmul <16 x float> %i.arb, %i.arb
  %i.arh = fadd <16 x float> %i.arf, %i.arg       ; 2 uses
  %i.ari = fmul <16 x float> %i.aqy, %i.aqy
  %i.arj = fmul <16 x float> %i.ara, %i.ara
  %i.ark = fadd <16 x float> %i.ari, %i.arj
  %i.arl = fmul <16 x float> %i.arc, %i.arc
  %i.arm = fadd <16 x float> %i.ark, %i.arl       ; 2 uses
  %i.arn = fcmp olt <16 x float> %i.arh, %i.bc
  %i.aro = bitcast <16 x i1> %i.arn to i16        ; 3 uses
  %i.arp = fcmp olt <16 x float> %i.arm, %i.bc
  %i.arq = bitcast <16 x i1> %i.arp to i16        ; 3 uses
  %i.arr = shl nsw i32 %i.aqh, 1                  ; 3 uses
  %i.ars = icmp eq i32 %i.arr, %i.cp
  br i1 %i.ars, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit577
  %i.art = and i16 %i.aro, %i.t
  %i.aru = and i16 %i.arq, %i.u
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582

bb.k:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit577
  %i.arv = or disjoint i32 %i.arr, 1
  %i.arw = icmp eq i32 %i.arv, %i.cp
  br i1 %i.arw, label %bb.l, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582

bb.l:                                             ; preds = %bb.k
  %i.arx = and i16 %i.aro, %i.v
  %i.ary = and i16 %i.arq, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.124452.0 = phi i16 [ %i.aru, %bb.j ], [ %i.ary, %bb.l ], [ %i.arq, %bb.k ]
  %.sroa.04449.0 = phi i16 [ %i.art, %bb.j ], [ %i.arx, %bb.l ], [ %i.aro, %bb.k ]
  %i.arz = sext i32 %i.aqo to i64                 ; 2 uses
  %i.asa = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.arz
  %.val6804970 = load <8 x float>, ptr %i.asa, align 32, !tbaa !32
  %i.asb = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.arz
  %.val6984466 = load <8 x i32>, ptr %i.asb, align 32, !tbaa !32 ; 4 uses
  %i.asc = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mk, <8 x i32> %.val6984466, <8 x i1> splat (i1 true), i32 8)
  %i.asd = bitcast <8 x double> %i.asc to <16 x float> ; 2 uses
  %i.ase = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mq, <8 x i32> %.val6984466, <8 x i1> splat (i1 true), i32 8)
  %i.asf = bitcast <8 x double> %i.ase to <16 x float> ; 2 uses
  %i.asg = shufflevector <16 x float> %i.asd, <16 x float> %i.asf, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.ash = shufflevector <16 x float> %i.asd, <16 x float> %i.asf, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.asi = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mw, <8 x i32> %.val6984466, <8 x i1> splat (i1 true), i32 8)
  %i.asj = bitcast <8 x double> %i.asi to <16 x float> ; 2 uses
  %i.ask = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nc, <8 x i32> %.val6984466, <8 x i1> splat (i1 true), i32 8)
  %i.asl = bitcast <8 x double> %i.ask to <16 x float> ; 2 uses
  %i.asm = shufflevector <16 x float> %i.asj, <16 x float> %i.asl, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.asn = shufflevector <16 x float> %i.asj, <16 x float> %i.asl, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.aso = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.arh, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.asp = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.arm, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.asq = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.aso, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.asr = fmul <16 x float> %i.aso, %i.asq
  %i.ass = fmul <16 x float> %i.asq, splat (float -5.000000e-01)
  %i.ast = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asr, <16 x float> %i.asq, <16 x float> splat (float -3.000000e+00))
  %i.asu = fmul <16 x float> %i.ass, %i.ast
  %i.asv = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.asp, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.asw = fmul <16 x float> %i.asp, %i.asv
  %i.asx = fmul <16 x float> %i.asv, splat (float -5.000000e-01)
  %i.asy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asw, <16 x float> %i.asv, <16 x float> splat (float -3.000000e+00))
  %i.asz = fmul <16 x float> %i.asx, %i.asy
  %i.ata = shufflevector <8 x float> %.val6804970, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.atb = fmul <16 x float> %.sroa.04061.0, %i.ata ; 2 uses
  %i.atc = fmul <16 x float> %.sroa.74065.0, %i.ata ; 2 uses
  %i.atd = bitcast i16 %.sroa.04449.0 to <16 x i1> ; 4 uses
  %i.ate = select <16 x i1> %i.atd, <16 x float> %i.asu, <16 x float> zeroinitializer ; 3 uses
  %i.atf = bitcast i16 %.sroa.124452.0 to <16 x i1> ; 4 uses
  %i.atg = select <16 x i1> %i.atf, <16 x float> %i.asz, <16 x float> zeroinitializer ; 3 uses
  %i.ath = fmul <16 x float> %i.ate, %i.ate       ; 4 uses
  %i.ati = fmul <16 x float> %i.atg, %i.atg       ; 4 uses
  %i.atj = select <16 x i1> %.not4806, <16 x float> zeroinitializer, <16 x float> %i.ate ; 2 uses
  %i.atk = select <16 x i1> %.not4807, <16 x float> zeroinitializer, <16 x float> %i.atg ; 2 uses
  %i.atl = select <16 x i1> %i.atd, <16 x float> %i.aso, <16 x float> zeroinitializer ; 2 uses
  %i.atm = fmul <16 x float> %i.ab, %i.atl        ; 7 uses
  %i.atn = select <16 x i1> %i.atf, <16 x float> %i.asp, <16 x float> zeroinitializer ; 2 uses
  %i.ato = fmul <16 x float> %i.ab, %i.atn        ; 7 uses
  %i.atp = fmul <16 x float> %i.atm, %i.atm       ; 15 uses
  %i.atq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atp, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.atr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atp, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.ats = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atq, <16 x float> %i.atp, <16 x float> splat (float 1.000000e+00))
  %i.att = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atr, <16 x float> %i.atm, <16 x float> %i.ats) ; 2 uses
  %i.atu = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.att, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.atv = fneg <16 x float> %i.atu
  %i.atw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atv, <16 x float> %i.att, <16 x float> splat (float 2.000000e+00))
  %i.atx = fmul <16 x float> %i.atu, %i.atw
  %i.aty = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atp, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.atz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atp, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.aua = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aty, <16 x float> %i.atp, <16 x float> splat (float f0xBC9DED90))
  %i.aub = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atz, <16 x float> %i.atp, <16 x float> splat (float f0x3D8EAF3B))
  %i.auc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aua, <16 x float> %i.atp, <16 x float> splat (float f0xBF409397))
  %i.aud = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aub, <16 x float> %i.atm, <16 x float> %i.auc)
  %i.aue = fmul <16 x float> %i.aud, %i.atx
  %i.auf = fmul <16 x float> %i.z, %i.aue
  %i.aug = fmul <16 x float> %i.ato, %i.ato       ; 15 uses
  %i.auh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aug, <16 x float> splat (float f0x3A92B707), <16 x float> splat (float f0x3DED3CB2))
  %i.aui = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aug, <16 x float> splat (float f0x3C739487), <16 x float> splat (float f0x3F01E2BC))
  %i.auj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auh, <16 x float> %i.aug, <16 x float> splat (float 1.000000e+00))
  %i.auk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aui, <16 x float> %i.ato, <16 x float> %i.auj) ; 2 uses
  %i.aul = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.auk, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.aum = fneg <16 x float> %i.aul
  %i.aun = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aum, <16 x float> %i.auk, <16 x float> splat (float 2.000000e+00))
  %i.auo = fmul <16 x float> %i.aul, %i.aun
  %i.aup = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aug, <16 x float> splat (float f0xB2951928), <16 x float> splat (float f0xB85FFB93))
  %i.auq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aug, <16 x float> splat (float f0x35C55945), <16 x float> splat (float f0x3A83CA0C))
  %i.aur = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aup, <16 x float> %i.aug, <16 x float> splat (float f0xBC9DED90))
  %i.aus = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auq, <16 x float> %i.aug, <16 x float> splat (float f0x3D8EAF3B))
  %i.aut = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aur, <16 x float> %i.aug, <16 x float> splat (float f0xBF409397))
  %i.auu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aus, <16 x float> %i.ato, <16 x float> %i.aut)
  %i.auv = fmul <16 x float> %i.auu, %i.auo
  %i.auw = fmul <16 x float> %i.z, %i.auv
  %i.aux = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auf, <16 x float> %i.atm, <16 x float> %i.atj)
  %i.auy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auw, <16 x float> %i.ato, <16 x float> %i.atk)
  %i.auz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atp, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.ava = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atp, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.avb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auz, <16 x float> %i.atm, <16 x float> %i.ava) ; 2 uses
  %i.avc = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.avb, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.avd = fneg <16 x float> %i.avc
  %i.ave = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avd, <16 x float> %i.avb, <16 x float> splat (float 2.000000e+00))
  %i.avf = fmul <16 x float> %i.avc, %i.ave
  %i.avg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atp, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.avh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.atp, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.avi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avg, <16 x float> %i.atp, <16 x float> splat (float f0x3D1E57D6))
  %i.avj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avh, <16 x float> %i.atp, <16 x float> splat (float f0x3DE71E23))
  %i.avk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avi, <16 x float> %i.atp, <16 x float> splat (float f0x3F906EC3))
  %i.avl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avj, <16 x float> %i.atm, <16 x float> %i.avk)
  %i.avm = fmul <16 x float> %i.avl, %i.avf
  %i.avn = fmul <16 x float> %i.z, %i.avm
  %i.avo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aug, <16 x float> splat (float f0x3BDABBD3), <16 x float> splat (float f0x3EDDE19B))
  %i.avp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aug, <16 x float> splat (float f0x3DA11218), <16 x float> splat (float 1.000000e+00))
  %i.avq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avo, <16 x float> %i.ato, <16 x float> %i.avp) ; 2 uses
  %i.avr = tail call noundef <16 x float> @llvm.x86.avx512.rcp14.ps.512(<16 x float> %i.avq, <16 x float> zeroinitializer, i16 -1) ; 2 uses
  %i.avs = fneg <16 x float> %i.avr
  %i.avt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avs, <16 x float> %i.avq, <16 x float> splat (float 2.000000e+00))
  %i.avu = fmul <16 x float> %i.avr, %i.avt
  %i.avv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aug, <16 x float> splat (float f0x32A5C22F), <16 x float> splat (float f0x382E7F32))
  %i.avw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aug, <16 x float> splat (float f0xB5BEC4D7), <16 x float> splat (float f0xB909B869))
  %i.avx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avv, <16 x float> %i.aug, <16 x float> splat (float f0x3D1E57D6))
  %i.avy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avw, <16 x float> %i.aug, <16 x float> splat (float f0x3DE71E23))
  %i.avz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avx, <16 x float> %i.aug, <16 x float> splat (float f0x3F906EC3))
  %i.awa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avy, <16 x float> %i.ato, <16 x float> %i.avz)
  %i.awb = fmul <16 x float> %i.awa, %i.avu
  %i.awc = fmul <16 x float> %i.z, %i.awb
  %i.awd = fmul <16 x float> %i.atb, %i.aux
  %i.awe = fmul <16 x float> %i.atc, %i.auy
  %i.awf = select <16 x i1> %.not4806, <16 x float> zeroinitializer, <16 x float> %i.ai
  %i.awg = fadd <16 x float> %i.awf, %i.avn
  %i.awh = select <16 x i1> %.not4807, <16 x float> zeroinitializer, <16 x float> %i.ai
  %i.awi = fadd <16 x float> %i.awh, %i.awc
  %i.awj = fsub <16 x float> %i.atj, %i.awg
  %i.awk = fmul <16 x float> %i.atb, %i.awj
  %i.awl = fsub <16 x float> %i.atk, %i.awi
  %i.awm = fmul <16 x float> %i.atc, %i.awl
  %i.awn = select <16 x i1> %i.atd, <16 x float> %i.awk, <16 x float> zeroinitializer ; 2 uses
  %i.awo = select <16 x i1> %i.atf, <16 x float> %i.awm, <16 x float> zeroinitializer ; 2 uses
  %i.awp = shl nsw i32 %i.aqh, 4
  %i.awq = fmul <16 x float> %i.ath, %i.ath
  %i.awr = fmul <16 x float> %i.ath, %i.awq       ; 4 uses
  %i.aws = fmul <16 x float> %i.ati, %i.ati
  %i.awt = fmul <16 x float> %i.ati, %i.aws       ; 4 uses
  %i.awu = select <16 x i1> %.not4806, <16 x float> zeroinitializer, <16 x float> %i.awr ; 3 uses
  %i.awv = select <16 x i1> %.not4807, <16 x float> zeroinitializer, <16 x float> %i.awt ; 3 uses
  %i.aww = fmul <16 x float> %i.awu, %i.awu
  %i.awx = fmul <16 x float> %i.awv, %i.awv
  %i.awy = fmul <16 x float> %i.awu, %i.asg       ; 2 uses
  %i.awz = fmul <16 x float> %i.awv, %i.asm       ; 2 uses
  %i.axa = fmul <16 x float> %i.aww, %i.ash       ; 2 uses
  %i.axb = fmul <16 x float> %i.awx, %i.asn       ; 2 uses
  %i.axc = fsub <16 x float> %i.axa, %i.awy
  %i.axd = fsub <16 x float> %i.axb, %i.awz
  %i.axe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asg, <16 x float> %i.al, <16 x float> %i.awy)
  %i.axf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asm, <16 x float> %i.al, <16 x float> %i.awz)
  %i.axg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ash, <16 x float> %i.ao, <16 x float> %i.axa)
  %i.axh = fmul <16 x float> %i.axe, splat (float f0xBE2AAAAB)
  %i.axi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.axg, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.axh)
  %i.axj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.asn, <16 x float> %i.ao, <16 x float> %i.axb)
  %i.axk = fmul <16 x float> %i.axf, splat (float f0xBE2AAAAB)
  %i.axl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.axj, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.axk)
end_hunk_2
begin_hunk_3_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4480.preheader
  %i.bte = fadd <8 x float> %i.btd, %i.bsc
  store <8 x float> %i.bte, ptr %i.bta, align 32, !tbaa !32
  %i.btf = extractelement <4 x i32> %i.brw, i64 3
  %i.btg = sext i32 %i.btf to i64                 ; 8 uses
  %i.bth = getelementptr inbounds [4 x i8], ptr %i.bry, i64 %i.btg
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bth, i64 96 ; 2 uses
  %i.btj = getelementptr inbounds [4 x i8], ptr %i.bsa, i64 %i.btg
  %i.btk = getelementptr inbounds nuw i8, ptr %i.btj, i64 96 ; 2 uses
  %i.btl = load <8 x float>, ptr %i.bti, align 32, !tbaa !32
  %i.btm = fadd <8 x float> %i.bsb, %i.btl
  store <8 x float> %i.btm, ptr %i.bti, align 32, !tbaa !32
  %i.btn = load <8 x float>, ptr %i.btk, align 32, !tbaa !32
  %i.bto = fadd <8 x float> %i.btn, %i.bsc
  store <8 x float> %i.bto, ptr %i.btk, align 32, !tbaa !32
  %i.btp = load ptr, ptr %i.bv, align 8, !tbaa !91 ; 2 uses
  %i.btq = getelementptr inbounds nuw i8, ptr %i.btp, i64 16
  %i.btr = load ptr, ptr %i.btq, align 8, !tbaa !92 ; 4 uses
  %i.bts = getelementptr inbounds nuw i8, ptr %i.btp, i64 24
  %i.btt = load ptr, ptr %i.bts, align 8, !tbaa !92 ; 4 uses
  %i.btu = shufflevector <16 x float> %i.bnu, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.btv = shufflevector <16 x float> %i.bnu, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.btw = getelementptr inbounds [4 x i8], ptr %i.btr, i64 %i.bse ; 2 uses
  %i.btx = getelementptr inbounds [4 x i8], ptr %i.btt, i64 %i.bse ; 2 uses
  %i.bty = load <8 x float>, ptr %i.btw, align 32, !tbaa !32
  %i.btz = fadd <8 x float> %i.btu, %i.bty
  store <8 x float> %i.btz, ptr %i.btw, align 32, !tbaa !32
  %i.bua = load <8 x float>, ptr %i.btx, align 32, !tbaa !32
  %i.bub = fadd <8 x float> %i.bua, %i.btv
  store <8 x float> %i.bub, ptr %i.btx, align 32, !tbaa !32
  %i.buc = getelementptr inbounds [4 x i8], ptr %i.btr, i64 %i.bsm
  %i.bud = getelementptr inbounds nuw i8, ptr %i.buc, i64 32 ; 2 uses
  %i.bue = getelementptr inbounds [4 x i8], ptr %i.btt, i64 %i.bsm
  %i.buf = getelementptr inbounds nuw i8, ptr %i.bue, i64 32 ; 2 uses
  %i.bug = load <8 x float>, ptr %i.bud, align 32, !tbaa !32
  %i.buh = fadd <8 x float> %i.btu, %i.bug
  store <8 x float> %i.buh, ptr %i.bud, align 32, !tbaa !32
  %i.bui = load <8 x float>, ptr %i.buf, align 32, !tbaa !32
  %i.buj = fadd <8 x float> %i.bui, %i.btv
  store <8 x float> %i.buj, ptr %i.buf, align 32, !tbaa !32
  %i.buk = getelementptr inbounds [4 x i8], ptr %i.btr, i64 %i.bsw
  %i.bul = getelementptr inbounds nuw i8, ptr %i.buk, i64 64 ; 2 uses
  %i.bum = getelementptr inbounds [4 x i8], ptr %i.btt, i64 %i.bsw
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bum, i64 64 ; 2 uses
  %i.buo = load <8 x float>, ptr %i.bul, align 32, !tbaa !32
  %i.bup = fadd <8 x float> %i.btu, %i.buo
  store <8 x float> %i.bup, ptr %i.bul, align 32, !tbaa !32
  %i.buq = load <8 x float>, ptr %i.bun, align 32, !tbaa !32
  %i.bur = fadd <8 x float> %i.buq, %i.btv
  store <8 x float> %i.bur, ptr %i.bun, align 32, !tbaa !32
  %i.bus = getelementptr inbounds [4 x i8], ptr %i.btr, i64 %i.btg
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 96 ; 2 uses
  %i.buu = getelementptr inbounds [4 x i8], ptr %i.btt, i64 %i.btg
  %i.buv = getelementptr inbounds nuw i8, ptr %i.buu, i64 96 ; 2 uses
  %i.buw = load <8 x float>, ptr %i.but, align 32, !tbaa !32
  %i.bux = fadd <8 x float> %i.btu, %i.buw
  store <8 x float> %i.bux, ptr %i.but, align 32, !tbaa !32
  %i.buy = load <8 x float>, ptr %i.buv, align 32, !tbaa !32
  %i.buz = fadd <8 x float> %i.buy, %i.btv
  store <8 x float> %i.buz, ptr %i.buv, align 32, !tbaa !32
  %i.bva = load ptr, ptr %i.bx, align 8, !tbaa !91 ; 2 uses
  %i.bvb = load ptr, ptr %i.bva, align 8, !tbaa !92 ; 4 uses
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bva, i64 8
  %i.bvd = load ptr, ptr %i.bvc, align 8, !tbaa !92 ; 4 uses
  %i.bve = shufflevector <16 x float> %i.brb, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bvf = shufflevector <16 x float> %i.brb, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bvg = getelementptr inbounds [4 x i8], ptr %i.bvb, i64 %i.bse ; 2 uses
  %i.bvh = getelementptr inbounds [4 x i8], ptr %i.bvd, i64 %i.bse ; 2 uses
  %i.bvi = load <8 x float>, ptr %i.bvg, align 32, !tbaa !32
  %i.bvj = fadd <8 x float> %i.bve, %i.bvi
  store <8 x float> %i.bvj, ptr %i.bvg, align 32, !tbaa !32
  %i.bvk = load <8 x float>, ptr %i.bvh, align 32, !tbaa !32
  %i.bvl = fadd <8 x float> %i.bvk, %i.bvf
  store <8 x float> %i.bvl, ptr %i.bvh, align 32, !tbaa !32
  %i.bvm = getelementptr inbounds [4 x i8], ptr %i.bvb, i64 %i.bsm
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvm, i64 32 ; 2 uses
  %i.bvo = getelementptr inbounds [4 x i8], ptr %i.bvd, i64 %i.bsm
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.bvo, i64 32 ; 2 uses
  %i.bvq = load <8 x float>, ptr %i.bvn, align 32, !tbaa !32
  %i.bvr = fadd <8 x float> %i.bve, %i.bvq
  store <8 x float> %i.bvr, ptr %i.bvn, align 32, !tbaa !32
  %i.bvs = load <8 x float>, ptr %i.bvp, align 32, !tbaa !32
  %i.bvt = fadd <8 x float> %i.bvs, %i.bvf
  store <8 x float> %i.bvt, ptr %i.bvp, align 32, !tbaa !32
  %i.bvu = getelementptr inbounds [4 x i8], ptr %i.bvb, i64 %i.bsw
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvu, i64 64 ; 2 uses
  %i.bvw = getelementptr inbounds [4 x i8], ptr %i.bvd, i64 %i.bsw
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.bvw, i64 64 ; 2 uses
  %i.bvy = load <8 x float>, ptr %i.bvv, align 32, !tbaa !32
  %i.bvz = fadd <8 x float> %i.bve, %i.bvy
  store <8 x float> %i.bvz, ptr %i.bvv, align 32, !tbaa !32
  %i.bwa = load <8 x float>, ptr %i.bvx, align 32, !tbaa !32
  %i.bwb = fadd <8 x float> %i.bwa, %i.bvf
  store <8 x float> %i.bwb, ptr %i.bvx, align 32, !tbaa !32
  %i.bwc = getelementptr inbounds [4 x i8], ptr %i.bvb, i64 %i.btg
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bwc, i64 96 ; 2 uses
  %i.bwe = getelementptr inbounds [4 x i8], ptr %i.bvd, i64 %i.btg
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bwe, i64 96 ; 2 uses
  %i.bwg = load <8 x float>, ptr %i.bwd, align 32, !tbaa !32
  %i.bwh = fadd <8 x float> %i.bve, %i.bwg
  store <8 x float> %i.bwh, ptr %i.bwd, align 32, !tbaa !32
  %i.bwi = load <8 x float>, ptr %i.bwf, align 32, !tbaa !32
  %i.bwj = fadd <8 x float> %i.bwi, %i.bvf
  store <8 x float> %i.bwj, ptr %i.bwf, align 32, !tbaa !32
  %i.bwk = load ptr, ptr %i.bx, align 8, !tbaa !91 ; 2 uses
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwk, i64 16
  %i.bwm = load ptr, ptr %i.bwl, align 8, !tbaa !92 ; 4 uses
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwk, i64 24
  %i.bwo = load ptr, ptr %i.bwn, align 8, !tbaa !92 ; 4 uses
  %i.bwp = shufflevector <16 x float> %i.brc, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.bwq = shufflevector <16 x float> %i.brc, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bwr = getelementptr inbounds [4 x i8], ptr %i.bwm, i64 %i.bse ; 2 uses
  %i.bws = getelementptr inbounds [4 x i8], ptr %i.bwo, i64 %i.bse ; 2 uses
  %i.bwt = load <8 x float>, ptr %i.bwr, align 32, !tbaa !32
  %i.bwu = fadd <8 x float> %i.bwp, %i.bwt
  store <8 x float> %i.bwu, ptr %i.bwr, align 32, !tbaa !32
  %i.bwv = load <8 x float>, ptr %i.bws, align 32, !tbaa !32
  %i.bww = fadd <8 x float> %i.bwv, %i.bwq
  store <8 x float> %i.bww, ptr %i.bws, align 32, !tbaa !32
  %i.bwx = getelementptr inbounds [4 x i8], ptr %i.bwm, i64 %i.bsm
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bwx, i64 32 ; 2 uses
  %i.bwz = getelementptr inbounds [4 x i8], ptr %i.bwo, i64 %i.bsm
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwz, i64 32 ; 2 uses
  %i.bxb = load <8 x float>, ptr %i.bwy, align 32, !tbaa !32
  %i.bxc = fadd <8 x float> %i.bwp, %i.bxb
  store <8 x float> %i.bxc, ptr %i.bwy, align 32, !tbaa !32
  %i.bxd = load <8 x float>, ptr %i.bxa, align 32, !tbaa !32
  %i.bxe = fadd <8 x float> %i.bxd, %i.bwq
  store <8 x float> %i.bxe, ptr %i.bxa, align 32, !tbaa !32
  %i.bxf = getelementptr inbounds [4 x i8], ptr %i.bwm, i64 %i.bsw
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bxf, i64 64 ; 2 uses
  %i.bxh = getelementptr inbounds [4 x i8], ptr %i.bwo, i64 %i.bsw
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bxh, i64 64 ; 2 uses
  %i.bxj = load <8 x float>, ptr %i.bxg, align 32, !tbaa !32
  %i.bxk = fadd <8 x float> %i.bwp, %i.bxj
  store <8 x float> %i.bxk, ptr %i.bxg, align 32, !tbaa !32
  %i.bxl = load <8 x float>, ptr %i.bxi, align 32, !tbaa !32
  %i.bxm = fadd <8 x float> %i.bxl, %i.bwq
  store <8 x float> %i.bxm, ptr %i.bxi, align 32, !tbaa !32
  %i.bxn = getelementptr inbounds [4 x i8], ptr %i.bwm, i64 %i.btg
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bxn, i64 96 ; 2 uses
  %i.bxp = getelementptr inbounds [4 x i8], ptr %i.bwo, i64 %i.btg
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxp, i64 96 ; 2 uses
  %i.bxr = load <8 x float>, ptr %i.bxo, align 32, !tbaa !32
  %i.bxs = fadd <8 x float> %i.bwp, %i.bxr
  store <8 x float> %i.bxs, ptr %i.bxo, align 32, !tbaa !32
  %i.bxt = load <8 x float>, ptr %i.bxq, align 32, !tbaa !32
  %i.bxu = fadd <8 x float> %i.bxt, %i.bwq
  store <8 x float> %i.bxu, ptr %i.bxq, align 32, !tbaa !32
  %i.bxv = fadd <16 x float> %i.bnl, %i.bqo
  %i.bxw = fmul <16 x float> %i.bkr, %i.bxv       ; 3 uses
  %i.bxx = fadd <16 x float> %i.bnm, %i.bqs
  %i.bxy = fmul <16 x float> %i.bks, %i.bxx       ; 3 uses
  %i.bxz = fmul <16 x float> %i.bji, %i.bxw       ; 2 uses
  %i.bya = fmul <16 x float> %i.bjj, %i.bxy       ; 2 uses
  %i.byb = fmul <16 x float> %i.bjk, %i.bxw       ; 2 uses
  %i.byc = fmul <16 x float> %i.bjl, %i.bxy       ; 2 uses
  %i.byd = fmul <16 x float> %i.bjm, %i.bxw       ; 2 uses
  %i.bye = fmul <16 x float> %i.bjn, %i.bxy       ; 2 uses
  %i.byf = fadd <16 x float> %.sroa.03842.34554, %i.bxz ; 2 uses
  %i.byg = fadd <16 x float> %.sroa.163849.34555, %i.bya ; 2 uses
  %i.byh = fadd <16 x float> %.sroa.03824.34550, %i.byb ; 2 uses
  %i.byi = fadd <16 x float> %.sroa.163831.34553, %i.byc ; 2 uses
  %i.byj = fadd <16 x float> %.sroa.03807.34552, %i.byd ; 2 uses
  %i.byk = fadd <16 x float> %.sroa.16.34551, %i.bye ; 2 uses
  %i.byl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bim ; 4 uses
  %i.bym = fadd <16 x float> %i.bxz, %i.bya       ; 2 uses
  %i.byn = fadd <16 x float> %i.byb, %i.byc       ; 2 uses
  %i.byo = fadd <16 x float> %i.byd, %i.bye       ; 2 uses
  %i.byp = load <8 x float>, ptr %i.byl, align 32, !tbaa !32
  %i.byq = shufflevector <16 x float> %i.bym, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.byr = shufflevector <16 x float> %i.bym, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bys = fadd <8 x float> %i.byq, %i.byr
  %i.byt = fsub <8 x float> %i.byp, %i.bys
  store <8 x float> %i.byt, ptr %i.byl, align 32, !tbaa !32
  %i.byu = getelementptr inbounds nuw i8, ptr %i.byl, i64 32 ; 2 uses
  %i.byv = load <8 x float>, ptr %i.byu, align 32, !tbaa !32
  %i.byw = shufflevector <16 x float> %i.byn, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.byx = shufflevector <16 x float> %i.byn, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.byy = fadd <8 x float> %i.byw, %i.byx
  %i.byz = fsub <8 x float> %i.byv, %i.byy
  store <8 x float> %i.byz, ptr %i.byu, align 32, !tbaa !32
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byl, i64 64 ; 2 uses
  %i.bzb = load <8 x float>, ptr %i.bza, align 32, !tbaa !32
  %i.bzc = shufflevector <16 x float> %i.byo, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bzd = shufflevector <16 x float> %i.byo, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bze = fadd <8 x float> %i.bzc, %i.bzd
  %i.bzf = fsub <8 x float> %i.bzb, %i.bze
  store <8 x float> %i.bzf, ptr %i.bza, align 32, !tbaa !32
  %indvars.iv.next4679 = add nsw i64 %indvars.iv4678, 1 ; 2 uses
  %exitcond4682.not = icmp eq i64 %indvars.iv.next4679, %wide.trip.count4681
  br i1 %exitcond4682.not, label %.loopexit, label %bb.m, !llvm.loop !20

bb.n:                                             ; preds = %.lr.ph, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit
  %indvars.iv = phi i64 [ %i.fo, %.lr.ph ], [ %indvars.iv.next, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 4 uses
  %.sroa.163849.44493 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cke, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03842.44492 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.ckd, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163831.44491 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.ckg, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03807.44490 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.ckh, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.44489 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.cki, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03824.44488 = phi <16 x float> [ zeroinitializer, %.lr.ph ], [ %i.ckf, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.bzg = load ptr, ptr %i.bh, align 8, !tbaa !62
  %i.bzh = getelementptr inbounds nuw [8 x i8], ptr %i.bzg, i64 %indvars.iv
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bzh, i64 4
  %i.bzj = load i32, ptr %i.bzi, align 4, !tbaa !86
  %.not = icmp eq i32 %i.bzj, -1
  br i1 %.not, label %.critedge5.loopexit, label %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit

_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit: ; preds = %bb.n
  %i.bzk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv ; 2 uses
  %i.bzl = load i32, ptr %i.bzk, align 4, !tbaa !94 ; 4 uses
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bzk, i64 4
  %i.bzn = load i32, ptr %i.bzm, align 4, !tbaa !120
  %i.bzo = insertelement <16 x i32> poison, i32 %i.bzn, i64 0
  %i.bzp = shufflevector <16 x i32> %i.bzo, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.bzq = and <16 x i32> %i.bzp, %8
  %.not4804 = icmp eq <16 x i32> %i.bzq, zeroinitializer ; 3 uses
  %i.bzr = and <16 x i32> %i.bzp, %9
  %.not4805 = icmp eq <16 x i32> %i.bzr, zeroinitializer ; 3 uses
  %i.bzs = shl nsw i32 %i.bzl, 3
  %i.bzt = mul nsw i32 %i.bzl, 24
  %i.bzu = sext i32 %i.bzt to i64                 ; 2 uses
  %i.bzv = getelementptr [4 x i8], ptr %i.bg, i64 %i.bzu ; 3 uses
  %.val6874959 = load <8 x float>, ptr %i.bzv, align 32, !tbaa !32
  %i.bzw = shufflevector <8 x float> %.val6874959, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bzx = getelementptr i8, ptr %i.bzv, i64 32
  %.val6884960 = load <8 x float>, ptr %i.bzx, align 32, !tbaa !32
  %i.bzy = shufflevector <8 x float> %.val6884960, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.bzz = getelementptr i8, ptr %i.bzv, i64 64
  %.val6894961 = load <8 x float>, ptr %i.bzz, align 32, !tbaa !32
  %i.caa = shufflevector <8 x float> %.val6894961, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cab = fsub <16 x float> %i.kk, %i.bzw        ; 3 uses
  %i.cac = fsub <16 x float> %i.kq, %i.bzw        ; 3 uses
  %i.cad = fsub <16 x float> %i.kx, %i.bzy        ; 3 uses
  %i.cae = fsub <16 x float> %i.ld, %i.bzy        ; 3 uses
  %i.caf = fsub <16 x float> %i.lk, %i.caa        ; 3 uses
  %i.cag = fsub <16 x float> %i.lq, %i.caa        ; 3 uses
  %i.cah = fmul <16 x float> %i.cab, %i.cab
  %i.cai = fmul <16 x float> %i.cad, %i.cad
  %i.caj = fadd <16 x float> %i.cah, %i.cai
  %i.cak = fmul <16 x float> %i.caf, %i.caf
  %i.cal = fadd <16 x float> %i.caj, %i.cak       ; 2 uses
  %i.cam = fmul <16 x float> %i.cac, %i.cac
  %i.can = fmul <16 x float> %i.cae, %i.cae
  %i.cao = fadd <16 x float> %i.cam, %i.can
  %i.cap = fmul <16 x float> %i.cag, %i.cag
  %i.caq = fadd <16 x float> %i.cao, %i.cap       ; 2 uses
  %i.car = fcmp olt <16 x float> %i.cal, %i.bc
  %i.cas = bitcast <16 x i1> %i.car to i16        ; 3 uses
  %i.cat = fcmp olt <16 x float> %i.caq, %i.bc
  %i.cau = bitcast <16 x i1> %i.cat to i16        ; 3 uses
  %i.cav = shl nsw i32 %i.bzl, 1                  ; 3 uses
  %i.caw = icmp eq i32 %i.cav, %i.cp
  br i1 %i.caw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %i.cax = and i16 %i.cas, %i.t
  %i.cay = and i16 %i.cau, %i.u
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.p:                                             ; preds = %_ZN3gmx28loadSimdPairInteractionMasksILb1EL12KernelLayout1EEENSt9enable_ifIXaaT_eqT0_LS1_1EESt5arrayINS_9SimdFBoolEXdvclL_ZL15sc_iClusterSizeS1_ET0_ELi2EEEE4typeEiPNS_10SimdFInt32E.exit
  %i.caz = or disjoint i32 %i.cav, 1
  %i.cba = icmp eq i32 %i.caz, %i.cp
  br i1 %i.cba, label %bb.q, label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

bb.q:                                             ; preds = %bb.p
  %i.cbb = and i16 %i.cas, %i.v
  %i.cbc = and i16 %i.cau, %i.w
  br label %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit

_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.sroa.10.0 = phi i16 [ %i.cay, %bb.o ], [ %i.cbc, %bb.q ], [ %i.cau, %bb.p ]
  %.sroa.04442.0 = phi i16 [ %i.cax, %bb.o ], [ %i.cbb, %bb.q ], [ %i.cas, %bb.p ]
  %i.cbd = sext i32 %i.bzs to i64
  %i.cbe = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.cbd
  %.val6964463 = load <8 x i32>, ptr %i.cbe, align 32, !tbaa !32 ; 4 uses
  %i.cbf = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mk, <8 x i32> %.val6964463, <8 x i1> splat (i1 true), i32 8)
  %i.cbg = bitcast <8 x double> %i.cbf to <16 x float> ; 2 uses
  %i.cbh = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mq, <8 x i32> %.val6964463, <8 x i1> splat (i1 true), i32 8)
  %i.cbi = bitcast <8 x double> %i.cbh to <16 x float> ; 2 uses
  %i.cbj = shufflevector <16 x float> %i.cbg, <16 x float> %i.cbi, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.cbk = shufflevector <16 x float> %i.cbg, <16 x float> %i.cbi, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.cbl = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.mw, <8 x i32> %.val6964463, <8 x i1> splat (i1 true), i32 8)
  %i.cbm = bitcast <8 x double> %i.cbl to <16 x float> ; 2 uses
  %i.cbn = tail call <8 x double> @llvm.x86.avx512.mask.gather.dpd.512(<8 x double> zeroinitializer, ptr %i.nc, <8 x i32> %.val6964463, <8 x i1> splat (i1 true), i32 8)
  %i.cbo = bitcast <8 x double> %i.cbn to <16 x float> ; 2 uses
  %i.cbp = shufflevector <16 x float> %i.cbm, <16 x float> %i.cbo, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30> ; 2 uses
  %i.cbq = shufflevector <16 x float> %i.cbm, <16 x float> %i.cbo, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31> ; 2 uses
  %i.cbr = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.cal, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.cbs = tail call noundef <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> %i.caq, <16 x float> splat (float 3.820000e-07), i32 4) ; 3 uses
  %i.cbt = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.cbr, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.cbu = fmul <16 x float> %i.cbr, %i.cbt
  %i.cbv = fmul <16 x float> %i.cbt, splat (float -5.000000e-01)
  %i.cbw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cbu, <16 x float> %i.cbt, <16 x float> splat (float -3.000000e+00))
  %i.cbx = fmul <16 x float> %i.cbv, %i.cbw
  %i.cby = tail call noundef <16 x float> @llvm.x86.avx512.rsqrt14.ps.512(<16 x float> %i.cbs, <16 x float> zeroinitializer, i16 -1) ; 3 uses
  %i.cbz = fmul <16 x float> %i.cbs, %i.cby
  %i.cca = fmul <16 x float> %i.cby, splat (float -5.000000e-01)
  %i.ccb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cbz, <16 x float> %i.cby, <16 x float> splat (float -3.000000e+00))
  %i.ccc = fmul <16 x float> %i.cca, %i.ccb
  %i.ccd = bitcast i16 %.sroa.04442.0 to <16 x i1> ; 3 uses
  %i.cce = select <16 x i1> %i.ccd, <16 x float> %i.cbx, <16 x float> zeroinitializer ; 2 uses
  %i.ccf = bitcast i16 %.sroa.10.0 to <16 x i1>   ; 3 uses
  %i.ccg = select <16 x i1> %i.ccf, <16 x float> %i.ccc, <16 x float> zeroinitializer ; 2 uses
  %i.cch = fmul <16 x float> %i.cce, %i.cce       ; 4 uses
  %i.cci = fmul <16 x float> %i.ccg, %i.ccg       ; 4 uses
  %i.ccj = shl nsw i32 %i.bzl, 4
  %i.cck = fmul <16 x float> %i.cch, %i.cch
  %i.ccl = fmul <16 x float> %i.cch, %i.cck       ; 4 uses
  %i.ccm = fmul <16 x float> %i.cci, %i.cci
  %i.ccn = fmul <16 x float> %i.cci, %i.ccm       ; 4 uses
  %i.cco = select <16 x i1> %.not4804, <16 x float> zeroinitializer, <16 x float> %i.ccl ; 3 uses
  %i.ccp = select <16 x i1> %.not4805, <16 x float> zeroinitializer, <16 x float> %i.ccn ; 3 uses
  %i.ccq = fmul <16 x float> %i.cco, %i.cco
  %i.ccr = fmul <16 x float> %i.ccp, %i.ccp
  %i.ccs = fmul <16 x float> %i.cco, %i.cbj       ; 2 uses
  %i.cct = fmul <16 x float> %i.ccp, %i.cbp       ; 2 uses
  %i.ccu = fmul <16 x float> %i.ccq, %i.cbk       ; 2 uses
  %i.ccv = fmul <16 x float> %i.ccr, %i.cbq       ; 2 uses
  %i.ccw = fsub <16 x float> %i.ccu, %i.ccs
  %i.ccx = fsub <16 x float> %i.ccv, %i.cct
  %i.ccy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cbj, <16 x float> %i.al, <16 x float> %i.ccs)
  %i.ccz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cbp, <16 x float> %i.al, <16 x float> %i.cct)
  %i.cda = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cbk, <16 x float> %i.ao, <16 x float> %i.ccu)
  %i.cdb = fmul <16 x float> %i.ccy, splat (float f0xBE2AAAAB)
  %i.cdc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cda, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.cdb)
  %i.cdd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cbq, <16 x float> %i.ao, <16 x float> %i.ccv)
  %i.cde = fmul <16 x float> %i.ccz, splat (float f0xBE2AAAAB)
  %i.cdf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdd, <16 x float> splat (float f0x3DAAAAAB), <16 x float> %i.cde)
  %i.cdg = select <16 x i1> %.not4804, <16 x float> zeroinitializer, <16 x float> %i.cdc
  %i.cdh = select <16 x i1> %.not4805, <16 x float> zeroinitializer, <16 x float> %i.cdf
  %i.cdi = sext i32 %i.ccj to i64
  %i.cdj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cdi
  %.val6904962 = load <8 x float>, ptr %i.cdj, align 32, !tbaa !32
  %i.cdk = shufflevector <8 x float> %.val6904962, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cdl = fmul <16 x float> %i.ni, %i.cdk        ; 2 uses
  %i.cdm = fmul <16 x float> %i.nn, %i.cdk        ; 2 uses
  %i.cdn = select <16 x i1> %i.ccd, <16 x float> %i.cbr, <16 x float> zeroinitializer
  %i.cdo = fmul <16 x float> %i.aw, %i.cdn        ; 3 uses
  %i.cdp = bitcast <16 x float> %i.cdo to <8 x i64>
  %i.cdq = select <16 x i1> %i.ccf, <16 x float> %i.cbs, <16 x float> zeroinitializer
  %i.cdr = fmul <16 x float> %i.aw, %i.cdq        ; 3 uses
  %i.cds = bitcast <16 x float> %i.cdr to <8 x i64>
  %i.cdt = xor <8 x i64> %i.cdp, splat (i64 -9223372034707292160)
  %i.cdu = bitcast <8 x i64> %i.cdt to <16 x float> ; 2 uses
  %i.cdv = fmul <16 x float> %i.cdu, splat (float f0x3FB8AA3B) ; 2 uses
  %i.cdw = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cdv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cdx = shl <16 x i32> %i.cdw, splat (i32 23)
  %i.cdy = add <16 x i32> %i.cdx, splat (i32 1065353216)
  %i.cdz = bitcast <16 x i32> %i.cdy to <16 x float> ; 2 uses
  %i.cea = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.cdv, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.ceb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cea, <16 x float> splat (float f0xBF317200), <16 x float> %i.cdu)
  %i.cec = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cea, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.ceb) ; 7 uses
  %i.ced = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cec, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.cee = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ced, <16 x float> %i.cec, <16 x float> splat (float f0x3D2AAF4C))
  %i.cef = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cee, <16 x float> %i.cec, <16 x float> splat (float f0x3E2AAA5E))
  %i.ceg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cef, <16 x float> %i.cec, <16 x float> splat (float f0x3EFFFFFB))
  %i.ceh = fmul <16 x float> %i.cec, %i.cec
  %i.cei = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ceh, <16 x float> %i.ceg, <16 x float> %i.cec)
  %i.cej = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cei, <16 x float> %i.cdz, <16 x float> %i.cdz)
  %i.cek = xor <8 x i64> %i.cds, splat (i64 -9223372034707292160)
  %i.cel = bitcast <8 x i64> %i.cek to <16 x float> ; 2 uses
  %i.cem = fmul <16 x float> %i.cel, splat (float f0x3FB8AA3B) ; 2 uses
  %i.cen = tail call <16 x i32> @llvm.x86.avx512.mask.cvtps2dq.512(<16 x float> %i.cem, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ceo = shl <16 x i32> %i.cen, splat (i32 23)
  %i.cep = add <16 x i32> %i.ceo, splat (i32 1065353216)
  %i.ceq = bitcast <16 x i32> %i.cep to <16 x float> ; 2 uses
  %i.cer = tail call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.cem, i32 0, <16 x float> zeroinitializer, i16 -1, i32 4) ; 2 uses
  %i.ces = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cer, <16 x float> splat (float f0xBF317200), <16 x float> %i.cel)
  %i.cet = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cer, <16 x float> splat (float f0xB5BFBE8E), <16 x float> %i.ces) ; 7 uses
  %i.ceu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cet, <16 x float> splat (float f0x3AB2AEF6), <16 x float> splat (float f0x3C09116B))
  %i.cev = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ceu, <16 x float> %i.cet, <16 x float> splat (float f0x3D2AAF4C))
  %i.cew = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cev, <16 x float> %i.cet, <16 x float> splat (float f0x3E2AAA5E))
  %i.cex = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cew, <16 x float> %i.cet, <16 x float> splat (float f0x3EFFFFFB))
  %i.cey = fmul <16 x float> %i.cet, %i.cet
  %i.cez = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cey, <16 x float> %i.cex, <16 x float> %i.cet)
  %i.cfa = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cez, <16 x float> %i.ceq, <16 x float> %i.ceq)
  %i.cfb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdo, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.cfc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfb, <16 x float> %i.cdo, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.cfd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdr, <16 x float> splat (float 5.000000e-01), <16 x float> splat (float 1.000000e+00))
  %i.cfe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfd, <16 x float> %i.cdr, <16 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.cff = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ccl, <16 x float> %i.cfc, <16 x float> %i.ay)
  %i.cfg = fneg <16 x float> %i.cej               ; 2 uses
  %i.cfh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfg, <16 x float> %i.cff, <16 x float> %i.ccl)
  %i.cfi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdl, <16 x float> %i.cfh, <16 x float> %i.ccw)
  %i.cfj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ccn, <16 x float> %i.cfe, <16 x float> %i.ay)
  %i.cfk = fneg <16 x float> %i.cfa               ; 2 uses
  %i.cfl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfk, <16 x float> %i.cfj, <16 x float> %i.ccn)
  %i.cfm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cdm, <16 x float> %i.cfl, <16 x float> %i.ccx)
  %i.cfn = select <16 x i1> %.not4804, <16 x float> zeroinitializer, <16 x float> %i.bb
  %i.cfo = select <16 x i1> %.not4805, <16 x float> zeroinitializer, <16 x float> %i.bb
  %i.cfp = fmul <16 x float> %i.cdl, splat (float f0x3E2AAAAB)
  %i.cfq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfg, <16 x float> %i.cfc, <16 x float> splat (float 1.000000e+00))
  %i.cfr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ccl, <16 x float> %i.cfq, <16 x float> %i.cfn)
  %i.cfs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfp, <16 x float> %i.cfr, <16 x float> %i.cdg)
  %i.cft = fmul <16 x float> %i.cdm, splat (float f0x3E2AAAAB)
  %i.cfu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cfk, <16 x float> %i.cfe, <16 x float> splat (float 1.000000e+00))
  %i.cfv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ccn, <16 x float> %i.cfu, <16 x float> %i.cfo)
  %i.cfw = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cft, <16 x float> %i.cfv, <16 x float> %i.cdh)
  %i.cfx = select <16 x i1> %i.ccd, <16 x float> %i.cfs, <16 x float> zeroinitializer ; 2 uses
  %i.cfy = select <16 x i1> %i.ccf, <16 x float> %i.cfw, <16 x float> zeroinitializer ; 2 uses
  %i.cfz = load ptr, ptr %i.bp, align 8, !tbaa !85
  %i.cga = load i32, ptr %i.cd, align 8, !tbaa !121
  %i.cgb = sext i32 %i.cav to i64
  %i.cgc = getelementptr inbounds [4 x i8], ptr %i.cfz, i64 %i.cgb
  %i.cgd = load i32, ptr %i.ce, align 4, !tbaa !122
  %i.cge = load i32, ptr %i.bz, align 8, !tbaa !95
  %i.cgf = load <2 x i32>, ptr %i.cgc, align 4, !tbaa !86 ; 2 uses
  %i.cgg = insertelement <2 x i32> poison, i32 %i.cga, i64 0
  %i.cgh = shufflevector <2 x i32> %i.cgf, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.cgi = shufflevector <2 x i32> %i.cgf, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cgj = shufflevector <2 x i32> %i.cgg, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.cgk = ashr <4 x i32> %i.cgi, %i.cgj
  %i.cgl = shufflevector <4 x i32> %i.cgk, <4 x i32> %i.cgh, <4 x i32> <i32 4, i32 0, i32 6, i32 1>
  %i.cgm = insertelement <4 x i32> poison, i32 %i.cgd, i64 0
  %i.cgn = shufflevector <4 x i32> %i.cgm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cgo = and <4 x i32> %i.cgl, %i.cgn
  %i.cgp = insertelement <4 x i32> poison, i32 %i.cge, i64 0
end_hunk_3
begin_hunk_4_@_ZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS_16NbnxnPairlistCpuERKNS_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS_23nbnxn_atomdata_output_tE:.preheader4480.preheader
  store <8 x float> %i.cue, ptr %i.cua, align 32, !tbaa !32
  %i.cuf = getelementptr inbounds [4 x i8], ptr %i.ctm, i64 %i.csr
  %i.cug = getelementptr inbounds nuw i8, ptr %i.cuf, i64 64 ; 2 uses
  %i.cuh = getelementptr inbounds [4 x i8], ptr %i.cto, i64 %i.csr
  %i.cui = getelementptr inbounds nuw i8, ptr %i.cuh, i64 64 ; 2 uses
  %i.cuj = load <8 x float>, ptr %i.cug, align 32, !tbaa !32
  %i.cuk = fadd <8 x float> %i.ctp, %i.cuj
  store <8 x float> %i.cuk, ptr %i.cug, align 32, !tbaa !32
  %i.cul = load <8 x float>, ptr %i.cui, align 32, !tbaa !32
  %i.cum = fadd <8 x float> %i.cul, %i.ctq
  store <8 x float> %i.cum, ptr %i.cui, align 32, !tbaa !32
  %i.cun = getelementptr inbounds [4 x i8], ptr %i.ctm, i64 %i.ctb
  %i.cuo = getelementptr inbounds nuw i8, ptr %i.cun, i64 96 ; 2 uses
  %i.cup = getelementptr inbounds [4 x i8], ptr %i.cto, i64 %i.ctb
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.cup, i64 96 ; 2 uses
  %i.cur = load <8 x float>, ptr %i.cuo, align 32, !tbaa !32
  %i.cus = fadd <8 x float> %i.ctp, %i.cur
  store <8 x float> %i.cus, ptr %i.cuo, align 32, !tbaa !32
  %i.cut = load <8 x float>, ptr %i.cuq, align 32, !tbaa !32
  %i.cuu = fadd <8 x float> %i.cut, %i.ctq
  store <8 x float> %i.cuu, ptr %i.cuq, align 32, !tbaa !32
  %i.cuv = fmul <16 x float> %i.cnm, %i.cqj       ; 3 uses
  %i.cuw = fmul <16 x float> %i.cnn, %i.cqn       ; 3 uses
  %i.cux = fmul <16 x float> %i.cmg, %i.cuv       ; 2 uses
  %i.cuy = fmul <16 x float> %i.cmh, %i.cuw       ; 2 uses
  %i.cuz = fmul <16 x float> %i.cmi, %i.cuv       ; 2 uses
  %i.cva = fmul <16 x float> %i.cmj, %i.cuw       ; 2 uses
  %i.cvb = fmul <16 x float> %i.cmk, %i.cuv       ; 2 uses
  %i.cvc = fmul <16 x float> %i.cml, %i.cuw       ; 2 uses
  %i.cvd = fadd <16 x float> %.sroa.03842.54514, %i.cux ; 2 uses
  %i.cve = fadd <16 x float> %.sroa.163849.54515, %i.cuy ; 2 uses
  %i.cvf = fadd <16 x float> %.sroa.03824.54510, %i.cuz ; 2 uses
  %i.cvg = fadd <16 x float> %.sroa.163831.54513, %i.cva ; 2 uses
  %i.cvh = fadd <16 x float> %.sroa.03807.54512, %i.cvb ; 2 uses
  %i.cvi = fadd <16 x float> %.sroa.16.54511, %i.cvc ; 2 uses
  %i.cvj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cll ; 4 uses
  %i.cvk = fadd <16 x float> %i.cux, %i.cuy       ; 2 uses
  %i.cvl = fadd <16 x float> %i.cuz, %i.cva       ; 2 uses
  %i.cvm = fadd <16 x float> %i.cvb, %i.cvc       ; 2 uses
  %i.cvn = load <8 x float>, ptr %i.cvj, align 32, !tbaa !32
  %i.cvo = shufflevector <16 x float> %i.cvk, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cvp = shufflevector <16 x float> %i.cvk, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cvq = fadd <8 x float> %i.cvo, %i.cvp
  %i.cvr = fsub <8 x float> %i.cvn, %i.cvq
  store <8 x float> %i.cvr, ptr %i.cvj, align 32, !tbaa !32
  %i.cvs = getelementptr inbounds nuw i8, ptr %i.cvj, i64 32 ; 2 uses
  %i.cvt = load <8 x float>, ptr %i.cvs, align 32, !tbaa !32
  %i.cvu = shufflevector <16 x float> %i.cvl, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cvv = shufflevector <16 x float> %i.cvl, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cvw = fadd <8 x float> %i.cvu, %i.cvv
  %i.cvx = fsub <8 x float> %i.cvt, %i.cvw
  store <8 x float> %i.cvx, ptr %i.cvs, align 32, !tbaa !32
  %i.cvy = getelementptr inbounds nuw i8, ptr %i.cvj, i64 64 ; 2 uses
  %i.cvz = load <8 x float>, ptr %i.cvy, align 32, !tbaa !32
  %i.cwa = shufflevector <16 x float> %i.cvm, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cwb = shufflevector <16 x float> %i.cvm, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cwc = fadd <8 x float> %i.cwa, %i.cwb
  %i.cwd = fsub <8 x float> %i.cvz, %i.cwc
  store <8 x float> %i.cwd, ptr %i.cvy, align 32, !tbaa !32
  %indvars.iv.next4660 = add nsw i64 %indvars.iv4659, 1 ; 2 uses
  %exitcond4663.not = icmp eq i64 %indvars.iv.next4660, %wide.trip.count4662
  br i1 %exitcond4663.not, label %.loopexit, label %bb.r, !llvm.loop !22

.loopexit:                                        ; preds = %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit, %bb.r, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582, %bb.m, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583, %bb.g, %.critedge5, %.critedge3, %.critedge
  %.sroa.03824.6 = phi <16 x float> [ %i.cvf, %bb.r ], [ %i.byh, %bb.m ], [ %.sroa.03824.0.lcssa, %.critedge ], [ %.sroa.03824.2.lcssa, %.critedge3 ], [ %.sroa.03824.4.lcssa, %.critedge5 ], [ %i.abj, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583 ], [ %i.bhg, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582 ], [ %i.apd, %bb.g ], [ %i.ckf, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.16.6 = phi <16 x float> [ %i.cvi, %bb.r ], [ %i.byk, %bb.m ], [ %.sroa.16.0.lcssa, %.critedge ], [ %.sroa.16.2.lcssa, %.critedge3 ], [ %.sroa.16.4.lcssa, %.critedge5 ], [ %i.abm, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583 ], [ %i.bhj, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582 ], [ %i.apg, %bb.g ], [ %i.cki, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03807.6 = phi <16 x float> [ %i.cvh, %bb.r ], [ %i.byj, %bb.m ], [ %.sroa.03807.0.lcssa, %.critedge ], [ %.sroa.03807.2.lcssa, %.critedge3 ], [ %.sroa.03807.4.lcssa, %.critedge5 ], [ %i.abl, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583 ], [ %i.bhi, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582 ], [ %i.apf, %bb.g ], [ %i.ckh, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163831.6 = phi <16 x float> [ %i.cvg, %bb.r ], [ %i.byi, %bb.m ], [ %.sroa.163831.0.lcssa, %.critedge ], [ %.sroa.163831.2.lcssa, %.critedge3 ], [ %.sroa.163831.4.lcssa, %.critedge5 ], [ %i.abk, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583 ], [ %i.bhh, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582 ], [ %i.ape, %bb.g ], [ %i.ckg, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.03842.6 = phi <16 x float> [ %i.cvd, %bb.r ], [ %i.byf, %bb.m ], [ %.sroa.03842.0.lcssa, %.critedge ], [ %.sroa.03842.2.lcssa, %.critedge3 ], [ %.sroa.03842.4.lcssa, %.critedge5 ], [ %i.abh, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583 ], [ %i.bhe, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582 ], [ %i.apb, %bb.g ], [ %i.ckd, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %.sroa.163849.6 = phi <16 x float> [ %i.cve, %bb.r ], [ %i.byg, %bb.m ], [ %.sroa.163849.0.lcssa, %.critedge ], [ %.sroa.163849.2.lcssa, %.critedge3 ], [ %.sroa.163849.4.lcssa, %.critedge5 ], [ %i.abi, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit583 ], [ %i.bhf, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit582 ], [ %i.apc, %bb.g ], [ %i.cke, %_ZNK3gmx14DiagonalMaskerILi2EL12KernelLayout1EL24KernelLayoutClusterRatio1EE9maskArrayEiiRSt5arrayINS_9SimdFBoolELm2EE.exit ] ; 2 uses
  %i.cwe = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ke ; 2 uses
  %i.cwf = shufflevector <16 x float> %.sroa.03842.6, <16 x float> %.sroa.163849.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cwg = shufflevector <16 x float> %.sroa.03842.6, <16 x float> %.sroa.163849.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cwh = fadd <16 x float> %i.cwf, %i.cwg       ; 2 uses
  %i.cwi = shufflevector <16 x float> %i.cwh, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cwj = fadd <16 x float> %i.cwh, %i.cwi       ; 2 uses
  %i.cwk = shufflevector <16 x float> %i.cwj, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cwl = fadd <16 x float> %i.cwj, %i.cwk
  %i.cwm = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.cwl, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cwn = shufflevector <16 x float> %i.cwm, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cwo = load <4 x float>, ptr %i.cwe, align 16, !tbaa !32
  %i.cwp = fadd <4 x float> %i.cwo, %i.cwn
  store <4 x float> %i.cwp, ptr %i.cwe, align 16, !tbaa !32
  %i.cwq = shufflevector <16 x float> %i.cwm, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cwr = fadd <4 x float> %i.cwn, %i.cwq        ; 2 uses
  %i.cws = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.kr ; 2 uses
  %i.cwt = shufflevector <16 x float> %.sroa.03824.6, <16 x float> %.sroa.163831.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cwu = shufflevector <16 x float> %.sroa.03824.6, <16 x float> %.sroa.163831.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cwv = fadd <16 x float> %i.cwt, %i.cwu       ; 2 uses
  %i.cww = shufflevector <16 x float> %i.cwv, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cwx = fadd <16 x float> %i.cwv, %i.cww       ; 2 uses
  %i.cwy = shufflevector <16 x float> %i.cwx, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cwz = fadd <16 x float> %i.cwx, %i.cwy
  %i.cxa = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.cwz, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cxb = shufflevector <16 x float> %i.cxa, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cxc = load <4 x float>, ptr %i.cws, align 16, !tbaa !32
  %i.cxd = fadd <4 x float> %i.cxc, %i.cxb
  store <4 x float> %i.cxd, ptr %i.cws, align 16, !tbaa !32
  %i.cxe = shufflevector <16 x float> %i.cxa, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cxf = fadd <4 x float> %i.cxb, %i.cxe        ; 2 uses
  %i.cxg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.le ; 2 uses
  %i.cxh = shufflevector <16 x float> %.sroa.03807.6, <16 x float> %.sroa.16.6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cxi = shufflevector <16 x float> %.sroa.03807.6, <16 x float> %.sroa.16.6, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cxj = fadd <16 x float> %i.cxh, %i.cxi       ; 2 uses
  %i.cxk = shufflevector <16 x float> %i.cxj, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cxl = fadd <16 x float> %i.cxj, %i.cxk       ; 2 uses
  %i.cxm = shufflevector <16 x float> %i.cxl, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cxn = fadd <16 x float> %i.cxl, %i.cxm
  %i.cxo = tail call noundef <16 x float> @llvm.x86.avx512.mask.compress.v16f32(<16 x float> %i.cxn, <16 x float> zeroinitializer, <16 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false>) ; 2 uses
  %i.cxp = shufflevector <16 x float> %i.cxo, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cxq = load <4 x float>, ptr %i.cxg, align 16, !tbaa !32
  %i.cxr = fadd <4 x float> %i.cxq, %i.cxp
  store <4 x float> %i.cxr, ptr %i.cxg, align 16, !tbaa !32
  %i.cxs = shufflevector <16 x float> %i.cxo, <16 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cxt = fadd <4 x float> %i.cxp, %i.cxs        ; 2 uses
  %i.cxu = shufflevector <4 x float> %i.cxt, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cxv = fadd <4 x float> %i.cxt, %i.cxu
  %i.cxw = extractelement <4 x float> %i.cxv, i64 0
  %i.cxx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cq ; 2 uses
  %i.cxy = load <2 x float>, ptr %i.cxx, align 4, !tbaa !74
  %i.cxz = shufflevector <4 x float> %i.cwr, <4 x float> %i.cxf, <2 x i32> <i32 0, i32 4>
  %i.cya = shufflevector <4 x float> %i.cwr, <4 x float> %i.cxf, <2 x i32> <i32 1, i32 5>
  %i.cyb = fadd <2 x float> %i.cxz, %i.cya
  %i.cyc = fadd <2 x float> %i.cyb, %i.cxy
  store <2 x float> %i.cyc, ptr %i.cxx, align 4, !tbaa !74
  %i.cyd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dc ; 2 uses
  %i.cye = load float, ptr %i.cyd, align 4, !tbaa !74
  %i.cyf = fadd float %i.cxw, %i.cye
  store float %i.cyf, ptr %i.cyd, align 4, !tbaa !74
  %i.cyg = getelementptr inbounds nuw i8, ptr %.sroa.02000.04627, i64 16 ; 2 uses
  %.not4462 = icmp eq ptr %i.cyg, %i.bm
  br i1 %.not4462, label %._crit_edge, label %bb.a
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
!9 = distinct !{!9, i1 true, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!10 = distinct !{!10, !9, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!11 = distinct !{!11, i1 true, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE0_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!12 = distinct !{!12, !11, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE0_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!13 = distinct !{!13, i1 true, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE1_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!14 = distinct !{!14, !13, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE1_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!15 = distinct !{!15, i1 true, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE2_ESt5arrayINS0_9SimdFloatEXT_EET0_"}
!16 = distinct !{!16, !15, !"_ZL6genArrILi2EZN3gmx15nbnxmKernelSimdIL12KernelLayout1ELNS0_17KernelCoulombTypeE1EL14VdwCutoffCheck0ELNS0_17LJCombinationRuleE2EL20InteractionModifiers1EL7LJEwald1EL12EnergyOutput2EEEvRKNS0_16NbnxnPairlistCpuERKNS0_16nbnxn_atomdata_tERK19interaction_const_tPA3_KfPNS0_23nbnxn_atomdata_output_tEEUliE2_ESt5arrayINS0_9SimdFloatEXT_EET0_: argument 0"}
!17 = distinct !{!17, !123}
!18 = distinct !{!18, !123}
!19 = distinct !{!19, !123}
!20 = distinct !{!20, !123}
!21 = distinct !{!21, !123}
!22 = distinct !{!22, !123}
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
!59 = !{!58, !36, i64 60}
!60 = !{!"p1 _ZTSN3gmx10nbnxn_cj_tE", !23, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN3gmx10nbnxn_cj_tENS0_30DefaultInitializationAllocatorIS1_SaIS1_EEEE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!62 = !{!61, !60, i64 0}
!63 = !{!"p1 _ZTSN3gmx10nbnxn_ci_tE", !23, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!66 = !{!65, !29, i64 0}
!67 = !{!"p1 _ZTSN3gmx17EnergyAccumulatorILb1ELb1EEE", !23, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"_ZTSN3gmx10nbnxn_ci_tE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!70 = !{!69, !6, i64 4}
!71 = !{!69, !6, i64 8}
!72 = !{!69, !6, i64 12}
!73 = !{!69, !6, i64 0}
!74 = !{!36, !36, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !27, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !76, i64 0}
!78 = !{!"any p2 pointer", !23, i64 0}
!79 = !{!"p2 float", !78, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIPfSaIS0_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!"_ZTSNSt12_Vector_baseIPfSaIS0_EE12_Vector_implE", !80, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseIPfSaIS0_EE", !81, i64 0}
!83 = !{!"_ZTSSt6vectorIPfSaIS0_EE", !82, i64 0}
!84 = !{!"_ZTSN3gmx17EnergyAccumulatorILb1ELb1EEE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !29, i64 32, !77, i64 40, !77, i64 64, !6, i64 88, !83, i64 96, !83, i64 120, !6, i64 144}
!85 = !{!84, !29, i64 32}
!86 = !{!6, !6, i64 0}
!87 = !{!84, !6, i64 88}
!88 = !{!84, !6, i64 8}
!89 = !{!84, !6, i64 12}
!90 = !{!84, !6, i64 28}
!91 = !{!80, !79, i64 0}
!92 = !{!24, !24, i64 0}
!93 = !{!"_ZTSN3gmx10nbnxn_cj_tE", !6, i64 0, !6, i64 4}
!94 = !{!93, !6, i64 0}
!95 = !{!84, !6, i64 24}
!96 = !{!"_ZTSN3gmx13PinningPolicyE", !5, i64 0}
!97 = !{!"_ZTSN3gmx20HostAllocationPolicyE", !96, i64 0, !57, i64 4}
!98 = !{!"_ZTSN3gmx9AllocatorIfNS_20HostAllocationPolicyEEE", !97, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE12_Vector_implE", !98, i64 0, !25, i64 8}
!100 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE", !99, i64 0}
!101 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE", !100, i64 0}
!102 = !{!"_ZTSN3gmx17LJCombinationRuleE", !5, i64 0}
!103 = !{!"_ZTSN3gmx9AllocatorIiNS_20HostAllocationPolicyEEE", !97, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE12_Vector_implE", !103, i64 0, !30, i64 8}
!105 = !{!"_ZTSSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE", !104, i64 0}
!106 = !{!"_ZTSSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE", !105, i64 0}
!107 = !{!"p1 _ZTSN3gmx22EnergyGroupsPerClusterE", !23, i64 0}
!108 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx22EnergyGroupsPerClusterELb0EE", !107, i64 0}
!109 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EEE", !108, i64 0}
!110 = !{!"_ZTSSt5tupleIJPN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EEE", !109, i64 0}
!111 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EE", !110, i64 0}
!112 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_ELb1ELb1EE", !111, i64 0}
!113 = !{!"_ZTSSt10unique_ptrIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EE", !112, i64 0}
!114 = !{!"_ZTSN3gmx16nbnxn_atomdata_t6ParamsE", !6, i64 0, !101, i64 8, !102, i64 40, !101, i64 48, !77, i64 80, !106, i64 104, !101, i64 136, !101, i64 168, !106, i64 200, !101, i64 232, !101, i64 264, !106, i64 296, !101, i64 328, !101, i64 360, !6, i64 392, !113, i64 400}
!115 = !{!114, !6, i64 0}
!116 = !{!10}
!117 = !{!12}
!118 = !{!14}
!119 = !{!16}
!120 = !{!93, !6, i64 4}
!121 = !{!84, !6, i64 16}
!122 = !{!84, !6, i64 20}
!123 = !{!"llvm.loop.mustprogress"}
end_hunk_4
