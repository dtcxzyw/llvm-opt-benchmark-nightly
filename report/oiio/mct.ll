Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/mct?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@opj_mct_encode_real:bb.a
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
  %i.ah = fneg float %i.af
  %i.ai = fneg float %i.ag
  %i.aj = load float, ptr %.0.lcssa, align 4, !tbaa !14 ; 2 uses
  %4 = insertelement <2 x float> poison, float %i.ag, i64 0
  %5 = insertelement <2 x float> %4, float %i.ah, i64 1
  %i.ak = insertelement <2 x float> poison, float %i.aj, i64 0
  %6 = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> <float 1.402000e+00, float 3.441300e-01>, <2 x float> %6) ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.af, i64 1
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.an = insertelement <2 x float> %8, float %i.aj, i64 1
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %i.an) ; 2 uses
  %9 = extractelement <2 x float> %7, i64 0
  store float %9, ptr %.0.lcssa, align 4, !tbaa !14
  %i.ap = extractelement <2 x float> %i.ao, i64 0
  store float %i.ap, ptr %.074.lcssa, align 4, !tbaa !14
  %i.aq = extractelement <2 x float> %i.ao, i64 1
  store float %i.aq, ptr %.075.lcssa, align 4, !tbaa !14
  %exitcond90.not = icmp eq i64 %i.ae, 1
  br i1 %exitcond90.not, label %._crit_edge86, label %.lr.ph85.1

.lr.ph85.1:                                       ; preds = %.lr.ph85
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 4 ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !14 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 4 ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !14 ; 2 uses
  %i.aw = fneg float %i.at
  %i.ax = fneg float %i.av
  %i.ay = load float, ptr %i.ar, align 4, !tbaa !14 ; 2 uses
  %10 = insertelement <2 x float> poison, float %i.av, i64 0
  %11 = insertelement <2 x float> %10, float %i.aw, i64 1
  %i.az = insertelement <2 x float> poison, float %i.ay, i64 0
  %12 = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> <float 1.402000e+00, float 3.441300e-01>, <2 x float> %12) ; 2 uses
  %i.ba = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.at, i64 1
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bc = insertelement <2 x float> %14, float %i.ay, i64 1
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %i.bc) ; 2 uses
  %15 = extractelement <2 x float> %13, i64 0
  store float %15, ptr %i.ar, align 4, !tbaa !14
  %i.be = extractelement <2 x float> %i.bd, i64 0
  store float %i.be, ptr %i.as, align 4, !tbaa !14
  %i.bf = extractelement <2 x float> %i.bd, i64 1
  store float %i.bf, ptr %i.au, align 4, !tbaa !14
  %exitcond90.not.1 = icmp eq i64 %i.ae, 2
  br i1 %exitcond90.not.1, label %._crit_edge86, label %.lr.ph85.2

.lr.ph85.2:                                       ; preds = %.lr.ph85.1
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 8 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !14 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 8 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !14 ; 2 uses
  %i.bl = fneg float %i.bi
  %i.bm = fneg float %i.bk
  %i.bn = load float, ptr %i.bg, align 4, !tbaa !14 ; 2 uses
  %16 = insertelement <2 x float> poison, float %i.bk, i64 0
  %17 = insertelement <2 x float> %16, float %i.bl, i64 1
  %i.bo = insertelement <2 x float> poison, float %i.bn, i64 0
  %18 = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> <float 1.402000e+00, float 3.441300e-01>, <2 x float> %18) ; 2 uses
  %i.bp = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bi, i64 1
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.br = insertelement <2 x float> %20, float %i.bn, i64 1
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %i.br) ; 2 uses
  %21 = extractelement <2 x float> %19, i64 0
  store float %21, ptr %i.bg, align 4, !tbaa !14
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  store float %i.bt, ptr %i.bh, align 4, !tbaa !14
  %i.bu = extractelement <2 x float> %i.bs, i64 1
  store float %i.bu, ptr %i.bj, align 4, !tbaa !14
  %exitcond90.not.2 = icmp eq i64 %i.ae, 3
  br i1 %exitcond90.not.2, label %._crit_edge86, label %.lr.ph85.3

.lr.ph85.3:                                       ; preds = %.lr.ph85.2
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 12 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 12 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !14 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 12 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !14 ; 2 uses
  %i.ca = fneg float %i.bx
  %i.cb = fneg float %i.bz
  %i.cc = load float, ptr %i.bv, align 4, !tbaa !14 ; 2 uses
  %22 = insertelement <2 x float> poison, float %i.bz, i64 0
  %23 = insertelement <2 x float> %22, float %i.ca, i64 1
  %i.cd = insertelement <2 x float> poison, float %i.cc, i64 0
  %24 = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> <float 1.402000e+00, float 3.441300e-01>, <2 x float> %24) ; 2 uses
  %i.ce = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.bx, i64 1
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cg = insertelement <2 x float> %26, float %i.cc, i64 1
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %i.cg) ; 2 uses
  %27 = extractelement <2 x float> %25, i64 0
  store float %27, ptr %i.bv, align 4, !tbaa !14
  %i.ci = extractelement <2 x float> %i.ch, i64 0
  store float %i.ci, ptr %i.bw, align 4, !tbaa !14
  %i.cj = extractelement <2 x float> %i.ch, i64 1
  store float %i.cj, ptr %i.by, align 4, !tbaa !14
  %exitcond90.not.3 = icmp eq i64 %i.ae, 4
  br i1 %exitcond90.not.3, label %._crit_edge86, label %.lr.ph85.4

.lr.ph85.4:                                       ; preds = %.lr.ph85.3
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 16 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !14 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 16 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !14 ; 2 uses
  %i.cp = fneg float %i.cm
  %i.cq = fneg float %i.co
  %i.cr = load float, ptr %i.ck, align 4, !tbaa !14 ; 2 uses
  %28 = insertelement <2 x float> poison, float %i.co, i64 0
  %29 = insertelement <2 x float> %28, float %i.cp, i64 1
  %i.cs = insertelement <2 x float> poison, float %i.cr, i64 0
  %30 = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> <float 1.402000e+00, float 3.441300e-01>, <2 x float> %30) ; 2 uses
  %i.ct = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %i.cm, i64 1
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cv = insertelement <2 x float> %32, float %i.cr, i64 1
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %i.cv) ; 2 uses
  %33 = extractelement <2 x float> %31, i64 0
  store float %33, ptr %i.ck, align 4, !tbaa !14
  %i.cx = extractelement <2 x float> %i.cw, i64 0
  store float %i.cx, ptr %i.cl, align 4, !tbaa !14
  %i.cy = extractelement <2 x float> %i.cw, i64 1
  store float %i.cy, ptr %i.cn, align 4, !tbaa !14
  %exitcond90.not.4 = icmp eq i64 %i.ae, 5
  br i1 %exitcond90.not.4, label %._crit_edge86, label %.lr.ph85.5

.lr.ph85.5:                                       ; preds = %.lr.ph85.4
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 20 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 20 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !14 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 20 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !14 ; 2 uses
  %i.de = fneg float %i.db
  %i.df = fneg float %i.dd
  %i.dg = load float, ptr %i.cz, align 4, !tbaa !14 ; 2 uses
  %34 = insertelement <2 x float> poison, float %i.dd, i64 0
  %35 = insertelement <2 x float> %34, float %i.de, i64 1
  %i.dh = insertelement <2 x float> poison, float %i.dg, i64 0
  %36 = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %37 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %35, <2 x float> <float 1.402000e+00, float 3.441300e-01>, <2 x float> %36) ; 2 uses
  %i.di = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.db, i64 1
  %38 = shufflevector <2 x float> %37, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dk = insertelement <2 x float> %38, float %i.dg, i64 1
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %i.dk) ; 2 uses
  %39 = extractelement <2 x float> %37, i64 0
  store float %39, ptr %i.cz, align 4, !tbaa !14
  %i.dm = extractelement <2 x float> %i.dl, i64 0
  store float %i.dm, ptr %i.da, align 4, !tbaa !14
  %i.dn = extractelement <2 x float> %i.dl, i64 1
  store float %i.dn, ptr %i.dc, align 4, !tbaa !14
  %exitcond90.not.5 = icmp eq i64 %i.ae, 6
  br i1 %exitcond90.not.5, label %._crit_edge86, label %.lr.ph85.6

.lr.ph85.6:                                       ; preds = %.lr.ph85.5
  %i.do = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.074.lcssa, i64 24 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !14 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.075.lcssa, i64 24 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !14 ; 2 uses
  %i.dt = fneg float %i.dq
  %i.du = fneg float %i.ds
  %i.dv = load float, ptr %i.do, align 4, !tbaa !14 ; 2 uses
  %40 = insertelement <2 x float> poison, float %i.ds, i64 0
  %41 = insertelement <2 x float> %40, float %i.dt, i64 1
  %i.dw = insertelement <2 x float> poison, float %i.dv, i64 0
  %42 = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %43 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %41, <2 x float> <float 1.402000e+00, float 3.441300e-01>, <2 x float> %42) ; 2 uses
  %i.dx = insertelement <2 x float> poison, float %i.du, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %i.dq, i64 1
  %44 = shufflevector <2 x float> %43, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dz = insertelement <2 x float> %44, float %i.dv, i64 1
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> <float f0x3F36D1E1, float 1.772000e+00>, <2 x float> %i.dz) ; 2 uses
  %45 = extractelement <2 x float> %43, i64 0
  store float %45, ptr %i.do, align 4, !tbaa !14
  %i.eb = extractelement <2 x float> %i.ea, i64 0
  store float %i.eb, ptr %i.dp, align 4, !tbaa !14
  %i.ec = extractelement <2 x float> %i.ea, i64 1
  store float %i.ec, ptr %i.dr, align 4, !tbaa !14
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
end_hunk_0
