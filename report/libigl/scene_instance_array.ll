Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_instance_array?download=true
inline.NumInlined: 398
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6embree28MotionDerivativeCoefficientsC2ERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3fxEEEEES7_:bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cs = load float, ptr %i.cr, align 4
  store float %i.cs, ptr %i.cq, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cw = load <2 x float>, ptr %i.cu, align 4
  %i.cx = load <2 x float>, ptr %i.cv, align 4
  %i.cy = shufflevector <2 x float> %i.cw, <2 x float> %i.cx, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.cy, ptr %i.ct, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.da = load float, ptr %2, align 16
  store float %i.da, ptr %i.cz, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.dc = load float, ptr %i.bp, align 16
  store float %i.dc, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.de = load float, ptr %i.bn, align 16
  store float %i.de, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.dg = load float, ptr %i.bl, align 16
  store float %i.dg, ptr %i.df, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dj = load float, ptr %i.di, align 4
  store float %i.dj, ptr %i.dh, align 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.dn = load <2 x float>, ptr %i.dl, align 4
  %i.do = load <2 x float>, ptr %i.dm, align 4
  %i.dp = shufflevector <2 x float> %i.dn, <2 x float> %i.do, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.dp, ptr %i.dk, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4
  call fastcc void @_ZN6embreeL30motion_derivative_coefficientsEPKfPf(ptr noundef %i.a, ptr noundef %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6embree12_GLOBAL__N_121boundSegmentNonlinearERKNS_28MotionDerivativeCoefficientsERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3faEEEEESA_RKNS_4BBoxIS6_EESE_SE_SE_ff(ptr dead_on_unwind noalias nofree writable align 16 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(676) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %5, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %6, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %7, float noundef %8, float noundef %9) unnamed_addr #12 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %10 = alloca %"struct.embree::MotionDerivative::EvalMotionDerivative", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"struct.embree::MotionDerivative::EvalMotionDerivative", align 8 ; 5 uses
  %i.c = alloca [32 x float], align 16            ; 6 uses
  %12 = alloca %"struct.embree::Interval", align 4 ; 6 uses
  %13 = alloca %"struct.embree::MotionDerivative", align 4 ; 7 uses
  %14 = alloca %"struct.embree::BBox.13", align 16 ; 5 uses
  %15 = alloca %"struct.embree::Vec3fa", align 16 ; 4 uses
  %16 = alloca %"struct.embree::BBox.13", align 16 ; 4 uses
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
  br i1 %i.u, label %.preheader745, label %bb.b, !llvm.loop !199

bb.d:                                             ; preds = %bb.f
  br i1 %i.v, label %.preheader, label %bb.c, !llvm.loop !200

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
  br i1 %i.w, label %bb.e, label %bb.d, !llvm.loop !201

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
  %i.ch = load <4 x float>, ptr %7, align 16, !noalias !273
  %i.ci = load <4 x float>, ptr %6, align 16, !noalias !274
  %i.cj = load <4 x float>, ptr %i.j, align 16, !noalias !275
  %i.ck = load <4 x float>, ptr %i.i, align 16, !noalias !276
  %i.cl = load <4 x float>, ptr %2, align 16      ; 2 uses
  %i.cm = load <4 x float>, ptr %i.l, align 16    ; 3 uses
  %i.cn = load <4 x float>, ptr %i.m, align 16    ; 2 uses
  %i.co = load <4 x float>, ptr %i.n, align 16    ; 3 uses
  %i.cp = load <4 x float>, ptr %3, align 16      ; 2 uses
  %i.cq = load <4 x float>, ptr %i.o, align 16    ; 3 uses
  %i.cr = load <4 x float>, ptr %i.p, align 16    ; 2 uses
  %i.cs = load <4 x float>, ptr %i.q, align 16    ; 3 uses
  %.sroa.1198.60.vec.extract = extractelement <4 x float> %i.co, i64 3
  %.sroa.095.12.vec.extract = extractelement <4 x float> %i.cl, i64 3 ; 4 uses
  %.sroa.596.28.vec.extract = extractelement <4 x float> %i.cm, i64 3
  %.sroa.897.44.vec.extract = extractelement <4 x float> %i.cn, i64 3 ; 4 uses
  %.sroa.1194.60.vec.extract = extractelement <4 x float> %i.cs, i64 3
  %.sroa.091.12.vec.extract = extractelement <4 x float> %i.cp, i64 3 ; 3 uses
  %.sroa.592.28.vec.extract = extractelement <4 x float> %i.cq, i64 3
  %.sroa.893.44.vec.extract = extractelement <4 x float> %i.cr, i64 3 ; 3 uses
  %i.ct = fmul float %.sroa.095.12.vec.extract, %.sroa.091.12.vec.extract
  %i.cu = call float @llvm.fmuladd.f32(float %.sroa.1198.60.vec.extract, float %.sroa.1194.60.vec.extract, float %i.ct)
  %i.cv = call float @llvm.fmuladd.f32(float %.sroa.596.28.vec.extract, float %.sroa.592.28.vec.extract, float %i.cu)
  %i.cw = call noundef float @llvm.fmuladd.f32(float %.sroa.897.44.vec.extract, float %.sroa.893.44.vec.extract, float %i.cv) ; 4 uses
  %i.cx = fneg float %.sroa.091.12.vec.extract
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
  %i.di = call noundef float @sqrtf(float noundef %i.dh) #24, !noalias !277
  %i.dj = fmul float %i.di, %i.dg
  %i.dk = fsub float f0x3FC90FDB, %i.dj           ; 2 uses
  %i.dl = fcmp olt float %i.dk, 0.000000e+00
  %i.dm = select i1 %i.dl, float 0.000000e+00, float %i.dk ; 2 uses
  %i.dn = fneg float %i.dm
  %i.do = fcmp olt float %i.cw, 0.000000e+00      ; 4 uses
  %i.dp = shufflevector <4 x float> %i.cs, <4 x float> %i.cq, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.dq = fneg <2 x float> %i.dp
  %i.dr = select i1 %i.do, float %i.cx, float %.sroa.091.12.vec.extract ; 2 uses
  %i.ds = insertelement <2 x i1> poison, i1 %i.do, i64 0
  %i.dt = shufflevector <2 x i1> %i.ds, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.du = select <2 x i1> %i.dt, <2 x float> %i.dq, <2 x float> %i.dp ; 2 uses
  %i.dv = select i1 %i.do, float %i.cy, float %.sroa.893.44.vec.extract ; 2 uses
  %i.dw = select i1 %i.do, float %i.cz, float %i.cw ; 5 uses
  %i.dx = fcmp olt float %i.dw, 0.000000e+00
  %i.dy = select i1 %i.dx, float %i.dn, float %i.dm
  %i.dz = fsub float f0x3FC90FDB, %i.dy
  %i.ea = select i1 %i.db, float +qnan, float %i.dz
  %i.eb = fneg float %i.dr
  %i.ec = call noundef float @llvm.fmuladd.f32(float %i.dw, float %.sroa.095.12.vec.extract, float %i.eb) ; 3 uses
  %i.ed = fneg <2 x float> %i.du
  %i.ee = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = shufflevector <4 x float> %i.co, <4 x float> %i.cm, <2 x i32> <i32 3, i32 7> ; 3 uses
  %i.eh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.eg, <2 x float> %i.ed) ; 3 uses
  %i.ei = fneg float %i.dv
  %i.ej = call noundef float @llvm.fmuladd.f32(float %i.dw, float %.sroa.897.44.vec.extract, float %i.ei) ; 3 uses
  %i.ek = fmul float %i.ec, %i.ec
  %i.el = extractelement <2 x float> %i.eh, i64 0 ; 2 uses
  %i.em = call float @llvm.fmuladd.f32(float %i.el, float %i.el, float %i.ek)
  %i.en = extractelement <2 x float> %i.eh, i64 1 ; 2 uses
  %i.eo = call float @llvm.fmuladd.f32(float %i.en, float %i.en, float %i.em)
  %i.ep = call float @llvm.fmuladd.f32(float %i.ej, float %i.ej, float %i.eo) ; 2 uses
  %i.eq = insertelement <4 x float> poison, float %i.ep, i64 0
  %i.er = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.eq) ; 3 uses
  %i.es = extractelement <4 x float> %i.er, i64 0 ; 2 uses
  %i.et = fmul float %i.es, 1.500000e+00
  %i.eu = fmul float %i.ep, 5.000000e-01
  %i.ev = fmul float %i.es, %i.eu
  %foldExtExtBinop = fmul <4 x float> %i.er, %i.er
  %i.ew = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ex = fmul float %i.ew, %i.ev
  %i.ey = fsub float %i.et, %i.ex
  %i.ez = fneg float %i.ey                        ; 3 uses
  %i.fa = fmul float %i.ec, %i.ez
  %i.fb = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x float> %i.eh, %i.fc
  %i.fe = fmul float %i.ej, %i.ez
  %i.ff = fcmp ogt float %i.dw, f0x3F7FDF3B       ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv765 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %indvars.iv765
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv765
  %.promoted = load float, ptr %i.fg, align 4
  %wide.trip.count = zext i32 %i.cg to i64
  %i.fj = insertelement <2 x i1> poison, i1 %i.ff, i64 0
  %i.fk = shufflevector <2 x i1> %i.fj, <2 x i1> poison, <2 x i32> zeroinitializer
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h
  store float %.sroa.speculated88, ptr %i.fg, align 4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %_ZN6embree16MotionDerivativeC2ERKNS_28MotionDerivativeCoefficientsEiRKNS_6Vec3faES6_.exit
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv765
  %i.fm = load float, ptr %i.fl, align 4
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv765
  %i.fo = load float, ptr %i.fn, align 4
  %i.fp = fsub float %i.fm, %i.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %13, ptr %10, align 8
  store float %i.fp, ptr %i.r, align 8
  call void @_ZN6embree16MotionDerivative9findRootsINS0_20EvalMotionDerivativeINS_8IntervalIfEEEEEEvRKT_RKS4_RjPfj(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull %i.c, i32 noundef 32)
  %i.fq = load i32, ptr %i.a, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not758 = icmp eq i32 %i.fq, 0
  br i1 %.not758, label %bb.i, label %.lr.ph750

.lr.ph750:                                        ; preds = %bb.g
  %i.fr = load <4 x float>, ptr %7, align 16, !noalias !278
  %i.fs = load <4 x float>, ptr %6, align 16, !noalias !279
  %i.ft = load <4 x float>, ptr %i.j, align 16, !noalias !280
  %i.fu = load <4 x float>, ptr %i.i, align 16, !noalias !281
  %i.fv = load <4 x float>, ptr %2, align 16      ; 2 uses
  %i.fw = load <4 x float>, ptr %i.l, align 16    ; 3 uses
  %i.fx = load <4 x float>, ptr %i.m, align 16    ; 2 uses
  %i.fy = load <4 x float>, ptr %i.n, align 16    ; 3 uses
  %i.fz = load <4 x float>, ptr %3, align 16      ; 2 uses
  %i.ga = load <4 x float>, ptr %i.o, align 16    ; 3 uses
  %i.gb = load <4 x float>, ptr %i.p, align 16    ; 2 uses
  %i.gc = load <4 x float>, ptr %i.q, align 16    ; 3 uses
  %.sroa.1176.60.vec.extract = extractelement <4 x float> %i.fy, i64 3
  %.sroa.073.12.vec.extract = extractelement <4 x float> %i.fv, i64 3 ; 4 uses
  %.sroa.574.28.vec.extract = extractelement <4 x float> %i.fw, i64 3
  %.sroa.875.44.vec.extract = extractelement <4 x float> %i.fx, i64 3 ; 4 uses
  %.sroa.11.60.vec.extract = extractelement <4 x float> %i.gc, i64 3
  %.sroa.072.12.vec.extract = extractelement <4 x float> %i.fz, i64 3 ; 3 uses
  %.sroa.5.28.vec.extract = extractelement <4 x float> %i.ga, i64 3
  %.sroa.8.44.vec.extract = extractelement <4 x float> %i.gb, i64 3 ; 3 uses
  %i.gd = fmul float %.sroa.073.12.vec.extract, %.sroa.072.12.vec.extract
  %i.ge = call float @llvm.fmuladd.f32(float %.sroa.1176.60.vec.extract, float %.sroa.11.60.vec.extract, float %i.gd)
  %i.gf = call float @llvm.fmuladd.f32(float %.sroa.574.28.vec.extract, float %.sroa.5.28.vec.extract, float %i.ge)
  %i.gg = call noundef float @llvm.fmuladd.f32(float %.sroa.875.44.vec.extract, float %.sroa.8.44.vec.extract, float %i.gf) ; 4 uses
  %i.gh = fneg float %.sroa.072.12.vec.extract
  %i.gi = fneg float %.sroa.8.44.vec.extract
  %i.gj = fneg float %i.gg
  %i.gk = call float @llvm.fabs.f32(float %i.gg)  ; 7 uses
  %i.gl = fcmp ogt float %i.gk, 1.000000e+00
  %i.gm = call float @llvm.fmuladd.f32(float %i.gk, float f0xBB8D3753, float 1.928030e-02)
  %i.gn = call float @llvm.fmuladd.f32(float %i.gk, float %i.gm, float f0xBD37E81C)
  %i.go = call float @llvm.fmuladd.f32(float %i.gk, float %i.gn, float f0x3DB3EDAC)
  %i.gp = call float @llvm.fmuladd.f32(float %i.gk, float %i.go, float f0xBE5BA881)
  %i.gq = call float @llvm.fmuladd.f32(float %i.gk, float %i.gp, float f0x3FC90FD1)
  %i.gr = fsub float 1.000000e+00, %i.gk
  %i.gs = call noundef float @sqrtf(float noundef %i.gr) #24, !noalias !282
  %i.gt = fmul float %i.gs, %i.gq
  %i.gu = fsub float f0x3FC90FDB, %i.gt           ; 2 uses
  %i.gv = fcmp olt float %i.gu, 0.000000e+00
  %i.gw = select i1 %i.gv, float 0.000000e+00, float %i.gu ; 2 uses
  %i.gx = fneg float %i.gw
  %i.gy = fcmp olt float %i.gg, 0.000000e+00      ; 4 uses
  %i.gz = shufflevector <4 x float> %i.gc, <4 x float> %i.ga, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.ha = fneg <2 x float> %i.gz
  %i.hb = select i1 %i.gy, float %i.gh, float %.sroa.072.12.vec.extract ; 2 uses
  %i.hc = insertelement <2 x i1> poison, i1 %i.gy, i64 0
  %i.hd = shufflevector <2 x i1> %i.hc, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.he = select <2 x i1> %i.hd, <2 x float> %i.ha, <2 x float> %i.gz ; 2 uses
  %i.hf = select i1 %i.gy, float %i.gi, float %.sroa.8.44.vec.extract ; 2 uses
  %i.hg = select i1 %i.gy, float %i.gj, float %i.gg ; 5 uses
  %i.hh = fcmp olt float %i.hg, 0.000000e+00
  %i.hi = select i1 %i.hh, float %i.gx, float %i.gw
  %i.hj = fsub float f0x3FC90FDB, %i.hi
  %i.hk = select i1 %i.gl, float +qnan, float %i.hj
  %i.hl = fneg float %i.hb
  %i.hm = call noundef float @llvm.fmuladd.f32(float %i.hg, float %.sroa.073.12.vec.extract, float %i.hl) ; 3 uses
  %i.hn = fneg <2 x float> %i.he
  %i.ho = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = shufflevector <4 x float> %i.fy, <4 x float> %i.fw, <2 x i32> <i32 3, i32 7> ; 3 uses
  %i.hr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.hq, <2 x float> %i.hn) ; 3 uses
  %i.hs = fneg float %i.hf
  %i.ht = call noundef float @llvm.fmuladd.f32(float %i.hg, float %.sroa.875.44.vec.extract, float %i.hs) ; 3 uses
  %i.hu = fmul float %i.hm, %i.hm
  %i.hv = extractelement <2 x float> %i.hr, i64 0 ; 2 uses
  %i.hw = call float @llvm.fmuladd.f32(float %i.hv, float %i.hv, float %i.hu)
  %i.hx = extractelement <2 x float> %i.hr, i64 1 ; 2 uses
  %i.hy = call float @llvm.fmuladd.f32(float %i.hx, float %i.hx, float %i.hw)
  %i.hz = call float @llvm.fmuladd.f32(float %i.ht, float %i.ht, float %i.hy) ; 2 uses
  %i.ia = insertelement <4 x float> poison, float %i.hz, i64 0
  %i.ib = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.ia) ; 3 uses
  %i.ic = extractelement <4 x float> %i.ib, i64 0 ; 2 uses
  %i.id = fmul float %i.ic, 1.500000e+00
  %i.ie = fmul float %i.hz, 5.000000e-01
  %i.if = fmul float %i.ic, %i.ie
  %foldExtExtBinop771 = fmul <4 x float> %i.ib, %i.ib
  %i.ig = extractelement <4 x float> %foldExtExtBinop771, i64 0
  %i.ih = fmul float %i.ig, %i.if
  %i.ii = fsub float %i.id, %i.ih
  %i.ij = fneg float %i.ii                        ; 3 uses
  %i.ik = fmul float %i.hm, %i.ij
  %i.il = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = fmul <2 x float> %i.hr, %i.im
  %i.io = fmul float %i.ht, %i.ij
  %i.ip = fcmp ogt float %i.hg, f0x3F7FDF3B       ; 3 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv765 ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv765
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv765
  %.promoted752 = load float, ptr %i.iq, align 4
  %wide.trip.count763 = zext i32 %i.fq to i64
  %i.it = insertelement <2 x i1> poison, i1 %i.ip, i64 0
  %i.iu = shufflevector <2 x i1> %i.it, <2 x i1> poison, <2 x i32> zeroinitializer
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.sroa.speculated88747 = phi float [ %.promoted, %.lr.ph ], [ %.sroa.speculated88, %bb.h ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.iw = load float, ptr %i.iv, align 4          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.ix = insertelement <4 x float> poison, float %i.iw, i64 0
  %i.iy = shufflevector <4 x float> %i.ix, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.iz = fmul <4 x float> %i.iy, %i.ch
  %i.ja = fmul <4 x float> %i.iy, %i.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.jb = fmul float %i.iw, %i.ea                 ; 2 uses
  %i.jc = fmul float %i.jb, f0x3F22F983
  %i.jd = call noundef float @llvm.floor.f32(float %i.jc) ; 2 uses
  %i.je = fptosi float %i.jd to i32               ; 3 uses
  %i.jf = fneg float %i.jd
  %18 = call float @llvm.fmuladd.f32(float %i.jf, float f0x3FC90FDB, float %i.jb) ; 3 uses
  %i.jg = and i32 %i.je, 3                        ; 2 uses
  %19 = and i32 %i.je, 1
  %20 = add nsw i32 %i.jg, -1
  %i.jh = fmul float %18, %18                     ; 10 uses
  %21 = call float @llvm.fmuladd.f32(float %i.jh, float f0xB2D70013, float f0x363938A8)
  %22 = call float @llvm.fmuladd.f32(float %i.jh, float f0xB48B634D, float f0x37CFAB9C)
  %23 = call float @llvm.fmuladd.f32(float %i.jh, float %21, float f0xB9501096)
  %i.ji = call float @llvm.fmuladd.f32(float %i.jh, float %22, float f0xBAB60981)
  %24 = call float @llvm.fmuladd.f32(float %i.jh, float %23, float f0x3C088898)
  %i.jj = call float @llvm.fmuladd.f32(float %i.jh, float %i.ji, float f0x3D2AAAA4)
  %25 = call float @llvm.fmuladd.f32(float %i.jh, float %24, float f0xBE2AAAAB)
  %26 = call float @llvm.fmuladd.f32(float %i.jh, float %i.jj, float -5.000000e-01)
  %27 = call float @llvm.fmuladd.f32(float %i.jh, float %25, float 1.000000e+00)
  %28 = call float @llvm.fmuladd.f32(float %i.jh, float %26, float 1.000000e+00) ; 2 uses
  %29 = fmul float %18, %27                       ; 2 uses
  %30 = trunc i32 %i.je to i1
  %31 = icmp eq i32 %19, 0
  %32 = fmul float %i.iw, %i.dr
  %33 = fmul float %i.iw, %i.dv
  %34 = fsub float 1.000000e+00, %i.iw            ; 4 uses
  %i.jk = insertelement <4 x float> poison, float %34, i64 0
  %35 = shufflevector <4 x float> %i.jk, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %36 = fmul <4 x float> %35, %i.ci
  %37 = fadd <4 x float> %i.iz, %36
  %38 = fmul <4 x float> %35, %i.ck
  %39 = fadd <4 x float> %i.ja, %38
  store <4 x float> %37, ptr %14, align 16
  store <4 x float> %39, ptr %i.k, align 16
  %i.jl = icmp samesign ugt i32 %i.jg, 1
  %i.jm = icmp ult i32 %20, 2
  %i.jn = select i1 %30, float %28, float %29     ; 2 uses
  %i.jo = select i1 %31, float %28, float %29     ; 2 uses
  %i.jp = fneg float %i.jn
  %i.jq = select i1 %i.jl, float %i.jp, float %i.jn ; 3 uses
  %i.jr = fneg float %i.jo
  %i.js = select i1 %i.jm, float %i.jr, float %i.jo ; 3 uses
  %i.jt = fmul float %i.fa, %i.jq
  %i.ju = call noundef float @llvm.fmuladd.f32(float %i.js, float %.sroa.095.12.vec.extract, float %i.jt)
  %i.jv = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = fmul <2 x float> %i.fd, %i.jw
  %i.jy = insertelement <2 x float> poison, float %i.js, i64 0
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ka = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jz, <2 x float> %i.eg, <2 x float> %i.jx)
  %i.kb = fmul float %i.fe, %i.jq
  %40 = call noundef float @llvm.fmuladd.f32(float %i.js, float %.sroa.897.44.vec.extract, float %i.kb)
  %i.kc = call noundef float @llvm.fmuladd.f32(float %34, float %.sroa.095.12.vec.extract, float %32) ; 3 uses
  %i.kd = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kf = fmul <2 x float> %i.ke, %i.du
  %i.kg = insertelement <2 x float> poison, float %34, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ki = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kh, <2 x float> %i.eg, <2 x float> %i.kf) ; 3 uses
  %41 = call noundef float @llvm.fmuladd.f32(float %34, float %.sroa.897.44.vec.extract, float %33) ; 3 uses
  %42 = fmul float %i.kc, %i.kc
  %i.kj = extractelement <2 x float> %i.ki, i64 0 ; 2 uses
  %i.kk = call float @llvm.fmuladd.f32(float %i.kj, float %i.kj, float %42)
  %i.kl = extractelement <2 x float> %i.ki, i64 1 ; 2 uses
  %43 = call float @llvm.fmuladd.f32(float %i.kl, float %i.kl, float %i.kk)
  %i.km = call float @llvm.fmuladd.f32(float %41, float %41, float %43) ; 2 uses
  %i.kn = insertelement <4 x float> poison, float %i.km, i64 0
  %i.ko = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.kn) ; 3 uses
  %i.kp = extractelement <4 x float> %i.ko, i64 0 ; 2 uses
  %i.kq = fmul float %i.kp, 1.500000e+00
  %i.kr = fmul float %i.km, 5.000000e-01
  %i.ks = fmul float %i.kp, %i.kr
  %foldExtExtBinop773 = fmul <4 x float> %i.ko, %i.ko
  %i.kt = extractelement <4 x float> %foldExtExtBinop773, i64 0
  %i.ku = fmul float %i.kt, %i.ks
  %i.kv = fsub float %i.kq, %i.ku                 ; 3 uses
  %i.kw = fmul float %i.kc, %i.kv
  %i.kx = insertelement <2 x float> poison, float %i.kv, i64 0
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kz = fmul <2 x float> %i.ki, %i.ky
  %i.la = fmul float %41, %i.kv
  %i.lb = select i1 %i.ff, float %i.kw, float %i.ju ; 9 uses
  %i.lc = select <2 x i1> %i.fk, <2 x float> %i.kz, <2 x float> %i.ka ; 2 uses
  %i.ld = select i1 %i.ff, float %i.la, float %40 ; 10 uses
  %i.le = fmul <4 x float> %i.iy, %i.cp
  %i.lf = fmul <4 x float> %35, %i.cl
  %i.lg = fadd <4 x float> %i.lf, %i.le           ; 2 uses
  %i.lh = fmul <4 x float> %i.iy, %i.cq
  %i.li = fmul <4 x float> %35, %i.cm
  %i.lj = fadd <4 x float> %i.li, %i.lh           ; 3 uses
  %i.lk = fmul <4 x float> %i.iy, %i.cr
  %i.ll = fmul <4 x float> %35, %i.cn
  %i.lm = fadd <4 x float> %i.ll, %i.lk           ; 3 uses
  %i.ln = fmul <4 x float> %i.iy, %i.cs
  %i.lo = fmul <4 x float> %35, %i.co
  %i.lp = fadd <4 x float> %i.lo, %i.ln           ; 3 uses
  %.sroa.17314.52.vec.insert = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.lg, <4 x i32> <i32 5, i32 6, i32 poison, i32 3>
  %.sroa.17314.56.vec.insert = shufflevector <4 x float> %.sroa.17314.52.vec.insert, <4 x float> %i.lj, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.lq = fmul float %i.lb, %i.lb
  %i.lr = extractelement <2 x float> %i.lc, i64 0 ; 10 uses
  %i.ls = call float @llvm.fmuladd.f32(float %i.lr, float %i.lr, float %i.lq)
  %i.lt = extractelement <2 x float> %i.lc, i64 1 ; 10 uses
  %i.lu = fneg float %i.lt                        ; 3 uses
  %i.lv = call float @llvm.fmuladd.f32(float %i.lu, float %i.lt, float %i.ls)
  %i.lw = fneg float %i.ld                        ; 3 uses
  %i.lx = call float @llvm.fmuladd.f32(float %i.lw, float %i.ld, float %i.lv)
  %i.ly = fmul float %i.lr, %i.ld
  %i.lz = call float @llvm.fmuladd.f32(float %i.lb, float %i.lt, float %i.ly)
  %i.ma = fmul float %i.lz, 2.000000e+00
  %i.mb = fmul float %i.lr, %i.lu
  %i.mc = call float @llvm.fmuladd.f32(float %i.lb, float %i.ld, float %i.mb)
  %i.md = fmul float %i.mc, 2.000000e+00
  %i.me = fmul float %i.lr, %i.lw
  %i.mf = call float @llvm.fmuladd.f32(float %i.lb, float %i.lt, float %i.me)
  %i.mg = fmul float %i.mf, 2.000000e+00
  %i.mh = fneg float %i.lb                        ; 2 uses
  %i.mi = fmul float %i.lb, %i.mh
  %i.mj = call float @llvm.fmuladd.f32(float %i.lr, float %i.lr, float %i.mi) ; 2 uses
  %i.mk = call float @llvm.fmuladd.f32(float %i.lt, float %i.lt, float %i.mj)
  %i.ml = call float @llvm.fmuladd.f32(float %i.lw, float %i.ld, float %i.mk)
  %i.mm = fmul float %i.lr, %i.lb
  %i.mn = call float @llvm.fmuladd.f32(float %i.lt, float %i.ld, float %i.mm)
  %i.mo = fmul float %i.mn, 2.000000e+00
  %i.mp = fmul float %i.lr, %i.lt
  %i.mq = call float @llvm.fmuladd.f32(float %i.lb, float %i.ld, float %i.mp)
  %i.mr = fmul float %i.mq, 2.000000e+00
  %i.ms = fmul float %i.lr, %i.mh
  %i.mt = call float @llvm.fmuladd.f32(float %i.lt, float %i.ld, float %i.ms)
  %i.mu = fmul float %i.mt, 2.000000e+00
  %i.mv = call float @llvm.fmuladd.f32(float %i.lu, float %i.lt, float %i.mj)
  %i.mw = call float @llvm.fmuladd.f32(float %i.ld, float %i.ld, float %i.mv)
  %i.mx = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mz = insertelement <4 x float> poison, float %i.ma, i64 0
  %i.na = shufflevector <4 x float> %i.mz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nb = insertelement <4 x float> poison, float %i.md, i64 0
  %i.nc = shufflevector <4 x float> %i.nb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nd = fmul <4 x float> %i.nc, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.ne = fmul <4 x float> %i.na, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.nf = fadd <4 x float> %i.ne, %i.nd
  %i.ng = fmul <4 x float> %i.my, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.nh = fadd <4 x float> %i.ng, %i.nf           ; 4 uses
  %i.ni = insertelement <4 x float> poison, float %i.mg, i64 0
  %i.nj = shufflevector <4 x float> %i.ni, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nk = insertelement <4 x float> poison, float %i.ml, i64 0
  %i.nl = shufflevector <4 x float> %i.nk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nm = insertelement <4 x float> poison, float %i.mo, i64 0
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.no = fmul <4 x float> %i.nn, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.np = fmul <4 x float> %i.nl, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.nq = fadd <4 x float> %i.no, %i.np
  %i.nr = fmul <4 x float> %i.nj, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ns = fadd <4 x float> %i.nr, %i.nq           ; 4 uses
  %i.nt = insertelement <4 x float> poison, float %i.mr, i64 0
  %i.nu = shufflevector <4 x float> %i.nt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nv = insertelement <4 x float> poison, float %i.mu, i64 0
  %i.nw = shufflevector <4 x float> %i.nv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nx = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.ny = shufflevector <4 x float> %i.nx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nz = fmul <4 x float> %i.ny, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.oa = fmul <4 x float> %i.nw, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ob = fadd <4 x float> %i.oa, %i.nz
  %i.oc = fmul <4 x float> %i.nu, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.od = fadd <4 x float> %i.oc, %i.ob           ; 3 uses
  %i.oe = fadd <4 x float> %.sroa.17314.56.vec.insert, zeroinitializer
  %i.of = shufflevector <4 x float> %i.lg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.og = fmul <4 x float> %i.od, zeroinitializer ; 2 uses
  %i.oh = fmul <4 x float> %i.ns, zeroinitializer
  %i.oi = fadd ninf <4 x float> %i.oh, %i.og
  %i.oj = fmul <4 x float> %i.of, %i.nh
  %i.ok = fadd <4 x float> %i.oj, %i.oi
  %i.ol = shufflevector <4 x float> %i.lj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.om = shufflevector <4 x float> %i.lj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.on = fmul <4 x float> %i.om, %i.ns
  %i.oo = fadd <4 x float> %i.on, %i.og
  %i.op = fmul <4 x float> %i.ol, %i.nh
  %i.oq = fadd <4 x float> %i.op, %i.oo
  %i.or = shufflevector <4 x float> %i.lm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.os = shufflevector <4 x float> %i.lm, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ot = shufflevector <4 x float> %i.lm, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ou = fmul <4 x float> %i.ot, %i.od
  %i.ov = fmul <4 x float> %i.os, %i.ns
  %i.ow = fadd <4 x float> %i.ov, %i.ou
  %i.ox = fmul <4 x float> %i.or, %i.nh
  %i.oy = fadd <4 x float> %i.ox, %i.ow
  %i.oz = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pa = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.pb = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.pc = fmul <4 x float> %i.pb, %i.od
  %i.pd = fmul <4 x float> %i.pa, %i.ns
  %i.pe = fadd <4 x float> %i.pd, %i.pc
  %i.pf = fmul <4 x float> %i.oz, %i.nh
  %i.pg = fadd <4 x float> %i.pf, %i.pe
  %i.ph = fadd <4 x float> %i.oe, %i.pg
  %i.pi = fmul <4 x float> %i.ai, %i.iy
  %i.pj = fmul <4 x float> %i.ac, %35
  %i.pk = fadd <4 x float> %i.pi, %i.pj           ; 3 uses
  %i.pl = shufflevector <4 x float> %i.pk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pm = shufflevector <4 x float> %i.pk, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.pn = shufflevector <4 x float> %i.pk, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.po = fmul <4 x float> %i.pn, %i.oy
  %i.pp = fadd <4 x float> %i.po, %i.ph
  %i.pq = fmul <4 x float> %i.pm, %i.oq
  %i.pr = fadd <4 x float> %i.pq, %i.pp
  %i.ps = fmul <4 x float> %i.pl, %i.ok
  %i.pt = fadd <4 x float> %i.ps, %i.pr
  store <4 x float> %i.pt, ptr %15, align 16, !alias.scope !283
  %i.pu = load float, ptr %i.fh, align 4
  %i.pv = load float, ptr %i.fi, align 4
  %i.pw = fsub float %i.pu, %i.pv                 ; 2 uses
  %i.px = fcmp olt float %i.pw, %.sroa.speculated88747
  %.sroa.speculated88 = select i1 %i.px, float %i.pw, float %.sroa.speculated88747 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !266

._crit_edge751:                                   ; preds = %bb.j
  store float %.sroa.speculated, ptr %i.iq, align 4
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge751, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %indvars.iv.next766 = add nuw nsw i64 %indvars.iv765, 1 ; 2 uses
  %exitcond768.not = icmp eq i64 %indvars.iv.next766, 3
  br i1 %exitcond768.not, label %bb.f, label %_ZN6embree16MotionDerivativeC2ERKNS_28MotionDerivativeCoefficientsEiRKNS_6Vec3faES6_.exit, !llvm.loop !267

bb.j:                                             ; preds = %.lr.ph750, %bb.j
  %indvars.iv760 = phi i64 [ 0, %.lr.ph750 ], [ %indvars.iv.next761, %bb.j ] ; 2 uses
  %.sroa.speculated753 = phi float [ %.promoted752, %.lr.ph750 ], [ %.sroa.speculated, %bb.j ] ; 2 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv760
  %i.pz = load float, ptr %i.py, align 4          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.qa = insertelement <4 x float> poison, float %i.pz, i64 0
  %i.qb = shufflevector <4 x float> %i.qa, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.qc = fmul <4 x float> %i.qb, %i.fr
  %i.qd = fmul <4 x float> %i.qb, %i.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.qe = fmul float %i.pz, %i.hk                 ; 2 uses
  %i.qf = fmul float %i.qe, f0x3F22F983
  %i.qg = call noundef float @llvm.floor.f32(float %i.qf) ; 2 uses
  %i.qh = fptosi float %i.qg to i32               ; 3 uses
  %i.qi = fneg float %i.qg
  %44 = call float @llvm.fmuladd.f32(float %i.qi, float f0x3FC90FDB, float %i.qe) ; 3 uses
  %i.qj = and i32 %i.qh, 3                        ; 2 uses
  %45 = and i32 %i.qh, 1
  %46 = add nsw i32 %i.qj, -1
  %i.qk = fmul float %44, %44                     ; 10 uses
  %47 = call float @llvm.fmuladd.f32(float %i.qk, float f0xB2D70013, float f0x363938A8)
  %48 = call float @llvm.fmuladd.f32(float %i.qk, float f0xB48B634D, float f0x37CFAB9C)
  %49 = call float @llvm.fmuladd.f32(float %i.qk, float %47, float f0xB9501096)
  %i.ql = call float @llvm.fmuladd.f32(float %i.qk, float %48, float f0xBAB60981)
  %50 = call float @llvm.fmuladd.f32(float %i.qk, float %49, float f0x3C088898)
  %i.qm = call float @llvm.fmuladd.f32(float %i.qk, float %i.ql, float f0x3D2AAAA4)
  %51 = call float @llvm.fmuladd.f32(float %i.qk, float %50, float f0xBE2AAAAB)
  %52 = call float @llvm.fmuladd.f32(float %i.qk, float %i.qm, float -5.000000e-01)
  %53 = call float @llvm.fmuladd.f32(float %i.qk, float %51, float 1.000000e+00)
  %54 = call float @llvm.fmuladd.f32(float %i.qk, float %52, float 1.000000e+00) ; 2 uses
  %55 = fmul float %44, %53                       ; 2 uses
  %56 = trunc i32 %i.qh to i1
  %57 = icmp eq i32 %45, 0
  %58 = fmul float %i.pz, %i.hb
  %59 = fmul float %i.pz, %i.hf
  %60 = fsub float 1.000000e+00, %i.pz            ; 4 uses
  %i.qn = insertelement <4 x float> poison, float %60, i64 0
  %61 = shufflevector <4 x float> %i.qn, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %62 = fmul <4 x float> %61, %i.fs
  %63 = fadd <4 x float> %i.qc, %62
  %64 = fmul <4 x float> %61, %i.fu
  %65 = fadd <4 x float> %i.qd, %64
  store <4 x float> %63, ptr %16, align 16
  store <4 x float> %65, ptr %i.s, align 16
  %i.qo = icmp samesign ugt i32 %i.qj, 1
  %i.qp = icmp ult i32 %46, 2
  %i.qq = select i1 %56, float %54, float %55     ; 2 uses
  %i.qr = select i1 %57, float %54, float %55     ; 2 uses
  %i.qs = fneg float %i.qq
  %i.qt = select i1 %i.qo, float %i.qs, float %i.qq ; 3 uses
  %i.qu = fneg float %i.qr
  %i.qv = select i1 %i.qp, float %i.qu, float %i.qr ; 3 uses
  %i.qw = fmul float %i.ik, %i.qt
  %i.qx = call noundef float @llvm.fmuladd.f32(float %i.qv, float %.sroa.073.12.vec.extract, float %i.qw)
  %i.qy = insertelement <2 x float> poison, float %i.qt, i64 0
  %i.qz = shufflevector <2 x float> %i.qy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ra = fmul <2 x float> %i.in, %i.qz
  %i.rb = insertelement <2 x float> poison, float %i.qv, i64 0
  %i.rc = shufflevector <2 x float> %i.rb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rc, <2 x float> %i.hq, <2 x float> %i.ra)
  %i.re = fmul float %i.io, %i.qt
  %66 = call noundef float @llvm.fmuladd.f32(float %i.qv, float %.sroa.875.44.vec.extract, float %i.re)
  %i.rf = call noundef float @llvm.fmuladd.f32(float %60, float %.sroa.073.12.vec.extract, float %58) ; 3 uses
  %i.rg = insertelement <2 x float> poison, float %i.pz, i64 0
  %i.rh = shufflevector <2 x float> %i.rg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ri = fmul <2 x float> %i.rh, %i.he
  %i.rj = insertelement <2 x float> poison, float %60, i64 0
  %i.rk = shufflevector <2 x float> %i.rj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rk, <2 x float> %i.hq, <2 x float> %i.ri) ; 3 uses
  %67 = call noundef float @llvm.fmuladd.f32(float %60, float %.sroa.875.44.vec.extract, float %59) ; 3 uses
  %68 = fmul float %i.rf, %i.rf
  %i.rm = extractelement <2 x float> %i.rl, i64 0 ; 2 uses
  %i.rn = call float @llvm.fmuladd.f32(float %i.rm, float %i.rm, float %68)
  %i.ro = extractelement <2 x float> %i.rl, i64 1 ; 2 uses
  %69 = call float @llvm.fmuladd.f32(float %i.ro, float %i.ro, float %i.rn)
  %i.rp = call float @llvm.fmuladd.f32(float %67, float %67, float %69) ; 2 uses
  %i.rq = insertelement <4 x float> poison, float %i.rp, i64 0
  %i.rr = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.rq) ; 3 uses
  %i.rs = extractelement <4 x float> %i.rr, i64 0 ; 2 uses
  %i.rt = fmul float %i.rs, 1.500000e+00
  %i.ru = fmul float %i.rp, 5.000000e-01
  %i.rv = fmul float %i.rs, %i.ru
  %foldExtExtBinop775 = fmul <4 x float> %i.rr, %i.rr
  %i.rw = extractelement <4 x float> %foldExtExtBinop775, i64 0
  %i.rx = fmul float %i.rw, %i.rv
  %i.ry = fsub float %i.rt, %i.rx                 ; 3 uses
  %i.rz = fmul float %i.rf, %i.ry
  %i.sa = insertelement <2 x float> poison, float %i.ry, i64 0
  %i.sb = shufflevector <2 x float> %i.sa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sc = fmul <2 x float> %i.rl, %i.sb
  %i.sd = fmul float %67, %i.ry
  %i.se = select i1 %i.ip, float %i.rz, float %i.qx ; 9 uses
  %i.sf = select <2 x i1> %i.iu, <2 x float> %i.sc, <2 x float> %i.rd ; 2 uses
  %i.sg = select i1 %i.ip, float %i.sd, float %66 ; 10 uses
  %i.sh = fmul <4 x float> %i.qb, %i.fz
  %i.si = fmul <4 x float> %61, %i.fv
  %i.sj = fadd <4 x float> %i.si, %i.sh           ; 2 uses
  %i.sk = fmul <4 x float> %i.qb, %i.ga
  %i.sl = fmul <4 x float> %61, %i.fw
  %i.sm = fadd <4 x float> %i.sl, %i.sk           ; 3 uses
  %i.sn = fmul <4 x float> %i.qb, %i.gb
  %i.so = fmul <4 x float> %61, %i.fx
  %i.sp = fadd <4 x float> %i.so, %i.sn           ; 3 uses
  %i.sq = fmul <4 x float> %i.qb, %i.gc
  %i.sr = fmul <4 x float> %61, %i.fy
  %i.ss = fadd <4 x float> %i.sr, %i.sq           ; 3 uses
  %.sroa.17152.52.vec.insert = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.sj, <4 x i32> <i32 5, i32 6, i32 poison, i32 3>
  %.sroa.17152.56.vec.insert = shufflevector <4 x float> %.sroa.17152.52.vec.insert, <4 x float> %i.sm, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.st = fmul float %i.se, %i.se
  %i.su = extractelement <2 x float> %i.sf, i64 0 ; 10 uses
  %i.sv = call float @llvm.fmuladd.f32(float %i.su, float %i.su, float %i.st)
  %i.sw = extractelement <2 x float> %i.sf, i64 1 ; 10 uses
  %i.sx = fneg float %i.sw                        ; 3 uses
  %i.sy = call float @llvm.fmuladd.f32(float %i.sx, float %i.sw, float %i.sv)
  %i.sz = fneg float %i.sg                        ; 3 uses
  %i.ta = call float @llvm.fmuladd.f32(float %i.sz, float %i.sg, float %i.sy)
  %i.tb = fmul float %i.su, %i.sg
  %i.tc = call float @llvm.fmuladd.f32(float %i.se, float %i.sw, float %i.tb)
  %i.td = fmul float %i.tc, 2.000000e+00
  %i.te = fmul float %i.su, %i.sx
  %i.tf = call float @llvm.fmuladd.f32(float %i.se, float %i.sg, float %i.te)
  %i.tg = fmul float %i.tf, 2.000000e+00
  %i.th = fmul float %i.su, %i.sz
  %i.ti = call float @llvm.fmuladd.f32(float %i.se, float %i.sw, float %i.th)
  %i.tj = fmul float %i.ti, 2.000000e+00
  %i.tk = fneg float %i.se                        ; 2 uses
  %i.tl = fmul float %i.se, %i.tk
  %i.tm = call float @llvm.fmuladd.f32(float %i.su, float %i.su, float %i.tl) ; 2 uses
  %i.tn = call float @llvm.fmuladd.f32(float %i.sw, float %i.sw, float %i.tm)
  %i.to = call float @llvm.fmuladd.f32(float %i.sz, float %i.sg, float %i.tn)
  %i.tp = fmul float %i.su, %i.se
  %i.tq = call float @llvm.fmuladd.f32(float %i.sw, float %i.sg, float %i.tp)
  %i.tr = fmul float %i.tq, 2.000000e+00
  %i.ts = fmul float %i.su, %i.sw
  %i.tt = call float @llvm.fmuladd.f32(float %i.se, float %i.sg, float %i.ts)
  %i.tu = fmul float %i.tt, 2.000000e+00
  %i.tv = fmul float %i.su, %i.tk
  %i.tw = call float @llvm.fmuladd.f32(float %i.sw, float %i.sg, float %i.tv)
  %i.tx = fmul float %i.tw, 2.000000e+00
  %i.ty = call float @llvm.fmuladd.f32(float %i.sx, float %i.sw, float %i.tm)
  %i.tz = call float @llvm.fmuladd.f32(float %i.sg, float %i.sg, float %i.ty)
  %i.ua = insertelement <4 x float> poison, float %i.ta, i64 0
  %i.ub = shufflevector <4 x float> %i.ua, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uc = insertelement <4 x float> poison, float %i.td, i64 0
  %i.ud = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ue = insertelement <4 x float> poison, float %i.tg, i64 0
  %i.uf = shufflevector <4 x float> %i.ue, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ug = fmul <4 x float> %i.uf, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.uh = fmul <4 x float> %i.ud, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ui = fadd <4 x float> %i.uh, %i.ug
  %i.uj = fmul <4 x float> %i.ub, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.uk = fadd <4 x float> %i.uj, %i.ui           ; 4 uses
  %i.ul = insertelement <4 x float> poison, float %i.tj, i64 0
  %i.um = shufflevector <4 x float> %i.ul, <4 x float> poison, <4 x i32> zeroinitializer
  %i.un = insertelement <4 x float> poison, float %i.to, i64 0
  %i.uo = shufflevector <4 x float> %i.un, <4 x float> poison, <4 x i32> zeroinitializer
  %i.up = insertelement <4 x float> poison, float %i.tr, i64 0
  %i.uq = shufflevector <4 x float> %i.up, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ur = fmul <4 x float> %i.uq, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.us = fmul <4 x float> %i.uo, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ut = fadd <4 x float> %i.ur, %i.us
  %i.uu = fmul <4 x float> %i.um, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.uv = fadd <4 x float> %i.uu, %i.ut           ; 4 uses
  %i.uw = insertelement <4 x float> poison, float %i.tu, i64 0
  %i.ux = shufflevector <4 x float> %i.uw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uy = insertelement <4 x float> poison, float %i.tx, i64 0
  %i.uz = shufflevector <4 x float> %i.uy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.va = insertelement <4 x float> poison, float %i.tz, i64 0
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vc = fmul <4 x float> %i.vb, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.vd = fmul <4 x float> %i.uz, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ve = fadd <4 x float> %i.vd, %i.vc
  %i.vf = fmul <4 x float> %i.ux, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.vg = fadd <4 x float> %i.vf, %i.ve           ; 3 uses
  %i.vh = fadd <4 x float> %.sroa.17152.56.vec.insert, zeroinitializer
  %i.vi = shufflevector <4 x float> %i.sj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vj = fmul <4 x float> %i.vg, zeroinitializer ; 2 uses
  %i.vk = fmul <4 x float> %i.uv, zeroinitializer
  %i.vl = fadd ninf <4 x float> %i.vk, %i.vj
  %i.vm = fmul <4 x float> %i.vi, %i.uk
  %i.vn = fadd <4 x float> %i.vm, %i.vl
  %i.vo = shufflevector <4 x float> %i.sm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vp = shufflevector <4 x float> %i.sm, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.vq = fmul <4 x float> %i.vp, %i.uv
  %i.vr = fadd <4 x float> %i.vq, %i.vj
  %i.vs = fmul <4 x float> %i.vo, %i.uk
  %i.vt = fadd <4 x float> %i.vs, %i.vr
  %i.vu = shufflevector <4 x float> %i.sp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vv = shufflevector <4 x float> %i.sp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.vw = shufflevector <4 x float> %i.sp, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.vx = fmul <4 x float> %i.vw, %i.vg
  %i.vy = fmul <4 x float> %i.vv, %i.uv
  %i.vz = fadd <4 x float> %i.vy, %i.vx
  %i.wa = fmul <4 x float> %i.vu, %i.uk
  %i.wb = fadd <4 x float> %i.wa, %i.vz
  %i.wc = shufflevector <4 x float> %i.ss, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wd = shufflevector <4 x float> %i.ss, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.we = shufflevector <4 x float> %i.ss, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.wf = fmul <4 x float> %i.we, %i.vg
  %i.wg = fmul <4 x float> %i.wd, %i.uv
  %i.wh = fadd <4 x float> %i.wg, %i.wf
  %i.wi = fmul <4 x float> %i.wc, %i.uk
  %i.wj = fadd <4 x float> %i.wi, %i.wh
  %i.wk = fadd <4 x float> %i.vh, %i.wj
  %i.wl = fmul <4 x float> %i.ai, %i.qb
  %i.wm = fmul <4 x float> %i.ac, %61
  %i.wn = fadd <4 x float> %i.wl, %i.wm           ; 3 uses
  %i.wo = shufflevector <4 x float> %i.wn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wp = shufflevector <4 x float> %i.wn, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.wq = shufflevector <4 x float> %i.wn, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.wr = fmul <4 x float> %i.wq, %i.wb
  %i.ws = fadd <4 x float> %i.wr, %i.wk
  %i.wt = fmul <4 x float> %i.wp, %i.vt
  %i.wu = fadd <4 x float> %i.wt, %i.ws
  %i.wv = fmul <4 x float> %i.wo, %i.vn
  %i.ww = fadd <4 x float> %i.wv, %i.wu
  store <4 x float> %i.ww, ptr %17, align 16, !alias.scope !284
  %i.wx = load float, ptr %i.ir, align 4
  %i.wy = load float, ptr %i.is, align 4
  %i.wz = fsub float %i.wx, %i.wy                 ; 2 uses
  %i.xa = fcmp olt float %.sroa.speculated753, %i.wz
  %.sroa.speculated = select i1 %i.xa, float %i.wz, float %.sroa.speculated753 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %indvars.iv.next761 = add nuw nsw i64 %indvars.iv760, 1 ; 2 uses
  %exitcond764.not = icmp eq i64 %indvars.iv.next761, %wide.trip.count763
  br i1 %exitcond764.not, label %._crit_edge751, label %bb.j, !llvm.loop !272
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6embree13InstanceArray15nonlinearBoundsEmRKNS_4BBoxIfEES4_f(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.embree::LBBox") align 16 captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 16 dereferenceable(200) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, float noundef %5) local_unnamed_addr #12 align 2 {
bb.a:
  %6 = alloca %"struct.embree::BBox.13", align 16 ; 5 uses
  %7 = alloca %"struct.embree::BBox.13", align 16 ; 5 uses
  %8 = alloca %"struct.embree::BBox.13", align 16 ; 6 uses
  %9 = alloca %"struct.embree::BBox.13", align 16 ; 5 uses
  %10 = alloca %"struct.embree::BBox.13", align 16 ; 5 uses
  %11 = alloca %"struct.embree::BBox.13", align 16 ; 9 uses
  %12 = alloca %"struct.embree::BBox.13", align 16 ; 9 uses
  %13 = alloca %"struct.embree::BBox.13", align 16 ; 11 uses
  %14 = alloca %"struct.embree::BBox.13", align 16 ; 9 uses
  %15 = alloca %"struct.embree::BBox.13", align 16 ; 9 uses
  store <4 x float> splat (float +inf), ptr %0, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store <4 x float> splat (float -inf), ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store <4 x float> splat (float +inf), ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store <4 x float> splat (float -inf), ptr %i.c, align 16
  %i.d = load float, ptr %4, align 4              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = load float, ptr %i.e, align 4
  %i.g = fsub float %i.f, %i.d
  %i.h = load <2 x float>, ptr %3, align 4
  %i.i = insertelement <2 x float> poison, float %i.d, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fsub <2 x float> %i.h, %i.j
  %i.l = insertelement <2 x float> poison, float %i.g, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fdiv <2 x float> %i.k, %i.m              ; 4 uses
  %i.o = extractelement <2 x float> %i.n, i64 0   ; 5 uses
  %i.p = fmul float %5, %i.o                      ; 3 uses
  %i.q = extractelement <2 x float> %i.n, i64 1   ; 4 uses
  %i.r = fmul float %5, %i.q                      ; 3 uses
  %i.s = tail call noundef float @llvm.floor.f32(float %i.p) ; 3 uses
  %i.t = tail call noundef float @llvm.ceil.f32(float %i.r) ; 3 uses
  %i.u = fcmp ogt float %i.s, 0.000000e+00
  %i.v = select i1 %i.u, float %i.s, float 0.000000e+00 ; 3 uses
  %i.w = fcmp olt float %i.t, %5
  %i.x = select i1 %i.w, float %i.t, float %5     ; 3 uses
  %i.y = fptosi float %i.v to i32                 ; 6 uses
  %i.z = fptosi float %i.x to i32                 ; 6 uses
  %i.aa = fptosi float %i.s to i32
  %i.ab = tail call noundef i32 @llvm.smax.i32(i32 %i.aa, i32 -1) ; 2 uses
  %i.ac = fptosi float %i.t to i32
  %i.ad = fptosi float %5 to i32
  %i.ae = add nsw i32 %i.ad, 1
  %i.af = tail call noundef i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ae) ; 6 uses
  %i.ag = sub nsw i32 %i.af, %i.ab
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.b, label %bb.aw

bb.b:                                             ; preds = %bb.a
  %i.ai = uitofp nneg i32 %i.y to float           ; 6 uses
  %i.aj = fsub float %i.q, %i.o                   ; 2 uses
  %i.ak = sitofp i32 %i.z to float                ; 6 uses
  %i.al = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.ak, i64 1
  %i.an = insertelement <2 x float> poison, float %5, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fdiv <2 x float> %i.am, %i.ao
  %i.aq = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fsub <2 x float> %i.ap, %i.aq           ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
end_hunk_0
