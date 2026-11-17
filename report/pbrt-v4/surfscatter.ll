Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/surfscatter?download=true
inline.NumInlined: 8253
inline.NumDeleted: 1421
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZNK4pbrt18CompactLightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEERKNS_7Bounds3IfEE:bb.a
  %i.bs = extractelement <2 x float> %i.br, i64 0
  %i.bt = fadd float %i.bq, %i.bs
  %i.bu = extractelement <2 x float> %i.br, i64 1
  %i.bv = fadd float %i.bu, %i.bt                 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.bk, %i.bi ; 2 uses
  %foldExtExtBinop178 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.bw = shufflevector <2 x float> %i.bk, <2 x float> %i.x, <2 x i32> <i32 1, i32 2>
  %i.bx = shufflevector <2 x float> %i.bi, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %i.by = fsub <2 x float> %i.bw, %i.bx           ; 2 uses
  %i.bz = fmul <2 x float> %i.by, %i.by           ; 2 uses
  %shift = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop180 = fadd <2 x float> %shift, %foldExtExtBinop178
  %foldExtExtBinop182 = fadd <2 x float> %i.bz, %foldExtExtBinop180
  %i.ca = extractelement <2 x float> %foldExtExtBinop182, i64 0
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.ca)
  %i.cb = fmul float %sqrt.i, 5.000000e-01        ; 2 uses
  %i.cc = fcmp olt float %i.bv, %i.cb
  %.sroa.speculated149 = select i1 %i.cc, float %i.cb, float %i.bv
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bv) ; 2 uses
  %i.cd = fdiv float %i.aq, %sqrt.i.i             ; 2 uses
  %i.ce = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fdiv <2 x float> %i.bp, %i.cf           ; 3 uses
  %i.ch = load <2 x i16>, ptr %0, align 4, !tbaa !319
  %i.ci = uitofp <2 x i16> %i.ch to <2 x float>
  %i.cj = fdiv nnan <2 x float> %i.ci, splat (float 6.553500e+04)
  %i.ck = fmul nnan <2 x float> %i.cj, splat (float 2.000000e+00)
  %i.cl = fadd <2 x float> %i.ck, splat (float -1.000000e+00) ; 3 uses
  %i.cm = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cl) ; 3 uses
  %shift184 = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop185 = fadd <2 x float> %i.cm, %shift184
  %i.cn = extractelement <2 x float> %foldExtExtBinop185, i64 0
  %i.co = fsub float 1.000000e+00, %i.cn          ; 4 uses
  %i.cp = fcmp olt float %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.b, label %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit

bb.b:                                             ; preds = %bb.a
  %i.cq = fsub nnan <2 x float> splat (float 1.000000e+00), %i.cm
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cs = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> splat (float 1.000000e+00), <2 x float> %i.cl)
  %i.ct = fmul nnan <2 x float> %i.cs, %i.cr
  br label %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit

_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi <2 x float> [ %i.ct, %bb.b ], [ %i.cl, %bb.a ] ; 4 uses
  %.sroa.01.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.cu = fmul <2 x float> %.sroa.0.0.i, %.sroa.0.0.i ; 2 uses
  %shift187 = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop188 = fadd <2 x float> %i.cu, %shift187
  %i.cv = extractelement <2 x float> %foldExtExtBinop188, i64 0
  %i.cw = fmul float %i.co, %i.co
  %i.cx = fadd float %i.cw, %i.cv
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cx) ; 2 uses
  %i.cy = fdiv float %.sroa.01.0.vec.extract.i.i.i.i, %sqrt.i.i.i
  %i.cz = fmul float %i.cd, %i.cy
  %i.da = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.db = insertelement <2 x float> %i.da, float %i.co, i64 1
  %i.dc = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fdiv <2 x float> %i.db, %i.dd
  %i.df = fmul <2 x float> %i.cg, %i.de           ; 2 uses
  %i.dg = extractelement <2 x float> %i.df, i64 0
  %i.dh = fadd float %i.cz, %i.dg
  %i.di = extractelement <2 x float> %i.df, i64 1
  %i.dj = fadd float %i.di, %i.dh                 ; 2 uses
  %i.dk = and i32 %i.z, 1073741824
  %.not = icmp eq i32 %i.dk, 0
  %i.dl = tail call float @llvm.fabs.f32(float %i.dj)
  %spec.select = select i1 %.not, float %i.dj, float %i.dl ; 5 uses
  %i.dm = fmul float %spec.select, %spec.select
  %i.dn = fsub float 1.000000e+00, %i.dm          ; 2 uses
  %i.do = fcmp ogt float %i.dn, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.do, float %i.dn, float 0.000000e+00
  %sqrt.i124 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 2 uses
  %i.dp = fcmp ult float %i.ap, %i.an
  %i.dq = fcmp ugt float %i.ap, %i.am
  %or.cond.i.i.i = select i1 %i.dp, i1 true, i1 %i.dq
  br i1 %or.cond.i.i.i, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit
  %i.dr = shufflevector <2 x float> %i.bm, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ds = shufflevector <2 x float> %i.bk, <2 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dt = fcmp ugt <4 x float> %i.dr, %i.ds
  %i.du = freeze <4 x i1> %i.dt
  %i.dv = bitcast <4 x i1> %i.du to i4
  %.not206 = icmp eq i4 %i.dv, 0
  br i1 %.not206, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i: ; preds = %bb.c
  %i.dw = fsub float %i.ap, %i.am                 ; 2 uses
  %foldExtExtBinop190 = fsub <2 x float> %i.bm, %i.bk ; 2 uses
  %foldExtExtBinop192 = fsub <2 x float> %i.bm, %i.bk ; 2 uses
  %i.dx = fmul float %i.dw, %i.dw
  %foldExtExtBinop194 = fmul <2 x float> %foldExtExtBinop190, %foldExtExtBinop190
  %i.dy = extractelement <2 x float> %foldExtExtBinop194, i64 0
  %i.dz = fadd float %i.dx, %i.dy
  %foldExtExtBinop196 = fmul <2 x float> %foldExtExtBinop192, %foldExtExtBinop192
  %i.ea = extractelement <2 x float> %foldExtExtBinop196, i64 1
  %i.eb = fadd float %i.ea, %i.dz
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.eb) ; 2 uses
  %i.ec = fmul float %sqrt.i.i.i.i, %sqrt.i.i.i.i ; 2 uses
  %i.ed = fcmp olt float %i.bv, %i.ec
  br i1 %i.ed, label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread: ; preds = %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit, %bb.c, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i
  %i.ee = phi float [ %i.ec, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit ]
  %i.ef = fsub float %i.ap, %.sroa.0.0.vec.extract.i ; 3 uses
  %shift198 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop199 = fsub <2 x float> %i.bm, %shift198 ; 3 uses
  %i.eg = extractelement <2 x float> %foldExtExtBinop199, i64 0
  %i.eh = extractelement <2 x float> %i.bm, i64 1
  %i.ei = fsub float %i.eh, %2                    ; 3 uses
  %i.ej = fmul float %i.ef, %i.ef
  %foldExtExtBinop201 = fmul <2 x float> %foldExtExtBinop199, %foldExtExtBinop199
  %i.ek = extractelement <2 x float> %foldExtExtBinop201, i64 0
  %i.el = fadd float %i.ej, %i.ek
  %i.em = fmul float %i.ei, %i.ei
  %i.en = fadd float %i.em, %i.el                 ; 2 uses
  %sqrt.i.i.i125 = tail call noundef float @llvm.sqrt.f32(float %i.en) ; 3 uses
  %i.eo = fdiv float %i.ef, %sqrt.i.i.i125        ; 2 uses
  %i.ep = fdiv float %i.eg, %sqrt.i.i.i125        ; 2 uses
  %i.eq = fdiv float %i.ei, %sqrt.i.i.i125        ; 3 uses
  %i.er = fdiv float %i.ee, %i.en
  %i.es = fsub float 1.000000e+00, %i.er          ; 2 uses
  %i.et = fcmp ogt float %i.es, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.et, float %i.es, float 0.000000e+00
  %sqrt.i.i126 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i)
  %i.eu = fmul float %i.eo, %i.eo
  %i.ev = fmul float %i.ep, %i.ep
  %i.ew = fadd float %i.eu, %i.ev
  %i.ex = fmul float %i.eq, %i.eq
  %i.ey = fadd float %i.ex, %i.ew
  %sqrt.i.i.i48.i = tail call noundef float @llvm.sqrt.f32(float %i.ey)
  %i.ez = fdiv float %i.eq, %sqrt.i.i.i48.i
  %.sroa.3.8.vec.insert.i = insertelement <2 x float> poison, float %i.ez, i64 0
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i, float %sqrt.i.i126, i64 1
  br label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit

_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit: ; preds = %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread
  %.sroa.3.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread ], [ <float 1.000000e+00, float -1.000000e+00>, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i ] ; 2 uses
  %.sroa.3.12.vec.extract = extractelement <2 x float> %.sroa.3.0.i, i64 1 ; 4 uses
  %i.fa = shufflevector <2 x float> %.sroa.3.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fb = insertelement <2 x float> %i.fa, float %i.ai, i64 1 ; 2 uses
  %i.fc = fmul <2 x float> %i.fb, %i.fb
  %i.fd = fsub <2 x float> splat (float 1.000000e+00), %i.fc ; 2 uses
  %i.fe = fcmp ogt <2 x float> %i.fd, zeroinitializer
  %i.ff = select <2 x i1> %i.fe, <2 x float> %i.fd, <2 x float> zeroinitializer ; 2 uses
  %i.fg = extractelement <2 x float> %i.ff, i64 0
  %sqrt.i130 = tail call noundef float @llvm.sqrt.f32(float %i.fg) ; 2 uses
  %i.fh = extractelement <2 x float> %i.ff, i64 1
  %sqrt.i132 = tail call noundef float @llvm.sqrt.f32(float %i.fh) ; 2 uses
  %i.fi = fcmp ogt float %spec.select, %i.ai      ; 2 uses
  %i.fj = fmul float %i.ai, %spec.select
  %i.fk = fmul float %sqrt.i132, %sqrt.i124
  %i.fl = fadd float %i.fj, %i.fk
  %.0.i = select i1 %i.fi, float 1.000000e+00, float %i.fl ; 2 uses
  %i.fm = fmul float %i.ai, %sqrt.i124
  %i.fn = fmul float %sqrt.i132, %spec.select
  %i.fo = fsub float %i.fm, %i.fn
  %.0.i133 = select i1 %i.fi, float 0.000000e+00, float %i.fo
  %i.fp = fcmp ogt float %.0.i, %.sroa.3.12.vec.extract
  %i.fq = fmul float %.0.i, %.sroa.3.12.vec.extract
  %i.fr = fmul float %.0.i133, %sqrt.i130
  %i.fs = fadd float %i.fq, %i.fr
  %.0.i134 = select i1 %i.fp, float 1.000000e+00, float %i.fs ; 2 uses
  %i.ft = fcmp ugt float %.0.i134, %i.al
  br i1 %i.ft, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !1009
  %i.fw = fmul float %.0.i134, %i.fv
  %i.fx = fdiv float %i.fw, %.sroa.speculated149  ; 2 uses
  %.sroa.0164.0.vec.extract = extractelement <2 x float> %3, i64 0 ; 2 uses
  %i.fy = fcmp une float %.sroa.0164.0.vec.extract, 0.000000e+00
  %.sroa.0164.4.vec.extract = extractelement <2 x float> %3, i64 1
  %i.fz = fcmp une float %.sroa.0164.4.vec.extract, 0.000000e+00
  %or.cond.i137 = select i1 %i.fy, i1 true, i1 %i.fz
  %i.ga = fcmp une float %4, 0.000000e+00
  %or.cond = select i1 %or.cond.i137, i1 true, i1 %i.ga
  br i1 %or.cond, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread, label %bb.e

_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread: ; preds = %bb.d
  %i.gb = extractelement <2 x float> %i.cg, i64 1
  %i.gc = fmul float %4, %i.gb                    ; 2 uses
  %i.gd = fneg float %i.gc
  %i.ge = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gf = insertelement <2 x float> %i.ge, float %4, i64 1
  %i.gg = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.gd, i64 1
  %i.gi = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.gf, <2 x float> %i.cg, <2 x float> %i.gh) ; 2 uses
  %shift203 = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop204 = fadd <2 x float> %i.gi, %shift203
  %i.gj = extractelement <2 x float> %foldExtExtBinop204, i64 0
  %i.gk = tail call noundef float @llvm.fma.f32(float %.sroa.0164.0.vec.extract, float %i.cd, float %i.gj) ; 3 uses
  %i.gl = tail call noundef float @llvm.fabs.f32(float %i.gk) ; 2 uses
  %i.gm = fmul float %i.gk, %i.gk
  %i.gn = fsub float 1.000000e+00, %i.gm          ; 2 uses
  %i.go = fcmp ogt float %i.gn, 0.000000e+00
  %.sroa.speculated.i140 = select i1 %i.go, float %i.gn, float 0.000000e+00
  %sqrt.i141 = tail call nnan float @llvm.sqrt.f32(float %.sroa.speculated.i140)
  %i.gp = fcmp ogt float %i.gl, %.sroa.3.12.vec.extract
  %i.gq = fmul float %i.gl, %.sroa.3.12.vec.extract
  %i.gr = fmul float %sqrt.i141, %sqrt.i130
  %i.gs = fadd float %i.gq, %i.gr
  %.0.i142 = select i1 %i.gp, float 1.000000e+00, float %i.gs
  %i.gt = fmul float %.0.i142, %i.fx
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread
  %.0170 = phi float [ %i.gt, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread ], [ %i.fx, %bb.d ] ; 2 uses
  %i.gu = fcmp olt float %.0170, 0.000000e+00
  %.sroa.speculated = select i1 %i.gu, float 0.000000e+00, float %.0170
  br label %bb.f

bb.f:                                             ; preds = %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit, %bb.e
  %.0 = phi float [ %.sroa.speculated, %bb.e ], [ 0.000000e+00, %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit ]
  ret float %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail8DispatchIRZNKS_5Light8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEbEUlT_E_N4pstd8optionalINS_13LightLiSampleEEENS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightEJNS_24PortalImageInfiniteLightEEvEET0_OS7_PKvi(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.117") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #14 comdat {
bb.a:
  %4 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %5 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %6 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %7 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %8 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %9 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %10 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %11 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %12 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %13 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %14 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %15 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %16 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %17 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %18 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  switch i32 %3, label %bb.l [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %i.b = load ptr, ptr %1, align 8, !tbaa !1038, !noalias !1036, !nonnull !12, !align !308 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.55.0.copyload.i = load float, ptr %.sroa.55.0..sroa_idx.i, align 4, !noalias !1036
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.66.0.copyload.i = load float, ptr %.sroa.66.0..sroa_idx.i, align 4, !noalias !1036
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1039, !noalias !1036, !nonnull !12, !align !308
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.g = fadd float %.sroa.55.0.copyload.i, %.sroa.66.0.copyload.i
  %i.h = fmul float %i.g, 5.000000e-01
  %i.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 4, !noalias !1036
  %i.j = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.b, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !noalias !1036
  %i.k = shufflevector <4 x float> %i.j, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !1036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 4 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !1036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %i.l = load <8 x float>, ptr %i.e, align 4, !tbaa !155, !noalias !1041 ; 4 uses
  %i.m = shufflevector <8 x float> %i.l, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.n = fmul <2 x float> %i.m, zeroinitializer
  %i.o = shufflevector <8 x float> %i.l, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.p = fmul <2 x float> %i.o, zeroinitializer
  %i.q = fadd <2 x float> %i.n, %i.p
  %i.r = shufflevector <8 x float> %i.l, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.s = fmul <2 x float> %i.r, zeroinitializer
  %i.t = fadd <2 x float> %i.q, %i.s
  %i.u = shufflevector <8 x float> %i.l, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.v = fadd <2 x float> %i.u, %i.t              ; 2 uses
  %i.w = load <8 x float>, ptr %i.f, align 4, !tbaa !155, !noalias !1041 ; 4 uses
  %i.x = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.y = fmul <2 x float> %i.x, zeroinitializer
  %i.z = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.aa = fmul <2 x float> %i.z, zeroinitializer
  %i.ab = fadd <2 x float> %i.y, %i.aa
  %i.ac = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.ad = fmul <2 x float> %i.ac, zeroinitializer
  %i.ae = fadd <2 x float> %i.ab, %i.ad
  %i.af = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.ag = fadd <2 x float> %i.af, %i.ae           ; 3 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 1 ; 2 uses
  %i.ai = fcmp oeq float %i.ah, 1.000000e+00      ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ak = fdiv <2 x float> %i.v, %i.aj
  %i.al = extractelement <2 x float> %i.ag, i64 0 ; 2 uses
  %i.am = fdiv float %i.al, %i.ah
  %i.an = insertelement <2 x i1> poison, i1 %i.ai, i64 0
  %i.ao = shufflevector <2 x i1> %i.an, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ap = select <2 x i1> %i.ao, <2 x float> %i.v, <2 x float> %i.ak ; 3 uses
  %.sroa.495.0.i.i.i = select i1 %i.ai, float %i.al, float %i.am ; 2 uses
  %i.aq = fadd <2 x float> %i.i, %i.k
  %i.ar = fmul <2 x float> %i.aq, splat (float 5.000000e-01)
  %i.as = fsub <2 x float> %i.ap, %i.ar           ; 3 uses
  %i.at = fsub float %.sroa.495.0.i.i.i, %i.h     ; 3 uses
  %i.au = fmul <2 x float> %i.as, %i.as           ; 2 uses
  %shift = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.au, %shift
  %i.av = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aw = fmul float %i.at, %i.at
  %i.ax = fadd float %i.aw, %i.av                 ; 2 uses
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ax) ; 2 uses
  %i.ay = insertelement <2 x float> poison, float %sqrt.i.i.i.i, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fdiv <2 x float> %i.as, %i.az
  %i.bb = fdiv float %i.at, %sqrt.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !1043, !noalias !1041
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1044, !noalias !1041
  %i.bg = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %18), !noalias !1041 ; 2 uses
  %i.bh = extractvalue { <2 x float>, <2 x float> } %i.bg, 0
  %i.bi = extractvalue { <2 x float>, <2 x float> } %i.bg, 1
  %i.bj = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = fmul <2 x float> %i.bk, %i.bh
  %i.bm = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = fdiv <2 x float> %i.bl, %i.bn
  %i.bp = fmul <2 x float> %i.bk, %i.bi
  %i.bq = fdiv <2 x float> %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.sroa.07.4.vec.insert.i.i.i.i = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.05.4.vec.insert.i.i.i.i = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.vec.insert.i.i76.i.i = insertelement <2 x float> poison, float %.sroa.495.0.i.i.i, i64 0
  %.sroa.0.4.vec.insert.i.i77.i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i76.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.11.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.11.32..sroa_idx.i.i, i8 0, i64 36, i1 false), !alias.scope !1041
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.bs, align 8, !tbaa !270, !alias.scope !1041
  store <2 x float> %i.bo, ptr %0, align 8, !alias.scope !1041
  %.sroa.079.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.bq, ptr %.sroa.079.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1041
  %.sroa.480.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.ba, ptr %.sroa.480.0..sroa_idx.i.i, align 8, !alias.scope !1041
  %.sroa.581.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bb, ptr %.sroa.581.0..sroa_idx.i.i, align 8, !alias.scope !1041
  %.sroa.682.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 1.000000e+00, ptr %.sroa.682.0..sroa_idx.i.i, align 4, !alias.scope !1041
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %.sroa.07.4.vec.insert.i.i.i.i, ptr %i.bt, align 8, !alias.scope !1041
  %.sroa.9.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.05.4.vec.insert.i.i.i.i, ptr %.sroa.9.32..sroa_idx.i.i, align 8, !alias.scope !1041
  %.sroa.10.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i77.i.i, ptr %.sroa.10.32..sroa_idx.i.i, align 8, !alias.scope !1041
  %.sroa.13.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.br, ptr %.sroa.13.32..sroa_idx.i.i, align 8, !alias.scope !1041
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.bu, align 8, !tbaa !177, !alias.scope !1041
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !1036
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  %i.bv = load ptr, ptr %1, align 8, !tbaa !1038, !noalias !1045, !nonnull !12, !align !308 ; 6 uses
  %.sroa.03.0.copyload.i19 = load float, ptr %i.bv, align 4, !noalias !1045
  %.sroa.2.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %.sroa.2.0.copyload.i21 = load float, ptr %.sroa.2.0..sroa_idx.i20, align 4, !noalias !1045
  %.sroa.3.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.3.0.copyload.i23 = load float, ptr %.sroa.3.0..sroa_idx.i22, align 4, !noalias !1045
  %.sroa.44.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.sroa.44.0.copyload.i25 = load float, ptr %.sroa.44.0..sroa_idx.i24, align 4, !noalias !1045
  %.sroa.55.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.55.0.copyload.i27 = load float, ptr %.sroa.55.0..sroa_idx.i26, align 4, !noalias !1045
  %.sroa.66.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %.sroa.66.0.copyload.i29 = load float, ptr %.sroa.66.0..sroa_idx.i28, align 4, !noalias !1045
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1039, !noalias !1045, !nonnull !12, !align !308
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !1045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 4 dereferenceable(32) %i.bx, i64 32, i1 false), !noalias !1045
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cb = load <2 x float>, ptr %i.ca, align 4, !tbaa !155, !noalias !1047
  %i.cc = fmul <2 x float> %i.cb, zeroinitializer ; 2 uses
  %shift69 = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop70 = fadd <2 x float> %i.cc, %shift69
  %i.cd = extractelement <2 x float> %foldExtExtBinop70, i64 0
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !155, !noalias !1047
  %i.cg = fadd float %i.cf, %i.cd                 ; 3 uses
  %i.ch = fmul float %i.cg, %i.cg
  %i.ci = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.by, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !155, !noalias !1047 ; 3 uses
  %i.cj = shufflevector <5 x float> %i.ci, <5 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ck = fmul <2 x float> %i.cj, zeroinitializer
  %i.cl = load <2 x float>, ptr %i.bz, align 4, !tbaa !155, !noalias !1047
end_hunk_0
begin_hunk_1_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_21BasicTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_:bb.a
  %i.rr = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !226
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.rs, i64 %i.re
  store float %i.rq, ptr %i.rt, align 4, !tbaa !155
  %i.ru = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !227
  %i.rw = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !157
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.rx, i64 %i.re
  store float %i.rv, ptr %i.ry, align 4, !tbaa !155
  %i.rz = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !228
  %i.sb = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !158
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.re
  store float %i.sa, ptr %i.sd, align 4, !tbaa !155
  %i.se = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.sf = load float, ptr %i.se, align 4, !tbaa !229
  %i.sg = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !159
  %i.si = getelementptr inbounds [4 x i8], ptr %i.sh, i64 %i.re
  store float %i.sf, ptr %i.si, align 4, !tbaa !155
  %i.sj = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !227
  %i.sl = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !157
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.sm, i64 %i.re
  store float %i.sk, ptr %i.sn, align 4, !tbaa !155
  %i.so = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.sp = load float, ptr %i.so, align 4, !tbaa !228
  %i.sq = getelementptr inbounds nuw i8, ptr %i.h, i64 344
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !158
  %i.ss = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.re
  store float %i.sp, ptr %i.ss, align 4, !tbaa !155
  %i.st = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.su = load float, ptr %i.st, align 4, !tbaa !229
  %i.sv = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !159
  %i.sx = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.re
  store float %i.su, ptr %i.sx, align 4, !tbaa !155
  %i.sy = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !230
  %i.ta = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !163
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.re
  store float %i.sz, ptr %i.tc, align 4, !tbaa !155
  %i.td = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.te = load float, ptr %i.td, align 4, !tbaa !231
  %i.tf = getelementptr inbounds nuw i8, ptr %i.h, i64 376
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !164
  %i.th = getelementptr inbounds [4 x i8], ptr %i.tg, i64 %i.re
  store float %i.te, ptr %i.th, align 4, !tbaa !155
  %i.ti = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !232
  %i.tk = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !233
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.re
  store float %i.tj, ptr %i.tm, align 4, !tbaa !155
  %i.tn = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.to = load float, ptr %i.tn, align 4, !tbaa !234
  %i.tp = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !160
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.tq, i64 %i.re
  store float %i.to, ptr %i.tr, align 4, !tbaa !155
  %i.ts = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !235
  %i.tu = getelementptr inbounds nuw i8, ptr %i.h, i64 408
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !161
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.re
  store float %i.tt, ptr %i.tw, align 4, !tbaa !155
  %i.tx = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !181
  %i.tz = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !162
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.re
  store float %i.ty, ptr %i.ub, align 4, !tbaa !155
  %i.uc = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !234
  %i.ue = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !160
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.re
  store float %i.ud, ptr %i.ug, align 4, !tbaa !155
  %i.uh = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !235
  %i.uj = getelementptr inbounds nuw i8, ptr %i.h, i64 440
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !161
  %i.ul = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.re
  store float %i.ui, ptr %i.ul, align 4, !tbaa !155
  %i.um = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.un = load float, ptr %i.um, align 4, !tbaa !181
  %i.uo = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !162
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.re
  store float %i.un, ptr %i.uq, align 4, !tbaa !155
  %i.ur = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.us = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !153
  %i.uu = getelementptr inbounds [16 x i8], ptr %i.ut, i64 %i.re ; 2 uses
  %i.uv = load <4 x float>, ptr %i.ur, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.uv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.uv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.uu, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %.sroa.021.0.copyload.i.i.i586.pre = load <2 x float>, ptr %i.ng, align 8, !noalias !1992
  %.sroa.013.0.copyload.i.i.i593.pre = load <2 x float>, ptr %i.oj, align 4, !noalias !1992
  %.sroa.222.0.copyload.i.i.i588.pre = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !1992
  %.sroa.214.0.copyload.i.i.i595.pre = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !noalias !1992
  %.sroa.05.0.copyload.i.i.i598.pre = load <2 x float>, ptr %i.ok, align 8, !noalias !1992
  %.sroa.26.0.copyload.i.i.i600.pre = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !1992
  %.pre1162.pre = load i64, ptr %20, align 8, !tbaa !212
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.q, %bb.p, %bb.o
  %.pre1162 = phi i64 [ %.pre1162.pre, %bb.q ], [ %i.nf, %bb.p ], [ %i.nf, %bb.o ] ; 5 uses
  %.sroa.26.0.copyload.i.i.i600 = phi float [ %.sroa.26.0.copyload.i.i.i600.pre, %bb.q ], [ %.sroa.17.0, %bb.p ], [ %.sroa.17.0, %bb.o ] ; 2 uses
  %.sroa.214.0.copyload.i.i.i595 = phi float [ %.sroa.214.0.copyload.i.i.i595.pre, %bb.q ], [ %i.oi, %bb.p ], [ %i.oi, %bb.o ] ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = phi <2 x float> [ %.sroa.013.0.copyload.i.i.i593.pre, %bb.q ], [ %.sroa.0.4.vec.insert.i.i24.i, %bb.p ], [ %.sroa.0.4.vec.insert.i.i24.i, %bb.o ] ; 3 uses
  %.sroa.222.0.copyload.i.i.i588 = phi float [ %.sroa.222.0.copyload.i.i.i588.pre, %bb.q ], [ %i.nr, %bb.p ], [ %i.nr, %bb.o ] ; 2 uses
  %.sroa.021.0.copyload.i.i.i586 = phi <2 x float> [ %.sroa.021.0.copyload.i.i.i586.pre, %bb.q ], [ %i.nq, %bb.p ], [ %i.nq, %bb.o ] ; 3 uses
  %i.uw = phi <2 x float> [ %.sroa.05.0.copyload.i.i.i598.pre, %bb.q ], [ %.sroa.0259.0, %bb.p ], [ %.sroa.0259.0, %bb.o ] ; 2 uses
  %.sroa.01010.0.copyload = load <2 x float>, ptr %i.ma, align 4 ; 5 uses
  %.sroa.121017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121017.0.copyload = load float, ptr %.sroa.121017.0..sroa_idx, align 4 ; 4 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 2 uses
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !648
  %i.va = load ptr, ptr %i.ux, align 8, !tbaa !236, !noalias !1993
  %i.vb = sext i32 %i.uz to i64                   ; 2 uses
  %i.vc = getelementptr inbounds [16 x i8], ptr %i.va, i64 %i.vb ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  %i.vd = load <2 x float>, ptr %i.vc, align 16, !noalias !1993
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !1993
  %i.ve = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !237, !noalias !1993
  %i.vg = getelementptr inbounds [16 x i8], ptr %i.vf, i64 %i.vb
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vg, align 16, !noalias !1993 ; 2 uses
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %i.vh = shufflevector <2 x float> %.sroa.01010.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vi = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.vj = fmul <2 x float> %i.vh, %i.vi
  %i.vk = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.vl = fmul <2 x float> %.sroa.01010.0.copyload, %i.vk
  %i.vm = fadd <2 x float> %i.vj, %i.vl
  %i.vn = insertelement <2 x float> poison, float %.sroa.121017.0.copyload, i64 0
  %i.vo = shufflevector <2 x float> %i.vn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vp = insertelement <2 x float> poison, float %.sroa.222.0.copyload.i.i.i588, i64 0
  %i.vq = insertelement <2 x float> %i.vp, float %.sroa.214.0.copyload.i.i.i595, i64 1
  %i.vr = fmul <2 x float> %i.vo, %i.vq
  %i.vs = fadd <2 x float> %i.vr, %i.vm
  %i.vt = fmul <2 x float> %.sroa.01010.0.copyload, %i.uw ; 2 uses
  %shift1197 = shufflevector <2 x float> %i.vt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1198 = fadd <2 x float> %i.vt, %shift1197
  %i.vu = extractelement <2 x float> %foldExtExtBinop1198, i64 0
  %i.vv = fmul float %.sroa.121017.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.vw = fadd float %i.vv, %i.vu                 ; 4 uses
  %i.vx = fcmp oeq float %i.vw, 0.000000e+00
  br i1 %i.vx, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vy = and i64 %.pre1162, 144115188075855871
  %i.vz = inttoptr i64 %i.vy to ptr
  %i.wa = call float @llvm.fabs.f32(float %i.vw)  ; 4 uses
  %i.wb = load float, ptr %i.vz, align 4, !tbaa !652, !noalias !1994 ; 4 uses
  %i.wc = fcmp ogt float %i.wa, 1.000000e+00
  %..i.i.i.i = select i1 %i.wc, float 1.000000e+00, float %i.wa ; 5 uses
  %i.wd = fmul float %..i.i.i.i, %..i.i.i.i
  %i.we = fsub float 1.000000e+00, %i.wd
  %i.wf = fmul float %i.wb, %i.wb
  %i.wg = fdiv float %i.we, %i.wf                 ; 2 uses
  %i.wh = fcmp ult float %i.wg, 1.000000e+00
  br i1 %i.wh, label %_ZN4pbrt12FrDielectricEff.exit.i.i, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread

_ZN4pbrt12FrDielectricEff.exit.i.i:               ; preds = %bb.r
  %i.wi = fsub float 1.000000e+00, %i.wg          ; 2 uses
  %i.wj = fcmp ogt float %i.wi, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.wj, float %i.wi, float 0.000000e+00
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i.i) ; 3 uses
  %i.wk = fmul float %..i.i.i.i, %i.wb            ; 2 uses
  %i.wl = fsub float %i.wk, %sqrt.i.i.i.i
  %i.wm = fadd float %i.wk, %sqrt.i.i.i.i
  %i.wn = fdiv float %i.wl, %i.wm                 ; 2 uses
  %i.wo = fmul float %i.wb, %sqrt.i.i.i.i         ; 2 uses
  %i.wp = fsub float %..i.i.i.i, %i.wo
  %i.wq = fadd float %..i.i.i.i, %i.wo
  %i.wr = fdiv float %i.wp, %i.wq                 ; 2 uses
  %i.ws = fmul float %i.wn, %i.wn
  %i.wt = fmul float %i.wr, %i.wr
  %i.wu = fadd float %i.ws, %i.wt
  %i.wv = fmul float %i.wu, 5.000000e-01          ; 7 uses
  %i.ww = fsub float 1.000000e+00, %i.wv          ; 3 uses
  %i.wx = fcmp olt float %i.wv, 1.000000e+00
  br i1 %i.wx, label %bb.s, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i

bb.s:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.i.i
  %i.wy = fmul float %i.ww, %i.ww
  %i.wz = fmul float %i.wv, %i.wy
  %i.xa = fmul nnan float %i.wv, %i.wv
  %i.xb = fsub float 1.000000e+00, %i.xa
  %i.xc = fdiv float %i.wz, %i.xb
  %i.xd = fadd float %i.wv, %i.xc                 ; 2 uses
  %i.xe = fsub float 1.000000e+00, %i.xd
  br label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i

_ZN4pbrt12FrDielectricEff.exit.thread.i.i:        ; preds = %bb.s, %_ZN4pbrt12FrDielectricEff.exit.i.i
  %.055.i.i = phi float [ %i.xe, %bb.s ], [ %i.ww, %_ZN4pbrt12FrDielectricEff.exit.i.i ] ; 2 uses
  %.0.i.i = phi float [ %i.xd, %bb.s ], [ %i.wv, %_ZN4pbrt12FrDielectricEff.exit.i.i ] ; 2 uses
  %i.xf = fcmp oeq float %.0.i.i, 0.000000e+00
  %i.xg = fcmp oeq float %.055.i.i, 0.000000e+00
  %or.cond.i.i = and i1 %i.xg, %i.xf
  br i1 %or.cond.i.i, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread

_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread: ; preds = %bb.r, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i
  %.0.i.i1126 = phi float [ %.0.i.i, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i ], [ 1.000000e+00, %bb.r ] ; 3 uses
  %.055.i.i1125 = phi float [ %.055.i.i, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i ], [ 0.000000e+00, %bb.r ] ; 3 uses
  %i.xh = fadd float %.0.i.i1126, %.055.i.i1125   ; 2 uses
  %i.xi = fdiv float %.0.i.i1126, %i.xh           ; 2 uses
  %i.xj = fcmp olt float %.sroa.01.0.vec.extract.i.i584, %i.xi
  %i.xk = fneg <2 x float> %i.vs                  ; 4 uses
  br i1 %i.xj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread
  %i.xl = fdiv float %.0.i.i1126, %i.wa
  %.sroa.076.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.xl, i64 0
  %.sroa.076.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.076.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i

bb.u:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread
  %i.xm = fneg float %i.vw
  %i.xn = fdiv float %.055.i.i1125, %i.wa
  %.sroa.063.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.xn, i64 0
  %.sroa.063.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.063.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xo = fdiv float %.055.i.i1125, %i.xh
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.u, %bb.t
  %.sroa.17.0.ph.i = phi float [ %i.xm, %bb.u ], [ %i.vw, %bb.t ] ; 2 uses
  %.sroa.22.0.ph.i = phi float [ %i.xo, %bb.u ], [ %i.xi, %bb.t ] ; 3 uses
  %.sroa.9.0.ph.i = phi <2 x float> [ %.sroa.063.4.vec.insert.i.i, %bb.u ], [ %.sroa.076.4.vec.insert.i.i, %bb.t ] ; 2 uses
  %i.xp = fcmp une <2 x float> %.sroa.9.0.ph.i, zeroinitializer
  %i.xq = bitcast <2 x i1> %i.xp to i2
  %i.xr = icmp eq i2 %i.xq, 0
  %i.xs = fcmp oeq float %.sroa.22.0.ph.i, 0.000000e+00
  %or.cond.i603 = or i1 %i.xs, %i.xr
  br i1 %or.cond.i603, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.xt = shufflevector <2 x float> %.sroa.9.0.ph.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %i.xk, i64 0
  %i.xu = fmul float %.sroa.222.0.copyload.i.i.i588, %.sroa.041.0.vec.extract.i.i
  %.sroa.041.4.vec.extract.i.i = extractelement <2 x float> %i.xk, i64 1
  %i.xv = fmul float %.sroa.214.0.copyload.i.i.i595, %.sroa.041.4.vec.extract.i.i
  %i.xw = fadd float %i.xu, %i.xv
  %i.xx = insertelement <2 x float> poison, float %.sroa.17.0.ph.i, i64 0
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xz = fmul <2 x float> %i.uw, %i.xy
  %i.ya = fmul float %.sroa.26.0.copyload.i.i.i600, %.sroa.17.0.ph.i
  %i.yb = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yc = fmul <2 x float> %.sroa.021.0.copyload.i.i.i586, %i.yb
  %i.yd = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ye = fmul <2 x float> %.sroa.013.0.copyload.i.i.i593, %i.yd
  %i.yf = fadd <2 x float> %i.yc, %i.ye
  %i.yg = fadd <2 x float> %i.xz, %i.yf           ; 3 uses
  %i.yh = fadd float %i.ya, %i.xw                 ; 6 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.yj = load <4 x float>, ptr %i.yi, align 8
  %i.yk = fmul float %.sroa.17.0, %i.yh           ; 2 uses
  %i.yl = extractelement <2 x float> %i.yg, i64 1 ; 3 uses
  %i.ym = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.yl, float %i.yk)
  %i.yn = fneg float %i.yk
  %i.yo = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.yh, float %i.yn)
  %i.yp = fadd float %i.ym, %i.yo
  %i.yq = extractelement <2 x float> %i.yg, i64 0 ; 3 uses
  %i.yr = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.yq, float %i.yp)
  %i.ys = call noundef float @llvm.fabs.f32(float %i.yr)
  %i.yt = fmul <4 x float> %i.xt, %i.yj
  %i.yu = insertelement <4 x float> poison, float %i.ys, i64 0
  %i.yv = shufflevector <4 x float> %i.yu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yw = fmul <4 x float> %i.yv, %i.yt
  %i.yx = insertelement <4 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.yy = shufflevector <4 x float> %i.yx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yz = fdiv <4 x float> %i.yw, %i.yy           ; 7 uses
  %i.za = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0911.0.copyload = load <4 x float>, ptr %i.za, align 8, !tbaa !71 ; 6 uses
  %i.zb = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.zc = insertelement <2 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.zd = shufflevector <2 x float> %i.zc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ze = fdiv <2 x float> %i.zb, %i.zd
  %i.zf = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.zg = fdiv <2 x float> %i.zf, %i.zd
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.zi = load float, ptr %i.zh, align 8, !tbaa !646 ; 5 uses
  %i.zj = extractelement <4 x float> %i.yz, i64 0
  %i.zk = fmul float %i.zi, %i.zj
  %i.zl = extractelement <4 x float> %i.yz, i64 1
  %i.zm = fmul float %i.zi, %i.zl
  %i.zn = extractelement <4 x float> %i.yz, i64 2
  %i.zo = fmul float %i.zi, %i.zn
  %i.zp = extractelement <4 x float> %i.yz, i64 3
  %i.zq = fmul float %i.zi, %i.zp
  %shift1200 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1201 = fadd <4 x float> %.sroa.0911.0.copyload, %shift1200
  %shift1203 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1204 = fadd <4 x float> %shift1203, %foldExtExtBinop1201
  %shift1206 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1207 = fadd <4 x float> %shift1206, %foldExtExtBinop1204
  %i.zr = extractelement <4 x float> %foldExtExtBinop1207, i64 0
  %i.zs = fmul float %i.zr, 2.500000e-01          ; 4 uses
  %i.zt = fdiv float %i.zk, %i.zs                 ; 2 uses
  %i.zu = fdiv float %i.zm, %i.zs                 ; 2 uses
  %i.zv = fdiv float %i.zo, %i.zs                 ; 2 uses
  %i.zw = fdiv float %i.zq, %i.zs                 ; 2 uses
  %i.zx = fcmp olt float %i.zt, %i.zu
  %.sroa.speculated.i = select i1 %i.zx, float %i.zu, float %i.zt ; 2 uses
  %i.zy = fcmp olt float %.sroa.speculated.i, %i.zv
  %.sroa.speculated.1.i = select i1 %i.zy, float %i.zv, float %.sroa.speculated.i ; 2 uses
  %i.zz = fcmp olt float %.sroa.speculated.1.i, %i.zw
  %.sroa.speculated.2.i = select i1 %i.zz, float %i.zw, float %.sroa.speculated.1.i ; 2 uses
  %i.aaa = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.aaa, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.aab = load i32, ptr %i.pm, align 8, !tbaa !638
  %i.aac = icmp sgt i32 %i.aab, 0
  br i1 %i.aac, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aad = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.aae = fcmp ogt float %i.aad, 0.000000e+00
  %.sroa.speculated = select i1 %i.aae, float %i.aad, float 0.000000e+00 ; 2 uses
  %i.aaf = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.aaf, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aag = fsub float 1.000000e+00, %.sroa.speculated
  %i.aah = insertelement <4 x float> poison, float %i.aag, i64 0
  %i.aai = shufflevector <4 x float> %i.aah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaj = fdiv <4 x float> %i.yz, %i.aai
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w, %bb.v
  %.sroa.0929.0 = phi <4 x float> [ %i.yz, %bb.v ], [ %i.aaj, %bb.y ], [ %i.yz, %bb.w ], [ zeroinitializer, %bb.x ]
  %.sroa.0929.0.fr = freeze <4 x float> %.sroa.0929.0 ; 3 uses
  %i.aak = fcmp une <4 x float> %.sroa.0929.0.fr, zeroinitializer
  %i.aal = bitcast <4 x i1> %i.aak to i4
  %.not1209 = icmp eq i4 %i.aal, 0
  br i1 %.not1209, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705: ; preds = %bb.z
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mb, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !642
  %i.aao = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mc, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %i.yg, float %i.yh) ; 2 uses
  %.fca.0.extract.i709 = extractvalue { <2 x float>, float } %i.aao, 0 ; 2 uses
  %.fca.1.extract.i710 = extractvalue { <2 x float>, float } %i.aao, 1
  %i.aap = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.aaq = load i8, ptr %i.aap, align 2, !tbaa !245, !range !11, !noundef !12
  %i.aar = trunc nuw i8 %i.aaq to i1
  %.sroa.094.0.copyload.pre = load <2 x float>, ptr %i.mb, align 8 ; 2 uses
  %.sroa.295.0.copyload.pre = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 3 uses
  %.sroa.01.0.vec.extract.i712 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 0 ; 2 uses
  %.sroa.01.4.vec.extract.i714 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 1 ; 2 uses
  br i1 %i.aar, label %bb.aa, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge

bb.aa:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705
  %i.aas = fmul float %i.yh, %.sroa.295.0.copyload.pre ; 2 uses
  %i.aat = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i714, float %i.yl, float %i.aas)
  %i.aau = fneg float %i.aas
  %i.aav = call noundef float @llvm.fma.f32(float %.sroa.295.0.copyload.pre, float %i.yh, float %i.aau)
  %i.aaw = fadd float %i.aat, %i.aav
  %i.aax = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i712, float %i.yq, float %i.aaw)
  %i.aay = fcmp ogt float %i.aax, 0.000000e+00
  %.v = select i1 %i.aay, i64 248, i64 240
  %i.aaz = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !177
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705, %bb.aa
  %.sroa.17876.0 = phi i64 [ %i.aba, %bb.aa ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705 ]
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.abc = load i32, ptr %i.abb, align 8, !tbaa !644
  %i.abd = icmp ne i32 %i.abc, 0
  %.sroa.0863.sroa.0.0.copyload = load float, ptr %i.mc, align 8
  %.sroa.0863.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0863.sroa.2.0.copyload = load float, ptr %.sroa.0863.sroa.2.0..sroa_idx, align 4
  %.sroa.0863.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0863.sroa.3.0.copyload = load float, ptr %.sroa.0863.sroa.3.0..sroa_idx, align 8
  %.sroa.0863.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0863.sroa.4.0.copyload = load float, ptr %.sroa.0863.sroa.4.0..sroa_idx, align 4
  %.sroa.0863.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0863.sroa.5.0.copyload = load float, ptr %.sroa.0863.sroa.5.0..sroa_idx, align 8
  %.sroa.0863.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0863.sroa.6.0.copyload = load float, ptr %.sroa.0863.sroa.6.0..sroa_idx, align 4
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 136
end_hunk_1
begin_hunk_2_@_ZZN4pbrt23WavefrontPathIntegrator23EvaluateMaterialAndBSDFINS_22ThinDielectricMaterialENS_25UniversalTextureEvaluatorEEEvPNS_14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS6_INS_23CoatedConductorMaterialEEENS6_INS_17ConductorMaterialEEENS6_INS_18DielectricMaterialEEENS6_INS_15DiffuseMaterialEEENS6_INS_27DiffuseTransmissionMaterialEEENS6_INS_12HairMaterialEEENS6_INS_16MeasuredMaterialEEENS6_INS_18SubsurfaceMaterialEEENS6_IS2_EENS6_INS_11MixMaterialEEEEEEEENS_9TransformEiENKUlSP_E_clESP_:bb.a
  %i.rr = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !226
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.rs, i64 %i.re
  store float %i.rq, ptr %i.rt, align 4, !tbaa !155
  %i.ru = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !227
  %i.rw = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !157
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.rx, i64 %i.re
  store float %i.rv, ptr %i.ry, align 4, !tbaa !155
  %i.rz = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !228
  %i.sb = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !158
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.re
  store float %i.sa, ptr %i.sd, align 4, !tbaa !155
  %i.se = getelementptr inbounds nuw i8, ptr %23, i64 20
  %i.sf = load float, ptr %i.se, align 4, !tbaa !229
  %i.sg = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !159
  %i.si = getelementptr inbounds [4 x i8], ptr %i.sh, i64 %i.re
  store float %i.sf, ptr %i.si, align 4, !tbaa !155
  %i.sj = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !227
  %i.sl = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !157
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.sm, i64 %i.re
  store float %i.sk, ptr %i.sn, align 4, !tbaa !155
  %i.so = getelementptr inbounds nuw i8, ptr %23, i64 28
  %i.sp = load float, ptr %i.so, align 4, !tbaa !228
  %i.sq = getelementptr inbounds nuw i8, ptr %i.h, i64 344
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !158
  %i.ss = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.re
  store float %i.sp, ptr %i.ss, align 4, !tbaa !155
  %i.st = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.su = load float, ptr %i.st, align 4, !tbaa !229
  %i.sv = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !159
  %i.sx = getelementptr inbounds [4 x i8], ptr %i.sw, i64 %i.re
  store float %i.su, ptr %i.sx, align 4, !tbaa !155
  %i.sy = getelementptr inbounds nuw i8, ptr %23, i64 36
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !230
  %i.ta = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !163
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.re
  store float %i.sz, ptr %i.tc, align 4, !tbaa !155
  %i.td = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.te = load float, ptr %i.td, align 4, !tbaa !231
  %i.tf = getelementptr inbounds nuw i8, ptr %i.h, i64 376
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !164
  %i.th = getelementptr inbounds [4 x i8], ptr %i.tg, i64 %i.re
  store float %i.te, ptr %i.th, align 4, !tbaa !155
  %i.ti = getelementptr inbounds nuw i8, ptr %23, i64 44
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !232
  %i.tk = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !233
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.re
  store float %i.tj, ptr %i.tm, align 4, !tbaa !155
  %i.tn = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.to = load float, ptr %i.tn, align 4, !tbaa !234
  %i.tp = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !160
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.tq, i64 %i.re
  store float %i.to, ptr %i.tr, align 4, !tbaa !155
  %i.ts = getelementptr inbounds nuw i8, ptr %23, i64 52
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !235
  %i.tu = getelementptr inbounds nuw i8, ptr %i.h, i64 408
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !161
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.tv, i64 %i.re
  store float %i.tt, ptr %i.tw, align 4, !tbaa !155
  %i.tx = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !181
  %i.tz = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !162
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.re
  store float %i.ty, ptr %i.ub, align 4, !tbaa !155
  %i.uc = getelementptr inbounds nuw i8, ptr %23, i64 60
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !234
  %i.ue = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !160
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.re
  store float %i.ud, ptr %i.ug, align 4, !tbaa !155
  %i.uh = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !235
  %i.uj = getelementptr inbounds nuw i8, ptr %i.h, i64 440
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !161
  %i.ul = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.re
  store float %i.ui, ptr %i.ul, align 4, !tbaa !155
  %i.um = getelementptr inbounds nuw i8, ptr %23, i64 68
  %i.un = load float, ptr %i.um, align 4, !tbaa !181
  %i.uo = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !162
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.re
  store float %i.un, ptr %i.uq, align 4, !tbaa !155
  %i.ur = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.us = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !153
  %i.uu = getelementptr inbounds [16 x i8], ptr %i.ut, i64 %i.re ; 2 uses
  %i.uv = load <4 x float>, ptr %i.ur, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i580 = shufflevector <4 x float> %i.uv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.uv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i580, ptr %i.uu, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %.sroa.021.0.copyload.i.i.i586.pre = load <2 x float>, ptr %i.ng, align 8, !noalias !2039
  %.sroa.013.0.copyload.i.i.i593.pre = load <2 x float>, ptr %i.oj, align 4, !noalias !2039
  %.sroa.222.0.copyload.i.i.i588.pre = load float, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !noalias !2039
  %.sroa.214.0.copyload.i.i.i595.pre = load float, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !noalias !2039
  %.sroa.05.0.copyload.i.i.i598.pre = load <2 x float>, ptr %i.ok, align 8, !noalias !2039
  %.sroa.26.0.copyload.i.i.i600.pre = load float, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !2039
  %.pre1162.pre = load i64, ptr %20, align 8, !tbaa !212
  br label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit: ; preds = %bb.q, %bb.p, %bb.o
  %.pre1162 = phi i64 [ %.pre1162.pre, %bb.q ], [ %i.nf, %bb.p ], [ %i.nf, %bb.o ] ; 5 uses
  %.sroa.26.0.copyload.i.i.i600 = phi float [ %.sroa.26.0.copyload.i.i.i600.pre, %bb.q ], [ %.sroa.17.0, %bb.p ], [ %.sroa.17.0, %bb.o ] ; 2 uses
  %.sroa.214.0.copyload.i.i.i595 = phi float [ %.sroa.214.0.copyload.i.i.i595.pre, %bb.q ], [ %i.oi, %bb.p ], [ %i.oi, %bb.o ] ; 2 uses
  %.sroa.013.0.copyload.i.i.i593 = phi <2 x float> [ %.sroa.013.0.copyload.i.i.i593.pre, %bb.q ], [ %.sroa.0.4.vec.insert.i.i24.i, %bb.p ], [ %.sroa.0.4.vec.insert.i.i24.i, %bb.o ] ; 3 uses
  %.sroa.222.0.copyload.i.i.i588 = phi float [ %.sroa.222.0.copyload.i.i.i588.pre, %bb.q ], [ %i.nr, %bb.p ], [ %i.nr, %bb.o ] ; 2 uses
  %.sroa.021.0.copyload.i.i.i586 = phi <2 x float> [ %.sroa.021.0.copyload.i.i.i586.pre, %bb.q ], [ %i.nq, %bb.p ], [ %i.nq, %bb.o ] ; 3 uses
  %i.uw = phi <2 x float> [ %.sroa.05.0.copyload.i.i.i598.pre, %bb.q ], [ %.sroa.0259.0, %bb.p ], [ %.sroa.0259.0, %bb.o ] ; 2 uses
  %.sroa.01010.0.copyload = load <2 x float>, ptr %i.ma, align 4 ; 5 uses
  %.sroa.121017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.121017.0.copyload = load float, ptr %.sroa.121017.0..sroa_idx, align 4 ; 4 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 2 uses
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !648
  %i.va = load ptr, ptr %i.ux, align 8, !tbaa !236, !noalias !2040
  %i.vb = sext i32 %i.uz to i64                   ; 2 uses
  %i.vc = getelementptr inbounds [16 x i8], ptr %i.va, i64 %i.vb ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i583 = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  %i.vd = load <2 x float>, ptr %i.vc, align 16, !noalias !2040
  %.sroa.54.8.vec.extract.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i583, align 8, !tbaa !71, !noalias !2040
  %i.ve = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !237, !noalias !2040
  %i.vg = getelementptr inbounds [16 x i8], ptr %i.vf, i64 %i.vb
  %.sroa.0.0.copyload.i7.i.i = load <2 x float>, ptr %i.vg, align 16, !noalias !2040 ; 2 uses
  %.sroa.01.0.vec.extract.i.i584 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i585 = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i, i64 1
  %i.vh = shufflevector <2 x float> %.sroa.01010.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vi = shufflevector <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x i32> <i32 3, i32 0>
  %i.vj = fmul <2 x float> %i.vh, %i.vi
  %i.vk = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i586, <2 x float> %.sroa.013.0.copyload.i.i.i593, <2 x i32> <i32 0, i32 3>
  %i.vl = fmul <2 x float> %.sroa.01010.0.copyload, %i.vk
  %i.vm = fadd <2 x float> %i.vj, %i.vl
  %i.vn = insertelement <2 x float> poison, float %.sroa.121017.0.copyload, i64 0
  %i.vo = shufflevector <2 x float> %i.vn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vp = insertelement <2 x float> poison, float %.sroa.222.0.copyload.i.i.i588, i64 0
  %i.vq = insertelement <2 x float> %i.vp, float %.sroa.214.0.copyload.i.i.i595, i64 1
  %i.vr = fmul <2 x float> %i.vo, %i.vq
  %i.vs = fadd <2 x float> %i.vr, %i.vm
  %i.vt = fmul <2 x float> %.sroa.01010.0.copyload, %i.uw ; 2 uses
  %shift1197 = shufflevector <2 x float> %i.vt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1198 = fadd <2 x float> %i.vt, %shift1197
  %i.vu = extractelement <2 x float> %foldExtExtBinop1198, i64 0
  %i.vv = fmul float %.sroa.121017.0.copyload, %.sroa.26.0.copyload.i.i.i600
  %i.vw = fadd float %i.vv, %i.vu                 ; 4 uses
  %i.vx = fcmp oeq float %i.vw, 0.000000e+00
  br i1 %i.vx, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  %i.vy = and i64 %.pre1162, 144115188075855871
  %i.vz = inttoptr i64 %i.vy to ptr
  %i.wa = call float @llvm.fabs.f32(float %i.vw)  ; 4 uses
  %i.wb = load float, ptr %i.vz, align 4, !tbaa !652, !noalias !2041 ; 4 uses
  %i.wc = fcmp ogt float %i.wa, 1.000000e+00
  %..i.i.i.i = select i1 %i.wc, float 1.000000e+00, float %i.wa ; 5 uses
  %i.wd = fmul float %..i.i.i.i, %..i.i.i.i
  %i.we = fsub float 1.000000e+00, %i.wd
  %i.wf = fmul float %i.wb, %i.wb
  %i.wg = fdiv float %i.we, %i.wf                 ; 2 uses
  %i.wh = fcmp ult float %i.wg, 1.000000e+00
  br i1 %i.wh, label %_ZN4pbrt12FrDielectricEff.exit.i.i, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread

_ZN4pbrt12FrDielectricEff.exit.i.i:               ; preds = %bb.r
  %i.wi = fsub float 1.000000e+00, %i.wg          ; 2 uses
  %i.wj = fcmp ogt float %i.wi, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.wj, float %i.wi, float 0.000000e+00
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i.i) ; 3 uses
  %i.wk = fmul float %..i.i.i.i, %i.wb            ; 2 uses
  %i.wl = fsub float %i.wk, %sqrt.i.i.i.i
  %i.wm = fadd float %i.wk, %sqrt.i.i.i.i
  %i.wn = fdiv float %i.wl, %i.wm                 ; 2 uses
  %i.wo = fmul float %i.wb, %sqrt.i.i.i.i         ; 2 uses
  %i.wp = fsub float %..i.i.i.i, %i.wo
  %i.wq = fadd float %..i.i.i.i, %i.wo
  %i.wr = fdiv float %i.wp, %i.wq                 ; 2 uses
  %i.ws = fmul float %i.wn, %i.wn
  %i.wt = fmul float %i.wr, %i.wr
  %i.wu = fadd float %i.ws, %i.wt
  %i.wv = fmul float %i.wu, 5.000000e-01          ; 7 uses
  %i.ww = fsub float 1.000000e+00, %i.wv          ; 3 uses
  %i.wx = fcmp olt float %i.wv, 1.000000e+00
  br i1 %i.wx, label %bb.s, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i

bb.s:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.i.i
  %i.wy = fmul float %i.ww, %i.ww
  %i.wz = fmul float %i.wv, %i.wy
  %i.xa = fmul nnan float %i.wv, %i.wv
  %i.xb = fsub float 1.000000e+00, %i.xa
  %i.xc = fdiv float %i.wz, %i.xb
  %i.xd = fadd float %i.wv, %i.xc                 ; 2 uses
  %i.xe = fsub float 1.000000e+00, %i.xd
  br label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i

_ZN4pbrt12FrDielectricEff.exit.thread.i.i:        ; preds = %bb.s, %_ZN4pbrt12FrDielectricEff.exit.i.i
  %.055.i.i = phi float [ %i.xe, %bb.s ], [ %i.ww, %_ZN4pbrt12FrDielectricEff.exit.i.i ] ; 2 uses
  %.0.i.i = phi float [ %i.xd, %bb.s ], [ %i.wv, %_ZN4pbrt12FrDielectricEff.exit.i.i ] ; 2 uses
  %i.xf = fcmp oeq float %.0.i.i, 0.000000e+00
  %i.xg = fcmp oeq float %.055.i.i, 0.000000e+00
  %or.cond.i.i = and i1 %i.xg, %i.xf
  br i1 %or.cond.i.i, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread

_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread: ; preds = %bb.r, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i
  %.0.i.i1126 = phi float [ %.0.i.i, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i ], [ 1.000000e+00, %bb.r ] ; 3 uses
  %.055.i.i1125 = phi float [ %.055.i.i, %_ZN4pbrt12FrDielectricEff.exit.thread.i.i ], [ 0.000000e+00, %bb.r ] ; 3 uses
  %i.xh = fadd float %.0.i.i1126, %.055.i.i1125   ; 2 uses
  %i.xi = fdiv float %.0.i.i1126, %i.xh           ; 2 uses
  %i.xj = fcmp olt float %.sroa.01.0.vec.extract.i.i584, %i.xi
  %i.xk = fneg <2 x float> %i.vs                  ; 4 uses
  br i1 %i.xj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread
  %i.xl = fdiv float %.0.i.i1126, %i.wa
  %.sroa.076.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.xl, i64 0
  %.sroa.076.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.076.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i

bb.u:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread.i.i.thread
  %i.xm = fneg float %i.vw
  %i.xn = fdiv float %.055.i.i1125, %i.wa
  %.sroa.063.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.xn, i64 0
  %.sroa.063.4.vec.insert.i.i = shufflevector <2 x float> %.sroa.063.0.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xo = fdiv float %.055.i.i1125, %i.xh
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i: ; preds = %bb.u, %bb.t
  %.sroa.17.0.ph.i = phi float [ %i.xm, %bb.u ], [ %i.vw, %bb.t ] ; 2 uses
  %.sroa.22.0.ph.i = phi float [ %i.xo, %bb.u ], [ %i.xi, %bb.t ] ; 3 uses
  %.sroa.9.0.ph.i = phi <2 x float> [ %.sroa.063.4.vec.insert.i.i, %bb.u ], [ %.sroa.076.4.vec.insert.i.i, %bb.t ] ; 2 uses
  %i.xp = fcmp une <2 x float> %.sroa.9.0.ph.i, zeroinitializer
  %i.xq = bitcast <2 x i1> %i.xp to i2
  %i.xr = icmp eq i2 %i.xq, 0
  %i.xs = fcmp oeq float %.sroa.22.0.ph.i, 0.000000e+00
  %or.cond.i603 = or i1 %i.xs, %i.xr
  br i1 %or.cond.i603, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit.i
  %i.xt = shufflevector <2 x float> %.sroa.9.0.ph.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %i.xk, i64 0
  %i.xu = fmul float %.sroa.222.0.copyload.i.i.i588, %.sroa.041.0.vec.extract.i.i
  %.sroa.041.4.vec.extract.i.i = extractelement <2 x float> %i.xk, i64 1
  %i.xv = fmul float %.sroa.214.0.copyload.i.i.i595, %.sroa.041.4.vec.extract.i.i
  %i.xw = fadd float %i.xu, %i.xv
  %i.xx = insertelement <2 x float> poison, float %.sroa.17.0.ph.i, i64 0
  %i.xy = shufflevector <2 x float> %i.xx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xz = fmul <2 x float> %i.uw, %i.xy
  %i.ya = fmul float %.sroa.26.0.copyload.i.i.i600, %.sroa.17.0.ph.i
  %i.yb = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yc = fmul <2 x float> %.sroa.021.0.copyload.i.i.i586, %i.yb
  %i.yd = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ye = fmul <2 x float> %.sroa.013.0.copyload.i.i.i593, %i.yd
  %i.yf = fadd <2 x float> %i.yc, %i.ye
  %i.yg = fadd <2 x float> %i.xz, %i.yf           ; 3 uses
  %i.yh = fadd float %i.ya, %i.xw                 ; 6 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.yj = load <4 x float>, ptr %i.yi, align 8
  %i.yk = fmul float %.sroa.17.0, %i.yh           ; 2 uses
  %i.yl = extractelement <2 x float> %i.yg, i64 1 ; 3 uses
  %i.ym = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i569, float %i.yl, float %i.yk)
  %i.yn = fneg float %i.yk
  %i.yo = call noundef float @llvm.fma.f32(float %.sroa.17.0, float %i.yh, float %i.yn)
  %i.yp = fadd float %i.ym, %i.yo
  %i.yq = extractelement <2 x float> %i.yg, i64 0 ; 3 uses
  %i.yr = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i568, float %i.yq, float %i.yp)
  %i.ys = call noundef float @llvm.fabs.f32(float %i.yr)
  %i.yt = fmul <4 x float> %i.xt, %i.yj
  %i.yu = insertelement <4 x float> poison, float %i.ys, i64 0
  %i.yv = shufflevector <4 x float> %i.yu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yw = fmul <4 x float> %i.yv, %i.yt
  %i.yx = insertelement <4 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.yy = shufflevector <4 x float> %i.yx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yz = fdiv <4 x float> %i.yw, %i.yy           ; 7 uses
  %i.za = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0911.0.copyload = load <4 x float>, ptr %i.za, align 8, !tbaa !71 ; 6 uses
  %i.zb = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.zc = insertelement <2 x float> poison, float %.sroa.22.0.ph.i, i64 0
  %i.zd = shufflevector <2 x float> %i.zc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ze = fdiv <2 x float> %i.zb, %i.zd
  %i.zf = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.zg = fdiv <2 x float> %i.zf, %i.zd
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.zi = load float, ptr %i.zh, align 8, !tbaa !646 ; 5 uses
  %i.zj = extractelement <4 x float> %i.yz, i64 0
  %i.zk = fmul float %i.zi, %i.zj
  %i.zl = extractelement <4 x float> %i.yz, i64 1
  %i.zm = fmul float %i.zi, %i.zl
  %i.zn = extractelement <4 x float> %i.yz, i64 2
  %i.zo = fmul float %i.zi, %i.zn
  %i.zp = extractelement <4 x float> %i.yz, i64 3
  %i.zq = fmul float %i.zi, %i.zp
  %shift1200 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1201 = fadd <4 x float> %.sroa.0911.0.copyload, %shift1200
  %shift1203 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1204 = fadd <4 x float> %shift1203, %foldExtExtBinop1201
  %shift1206 = shufflevector <4 x float> %.sroa.0911.0.copyload, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1207 = fadd <4 x float> %shift1206, %foldExtExtBinop1204
  %i.zr = extractelement <4 x float> %foldExtExtBinop1207, i64 0
  %i.zs = fmul float %i.zr, 2.500000e-01          ; 4 uses
  %i.zt = fdiv float %i.zk, %i.zs                 ; 2 uses
  %i.zu = fdiv float %i.zm, %i.zs                 ; 2 uses
  %i.zv = fdiv float %i.zo, %i.zs                 ; 2 uses
  %i.zw = fdiv float %i.zq, %i.zs                 ; 2 uses
  %i.zx = fcmp olt float %i.zt, %i.zu
  %.sroa.speculated.i = select i1 %i.zx, float %i.zu, float %i.zt ; 2 uses
  %i.zy = fcmp olt float %.sroa.speculated.i, %i.zv
  %.sroa.speculated.1.i = select i1 %i.zy, float %i.zv, float %.sroa.speculated.i ; 2 uses
  %i.zz = fcmp olt float %.sroa.speculated.1.i, %i.zw
  %.sroa.speculated.2.i = select i1 %i.zz, float %i.zw, float %.sroa.speculated.1.i ; 2 uses
  %i.aaa = fcmp olt float %.sroa.speculated.2.i, 1.000000e+00
  br i1 %i.aaa, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.aab = load i32, ptr %i.pm, align 8, !tbaa !638
  %i.aac = icmp sgt i32 %i.aab, 0
  br i1 %i.aac, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.aad = fsub float 1.000000e+00, %.sroa.speculated.2.i ; 2 uses
  %i.aae = fcmp ogt float %i.aad, 0.000000e+00
  %.sroa.speculated = select i1 %i.aae, float %i.aad, float 0.000000e+00 ; 2 uses
  %i.aaf = fcmp olt float %.sroa.01.4.vec.extract.i.i585, %.sroa.speculated
  br i1 %i.aaf, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aag = fsub float 1.000000e+00, %.sroa.speculated
  %i.aah = insertelement <4 x float> poison, float %i.aag, i64 0
  %i.aai = shufflevector <4 x float> %i.aah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaj = fdiv <4 x float> %i.yz, %i.aai
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w, %bb.v
  %.sroa.0929.0 = phi <4 x float> [ %i.yz, %bb.v ], [ %i.aaj, %bb.y ], [ %i.yz, %bb.w ], [ zeroinitializer, %bb.x ]
  %.sroa.0929.0.fr = freeze <4 x float> %.sroa.0929.0 ; 3 uses
  %i.aak = fcmp une <4 x float> %.sroa.0929.0.fr, zeroinitializer
  %i.aal = bitcast <4 x i1> %i.aak to i4
  %.not1209 = icmp eq i4 %i.aal, 0
  br i1 %.not1209, label %_ZNK4pbrt4BSDF8Sample_fINS_18ThinDielectricBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705: ; preds = %bb.z
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.mb, align 8
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.2112.0.copyload = load float, ptr %.sroa.2112.0..sroa_idx, align 8
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !642
  %i.aao = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %i.mc, <2 x float> %.sroa.0111.0.copyload, float %.sroa.2112.0.copyload, <2 x float> %i.yg, float %i.yh) ; 2 uses
  %.fca.0.extract.i709 = extractvalue { <2 x float>, float } %i.aao, 0 ; 2 uses
  %.fca.1.extract.i710 = extractvalue { <2 x float>, float } %i.aao, 1
  %i.aap = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.aaq = load i8, ptr %i.aap, align 2, !tbaa !245, !range !11, !noundef !12
  %i.aar = trunc nuw i8 %i.aaq to i1
  %.sroa.094.0.copyload.pre = load <2 x float>, ptr %i.mb, align 8 ; 2 uses
  %.sroa.295.0.copyload.pre = load float, ptr %.sroa.2112.0..sroa_idx, align 8 ; 3 uses
  %.sroa.01.0.vec.extract.i712 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 0 ; 2 uses
  %.sroa.01.4.vec.extract.i714 = extractelement <2 x float> %.sroa.094.0.copyload.pre, i64 1 ; 2 uses
  br i1 %i.aar, label %bb.aa, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge

bb.aa:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705
  %i.aas = fmul float %i.yh, %.sroa.295.0.copyload.pre ; 2 uses
  %i.aat = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i714, float %i.yl, float %i.aas)
  %i.aau = fneg float %i.aas
  %i.aav = call noundef float @llvm.fma.f32(float %.sroa.295.0.copyload.pre, float %i.yh, float %i.aau)
  %i.aaw = fadd float %i.aat, %i.aav
  %i.aax = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i712, float %i.yq, float %i.aaw)
  %i.aay = fcmp ogt float %i.aax, 0.000000e+00
  %.v = select i1 %i.aay, i64 248, i64 240
  %i.aaz = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !177
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705._crit_edge: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705, %bb.aa
  %.sroa.17876.0 = phi i64 [ %i.aba, %bb.aa ], [ 0, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit705 ]
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.abc = load i32, ptr %i.abb, align 8, !tbaa !644
  %i.abd = icmp ne i32 %i.abc, 0
  %.sroa.0863.sroa.0.0.copyload = load float, ptr %i.mc, align 8
  %.sroa.0863.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0863.sroa.2.0.copyload = load float, ptr %.sroa.0863.sroa.2.0..sroa_idx, align 4
  %.sroa.0863.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0863.sroa.3.0.copyload = load float, ptr %.sroa.0863.sroa.3.0..sroa_idx, align 8
  %.sroa.0863.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0863.sroa.4.0.copyload = load float, ptr %.sroa.0863.sroa.4.0..sroa_idx, align 4
  %.sroa.0863.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0863.sroa.5.0.copyload = load float, ptr %.sroa.0863.sroa.5.0..sroa_idx, align 8
  %.sroa.0863.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0863.sroa.6.0.copyload = load float, ptr %.sroa.0863.sroa.6.0..sroa_idx, align 4
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 136
end_hunk_2
