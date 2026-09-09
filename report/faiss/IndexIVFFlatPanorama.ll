Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFFlatPanorama?download=true
inline.NumInlined: 2990
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 314
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 357
begin_hunk_0_@_ZN5faissL24compute_level_dot_kernelILb1ELm8EEEvPKfS2_PKjmmPfm:bb.a
  %broadcast.splat10 = shufflevector <8 x float> %i.m, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat12 = shufflevector <8 x float> %i.m, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat14 = shufflevector <8 x float> %i.m, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = add nuw i64 %.070.lcssa, %index          ; 5 uses
  %i.r = shl i64 %i.q, 5
  %i.s = shl i64 %i.q, 5
  %i.t = shl i64 %i.q, 5
  %i.u = shl i64 %i.q, 5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.t ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ac = load float, ptr %i.v, align 4, !tbaa !99
  %i.ad = load float, ptr %i.x, align 4, !tbaa !99
  %i.ae = load float, ptr %i.z, align 4, !tbaa !99
  %i.af = load float, ptr %i.ab, align 4, !tbaa !99
  %i.ag = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.ah = insertelement <4 x float> %i.ag, float %i.ad, i64 1
  %i.ai = insertelement <4 x float> %i.ah, float %i.ae, i64 2
  %i.aj = insertelement <4 x float> %i.ai, float %i.af, i64 3
  %i.ak = fmul fast <4 x float> %i.aj, %broadcast.splat
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 100
  %i.ap = load float, ptr %i.al, align 4, !tbaa !99
  %i.aq = load float, ptr %i.am, align 4, !tbaa !99
  %i.ar = load float, ptr %i.an, align 4, !tbaa !99
  %i.as = load float, ptr %i.ao, align 4, !tbaa !99
  %i.at = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 1
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 2
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 3
  %i.ax = fmul fast <4 x float> %i.aw, %broadcast.splat2
  %i.ay = fadd fast <4 x float> %i.ax, %i.ak
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.bd = load float, ptr %i.az, align 4, !tbaa !99
  %i.be = load float, ptr %i.ba, align 4, !tbaa !99
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !99
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !99
  %i.bh = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 3
  %i.bl = fmul fast <4 x float> %i.bk, %broadcast.splat4
  %i.bm = fadd fast <4 x float> %i.bl, %i.ay
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 108
  %i.br = load float, ptr %i.bn, align 4, !tbaa !99
  %i.bs = load float, ptr %i.bo, align 4, !tbaa !99
  %i.bt = load float, ptr %i.bp, align 4, !tbaa !99
  %i.bu = load float, ptr %i.bq, align 4, !tbaa !99
  %i.bv = insertelement <4 x float> poison, float %i.br, i64 0
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 1
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 2
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 3
  %i.bz = fmul fast <4 x float> %i.by, %broadcast.splat6
  %i.ca = fadd fast <4 x float> %i.bz, %i.bm
  %i.cb = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.cf = load float, ptr %i.cb, align 4, !tbaa !99
  %i.cg = load float, ptr %i.cc, align 4, !tbaa !99
  %i.ch = load float, ptr %i.cd, align 4, !tbaa !99
  %i.ci = load float, ptr %i.ce, align 4, !tbaa !99
  %i.cj = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 3
  %i.cn = fmul fast <4 x float> %i.cm, %broadcast.splat8
  %i.co = fadd fast <4 x float> %i.cn, %i.ca
  %i.cp = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 84
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aa, i64 116
  %i.ct = load float, ptr %i.cp, align 4, !tbaa !99
  %i.cu = load float, ptr %i.cq, align 4, !tbaa !99
  %i.cv = load float, ptr %i.cr, align 4, !tbaa !99
  %i.cw = load float, ptr %i.cs, align 4, !tbaa !99
  %i.cx = insertelement <4 x float> poison, float %i.ct, i64 0
  %i.cy = insertelement <4 x float> %i.cx, float %i.cu, i64 1
  %i.cz = insertelement <4 x float> %i.cy, float %i.cv, i64 2
  %i.da = insertelement <4 x float> %i.cz, float %i.cw, i64 3
  %i.db = fmul fast <4 x float> %i.da, %broadcast.splat10
  %i.dc = fadd fast <4 x float> %i.db, %i.co
  %i.dd = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.dh = load float, ptr %i.dd, align 4, !tbaa !99
  %i.di = load float, ptr %i.de, align 4, !tbaa !99
  %i.dj = load float, ptr %i.df, align 4, !tbaa !99
  %i.dk = load float, ptr %i.dg, align 4, !tbaa !99
  %i.dl = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.dm = insertelement <4 x float> %i.dl, float %i.di, i64 1
  %i.dn = insertelement <4 x float> %i.dm, float %i.dj, i64 2
  %i.do = insertelement <4 x float> %i.dn, float %i.dk, i64 3
  %i.dp = fmul fast <4 x float> %i.do, %broadcast.splat12
  %i.dq = fadd fast <4 x float> %i.dp, %i.dc
  %i.dr = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.ds = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  %i.dt = getelementptr inbounds nuw i8, ptr %i.y, i64 92
  %i.du = getelementptr inbounds nuw i8, ptr %i.aa, i64 124
  %i.dv = load float, ptr %i.dr, align 4, !tbaa !99
  %i.dw = load float, ptr %i.ds, align 4, !tbaa !99
  %i.dx = load float, ptr %i.dt, align 4, !tbaa !99
  %i.dy = load float, ptr %i.du, align 4, !tbaa !99
  %i.dz = insertelement <4 x float> poison, float %i.dv, i64 0
  %i.ea = insertelement <4 x float> %i.dz, float %i.dw, i64 1
  %i.eb = insertelement <4 x float> %i.ea, float %i.dx, i64 2
  %i.ec = insertelement <4 x float> %i.eb, float %i.dy, i64 3
  %i.ed = fmul fast <4 x float> %i.ec, %broadcast.splat14
  %i.ee = fadd fast <4 x float> %i.ed, %i.dq
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.q
  store <4 x float> %i.ee, ptr %i.ef, align 4, !tbaa !99
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !558

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, 0
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph11.preheader15

.lr.ph11.preheader15:                             ; preds = %.lr.ph11.preheader, %middle.block
  %.110.ph = phi i64 [ %.070.lcssa, %.lr.ph11.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph11

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.eh = phi i64 [ %i.fi, %.lr.ph ], [ 4, %.lr.ph.preheader ] ; 3 uses
  %.0707 = phi i64 [ %i.eh, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.idx72 = shl i64 %.0707, 5
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 %.idx72
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0707
  %i.ek = load <32 x float>, ptr %i.ei, align 4, !tbaa !99 ; 8 uses
  %i.el = shufflevector <32 x float> %i.ek, <32 x float> poison, <4 x i32> <i32 1, i32 8, i32 17, i32 24>
  %i.em = fmul fast <4 x float> %i.el, %i.k
  %i.en = shufflevector <32 x float> %i.ek, <32 x float> poison, <4 x i32> <i32 0, i32 9, i32 16, i32 25>
  %i.eo = fmul fast <4 x float> %i.en, %i.c
  %i.ep = fadd fast <4 x float> %i.eo, %i.em
  %i.eq = shufflevector <32 x float> %i.ek, <32 x float> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %i.er = fmul fast <4 x float> %i.eq, %i.j
  %i.es = fadd fast <4 x float> %i.er, %i.ep
  %i.et = shufflevector <32 x float> %i.ek, <32 x float> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %i.eu = fmul fast <4 x float> %i.et, %i.i
  %i.ev = fadd fast <4 x float> %i.eu, %i.es
  %i.ew = shufflevector <32 x float> %i.ek, <32 x float> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %i.ex = fmul fast <4 x float> %i.ew, %i.h
  %i.ey = fadd fast <4 x float> %i.ex, %i.ev
  %i.ez = shufflevector <32 x float> %i.ek, <32 x float> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %i.fa = fmul fast <4 x float> %i.ez, %i.g
  %i.fb = fadd fast <4 x float> %i.fa, %i.ey
  %i.fc = shufflevector <32 x float> %i.ek, <32 x float> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %i.fd = fmul fast <4 x float> %i.fc, %i.f
  %i.fe = fadd fast <4 x float> %i.fd, %i.fb
  %i.ff = shufflevector <32 x float> %i.ek, <32 x float> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.fg = fmul fast <4 x float> %i.ff, %i.e
  %i.fh = fadd fast <4 x float> %i.fg, %i.fe
  store <4 x float> %i.fh, ptr %i.ej, align 4, !tbaa !99
  %i.fi = add i64 %i.eh, 4                        ; 2 uses
  %.not = icmp ugt i64 %i.fi, %2
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !559

.lr.ph11:                                         ; preds = %.lr.ph11.preheader15, %.lr.ph11
  %.110 = phi i64 [ %i.fo, %.lr.ph11 ], [ %.110.ph, %.lr.ph11.preheader15 ] ; 3 uses
  %.idx = shl i64 %.110, 5
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.fk = load <8 x float>, ptr %i.fj, align 4, !tbaa !99
  %i.fl = fmul fast <8 x float> %i.fk, %i.m
  %i.fm = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.fl)
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.110
  store float %i.fm, ptr %i.fn, align 4, !tbaa !99
  %i.fo = add nuw i64 %.110, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fo, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph11, !llvm.loop !560

._crit_edge:                                      ; preds = %.lr.ph11, %middle.block, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5faissL24compute_level_dot_kernelILb1ELm16EEEvPKfS2_PKjmmPfm(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef writeonly captures(none) %3) unnamed_addr #22 {
bb.a:
  %.not6 = icmp ult i64 %2, 4
  br i1 %.not6, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <2 x float>, ptr %0, align 4, !tbaa !99 ; 2 uses
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %6 = load float, ptr %i.a, align 4, !tbaa !99
  %7 = load float, ptr %4, align 4, !tbaa !99
  %8 = load float, ptr %5, align 4, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load float, ptr %i.d, align 4, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <10 x float>, ptr %i.f, align 4, !tbaa !99 ; 10 uses
  %i.h = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.i = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.j = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.k = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.l = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.m = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.n = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.o = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.p = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %9 = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> zeroinitializer
  %10 = insertelement <4 x float> poison, float %8, i64 0
  %i.q = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer
  %11 = insertelement <4 x float> poison, float %7, i64 0
  %12 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> zeroinitializer
  %13 = insertelement <4 x float> poison, float %6, i64 0
  %i.r = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> zeroinitializer
  %i.s = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.t = insertelement <4 x float> poison, float %i.e, i64 0
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.070.lcssa = phi i64 [ 0, %bb.a ], [ %i.iz, %.lr.ph ] ; 5 uses
  %i.v = icmp ult i64 %.070.lcssa, %2
  br i1 %i.v, label %.lr.ph11.preheader, label %._crit_edge

.lr.ph11.preheader:                               ; preds = %.preheader
  %i.w = load <16 x float>, ptr %0, align 4, !tbaa !99 ; 17 uses
  %i.x = sub nuw i64 %2, %.070.lcssa              ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 4
  br i1 %min.iters.check, label %.lr.ph11.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph11.preheader
  %i.y = and i64 %2, 3                            ; 2 uses
  %n.vec = sub nuw i64 %i.x, %i.y                 ; 2 uses
  %i.z = add i64 %.070.lcssa, %n.vec
  %broadcast.splat = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat2 = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat4 = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat6 = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat8 = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat10 = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat12 = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat14 = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %broadcast.splat16 = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %broadcast.splat18 = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %broadcast.splat20 = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %broadcast.splat22 = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 11, i32 11, i32 11, i32 11>
  %broadcast.splat24 = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 12, i32 12, i32 12, i32 12>
  %broadcast.splat26 = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 13, i32 13, i32 13, i32 13>
  %broadcast.splat28 = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 14, i32 14, i32 14, i32 14>
  %broadcast.splat30 = shufflevector <16 x float> %i.w, <16 x float> poison, <4 x i32> <i32 15, i32 15, i32 15, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = add nuw i64 %.070.lcssa, %index         ; 5 uses
  %i.ab = shl i64 %i.aa, 6
  %i.ac = shl i64 %i.aa, 6
  %i.ad = shl i64 %i.aa, 6
  %i.ae = shl i64 %i.aa, 6
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab ; 16 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac ; 16 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad ; 16 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae ; 16 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  %i.am = load float, ptr %i.af, align 4, !tbaa !99
  %i.an = load float, ptr %i.ah, align 4, !tbaa !99
  %i.ao = load float, ptr %i.aj, align 4, !tbaa !99
  %i.ap = load float, ptr %i.al, align 4, !tbaa !99
  %i.aq = insertelement <4 x float> poison, float %i.am, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 2
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 3
  %i.au = fmul fast <4 x float> %i.at, %broadcast.splat
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 132
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 196
  %i.az = load float, ptr %i.av, align 4, !tbaa !99
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !99
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !99
  %i.bc = load float, ptr %i.ay, align 4, !tbaa !99
  %i.bd = insertelement <4 x float> poison, float %i.az, i64 0
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 1
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3
  %i.bh = fmul fast <4 x float> %i.bg, %broadcast.splat2
  %i.bi = fadd fast <4 x float> %i.bh, %i.au
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ai, i64 136
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ak, i64 200
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !99
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !99
  %i.bp = load float, ptr %i.bl, align 4, !tbaa !99
  %i.bq = load float, ptr %i.bm, align 4, !tbaa !99
  %i.br = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 1
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 3
  %i.bv = fmul fast <4 x float> %i.bu, %broadcast.splat4
  %i.bw = fadd fast <4 x float> %i.bv, %i.bi
  %i.bx = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %i.ag, i64 76
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ai, i64 140
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ak, i64 204
  %i.cb = load float, ptr %i.bx, align 4, !tbaa !99
  %i.cc = load float, ptr %i.by, align 4, !tbaa !99
  %i.cd = load float, ptr %i.bz, align 4, !tbaa !99
  %i.ce = load float, ptr %i.ca, align 4, !tbaa !99
  %i.cf = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 1
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 2
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 3
  %i.cj = fmul fast <4 x float> %i.ci, %broadcast.splat6
  %i.ck = fadd fast <4 x float> %i.cj, %i.bw
  %i.cl = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  %i.co = getelementptr inbounds nuw i8, ptr %i.ak, i64 208
  %i.cp = load float, ptr %i.cl, align 4, !tbaa !99
  %i.cq = load float, ptr %i.cm, align 4, !tbaa !99
  %i.cr = load float, ptr %i.cn, align 4, !tbaa !99
  %i.cs = load float, ptr %i.co, align 4, !tbaa !99
  %i.ct = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 1
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 2
  %i.cw = insertelement <4 x float> %i.cv, float %i.cs, i64 3
  %i.cx = fmul fast <4 x float> %i.cw, %broadcast.splat8
  %i.cy = fadd fast <4 x float> %i.cx, %i.ck
  %i.cz = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.da = getelementptr inbounds nuw i8, ptr %i.ag, i64 84
  %i.db = getelementptr inbounds nuw i8, ptr %i.ai, i64 148
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ak, i64 212
  %i.dd = load float, ptr %i.cz, align 4, !tbaa !99
  %i.de = load float, ptr %i.da, align 4, !tbaa !99
  %i.df = load float, ptr %i.db, align 4, !tbaa !99
  %i.dg = load float, ptr %i.dc, align 4, !tbaa !99
  %i.dh = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.di = insertelement <4 x float> %i.dh, float %i.de, i64 1
  %i.dj = insertelement <4 x float> %i.di, float %i.df, i64 2
  %i.dk = insertelement <4 x float> %i.dj, float %i.dg, i64 3
  %i.dl = fmul fast <4 x float> %i.dk, %broadcast.splat10
  %i.dm = fadd fast <4 x float> %i.dl, %i.cy
  %i.dn = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ai, i64 152
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ak, i64 216
  %i.dr = load float, ptr %i.dn, align 4, !tbaa !99
  %i.ds = load float, ptr %i.do, align 4, !tbaa !99
  %i.dt = load float, ptr %i.dp, align 4, !tbaa !99
  %i.du = load float, ptr %i.dq, align 4, !tbaa !99
  %i.dv = insertelement <4 x float> poison, float %i.dr, i64 0
  %i.dw = insertelement <4 x float> %i.dv, float %i.ds, i64 1
  %i.dx = insertelement <4 x float> %i.dw, float %i.dt, i64 2
  %i.dy = insertelement <4 x float> %i.dx, float %i.du, i64 3
  %i.dz = fmul fast <4 x float> %i.dy, %broadcast.splat12
  %i.ea = fadd fast <4 x float> %i.dz, %i.dm
  %i.eb = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ag, i64 92
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ai, i64 156
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ak, i64 220
  %i.ef = load float, ptr %i.eb, align 4, !tbaa !99
  %i.eg = load float, ptr %i.ec, align 4, !tbaa !99
  %i.eh = load float, ptr %i.ed, align 4, !tbaa !99
  %i.ei = load float, ptr %i.ee, align 4, !tbaa !99
  %i.ej = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.ek = insertelement <4 x float> %i.ej, float %i.eg, i64 1
  %i.el = insertelement <4 x float> %i.ek, float %i.eh, i64 2
  %i.em = insertelement <4 x float> %i.el, float %i.ei, i64 3
  %i.en = fmul fast <4 x float> %i.em, %broadcast.splat14
  %i.eo = fadd fast <4 x float> %i.en, %i.ea
  %i.ep = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.er = getelementptr inbounds nuw i8, ptr %i.ai, i64 160
  %i.es = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  %i.et = load float, ptr %i.ep, align 4, !tbaa !99
  %i.eu = load float, ptr %i.eq, align 4, !tbaa !99
  %i.ev = load float, ptr %i.er, align 4, !tbaa !99
  %i.ew = load float, ptr %i.es, align 4, !tbaa !99
  %i.ex = insertelement <4 x float> poison, float %i.et, i64 0
  %i.ey = insertelement <4 x float> %i.ex, float %i.eu, i64 1
  %i.ez = insertelement <4 x float> %i.ey, float %i.ev, i64 2
  %i.fa = insertelement <4 x float> %i.ez, float %i.ew, i64 3
  %i.fb = fmul fast <4 x float> %i.fa, %broadcast.splat16
  %i.fc = fadd fast <4 x float> %i.fb, %i.eo
  %i.fd = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ag, i64 100
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ai, i64 164
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ak, i64 228
  %i.fh = load float, ptr %i.fd, align 4, !tbaa !99
  %i.fi = load float, ptr %i.fe, align 4, !tbaa !99
  %i.fj = load float, ptr %i.ff, align 4, !tbaa !99
  %i.fk = load float, ptr %i.fg, align 4, !tbaa !99
  %i.fl = insertelement <4 x float> poison, float %i.fh, i64 0
  %i.fm = insertelement <4 x float> %i.fl, float %i.fi, i64 1
  %i.fn = insertelement <4 x float> %i.fm, float %i.fj, i64 2
  %i.fo = insertelement <4 x float> %i.fn, float %i.fk, i64 3
  %i.fp = fmul fast <4 x float> %i.fo, %broadcast.splat18
  %i.fq = fadd fast <4 x float> %i.fp, %i.fc
  %i.fr = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ai, i64 168
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ak, i64 232
  %i.fv = load float, ptr %i.fr, align 4, !tbaa !99
  %i.fw = load float, ptr %i.fs, align 4, !tbaa !99
  %i.fx = load float, ptr %i.ft, align 4, !tbaa !99
  %i.fy = load float, ptr %i.fu, align 4, !tbaa !99
  %i.fz = insertelement <4 x float> poison, float %i.fv, i64 0
  %i.ga = insertelement <4 x float> %i.fz, float %i.fw, i64 1
  %i.gb = insertelement <4 x float> %i.ga, float %i.fx, i64 2
  %i.gc = insertelement <4 x float> %i.gb, float %i.fy, i64 3
  %i.gd = fmul fast <4 x float> %i.gc, %broadcast.splat20
  %i.ge = fadd fast <4 x float> %i.gd, %i.fq
  %i.gf = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ag, i64 108
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ai, i64 172
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ak, i64 236
  %i.gj = load float, ptr %i.gf, align 4, !tbaa !99
  %i.gk = load float, ptr %i.gg, align 4, !tbaa !99
  %i.gl = load float, ptr %i.gh, align 4, !tbaa !99
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !99
  %i.gn = insertelement <4 x float> poison, float %i.gj, i64 0
  %i.go = insertelement <4 x float> %i.gn, float %i.gk, i64 1
  %i.gp = insertelement <4 x float> %i.go, float %i.gl, i64 2
  %i.gq = insertelement <4 x float> %i.gp, float %i.gm, i64 3
  %i.gr = fmul fast <4 x float> %i.gq, %broadcast.splat22
  %i.gs = fadd fast <4 x float> %i.gr, %i.ge
  %i.gt = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ai, i64 176
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ak, i64 240
  %i.gx = load float, ptr %i.gt, align 4, !tbaa !99
  %i.gy = load float, ptr %i.gu, align 4, !tbaa !99
  %i.gz = load float, ptr %i.gv, align 4, !tbaa !99
  %i.ha = load float, ptr %i.gw, align 4, !tbaa !99
  %i.hb = insertelement <4 x float> poison, float %i.gx, i64 0
  %i.hc = insertelement <4 x float> %i.hb, float %i.gy, i64 1
  %i.hd = insertelement <4 x float> %i.hc, float %i.gz, i64 2
  %i.he = insertelement <4 x float> %i.hd, float %i.ha, i64 3
  %i.hf = fmul fast <4 x float> %i.he, %broadcast.splat24
  %i.hg = fadd fast <4 x float> %i.hf, %i.gs
  %i.hh = getelementptr inbounds nuw i8, ptr %i.af, i64 52
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ag, i64 116
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ai, i64 180
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ak, i64 244
  %i.hl = load float, ptr %i.hh, align 4, !tbaa !99
  %i.hm = load float, ptr %i.hi, align 4, !tbaa !99
  %i.hn = load float, ptr %i.hj, align 4, !tbaa !99
  %i.ho = load float, ptr %i.hk, align 4, !tbaa !99
  %i.hp = insertelement <4 x float> poison, float %i.hl, i64 0
  %i.hq = insertelement <4 x float> %i.hp, float %i.hm, i64 1
  %i.hr = insertelement <4 x float> %i.hq, float %i.hn, i64 2
  %i.hs = insertelement <4 x float> %i.hr, float %i.ho, i64 3
  %i.ht = fmul fast <4 x float> %i.hs, %broadcast.splat26
  %i.hu = fadd fast <4 x float> %i.ht, %i.hg
  %i.hv = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ai, i64 184
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ak, i64 248
  %i.hz = load float, ptr %i.hv, align 4, !tbaa !99
  %i.ia = load float, ptr %i.hw, align 4, !tbaa !99
  %i.ib = load float, ptr %i.hx, align 4, !tbaa !99
  %i.ic = load float, ptr %i.hy, align 4, !tbaa !99
  %i.id = insertelement <4 x float> poison, float %i.hz, i64 0
  %i.ie = insertelement <4 x float> %i.id, float %i.ia, i64 1
  %i.if = insertelement <4 x float> %i.ie, float %i.ib, i64 2
  %i.ig = insertelement <4 x float> %i.if, float %i.ic, i64 3
  %i.ih = fmul fast <4 x float> %i.ig, %broadcast.splat28
  %i.ii = fadd fast <4 x float> %i.ih, %i.hu
  %i.ij = getelementptr inbounds nuw i8, ptr %i.af, i64 60
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ag, i64 124
  %i.il = getelementptr inbounds nuw i8, ptr %i.ai, i64 188
  %i.im = getelementptr inbounds nuw i8, ptr %i.ak, i64 252
  %i.in = load float, ptr %i.ij, align 4, !tbaa !99
  %i.io = load float, ptr %i.ik, align 4, !tbaa !99
  %i.ip = load float, ptr %i.il, align 4, !tbaa !99
  %i.iq = load float, ptr %i.im, align 4, !tbaa !99
  %i.ir = insertelement <4 x float> poison, float %i.in, i64 0
  %i.is = insertelement <4 x float> %i.ir, float %i.io, i64 1
  %i.it = insertelement <4 x float> %i.is, float %i.ip, i64 2
  %i.iu = insertelement <4 x float> %i.it, float %i.iq, i64 3
  %i.iv = fmul fast <4 x float> %i.iu, %broadcast.splat30
  %i.iw = fadd fast <4 x float> %i.iv, %i.ii
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aa
  store <4 x float> %i.iw, ptr %i.ix, align 4, !tbaa !99
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iy = icmp eq i64 %index.next, %n.vec
  br i1 %i.iy, label %middle.block, label %vector.body, !llvm.loop !561

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, 0
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph11.preheader31

.lr.ph11.preheader31:                             ; preds = %.lr.ph11.preheader, %middle.block
  %.110.ph = phi i64 [ %.070.lcssa, %.lr.ph11.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph11

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.iz = phi i64 [ %i.oi, %.lr.ph ], [ 4, %.lr.ph.preheader ] ; 3 uses
  %.0707 = phi i64 [ %i.iz, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.idx72 = shl i64 %.0707, 6
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 %.idx72 ; 6 uses
  %i.jb = shl i64 %.0707, 6
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 %i.jb ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 64
  %i.je = shl i64 %.0707, 6
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 %i.je ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 128
  %i.jh = shl i64 %.0707, 6
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 %i.jh ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 192
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !99
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jc, i64 80
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !99
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jf, i64 144
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !99
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 208
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !99
  %i.js = load <4 x float>, ptr %i.ja, align 4, !tbaa !99 ; 4 uses
  %i.jt = load <4 x float>, ptr %i.jd, align 4, !tbaa !99 ; 4 uses
  %i.ju = load <4 x float>, ptr %i.jg, align 4, !tbaa !99 ; 4 uses
  %i.jv = load <4 x float>, ptr %i.jj, align 4, !tbaa !99 ; 4 uses
  %i.jw = shufflevector <4 x float> %i.js, <4 x float> %i.jt, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.jx = shufflevector <4 x float> %i.jw, <4 x float> %i.ju, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> %i.jv, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.jz = fmul fast <4 x float> %i.jy, %i.s
  %i.ka = shufflevector <4 x float> %i.js, <4 x float> %i.jt, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.kb = shufflevector <4 x float> %i.ka, <4 x float> %i.ju, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> %i.jv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.kd = fmul fast <4 x float> %i.kc, %i.c
  %i.ke = fadd fast <4 x float> %i.kd, %i.jz
  %i.kf = shufflevector <4 x float> %i.js, <4 x float> %i.jt, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.kg = shufflevector <4 x float> %i.kf, <4 x float> %i.ju, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> %i.jv, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ki = fmul fast <4 x float> %i.kh, %i.r
  %i.kj = fadd fast <4 x float> %i.ki, %i.ke
  %i.kk = shufflevector <4 x float> %i.js, <4 x float> %i.jt, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.kl = shufflevector <4 x float> %i.kk, <4 x float> %i.ju, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.km = shufflevector <4 x float> %i.kl, <4 x float> %i.jv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.kn = fmul fast <4 x float> %i.km, %12
  %i.ko = fadd fast <4 x float> %i.kn, %i.kj
  %i.kp = insertelement <4 x float> poison, float %i.jl, i64 0
  %i.kq = insertelement <4 x float> %i.kp, float %i.jn, i64 1
  %i.kr = insertelement <4 x float> %i.kq, float %i.jp, i64 2
  %i.ks = insertelement <4 x float> %i.kr, float %i.jr, i64 3
  %i.kt = fmul fast <4 x float> %i.ks, %i.q
  %i.ku = fadd fast <4 x float> %i.kt, %i.ko
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ja, i64 20
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !99
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jc, i64 84
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !99
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jf, i64 148
  %i.la = load float, ptr %i.kz, align 4, !tbaa !99
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ji, i64 212
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !99
  %i.ld = insertelement <4 x float> poison, float %i.kw, i64 0
  %i.le = insertelement <4 x float> %i.ld, float %i.ky, i64 1
  %i.lf = insertelement <4 x float> %i.le, float %i.la, i64 2
  %i.lg = insertelement <4 x float> %i.lf, float %i.lc, i64 3
  %i.lh = fmul fast <4 x float> %i.lg, %i.u
  %i.li = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jc, i64 88
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jf, i64 152
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ji, i64 216
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jc, i64 104
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jf, i64 168
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ji, i64 232
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ja, i64 56
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jc, i64 120
  %i.ls = getelementptr inbounds nuw i8, ptr %i.jf, i64 184
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ji, i64 248
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0707
  %i.lv = fadd fast <4 x float> %i.lh, %i.ku
  %i.lw = load <4 x float>, ptr %i.li, align 4, !tbaa !99 ; 4 uses
  %i.lx = load <4 x float>, ptr %i.lj, align 4, !tbaa !99 ; 4 uses
  %i.ly = load <4 x float>, ptr %i.lk, align 4, !tbaa !99 ; 4 uses
  %i.lz = load <4 x float>, ptr %i.ll, align 4, !tbaa !99 ; 4 uses
  %i.ma = shufflevector <4 x float> %i.lw, <4 x float> %i.lx, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.mb = shufflevector <4 x float> %i.ma, <4 x float> %i.ly, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> %i.lz, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.md = fmul fast <4 x float> %i.mc, %9
  %i.me = fadd fast <4 x float> %i.md, %i.lv
  %i.mf = shufflevector <4 x float> %i.lw, <4 x float> %i.lx, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.mg = shufflevector <4 x float> %i.mf, <4 x float> %i.ly, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.mh = shufflevector <4 x float> %i.mg, <4 x float> %i.lz, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.mi = fmul fast <4 x float> %i.mh, %i.p
  %i.mj = fadd fast <4 x float> %i.mi, %i.me
  %i.mk = shufflevector <4 x float> %i.lw, <4 x float> %i.lx, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> %i.ly, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.mm = shufflevector <4 x float> %i.ml, <4 x float> %i.lz, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.mn = fmul fast <4 x float> %i.mm, %i.o
  %i.mo = fadd fast <4 x float> %i.mn, %i.mj
  %i.mp = shufflevector <4 x float> %i.lw, <4 x float> %i.lx, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.mq = shufflevector <4 x float> %i.mp, <4 x float> %i.ly, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.mr = shufflevector <4 x float> %i.mq, <4 x float> %i.lz, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ms = fmul fast <4 x float> %i.mr, %i.n
  %i.mt = fadd fast <4 x float> %i.ms, %i.mo
  %i.mu = load <4 x float>, ptr %i.lm, align 4, !tbaa !99 ; 4 uses
  %i.mv = load <4 x float>, ptr %i.ln, align 4, !tbaa !99 ; 4 uses
  %i.mw = load <4 x float>, ptr %i.lo, align 4, !tbaa !99 ; 4 uses
  %i.mx = load <4 x float>, ptr %i.lp, align 4, !tbaa !99 ; 4 uses
  %i.my = shufflevector <4 x float> %i.mu, <4 x float> %i.mv, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> %i.mw, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.na = shufflevector <4 x float> %i.mz, <4 x float> %i.mx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.nb = fmul fast <4 x float> %i.na, %i.m
  %i.nc = fadd fast <4 x float> %i.nb, %i.mt
  %i.nd = shufflevector <4 x float> %i.mu, <4 x float> %i.mv, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.ne = shufflevector <4 x float> %i.nd, <4 x float> %i.mw, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.nf = shufflevector <4 x float> %i.ne, <4 x float> %i.mx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ng = fmul fast <4 x float> %i.nf, %i.l
  %i.nh = fadd fast <4 x float> %i.ng, %i.nc
  %i.ni = shufflevector <4 x float> %i.mu, <4 x float> %i.mv, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.nj = shufflevector <4 x float> %i.ni, <4 x float> %i.mw, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> %i.mx, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.nl = fmul fast <4 x float> %i.nk, %i.k
  %i.nm = fadd fast <4 x float> %i.nl, %i.nh
  %i.nn = shufflevector <4 x float> %i.mu, <4 x float> %i.mv, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.no = shufflevector <4 x float> %i.nn, <4 x float> %i.mw, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.np = shufflevector <4 x float> %i.no, <4 x float> %i.mx, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.nq = fmul fast <4 x float> %i.np, %i.j
  %i.nr = fadd fast <4 x float> %i.nq, %i.nm
  %i.ns = load <2 x float>, ptr %i.lq, align 4, !tbaa !99 ; 2 uses
  %i.nt = load <2 x float>, ptr %i.lr, align 4, !tbaa !99 ; 2 uses
  %i.nu = load <2 x float>, ptr %i.ls, align 4, !tbaa !99
  %i.nv = load <2 x float>, ptr %i.lt, align 4, !tbaa !99
  %i.nw = shufflevector <2 x float> %i.ns, <2 x float> %i.nt, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.nx = shufflevector <2 x float> %i.nu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ny = shufflevector <4 x float> %i.nw, <4 x float> %i.nx, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.nz = shufflevector <2 x float> %i.nv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.oa = shufflevector <4 x float> %i.ny, <4 x float> %i.nz, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ob = fmul fast <4 x float> %i.oa, %i.i
  %i.oc = fadd fast <4 x float> %i.ob, %i.nr
  %i.od = shufflevector <2 x float> %i.ns, <2 x float> %i.nt, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.oe = shufflevector <4 x float> %i.od, <4 x float> %i.nx, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.of = shufflevector <4 x float> %i.oe, <4 x float> %i.nz, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.og = fmul fast <4 x float> %i.of, %i.h
  %i.oh = fadd fast <4 x float> %i.og, %i.oc
  store <4 x float> %i.oh, ptr %i.lu, align 4, !tbaa !99
  %i.oi = add i64 %i.iz, 4                        ; 2 uses
  %.not = icmp ugt i64 %i.oi, %2
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !562

.lr.ph11:                                         ; preds = %.lr.ph11.preheader31, %.lr.ph11
  %.110 = phi i64 [ %i.oo, %.lr.ph11 ], [ %.110.ph, %.lr.ph11.preheader31 ] ; 3 uses
  %.idx = shl i64 %.110, 6
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ok = load <16 x float>, ptr %i.oj, align 4, !tbaa !99
  %i.ol = fmul fast <16 x float> %i.ok, %i.w
  %i.om = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.ol)
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.110
  store float %i.om, ptr %i.on, align 4, !tbaa !99
  %i.oo = add nuw i64 %.110, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.oo, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph11, !llvm.loop !563

._crit_edge:                                      ; preds = %.lr.ph11, %middle.block, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5faissL24compute_level_dot_kernelILb1ELm24EEEvPKfS2_PKjmmPfm(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef writeonly captures(none) %3) unnamed_addr #22 {
bb.a:
  %.not6 = icmp ult i64 %2, 4
  br i1 %.not6, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.load = load <4 x float>, ptr %0, align 4, !tbaa !99 ; 4 uses
  %wide.load12 = load <4 x float>, ptr %i.a, align 4, !tbaa !99 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.load.1 = load <4 x float>, ptr %i.b, align 4, !tbaa !99 ; 4 uses
  %wide.load12.1 = load <4 x float>, ptr %i.c, align 4, !tbaa !99 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.load.2 = load <4 x float>, ptr %i.d, align 4, !tbaa !99 ; 4 uses
  %wide.load12.2 = load <4 x float>, ptr %i.e, align 4, !tbaa !99 ; 4 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.070.lcssa = phi i64 [ 0, %bb.a ], [ %i.mr, %.lr.ph ] ; 5 uses
  %i.f = icmp ult i64 %.070.lcssa, %2
  br i1 %i.f, label %.lr.ph11.preheader, label %._crit_edge

.lr.ph11.preheader:                               ; preds = %.preheader
  %i.g = load <24 x float>, ptr %0, align 4, !tbaa !99 ; 25 uses
  %i.h = sub nuw i64 %2, %.070.lcssa              ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %.lr.ph11.preheader75, label %vector.ph24

vector.ph24:                                      ; preds = %.lr.ph11.preheader
  %i.i = and i64 %2, 3                            ; 2 uses
  %n.vec = sub nuw i64 %i.h, %i.i                 ; 2 uses
  %i.j = add i64 %.070.lcssa, %n.vec
  %broadcast.splat = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %broadcast.splat26 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %broadcast.splat28 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 11, i32 11, i32 11, i32 11>
  %broadcast.splat30 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 12, i32 12, i32 12, i32 12>
  %broadcast.splat32 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 13, i32 13, i32 13, i32 13>
  %broadcast.splat34 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 14, i32 14, i32 14, i32 14>
  %broadcast.splat36 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 15, i32 15, i32 15, i32 15>
  %broadcast.splat38 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 16, i32 16, i32 16, i32 16>
  %broadcast.splat40 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 17, i32 17, i32 17, i32 17>
  %broadcast.splat42 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat44 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat46 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat48 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat50 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat52 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat54 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat56 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %broadcast.splat58 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %broadcast.splat60 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 18, i32 18, i32 18, i32 18>
  %broadcast.splat62 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 19, i32 19, i32 19, i32 19>
  %broadcast.splat64 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 20, i32 20, i32 20, i32 20>
  %broadcast.splat66 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 21, i32 21, i32 21, i32 21>
  %broadcast.splat68 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 22, i32 22, i32 22, i32 22>
  %broadcast.splat70 = shufflevector <24 x float> %i.g, <24 x float> poison, <4 x i32> <i32 23, i32 23, i32 23, i32 23>
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph24
  %index72 = phi i64 [ 0, %vector.ph24 ], [ %index.next73, %vector.body71 ] ; 2 uses
  %i.k = add nuw i64 %.070.lcssa, %index72        ; 5 uses
  %i.l = mul i64 %i.k, 96
  %i.m = mul i64 %i.k, 96
  %i.n = mul i64 %i.k, 96
  %i.o = mul i64 %i.k, 96
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 24 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.m ; 24 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = getelementptr i8, ptr %1, i64 %i.n       ; 24 uses
  %i.t = getelementptr i8, ptr %i.s, i64 192
  %i.u = getelementptr i8, ptr %1, i64 %i.o       ; 24 uses
  %i.v = getelementptr i8, ptr %i.u, i64 288
  %i.w = load float, ptr %i.p, align 4, !tbaa !99
  %i.x = load float, ptr %i.r, align 4, !tbaa !99
  %i.y = load float, ptr %i.t, align 4, !tbaa !99
  %i.z = load float, ptr %i.v, align 4, !tbaa !99
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = fmul fast <4 x float> %i.ad, %broadcast.splat42
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 100
  %i.ah = getelementptr i8, ptr %i.s, i64 196
  %i.ai = getelementptr i8, ptr %i.u, i64 292
  %i.aj = load float, ptr %i.af, align 4, !tbaa !99
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !99
  %i.al = load float, ptr %i.ah, align 4, !tbaa !99
  %i.am = load float, ptr %i.ai, align 4, !tbaa !99
  %i.an = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 1
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 2
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 3
  %i.ar = fmul fast <4 x float> %i.aq, %broadcast.splat44
  %i.as = fadd fast <4 x float> %i.ar, %i.ae
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.av = getelementptr i8, ptr %i.s, i64 200
  %i.aw = getelementptr i8, ptr %i.u, i64 296
  %i.ax = load float, ptr %i.at, align 4, !tbaa !99
  %i.ay = load float, ptr %i.au, align 4, !tbaa !99
  %i.az = load float, ptr %i.av, align 4, !tbaa !99
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !99
  %i.bb = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 1
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 3
  %i.bf = fmul fast <4 x float> %i.be, %broadcast.splat46
  %i.bg = fadd fast <4 x float> %i.bf, %i.as
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 108
  %i.bj = getelementptr i8, ptr %i.s, i64 204
  %i.bk = getelementptr i8, ptr %i.u, i64 300
  %i.bl = load float, ptr %i.bh, align 4, !tbaa !99
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !99
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !99
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !99
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
end_hunk_0
begin_hunk_1_@_ZN5faiss6detail14dispatch_widthILm8ELm128ELm8EZZNKS_8Panorama24progressive_filter_batchINS_4CMinIflEELNS_10MetricTypeE0EEEmPKhPKfSA_SA_mmPKNS_10IDSelectorEPKlbRSt6vectorIjSaIjEERSG_IhSaIhEERSG_IfSaIfEESP_fRNS_13PanoramaStatsEENKUlTnbvE_clILb0EEEDavEUlTnmvE_EEDamOT2_:bb.a

bb.d:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %1, align 8, !tbaa !248, !nonnull !120, !align !121
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !102
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !249, !nonnull !120, !align !121
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !102
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !250, !nonnull !120, !align !121
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !158
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !251, !nonnull !120, !align !121
  %i.am = load i64, ptr %i.al, align 8, !tbaa !98
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !252, !nonnull !120, !align !121
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !117
  tail call fastcc void @_ZN5faissL24compute_level_dot_kernelILb0ELm24EEEvPKfS2_PKjmmPfm(ptr noundef %i.ad, ptr noundef %i.ag, ptr noundef %i.aj, i64 noundef %i.am, ptr noundef %i.ap)
  br label %_ZN5faiss6detail14dispatch_widthILm16ELm128ELm8EZZNKS_8Panorama24progressive_filter_batchINS_4CMinIflEELNS_10MetricTypeE0EEEmPKhPKfSA_SA_mmPKNS_10IDSelectorEPKlbRSt6vectorIjSaIjEERSG_IhSaIhEERSG_IfSaIfEESP_fRNS_13PanoramaStatsEENKUlTnbvE_clILb0EEEDavEUlTnmvE_EEDamOT2_.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN5faiss6detail14dispatch_widthILm32ELm128ELm8EZZNKS_8Panorama24progressive_filter_batchINS_4CMinIflEELNS_10MetricTypeE0EEEmPKhPKfSA_SA_mmPKNS_10IDSelectorEPKlbRSt6vectorIjSaIjEERSG_IhSaIhEERSG_IfSaIfEESP_fRNS_13PanoramaStatsEENKUlTnbvE_clILb0EEEDavEUlTnmvE_EEDamOT2_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %_ZN5faiss6detail14dispatch_widthILm16ELm128ELm8EZZNKS_8Panorama24progressive_filter_batchINS_4CMinIflEELNS_10MetricTypeE0EEEmPKhPKfSA_SA_mmPKNS_10IDSelectorEPKlbRSt6vectorIjSaIjEERSG_IhSaIhEERSG_IfSaIfEESP_fRNS_13PanoramaStatsEENKUlTnbvE_clILb0EEEDavEUlTnmvE_EEDamOT2_.exit

_ZN5faiss6detail14dispatch_widthILm16ELm128ELm8EZZNKS_8Panorama24progressive_filter_batchINS_4CMinIflEELNS_10MetricTypeE0EEEmPKhPKfSA_SA_mmPKNS_10IDSelectorEPKlbRSt6vectorIjSaIjEERSG_IhSaIhEERSG_IfSaIfEESP_fRNS_13PanoramaStatsEENKUlTnbvE_clILb0EEEDavEUlTnmvE_EEDamOT2_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5faissL24compute_level_dot_kernelILb0ELm8EEEvPKfS2_PKjmmPfm(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef writeonly captures(none) %4) unnamed_addr #22 {
bb.a:
  %.not86 = icmp ult i64 %3, 4
  br i1 %.not86, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x float>, ptr %0, align 4, !tbaa !99 ; 2 uses
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.d = load <6 x float>, ptr %i.a, align 4, !tbaa !99 ; 6 uses
  %i.e = shufflevector <6 x float> %i.d, <6 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.f = shufflevector <6 x float> %i.d, <6 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.g = shufflevector <6 x float> %i.d, <6 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.h = shufflevector <6 x float> %i.d, <6 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.i = shufflevector <6 x float> %i.d, <6 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.j = shufflevector <6 x float> %i.d, <6 x float> poison, <4 x i32> zeroinitializer
  %i.k = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.075.lcssa = phi i64 [ 0, %bb.a ], [ %i.x, %.lr.ph ] ; 6 uses
  %i.l = icmp ult i64 %.075.lcssa, %3
  br i1 %i.l, label %.lr.ph91.preheader, label %._crit_edge

.lr.ph91.preheader:                               ; preds = %.preheader
  %i.m = load <8 x float>, ptr %0, align 4, !tbaa !99 ; 3 uses
  %.neg = or disjoint i64 %.075.lcssa, 1
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph91.prol.loopexit, label %.lr.ph91.prol

.lr.ph91.prol:                                    ; preds = %.lr.ph91.preheader
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.075.lcssa
  %i.o = load i32, ptr %i.n, align 4, !tbaa !114
  %i.p = zext i32 %i.o to i64
  %.idx.prol = shl nuw nsw i64 %i.p, 5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.prol
  %i.r = load <8 x float>, ptr %i.q, align 4, !tbaa !99
  %i.s = fmul fast <8 x float> %i.r, %i.m
  %i.t = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.s)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.075.lcssa
  store float %i.t, ptr %i.u, align 4, !tbaa !99
  %i.v = or disjoint i64 %.075.lcssa, 1
  br label %.lr.ph91.prol.loopexit

.lr.ph91.prol.loopexit:                           ; preds = %.lr.ph91.prol, %.lr.ph91.preheader
  %.190.unr = phi i64 [ %.075.lcssa, %.lr.ph91.preheader ], [ %i.v, %.lr.ph91.prol ]
  %i.w = icmp eq i64 %3, %.neg
  br i1 %i.w, label %._crit_edge, label %.lr.ph91

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.x = phi i64 [ %i.cr, %.lr.ph ], [ 4, %.lr.ph.preheader ] ; 3 uses
  %.07587 = phi i64 [ %i.x, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07587
  %i.z = load i32, ptr %i.y, align 4, !tbaa !114
  %i.aa = zext i32 %i.z to i64
  %.idx77 = shl nuw nsw i64 %i.aa, 5
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.idx77 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07587
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !114
  %i.af = zext i32 %i.ae to i64
  %.idx78 = shl nuw nsw i64 %i.af, 5
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.idx78 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07587
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !114
  %i.ak = zext i32 %i.aj to i64
  %.idx79 = shl nuw nsw i64 %i.ak, 5
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.idx79 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07587
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !114
  %i.ap = zext i32 %i.ao to i64
  %.idx80 = shl nuw nsw i64 %i.ap, 5
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.idx80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07587
  %i.aw = load <4 x float>, ptr %i.ab, align 4, !tbaa !99 ; 4 uses
  %i.ax = load <4 x float>, ptr %i.ag, align 4, !tbaa !99 ; 4 uses
  %i.ay = load <4 x float>, ptr %i.al, align 4, !tbaa !99 ; 4 uses
  %i.az = load <4 x float>, ptr %i.aq, align 4, !tbaa !99 ; 4 uses
  %i.ba = shufflevector <4 x float> %i.aw, <4 x float> %i.ax, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bd = fmul fast <4 x float> %i.bc, %i.k
  %i.be = shufflevector <4 x float> %i.aw, <4 x float> %i.ax, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bh = fmul fast <4 x float> %i.bg, %i.c
  %i.bi = fadd fast <4 x float> %i.bh, %i.bd
  %i.bj = shufflevector <4 x float> %i.aw, <4 x float> %i.ax, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.bm = fmul fast <4 x float> %i.bl, %i.j
  %i.bn = fadd fast <4 x float> %i.bm, %i.bi
  %i.bo = shufflevector <4 x float> %i.aw, <4 x float> %i.ax, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.br = fmul fast <4 x float> %i.bq, %i.i
  %i.bs = fadd fast <4 x float> %i.br, %i.bn
  %i.bt = load <4 x float>, ptr %i.ar, align 4, !tbaa !99 ; 4 uses
  %i.bu = load <4 x float>, ptr %i.as, align 4, !tbaa !99 ; 4 uses
  %i.bv = load <4 x float>, ptr %i.at, align 4, !tbaa !99 ; 4 uses
  %i.bw = load <4 x float>, ptr %i.au, align 4, !tbaa !99 ; 4 uses
  %i.bx = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ca = fmul fast <4 x float> %i.bz, %i.h
  %i.cb = fadd fast <4 x float> %i.ca, %i.bs
  %i.cc = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cf = fmul fast <4 x float> %i.ce, %i.g
  %i.cg = fadd fast <4 x float> %i.cf, %i.cb
  %i.ch = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ck = fmul fast <4 x float> %i.cj, %i.f
  %i.cl = fadd fast <4 x float> %i.ck, %i.cg
  %i.cm = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cp = fmul fast <4 x float> %i.co, %i.e
  %i.cq = fadd fast <4 x float> %i.cp, %i.cl
  store <4 x float> %i.cq, ptr %i.av, align 4, !tbaa !99
  %i.cr = add i64 %i.x, 4                         ; 2 uses
  %.not = icmp ugt i64 %i.cr, %3
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !689

.lr.ph91:                                         ; preds = %.lr.ph91.prol.loopexit, %.lr.ph91
  %.190 = phi i64 [ %i.dj, %.lr.ph91 ], [ %.190.unr, %.lr.ph91.prol.loopexit ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.190
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !114
  %i.cu = zext i32 %i.ct to i64
  %.idx = shl nuw nsw i64 %i.cu, 5
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.cw = load <8 x float>, ptr %i.cv, align 4, !tbaa !99
  %i.cx = fmul fast <8 x float> %i.cw, %i.m
  %i.cy = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cx)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.190
  store float %i.cy, ptr %i.cz, align 4, !tbaa !99
  %i.da = add nuw i64 %.190, 1                    ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !114
  %i.dd = zext i32 %i.dc to i64
  %.idx.1 = shl nuw nsw i64 %i.dd, 5
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.1
  %i.df = load <8 x float>, ptr %i.de, align 4, !tbaa !99
  %i.dg = fmul fast <8 x float> %i.df, %i.m
  %i.dh = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dg)
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.da
  store float %i.dh, ptr %i.di, align 4, !tbaa !99
  %i.dj = add nuw i64 %.190, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dj, %3
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph91, !llvm.loop !690

._crit_edge:                                      ; preds = %.lr.ph91.prol.loopexit, %.lr.ph91, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5faissL24compute_level_dot_kernelILb0ELm16EEEvPKfS2_PKjmmPfm(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef writeonly captures(none) %4) unnamed_addr #22 {
bb.a:
  %.not86 = icmp ult i64 %3, 4
  br i1 %.not86, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <2 x float>, ptr %0, align 4, !tbaa !99 ; 2 uses
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %7 = load float, ptr %i.a, align 4, !tbaa !99
  %8 = load float, ptr %5, align 4, !tbaa !99
  %9 = load float, ptr %6, align 4, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load float, ptr %i.d, align 4, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <10 x float>, ptr %i.f, align 4, !tbaa !99 ; 10 uses
  %i.h = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.i = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.j = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.k = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.l = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.m = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.n = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.o = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.p = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %10 = shufflevector <10 x float> %i.g, <10 x float> poison, <4 x i32> zeroinitializer
  %11 = insertelement <4 x float> poison, float %9, i64 0
  %i.q = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> zeroinitializer
  %12 = insertelement <4 x float> poison, float %8, i64 0
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %14 = insertelement <4 x float> poison, float %7, i64 0
  %i.r = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %i.s = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.t = insertelement <4 x float> poison, float %i.e, i64 0
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.075.lcssa = phi i64 [ 0, %bb.a ], [ %i.x, %.lr.ph ] ; 2 uses
  %i.v = icmp ult i64 %.075.lcssa, %3
  br i1 %i.v, label %.lr.ph91.preheader, label %._crit_edge

.lr.ph91.preheader:                               ; preds = %.preheader
  %i.w = load <16 x float>, ptr %0, align 4, !tbaa !99
  br label %.lr.ph91

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.x = phi i64 [ %i.fp, %.lr.ph ], [ 4, %.lr.ph.preheader ] ; 3 uses
  %.07587 = phi i64 [ %i.x, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07587
  %i.z = load i32, ptr %i.y, align 4, !tbaa !114
  %i.aa = zext i32 %i.z to i64
  %.idx77 = shl nuw nsw i64 %i.aa, 6
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.idx77 ; 6 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07587
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !114
  %i.af = zext i32 %i.ae to i64
  %.idx78 = shl nuw nsw i64 %i.af, 6
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.idx78 ; 6 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07587
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !114
  %i.ak = zext i32 %i.aj to i64
  %.idx79 = shl nuw nsw i64 %i.ak, 6
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.idx79 ; 6 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07587
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !114
  %i.ap = zext i32 %i.ao to i64
  %.idx80 = shl nuw nsw i64 %i.ap, 6
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.idx80 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !99
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.au = load float, ptr %i.at, align 4, !tbaa !99
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aw = load float, ptr %i.av, align 4, !tbaa !99
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !99
  %i.az = load <4 x float>, ptr %i.ab, align 4, !tbaa !99 ; 4 uses
  %i.ba = load <4 x float>, ptr %i.ag, align 4, !tbaa !99 ; 4 uses
  %i.bb = load <4 x float>, ptr %i.al, align 4, !tbaa !99 ; 4 uses
  %i.bc = load <4 x float>, ptr %i.aq, align 4, !tbaa !99 ; 4 uses
  %i.bd = shufflevector <4 x float> %i.az, <4 x float> %i.ba, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> %i.bb, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bg = fmul fast <4 x float> %i.bf, %i.s
  %i.bh = shufflevector <4 x float> %i.az, <4 x float> %i.ba, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> %i.bb, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bk = fmul fast <4 x float> %i.bj, %i.c
  %i.bl = fadd fast <4 x float> %i.bk, %i.bg
  %i.bm = shufflevector <4 x float> %i.az, <4 x float> %i.ba, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> %i.bb, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.bp = fmul fast <4 x float> %i.bo, %i.r
  %i.bq = fadd fast <4 x float> %i.bp, %i.bl
  %i.br = shufflevector <4 x float> %i.az, <4 x float> %i.ba, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> %i.bb, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bu = fmul fast <4 x float> %i.bt, %13
  %i.bv = fadd fast <4 x float> %i.bu, %i.bq
  %i.bw = insertelement <4 x float> poison, float %i.as, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.au, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.aw, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %i.ay, i64 3
  %i.ca = fmul fast <4 x float> %i.bz, %i.q
  %i.cb = fadd fast <4 x float> %i.ca, %i.bv
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !99
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !99
  %i.cg = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !99
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !99
  %i.ck = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.cl = insertelement <4 x float> %i.ck, float %i.cf, i64 1
  %i.cm = insertelement <4 x float> %i.cl, float %i.ch, i64 2
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 3
  %i.co = fmul fast <4 x float> %i.cn, %i.u
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.cz = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.da = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07587
  %i.dc = fadd fast <4 x float> %i.co, %i.cb
  %i.dd = load <4 x float>, ptr %i.cp, align 4, !tbaa !99 ; 4 uses
  %i.de = load <4 x float>, ptr %i.cq, align 4, !tbaa !99 ; 4 uses
  %i.df = load <4 x float>, ptr %i.cr, align 4, !tbaa !99 ; 4 uses
  %i.dg = load <4 x float>, ptr %i.cs, align 4, !tbaa !99 ; 4 uses
  %i.dh = shufflevector <4 x float> %i.dd, <4 x float> %i.de, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dk = fmul fast <4 x float> %i.dj, %10
  %i.dl = fadd fast <4 x float> %i.dk, %i.dc
  %i.dm = shufflevector <4 x float> %i.dd, <4 x float> %i.de, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dp = fmul fast <4 x float> %i.do, %i.p
  %i.dq = fadd fast <4 x float> %i.dp, %i.dl
  %i.dr = shufflevector <4 x float> %i.dd, <4 x float> %i.de, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.du = fmul fast <4 x float> %i.dt, %i.o
  %i.dv = fadd fast <4 x float> %i.du, %i.dq
  %i.dw = shufflevector <4 x float> %i.dd, <4 x float> %i.de, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> %i.df, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.dz = fmul fast <4 x float> %i.dy, %i.n
  %i.ea = fadd fast <4 x float> %i.dz, %i.dv
  %i.eb = load <4 x float>, ptr %i.ct, align 4, !tbaa !99 ; 4 uses
  %i.ec = load <4 x float>, ptr %i.cu, align 4, !tbaa !99 ; 4 uses
  %i.ed = load <4 x float>, ptr %i.cv, align 4, !tbaa !99 ; 4 uses
  %i.ee = load <4 x float>, ptr %i.cw, align 4, !tbaa !99 ; 4 uses
  %i.ef = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> %i.ed, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ei = fmul fast <4 x float> %i.eh, %i.m
  %i.ej = fadd fast <4 x float> %i.ei, %i.ea
  %i.ek = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> %i.ed, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.em = shufflevector <4 x float> %i.el, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.en = fmul fast <4 x float> %i.em, %i.l
  %i.eo = fadd fast <4 x float> %i.en, %i.ej
  %i.ep = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> %i.ed, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.es = fmul fast <4 x float> %i.er, %i.k
  %i.et = fadd fast <4 x float> %i.es, %i.eo
  %i.eu = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> %i.ed, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ex = fmul fast <4 x float> %i.ew, %i.j
  %i.ey = fadd fast <4 x float> %i.ex, %i.et
  %i.ez = load <2 x float>, ptr %i.cx, align 4, !tbaa !99 ; 2 uses
  %i.fa = load <2 x float>, ptr %i.cy, align 4, !tbaa !99 ; 2 uses
  %i.fb = load <2 x float>, ptr %i.cz, align 4, !tbaa !99
  %i.fc = load <2 x float>, ptr %i.da, align 4, !tbaa !99
  %i.fd = shufflevector <2 x float> %i.ez, <2 x float> %i.fa, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fe = shufflevector <2 x float> %i.fb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ff = shufflevector <4 x float> %i.fd, <4 x float> %i.fe, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.fg = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fh = shufflevector <4 x float> %i.ff, <4 x float> %i.fg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.fi = fmul fast <4 x float> %i.fh, %i.i
  %i.fj = fadd fast <4 x float> %i.fi, %i.ey
  %i.fk = shufflevector <2 x float> %i.ez, <2 x float> %i.fa, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> %i.fe, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> %i.fg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fn = fmul fast <4 x float> %i.fm, %i.h
  %i.fo = fadd fast <4 x float> %i.fn, %i.fj
  store <4 x float> %i.fo, ptr %i.db, align 4, !tbaa !99
  %i.fp = add i64 %i.x, 4                         ; 2 uses
  %.not = icmp ugt i64 %i.fp, %3
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !691

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %.lr.ph91
  %.190 = phi i64 [ %i.fy, %.lr.ph91 ], [ %.075.lcssa, %.lr.ph91.preheader ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.190
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !114
  %i.fs = zext i32 %i.fr to i64
  %.idx = shl nuw nsw i64 %i.fs, 6
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.fu = load <16 x float>, ptr %i.ft, align 4, !tbaa !99
  %i.fv = fmul fast <16 x float> %i.fu, %i.w
  %i.fw = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.fv)
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.190
  store float %i.fw, ptr %i.fx, align 4, !tbaa !99
  %i.fy = add nuw i64 %.190, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fy, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph91, !llvm.loop !692

._crit_edge:                                      ; preds = %.lr.ph91, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5faiss6detail14dispatch_widthILm32ELm128ELm8EZZNKS_8Panorama24progressive_filter_batchINS_4CMinIflEELNS_10MetricTypeE0EEEmPKhPKfSA_SA_mmPKNS_10IDSelectorEPKlbRSt6vectorIjSaIjEERSG_IhSaIhEERSG_IfSaIfEESP_fRNS_13PanoramaStatsEENKUlTnbvE_clILb0EEEDavEUlTnmvE_EEDamOT2_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #18 comdat {
bb.a:
  switch i64 %0, label %bb.e [
    i64 32, label %bb.b
    i64 40, label %bb.c
    i64 48, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !248, !nonnull !120, !align !121
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !249, !nonnull !120, !align !121
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !250, !nonnull !120, !align !121
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !251, !nonnull !120, !align !121
  %i.k = load i64, ptr %i.j, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !252, !nonnull !120, !align !121
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !117
  tail call fastcc void @_ZN5faissL24compute_level_dot_kernelILb0ELm32EEEvPKfS2_PKjmmPfm(ptr noundef %i.b, ptr noundef %i.e, ptr noundef %i.h, i64 noundef %i.k, ptr noundef %i.n)
  br label %_ZN5faiss6detail14dispatch_widthILm40ELm128ELm8EZZNKS_8Panorama24progressive_filter_batchINS_4CMinIflEELNS_10MetricTypeE0EEEmPKhPKfSA_SA_mmPKNS_10IDSelectorEPKlbRSt6vectorIjSaIjEERSG_IhSaIhEERSG_IfSaIfEESP_fRNS_13PanoramaStatsEENKUlTnbvE_clILb0EEEDavEUlTnmvE_EEDamOT2_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !tbaa !248, !nonnull !120, !align !121
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !249, !nonnull !120, !align !121
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !102
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !250, !nonnull !120, !align !121
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !158
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !251, !nonnull !120, !align !121
  %i.y = load i64, ptr %i.x, align 8, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !252, !nonnull !120, !align !121
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !117
  tail call fastcc void @_ZN5faissL24compute_level_dot_kernelILb0ELm40EEEvPKfS2_PKjmmPfm(ptr noundef %i.p, ptr noundef %i.s, ptr noundef %i.v, i64 noundef %i.y, ptr noundef %i.ab)
  br label %_ZN5faiss6detail14dispatch_widthILm40ELm128ELm8EZZNKS_8Panorama24progressive_filter_batchINS_4CMinIflEELNS_10MetricTypeE0EEEmPKhPKfSA_SA_mmPKNS_10IDSelectorEPKlbRSt6vectorIjSaIjEERSG_IhSaIhEERSG_IfSaIfEESP_fRNS_13PanoramaStatsEENKUlTnbvE_clILb0EEEDavEUlTnmvE_EEDamOT2_.exit

bb.d:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %1, align 8, !tbaa !248, !nonnull !120, !align !121
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !102
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !249, !nonnull !120, !align !121
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !102
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !250, !nonnull !120, !align !121
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !158
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !251, !nonnull !120, !align !121
  %i.am = load i64, ptr %i.al, align 8, !tbaa !98
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !252, !nonnull !120, !align !121
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !117
  tail call fastcc void @_ZN5faissL24compute_level_dot_kernelILb0ELm48EEEvPKfS2_PKjmmPfm(ptr noundef %i.ad, ptr noundef %i.ag, ptr noundef %i.aj, i64 noundef %i.am, ptr noundef %i.ap)
  br label %_ZN5faiss6detail14dispatch_widthILm40ELm128ELm8EZZNKS_8Panorama24progressive_filter_batchINS_4CMinIflEELNS_10MetricTypeE0EEEmPKhPKfSA_SA_mmPKNS_10IDSelectorEPKlbRSt6vectorIjSaIjEERSG_IhSaIhEERSG_IfSaIfEESP_fRNS_13PanoramaStatsEENKUlTnbvE_clILb0EEEDavEUlTnmvE_EEDamOT2_.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN5faiss6detail14dispatch_widthILm56ELm128ELm8EZZNKS_8Panorama24progressive_filter_batchINS_4CMinIflEELNS_10MetricTypeE0EEEmPKhPKfSA_SA_mmPKNS_10IDSelectorEPKlbRSt6vectorIjSaIjEERSG_IhSaIhEERSG_IfSaIfEESP_fRNS_13PanoramaStatsEENKUlTnbvE_clILb0EEEDavEUlTnmvE_EEDamOT2_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %_ZN5faiss6detail14dispatch_widthILm40ELm128ELm8EZZNKS_8Panorama24progressive_filter_batchINS_4CMinIflEELNS_10MetricTypeE0EEEmPKhPKfSA_SA_mmPKNS_10IDSelectorEPKlbRSt6vectorIjSaIjEERSG_IhSaIhEERSG_IfSaIfEESP_fRNS_13PanoramaStatsEENKUlTnbvE_clILb0EEEDavEUlTnmvE_EEDamOT2_.exit

_ZN5faiss6detail14dispatch_widthILm40ELm128ELm8EZZNKS_8Panorama24progressive_filter_batchINS_4CMinIflEELNS_10MetricTypeE0EEEmPKhPKfSA_SA_mmPKNS_10IDSelectorEPKlbRSt6vectorIjSaIjEERSG_IhSaIhEERSG_IfSaIfEESP_fRNS_13PanoramaStatsEENKUlTnbvE_clILb0EEEDavEUlTnmvE_EEDamOT2_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5faissL24compute_level_dot_kernelILb0ELm24EEEvPKfS2_PKjmmPfm(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef writeonly captures(none) %4) unnamed_addr #22 {
bb.a:
  %.not86 = icmp ult i64 %3, 4
  br i1 %.not86, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.load = load <4 x float>, ptr %0, align 4, !tbaa !99 ; 4 uses
  %wide.load12 = load <4 x float>, ptr %i.a, align 4, !tbaa !99 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.load.1 = load <4 x float>, ptr %i.b, align 4, !tbaa !99 ; 4 uses
  %wide.load12.1 = load <4 x float>, ptr %i.c, align 4, !tbaa !99 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.load.2 = load <4 x float>, ptr %i.d, align 4, !tbaa !99 ; 4 uses
  %wide.load12.2 = load <4 x float>, ptr %i.e, align 4, !tbaa !99 ; 4 uses
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.075.lcssa = phi i64 [ 0, %bb.a ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.f = icmp ult i64 %.075.lcssa, %3
  br i1 %i.f, label %.lr.ph91.preheader, label %._crit_edge

.lr.ph91.preheader:                               ; preds = %.preheader
  %i.g = load <24 x float>, ptr %0, align 4, !tbaa !99
  br label %.lr.ph91

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.h = phi i64 [ %i.cr, %.lr.ph ], [ 4, %.lr.ph.preheader ] ; 3 uses
  %.07587 = phi i64 [ %i.h, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.i = or disjoint i64 %.07587, 3               ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !114
  %i.l = zext i32 %i.k to i64
  %.idx80 = mul nuw nsw i64 %i.l, 96
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx80 ; 6 uses
  %i.n = or disjoint i64 %.07587, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !114
  %i.q = zext i32 %i.p to i64
  %.idx79 = mul nuw nsw i64 %i.q, 96
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.idx79 ; 6 uses
  %i.s = or disjoint i64 %.07587, 1               ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !114
  %i.v = zext i32 %i.u to i64
end_hunk_1
