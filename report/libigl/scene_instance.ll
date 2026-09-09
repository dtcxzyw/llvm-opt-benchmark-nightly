Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_instance?download=true
inline.NumInlined: 322
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6embree18boundSegmentLinearERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEES6_RKNS_4BBoxIS2_EESA_SA_SA_ff:bb.a
  %i.fn = fmul <4 x float> %i.r, %i.ey
  %i.fo = fmul <4 x float> %i.q, %i.fa
  %i.fp = fadd <4 x float> %i.fn, %i.fo
  %i.fq = fmul <4 x float> %i.be, %i.ey
  %i.fr = fmul <4 x float> %i.bc, %i.fa
  %i.fs = fadd <4 x float> %i.fq, %i.fr           ; 3 uses
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fu = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fv = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fw = fmul <4 x float> %i.fm, %i.fv
  %i.fx = fadd <4 x float> %i.fp, %i.fw
  %i.fy = fmul <4 x float> %i.fj, %i.fu
  %i.fz = fadd <4 x float> %i.fy, %i.fx
  %i.ga = fmul <4 x float> %i.fg, %i.ft
  %i.gb = fadd <4 x float> %i.ga, %i.fz
  store <4 x float> %i.gb, ptr %14, align 16, !alias.scope !347
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv
  %i.ge = load float, ptr %i.gd, align 4
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.gg = load float, ptr %i.gf, align 4
  %i.gh = fsub float %i.ge, %i.gg                 ; 2 uses
  %i.gi = load float, ptr %i.gc, align 4          ; 2 uses
  %i.gj = fcmp olt float %i.gi, %i.gh
  %.sroa.speculated = select i1 %i.gj, float %i.gh, float %i.gi
  store float %.sroa.speculated, ptr %i.gc, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !340
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree21boundSegmentNonlinearERKNS_28MotionDerivativeCoefficientsERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEES9_RKNS_4BBoxIS5_EESD_SD_SD_ff(ptr dead_on_unwind noalias nofree writable sret(%"struct.embree::BBox.1") align 16 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(676) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %5, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %6, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %7, float noundef %8, float noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %10 = alloca %"struct.embree::MotionDerivative::EvalMotionDerivative", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"struct.embree::MotionDerivative::EvalMotionDerivative", align 8 ; 5 uses
  %i.c = alloca [32 x float], align 16            ; 6 uses
  %12 = alloca %"struct.embree::Interval", align 4 ; 6 uses
  %13 = alloca %"struct.embree::MotionDerivative", align 4 ; 7 uses
  %14 = alloca %"struct.embree::BBox.1", align 16 ; 5 uses
  %15 = alloca %"struct.embree::Vec3fa", align 16 ; 4 uses
  %16 = alloca %"struct.embree::BBox.1", align 16 ; 4 uses
  %17 = alloca %"struct.embree::Vec3fa", align 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store float %8, ptr %12, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 4
  store float %9, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 20
  br label %.preheader745

.preheader745:                                    ; preds = %bb.a, %bb.c
  %i.u = phi i1 [ true, %bb.a ], [ false, %bb.c ] ; 2 uses
  %.in.idx = select i1 %i.u, i64 0, i64 16        ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %4, i64 %.in.idx
  %.in68 = getelementptr inbounds nuw i8, ptr %5, i64 %.in.idx
  br label %.preheader

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  ret void

.preheader:                                       ; preds = %.preheader745, %bb.d
  %i.v = phi i1 [ true, %.preheader745 ], [ false, %bb.d ] ; 2 uses
  %.in66.v = select i1 %i.v, i64 4, i64 20        ; 2 uses
  %.in66 = getelementptr inbounds nuw i8, ptr %4, i64 %.in66.v
  %.in69 = getelementptr inbounds nuw i8, ptr %5, i64 %.in66.v
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  br i1 %i.u, label %.preheader745, label %bb.b, !llvm.loop !348

bb.d:                                             ; preds = %bb.f
  br i1 %i.v, label %.preheader, label %bb.c, !llvm.loop !349

bb.e:                                             ; preds = %.preheader, %bb.f
  %i.w = phi i1 [ true, %.preheader ], [ false, %bb.f ] ; 2 uses
  %i.x = load float, ptr %.in, align 16           ; 2 uses
  %i.y = load float, ptr %.in66, align 4          ; 2 uses
  %.in67.v = select i1 %i.w, i64 8, i64 24        ; 2 uses
  %.in67 = getelementptr inbounds nuw i8, ptr %4, i64 %.in67.v
  %i.z = load float, ptr %.in67, align 8          ; 2 uses
  %i.aa = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.x, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.y, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.z, i64 2 ; 2 uses
  %i.ad = load float, ptr %.in68, align 16        ; 2 uses
  %i.ae = load float, ptr %.in69, align 4         ; 2 uses
  %.in70 = getelementptr inbounds nuw i8, ptr %5, i64 %.in67.v
  %i.af = load float, ptr %.in70, align 8         ; 2 uses
  %i.ag = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ad, i64 0
  %i.ah = insertelement <4 x float> %i.ag, float %i.ae, i64 1
  %i.ai = insertelement <4 x float> %i.ah, float %i.af, i64 2 ; 2 uses
  %i.aj = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.al = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.an = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ap = insertelement <4 x float> poison, float %i.z, i64 0
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ar = insertelement <4 x float> poison, float %i.y, i64 0
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.at = insertelement <4 x float> poison, float %i.x, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %_ZN6embree16MotionDerivativeC2ERKNS_28MotionDerivativeCoefficientsEiRKNS_6Vec3faES6_.exit

bb.f:                                             ; preds = %bb.i
  br i1 %i.w, label %bb.e, label %bb.d, !llvm.loop !350

_ZN6embree16MotionDerivativeC2ERKNS_28MotionDerivativeCoefficientsEiRKNS_6Vec3faES6_.exit: ; preds = %bb.e, %bb.i
  %indvars.iv765 = phi i64 [ 0, %bb.e ], [ %indvars.iv.next766, %bb.i ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.av = load float, ptr %1, align 4
  %i.aw = fmul float %i.av, 2.000000e+00
  store float %i.aw, ptr %13, align 4
  %invariant.gep.idx = mul nuw nsw i64 %indvars.iv765, 224
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.g, i64 %invariant.gep.idx ; 2 uses
  %i.ax = load <28 x float>, ptr %invariant.gep, align 4 ; 7 uses
  %i.ay = shufflevector <28 x float> %i.ax, <28 x float> poison, <4 x i32> <i32 0, i32 7, i32 14, i32 21>
  %i.az = fadd <4 x float> %i.ay, zeroinitializer
  %i.ba = shufflevector <28 x float> %i.ax, <28 x float> poison, <4 x i32> <i32 1, i32 8, i32 15, i32 22>
  %i.bb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %i.au, <4 x float> %i.az)
  %i.bc = shufflevector <28 x float> %i.ax, <28 x float> poison, <4 x i32> <i32 2, i32 9, i32 16, i32 23>
  %i.bd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.as, <4 x float> %i.bb)
  %i.be = shufflevector <28 x float> %i.ax, <28 x float> poison, <4 x i32> <i32 3, i32 10, i32 17, i32 24>
  %i.bf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.aq, <4 x float> %i.bd)
  %i.bg = shufflevector <28 x float> %i.ax, <28 x float> poison, <4 x i32> <i32 4, i32 11, i32 18, i32 25>
  %i.bh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.ao, <4 x float> %i.bf)
  %i.bi = shufflevector <28 x float> %i.ax, <28 x float> poison, <4 x i32> <i32 5, i32 12, i32 19, i32 26>
  %i.bj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> %i.am, <4 x float> %i.bh)
  %i.bk = shufflevector <28 x float> %i.ax, <28 x float> poison, <4 x i32> <i32 6, i32 13, i32 20, i32 27>
  %i.bl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %i.ak, <4 x float> %i.bj)
  store <4 x float> %i.bl, ptr %i.f, align 4
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 112
  %i.bm = load <28 x float>, ptr %gep.4, align 4  ; 7 uses
  %i.bn = shufflevector <28 x float> %i.bm, <28 x float> poison, <4 x i32> <i32 0, i32 7, i32 14, i32 21>
  %i.bo = fadd <4 x float> %i.bn, zeroinitializer
  %i.bp = shufflevector <28 x float> %i.bm, <28 x float> poison, <4 x i32> <i32 1, i32 8, i32 15, i32 22>
  %i.bq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.au, <4 x float> %i.bo)
  %i.br = shufflevector <28 x float> %i.bm, <28 x float> poison, <4 x i32> <i32 2, i32 9, i32 16, i32 23>
  %i.bs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.as, <4 x float> %i.bq)
  %i.bt = shufflevector <28 x float> %i.bm, <28 x float> poison, <4 x i32> <i32 3, i32 10, i32 17, i32 24>
  %i.bu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.aq, <4 x float> %i.bs)
  %i.bv = shufflevector <28 x float> %i.bm, <28 x float> poison, <4 x i32> <i32 4, i32 11, i32 18, i32 25>
  %i.bw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.ao, <4 x float> %i.bu)
  %i.bx = shufflevector <28 x float> %i.bm, <28 x float> poison, <4 x i32> <i32 5, i32 12, i32 19, i32 26>
  %i.by = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.am, <4 x float> %i.bw)
  %i.bz = shufflevector <28 x float> %i.bm, <28 x float> poison, <4 x i32> <i32 6, i32 13, i32 20, i32 27>
  %i.ca = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.ak, <4 x float> %i.by)
  store <4 x float> %i.ca, ptr %i.t, align 4
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv765
  %i.cc = load float, ptr %i.cb, align 4
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv765
  %i.ce = load float, ptr %i.cd, align 4
  %i.cf = fsub float %i.cc, %i.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %13, ptr %11, align 8
  store float %i.cf, ptr %i.h, align 8
  call void @_ZN6embree16MotionDerivative9findRootsINS0_20EvalMotionDerivativeINS_8IntervalIfEEEEEEvRKT_RKS4_RjPfj(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull %i.c, i32 noundef 32)
  %i.cg = load i32, ptr %i.b, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %.not = icmp eq i32 %i.cg, 0
  br i1 %.not, label %bb.g, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6embree16MotionDerivativeC2ERKNS_28MotionDerivativeCoefficientsEiRKNS_6Vec3faES6_.exit
  %i.ch = load <4 x float>, ptr %7, align 16, !noalias !410
  %i.ci = load <4 x float>, ptr %6, align 16, !noalias !411
  %i.cj = load <4 x float>, ptr %i.j, align 16, !noalias !412
  %i.ck = load <4 x float>, ptr %i.i, align 16, !noalias !413
  %i.cl = load <4 x float>, ptr %2, align 16      ; 3 uses
  %i.cm = load <4 x float>, ptr %i.l, align 16    ; 4 uses
  %i.cn = load <4 x float>, ptr %i.m, align 16    ; 3 uses
  %i.co = load <4 x float>, ptr %i.n, align 16    ; 3 uses
  %i.cp = load <4 x float>, ptr %3, align 16      ; 3 uses
  %i.cq = load <4 x float>, ptr %i.o, align 16    ; 2 uses
  %i.cr = load <4 x float>, ptr %i.p, align 16    ; 2 uses
  %i.cs = load <4 x float>, ptr %i.q, align 16    ; 3 uses
  %.sroa.1198.60.vec.extract = extractelement <4 x float> %i.co, i64 3
  %.sroa.596.28.vec.extract = extractelement <4 x float> %i.cm, i64 3 ; 2 uses
  %.sroa.897.44.vec.extract = extractelement <4 x float> %i.cn, i64 3 ; 2 uses
  %.sroa.1194.60.vec.extract = extractelement <4 x float> %i.cs, i64 3
  %.sroa.592.28.vec.extract = extractelement <4 x float> %i.cq, i64 3 ; 3 uses
  %.sroa.893.44.vec.extract = extractelement <4 x float> %i.cr, i64 3 ; 3 uses
  %foldExtExtBinop = fmul <4 x float> %i.cl, %i.cp
  %i.ct = extractelement <4 x float> %foldExtExtBinop, i64 3
  %i.cu = call float @llvm.fmuladd.f32(float %.sroa.1198.60.vec.extract, float %.sroa.1194.60.vec.extract, float %i.ct)
  %i.cv = call float @llvm.fmuladd.f32(float %.sroa.596.28.vec.extract, float %.sroa.592.28.vec.extract, float %i.cu)
  %i.cw = call noundef float @llvm.fmuladd.f32(float %.sroa.897.44.vec.extract, float %.sroa.893.44.vec.extract, float %i.cv) ; 4 uses
  %i.cx = fneg float %.sroa.592.28.vec.extract
  %i.cy = fneg float %.sroa.893.44.vec.extract
  %i.cz = fneg float %i.cw
  %i.da = call float @llvm.fabs.f32(float %i.cw)  ; 7 uses
  %i.db = fcmp ogt float %i.da, 1.000000e+00
  %i.dc = call float @llvm.fmuladd.f32(float %i.da, float f0xBB8D3753, float 1.928030e-02)
  %i.dd = call float @llvm.fmuladd.f32(float %i.da, float %i.dc, float f0xBD37E81C)
  %i.de = call float @llvm.fmuladd.f32(float %i.da, float %i.dd, float f0x3DB3EDAC)
  %i.df = call float @llvm.fmuladd.f32(float %i.da, float %i.de, float f0xBE5BA881)
  %i.dg = call float @llvm.fmuladd.f32(float %i.da, float %i.df, float f0x3FC90FD1)
  %i.dh = fsub float 1.000000e+00, %i.da
  %i.di = call noundef float @sqrtf(float noundef %i.dh) #24, !noalias !414
  %i.dj = fmul float %i.di, %i.dg
  %i.dk = fsub float f0x3FC90FDB, %i.dj           ; 2 uses
  %i.dl = fcmp olt float %i.dk, 0.000000e+00
  %i.dm = select i1 %i.dl, float 0.000000e+00, float %i.dk ; 2 uses
  %i.dn = fneg float %i.dm
  %i.do = fcmp olt float %i.cw, 0.000000e+00      ; 4 uses
  %18 = shufflevector <4 x float> %i.cs, <4 x float> %i.cp, <2 x i32> <i32 3, i32 7> ; 2 uses
  %19 = fneg <2 x float> %18
  %20 = insertelement <2 x i1> poison, i1 %i.do, i64 0
  %21 = shufflevector <2 x i1> %20, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dp = select <2 x i1> %21, <2 x float> %19, <2 x float> %18 ; 2 uses
  %i.dq = select i1 %i.do, float %i.cx, float %.sroa.592.28.vec.extract ; 2 uses
  %i.dr = select i1 %i.do, float %i.cy, float %.sroa.893.44.vec.extract ; 2 uses
  %i.ds = select i1 %i.do, float %i.cz, float %i.cw ; 5 uses
  %i.dt = fcmp olt float %i.ds, 0.000000e+00
  %i.du = select i1 %i.dt, float %i.dn, float %i.dm
  %i.dv = fsub float f0x3FC90FDB, %i.du
  %i.dw = select i1 %i.db, float +qnan, float %i.dv
  %i.dx = fneg <2 x float> %i.dp
  %i.dy = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = shufflevector <4 x float> %i.co, <4 x float> %i.cl, <2 x i32> <i32 3, i32 7> ; 3 uses
  %i.eb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.ea, <2 x float> %i.dx) ; 4 uses
  %i.ec = fneg float %i.dq
  %i.ed = call noundef float @llvm.fmuladd.f32(float %i.ds, float %.sroa.596.28.vec.extract, float %i.ec) ; 3 uses
  %i.ee = fneg float %i.dr
  %i.ef = call noundef float @llvm.fmuladd.f32(float %i.ds, float %.sroa.897.44.vec.extract, float %i.ee) ; 3 uses
  %foldExtExtBinop771 = fmul <2 x float> %i.eb, %i.eb
  %i.eg = extractelement <2 x float> %foldExtExtBinop771, i64 1
  %i.eh = extractelement <2 x float> %i.eb, i64 0 ; 2 uses
  %i.ei = call float @llvm.fmuladd.f32(float %i.eh, float %i.eh, float %i.eg)
  %i.ej = call float @llvm.fmuladd.f32(float %i.ed, float %i.ed, float %i.ei)
  %i.ek = call float @llvm.fmuladd.f32(float %i.ef, float %i.ef, float %i.ej) ; 2 uses
  %i.el = insertelement <4 x float> poison, float %i.ek, i64 0
  %i.em = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.el) ; 3 uses
  %i.en = extractelement <4 x float> %i.em, i64 0 ; 2 uses
  %i.eo = fmul float %i.en, 1.500000e+00
  %i.ep = fmul float %i.ek, 5.000000e-01
  %i.eq = fmul float %i.en, %i.ep
  %foldExtExtBinop773 = fmul <4 x float> %i.em, %i.em
  %i.er = extractelement <4 x float> %foldExtExtBinop773, i64 0
  %i.es = fmul float %i.er, %i.eq
  %i.et = fsub float %i.eo, %i.es
  %i.eu = fneg float %i.et                        ; 3 uses
  %i.ev = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x float> %i.eb, %i.ew
  %i.ey = fmul float %i.ed, %i.eu
  %i.ez = fmul float %i.ef, %i.eu
  %i.fa = fcmp ogt float %i.ds, f0x3F7FDF3B
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv765 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %indvars.iv765
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv765
  %.promoted = load float, ptr %i.fb, align 4
  %wide.trip.count = zext i32 %i.cg to i64
  %i.fe = insertelement <2 x i1> poison, i1 %i.fa, i64 0
  %i.ff = shufflevector <2 x i1> %i.fe, <2 x i1> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fg = shufflevector <4 x float> %i.cn, <4 x float> %i.cm, <4 x i32> <i32 3, i32 7, i32 3, i32 poison>
  %i.fh = shufflevector <4 x float> %i.cm, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.fi = insertelement <2 x float> %i.fh, float -0.000000e+00, i64 1
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h
  store float %.sroa.speculated88, ptr %i.fb, align 4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %_ZN6embree16MotionDerivativeC2ERKNS_28MotionDerivativeCoefficientsEiRKNS_6Vec3faES6_.exit
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv765
  %i.fk = load float, ptr %i.fj, align 4
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv765
  %i.fm = load float, ptr %i.fl, align 4
  %i.fn = fsub float %i.fk, %i.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %13, ptr %10, align 8
  store float %i.fn, ptr %i.r, align 8
  call void @_ZN6embree16MotionDerivative9findRootsINS0_20EvalMotionDerivativeINS_8IntervalIfEEEEEEvRKT_RKS4_RjPfj(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull %i.c, i32 noundef 32)
  %i.fo = load i32, ptr %i.a, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not758 = icmp eq i32 %i.fo, 0
  br i1 %.not758, label %bb.i, label %.lr.ph750

.lr.ph750:                                        ; preds = %bb.g
  %i.fp = load <4 x float>, ptr %7, align 16, !noalias !415
  %i.fq = load <4 x float>, ptr %6, align 16, !noalias !416
  %i.fr = load <4 x float>, ptr %i.j, align 16, !noalias !417
  %i.fs = load <4 x float>, ptr %i.i, align 16, !noalias !418
  %i.ft = load <4 x float>, ptr %2, align 16      ; 3 uses
  %i.fu = load <4 x float>, ptr %i.l, align 16    ; 4 uses
  %i.fv = load <4 x float>, ptr %i.m, align 16    ; 3 uses
  %i.fw = load <4 x float>, ptr %i.n, align 16    ; 3 uses
  %i.fx = load <4 x float>, ptr %3, align 16      ; 3 uses
  %i.fy = load <4 x float>, ptr %i.o, align 16    ; 2 uses
  %i.fz = load <4 x float>, ptr %i.p, align 16    ; 2 uses
  %i.ga = load <4 x float>, ptr %i.q, align 16    ; 3 uses
  %.sroa.1176.60.vec.extract = extractelement <4 x float> %i.fw, i64 3
  %.sroa.574.28.vec.extract = extractelement <4 x float> %i.fu, i64 3 ; 2 uses
  %.sroa.875.44.vec.extract = extractelement <4 x float> %i.fv, i64 3 ; 2 uses
  %.sroa.11.60.vec.extract = extractelement <4 x float> %i.ga, i64 3
  %.sroa.5.28.vec.extract = extractelement <4 x float> %i.fy, i64 3 ; 3 uses
  %.sroa.8.44.vec.extract = extractelement <4 x float> %i.fz, i64 3 ; 3 uses
  %foldExtExtBinop775 = fmul <4 x float> %i.ft, %i.fx
  %i.gb = extractelement <4 x float> %foldExtExtBinop775, i64 3
  %i.gc = call float @llvm.fmuladd.f32(float %.sroa.1176.60.vec.extract, float %.sroa.11.60.vec.extract, float %i.gb)
  %i.gd = call float @llvm.fmuladd.f32(float %.sroa.574.28.vec.extract, float %.sroa.5.28.vec.extract, float %i.gc)
  %i.ge = call noundef float @llvm.fmuladd.f32(float %.sroa.875.44.vec.extract, float %.sroa.8.44.vec.extract, float %i.gd) ; 4 uses
  %i.gf = fneg float %.sroa.5.28.vec.extract
  %i.gg = fneg float %.sroa.8.44.vec.extract
  %i.gh = fneg float %i.ge
  %i.gi = call float @llvm.fabs.f32(float %i.ge)  ; 7 uses
  %i.gj = fcmp ogt float %i.gi, 1.000000e+00
  %i.gk = call float @llvm.fmuladd.f32(float %i.gi, float f0xBB8D3753, float 1.928030e-02)
  %i.gl = call float @llvm.fmuladd.f32(float %i.gi, float %i.gk, float f0xBD37E81C)
  %i.gm = call float @llvm.fmuladd.f32(float %i.gi, float %i.gl, float f0x3DB3EDAC)
  %i.gn = call float @llvm.fmuladd.f32(float %i.gi, float %i.gm, float f0xBE5BA881)
  %i.go = call float @llvm.fmuladd.f32(float %i.gi, float %i.gn, float f0x3FC90FD1)
  %i.gp = fsub float 1.000000e+00, %i.gi
  %i.gq = call noundef float @sqrtf(float noundef %i.gp) #24, !noalias !419
  %i.gr = fmul float %i.gq, %i.go
  %i.gs = fsub float f0x3FC90FDB, %i.gr           ; 2 uses
  %i.gt = fcmp olt float %i.gs, 0.000000e+00
  %i.gu = select i1 %i.gt, float 0.000000e+00, float %i.gs ; 2 uses
  %i.gv = fneg float %i.gu
  %i.gw = fcmp olt float %i.ge, 0.000000e+00      ; 4 uses
  %22 = shufflevector <4 x float> %i.ga, <4 x float> %i.fx, <2 x i32> <i32 3, i32 7> ; 2 uses
  %23 = fneg <2 x float> %22
  %24 = insertelement <2 x i1> poison, i1 %i.gw, i64 0
  %25 = shufflevector <2 x i1> %24, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.gx = select <2 x i1> %25, <2 x float> %23, <2 x float> %22 ; 2 uses
  %i.gy = select i1 %i.gw, float %i.gf, float %.sroa.5.28.vec.extract ; 2 uses
  %i.gz = select i1 %i.gw, float %i.gg, float %.sroa.8.44.vec.extract ; 2 uses
  %i.ha = select i1 %i.gw, float %i.gh, float %i.ge ; 5 uses
  %i.hb = fcmp olt float %i.ha, 0.000000e+00
  %i.hc = select i1 %i.hb, float %i.gv, float %i.gu
  %i.hd = fsub float f0x3FC90FDB, %i.hc
  %i.he = select i1 %i.gj, float +qnan, float %i.hd
  %i.hf = fneg <2 x float> %i.gx
  %i.hg = insertelement <2 x float> poison, float %i.ha, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = shufflevector <4 x float> %i.fw, <4 x float> %i.ft, <2 x i32> <i32 3, i32 7> ; 3 uses
  %i.hj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.hi, <2 x float> %i.hf) ; 4 uses
  %i.hk = fneg float %i.gy
  %i.hl = call noundef float @llvm.fmuladd.f32(float %i.ha, float %.sroa.574.28.vec.extract, float %i.hk) ; 3 uses
  %i.hm = fneg float %i.gz
  %i.hn = call noundef float @llvm.fmuladd.f32(float %i.ha, float %.sroa.875.44.vec.extract, float %i.hm) ; 3 uses
  %foldExtExtBinop777 = fmul <2 x float> %i.hj, %i.hj
  %i.ho = extractelement <2 x float> %foldExtExtBinop777, i64 1
  %i.hp = extractelement <2 x float> %i.hj, i64 0 ; 2 uses
  %i.hq = call float @llvm.fmuladd.f32(float %i.hp, float %i.hp, float %i.ho)
  %i.hr = call float @llvm.fmuladd.f32(float %i.hl, float %i.hl, float %i.hq)
  %i.hs = call float @llvm.fmuladd.f32(float %i.hn, float %i.hn, float %i.hr) ; 2 uses
  %i.ht = insertelement <4 x float> poison, float %i.hs, i64 0
  %i.hu = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.ht) ; 3 uses
  %i.hv = extractelement <4 x float> %i.hu, i64 0 ; 2 uses
  %i.hw = fmul float %i.hv, 1.500000e+00
  %i.hx = fmul float %i.hs, 5.000000e-01
  %i.hy = fmul float %i.hv, %i.hx
  %foldExtExtBinop779 = fmul <4 x float> %i.hu, %i.hu
  %i.hz = extractelement <4 x float> %foldExtExtBinop779, i64 0
  %i.ia = fmul float %i.hz, %i.hy
  %i.ib = fsub float %i.hw, %i.ia
  %i.ic = fneg float %i.ib                        ; 3 uses
  %i.id = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = fmul <2 x float> %i.hj, %i.ie
  %i.ig = fmul float %i.hl, %i.ic
  %i.ih = fmul float %i.hn, %i.ic
  %i.ii = fcmp ogt float %i.ha, f0x3F7FDF3B
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv765 ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv765
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv765
  %.promoted752 = load float, ptr %i.ij, align 4
  %wide.trip.count763 = zext i32 %i.fo to i64
  %i.im = insertelement <2 x i1> poison, i1 %i.ii, i64 0
  %i.in = shufflevector <2 x i1> %i.im, <2 x i1> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.io = shufflevector <4 x float> %i.fv, <4 x float> %i.fu, <4 x i32> <i32 3, i32 7, i32 3, i32 poison>
  %i.ip = shufflevector <4 x float> %i.fu, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.iq = insertelement <2 x float> %i.ip, float -0.000000e+00, i64 1
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.sroa.speculated88747 = phi float [ %.promoted, %.lr.ph ], [ %.sroa.speculated88, %bb.h ] ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.is = load float, ptr %i.ir, align 4          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.it = insertelement <4 x float> poison, float %i.is, i64 0
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.iv = fmul <4 x float> %i.iu, %i.ch
  %i.iw = fmul <4 x float> %i.iu, %i.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.ix = fmul float %i.is, %i.dw                 ; 2 uses
  %i.iy = fmul float %i.ix, f0x3F22F983
  %i.iz = call noundef float @llvm.floor.f32(float %i.iy) ; 2 uses
  %i.ja = fptosi float %i.iz to i32               ; 3 uses
  %i.jb = fneg float %i.iz
  %i.jc = call float @llvm.fmuladd.f32(float %i.jb, float f0x3FC90FDB, float %i.ix) ; 3 uses
  %i.jd = and i32 %i.ja, 3                        ; 2 uses
  %i.je = and i32 %i.ja, 1
  %i.jf = add nsw i32 %i.jd, -1
  %i.jg = fmul float %i.jc, %i.jc                 ; 10 uses
  %i.jh = call float @llvm.fmuladd.f32(float %i.jg, float f0xB2D70013, float f0x363938A8)
  %i.ji = call float @llvm.fmuladd.f32(float %i.jg, float f0xB48B634D, float f0x37CFAB9C)
  %i.jj = call float @llvm.fmuladd.f32(float %i.jg, float %i.jh, float f0xB9501096)
  %i.jk = call float @llvm.fmuladd.f32(float %i.jg, float %i.ji, float f0xBAB60981)
  %i.jl = call float @llvm.fmuladd.f32(float %i.jg, float %i.jj, float f0x3C088898)
  %i.jm = call float @llvm.fmuladd.f32(float %i.jg, float %i.jk, float f0x3D2AAAA4)
  %i.jn = call float @llvm.fmuladd.f32(float %i.jg, float %i.jl, float f0xBE2AAAAB)
  %i.jo = call float @llvm.fmuladd.f32(float %i.jg, float %i.jm, float -5.000000e-01)
  %i.jp = call float @llvm.fmuladd.f32(float %i.jg, float %i.jn, float 1.000000e+00)
  %i.jq = call float @llvm.fmuladd.f32(float %i.jg, float %i.jo, float 1.000000e+00) ; 2 uses
  %i.jr = fmul float %i.jc, %i.jp                 ; 2 uses
  %i.js = trunc i32 %i.ja to i1
  %i.jt = icmp eq i32 %i.je, 0
  %i.ju = fsub float 1.000000e+00, %i.is          ; 3 uses
  %i.jv = insertelement <4 x float> poison, float %i.ju, i64 0
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.jx = fmul <4 x float> %i.jw, %i.ci
  %i.jy = fadd <4 x float> %i.iv, %i.jx
  %i.jz = fmul <4 x float> %i.jw, %i.ck
  %i.ka = fadd <4 x float> %i.iw, %i.jz
  store <4 x float> %i.jy, ptr %14, align 16
  store <4 x float> %i.ka, ptr %i.k, align 16
  %i.kb = icmp samesign ugt i32 %i.jd, 1
  %i.kc = icmp ult i32 %i.jf, 2
  %i.kd = select i1 %i.js, float %i.jq, float %i.jr ; 2 uses
  %i.ke = select i1 %i.jt, float %i.jq, float %i.jr ; 2 uses
  %i.kf = fneg float %i.kd
  %i.kg = fneg float %i.ke
  %i.kh = select i1 %i.kc, float %i.kg, float %i.ke ; 3 uses
  %i.ki = insertelement <2 x float> poison, float %i.kh, i64 0
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kk = insertelement <2 x float> poison, float %i.is, i64 0
  %i.kl = shufflevector <2 x float> %i.kk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.km = fmul <2 x float> %i.kl, %i.dp
  %i.kn = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.ko = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> %i.ea, <2 x float> %i.km) ; 4 uses
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.kr = select i1 %i.kb, float %i.kf, float %i.kd ; 3 uses
  %i.ks = insertelement <2 x float> poison, float %i.kr, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = fmul <2 x float> %i.ex, %i.kt
  %i.kv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kj, <2 x float> %i.ea, <2 x float> %i.ku)
  %i.kw = fmul float %i.ey, %i.kr
  %i.kx = shufflevector <2 x float> %i.kp, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1> ; 2 uses
  %i.ky = insertelement <4 x float> %i.kx, float %i.ez, i64 0
  %i.kz = insertelement <4 x float> %i.ky, float %i.is, i64 1
  %i.la = shufflevector <4 x float> %i.kz, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.lb = insertelement <4 x float> %i.kx, float %i.kr, i64 0
  %i.lc = insertelement <4 x float> %i.lb, float %i.dq, i64 1
  %i.ld = insertelement <4 x float> %i.lc, float %i.dr, i64 2
  %i.le = fmul <4 x float> %i.la, %i.ld
  %i.lf = shufflevector <2 x float> %i.kp, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.lg = insertelement <4 x float> %i.lf, float %i.kh, i64 0
  %i.lh = insertelement <4 x float> %i.lg, float %i.ju, i64 1
  %i.li = shufflevector <4 x float> %i.lh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.lj = shufflevector <4 x float> %i.fg, <4 x float> %i.kq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.lk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.li, <4 x float> %i.lj, <4 x float> %i.le) ; 5 uses
  %i.ll = extractelement <4 x float> %i.lk, i64 1 ; 2 uses
  %i.lm = extractelement <4 x float> %i.lk, i64 3
  %i.ln = call float @llvm.fmuladd.f32(float %i.ll, float %i.ll, float %i.lm)
  %i.lo = extractelement <4 x float> %i.lk, i64 2 ; 2 uses
  %i.lp = call float @llvm.fmuladd.f32(float %i.lo, float %i.lo, float %i.ln) ; 2 uses
  %i.lq = insertelement <4 x float> poison, float %i.lp, i64 0
  %i.lr = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.lq) ; 3 uses
  %i.ls = extractelement <4 x float> %i.lr, i64 0 ; 2 uses
  %i.lt = fmul float %i.ls, 1.500000e+00
  %i.lu = fmul float %i.lp, 5.000000e-01
  %i.lv = fmul float %i.ls, %i.lu
  %foldExtExtBinop781 = fmul <4 x float> %i.lr, %i.lr
  %i.lw = extractelement <4 x float> %foldExtExtBinop781, i64 0
  %i.lx = fmul float %i.lw, %i.lv
  %i.ly = fsub float %i.lt, %i.lx
  %i.lz = insertelement <2 x float> poison, float %i.ly, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mb = fmul <2 x float> %i.kp, %i.ma
  %i.mc = select <2 x i1> %i.ff, <2 x float> %i.mb, <2 x float> %i.kv ; 4 uses
  %i.md = fmul <4 x float> %i.iu, %i.cp
  %i.me = fmul <4 x float> %i.jw, %i.cl
  %i.mf = fadd <4 x float> %i.me, %i.md           ; 2 uses
  %i.mg = fmul <4 x float> %i.iu, %i.cq
  %i.mh = fmul <4 x float> %i.jw, %i.cm
  %i.mi = fadd <4 x float> %i.mh, %i.mg           ; 3 uses
  %i.mj = fmul <4 x float> %i.iu, %i.cr
  %i.mk = fmul <4 x float> %i.jw, %i.cn
  %i.ml = fadd <4 x float> %i.mk, %i.mj           ; 3 uses
  %i.mm = fmul <4 x float> %i.iu, %i.cs
  %i.mn = fmul <4 x float> %i.jw, %i.co
  %i.mo = fadd <4 x float> %i.mn, %i.mm           ; 3 uses
  %.sroa.17263.52.vec.insert = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.mf, <4 x i32> <i32 5, i32 6, i32 poison, i32 3>
  %.sroa.17263.56.vec.insert = shufflevector <4 x float> %.sroa.17263.52.vec.insert, <4 x float> %i.mi, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.mp = extractelement <2 x float> %i.mc, i64 1 ; 6 uses
  %i.mq = fmul float %i.mp, %i.mp
  %i.mr = extractelement <2 x float> %i.mc, i64 0 ; 7 uses
  %i.ms = call float @llvm.fmuladd.f32(float %i.mr, float %i.mr, float %i.mq)
  %i.mt = shufflevector <4 x float> %i.lk, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.mu = fmul <2 x float> %i.mt, %i.ma
  %i.mv = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kh, i64 0
  %i.mw = shufflevector <4 x float> %i.lk, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mx = insertelement <2 x float> %i.mw, float %i.kw, i64 0
  %i.my = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mv, <2 x float> %i.fi, <2 x float> %i.mx)
  %i.mz = select <2 x i1> %i.ff, <2 x float> %i.mu, <2 x float> %i.my ; 4 uses
  %i.na = shufflevector <2 x float> %i.mz, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.nb = extractelement <2 x float> %i.mz, i64 0 ; 8 uses
  %i.nc = fneg float %i.nb                        ; 3 uses
  %i.nd = call float @llvm.fmuladd.f32(float %i.nc, float %i.nb, float %i.ms)
  %i.ne = extractelement <2 x float> %i.mz, i64 1 ; 7 uses
  %i.nf = fneg float %i.ne                        ; 3 uses
  %i.ng = shufflevector <2 x float> %i.mc, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.nh = insertelement <4 x float> %i.ng, float 1.000000e+00, i64 0
  %i.ni = shufflevector <2 x float> %i.mz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nj = insertelement <4 x float> %i.ni, float %i.nd, i64 0
  %i.nk = insertelement <4 x float> %i.nj, float %i.nc, i64 2
  %i.nl = insertelement <4 x float> %i.nk, float %i.nf, i64 3
  %i.nm = fmul <4 x float> %i.nh, %i.nl
  %i.nn = shufflevector <2 x float> %i.mc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 1>
  %i.no = insertelement <4 x float> %i.nn, float %i.nf, i64 0
  %i.np = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.no, <4 x float> %i.na, <4 x float> %i.nm) ; 4 uses
  %i.nq = extractelement <4 x float> %i.np, i64 1
  %i.nr = fmul float %i.nq, 2.000000e+00
  %i.ns = extractelement <4 x float> %i.np, i64 2
  %i.nt = fmul float %i.ns, 2.000000e+00
  %i.nu = extractelement <4 x float> %i.np, i64 3
  %i.nv = fmul float %i.nu, 2.000000e+00
  %i.nw = fneg float %i.mp                        ; 2 uses
  %i.nx = fmul float %i.mp, %i.nw
  %i.ny = call float @llvm.fmuladd.f32(float %i.mr, float %i.mr, float %i.nx) ; 2 uses
  %i.nz = call float @llvm.fmuladd.f32(float %i.nb, float %i.nb, float %i.ny)
end_hunk_0
