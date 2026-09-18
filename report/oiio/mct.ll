Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/mct?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@opj_mct_encode_real:bb.a
  %exitcond106.not = icmp eq i64 %i.as, 1
  br i1 %exitcond106.not, label %._crit_edge102, label %.lr.ph101.1

.lr.ph101.1:                                      ; preds = %.lr.ph101
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !14 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.090.lcssa, i64 4 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !14 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.091.lcssa, i64 4 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.bl = fmul float %i.bi, 5.870000e-01
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bg, float 2.990000e-01, float %i.bl)
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bk, float 1.140000e-01, float %i.bm)
  %i.bo = fmul float %i.bi, -3.312600e-01
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bg, float -1.687500e-01, float %i.bo)
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bk, float 5.000000e-01, float %i.bp)
  %i.br = fmul float %i.bi, -4.186900e-01
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bg, float 5.000000e-01, float %i.br)
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bk, float f0xBDA685DB, float %i.bs)
  store float %i.bn, ptr %i.bf, align 4, !tbaa !14
  store float %i.bq, ptr %i.bh, align 4, !tbaa !14
  store float %i.bt, ptr %i.bj, align 4, !tbaa !14
  %exitcond106.not.1 = icmp eq i64 %i.as, 2
  br i1 %exitcond106.not.1, label %._crit_edge102, label %.lr.ph101.2

.lr.ph101.2:                                      ; preds = %.lr.ph101.1
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !14 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.090.lcssa, i64 8 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !14 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.091.lcssa, i64 8 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !14 ; 3 uses
  %i.ca = fmul float %i.bx, 5.870000e-01
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bv, float 2.990000e-01, float %i.ca)
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bz, float 1.140000e-01, float %i.cb)
  %i.cd = fmul float %i.bx, -3.312600e-01
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bv, float -1.687500e-01, float %i.cd)
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.bz, float 5.000000e-01, float %i.ce)
  %i.cg = fmul float %i.bx, -4.186900e-01
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.bv, float 5.000000e-01, float %i.cg)
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bz, float f0xBDA685DB, float %i.ch)
  store float %i.cc, ptr %i.bu, align 4, !tbaa !14
  store float %i.cf, ptr %i.bw, align 4, !tbaa !14
  store float %i.ci, ptr %i.by, align 4, !tbaa !14
  %exitcond106.not.2 = icmp eq i64 %i.as, 3
  br i1 %exitcond106.not.2, label %._crit_edge102, label %.lr.ph101.3

.lr.ph101.3:                                      ; preds = %.lr.ph101.2
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 12 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !14 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.090.lcssa, i64 12 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !14 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.091.lcssa, i64 12 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !14 ; 3 uses
  %i.cp = fmul float %i.cm, 5.870000e-01
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.ck, float 2.990000e-01, float %i.cp)
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.co, float 1.140000e-01, float %i.cq)
  %i.cs = fmul float %i.cm, -3.312600e-01
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.ck, float -1.687500e-01, float %i.cs)
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.co, float 5.000000e-01, float %i.ct)
  %i.cv = fmul float %i.cm, -4.186900e-01
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.ck, float 5.000000e-01, float %i.cv)
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.co, float f0xBDA685DB, float %i.cw)
  store float %i.cr, ptr %i.cj, align 4, !tbaa !14
  store float %i.cu, ptr %i.cl, align 4, !tbaa !14
  store float %i.cx, ptr %i.cn, align 4, !tbaa !14
  %exitcond106.not.3 = icmp eq i64 %i.as, 4
  br i1 %exitcond106.not.3, label %._crit_edge102, label %.lr.ph101.4

.lr.ph101.4:                                      ; preds = %.lr.ph101.3
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !14 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.090.lcssa, i64 16 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !14 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.091.lcssa, i64 16 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !14 ; 3 uses
  %i.de = fmul float %i.db, 5.870000e-01
  %i.df = tail call float @llvm.fmuladd.f32(float %i.cz, float 2.990000e-01, float %i.de)
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.dd, float 1.140000e-01, float %i.df)
  %i.dh = fmul float %i.db, -3.312600e-01
  %i.di = tail call float @llvm.fmuladd.f32(float %i.cz, float -1.687500e-01, float %i.dh)
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.dd, float 5.000000e-01, float %i.di)
  %i.dk = fmul float %i.db, -4.186900e-01
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.cz, float 5.000000e-01, float %i.dk)
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dd, float f0xBDA685DB, float %i.dl)
  store float %i.dg, ptr %i.cy, align 4, !tbaa !14
  store float %i.dj, ptr %i.da, align 4, !tbaa !14
  store float %i.dm, ptr %i.dc, align 4, !tbaa !14
  %exitcond106.not.4 = icmp eq i64 %i.as, 5
  br i1 %exitcond106.not.4, label %._crit_edge102, label %.lr.ph101.5

.lr.ph101.5:                                      ; preds = %.lr.ph101.4
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 20 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !14 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.090.lcssa, i64 20 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !14 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.091.lcssa, i64 20 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !14 ; 3 uses
  %i.dt = fmul float %i.dq, 5.870000e-01
  %i.du = tail call float @llvm.fmuladd.f32(float %i.do, float 2.990000e-01, float %i.dt)
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.ds, float 1.140000e-01, float %i.du)
  %i.dw = fmul float %i.dq, -3.312600e-01
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.do, float -1.687500e-01, float %i.dw)
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.ds, float 5.000000e-01, float %i.dx)
  %i.dz = fmul float %i.dq, -4.186900e-01
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.do, float 5.000000e-01, float %i.dz)
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ds, float f0xBDA685DB, float %i.ea)
  store float %i.dv, ptr %i.dn, align 4, !tbaa !14
  store float %i.dy, ptr %i.dp, align 4, !tbaa !14
  store float %i.eb, ptr %i.dr, align 4, !tbaa !14
  %exitcond106.not.5 = icmp eq i64 %i.as, 6
  br i1 %exitcond106.not.5, label %._crit_edge102, label %.lr.ph101.6

.lr.ph101.6:                                      ; preds = %.lr.ph101.5
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24 ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !14 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.090.lcssa, i64 24 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !14 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.091.lcssa, i64 24 ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !14 ; 3 uses
  %i.ei = fmul float %i.ef, 5.870000e-01
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ed, float 2.990000e-01, float %i.ei)
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.eh, float 1.140000e-01, float %i.ej)
  %i.el = fmul float %i.ef, -3.312600e-01
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ed, float -1.687500e-01, float %i.el)
  %i.en = tail call float @llvm.fmuladd.f32(float %i.eh, float 5.000000e-01, float %i.em)
  %i.eo = fmul float %i.ef, -4.186900e-01
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.ed, float 5.000000e-01, float %i.eo)
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.eh, float f0xBDA685DB, float %i.ep)
  store float %i.ek, ptr %i.ec, align 4, !tbaa !14
  store float %i.en, ptr %i.ee, align 4, !tbaa !14
  store float %i.eq, ptr %i.eg, align 4, !tbaa !14
  br label %._crit_edge102

._crit_edge102:                                   ; preds = %.lr.ph101, %.lr.ph101.1, %.lr.ph101.2, %.lr.ph101.3, %.lr.ph101.4, %.lr.ph101.5, %.lr.ph101.6, %._crit_edge
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @opj_mct_decode_real(ptr noalias nofree noundef captures(none) %0, ptr noalias nofree noundef captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i64 %3, 3                           ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.080 = phi ptr [ %i.aa, %.lr.ph ], [ %0, %bb.a ] ; 4 uses
  %.07479 = phi ptr [ %i.ab, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %.07578 = phi ptr [ %i.ac, %.lr.ph ], [ %2, %bb.a ] ; 4 uses
  %.07677 = phi i64 [ %i.ad, %.lr.ph ], [ 0, %bb.a ]
  %i.b = load <4 x float>, ptr %.080, align 16, !tbaa !10 ; 3 uses
  %i.c = load <4 x float>, ptr %.07479, align 16, !tbaa !10 ; 2 uses
  %i.d = load <4 x float>, ptr %.07578, align 16, !tbaa !10 ; 2 uses
  %i.e = fmul <4 x float> %i.d, splat (float 1.402000e+00)
  %i.f = fadd <4 x float> %i.b, %i.e
  %i.g = fmul <4 x float> %i.c, splat (float 3.441300e-01)
  %i.h = fsub <4 x float> %i.b, %i.g
  %i.i = fmul <4 x float> %i.d, splat (float f0x3F36D1E1)
  %i.j = fsub <4 x float> %i.h, %i.i
  %i.k = fmul <4 x float> %i.c, splat (float 1.772000e+00)
  %i.l = fadd <4 x float> %i.b, %i.k
  store <4 x float> %i.f, ptr %.080, align 16, !tbaa !10
  store <4 x float> %i.j, ptr %.07479, align 16, !tbaa !10
  store <4 x float> %i.l, ptr %.07578, align 16, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %.080, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07479, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.07578, i64 16 ; 2 uses
  %i.p = load <4 x float>, ptr %i.m, align 16, !tbaa !10 ; 3 uses
  %i.q = load <4 x float>, ptr %i.n, align 16, !tbaa !10 ; 2 uses
  %i.r = load <4 x float>, ptr %i.o, align 16, !tbaa !10 ; 2 uses
  %i.s = fmul <4 x float> %i.r, splat (float 1.402000e+00)
  %i.t = fadd <4 x float> %i.p, %i.s
  %i.u = fmul <4 x float> %i.q, splat (float 3.441300e-01)
  %i.v = fsub <4 x float> %i.p, %i.u
  %i.w = fmul <4 x float> %i.r, splat (float f0x3F36D1E1)
  %i.x = fsub <4 x float> %i.v, %i.w
  %i.y = fmul <4 x float> %i.q, splat (float 1.772000e+00)
  %i.z = fadd <4 x float> %i.p, %i.y
  store <4 x float> %i.t, ptr %i.m, align 16, !tbaa !10
  store <4 x float> %i.x, ptr %i.n, align 16, !tbaa !10
  store <4 x float> %i.z, ptr %i.o, align 16, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %.080, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.07479, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.07578, i64 32 ; 2 uses
  %i.ad = add nuw nsw i64 %.07677, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.075.lcssa = phi ptr [ %2, %bb.a ], [ %i.ac, %.lr.ph ] ; 8 uses
  %.074.lcssa = phi ptr [ %1, %bb.a ], [ %i.ab, %.lr.ph ] ; 8 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.aa, %.lr.ph ] ; 8 uses
  %i.ae = and i64 %3, 7                           ; 7 uses
  %.not87 = icmp eq i64 %i.ae, 0
  br i1 %.not87, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %._crit_edge
  %i.af = load float, ptr %.074.lcssa, align 4, !tbaa !14 ; 2 uses
  %i.ag = load float, ptr %.075.lcssa, align 4, !tbaa !14 ; 2 uses
  %4 = fneg float %i.af
  %5 = fneg float %i.ag
  %i.ah = load float, ptr %.0.lcssa, align 4, !tbaa !14 ; 3 uses
  %6 = tail call float @llvm.fmuladd.f32(float %i.ag, float 1.402000e+00, float %i.ah)
  %i.ai = tail call float @llvm.fmuladd.f32(float %4, float 3.441300e-01, float %i.ah)
  %7 = insertelement <2 x float> poison, float %5, i64 0
  %8 = insertelement <2 x float> %7, float %i.af, i64 1
  %9 = insertelement <2 x float> poison, float %i.ai, i64 0
  %10 = insertelement <2 x float> %9, float %i.ah, i64 1
  %11 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %10) ; 2 uses
  store float %6, ptr %.0.lcssa, align 4, !tbaa !14
  %12 = extractelement <2 x float> %11, i64 0
  store float %12, ptr %.074.lcssa, align 4, !tbaa !14
  %13 = extractelement <2 x float> %11, i64 1
  store float %13, ptr %.075.lcssa, align 4, !tbaa !14
  %exitcond90.not = icmp eq i64 %i.ae, 1
  br i1 %exitcond90.not, label %._crit_edge86, label %.lr.ph85.1

.lr.ph85.1:                                       ; preds = %.lr.ph85
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 4 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !14 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 4 ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !14 ; 2 uses
  %14 = fneg float %i.al
  %i.ao = fneg float %i.an
  %15 = load float, ptr %i.aj, align 4, !tbaa !14 ; 3 uses
  %16 = tail call float @llvm.fmuladd.f32(float %i.an, float 1.402000e+00, float %15)
  %i.ap = tail call float @llvm.fmuladd.f32(float %14, float 3.441300e-01, float %15)
  %17 = insertelement <2 x float> poison, float %i.ao, i64 0
  %18 = insertelement <2 x float> %17, float %i.al, i64 1
  %19 = insertelement <2 x float> poison, float %i.ap, i64 0
  %20 = insertelement <2 x float> %19, float %15, i64 1
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %20) ; 2 uses
  store float %16, ptr %i.aj, align 4, !tbaa !14
  %22 = extractelement <2 x float> %21, i64 0
  store float %22, ptr %i.ak, align 4, !tbaa !14
  %23 = extractelement <2 x float> %21, i64 1
  store float %23, ptr %i.am, align 4, !tbaa !14
  %exitcond90.not.1 = icmp eq i64 %i.ae, 2
  br i1 %exitcond90.not.1, label %._crit_edge86, label %.lr.ph85.2

.lr.ph85.2:                                       ; preds = %.lr.ph85.1
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 8 ; 2 uses
  %i.as = load float, ptr %i.ar, align 4, !tbaa !14 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 8 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !14 ; 2 uses
  %24 = fneg float %i.as
  %i.av = fneg float %i.au
  %25 = load float, ptr %i.aq, align 4, !tbaa !14 ; 3 uses
  %26 = tail call float @llvm.fmuladd.f32(float %i.au, float 1.402000e+00, float %25)
  %i.aw = tail call float @llvm.fmuladd.f32(float %24, float 3.441300e-01, float %25)
  %27 = insertelement <2 x float> poison, float %i.av, i64 0
  %28 = insertelement <2 x float> %27, float %i.as, i64 1
  %29 = insertelement <2 x float> poison, float %i.aw, i64 0
  %30 = insertelement <2 x float> %29, float %25, i64 1
  %31 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %30) ; 2 uses
  store float %26, ptr %i.aq, align 4, !tbaa !14
  %32 = extractelement <2 x float> %31, i64 0
  store float %32, ptr %i.ar, align 4, !tbaa !14
  %33 = extractelement <2 x float> %31, i64 1
  store float %33, ptr %i.at, align 4, !tbaa !14
  %exitcond90.not.2 = icmp eq i64 %i.ae, 3
  br i1 %exitcond90.not.2, label %._crit_edge86, label %.lr.ph85.3

.lr.ph85.3:                                       ; preds = %.lr.ph85.2
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 12 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 12 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !14 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 12 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !14 ; 2 uses
  %34 = fneg float %i.az
  %i.bc = fneg float %i.bb
  %35 = load float, ptr %i.ax, align 4, !tbaa !14 ; 3 uses
  %36 = tail call float @llvm.fmuladd.f32(float %i.bb, float 1.402000e+00, float %35)
  %i.bd = tail call float @llvm.fmuladd.f32(float %34, float 3.441300e-01, float %35)
  %37 = insertelement <2 x float> poison, float %i.bc, i64 0
  %38 = insertelement <2 x float> %37, float %i.az, i64 1
  %39 = insertelement <2 x float> poison, float %i.bd, i64 0
  %40 = insertelement <2 x float> %39, float %35, i64 1
  %41 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %40) ; 2 uses
  store float %36, ptr %i.ax, align 4, !tbaa !14
  %42 = extractelement <2 x float> %41, i64 0
  store float %42, ptr %i.ay, align 4, !tbaa !14
  %43 = extractelement <2 x float> %41, i64 1
  store float %43, ptr %i.ba, align 4, !tbaa !14
  %exitcond90.not.3 = icmp eq i64 %i.ae, 4
  br i1 %exitcond90.not.3, label %._crit_edge86, label %.lr.ph85.4

.lr.ph85.4:                                       ; preds = %.lr.ph85.3
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 16 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !14 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 16 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !14 ; 2 uses
  %44 = fneg float %i.bg
  %i.bj = fneg float %i.bi
  %45 = load float, ptr %i.be, align 4, !tbaa !14 ; 3 uses
  %46 = tail call float @llvm.fmuladd.f32(float %i.bi, float 1.402000e+00, float %45)
  %i.bk = tail call float @llvm.fmuladd.f32(float %44, float 3.441300e-01, float %45)
  %47 = insertelement <2 x float> poison, float %i.bj, i64 0
  %48 = insertelement <2 x float> %47, float %i.bg, i64 1
  %49 = insertelement <2 x float> poison, float %i.bk, i64 0
  %50 = insertelement <2 x float> %49, float %45, i64 1
  %51 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %50) ; 2 uses
  store float %46, ptr %i.be, align 4, !tbaa !14
  %52 = extractelement <2 x float> %51, i64 0
  store float %52, ptr %i.bf, align 4, !tbaa !14
  %53 = extractelement <2 x float> %51, i64 1
  store float %53, ptr %i.bh, align 4, !tbaa !14
  %exitcond90.not.4 = icmp eq i64 %i.ae, 5
  br i1 %exitcond90.not.4, label %._crit_edge86, label %.lr.ph85.5

.lr.ph85.5:                                       ; preds = %.lr.ph85.4
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 20 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 20 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !14 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 20 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !14 ; 2 uses
  %54 = fneg float %i.bn
  %i.bq = fneg float %i.bp
  %55 = load float, ptr %i.bl, align 4, !tbaa !14 ; 3 uses
  %56 = tail call float @llvm.fmuladd.f32(float %i.bp, float 1.402000e+00, float %55)
  %i.br = tail call float @llvm.fmuladd.f32(float %54, float 3.441300e-01, float %55)
  %57 = insertelement <2 x float> poison, float %i.bq, i64 0
  %58 = insertelement <2 x float> %57, float %i.bn, i64 1
  %59 = insertelement <2 x float> poison, float %i.br, i64 0
  %60 = insertelement <2 x float> %59, float %55, i64 1
  %61 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %58, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %60) ; 2 uses
  store float %56, ptr %i.bl, align 4, !tbaa !14
  %62 = extractelement <2 x float> %61, i64 0
  store float %62, ptr %i.bm, align 4, !tbaa !14
  %63 = extractelement <2 x float> %61, i64 1
  store float %63, ptr %i.bo, align 4, !tbaa !14
  %exitcond90.not.5 = icmp eq i64 %i.ae, 6
  br i1 %exitcond90.not.5, label %._crit_edge86, label %.lr.ph85.6

.lr.ph85.6:                                       ; preds = %.lr.ph85.5
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 24 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !14 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 24 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !14 ; 2 uses
  %64 = fneg float %i.bu
  %i.bx = fneg float %i.bw
  %65 = load float, ptr %i.bs, align 4, !tbaa !14 ; 3 uses
  %66 = tail call float @llvm.fmuladd.f32(float %i.bw, float 1.402000e+00, float %65)
  %i.by = tail call float @llvm.fmuladd.f32(float %64, float 3.441300e-01, float %65)
  %67 = insertelement <2 x float> poison, float %i.bx, i64 0
  %68 = insertelement <2 x float> %67, float %i.bu, i64 1
  %69 = insertelement <2 x float> poison, float %i.by, i64 0
  %70 = insertelement <2 x float> %69, float %65, i64 1
  %71 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %68, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %70) ; 2 uses
  store float %66, ptr %i.bs, align 4, !tbaa !14
  %72 = extractelement <2 x float> %71, i64 0
  store float %72, ptr %i.bt, align 4, !tbaa !14
  %73 = extractelement <2 x float> %71, i64 1
  store float %73, ptr %i.bv, align 4, !tbaa !14
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %.lr.ph85, %.lr.ph85.1, %.lr.ph85.2, %.lr.ph85.3, %.lr.ph85.4, %.lr.ph85.5, %.lr.ph85.6, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define double @opj_mct_getnorm_real(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @opj_mct_norms_real, i64 %i.a
  %i.c = load double, ptr %i.b, align 8, !tbaa !12
  ret double %i.c
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @opj_mct_encode_custom(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = mul i32 %3, %3                           ; 4 uses
  %i.b = add i32 %i.a, %3
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = tail call ptr @opj_malloc(i64 noundef %i.d) #8 ; 13 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %3 to i64                       ; 10 uses
  %i.g = getelementptr [4 x i8], ptr %i.e, i64 %i.f ; 4 uses
  %i.h = zext i32 %i.a to i64                     ; 3 uses
  %.not66 = icmp eq i32 %i.a, 0
  br i1 %.not66, label %.preheader54, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %min.iters.check = icmp ult i32 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.h, 4294967288               ; 4 uses
  %i.i = shl nuw nsw i64 %n.vec, 2
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.k  ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !14
  %wide.load83 = load <4 x float>, ptr %i.l, align 4, !tbaa !14
  %i.m = fmul <4 x float> %wide.load, splat (float 8.192000e+03)
  %i.n = fmul <4 x float> %wide.load83, splat (float 8.192000e+03)
  %i.o = fptosi <4 x float> %i.m to <4 x i32>
  %i.p = fptosi <4 x float> %i.n to <4 x i32>
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %i.o, ptr %i.q, align 4, !tbaa !6
  store <4 x i32> %i.p, ptr %i.r, align 4, !tbaa !6
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %.preheader54, label %.lr.ph.preheader109

.lr.ph.preheader109:                              ; preds = %.lr.ph.preheader, %middle.block
  %.04756.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.04955.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph

.preheader54:                                     ; preds = %.lr.ph, %middle.block, %bb.b
  %i.t = icmp ne i64 %1, 0
  %i.u = icmp ne i32 %3, 0
  %or.cond = and i1 %i.t, %i.u
  br i1 %or.cond, label %.preheader53.us.us.preheader, label %._crit_edge65

.preheader53.us.us.preheader:                     ; preds = %.preheader54
  %i.v = shl nuw nsw i64 %i.f, 2
  %xtraiter = and i64 %i.f, 3                     ; 3 uses
  %i.w = icmp ult i32 %3, 4
  %unroll_iter = and i64 %i.f, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod110 = icmp ne i64 %xtraiter, 0
  %min.iters.check90 = icmp ult i32 %3, 8
  %n.vec92 = and i64 %i.f, 4294967288             ; 4 uses
  %i.x = shl nuw nsw i64 %n.vec92, 2
  %cmp.n103 = icmp eq i64 %n.vec92, %i.f
  %xtraiter111 = and i64 %i.f, 1
  %lcmp.mod112.not = icmp eq i64 %xtraiter111, 0
  %i.y = add nsw i64 %i.f, -1
  br label %.preheader53.us.us

.preheader53.us.us:                               ; preds = %.preheader53.us.us.preheader, %._crit_edge.us.us
  %.14864.us.us = phi i64 [ %i.db, %._crit_edge.us.us ], [ 0, %.preheader53.us.us.preheader ]
  br i1 %i.w, label %.epil.preheader, label %.preheader53.us.us.new

.preheader53.us.us.new:                           ; preds = %.preheader53.us.us, %.preheader53.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader53.us.us.new ], [ 0, %.preheader53.us.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader53.us.us.new ], [ 0, %.preheader53.us.us ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !6
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !6
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !6
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !6
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !6
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.1
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !6
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.an = load i32, ptr %i.am, align 4, !tbaa !6
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.2
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !6
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %.preheader53.us.us.new, !llvm.loop !26

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %.preheader53.us.us.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.preheader53.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader53.us.us ], [ %indvars.iv.next.3, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod110)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.c ], [ %indvars.iv.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !6
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.epil
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !6
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us.us.preheader, label %bb.c, !llvm.loop !27

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.c, %..preheader_crit_edge.us.us.preheader.unr-lcssa
  br label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %.loopexit
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %.loopexit ], [ 0, %..preheader_crit_edge.us.us.preheader ] ; 2 uses
  %.062.us.us = phi ptr [ %.lcssa, %.loopexit ], [ %i.g, %..preheader_crit_edge.us.us.preheader ] ; 6 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv74 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38 ; 9 uses
  store i32 0, ptr %i.au, align 4, !tbaa !6
  br i1 %min.iters.check90, label %scalar.ph89.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %..preheader_crit_edge.us.us
  %scevgep = getelementptr i8, ptr %i.au, i64 4   ; 2 uses
  %scevgep85 = getelementptr i8, ptr %.062.us.us, i64 %i.v
  %bound0 = icmp ult ptr %i.au, %i.g
  %bound1 = icmp ult ptr %i.e, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound086 = icmp ult ptr %i.au, %scevgep85
  %bound187 = icmp ult ptr %.062.us.us, %scevgep
  %found.conflict88 = and i1 %bound086, %bound187
  %conflict.rdx = or i1 %found.conflict, %found.conflict88
  br i1 %conflict.rdx, label %scalar.ph89.preheader, label %vector.ph91

vector.ph91:                                      ; preds = %vector.memcheck
  %i.av = getelementptr i8, ptr %.062.us.us, i64 %i.x ; 2 uses
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph91
  %index94 = phi i64 [ 0, %vector.ph91 ], [ %index.next101, %vector.body93 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph91 ], [ %i.bm, %vector.body93 ]
  %vec.phi95 = phi <4 x i32> [ zeroinitializer, %vector.ph91 ], [ %i.bn, %vector.body93 ]
  %i.aw = shl i64 %index94, 2
  %next.gep96 = getelementptr i8, ptr %.062.us.us, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep96, i64 16
  %wide.load97 = load <4 x i32>, ptr %next.gep96, align 4, !tbaa !6, !alias.scope !39
  %wide.load98 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !6, !alias.scope !39
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index94 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load99 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !6, !alias.scope !40
  %wide.load100 = load <4 x i32>, ptr %i.az, align 4, !tbaa !6, !alias.scope !40
  %i.ba = sext <4 x i32> %wide.load97 to <4 x i64>
  %i.bb = sext <4 x i32> %wide.load98 to <4 x i64>
  %i.bc = sext <4 x i32> %wide.load99 to <4 x i64>
  %i.bd = sext <4 x i32> %wide.load100 to <4 x i64>
  %i.be = mul nsw <4 x i64> %i.bc, %i.ba
  %i.bf = mul nsw <4 x i64> %i.bd, %i.bb
  %i.bg = add nsw <4 x i64> %i.be, splat (i64 4096)
  %i.bh = add nsw <4 x i64> %i.bf, splat (i64 4096)
  %i.bi = lshr <4 x i64> %i.bg, splat (i64 13)
  %i.bj = lshr <4 x i64> %i.bh, splat (i64 13)
  %i.bk = trunc <4 x i64> %i.bi to <4 x i32>
end_hunk_0
begin_hunk_1_@opj_mct_decode_custom:bb.a
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49
  %i.y = load float, ptr %i.x, align 4, !tbaa !14
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.2
  store float %i.y, ptr %i.z, align 4, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us.us.preheader.unr-lcssa, label %.preheader41.us.us.new, !llvm.loop !43

..preheader_crit_edge.us.us.preheader.unr-lcssa:  ; preds = %.preheader41.us.us.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.us.preheader.unr-lcssa, %.preheader41.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader41.us.us ], [ %indvars.iv.next.3, %..preheader_crit_edge.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.c ], [ %indvars.iv.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !49
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !14
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.epil
  store float %i.ac, ptr %i.ad, align 4, !tbaa !14
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us.us.preheader, label %bb.c, !llvm.loop !44

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.c, %..preheader_crit_edge.us.us.preheader.unr-lcssa
  br label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %bb.d
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %bb.d ], [ 0, %..preheader_crit_edge.us.us.preheader ] ; 3 uses
  %.03645.us.us = phi ptr [ %.lcssa67, %bb.d ], [ %0, %..preheader_crit_edge.us.us.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv56 ; 4 uses
  store float 0.000000e+00, ptr %i.ae, align 4, !tbaa !14
  br i1 %i.j, label %.epil.preheader69, label %..preheader_crit_edge.us.us.new

..preheader_crit_edge.us.us.new:                  ; preds = %..preheader_crit_edge.us.us, %..preheader_crit_edge.us.us.new
  %indvars.iv51 = phi i64 [ %indvars.iv.next52.1, %..preheader_crit_edge.us.us.new ], [ 0, %..preheader_crit_edge.us.us ] ; 3 uses
  %.13743.us.us = phi ptr [ %i.al, %..preheader_crit_edge.us.us.new ], [ %.03645.us.us, %..preheader_crit_edge.us.us ] ; 3 uses
  %i.af = phi float [ %i.aq, %..preheader_crit_edge.us.us.new ], [ 0.000000e+00, %..preheader_crit_edge.us.us ]
  %niter77 = phi i64 [ %niter77.next.1, %..preheader_crit_edge.us.us.new ], [ 0, %..preheader_crit_edge.us.us ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.13743.us.us, i64 4
  %i.ah = load float, ptr %.13743.us.us, align 4, !tbaa !14
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv51
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !14
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.aj, float %i.af) ; 2 uses
  store float %i.ak, ptr %i.ae, align 4, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %.13743.us.us, i64 8 ; 3 uses
  %i.am = load float, ptr %i.ag, align 4, !tbaa !14
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !14
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ap, float %i.ak) ; 4 uses
  store float %i.aq, ptr %i.ae, align 4, !tbaa !14
  %indvars.iv.next52.1 = add nuw nsw i64 %indvars.iv51, 2 ; 2 uses
  %niter77.next.1 = add i64 %niter77, 2           ; 2 uses
  %niter77.ncmp.1 = icmp eq i64 %niter77.next.1, %unroll_iter76
  br i1 %niter77.ncmp.1, label %.unr-lcssa, label %..preheader_crit_edge.us.us.new, !llvm.loop !45

.unr-lcssa:                                       ; preds = %..preheader_crit_edge.us.us.new
  br i1 %lcmp.mod72.not, label %bb.d, label %.epil.preheader69

.epil.preheader69:                                ; preds = %.unr-lcssa, %..preheader_crit_edge.us.us
  %indvars.iv51.epil.init = phi i64 [ 0, %..preheader_crit_edge.us.us ], [ %indvars.iv.next52.1, %.unr-lcssa ]
  %.13743.us.us.epil.init = phi ptr [ %.03645.us.us, %..preheader_crit_edge.us.us ], [ %i.al, %.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ 0.000000e+00, %..preheader_crit_edge.us.us ], [ %i.aq, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod75)
  %i.ar = getelementptr inbounds nuw i8, ptr %.13743.us.us.epil.init, i64 4
  %i.as = load float, ptr %.13743.us.us.epil.init, align 4, !tbaa !14
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv51.epil.init
  %i.au = load float, ptr %i.at, align 4, !tbaa !14
  %i.av = tail call float @llvm.fmuladd.f32(float %i.as, float %i.au, float %.epil.init) ; 2 uses
  store float %i.av, ptr %i.ae, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %.unr-lcssa, %.epil.preheader69
  %.lcssa67 = phi ptr [ %i.al, %.unr-lcssa ], [ %i.ar, %.epil.preheader69 ]
  %.lcssa = phi float [ %i.aq, %.unr-lcssa ], [ %i.av, %.epil.preheader69 ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv56 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !49 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !49
  store float %.lcssa, ptr %i.ax, align 4, !tbaa !14
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %i.e
  br i1 %exitcond60.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us, !llvm.loop !46

._crit_edge.us.us:                                ; preds = %bb.d
  %i.az = add nuw i64 %.03548.us.us, 1            ; 2 uses
  %exitcond61.not = icmp eq i64 %i.az, %1
  br i1 %exitcond61.not, label %._crit_edge49, label %.preheader41.us.us, !llvm.loop !47

._crit_edge49:                                    ; preds = %._crit_edge.us.us, %bb.b
  tail call void @opj_free(ptr noundef nonnull %i.d) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge49
  %.038 = phi i32 [ 1, %._crit_edge49 ], [ 0, %bb.a ]
  ret i32 %.038
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define void @opj_calculate_norms(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  %xtraiter = and i32 %1, 3                       ; 3 uses
  %i.a = icmp ult i32 %1, 4
  %unroll_iter = and i32 %1, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod31 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.epilog-lcssa
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.epilog-lcssa ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  br i1 %i.a, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.026 = phi i32 [ %i.z, %.lr.ph.new ], [ %i.c, %.lr.ph ] ; 2 uses
  %i.d = phi double [ %i.ab, %.lr.ph.new ], [ 0.000000e+00, %.lr.ph ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.e = zext i32 %.026 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !14
  %i.h = add i32 %.026, %1                        ; 2 uses
  %i.i = fpext float %i.g to double               ; 2 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.d)
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !14
  %i.n = add i32 %i.h, %1                         ; 2 uses
  %i.o = fpext float %i.m to double               ; 2 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.o, double %i.j)
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !14
  %i.t = add i32 %i.n, %1                         ; 2 uses
  %i.u = fpext float %i.s to double               ; 2 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.p)
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !14
  %i.z = add i32 %i.t, %1                         ; 2 uses
  %i.aa = fpext float %i.y to double              ; 2 uses
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.v) ; 3 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.lr.ph.new, !llvm.loop !50

.unr-lcssa:                                       ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph
  %.026.epil.init = phi i32 [ %i.c, %.lr.ph ], [ %i.z, %.unr-lcssa ]
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ab, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.026.epil = phi i32 [ %.026.epil.init, %.epil.preheader ], [ %i.ag, %bb.b ] ; 2 uses
  %i.ac = phi double [ %.epil.init, %.epil.preheader ], [ %i.ai, %bb.b ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ad = zext i32 %.026.epil to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !14
  %i.ag = add i32 %.026.epil, %1
  %i.ah = fpext float %i.af to double             ; 2 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double %i.ac) ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.b, !llvm.loop !51

.epilog-lcssa:                                    ; preds = %bb.b, %.unr-lcssa
  %.lcssa = phi double [ %i.ab, %.unr-lcssa ], [ %i.ai, %bb.b ]
  %i.aj = tail call double @sqrt(double noundef %.lcssa) #8, !tbaa !6
  store double %i.aj, ptr %i.b, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond29.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond29.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %.epilog-lcssa, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = !{!4, !4, i64 0}
!11 = !{!"double", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"float", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !7, !8, !9}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7, !9, !8}
!20 = distinct !{!20, !7, !8, !9}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7, !9, !8}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7, !8, !9}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !"LVerDomain"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !7, !8, !9}
!32 = distinct !{!32, !28}
!33 = distinct !{!33, !7, !8}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7, !9, !8}
!37 = !{!"p1 int", !15, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!29}
!40 = !{!30}
!41 = !{!32}
!42 = !{!30, !29}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = !{!"p1 float", !15, i64 0}
!49 = !{!48, !48, i64 0}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !16}
!52 = distinct !{!52, !7}
end_hunk_1
