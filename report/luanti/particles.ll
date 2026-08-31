Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/particles?download=true
inline.NumInlined: 2466
inline.NumDeleted: 1098
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN8Particle11updateLightEP17ClientEnvironment:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %i.by
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8Particle14updateVerticesEP17ClientEnvironmentN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.ParticleParamTypes::VectorParameter", align 8 ; 4 uses
  %4 = alloca %"class.core::vector2d.246", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  %i.e = load i16, ptr %i.d, align 4, !tbaa !123
  %.not.i = icmp ult i16 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %_ZN14ParticleBuffer11getVerticesEt.exit

bb.c:                                             ; preds = %bb.b
  %i.f = zext i16 %i.c to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 262
  store i8 1, ptr %i.g, align 2, !tbaa !203
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !inline_history !204 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(28) %i.m), !inline_history !204
  %.idx.i = mul nuw nsw i64 %i.f, 160
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i
  br label %_ZN14ParticleBuffer11getVerticesEt.exit

_ZN14ParticleBuffer11getVerticesEt.exit:          ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.r, %bb.c ], [ null, %bb.b ] ; 40 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197  ; 2 uses
  %.not73 = icmp eq ptr %i.t, null
  br i1 %.not73, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN14ParticleBuffer11getVerticesEt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load float, ptr %i.v, align 4, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load float, ptr %i.x, align 8, !tbaa !73
  %i.z = fadd nsz float %i.y, 1.000000e-01
  %i.aa = fdiv nsz float %i.w, %i.z
  call void @_ZNK18ParticleParamTypes16TweenedParameterINS_15VectorParameterIN4core8vector2dIfEELm2EEEE5blendEf(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::VectorParameter") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %i.u, float noundef %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.e

bb.e:                                             ; preds = %_ZN14ParticleBuffer11getVerticesEt.exit, %bb.d
  %.sroa.0173.0 = phi nsz <2 x float> [ %.sroa.0.0.copyload.i, %bb.d ], [ splat (float 1.000000e+00), %_ZN14ParticleBuffer11getVerticesEt.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !193
  %.not74 = icmp eq i8 %i.ad, 0
  br i1 %.not74, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !194
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load i64, ptr %i.ag, align 4            ; 4 uses
  %i.ai = lshr i64 %i.ah, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i32 0, ptr %4, align 8, !tbaa !205
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.aj, align 4, !tbaa !207
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !83
  %i.am = call nsz <2 x float> @_ZNK19TileAnimationParams16getTextureCoordsEN4core8vector2dIjEEi(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 %i.ah, i32 noundef %i.al)
  call void @_ZNK19TileAnimationParams15determineParamsEN4core8vector2dIjEEPiS3_PS2_(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 %i.ah, ptr noundef null, ptr noundef null, ptr noundef nonnull %4)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = trunc nuw i64 %i.ai to i32
  %i.aq = trunc i64 %i.ah to i32
  %i.ar = load <2 x i32>, ptr %4, align 8, !tbaa !74
  %i.as = uitofp <2 x i32> %i.ar to <2 x float>
  %i.at = uitofp nsz i32 %i.ap to float
  %i.au = uitofp nsz i32 %i.aq to float
  %i.av = insertelement <2 x float> poison, float %i.au, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.at, i64 1
  %i.ax = fdiv nsz <2 x float> %i.as, %i.aw
  %i.ay = load <2 x float>, ptr %i.an, align 8, !tbaa !79
  %i.az = fadd nsz <2 x float> %i.am, %i.ay       ; 2 uses
  %i.ba = load <2 x float>, ptr %i.ao, align 8, !tbaa !79
  %i.bb = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.ba, <2 x float> %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = load <2 x float>, ptr %i.bc, align 8, !tbaa !79 ; 2 uses
  %i.bf = load <2 x float>, ptr %i.bd, align 8, !tbaa !79
  %i.bg = fadd nsz <2 x float> %i.be, %i.bf
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bh = phi <2 x float> [ %i.bb, %bb.f ], [ %i.bg, %bb.g ] ; 3 uses
  %i.bi = phi <2 x float> [ %i.az, %bb.f ], [ %i.be, %bb.g ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !130
  %i.bl = fmul nsz float %i.bk, 5.000000e-01      ; 2 uses
  %.sroa.0173.0.vec.extract = extractelement <2 x float> %.sroa.0173.0, i64 0
  %i.bm = fmul nsz float %.sroa.0173.0.vec.extract, %i.bl ; 5 uses
  %.sroa.0173.4.vec.extract = extractelement <2 x float> %.sroa.0173.0, i64 1
  %i.bn = fmul nsz float %.sroa.0173.4.vec.extract, %i.bl ; 5 uses
  %i.bo = fneg nsz float %i.bm                    ; 2 uses
  %i.bp = fneg nsz float %i.bn                    ; 3 uses
  store float %i.bo, ptr %.0.i, align 4, !tbaa !79
  %.sroa.4143.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 4 uses
  store float %i.bp, ptr %.sroa.4143.0..0.i.sroa_idx, align 4, !tbaa !79
  %.sroa.5144.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  %.sroa.9148.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5144.0..0.i.sroa_idx, i8 0, i64 16, i1 false)
  store i32 %2, ptr %.sroa.9148.0..0.i.sroa_idx, align 4, !tbaa !74
  %.sroa.10149.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.bq = extractelement <2 x float> %i.bi, i64 0
  store float %i.bq, ptr %.sroa.10149.0..0.i.sroa_idx, align 4, !tbaa !79
  %.sroa.11150.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.br = extractelement <2 x float> %i.bh, i64 1
  store float %i.br, ptr %.sroa.11150.0..0.i.sroa_idx, align 4, !tbaa !79
  %.sroa.12151.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  store i16 0, ptr %.sroa.12151.0..0.i.sroa_idx, align 4, !tbaa !91
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i, i64 40 ; 5 uses
  store float %i.bm, ptr %i.bs, align 4, !tbaa !79
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 44
  store float %i.bp, ptr %.sroa.4132.0..sroa_idx, align 4, !tbaa !79
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %.sroa.9137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5133.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 %2, ptr %.sroa.9137.0..sroa_idx, align 4, !tbaa !74
  %.sroa.10138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 68
  store <2 x float> %i.bh, ptr %.sroa.10138.0..sroa_idx, align 4, !tbaa !79
  %.sroa.12140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 76
  store i16 0, ptr %.sroa.12140.0..sroa_idx, align 4, !tbaa !91
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i, i64 80 ; 7 uses
  store float %i.bm, ptr %i.bt, align 4, !tbaa !79
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 84
  store float %i.bn, ptr %.sroa.4121.0..sroa_idx, align 4, !tbaa !79
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 88
  %.sroa.9126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5122.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 %2, ptr %.sroa.9126.0..sroa_idx, align 4, !tbaa !74
  %.sroa.10127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 108
  %i.bu = extractelement <2 x float> %i.bh, i64 0
  store float %i.bu, ptr %.sroa.10127.0..sroa_idx, align 4, !tbaa !79
  %.sroa.11128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 112
  %i.bv = extractelement <2 x float> %i.bi, i64 1
  store float %i.bv, ptr %.sroa.11128.0..sroa_idx, align 4, !tbaa !79
  %.sroa.12129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 116
  store i16 0, ptr %.sroa.12129.0..sroa_idx, align 4, !tbaa !91
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i, i64 120 ; 7 uses
  store float %i.bo, ptr %i.bw, align 4, !tbaa !79
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 124
  store float %i.bn, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !79
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 128
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5118.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 %2, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !74
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 148
  store <2 x float> %i.bi, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !79
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 156
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !91
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !208 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.sroa.0.0.copyload.i79 = load i48, ptr %i.bz, align 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !209, !range !128, !noundef !129
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i79, 16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i79, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.cf = trunc i48 %.sroa.0.0.copyload.i79 to i16
  %i.cg = insertelement <2 x i16> poison, i16 %i.cf, i64 0
  %i.ch = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %i.ci = insertelement <2 x i16> %i.cg, i16 %i.ch, i64 1
  %i.cj = sitofp <2 x i16> %i.ci to <2 x float>
  %i.ck = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.cl = fmul nnan nsz <2 x float> %i.cj, splat (float 1.000000e+01) ; 9 uses
  %i.cm = fmul nnan nsz float %i.ck, 1.000000e+01 ; 8 uses
  br i1 %i.cc, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.h
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 612 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 604 ; 4 uses
  %.sroa.22.0.copyload.i.us = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !79
  %.sroa.0115.0.vec.extract.us = load float, ptr %i.cn, align 4
  %i.co = fdiv nsz float %.sroa.0115.0.vec.extract.us, 1.000000e+01
  %i.cp = fdiv nsz float %.sroa.22.0.copyload.i.us, 1.000000e+01
  %i.cq = load float, ptr %i.ce, align 8, !tbaa !210
  %i.cr = fsub nsz float %i.cp, %i.cq
  %i.cs = load float, ptr %i.cd, align 8, !tbaa !198
  %i.ct = fsub nsz float %i.co, %i.cs
  %i.cu = call nsz noundef float @llvm.atan2.f32(float %i.cr, float %i.ct)
  %i.cv = fdiv nsz float %i.cu, f0x3C8EFA35
  %i.cw = fadd nsz float %i.cv, 9.000000e+01
  %i.cx = fpext nsz float %i.cw to double
  %i.cy = fmul nsz double %i.cx, f0x3F91DF46A2529D39
  %sincos.i.us = call nsz { double, double } @llvm.sincos.f64(double %i.cy) ; 2 uses
  %sin.i.us = extractvalue { double, double } %sincos.i.us, 0
  %cos.i.us = extractvalue { double, double } %sincos.i.us, 1
  %i.cz = load float, ptr %.0.i, align 4, !tbaa !211
  %i.da = fpext nsz float %i.cz to double
  %i.db = insertelement <2 x double> poison, double %cos.i.us, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %sin.i.us, i64 1 ; 2 uses
  %i.dd = fmul nsz <2 x double> %i.dc, <double 0.000000e+00, double -0.000000e+00>
  %i.de = insertelement <2 x double> poison, double %i.da, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dh = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.dg, <2 x double> %i.dd) ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 1
  %i.dj = fptrunc nsz double %i.di to float       ; 2 uses
  %i.dk = extractelement <2 x double> %i.dh, i64 0
  %i.dl = fptrunc nsz double %i.dk to float       ; 2 uses
  store float %i.dj, ptr %.0.i, align 4, !tbaa !211
  store float %i.dl, ptr %.sroa.5144.0..0.i.sroa_idx, align 4, !tbaa !126
  %i.dm = load float, ptr %i.ce, align 8, !tbaa !126
  %i.dn = fmul nsz float %i.dm, 1.000000e+01
  %i.do = fsub nsz float %i.dn, %i.cm
  %i.dp = load float, ptr %.sroa.4143.0..0.i.sroa_idx, align 4, !tbaa !212
  %i.dq = load <2 x float>, ptr %i.cd, align 8, !tbaa !79
  %i.dr = fmul nsz <2 x float> %i.dq, splat (float 1.000000e+01)
  %i.ds = fsub nsz <2 x float> %i.dr, %i.cl
  %i.dt = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.dp, i64 1
  %i.dv = fadd nsz <2 x float> %i.ds, %i.du
  store <2 x float> %i.dv, ptr %.0.i, align 4, !tbaa !79
  %i.dw = fadd nsz float %i.do, %i.dl
  store float %i.dw, ptr %.sroa.5144.0..0.i.sroa_idx, align 4, !tbaa !126
  %.sroa.22.0.copyload.i.us.1 = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !79
  %.sroa.0115.0.vec.extract.us.1 = load float, ptr %i.cn, align 4
  %i.dx = fdiv nsz float %.sroa.0115.0.vec.extract.us.1, 1.000000e+01
  %i.dy = fdiv nsz float %.sroa.22.0.copyload.i.us.1, 1.000000e+01
  %i.dz = load float, ptr %i.ce, align 8, !tbaa !210
  %i.ea = fsub nsz float %i.dy, %i.dz
  %i.eb = load float, ptr %i.cd, align 8, !tbaa !198
  %i.ec = fsub nsz float %i.dx, %i.eb
  %i.ed = call nsz noundef float @llvm.atan2.f32(float %i.ea, float %i.ec)
  %i.ee = fdiv nsz float %i.ed, f0x3C8EFA35
  %i.ef = fadd nsz float %i.ee, 9.000000e+01
  %i.eg = fpext nsz float %i.ef to double
  %i.eh = fmul nsz double %i.eg, f0x3F91DF46A2529D39
  %sincos.i.us.1 = call nsz { double, double } @llvm.sincos.f64(double %i.eh) ; 2 uses
  %sin.i.us.1 = extractvalue { double, double } %sincos.i.us.1, 0
  %cos.i.us.1 = extractvalue { double, double } %sincos.i.us.1, 1
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.ej = fpext nsz float %i.bm to double
  %i.ek = insertelement <2 x double> poison, double %cos.i.us.1, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %sin.i.us.1, i64 1 ; 2 uses
  %i.em = fmul nsz <2 x double> %i.el, <double 0.000000e+00, double -0.000000e+00>
  %i.en = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eq = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.ep, <2 x double> %i.em) ; 2 uses
  %i.er = extractelement <2 x double> %i.eq, i64 1
  %i.es = fptrunc nsz double %i.er to float       ; 2 uses
  %i.et = extractelement <2 x double> %i.eq, i64 0
  %i.eu = fptrunc nsz double %i.et to float       ; 2 uses
  store float %i.es, ptr %i.bs, align 4, !tbaa !211
  store float %i.eu, ptr %i.ei, align 4, !tbaa !126
  %i.ev = load float, ptr %i.ce, align 8, !tbaa !126
  %i.ew = fmul nsz float %i.ev, 1.000000e+01
  %i.ex = fsub nsz float %i.ew, %i.cm
  %i.ey = load <2 x float>, ptr %i.cd, align 8, !tbaa !79
  %i.ez = fmul nsz <2 x float> %i.ey, splat (float 1.000000e+01)
  %i.fa = fsub nsz <2 x float> %i.ez, %i.cl       ; 2 uses
  %i.fb = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fc = insertelement <2 x float> %i.fb, float %i.bn, i64 1 ; 2 uses
  %i.fd = fadd nsz <2 x float> %i.fa, %i.fc
  %i.fe = fsub nsz <2 x float> %i.fa, %i.fc
  %i.ff = shufflevector <2 x float> %i.fd, <2 x float> %i.fe, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ff, ptr %i.bs, align 4, !tbaa !79
  %i.fg = fadd nsz float %i.ex, %i.eu
  store float %i.fg, ptr %i.ei, align 4, !tbaa !126
  %.sroa.22.0.copyload.i.us.2 = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !79
  %.sroa.0115.0.vec.extract.us.2 = load float, ptr %i.cn, align 4
  %i.fh = fdiv nsz float %.sroa.0115.0.vec.extract.us.2, 1.000000e+01
  %i.fi = fdiv nsz float %.sroa.22.0.copyload.i.us.2, 1.000000e+01
  %i.fj = load float, ptr %i.ce, align 8, !tbaa !210
  %i.fk = fsub nsz float %i.fi, %i.fj
  %i.fl = load float, ptr %i.cd, align 8, !tbaa !198
  %i.fm = fsub nsz float %i.fh, %i.fl
  %i.fn = call nsz noundef float @llvm.atan2.f32(float %i.fk, float %i.fm)
  %i.fo = fdiv nsz float %i.fn, f0x3C8EFA35
  %i.fp = fadd nsz float %i.fo, 9.000000e+01
  %i.fq = fpext nsz float %i.fp to double
  %i.fr = fmul nsz double %i.fq, f0x3F91DF46A2529D39
  %sincos.i.us.2 = call nsz { double, double } @llvm.sincos.f64(double %i.fr) ; 2 uses
  %sin.i.us.2 = extractvalue { double, double } %sincos.i.us.2, 0
  %cos.i.us.2 = extractvalue { double, double } %sincos.i.us.2, 1
  %i.fs = load float, ptr %i.bt, align 4, !tbaa !211
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i, i64 88 ; 3 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !126
  %i.fv = fpext nsz float %i.fs to double
  %i.fw = insertelement <2 x double> poison, double %cos.i.us.2, i64 0
  %i.fx = insertelement <2 x double> %i.fw, double %sin.i.us.2, i64 1 ; 2 uses
  %i.fy = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ga = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i, i64 84
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !212
  %i.gd = load float, ptr %i.bw, align 4, !tbaa !211
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.i, i64 128 ; 3 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !126
  %i.gg = fpext nsz float %i.gd to double
  %i.gh = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.gi = insertelement <2 x float> %i.gh, float %i.gf, i64 1
  %i.gj = fpext <2 x float> %i.gi to <2 x double> ; 3 uses
  %i.gk = fneg nsz <2 x double> %i.gj             ; 2 uses
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> %i.gj, <2 x i32> <i32 2, i32 0>
  %i.gm = fmul nsz <2 x double> %i.fx, %i.gl
  %i.gn = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.ga, <2 x double> %i.gm) ; 2 uses
  %i.go = extractelement <2 x double> %i.gn, i64 1
  %i.gp = fptrunc nsz double %i.go to float       ; 2 uses
  %i.gq = extractelement <2 x double> %i.gn, i64 0
  %i.gr = fptrunc nsz double %i.gq to float       ; 2 uses
  store float %i.gp, ptr %i.bt, align 4, !tbaa !211
  store float %i.gr, ptr %i.ft, align 4, !tbaa !126
  %i.gs = load float, ptr %i.ce, align 8, !tbaa !126
  %i.gt = fmul nsz float %i.gs, 1.000000e+01
  %i.gu = fsub nsz float %i.gt, %i.cm
  %i.gv = load <2 x float>, ptr %i.cd, align 8, !tbaa !79
  %i.gw = fmul nsz <2 x float> %i.gv, splat (float 1.000000e+01)
  %i.gx = fsub nsz <2 x float> %i.gw, %i.cl
  %i.gy = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gz = insertelement <2 x float> %i.gy, float %i.gc, i64 1
  %i.ha = fadd nsz <2 x float> %i.gx, %i.gz
  store <2 x float> %i.ha, ptr %i.bt, align 4, !tbaa !79
  %i.hb = fadd nsz float %i.gu, %i.gr
  store float %i.hb, ptr %i.ft, align 4, !tbaa !126
  %.sroa.22.0.copyload.i.us.3 = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !79
  %.sroa.0115.0.vec.extract.us.3 = load float, ptr %i.cn, align 4
  %i.hc = fdiv nsz float %.sroa.0115.0.vec.extract.us.3, 1.000000e+01
  %i.hd = fdiv nsz float %.sroa.22.0.copyload.i.us.3, 1.000000e+01
  %i.he = load float, ptr %i.ce, align 8, !tbaa !210
  %i.hf = fsub nsz float %i.hd, %i.he
  %i.hg = load float, ptr %i.cd, align 8, !tbaa !198
  %i.hh = fsub nsz float %i.hc, %i.hg
  %i.hi = call nsz noundef float @llvm.atan2.f32(float %i.hf, float %i.hh)
  %i.hj = fdiv nsz float %i.hi, f0x3C8EFA35
  %i.hk = fadd nsz float %i.hj, 9.000000e+01
  %i.hl = fpext nsz float %i.hk to double
  %i.hm = fmul nsz double %i.hl, f0x3F91DF46A2529D39
  %sincos.i.us.3 = call nsz { double, double } @llvm.sincos.f64(double %i.hm) ; 2 uses
  %sin.i.us.3 = extractvalue { double, double } %sincos.i.us.3, 0
  %cos.i.us.3 = extractvalue { double, double } %sincos.i.us.3, 1
  %i.hn = insertelement <2 x double> poison, double %cos.i.us.3, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %sin.i.us.3, i64 1 ; 2 uses
  %i.hp = shufflevector <2 x double> %i.gk, <2 x double> %i.gj, <2 x i32> <i32 3, i32 1>
  %i.hq = fmul nsz <2 x double> %i.ho, %i.hp
  %i.hr = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hu = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.ht, <2 x double> %i.hq) ; 2 uses
  %i.hv = extractelement <2 x double> %i.hu, i64 1
  %i.hw = fptrunc nsz double %i.hv to float       ; 2 uses
  %i.hx = extractelement <2 x double> %i.hu, i64 0
  %i.hy = fptrunc nsz double %i.hx to float       ; 2 uses
  store float %i.hw, ptr %i.bw, align 4, !tbaa !211
  store float %i.hy, ptr %i.ge, align 4, !tbaa !126
  %i.hz = load float, ptr %i.ce, align 8, !tbaa !126
  %i.ia = fmul nsz float %i.hz, 1.000000e+01
  %i.ib = fsub nsz float %i.ia, %i.cm
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.i, i64 124
  %i.id = load float, ptr %i.ic, align 4, !tbaa !212
  %i.ie = load <2 x float>, ptr %i.cd, align 8, !tbaa !79
  %i.if = fmul nsz <2 x float> %i.ie, splat (float 1.000000e+01)
  %i.ig = fsub nsz <2 x float> %i.if, %i.cl
  %i.ih = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.ii = insertelement <2 x float> %i.ih, float %i.id, i64 1
  %i.ij = fadd nsz <2 x float> %i.ig, %i.ii
  store <2 x float> %i.ij, ptr %i.bw, align 4, !tbaa !79
  %i.ik = fadd nsz float %i.ib, %i.hy
  store float %i.ik, ptr %i.ge, align 4, !tbaa !126
  br label %.loopexit

.split:                                           ; preds = %bb.h
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.im = getelementptr inbounds nuw i8, ptr %i.by, i64 712
  %i.in = load <2 x float>, ptr %.0.i, align 4, !tbaa !79
  %i.io = fpext <2 x float> %i.in to <2 x double> ; 3 uses
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.iq = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ir = insertelement <2 x float> %i.iq, float %i.cm, i64 1
  %i.is = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.it = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.iu = insertelement <2 x float> %i.it, float %i.bp, i64 1
  %i.iv = fpext <2 x float> %i.iu to <2 x double> ; 3 uses
  %i.iw = load <2 x float>, ptr %i.im, align 8, !tbaa !79
  %i.ix = fpext <2 x float> %i.iw to <2 x double>
  %i.iy = fmul nsz <2 x double> %i.ix, splat (double f0x3F91DF46A2529D39)
  %i.iz = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.iy) ; 2 uses
  %i.ja = extractvalue { <2 x double>, <2 x double> } %i.iz, 0 ; 9 uses
  %i.jb = extractelement <2 x double> %i.ja, i64 1 ; 2 uses
  %i.jc = extractvalue { <2 x double>, <2 x double> } %i.iz, 1 ; 9 uses
  %i.jd = extractelement <2 x double> %i.ja, i64 0 ; 3 uses
  %i.je = extractelement <2 x double> %i.jc, i64 1 ; 2 uses
  %i.jf = fmul nsz double %i.je, 0.000000e+00     ; 2 uses
  %i.jg = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jh = shufflevector <2 x double> %i.ja, <2 x double> %i.jc, <2 x i32> <i32 1, i32 2>
  %i.ji = shufflevector <2 x double> %i.jc, <2 x double> %i.ja, <2 x i32> <i32 1, i32 2>
  %i.jj = extractelement <2 x double> %i.jc, i64 0 ; 2 uses
  %i.jk = shufflevector <2 x double> %i.io, <2 x double> %i.iv, <2 x i32> <i32 1, i32 3>
  %i.jl = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.jm = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jn = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.jg, <2 x double> %i.jm)
  %i.jo = fptrunc <2 x double> %i.jn to <2 x float>
  %i.jp = fpext <2 x float> %i.jo to <2 x double> ; 3 uses
  %i.jq = shufflevector <2 x double> <double -0.000000e+00, double poison>, <2 x double> %i.jp, <2 x i32> <i32 0, i32 2>
  %i.jr = fmul nsz <2 x double> %i.jh, %i.jq      ; 2 uses
  %i.js = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.ji, <2 x double> %i.jr)
  %i.jt = fptrunc <2 x double> %i.js to <2 x float> ; 2 uses
  store <2 x float> %i.jt, ptr %.sroa.4143.0..0.i.sroa_idx, align 4, !tbaa !79
  %i.ju = fneg nsz <2 x double> %i.jp             ; 2 uses
  %i.jv = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.jw = shufflevector <2 x double> %i.ju, <2 x double> <double -0.000000e+00, double poison>, <2 x i32> <i32 1, i32 2>
  %i.jx = fmul nsz <2 x double> %i.ja, %i.jw
  %i.jy = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.jc, <2 x double> %i.jx)
  %i.jz = fptrunc <2 x double> %i.jy to <2 x float> ; 2 uses
  %i.ka = shufflevector <2 x double> %i.ja, <2 x double> %i.jc, <2 x i32> <i32 0, i32 2>
  %i.kb = shufflevector <2 x double> %i.ju, <2 x double> %i.jp, <2 x i32> <i32 0, i32 3>
  %i.kc = fmul nsz <2 x double> %i.ka, %i.kb
  %i.kd = shufflevector <2 x double> %i.io, <2 x double> %i.iv, <2 x i32> <i32 0, i32 2>
  %i.ke = shufflevector <2 x double> %i.jc, <2 x double> %i.ja, <2 x i32> <i32 0, i32 2>
  %i.kf = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kd, <2 x double> %i.ke, <2 x double> %i.kc)
  %i.kg = fptrunc <2 x double> %i.kf to <2 x float> ; 3 uses
  %i.kh = extractelement <2 x float> %i.kg, i64 0
  store float %i.kh, ptr %.0.i, align 4, !tbaa !211
  %i.ki = load float, ptr %i.cd, align 8, !tbaa !211
  %i.kj = load <2 x float>, ptr %i.il, align 4, !tbaa !79
  %i.kk = fmul nsz <2 x float> %i.kj, splat (float 1.000000e+01)
  %i.kl = fsub nsz <2 x float> %i.kk, %i.ir
  %i.km = fadd nsz <2 x float> %i.kl, %i.jt
  store <2 x float> %i.km, ptr %.sroa.4143.0..0.i.sroa_idx, align 4, !tbaa !79
  store <2 x float> %i.jz, ptr %i.bs, align 4, !tbaa !79
  %i.kn = extractelement <2 x float> %i.kg, i64 1
  store float %i.kn, ptr %i.is, align 4, !tbaa !126
  %i.ko = load float, ptr %i.ce, align 8, !tbaa !126
  %i.kp = insertelement <2 x float> poison, float %i.ki, i64 0
  %i.kq = insertelement <2 x float> %i.kp, float %i.ko, i64 1
  %i.kr = fmul nsz <2 x float> %i.kq, splat (float 1.000000e+01)
  %i.ks = insertelement <2 x float> %i.cl, float %i.cm, i64 1
  %i.kt = fsub nsz <2 x float> %i.kr, %i.ks
  %i.ku = fadd nsz <2 x float> %i.kt, %i.kg       ; 2 uses
  %i.kv = extractelement <2 x float> %i.ku, i64 0
  store float %i.kv, ptr %.0.i, align 4, !tbaa !211
  %i.kw = load <2 x float>, ptr %i.cd, align 8, !tbaa !79
  %i.kx = fmul nsz <2 x float> %i.kw, splat (float 1.000000e+01)
  %i.ky = fsub nsz <2 x float> %i.kx, %i.cl
  %i.kz = fadd nsz <2 x float> %i.ky, %i.jz
  store <2 x float> %i.kz, ptr %i.bs, align 4, !tbaa !79
  %i.la = extractelement <2 x float> %i.ku, i64 1
  store float %i.la, ptr %i.is, align 4, !tbaa !126
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.i, i64 88 ; 2 uses
  %i.lc = load float, ptr %i.bt, align 4, !tbaa !211
  %i.ld = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.le = insertelement <2 x float> %i.ld, float %i.bn, i64 1
  %i.lf = fpext <2 x float> %i.le to <2 x double> ; 3 uses
  %i.lg = extractelement <2 x double> %i.lf, i64 1
  %i.lh = call nsz double @llvm.fmuladd.f64(double %i.lg, double %i.jb, double %i.jf)
  %i.li = fptrunc nsz double %i.lh to float
  %i.lj = fpext nsz float %i.li to double         ; 2 uses
  %i.lk = fneg nsz double %i.lj
  %i.ll = fmul nsz double %i.jd, %i.lk
  %i.lm = insertelement <2 x double> %i.jv, double %i.ll, i64 0
  %i.ln = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> %i.jc, <2 x double> %i.lm)
  %i.lo = fptrunc <2 x double> %i.ln to <2 x float> ; 2 uses
  %i.lp = fmul nsz double %i.jj, %i.lj
  %i.lq = extractelement <2 x double> %i.lf, i64 0
  %i.lr = call nsz double @llvm.fmuladd.f64(double %i.lq, double %i.jd, double %i.lp)
  %i.ls = fptrunc nsz double %i.lr to float       ; 2 uses
  store <2 x float> %i.lo, ptr %i.bt, align 4, !tbaa !79
  store float %i.ls, ptr %i.lb, align 4, !tbaa !126
  %i.lt = load <2 x float>, ptr %i.cd, align 8, !tbaa !79
  %i.lu = fmul nsz <2 x float> %i.lt, splat (float 1.000000e+01)
  %i.lv = load float, ptr %i.ce, align 8, !tbaa !126
  %i.lw = fmul nsz float %i.lv, 1.000000e+01
  %i.lx = fsub nsz <2 x float> %i.lu, %i.cl
  %i.ly = fsub nsz float %i.lw, %i.cm
  %i.lz = fadd nsz <2 x float> %i.lx, %i.lo
  store <2 x float> %i.lz, ptr %i.bt, align 4, !tbaa !79
  %i.ma = fadd nsz float %i.ly, %i.ls
  store float %i.ma, ptr %i.lb, align 4, !tbaa !126
  %i.mb = getelementptr inbounds nuw i8, ptr %.0.i, i64 128 ; 3 uses
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !126
  %i.md = fpext nsz float %i.mc to double         ; 2 uses
  %i.me = fmul nsz double %i.je, %i.md
  %i.mf = load <2 x float>, ptr %i.bw, align 4, !tbaa !79
  %i.mg = fpext <2 x float> %i.mf to <2 x double> ; 3 uses
  %i.mh = extractelement <2 x double> %i.mg, i64 1
  %i.mi = call nsz double @llvm.fmuladd.f64(double %i.mh, double %i.jb, double %i.me)
  %i.mj = fptrunc nsz double %i.mi to float
  %i.mk = fpext nsz float %i.mj to double         ; 2 uses
  %i.ml = insertelement <2 x double> poison, double %i.mk, i64 0
  %i.mm = insertelement <2 x double> %i.ml, double %i.md, i64 1
  %i.mn = fneg nsz <2 x double> %i.mm
  %i.mo = fmul nsz <2 x double> %i.ja, %i.mn
  %i.mp = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> %i.jc, <2 x double> %i.mo)
  %i.mq = fptrunc <2 x double> %i.mp to <2 x float> ; 2 uses
  %i.mr = fmul nsz double %i.jj, %i.mk
  %i.ms = extractelement <2 x double> %i.mg, i64 0
  %i.mt = call nsz double @llvm.fmuladd.f64(double %i.ms, double %i.jd, double %i.mr)
  %i.mu = fptrunc nsz double %i.mt to float       ; 2 uses
  store <2 x float> %i.mq, ptr %i.bw, align 4, !tbaa !79
  store float %i.mu, ptr %i.mb, align 4, !tbaa !126
  %i.mv = load <2 x float>, ptr %i.cd, align 8, !tbaa !79
  %i.mw = fmul nsz <2 x float> %i.mv, splat (float 1.000000e+01)
  %i.mx = load float, ptr %i.ce, align 8, !tbaa !126
  %i.my = fmul nsz float %i.mx, 1.000000e+01
  %i.mz = fsub nsz <2 x float> %i.mw, %i.cl
  %i.na = fsub nsz float %i.my, %i.cm
  %i.nb = fadd nsz <2 x float> %i.mz, %i.mq
  store <2 x float> %i.nb, ptr %i.bw, align 4, !tbaa !79
  %i.nc = fadd nsz float %i.na, %i.mu
  store float %i.nc, ptr %i.mb, align 4, !tbaa !126
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.split.us.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

declare noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440)) local_unnamed_addr #6

declare i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144), i48, ptr noundef) local_unnamed_addr #6

declare noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN14ParticleBuffer11getVerticesEt(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(263) %0, i16 noundef zeroext %1) local_unnamed_addr #2 align 2 {
end_hunk_0
