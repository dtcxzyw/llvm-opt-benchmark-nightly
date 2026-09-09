Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_instance_array?download=true
inline.NumInlined: 398
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6embree28MotionDerivativeCoefficientsC2ERKNS_12AffineSpaceTINS_12LinearSpace3INS_6Vec3fxEEEEES7_:bb.a
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
  %.sroa.1194.60.vec.extract = extractelement <4 x float> %i.cs, i64 3 ; 2 uses
  %.sroa.091.12.vec.extract = extractelement <4 x float> %i.cp, i64 3 ; 3 uses
  %.sroa.592.28.vec.extract = extractelement <4 x float> %i.cq, i64 3 ; 2 uses
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
  %18 = fneg float %.sroa.592.28.vec.extract
  %19 = fneg float %.sroa.1194.60.vec.extract
  %i.dp = select i1 %i.do, float %i.cx, float %.sroa.091.12.vec.extract ; 2 uses
  %i.dq = insertelement <2 x i1> poison, i1 %i.do, i64 0
  %i.dr = shufflevector <2 x i1> %i.dq, <2 x i1> poison, <2 x i32> zeroinitializer
  %20 = insertelement <2 x float> poison, float %19, i64 0
  %21 = insertelement <2 x float> %20, float %18, i64 1
  %22 = shufflevector <4 x float> %i.cs, <4 x float> %i.cq, <2 x i32> <i32 3, i32 7>
  %i.ds = select <2 x i1> %i.dr, <2 x float> %21, <2 x float> %22 ; 2 uses
  %i.dt = select i1 %i.do, float %i.cy, float %.sroa.893.44.vec.extract ; 2 uses
  %i.du = select i1 %i.do, float %i.cz, float %i.cw ; 5 uses
  %i.dv = fcmp olt float %i.du, 0.000000e+00
  %i.dw = select i1 %i.dv, float %i.dn, float %i.dm
  %i.dx = fsub float f0x3FC90FDB, %i.dw
  %i.dy = select i1 %i.db, float +qnan, float %i.dx
  %i.dz = fneg float %i.dp
  %i.ea = call noundef float @llvm.fmuladd.f32(float %i.du, float %.sroa.095.12.vec.extract, float %i.dz) ; 3 uses
  %i.eb = fneg <2 x float> %i.ds
  %i.ec = insertelement <2 x float> poison, float %i.du, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = shufflevector <4 x float> %i.co, <4 x float> %i.cm, <2 x i32> <i32 3, i32 7> ; 3 uses
  %i.ef = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.ee, <2 x float> %i.eb) ; 3 uses
  %i.eg = fneg float %i.dt
  %i.eh = call noundef float @llvm.fmuladd.f32(float %i.du, float %.sroa.897.44.vec.extract, float %i.eg) ; 3 uses
  %i.ei = fmul float %i.ea, %i.ea
  %i.ej = extractelement <2 x float> %i.ef, i64 0 ; 2 uses
  %i.ek = call float @llvm.fmuladd.f32(float %i.ej, float %i.ej, float %i.ei)
  %i.el = extractelement <2 x float> %i.ef, i64 1 ; 2 uses
  %i.em = call float @llvm.fmuladd.f32(float %i.el, float %i.el, float %i.ek)
  %i.en = call float @llvm.fmuladd.f32(float %i.eh, float %i.eh, float %i.em) ; 2 uses
  %i.eo = insertelement <4 x float> poison, float %i.en, i64 0
  %i.ep = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.eo) ; 3 uses
  %i.eq = extractelement <4 x float> %i.ep, i64 0 ; 2 uses
  %i.er = fmul float %i.eq, 1.500000e+00
  %i.es = fmul float %i.en, 5.000000e-01
  %i.et = fmul float %i.eq, %i.es
  %foldExtExtBinop = fmul <4 x float> %i.ep, %i.ep
  %i.eu = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ev = fmul float %i.eu, %i.et
  %i.ew = fsub float %i.er, %i.ev
  %i.ex = fneg float %i.ew                        ; 3 uses
  %i.ey = fmul float %i.ea, %i.ex
  %i.ez = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.ef, %i.fa
  %i.fc = fmul float %i.eh, %i.ex
  %i.fd = fcmp ogt float %i.du, f0x3F7FDF3B       ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv765 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %indvars.iv765
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv765
  %.promoted = load float, ptr %i.fe, align 4
  %wide.trip.count = zext i32 %i.cg to i64
  %i.fh = insertelement <2 x i1> poison, i1 %i.fd, i64 0
  %i.fi = shufflevector <2 x i1> %i.fh, <2 x i1> poison, <2 x i32> zeroinitializer
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h
  store float %.sroa.speculated88, ptr %i.fe, align 4
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
  %i.fp = load <4 x float>, ptr %7, align 16, !noalias !278
  %i.fq = load <4 x float>, ptr %6, align 16, !noalias !279
  %i.fr = load <4 x float>, ptr %i.j, align 16, !noalias !280
  %i.fs = load <4 x float>, ptr %i.i, align 16, !noalias !281
  %i.ft = load <4 x float>, ptr %2, align 16      ; 2 uses
  %i.fu = load <4 x float>, ptr %i.l, align 16    ; 3 uses
  %i.fv = load <4 x float>, ptr %i.m, align 16    ; 2 uses
  %i.fw = load <4 x float>, ptr %i.n, align 16    ; 3 uses
  %i.fx = load <4 x float>, ptr %3, align 16      ; 2 uses
  %i.fy = load <4 x float>, ptr %i.o, align 16    ; 3 uses
  %i.fz = load <4 x float>, ptr %i.p, align 16    ; 2 uses
  %i.ga = load <4 x float>, ptr %i.q, align 16    ; 3 uses
  %.sroa.1176.60.vec.extract = extractelement <4 x float> %i.fw, i64 3
  %.sroa.073.12.vec.extract = extractelement <4 x float> %i.ft, i64 3 ; 4 uses
  %.sroa.574.28.vec.extract = extractelement <4 x float> %i.fu, i64 3
  %.sroa.875.44.vec.extract = extractelement <4 x float> %i.fv, i64 3 ; 4 uses
  %.sroa.11.60.vec.extract = extractelement <4 x float> %i.ga, i64 3 ; 2 uses
  %.sroa.072.12.vec.extract = extractelement <4 x float> %i.fx, i64 3 ; 3 uses
  %.sroa.5.28.vec.extract = extractelement <4 x float> %i.fy, i64 3 ; 2 uses
  %.sroa.8.44.vec.extract = extractelement <4 x float> %i.fz, i64 3 ; 3 uses
  %i.gb = fmul float %.sroa.073.12.vec.extract, %.sroa.072.12.vec.extract
  %i.gc = call float @llvm.fmuladd.f32(float %.sroa.1176.60.vec.extract, float %.sroa.11.60.vec.extract, float %i.gb)
  %i.gd = call float @llvm.fmuladd.f32(float %.sroa.574.28.vec.extract, float %.sroa.5.28.vec.extract, float %i.gc)
  %i.ge = call noundef float @llvm.fmuladd.f32(float %.sroa.875.44.vec.extract, float %.sroa.8.44.vec.extract, float %i.gd) ; 4 uses
  %i.gf = fneg float %.sroa.072.12.vec.extract
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
  %i.gq = call noundef float @sqrtf(float noundef %i.gp) #24, !noalias !282
  %i.gr = fmul float %i.gq, %i.go
  %i.gs = fsub float f0x3FC90FDB, %i.gr           ; 2 uses
  %i.gt = fcmp olt float %i.gs, 0.000000e+00
  %i.gu = select i1 %i.gt, float 0.000000e+00, float %i.gs ; 2 uses
  %i.gv = fneg float %i.gu
  %i.gw = fcmp olt float %i.ge, 0.000000e+00      ; 4 uses
  %23 = fneg float %.sroa.5.28.vec.extract
  %24 = fneg float %.sroa.11.60.vec.extract
  %i.gx = select i1 %i.gw, float %i.gf, float %.sroa.072.12.vec.extract ; 2 uses
  %i.gy = insertelement <2 x i1> poison, i1 %i.gw, i64 0
  %i.gz = shufflevector <2 x i1> %i.gy, <2 x i1> poison, <2 x i32> zeroinitializer
  %25 = insertelement <2 x float> poison, float %24, i64 0
  %26 = insertelement <2 x float> %25, float %23, i64 1
  %27 = shufflevector <4 x float> %i.ga, <4 x float> %i.fy, <2 x i32> <i32 3, i32 7>
  %i.ha = select <2 x i1> %i.gz, <2 x float> %26, <2 x float> %27 ; 2 uses
  %i.hb = select i1 %i.gw, float %i.gg, float %.sroa.8.44.vec.extract ; 2 uses
  %i.hc = select i1 %i.gw, float %i.gh, float %i.ge ; 5 uses
  %i.hd = fcmp olt float %i.hc, 0.000000e+00
  %i.he = select i1 %i.hd, float %i.gv, float %i.gu
  %i.hf = fsub float f0x3FC90FDB, %i.he
  %i.hg = select i1 %i.gj, float +qnan, float %i.hf
  %i.hh = fneg float %i.gx
  %i.hi = call noundef float @llvm.fmuladd.f32(float %i.hc, float %.sroa.073.12.vec.extract, float %i.hh) ; 3 uses
  %i.hj = fneg <2 x float> %i.ha
  %i.hk = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = shufflevector <4 x float> %i.fw, <4 x float> %i.fu, <2 x i32> <i32 3, i32 7> ; 3 uses
  %i.hn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %i.hm, <2 x float> %i.hj) ; 3 uses
  %i.ho = fneg float %i.hb
  %i.hp = call noundef float @llvm.fmuladd.f32(float %i.hc, float %.sroa.875.44.vec.extract, float %i.ho) ; 3 uses
  %i.hq = fmul float %i.hi, %i.hi
  %i.hr = extractelement <2 x float> %i.hn, i64 0 ; 2 uses
  %i.hs = call float @llvm.fmuladd.f32(float %i.hr, float %i.hr, float %i.hq)
  %i.ht = extractelement <2 x float> %i.hn, i64 1 ; 2 uses
  %i.hu = call float @llvm.fmuladd.f32(float %i.ht, float %i.ht, float %i.hs)
  %i.hv = call float @llvm.fmuladd.f32(float %i.hp, float %i.hp, float %i.hu) ; 2 uses
  %i.hw = insertelement <4 x float> poison, float %i.hv, i64 0
  %i.hx = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.hw) ; 3 uses
  %i.hy = extractelement <4 x float> %i.hx, i64 0 ; 2 uses
  %i.hz = fmul float %i.hy, 1.500000e+00
  %i.ia = fmul float %i.hv, 5.000000e-01
  %i.ib = fmul float %i.hy, %i.ia
  %foldExtExtBinop771 = fmul <4 x float> %i.hx, %i.hx
  %i.ic = extractelement <4 x float> %foldExtExtBinop771, i64 0
  %i.id = fmul float %i.ic, %i.ib
  %i.ie = fsub float %i.hz, %i.id
  %i.if = fneg float %i.ie                        ; 3 uses
  %i.ig = fmul float %i.hi, %i.if
  %i.ih = insertelement <2 x float> poison, float %i.if, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x float> %i.hn, %i.ii
  %i.ik = fmul float %i.hp, %i.if
  %i.il = fcmp ogt float %i.hc, f0x3F7FDF3B       ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv765 ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv765
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv765
  %.promoted752 = load float, ptr %i.im, align 4
  %wide.trip.count763 = zext i32 %i.fo to i64
  %i.ip = insertelement <2 x i1> poison, i1 %i.il, i64 0
  %i.iq = shufflevector <2 x i1> %i.ip, <2 x i1> poison, <2 x i32> zeroinitializer
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.sroa.speculated88747 = phi float [ %.promoted, %.lr.ph ], [ %.sroa.speculated88, %bb.h ] ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.is = load float, ptr %i.ir, align 4          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.it = insertelement <4 x float> poison, float %i.is, i64 0
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.iv = fmul <4 x float> %i.iu, %i.ch
  %i.iw = fmul <4 x float> %i.iu, %i.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.ix = fmul float %i.is, %i.dy                 ; 2 uses
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
  %i.ju = fmul float %i.is, %i.dp
  %i.jv = fmul float %i.is, %i.dt
  %i.jw = fsub float 1.000000e+00, %i.is          ; 4 uses
  %i.jx = insertelement <4 x float> poison, float %i.jw, i64 0
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.jz = fmul <4 x float> %i.jy, %i.ci
  %i.ka = fadd <4 x float> %i.iv, %i.jz
  %i.kb = fmul <4 x float> %i.jy, %i.ck
  %i.kc = fadd <4 x float> %i.iw, %i.kb
  store <4 x float> %i.ka, ptr %14, align 16
  store <4 x float> %i.kc, ptr %i.k, align 16
  %i.kd = icmp samesign ugt i32 %i.jd, 1
  %i.ke = icmp ult i32 %i.jf, 2
  %i.kf = select i1 %i.js, float %i.jq, float %i.jr ; 2 uses
  %i.kg = select i1 %i.jt, float %i.jq, float %i.jr ; 2 uses
  %i.kh = fneg float %i.kf
  %i.ki = fneg float %i.kg
  %i.kj = select i1 %i.kd, float %i.kh, float %i.kf ; 3 uses
  %i.kk = select i1 %i.ke, float %i.ki, float %i.kg ; 3 uses
  %i.kl = fmul float %i.ey, %i.kj
  %i.km = call noundef float @llvm.fmuladd.f32(float %i.kk, float %.sroa.095.12.vec.extract, float %i.kl)
  %i.kn = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.ko = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kp = fmul <2 x float> %i.fb, %i.ko
  %i.kq = insertelement <2 x float> poison, float %i.kk, i64 0
  %i.kr = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kr, <2 x float> %i.ee, <2 x float> %i.kp)
  %i.kt = fmul float %i.fc, %i.kj
  %i.ku = call noundef float @llvm.fmuladd.f32(float %i.kk, float %.sroa.897.44.vec.extract, float %i.kt)
  %i.kv = call noundef float @llvm.fmuladd.f32(float %i.jw, float %.sroa.095.12.vec.extract, float %i.ju) ; 3 uses
  %i.kw = insertelement <2 x float> poison, float %i.is, i64 0
  %i.kx = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ky = fmul <2 x float> %i.kx, %i.ds
  %i.kz = insertelement <2 x float> poison, float %i.jw, i64 0
  %i.la = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.la, <2 x float> %i.ee, <2 x float> %i.ky) ; 3 uses
  %i.lc = call noundef float @llvm.fmuladd.f32(float %i.jw, float %.sroa.897.44.vec.extract, float %i.jv) ; 3 uses
  %i.ld = fmul float %i.kv, %i.kv
  %i.le = extractelement <2 x float> %i.lb, i64 0 ; 2 uses
  %i.lf = call float @llvm.fmuladd.f32(float %i.le, float %i.le, float %i.ld)
  %i.lg = extractelement <2 x float> %i.lb, i64 1 ; 2 uses
  %i.lh = call float @llvm.fmuladd.f32(float %i.lg, float %i.lg, float %i.lf)
  %i.li = call float @llvm.fmuladd.f32(float %i.lc, float %i.lc, float %i.lh) ; 2 uses
  %i.lj = insertelement <4 x float> poison, float %i.li, i64 0
  %i.lk = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.lj) ; 3 uses
  %i.ll = extractelement <4 x float> %i.lk, i64 0 ; 2 uses
  %i.lm = fmul float %i.ll, 1.500000e+00
  %i.ln = fmul float %i.li, 5.000000e-01
  %i.lo = fmul float %i.ll, %i.ln
  %foldExtExtBinop773 = fmul <4 x float> %i.lk, %i.lk
  %i.lp = extractelement <4 x float> %foldExtExtBinop773, i64 0
  %i.lq = fmul float %i.lp, %i.lo
  %i.lr = fsub float %i.lm, %i.lq                 ; 3 uses
  %i.ls = fmul float %i.kv, %i.lr
  %i.lt = insertelement <2 x float> poison, float %i.lr, i64 0
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lv = fmul <2 x float> %i.lb, %i.lu
  %i.lw = fmul float %i.lc, %i.lr
  %i.lx = select i1 %i.fd, float %i.ls, float %i.km ; 9 uses
  %i.ly = select <2 x i1> %i.fi, <2 x float> %i.lv, <2 x float> %i.ks ; 2 uses
  %i.lz = select i1 %i.fd, float %i.lw, float %i.ku ; 10 uses
  %i.ma = fmul <4 x float> %i.iu, %i.cp
  %i.mb = fmul <4 x float> %i.jy, %i.cl
  %i.mc = fadd <4 x float> %i.mb, %i.ma           ; 2 uses
  %i.md = fmul <4 x float> %i.iu, %i.cq
  %i.me = fmul <4 x float> %i.jy, %i.cm
  %i.mf = fadd <4 x float> %i.me, %i.md           ; 3 uses
  %i.mg = fmul <4 x float> %i.iu, %i.cr
  %i.mh = fmul <4 x float> %i.jy, %i.cn
  %i.mi = fadd <4 x float> %i.mh, %i.mg           ; 3 uses
  %i.mj = fmul <4 x float> %i.iu, %i.cs
  %i.mk = fmul <4 x float> %i.jy, %i.co
  %i.ml = fadd <4 x float> %i.mk, %i.mj           ; 3 uses
  %.sroa.17314.52.vec.insert = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.mc, <4 x i32> <i32 5, i32 6, i32 poison, i32 3>
  %.sroa.17314.56.vec.insert = shufflevector <4 x float> %.sroa.17314.52.vec.insert, <4 x float> %i.mf, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.mm = fmul float %i.lx, %i.lx
  %i.mn = extractelement <2 x float> %i.ly, i64 0 ; 10 uses
  %i.mo = call float @llvm.fmuladd.f32(float %i.mn, float %i.mn, float %i.mm)
  %i.mp = extractelement <2 x float> %i.ly, i64 1 ; 10 uses
  %i.mq = fneg float %i.mp                        ; 3 uses
  %i.mr = call float @llvm.fmuladd.f32(float %i.mq, float %i.mp, float %i.mo)
  %i.ms = fneg float %i.lz                        ; 3 uses
  %i.mt = call float @llvm.fmuladd.f32(float %i.ms, float %i.lz, float %i.mr)
  %i.mu = fmul float %i.mn, %i.lz
  %i.mv = call float @llvm.fmuladd.f32(float %i.lx, float %i.mp, float %i.mu)
  %i.mw = fmul float %i.mv, 2.000000e+00
  %i.mx = fmul float %i.mn, %i.mq
  %i.my = call float @llvm.fmuladd.f32(float %i.lx, float %i.lz, float %i.mx)
  %i.mz = fmul float %i.my, 2.000000e+00
  %i.na = fmul float %i.mn, %i.ms
  %i.nb = call float @llvm.fmuladd.f32(float %i.lx, float %i.mp, float %i.na)
  %i.nc = fmul float %i.nb, 2.000000e+00
  %i.nd = fneg float %i.lx                        ; 2 uses
  %i.ne = fmul float %i.lx, %i.nd
  %i.nf = call float @llvm.fmuladd.f32(float %i.mn, float %i.mn, float %i.ne) ; 2 uses
  %i.ng = call float @llvm.fmuladd.f32(float %i.mp, float %i.mp, float %i.nf)
  %i.nh = call float @llvm.fmuladd.f32(float %i.ms, float %i.lz, float %i.ng)
  %i.ni = fmul float %i.mn, %i.lx
  %i.nj = call float @llvm.fmuladd.f32(float %i.mp, float %i.lz, float %i.ni)
  %i.nk = fmul float %i.nj, 2.000000e+00
  %i.nl = fmul float %i.mn, %i.mp
  %i.nm = call float @llvm.fmuladd.f32(float %i.lx, float %i.lz, float %i.nl)
  %i.nn = fmul float %i.nm, 2.000000e+00
  %i.no = fmul float %i.mn, %i.nd
  %i.np = call float @llvm.fmuladd.f32(float %i.mp, float %i.lz, float %i.no)
  %i.nq = fmul float %i.np, 2.000000e+00
  %i.nr = call float @llvm.fmuladd.f32(float %i.mq, float %i.mp, float %i.nf)
  %i.ns = call float @llvm.fmuladd.f32(float %i.lz, float %i.lz, float %i.nr)
  %i.nt = insertelement <4 x float> poison, float %i.mt, i64 0
  %i.nu = shufflevector <4 x float> %i.nt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nv = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.nw = shufflevector <4 x float> %i.nv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nx = insertelement <4 x float> poison, float %i.mz, i64 0
  %i.ny = shufflevector <4 x float> %i.nx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nz = fmul <4 x float> %i.ny, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.oa = fmul <4 x float> %i.nw, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ob = fadd <4 x float> %i.oa, %i.nz
  %i.oc = fmul <4 x float> %i.nu, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.od = fadd <4 x float> %i.oc, %i.ob           ; 4 uses
end_hunk_0
