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
  %i.cl = load <4 x float>, ptr %2, align 16      ; 4 uses
  %i.cm = load <4 x float>, ptr %i.l, align 16    ; 3 uses
  %i.cn = load <4 x float>, ptr %i.m, align 16    ; 4 uses
  %i.co = load <4 x float>, ptr %i.n, align 16    ; 3 uses
  %i.cp = load <4 x float>, ptr %3, align 16      ; 3 uses
  %i.cq = load <4 x float>, ptr %i.o, align 16    ; 3 uses
  %i.cr = load <4 x float>, ptr %i.p, align 16    ; 3 uses
  %i.cs = load <4 x float>, ptr %i.q, align 16    ; 3 uses
  %.sroa.1198.60.vec.extract = extractelement <4 x float> %i.co, i64 3
  %.sroa.095.12.vec.extract = extractelement <4 x float> %i.cm, i64 3
  %.sroa.596.28.vec.extract = extractelement <4 x float> %i.cn, i64 3
  %.sroa.897.44.vec.extract = extractelement <4 x float> %i.cs, i64 3
  %.sroa.1194.60.vec.extract = extractelement <4 x float> %i.cq, i64 3
  %.sroa.091.12.vec.extract = extractelement <4 x float> %i.cr, i64 3
  %foldExtExtBinop = fmul <4 x float> %i.cl, %i.cp
  %.sroa.893.44.vec.extract = extractelement <4 x float> %foldExtExtBinop, i64 3
  %i.ct = call float @llvm.fmuladd.f32(float %.sroa.1198.60.vec.extract, float %.sroa.897.44.vec.extract, float %.sroa.893.44.vec.extract)
  %i.cu = call float @llvm.fmuladd.f32(float %.sroa.095.12.vec.extract, float %.sroa.1194.60.vec.extract, float %i.ct)
  %i.cv = call noundef float @llvm.fmuladd.f32(float %.sroa.596.28.vec.extract, float %.sroa.091.12.vec.extract, float %i.cu) ; 4 uses
  %i.cw = fneg float %i.cv
  %i.cx = call float @llvm.fabs.f32(float %i.cv)  ; 7 uses
  %i.cy = fcmp ogt float %i.cx, 1.000000e+00
  %i.cz = call float @llvm.fmuladd.f32(float %i.cx, float f0xBB8D3753, float 1.928030e-02)
  %i.da = call float @llvm.fmuladd.f32(float %i.cx, float %i.cz, float f0xBD37E81C)
  %i.db = call float @llvm.fmuladd.f32(float %i.cx, float %i.da, float f0x3DB3EDAC)
  %i.dc = call float @llvm.fmuladd.f32(float %i.cx, float %i.db, float f0xBE5BA881)
  %i.dd = call float @llvm.fmuladd.f32(float %i.cx, float %i.dc, float f0x3FC90FD1)
  %i.de = fsub float 1.000000e+00, %i.cx
  %i.df = call noundef float @sqrtf(float noundef %i.de) #24, !noalias !277
  %i.dg = fmul float %i.df, %i.dd
  %i.dh = fsub float f0x3FC90FDB, %i.dg           ; 2 uses
  %i.di = fcmp olt float %i.dh, 0.000000e+00
  %i.dj = select i1 %i.di, float 0.000000e+00, float %i.dh ; 2 uses
  %i.dk = fneg float %i.dj
  %i.dl = fcmp olt float %i.cv, 0.000000e+00      ; 2 uses
  %i.dm = shufflevector <4 x float> %i.cs, <4 x float> %i.cq, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.dn = fneg <2 x float> %i.dm
  %i.do = insertelement <2 x i1> poison, i1 %i.dl, i64 0
  %i.dp = shufflevector <2 x i1> %i.do, <2 x i1> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = select <2 x i1> %i.dp, <2 x float> %i.dn, <2 x float> %i.dm ; 2 uses
  %i.dr = select i1 %i.dl, float %i.cw, float %i.cv ; 3 uses
  %i.ds = fcmp olt float %i.dr, 0.000000e+00
  %i.dt = select i1 %i.ds, float %i.dk, float %i.dj
  %i.du = fsub float f0x3FC90FDB, %i.dt
  %i.dv = select i1 %i.cy, float +qnan, float %i.du
  %18 = fneg <2 x float> %i.dq
  %19 = insertelement <2 x float> poison, float %i.dr, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %21 = shufflevector <4 x float> %i.co, <4 x float> %i.cm, <2 x i32> <i32 3, i32 7> ; 3 uses
  %22 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %21, <2 x float> %18) ; 3 uses
  %i.dw = shufflevector <4 x float> %i.cp, <4 x float> %i.cr, <2 x i32> <i32 3, i32 7> ; 2 uses
  %23 = fneg <2 x float> %i.dw
  %24 = select <2 x i1> %i.dp, <2 x float> %23, <2 x float> %i.dw ; 3 uses
  %25 = fneg <2 x float> %24
  %26 = shufflevector <4 x float> %i.cl, <4 x float> %i.cn, <2 x i32> <i32 3, i32 7> ; 2 uses
  %27 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %26, <2 x float> %25) ; 4 uses
  %foldExtExtBinop771 = fmul <2 x float> %27, %27
  %28 = extractelement <2 x float> %foldExtExtBinop771, i64 0
  %i.dx = extractelement <2 x float> %22, i64 0   ; 2 uses
  %i.dy = call float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %28)
  %i.dz = extractelement <2 x float> %22, i64 1   ; 2 uses
  %i.ea = call float @llvm.fmuladd.f32(float %i.dz, float %i.dz, float %i.dy)
  %29 = extractelement <2 x float> %27, i64 1     ; 2 uses
  %i.eb = call float @llvm.fmuladd.f32(float %29, float %29, float %i.ea) ; 2 uses
  %i.ec = insertelement <4 x float> poison, float %i.eb, i64 0
  %i.ed = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.ec) ; 3 uses
  %i.ee = extractelement <4 x float> %i.ed, i64 0 ; 2 uses
  %i.ef = fmul float %i.ee, 1.500000e+00
  %i.eg = fmul float %i.eb, 5.000000e-01
  %i.eh = fmul float %i.ee, %i.eg
  %foldExtExtBinop.a = fmul <4 x float> %i.ed, %i.ed
  %i.ei = extractelement <4 x float> %foldExtExtBinop.a, i64 0
  %i.ej = fmul float %i.ei, %i.eh
  %i.ek = fsub float %i.ef, %i.ej
  %i.el = fneg float %i.ek
  %i.em = insertelement <2 x float> poison, float %i.el, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eo = fmul <2 x float> %22, %i.en
  %30 = fmul <2 x float> %27, %i.en
  %i.ep = fcmp ogt float %i.dr, f0x3F7FDF3B       ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv765 ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %indvars.iv765
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv765
  %.promoted = load float, ptr %i.eq, align 4
  %wide.trip.count = zext i32 %i.cg to i64
  %i.et = insertelement <2 x i1> poison, i1 %i.ep, i64 0
  %i.eu = shufflevector <2 x i1> %i.et, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ev = shufflevector <4 x float> %i.cl, <4 x float> %i.cn, <4 x i32> <i32 poison, i32 3, i32 poison, i32 7>
  %i.ew = shufflevector <4 x float> <float f0x3D2AAAA4, float poison, float f0xBE2AAAAB, float poison>, <4 x float> %i.ev, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %31 = extractelement <2 x float> %24, i64 0
  %32 = extractelement <2 x float> %24, i64 1
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h
  store float %.sroa.speculated88, ptr %i.eq, align 4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %_ZN6embree16MotionDerivativeC2ERKNS_28MotionDerivativeCoefficientsEiRKNS_6Vec3faES6_.exit
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv765
  %i.ey = load float, ptr %i.ex, align 4
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv765
  %i.fa = load float, ptr %i.ez, align 4
  %i.fb = fsub float %i.ey, %i.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %13, ptr %10, align 8
  store float %i.fb, ptr %i.r, align 8
  call void @_ZN6embree16MotionDerivative9findRootsINS0_20EvalMotionDerivativeINS_8IntervalIfEEEEEEvRKT_RKS4_RjPfj(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull %i.c, i32 noundef 32)
  %i.fc = load i32, ptr %i.a, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not758 = icmp eq i32 %i.fc, 0
  br i1 %.not758, label %bb.i, label %.lr.ph750

.lr.ph750:                                        ; preds = %bb.g
  %i.fd = load <4 x float>, ptr %7, align 16, !noalias !278
  %i.fe = load <4 x float>, ptr %6, align 16, !noalias !279
  %i.ff = load <4 x float>, ptr %i.j, align 16, !noalias !280
  %i.fg = load <4 x float>, ptr %i.i, align 16, !noalias !281
  %i.fh = load <4 x float>, ptr %2, align 16      ; 4 uses
  %i.fi = load <4 x float>, ptr %i.l, align 16    ; 3 uses
  %i.fj = load <4 x float>, ptr %i.m, align 16    ; 4 uses
  %i.fk = load <4 x float>, ptr %i.n, align 16    ; 3 uses
  %i.fl = load <4 x float>, ptr %3, align 16      ; 3 uses
  %i.fm = load <4 x float>, ptr %i.o, align 16    ; 3 uses
  %i.fn = load <4 x float>, ptr %i.p, align 16    ; 3 uses
  %i.fo = load <4 x float>, ptr %i.q, align 16    ; 3 uses
  %.sroa.1176.60.vec.extract = extractelement <4 x float> %i.fk, i64 3
  %.sroa.073.12.vec.extract = extractelement <4 x float> %i.fi, i64 3
  %.sroa.574.28.vec.extract = extractelement <4 x float> %i.fj, i64 3
  %.sroa.875.44.vec.extract = extractelement <4 x float> %i.fo, i64 3
  %.sroa.11.60.vec.extract = extractelement <4 x float> %i.fm, i64 3
  %.sroa.072.12.vec.extract = extractelement <4 x float> %i.fn, i64 3
  %foldExtExtBinop775 = fmul <4 x float> %i.fh, %i.fl
  %.sroa.8.44.vec.extract = extractelement <4 x float> %foldExtExtBinop775, i64 3
  %i.fp = call float @llvm.fmuladd.f32(float %.sroa.1176.60.vec.extract, float %.sroa.875.44.vec.extract, float %.sroa.8.44.vec.extract)
  %i.fq = call float @llvm.fmuladd.f32(float %.sroa.073.12.vec.extract, float %.sroa.11.60.vec.extract, float %i.fp)
  %i.fr = call noundef float @llvm.fmuladd.f32(float %.sroa.574.28.vec.extract, float %.sroa.072.12.vec.extract, float %i.fq) ; 4 uses
  %i.fs = fneg float %i.fr
  %i.ft = call float @llvm.fabs.f32(float %i.fr)  ; 7 uses
  %i.fu = fcmp ogt float %i.ft, 1.000000e+00
  %i.fv = call float @llvm.fmuladd.f32(float %i.ft, float f0xBB8D3753, float 1.928030e-02)
  %i.fw = call float @llvm.fmuladd.f32(float %i.ft, float %i.fv, float f0xBD37E81C)
  %i.fx = call float @llvm.fmuladd.f32(float %i.ft, float %i.fw, float f0x3DB3EDAC)
  %i.fy = call float @llvm.fmuladd.f32(float %i.ft, float %i.fx, float f0xBE5BA881)
  %i.fz = call float @llvm.fmuladd.f32(float %i.ft, float %i.fy, float f0x3FC90FD1)
  %i.ga = fsub float 1.000000e+00, %i.ft
  %i.gb = call noundef float @sqrtf(float noundef %i.ga) #24, !noalias !282
  %i.gc = fmul float %i.gb, %i.fz
  %i.gd = fsub float f0x3FC90FDB, %i.gc           ; 2 uses
  %i.ge = fcmp olt float %i.gd, 0.000000e+00
  %i.gf = select i1 %i.ge, float 0.000000e+00, float %i.gd ; 2 uses
  %i.gg = fneg float %i.gf
  %i.gh = fcmp olt float %i.fr, 0.000000e+00      ; 2 uses
  %i.gi = shufflevector <4 x float> %i.fo, <4 x float> %i.fm, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.gj = fneg <2 x float> %i.gi
  %i.gk = insertelement <2 x i1> poison, i1 %i.gh, i64 0
  %i.gl = shufflevector <2 x i1> %i.gk, <2 x i1> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gm = select <2 x i1> %i.gl, <2 x float> %i.gj, <2 x float> %i.gi ; 2 uses
  %i.gn = select i1 %i.gh, float %i.fs, float %i.fr ; 3 uses
  %i.go = fcmp olt float %i.gn, 0.000000e+00
  %i.gp = select i1 %i.go, float %i.gg, float %i.gf
  %i.gq = fsub float f0x3FC90FDB, %i.gp
  %i.gr = select i1 %i.fu, float +qnan, float %i.gq
  %33 = fneg <2 x float> %i.gm
  %34 = insertelement <2 x float> poison, float %i.gn, i64 0
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %36 = shufflevector <4 x float> %i.fk, <4 x float> %i.fi, <2 x i32> <i32 3, i32 7> ; 3 uses
  %37 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %35, <2 x float> %36, <2 x float> %33) ; 3 uses
  %i.gs = shufflevector <4 x float> %i.fl, <4 x float> %i.fn, <2 x i32> <i32 3, i32 7> ; 2 uses
  %38 = fneg <2 x float> %i.gs
  %39 = select <2 x i1> %i.gl, <2 x float> %38, <2 x float> %i.gs ; 3 uses
  %40 = fneg <2 x float> %39
  %41 = shufflevector <4 x float> %i.fh, <4 x float> %i.fj, <2 x i32> <i32 3, i32 7> ; 2 uses
  %42 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %35, <2 x float> %41, <2 x float> %40) ; 4 uses
  %foldExtExtBinop777 = fmul <2 x float> %42, %42
  %43 = extractelement <2 x float> %foldExtExtBinop777, i64 0
  %i.gt = extractelement <2 x float> %37, i64 0   ; 2 uses
  %i.gu = call float @llvm.fmuladd.f32(float %i.gt, float %i.gt, float %43)
  %i.gv = extractelement <2 x float> %37, i64 1   ; 2 uses
  %i.gw = call float @llvm.fmuladd.f32(float %i.gv, float %i.gv, float %i.gu)
  %44 = extractelement <2 x float> %42, i64 1     ; 2 uses
  %i.gx = call float @llvm.fmuladd.f32(float %44, float %44, float %i.gw) ; 2 uses
  %i.gy = insertelement <4 x float> poison, float %i.gx, i64 0
  %i.gz = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.gy) ; 3 uses
  %i.ha = extractelement <4 x float> %i.gz, i64 0 ; 2 uses
  %i.hb = fmul float %i.ha, 1.500000e+00
  %i.hc = fmul float %i.gx, 5.000000e-01
  %i.hd = fmul float %i.ha, %i.hc
  %foldExtExtBinop771.a = fmul <4 x float> %i.gz, %i.gz
  %i.he = extractelement <4 x float> %foldExtExtBinop771.a, i64 0
  %i.hf = fmul float %i.he, %i.hd
  %i.hg = fsub float %i.hb, %i.hf
  %i.hh = fneg float %i.hg
  %i.hi = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hk = fmul <2 x float> %37, %i.hj
  %45 = fmul <2 x float> %42, %i.hj
  %i.hl = fcmp ogt float %i.gn, f0x3F7FDF3B       ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv765 ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv765
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv765
  %.promoted752 = load float, ptr %i.hm, align 4
  %wide.trip.count763 = zext i32 %i.fc to i64
  %i.hp = insertelement <2 x i1> poison, i1 %i.hl, i64 0
  %i.hq = shufflevector <2 x i1> %i.hp, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.hr = shufflevector <4 x float> %i.fh, <4 x float> %i.fj, <4 x i32> <i32 poison, i32 3, i32 poison, i32 7>
  %i.hs = shufflevector <4 x float> <float f0x3D2AAAA4, float poison, float f0xBE2AAAAB, float poison>, <4 x float> %i.hr, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %46 = extractelement <2 x float> %39, i64 0
  %47 = extractelement <2 x float> %39, i64 1
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.sroa.speculated88747 = phi float [ %.promoted, %.lr.ph ], [ %.sroa.speculated88, %bb.h ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.hu = load float, ptr %i.ht, align 4          ; 6 uses
  %i.hv = insertelement <4 x float> poison, float %i.hu, i64 0
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.hx = fmul <4 x float> %i.hw, %i.ch
  %i.hy = fmul <4 x float> %i.hw, %i.cj
  %i.hz = fmul float %i.hu, %i.dv                 ; 2 uses
  %i.ia = fmul float %i.hz, f0x3F22F983
  %i.ib = call noundef float @llvm.floor.f32(float %i.ia) ; 2 uses
  %i.ic = fptosi float %i.ib to i32               ; 3 uses
  %i.id = fneg float %i.ib
  %i.ie = call float @llvm.fmuladd.f32(float %i.id, float f0x3FC90FDB, float %i.hz) ; 3 uses
  %i.if = and i32 %i.ic, 3                        ; 2 uses
  %i.ig = and i32 %i.ic, 1
  %i.ih = add nsw i32 %i.if, -1
  %i.ii = fmul float %i.ie, %i.ie                 ; 3 uses
  %i.ij = call float @llvm.fmuladd.f32(float %i.ii, float f0xB2D70013, float f0x363938A8)
  %i.ik = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float -0.000000e+00>, float %i.ii, i64 0 ; 2 uses
  %i.il = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 3 uses
  %i.im = insertelement <4 x float> <float f0xB48B634D, float -0.000000e+00, float poison, float 0.000000e+00>, float %i.ij, i64 2
  %i.in = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.il, <4 x float> %i.im, <4 x float> <float f0x37CFAB9C, float -0.000000e+00, float f0xB9501096, float 0.000000e+00>)
  %i.io = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.il, <4 x float> %i.in, <4 x float> <float f0xBAB60981, float -0.000000e+00, float f0x3C088898, float 0.000000e+00>)
  %i.ip = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.il, <4 x float> %i.io, <4 x float> %i.ew)
  %i.iq = fmul float %i.hu, %31
  %i.ir = fmul float %i.hu, %32
  %i.is = fsub float 1.000000e+00, %i.hu          ; 3 uses
  %i.it = shufflevector <4 x float> %i.ik, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.iu = insertelement <2 x float> %i.it, float %i.is, i64 1
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.iw = insertelement <4 x float> <float -5.000000e-01, float poison, float 1.000000e+00, float poison>, float %i.iq, i64 1
  %i.ix = insertelement <4 x float> %i.iw, float %i.ir, i64 3
  %i.iy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iv, <4 x float> %i.ip, <4 x float> %i.ix) ; 4 uses
  %i.iz = extractelement <4 x float> %i.iy, i64 0
  %i.ja = call float @llvm.fmuladd.f32(float %i.ii, float %i.iz, float 1.000000e+00) ; 2 uses
  %i.jb = extractelement <4 x float> %i.iy, i64 2
  %i.jc = fmul float %i.ie, %i.jb                 ; 2 uses
  %i.jd = insertelement <4 x float> poison, float %i.is, i64 0
  %i.je = shufflevector <4 x float> %i.jd, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.jf = fmul <4 x float> %i.je, %i.ci
  %i.jg = fadd <4 x float> %i.hx, %i.jf
  %i.jh = fmul <4 x float> %i.je, %i.ck
  %i.ji = fadd <4 x float> %i.hy, %i.jh
  store <4 x float> %i.jg, ptr %14, align 16
  store <4 x float> %i.ji, ptr %i.k, align 16
  %i.jj = icmp samesign ugt i32 %i.if, 1
  %i.jk = icmp ult i32 %i.ih, 2
  %i.jl = trunc i32 %i.ic to i1
  %i.jm = select i1 %i.jl, float %i.ja, float %i.jc ; 2 uses
  %i.jn = icmp eq i32 %i.ig, 0
  %i.jo = select i1 %i.jn, float %i.ja, float %i.jc ; 2 uses
  %i.jp = fneg float %i.jm
  %i.jq = select i1 %i.jj, float %i.jp, float %i.jm
  %i.jr = fneg float %i.jo
  %i.js = select i1 %i.jk, float %i.jr, float %i.jo
  %i.jt = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.ju = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jv = fmul <2 x float> %i.eo, %i.ju
  %i.jw = insertelement <2 x float> poison, float %i.js, i64 0
  %i.jx = shufflevector <2 x float> %i.jw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jx, <2 x float> %21, <2 x float> %i.jv)
  %48 = fmul <2 x float> %30, %i.ju
  %49 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jx, <2 x float> %26, <2 x float> %48) ; 2 uses
  %i.jz = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kb = fmul <2 x float> %i.ka, %i.dq
  %i.kc = insertelement <2 x float> poison, float %i.is, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ke = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> %21, <2 x float> %i.kb) ; 3 uses
  %i.kf = extractelement <4 x float> %i.iy, i64 1 ; 3 uses
  %i.kg = fmul float %i.kf, %i.kf
  %i.kh = extractelement <2 x float> %i.ke, i64 0 ; 2 uses
  %i.ki = call float @llvm.fmuladd.f32(float %i.kh, float %i.kh, float %i.kg)
  %i.kj = extractelement <2 x float> %i.ke, i64 1 ; 2 uses
  %i.kk = call float @llvm.fmuladd.f32(float %i.kj, float %i.kj, float %i.ki)
  %i.kl = extractelement <4 x float> %i.iy, i64 3 ; 3 uses
  %i.km = call float @llvm.fmuladd.f32(float %i.kl, float %i.kl, float %i.kk) ; 2 uses
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
  %i.kw = fmul float %i.kf, %i.kv
  %i.kx = insertelement <2 x float> poison, float %i.kv, i64 0
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kz = fmul <2 x float> %i.ke, %i.ky
  %i.la = fmul float %i.kl, %i.kv
  %50 = extractelement <2 x float> %49, i64 0
  %i.lb = select i1 %i.ep, float %i.kw, float %50 ; 7 uses
  %i.lc = select <2 x i1> %i.eu, <2 x float> %i.kz, <2 x float> %i.jy ; 4 uses
  %51 = extractelement <2 x float> %49, i64 1
  %i.ld = select i1 %i.ep, float %i.la, float %51 ; 10 uses
  %i.le = fmul <4 x float> %i.hw, %i.cp
  %i.lf = fmul <4 x float> %i.je, %i.cl
  %i.lg = fadd <4 x float> %i.lf, %i.le           ; 2 uses
  %i.lh = fmul <4 x float> %i.hw, %i.cq
  %i.li = fmul <4 x float> %i.je, %i.cm
  %i.lj = fadd <4 x float> %i.li, %i.lh           ; 3 uses
  %i.lk = fmul <4 x float> %i.hw, %i.cr
  %i.ll = fmul <4 x float> %i.je, %i.cn
  %i.lm = fadd <4 x float> %i.ll, %i.lk           ; 3 uses
  %i.ln = fmul <4 x float> %i.hw, %i.cs
  %i.lo = fmul <4 x float> %i.je, %i.co
  %i.lp = fadd <4 x float> %i.lo, %i.ln           ; 3 uses
  %.sroa.17314.52.vec.insert = shufflevector <4 x float> %i.lg, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %.sroa.17314.56.vec.insert = shufflevector <4 x float> %.sroa.17314.52.vec.insert, <4 x float> %i.lj, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.lq = fmul float %i.lb, %i.lb
  %i.lr = extractelement <2 x float> %i.lc, i64 0 ; 7 uses
  %i.ls = extractelement <2 x float> %i.lc, i64 1 ; 7 uses
  %i.lt = fneg float %i.ls                        ; 2 uses
  %i.lu = fneg float %i.ld                        ; 3 uses
  %i.lv = call float @llvm.fmuladd.f32(float %i.lr, float %i.lr, float %i.lq)
  %i.lw = shufflevector <2 x float> %i.lc, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.lx = insertelement <4 x float> %i.lw, float 1.000000e+00, i64 0
  %i.ly = insertelement <4 x float> poison, float %i.lv, i64 0
  %i.lz = insertelement <4 x float> %i.ly, float %i.ld, i64 1
  %i.ma = insertelement <4 x float> %i.lz, float %i.lt, i64 2 ; 2 uses
  %i.mb = insertelement <4 x float> %i.ma, float %i.lu, i64 3
  %i.mc = fmul <4 x float> %i.lx, %i.mb
  %i.md = shufflevector <4 x float> %i.ma, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.me = insertelement <2 x float> %i.md, float %i.lb, i64 1
  %i.mf = shufflevector <2 x float> %i.me, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.mg = shufflevector <2 x float> %i.lc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 1>
  %i.mh = insertelement <4 x float> %i.mg, float %i.ld, i64 2
  %i.mi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mf, <4 x float> %i.mh, <4 x float> %i.mc) ; 4 uses
  %i.mj = extractelement <4 x float> %i.mi, i64 0
  %i.mk = call float @llvm.fmuladd.f32(float %i.lu, float %i.ld, float %i.mj)
  %i.ml = extractelement <4 x float> %i.mi, i64 1
  %i.mm = fmul float %i.ml, 2.000000e+00
  %i.mn = extractelement <4 x float> %i.mi, i64 2
  %i.mo = fmul float %i.mn, 2.000000e+00
  %i.mp = extractelement <4 x float> %i.mi, i64 3
  %i.mq = fmul float %i.mp, 2.000000e+00
  %i.mr = fneg float %i.lb                        ; 2 uses
  %i.ms = fmul float %i.lb, %i.mr
  %i.mt = call float @llvm.fmuladd.f32(float %i.lr, float %i.lr, float %i.ms) ; 2 uses
  %i.mu = call float @llvm.fmuladd.f32(float %i.ls, float %i.ls, float %i.mt)
  %i.mv = call float @llvm.fmuladd.f32(float %i.lu, float %i.ld, float %i.mu)
  %i.mw = fmul float %i.lr, %i.lb
  %i.mx = call float @llvm.fmuladd.f32(float %i.ls, float %i.ld, float %i.mw)
  %i.my = fmul float %i.mx, 2.000000e+00
  %i.mz = fmul float %i.lr, %i.ls
  %i.na = call float @llvm.fmuladd.f32(float %i.lb, float %i.ld, float %i.mz)
  %i.nb = fmul float %i.na, 2.000000e+00
  %i.nc = fmul float %i.lr, %i.mr
  %i.nd = call float @llvm.fmuladd.f32(float %i.ls, float %i.ld, float %i.nc)
  %i.ne = fmul float %i.nd, 2.000000e+00
  %i.nf = call float @llvm.fmuladd.f32(float %i.lt, float %i.ls, float %i.mt)
  %i.ng = call float @llvm.fmuladd.f32(float %i.ld, float %i.ld, float %i.nf)
  %i.nh = insertelement <4 x float> poison, float %i.mk, i64 0
  %i.ni = shufflevector <4 x float> %i.nh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nj = insertelement <4 x float> poison, float %i.mm, i64 0
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nl = insertelement <4 x float> poison, float %i.mo, i64 0
  %i.nm = shufflevector <4 x float> %i.nl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nn = fmul <4 x float> %i.nm, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.no = fmul <4 x float> %i.nk, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.np = fadd <4 x float> %i.no, %i.nn
  %i.nq = fmul <4 x float> %i.ni, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.nr = fadd <4 x float> %i.nq, %i.np           ; 4 uses
  %i.ns = insertelement <4 x float> poison, float %i.mq, i64 0
  %i.nt = shufflevector <4 x float> %i.ns, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nu = insertelement <4 x float> poison, float %i.mv, i64 0
  %i.nv = shufflevector <4 x float> %i.nu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nw = insertelement <4 x float> poison, float %i.my, i64 0
  %i.nx = shufflevector <4 x float> %i.nw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ny = fmul <4 x float> %i.nx, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.nz = fmul <4 x float> %i.nv, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.oa = fadd <4 x float> %i.ny, %i.nz
  %i.ob = fmul <4 x float> %i.nt, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.oc = fadd <4 x float> %i.ob, %i.oa           ; 4 uses
  %i.od = insertelement <4 x float> poison, float %i.nb, i64 0
  %i.oe = shufflevector <4 x float> %i.od, <4 x float> poison, <4 x i32> zeroinitializer
  %i.of = insertelement <4 x float> poison, float %i.ne, i64 0
  %i.og = shufflevector <4 x float> %i.of, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oh = insertelement <4 x float> poison, float %i.ng, i64 0
  %i.oi = shufflevector <4 x float> %i.oh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oj = fmul <4 x float> %i.oi, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.ok = fmul <4 x float> %i.og, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ol = fadd <4 x float> %i.ok, %i.oj
  %i.om = fmul <4 x float> %i.oe, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.on = fadd <4 x float> %i.om, %i.ol           ; 3 uses
  %i.oo = fadd <4 x float> %.sroa.17314.56.vec.insert, zeroinitializer
  %i.op = shufflevector <4 x float> %i.lg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oq = fmul <4 x float> %i.on, zeroinitializer ; 2 uses
  %i.or = fmul <4 x float> %i.oc, zeroinitializer
  %i.os = fadd ninf <4 x float> %i.or, %i.oq
  %i.ot = fmul <4 x float> %i.op, %i.nr
  %i.ou = fadd <4 x float> %i.ot, %i.os
  %i.ov = shufflevector <4 x float> %i.lj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ow = shufflevector <4 x float> %i.lj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ox = fmul <4 x float> %i.ow, %i.oc
  %i.oy = fadd <4 x float> %i.ox, %i.oq
  %i.oz = fmul <4 x float> %i.ov, %i.nr
  %i.pa = fadd <4 x float> %i.oz, %i.oy
  %i.pb = shufflevector <4 x float> %i.lm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pc = shufflevector <4 x float> %i.lm, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.pd = shufflevector <4 x float> %i.lm, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.pe = fmul <4 x float> %i.pd, %i.on
  %i.pf = fmul <4 x float> %i.pc, %i.oc
  %i.pg = fadd <4 x float> %i.pf, %i.pe
  %i.ph = fmul <4 x float> %i.pb, %i.nr
  %i.pi = fadd <4 x float> %i.ph, %i.pg
  %i.pj = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pk = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.pl = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.pm = fmul <4 x float> %i.pl, %i.on
  %i.pn = fmul <4 x float> %i.pk, %i.oc
  %i.po = fadd <4 x float> %i.pn, %i.pm
  %i.pp = fmul <4 x float> %i.pj, %i.nr
  %i.pq = fadd <4 x float> %i.pp, %i.po
  %i.pr = fadd <4 x float> %i.oo, %i.pq
  %i.ps = fmul <4 x float> %i.ai, %i.hw
  %i.pt = fmul <4 x float> %i.ac, %i.je
  %i.pu = fadd <4 x float> %i.ps, %i.pt           ; 3 uses
  %i.pv = shufflevector <4 x float> %i.pu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pw = shufflevector <4 x float> %i.pu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.px = shufflevector <4 x float> %i.pu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.py = fmul <4 x float> %i.px, %i.pi
  %i.pz = fadd <4 x float> %i.py, %i.pr
  %i.qa = fmul <4 x float> %i.pw, %i.pa
  %i.qb = fadd <4 x float> %i.qa, %i.pz
  %i.qc = fmul <4 x float> %i.pv, %i.ou
  %i.qd = fadd <4 x float> %i.qc, %i.qb
  store <4 x float> %i.qd, ptr %15, align 16, !alias.scope !283
  %i.qe = load float, ptr %i.er, align 4
  %i.qf = load float, ptr %i.es, align 4
  %i.qg = fsub float %i.qe, %i.qf                 ; 2 uses
  %i.qh = fcmp olt float %i.qg, %.sroa.speculated88747
  %.sroa.speculated88 = select i1 %i.qh, float %i.qg, float %.sroa.speculated88747 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !266

._crit_edge751:                                   ; preds = %bb.j
  store float %.sroa.speculated, ptr %i.hm, align 4
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge751, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %indvars.iv.next766 = add nuw nsw i64 %indvars.iv765, 1 ; 2 uses
  %exitcond768.not = icmp eq i64 %indvars.iv.next766, 3
  br i1 %exitcond768.not, label %bb.f, label %_ZN6embree16MotionDerivativeC2ERKNS_28MotionDerivativeCoefficientsEiRKNS_6Vec3faES6_.exit, !llvm.loop !267

bb.j:                                             ; preds = %.lr.ph750, %bb.j
  %indvars.iv760 = phi i64 [ 0, %.lr.ph750 ], [ %indvars.iv.next761, %bb.j ] ; 2 uses
  %.sroa.speculated753 = phi float [ %.promoted752, %.lr.ph750 ], [ %.sroa.speculated, %bb.j ] ; 2 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv760
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.qj = load float, ptr %i.qi, align 4          ; 6 uses
  %i.qk = insertelement <4 x float> poison, float %i.qj, i64 0
  %i.ql = shufflevector <4 x float> %i.qk, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.qm = fmul <4 x float> %i.ql, %i.fd
  %i.qn = fmul <4 x float> %i.ql, %i.ff
  %i.qo = fmul float %i.qj, %i.gr                 ; 2 uses
  %i.qp = fmul float %i.qo, f0x3F22F983
  %i.qq = call noundef float @llvm.floor.f32(float %i.qp) ; 2 uses
  %i.qr = fptosi float %i.qq to i32               ; 3 uses
  %i.qs = fneg float %i.qq
  %i.qt = call float @llvm.fmuladd.f32(float %i.qs, float f0x3FC90FDB, float %i.qo) ; 3 uses
  %i.qu = and i32 %i.qr, 3                        ; 2 uses
  %i.qv = and i32 %i.qr, 1
  %i.qw = add nsw i32 %i.qu, -1
  %i.qx = fmul float %i.qt, %i.qt                 ; 3 uses
  %i.qy = call float @llvm.fmuladd.f32(float %i.qx, float f0xB2D70013, float f0x363938A8)
  %i.qz = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float -0.000000e+00>, float %i.qx, i64 0 ; 2 uses
  %i.ra = shufflevector <4 x float> %i.qz, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 3 uses
  %i.rb = insertelement <4 x float> <float f0xB48B634D, float -0.000000e+00, float poison, float 0.000000e+00>, float %i.qy, i64 2
  %i.rc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ra, <4 x float> %i.rb, <4 x float> <float f0x37CFAB9C, float -0.000000e+00, float f0xB9501096, float 0.000000e+00>)
  %i.rd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ra, <4 x float> %i.rc, <4 x float> <float f0xBAB60981, float -0.000000e+00, float f0x3C088898, float 0.000000e+00>)
  %i.re = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ra, <4 x float> %i.rd, <4 x float> %i.hs)
  %i.rf = fmul float %i.qj, %46
  %i.rg = fmul float %i.qj, %47
  %i.rh = fsub float 1.000000e+00, %i.qj          ; 3 uses
  %i.ri = shufflevector <4 x float> %i.qz, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.rj = insertelement <2 x float> %i.ri, float %i.rh, i64 1
  %i.rk = shufflevector <2 x float> %i.rj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.rl = insertelement <4 x float> <float -5.000000e-01, float poison, float 1.000000e+00, float poison>, float %i.rf, i64 1
  %i.rm = insertelement <4 x float> %i.rl, float %i.rg, i64 3
  %i.rn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rk, <4 x float> %i.re, <4 x float> %i.rm) ; 4 uses
  %i.ro = extractelement <4 x float> %i.rn, i64 0
  %i.rp = call float @llvm.fmuladd.f32(float %i.qx, float %i.ro, float 1.000000e+00) ; 2 uses
  %i.rq = extractelement <4 x float> %i.rn, i64 2
  %i.rr = fmul float %i.qt, %i.rq                 ; 2 uses
  %i.rs = insertelement <4 x float> poison, float %i.rh, i64 0
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.ru = fmul <4 x float> %i.rt, %i.fe
  %i.rv = fadd <4 x float> %i.qm, %i.ru
  %i.rw = fmul <4 x float> %i.rt, %i.fg
  %i.rx = fadd <4 x float> %i.qn, %i.rw
  store <4 x float> %i.rv, ptr %16, align 16
  store <4 x float> %i.rx, ptr %i.s, align 16
  %i.ry = icmp samesign ugt i32 %i.qu, 1
  %i.rz = icmp ult i32 %i.qw, 2
  %i.sa = trunc i32 %i.qr to i1
  %i.sb = select i1 %i.sa, float %i.rp, float %i.rr ; 2 uses
  %i.sc = icmp eq i32 %i.qv, 0
  %i.sd = select i1 %i.sc, float %i.rp, float %i.rr ; 2 uses
  %i.se = fneg float %i.sb
  %i.sf = select i1 %i.ry, float %i.se, float %i.sb
  %i.sg = fneg float %i.sd
  %i.sh = select i1 %i.rz, float %i.sg, float %i.sd
  %i.si = insertelement <2 x float> poison, float %i.sf, i64 0
  %i.sj = shufflevector <2 x float> %i.si, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sk = fmul <2 x float> %i.hk, %i.sj
  %i.sl = insertelement <2 x float> poison, float %i.sh, i64 0
  %i.sm = shufflevector <2 x float> %i.sl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sm, <2 x float> %36, <2 x float> %i.sk)
  %52 = fmul <2 x float> %45, %i.sj
  %53 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sm, <2 x float> %41, <2 x float> %52) ; 2 uses
  %i.so = insertelement <2 x float> poison, float %i.qj, i64 0
  %i.sp = shufflevector <2 x float> %i.so, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sq = fmul <2 x float> %i.sp, %i.gm
  %i.sr = insertelement <2 x float> poison, float %i.rh, i64 0
  %i.ss = shufflevector <2 x float> %i.sr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.st = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ss, <2 x float> %36, <2 x float> %i.sq) ; 3 uses
  %i.su = extractelement <4 x float> %i.rn, i64 1 ; 3 uses
  %i.sv = fmul float %i.su, %i.su
  %i.sw = extractelement <2 x float> %i.st, i64 0 ; 2 uses
  %i.sx = call float @llvm.fmuladd.f32(float %i.sw, float %i.sw, float %i.sv)
  %i.sy = extractelement <2 x float> %i.st, i64 1 ; 2 uses
  %i.sz = call float @llvm.fmuladd.f32(float %i.sy, float %i.sy, float %i.sx)
  %i.ta = extractelement <4 x float> %i.rn, i64 3 ; 3 uses
  %i.tb = call float @llvm.fmuladd.f32(float %i.ta, float %i.ta, float %i.sz) ; 2 uses
  %i.tc = insertelement <4 x float> poison, float %i.tb, i64 0
  %i.td = call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.tc) ; 3 uses
  %i.te = extractelement <4 x float> %i.td, i64 0 ; 2 uses
  %i.tf = fmul float %i.te, 1.500000e+00
  %i.tg = fmul float %i.tb, 5.000000e-01
  %i.th = fmul float %i.te, %i.tg
  %foldExtExtBinop775.a = fmul <4 x float> %i.td, %i.td
  %i.ti = extractelement <4 x float> %foldExtExtBinop775.a, i64 0
  %i.tj = fmul float %i.ti, %i.th
  %i.tk = fsub float %i.tf, %i.tj                 ; 3 uses
  %i.tl = fmul float %i.su, %i.tk
  %i.tm = insertelement <2 x float> poison, float %i.tk, i64 0
  %i.tn = shufflevector <2 x float> %i.tm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.to = fmul <2 x float> %i.st, %i.tn
  %i.tp = fmul float %i.ta, %i.tk
  %54 = extractelement <2 x float> %53, i64 0
  %i.tq = select i1 %i.hl, float %i.tl, float %54 ; 7 uses
  %i.tr = select <2 x i1> %i.hq, <2 x float> %i.to, <2 x float> %i.sn ; 4 uses
  %55 = extractelement <2 x float> %53, i64 1
  %i.ts = select i1 %i.hl, float %i.tp, float %55 ; 10 uses
  %i.tt = fmul <4 x float> %i.ql, %i.fl
  %i.tu = fmul <4 x float> %i.rt, %i.fh
  %i.tv = fadd <4 x float> %i.tu, %i.tt           ; 2 uses
  %i.tw = fmul <4 x float> %i.ql, %i.fm
  %i.tx = fmul <4 x float> %i.rt, %i.fi
  %i.ty = fadd <4 x float> %i.tx, %i.tw           ; 3 uses
  %i.tz = fmul <4 x float> %i.ql, %i.fn
  %i.ua = fmul <4 x float> %i.rt, %i.fj
  %i.ub = fadd <4 x float> %i.ua, %i.tz           ; 3 uses
  %i.uc = fmul <4 x float> %i.ql, %i.fo
  %i.ud = fmul <4 x float> %i.rt, %i.fk
  %i.ue = fadd <4 x float> %i.ud, %i.uc           ; 3 uses
  %.sroa.17152.52.vec.insert = shufflevector <4 x float> %i.tv, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %.sroa.17152.56.vec.insert = shufflevector <4 x float> %.sroa.17152.52.vec.insert, <4 x float> %i.ty, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.uf = fmul float %i.tq, %i.tq
  %i.ug = extractelement <2 x float> %i.tr, i64 0 ; 7 uses
  %i.uh = extractelement <2 x float> %i.tr, i64 1 ; 7 uses
  %i.ui = fneg float %i.uh                        ; 2 uses
  %i.uj = fneg float %i.ts                        ; 3 uses
  %i.uk = call float @llvm.fmuladd.f32(float %i.ug, float %i.ug, float %i.uf)
  %i.ul = shufflevector <2 x float> %i.tr, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.um = insertelement <4 x float> %i.ul, float 1.000000e+00, i64 0
  %i.un = insertelement <4 x float> poison, float %i.uk, i64 0
  %i.uo = insertelement <4 x float> %i.un, float %i.ts, i64 1
  %i.up = insertelement <4 x float> %i.uo, float %i.ui, i64 2 ; 2 uses
  %i.uq = insertelement <4 x float> %i.up, float %i.uj, i64 3
  %i.ur = fmul <4 x float> %i.um, %i.uq
  %i.us = shufflevector <4 x float> %i.up, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ut = insertelement <2 x float> %i.us, float %i.tq, i64 1
  %i.uu = shufflevector <2 x float> %i.ut, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.uv = shufflevector <2 x float> %i.tr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 1>
  %i.uw = insertelement <4 x float> %i.uv, float %i.ts, i64 2
  %i.ux = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uu, <4 x float> %i.uw, <4 x float> %i.ur) ; 4 uses
  %i.uy = extractelement <4 x float> %i.ux, i64 0
  %i.uz = call float @llvm.fmuladd.f32(float %i.uj, float %i.ts, float %i.uy)
  %i.va = extractelement <4 x float> %i.ux, i64 1
  %i.vb = fmul float %i.va, 2.000000e+00
  %i.vc = extractelement <4 x float> %i.ux, i64 2
  %i.vd = fmul float %i.vc, 2.000000e+00
  %i.ve = extractelement <4 x float> %i.ux, i64 3
  %i.vf = fmul float %i.ve, 2.000000e+00
  %i.vg = fneg float %i.tq                        ; 2 uses
  %i.vh = fmul float %i.tq, %i.vg
  %i.vi = call float @llvm.fmuladd.f32(float %i.ug, float %i.ug, float %i.vh) ; 2 uses
  %i.vj = call float @llvm.fmuladd.f32(float %i.uh, float %i.uh, float %i.vi)
  %i.vk = call float @llvm.fmuladd.f32(float %i.uj, float %i.ts, float %i.vj)
  %i.vl = fmul float %i.ug, %i.tq
  %i.vm = call float @llvm.fmuladd.f32(float %i.uh, float %i.ts, float %i.vl)
  %i.vn = fmul float %i.vm, 2.000000e+00
  %i.vo = fmul float %i.ug, %i.uh
  %i.vp = call float @llvm.fmuladd.f32(float %i.tq, float %i.ts, float %i.vo)
  %i.vq = fmul float %i.vp, 2.000000e+00
  %i.vr = fmul float %i.ug, %i.vg
  %i.vs = call float @llvm.fmuladd.f32(float %i.uh, float %i.ts, float %i.vr)
  %i.vt = fmul float %i.vs, 2.000000e+00
  %i.vu = call float @llvm.fmuladd.f32(float %i.ui, float %i.uh, float %i.vi)
  %i.vv = call float @llvm.fmuladd.f32(float %i.ts, float %i.ts, float %i.vu)
  %i.vw = insertelement <4 x float> poison, float %i.uz, i64 0
  %i.vx = shufflevector <4 x float> %i.vw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vy = insertelement <4 x float> poison, float %i.vb, i64 0
  %i.vz = shufflevector <4 x float> %i.vy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wa = insertelement <4 x float> poison, float %i.vd, i64 0
  %i.wb = shufflevector <4 x float> %i.wa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wc = fmul <4 x float> %i.wb, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.wd = fmul <4 x float> %i.vz, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.we = fadd <4 x float> %i.wd, %i.wc
  %i.wf = fmul <4 x float> %i.vx, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.wg = fadd <4 x float> %i.wf, %i.we           ; 4 uses
  %i.wh = insertelement <4 x float> poison, float %i.vf, i64 0
  %i.wi = shufflevector <4 x float> %i.wh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wj = insertelement <4 x float> poison, float %i.vk, i64 0
  %i.wk = shufflevector <4 x float> %i.wj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wl = insertelement <4 x float> poison, float %i.vn, i64 0
  %i.wm = shufflevector <4 x float> %i.wl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wn = fmul <4 x float> %i.wm, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.wo = fmul <4 x float> %i.wk, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.wp = fadd <4 x float> %i.wn, %i.wo
  %i.wq = fmul <4 x float> %i.wi, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.wr = fadd <4 x float> %i.wq, %i.wp           ; 4 uses
  %i.ws = insertelement <4 x float> poison, float %i.vq, i64 0
  %i.wt = shufflevector <4 x float> %i.ws, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wu = insertelement <4 x float> poison, float %i.vt, i64 0
  %i.wv = shufflevector <4 x float> %i.wu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ww = insertelement <4 x float> poison, float %i.vv, i64 0
  %i.wx = shufflevector <4 x float> %i.ww, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wy = fmul <4 x float> %i.wx, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.wz = fmul <4 x float> %i.wv, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.xa = fadd <4 x float> %i.wz, %i.wy
  %i.xb = fmul <4 x float> %i.wt, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.xc = fadd <4 x float> %i.xb, %i.xa           ; 3 uses
  %i.xd = fadd <4 x float> %.sroa.17152.56.vec.insert, zeroinitializer
  %i.xe = shufflevector <4 x float> %i.tv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xf = fmul <4 x float> %i.xc, zeroinitializer ; 2 uses
  %i.xg = fmul <4 x float> %i.wr, zeroinitializer
  %i.xh = fadd ninf <4 x float> %i.xg, %i.xf
  %i.xi = fmul <4 x float> %i.xe, %i.wg
  %i.xj = fadd <4 x float> %i.xi, %i.xh
  %i.xk = shufflevector <4 x float> %i.ty, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xl = shufflevector <4 x float> %i.ty, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.xm = fmul <4 x float> %i.xl, %i.wr
  %i.xn = fadd <4 x float> %i.xm, %i.xf
  %i.xo = fmul <4 x float> %i.xk, %i.wg
  %i.xp = fadd <4 x float> %i.xo, %i.xn
  %i.xq = shufflevector <4 x float> %i.ub, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xr = shufflevector <4 x float> %i.ub, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.xs = shufflevector <4 x float> %i.ub, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.xt = fmul <4 x float> %i.xs, %i.xc
  %i.xu = fmul <4 x float> %i.xr, %i.wr
  %i.xv = fadd <4 x float> %i.xu, %i.xt
  %i.xw = fmul <4 x float> %i.xq, %i.wg
  %i.xx = fadd <4 x float> %i.xw, %i.xv
  %i.xy = shufflevector <4 x float> %i.ue, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xz = shufflevector <4 x float> %i.ue, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ya = shufflevector <4 x float> %i.ue, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.yb = fmul <4 x float> %i.ya, %i.xc
  %i.yc = fmul <4 x float> %i.xz, %i.wr
  %i.yd = fadd <4 x float> %i.yc, %i.yb
  %i.ye = fmul <4 x float> %i.xy, %i.wg
  %i.yf = fadd <4 x float> %i.ye, %i.yd
  %i.yg = fadd <4 x float> %i.xd, %i.yf
  %i.yh = fmul <4 x float> %i.ai, %i.ql
  %i.yi = fmul <4 x float> %i.ac, %i.rt
  %i.yj = fadd <4 x float> %i.yh, %i.yi           ; 3 uses
  %i.yk = shufflevector <4 x float> %i.yj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yl = shufflevector <4 x float> %i.yj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ym = shufflevector <4 x float> %i.yj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.yn = fmul <4 x float> %i.ym, %i.xx
  %i.yo = fadd <4 x float> %i.yn, %i.yg
  %i.yp = fmul <4 x float> %i.yl, %i.xp
  %i.yq = fadd <4 x float> %i.yp, %i.yo
  %i.yr = fmul <4 x float> %i.yk, %i.xj
  %i.ys = fadd <4 x float> %i.yr, %i.yq
  store <4 x float> %i.ys, ptr %17, align 16, !alias.scope !284
  %i.yt = load float, ptr %i.hn, align 4
  %i.yu = load float, ptr %i.ho, align 4
  %i.yv = fsub float %i.yt, %i.yu                 ; 2 uses
  %i.yw = fcmp olt float %.sroa.speculated753, %i.yv
  %.sroa.speculated = select i1 %i.yw, float %i.yv, float %.sroa.speculated753 ; 2 uses
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
end_hunk_0
