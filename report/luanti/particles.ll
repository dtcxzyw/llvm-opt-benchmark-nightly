Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/particles?download=true
inline.NumInlined: 2466
inline.NumDeleted: 1098
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN15ParticleSpawner13spawnParticleEP17ClientEnvironmentfPKN4core8CMatrix4IfEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1168
  call void @_ZNK18ParticleParamTypes16TweenedParameterINS_15RangedParameterINS_9ParameterIfLm1EEEEEE5blendEf(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::RangedParameter") align 8 %15, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, float noundef %.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1256
  call void @_ZNK18ParticleParamTypes16TweenedParameterINS_15RangedParameterINS_9ParameterIfLm1EEEEEE5blendEf(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::RangedParameter") align 8 %16, ptr noundef nonnull align 8 dereferenceable(88) %i.ad, float noundef %.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @_ZNK18ParticleParamTypes15RangedParameterINS_9ParameterIfLm1EEEE10pickWithinEv(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::Parameter") align 8 %17, ptr noundef nonnull align 8 dereferenceable(36) %16)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !228 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 604
  %.sroa.01.0.copyload.i240 = load <2 x float>, ptr %i.ag, align 4 ; 2 uses
  %.sroa.22.0..sroa_idx.i241 = getelementptr inbounds nuw i8, ptr %i.af, i64 612
  %.sroa.22.0.copyload.i242 = load float, ptr %.sroa.22.0..sroa_idx.i241, align 4, !tbaa !95
  %.sroa.0521.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i240, i64 0
  %i.ah = fdiv nsz float %.sroa.0521.0.vec.extract, 1.000000e+01
  %i.ai = shufflevector <2 x float> %.sroa.01.0.copyload.i240, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aj = insertelement <2 x float> %i.ai, float %.sroa.22.0.copyload.i242, i64 1
  %i.ak = fdiv nsz <2 x float> %i.aj, splat (float 1.000000e+01) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @_ZNK18ParticleParamTypes15RangedParameterINS_15VectorParameterIN4core8vector3dIfEELm3EEEE10pickWithinEv(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::VectorParameter.7") align 8 %18, ptr noundef nonnull align 8 dereferenceable(52) %5)
  %i.al = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.01.0.copyload.i247 = load <2 x float>, ptr %i.al, align 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i248 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %.sroa.22.0.copyload.i249 = load float, ptr %.sroa.22.0..sroa_idx.i248, align 8, !tbaa !95 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @_ZNK18ParticleParamTypes15RangedParameterINS_15VectorParameterIN4core8vector3dIfEELm3EEEE10pickWithinEv(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::VectorParameter.7") align 8 %19, ptr noundef nonnull align 8 dereferenceable(52) %9)
  %i.am = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.sroa.01.0.copyload.i252 = load <2 x float>, ptr %i.am, align 8 ; 4 uses
  %.sroa.22.0..sroa_idx.i253 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %.sroa.22.0.copyload.i254 = load float, ptr %.sroa.22.0..sroa_idx.i253, align 8, !tbaa !95 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_114findObjectByIDEP17ClientEnvironmentt.exit239
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !95
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.at = load float, ptr %i.as, align 4, !tbaa !95
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.av = load float, ptr %i.au, align 4, !tbaa !95
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !95
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !226
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !272
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 408
  %.sroa.0.0.copyload.i = load i48, ptr %i.bc, align 8 ; 3 uses
  %.sroa.4.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 16
  %i.bd = shufflevector <2 x float> %.sroa.01.0.copyload.i247, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.be = insertelement <3 x float> %i.bd, float %.sroa.22.0.copyload.i249, i64 0
  %i.bf = fmul nsz <3 x float> %i.be, splat (float 1.000000e+01) ; 6 uses
  %i.bg = load <2 x float>, ptr %3, align 4, !tbaa !95
  %i.bh = load <2 x float>, ptr %i.an, align 4, !tbaa !95
  %i.bi = shufflevector <3 x float> %i.bf, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bj = fmul nsz <2 x float> %i.bi, %i.bh
  %i.bk = shufflevector <3 x float> %i.bf, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bl = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bg, <2 x float> %i.bj)
  %i.bm = load <2 x float>, ptr %i.ao, align 4, !tbaa !95
  %i.bn = shufflevector <3 x float> %i.bf, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bo = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bm, <2 x float> %i.bl)
  %i.bp = load <2 x float>, ptr %i.ap, align 4, !tbaa !95
  %i.bq = fadd nsz <2 x float> %i.bp, %i.bo
  %i.br = extractelement <3 x float> %i.bf, i64 2
  %i.bs = fmul nsz float %i.br, %i.at
  %i.bt = extractelement <3 x float> %i.bf, i64 1
  %i.bu = call nsz float @llvm.fmuladd.f32(float %i.bt, float %i.ar, float %i.bs)
  %i.bv = extractelement <3 x float> %i.bf, i64 0
  %i.bw = call nsz float @llvm.fmuladd.f32(float %i.bv, float %i.av, float %i.bu)
  %i.bx = fadd nsz float %i.ax, %i.bw
  %i.by = fdiv nsz <2 x float> %i.bq, splat (float 1.000000e+01)
  %i.bz = fdiv nsz float %i.bx, 1.000000e+01
  %i.ca = trunc i48 %.sroa.0.0.copyload.i to i16
  %i.cb = insertelement <2 x i16> poison, i16 %i.ca, i64 0
  %i.cc = trunc i48 %.sroa.4.0.extract.shift to i16
  %i.cd = insertelement <2 x i16> %i.cb, i16 %i.cc, i64 1
  %i.ce = sitofp <2 x i16> %i.cd to <2 x float>
  %i.cf = fadd nsz <2 x float> %i.by, %i.ce
  %i.cg = ashr i48 %.sroa.0.0.copyload.i, 32
  %i.ch = trunc nsw i48 %i.cg to i32
  %i.ci = sitofp nsz i32 %i.ch to float
  %i.cj = fadd nsz float %i.bz, %i.ci
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN12_GLOBAL__N_114findObjectByIDEP17ClientEnvironmentt.exit239
  %.sroa.0490.0 = phi nsz <2 x float> [ %.sroa.01.0.copyload.i247, %_ZN12_GLOBAL__N_114findObjectByIDEP17ClientEnvironmentt.exit239 ], [ %i.cf, %bb.d ] ; 3 uses
  %.sroa.22.0 = phi nsz float [ %.sroa.22.0.copyload.i249, %_ZN12_GLOBAL__N_114findObjectByIDEP17ClientEnvironmentt.exit239 ], [ %i.cj, %bb.d ] ; 2 uses
  %.sroa.0490.0.vec.extract503 = extractelement <2 x float> %.sroa.0490.0, i64 0
  %i.ck = fsub nsz float %.sroa.0490.0.vec.extract503, %i.ah ; 2 uses
  %shift = shufflevector <2 x float> %.sroa.0490.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nsz <2 x float> %shift, %i.ak ; 2 uses
  %i.cl = extractelement <2 x float> %i.ak, i64 1
  %i.cm = fsub nsz float %.sroa.22.0, %i.cl       ; 2 uses
  %foldExtExtBinop607 = fmul nsz <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.cn = extractelement <2 x float> %foldExtExtBinop607, i64 0
  %i.co = call nsz float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cn)
  %i.cp = call nsz noundef float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.co)
  %i.cq = fmul nsz float %2, %2
  %i.cr = fcmp nsz ogt float %i.cp, %i.cq
  br i1 %i.cr, label %bb.cb, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.cs = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i8 0, ptr %i.cs, align 8, !tbaa !41
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 9
  store i8 0, ptr %i.ct, align 1, !tbaa !42
  %i.cu = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i8 0, ptr %i.cu, align 4, !tbaa !43
  %i.cv = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  store i8 0, ptr %i.cv, align 8, !tbaa !44
  %i.cw = getelementptr inbounds nuw i8, ptr %20, i64 34
  store i32 0, ptr %20, align 8
  store i16 1, ptr %i.cw, align 2, !tbaa !45
  %i.cx = getelementptr inbounds nuw i8, ptr %20, i64 36
  store float 0.000000e+00, ptr %i.cx, align 4, !tbaa !46
  %i.cy = getelementptr inbounds nuw i8, ptr %20, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes9ParameterIfLm1EEE, i64 16), ptr %i.cy, align 8, !tbaa !48
  %i.cz = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  store float 1.000000e+00, ptr %i.cz, align 8, !tbaa !49
  %i.da = getelementptr inbounds nuw i8, ptr %20, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes9ParameterIfLm1EEE, i64 16), ptr %i.da, align 8, !tbaa !48
  %i.db = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 2 uses
  store float 1.000000e+00, ptr %i.db, align 8, !tbaa !49
  %i.dc = getelementptr inbounds nuw i8, ptr %20, i64 72 ; 2 uses
  store i8 0, ptr %i.dc, align 8, !tbaa !50
  %i.dd = getelementptr inbounds nuw i8, ptr %20, i64 74
  store i16 1, ptr %i.dd, align 2, !tbaa !51
  %i.de = getelementptr inbounds nuw i8, ptr %20, i64 76
  store float 0.000000e+00, ptr %i.de, align 4, !tbaa !52
  %i.df = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.dg = getelementptr inbounds nuw i8, ptr %20, i64 88 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.dg, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector2dIfEELm2EEE, i64 16), ptr %i.df, align 8, !tbaa !48
  %i.dh = getelementptr inbounds nuw i8, ptr %20, i64 96
  %i.di = getelementptr inbounds nuw i8, ptr %20, i64 104 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.di, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector2dIfEELm2EEE, i64 16), ptr %i.dh, align 8, !tbaa !48
  %i.dj = getelementptr inbounds nuw i8, ptr %20, i64 112 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %20, i64 128 ; 6 uses
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !59
  %i.dl = getelementptr inbounds nuw i8, ptr %20, i64 120
  store i64 0, ptr %i.dl, align 8, !tbaa !62
  store i8 0, ptr %i.dk, align 8, !tbaa !63
  %i.dm = getelementptr inbounds nuw i8, ptr %20, i64 144 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %20, i64 160 ; 2 uses
  store i8 0, ptr %i.dn, align 8, !tbaa !199
  %i.do = getelementptr inbounds nuw i8, ptr %20, i64 168 ; 2 uses
  store i8 0, ptr %i.do, align 8, !tbaa !273
  store i8 0, ptr %i.dm, align 8, !tbaa !193
  %i.dp = getelementptr inbounds nuw i8, ptr %20, i64 164 ; 2 uses
  store i16 127, ptr %i.dp, align 4, !tbaa !274
  %i.dq = getelementptr inbounds nuw i8, ptr %20, i64 172 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %20, i64 220 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %20, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ds, i8 0, i64 36, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %20, i64 224 ; 5 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.dr, align 4, !tbaa !95
  %i.du = getelementptr inbounds nuw i8, ptr %20, i64 232
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes9ParameterIfLm1EEE, i64 16), ptr %i.du, align 8, !tbaa !48
  %i.dv = getelementptr inbounds nuw i8, ptr %20, i64 240 ; 2 uses
  store float 0.000000e+00, ptr %i.dv, align 8, !tbaa !49
  %i.dw = getelementptr inbounds nuw i8, ptr %20, i64 248
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes9ParameterIfLm1EEE, i64 16), ptr %i.dw, align 8, !tbaa !48
  %i.dx = getelementptr inbounds nuw i8, ptr %20, i64 256 ; 2 uses
  store float 0.000000e+00, ptr %i.dx, align 8, !tbaa !49
  %i.dy = getelementptr inbounds nuw i8, ptr %20, i64 264 ; 2 uses
  store float 0.000000e+00, ptr %i.dy, align 8, !tbaa !97
  %i.dz = getelementptr inbounds nuw i8, ptr %20, i64 272
  %i.ea = getelementptr inbounds nuw i8, ptr %20, i64 280 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.ea, align 8, !tbaa !95
  %i.eb = getelementptr inbounds nuw i8, ptr %20, i64 288
  store float 0.000000e+00, ptr %i.eb, align 8, !tbaa !141
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector3dIfEELm3EEE, i64 16), ptr %i.dz, align 8, !tbaa !48
  %i.ec = getelementptr inbounds nuw i8, ptr %20, i64 296
  %i.ed = getelementptr inbounds nuw i8, ptr %20, i64 304 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.ed, align 8, !tbaa !95
  %i.ee = getelementptr inbounds nuw i8, ptr %20, i64 312
  store float 0.000000e+00, ptr %i.ee, align 8, !tbaa !141
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector3dIfEELm3EEE, i64 16), ptr %i.ec, align 8, !tbaa !48
  %i.ef = getelementptr inbounds nuw i8, ptr %20, i64 320 ; 2 uses
  store float 0.000000e+00, ptr %i.ef, align 8, !tbaa !98
  store <2 x float> %.sroa.0490.0, ptr %i.dq, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 180 ; 6 uses
  store float %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  invoke void @_ZNK18ParticleParamTypes15RangedParameterINS_15VectorParameterIN4core8vector3dIfEELm3EEEE10pickWithinEv(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::VectorParameter.7") align 8 %21, ptr noundef nonnull align 8 dereferenceable(52) %6)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.eg = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.sroa.01.0.copyload.i257 = load <2 x float>, ptr %i.eg, align 8
  %.sroa.22.0..sroa_idx.i258 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.sroa.22.0.copyload.i259 = load float, ptr %.sroa.22.0..sroa_idx.i258, align 8, !tbaa !95
  %i.eh = getelementptr inbounds nuw i8, ptr %20, i64 184 ; 6 uses
  store <2 x float> %.sroa.01.0.copyload.i257, ptr %i.eh, align 8
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 192 ; 4 uses
  store float %.sroa.22.0.copyload.i259, ptr %.sroa.5121.0..sroa_idx, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  invoke void @_ZNK18ParticleParamTypes15RangedParameterINS_15VectorParameterIN4core8vector3dIfEELm3EEEE10pickWithinEv(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::VectorParameter.7") align 8 %22, ptr noundef nonnull align 8 dereferenceable(52) %7)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ei = getelementptr inbounds nuw i8, ptr %22, i64 8
  %.sroa.01.0.copyload.i262 = load <2 x float>, ptr %i.ei, align 8
  %.sroa.22.0..sroa_idx.i263 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %.sroa.22.0.copyload.i264 = load float, ptr %.sroa.22.0..sroa_idx.i263, align 8, !tbaa !95
  %i.ej = getelementptr inbounds nuw i8, ptr %20, i64 196 ; 3 uses
  store <2 x float> %.sroa.01.0.copyload.i262, ptr %i.ej, align 4
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 204 ; 3 uses
  store float %.sroa.22.0.copyload.i264, ptr %.sroa.5113.0..sroa_idx, align 4, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  invoke void @_ZNK18ParticleParamTypes15RangedParameterINS_15VectorParameterIN4core8vector3dIfEELm3EEEE10pickWithinEv(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::VectorParameter.7") align 8 %23, ptr noundef nonnull align 8 dereferenceable(52) %8)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ek = getelementptr inbounds nuw i8, ptr %23, i64 8
  %.sroa.01.0.copyload.i267 = load <2 x float>, ptr %i.ek, align 8
  %.sroa.22.0..sroa_idx.i268 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %.sroa.22.0.copyload.i269 = load float, ptr %.sroa.22.0..sroa_idx.i268, align 8, !tbaa !95
  %i.el = getelementptr inbounds nuw i8, ptr %20, i64 208
  store <2 x float> %.sroa.01.0.copyload.i267, ptr %i.el, align 8
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 216
  store float %.sroa.22.0.copyload.i269, ptr %.sroa.5107.0..sroa_idx, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ea, ptr noundef nonnull align 8 dereferenceable(12) %i.em, i64 12, i1 false), !tbaa.struct !96
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ed, ptr noundef nonnull align 8 dereferenceable(12) %i.en, i64 12, i1 false), !tbaa.struct !96
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !98
  store float %i.ep, ptr %i.ef, align 8, !tbaa !98
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.er = load float, ptr %i.eq, align 8, !tbaa !49
  store float %i.er, ptr %i.dv, align 8, !tbaa !49
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.et = load float, ptr %i.es, align 8, !tbaa !49
  store float %i.et, ptr %i.dx, align 8, !tbaa !49
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ev = load float, ptr %i.eu, align 8, !tbaa !97
  store float %i.ev, ptr %i.dy, align 8, !tbaa !97
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 32
  %31 = load <3 x float>, ptr %i.eh, align 8, !tbaa !95 ; 4 uses
  %i.ey = load <2 x float>, ptr %3, align 4, !tbaa !95 ; 2 uses
  %i.ez = load <2 x float>, ptr %i.ew, align 4, !tbaa !95 ; 2 uses
  %32 = shufflevector <3 x float> %31, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %33 = fmul nsz <2 x float> %32, %i.ez
  %34 = shufflevector <3 x float> %31, <3 x float> poison, <2 x i32> zeroinitializer
  %35 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %i.ey, <2 x float> %33)
  %i.fa = load <2 x float>, ptr %i.ex, align 4, !tbaa !95 ; 2 uses
  %36 = shufflevector <3 x float> %31, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %37 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %i.fa, <2 x float> %35)
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !95
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !95
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !95
  %38 = load float, ptr %.sroa.5113.0..sroa_idx, align 4, !tbaa !141 ; 2 uses
  %39 = insertelement <2 x float> poison, float %38, i64 0
  %i.fh = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = load <4 x float>, ptr %i.eh, align 8, !tbaa !202
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %37, ptr %i.eh, align 8
  %i.fk = load <2 x float>, ptr %i.ej, align 4, !tbaa !95 ; 3 uses
  %40 = shufflevector <2 x float> %32, <2 x float> %i.fk, <2 x i32> <i32 0, i32 3>
  %i.fl = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %41 = fmul nsz <2 x float> %40, %i.fm
  %42 = insertelement <2 x float> poison, float %i.fc, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %43, <2 x float> %41)
  %45 = shufflevector <3 x float> %31, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %46 = insertelement <2 x float> %45, float %38, i64 1
  %i.fn = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %46, <2 x float> %i.fo, <2 x float> %44) ; 2 uses
  %i.fq = extractelement <2 x float> %i.fp, i64 0
  store float %i.fq, ptr %.sroa.5121.0..sroa_idx, align 8, !tbaa !95
  %i.fr = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fs = fmul nsz <2 x float> %i.ez, %i.fr
  %i.ft = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.ey, <2 x float> %i.fs)
  %i.fv = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.fa, <2 x float> %i.fu)
  store <2 x float> %i.fv, ptr %i.ej, align 4
  %i.fw = extractelement <2 x float> %i.fp, i64 1
  store float %i.fw, ptr %.sroa.5113.0..sroa_idx, align 4, !tbaa !95
  br label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.ce

bb.l:                                             ; preds = %bb.g
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.ce

bb.m:                                             ; preds = %bb.h
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.ce

bb.n:                                             ; preds = %bb.j, %bb.i
  %.not203 = icmp eq ptr %.0.i, null
  br i1 %.not203, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ga = invoke { <2 x float>, float } @_ZNK10GenericCAO11getPositionEv(ptr noundef nonnull align 8 dereferenceable(1076) %.0.i)
          to label %bb.p unwind label %bb.q       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %.fca.0.extract86 = extractvalue { <2 x float>, float } %i.ga, 0
  %.fca.1.extract87 = extractvalue { <2 x float>, float } %i.ga, 1
  %i.gb = fdiv nsz float %.fca.1.extract87, 1.000000e+01
  %i.gc = fdiv nsz <2 x float> %.fca.0.extract86, splat (float 1.000000e+01)
  %i.gd = fadd nsz <2 x float> %.sroa.01.0.copyload.i, %i.gc
  %i.ge = fadd nsz float %.sroa.22.0.copyload.i, %i.gb
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.r:                                             ; preds = %bb.p, %bb.n
  %.sroa.0535.0 = phi nsz <2 x float> [ %.sroa.01.0.copyload.i, %bb.n ], [ %i.gd, %bb.p ] ; 5 uses
  %.sroa.20.0 = phi nsz float [ %.sroa.22.0.copyload.i, %bb.n ], [ %i.ge, %bb.p ] ; 5 uses
  %.not204 = icmp eq ptr %.0.i238, null
  br i1 %.not204, label %_ZNK10GenericCAO23getAbsolutePosRotMatrixEv.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i238, i64 496
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !323 ; 3 uses
  %.not.i = icmp eq ptr %i.gh, null
  br i1 %.not.i, label %_ZNK10GenericCAO23getAbsolutePosRotMatrixEv.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !48
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 80
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = invoke noundef nonnull align 4 dereferenceable(64) ptr %i.gk(ptr noundef nonnull align 8 dereferenceable(218) %i.gh)
          to label %bb.u unwind label %bb.v, !inline_history !4 ; 6 uses

bb.u:                                             ; preds = %bb.t
  %.sroa.0525.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i233, i64 0
  %.sroa.0525.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i233, i64 1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.go = load <2 x float>, ptr %i.gl, align 4, !tbaa !95
  %i.gp = load <2 x float>, ptr %i.gm, align 4, !tbaa !95
  %i.gq = shufflevector <2 x float> %.sroa.01.0.copyload.i233, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gr = fmul nsz <2 x float> %i.gq, %i.gp
  %i.gs = shufflevector <2 x float> %.sroa.01.0.copyload.i233, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.go, <2 x float> %i.gr)
  %i.gu = load <2 x float>, ptr %i.gn, align 4, !tbaa !95
  %i.gv = insertelement <2 x float> poison, float %.sroa.22.0.copyload.i235, i64 0
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> %i.gu, <2 x float> %i.gt)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !95
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !95
  %i.hc = fmul nsz float %.sroa.0525.4.vec.extract, %i.hb
  %i.hd = call nsz float @llvm.fmuladd.f32(float %.sroa.0525.0.vec.extract, float %i.gz, float %i.hc)
  %i.he = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.hf = load float, ptr %i.he, align 4, !tbaa !95
  %i.hg = call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i235, float %i.hf, float %i.hd)
  br label %_ZNK10GenericCAO23getAbsolutePosRotMatrixEv.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

_ZNK10GenericCAO23getAbsolutePosRotMatrixEv.exit.thread: ; preds = %bb.s, %bb.u, %bb.r
  %.sroa.0525.0 = phi nsz <2 x float> [ %.sroa.01.0.copyload.i233, %bb.r ], [ %i.gx, %bb.u ], [ %.sroa.01.0.copyload.i233, %bb.s ] ; 10 uses
  %.sroa.11534.0 = phi nsz float [ %.sroa.22.0.copyload.i235, %bb.r ], [ %i.hg, %bb.u ], [ %.sroa.22.0.copyload.i235, %bb.s ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  invoke void @_ZNK18ParticleParamTypes15RangedParameterINS_9ParameterIfLm1EEEE10pickWithinEv(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::Parameter") align 8 %24, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %_ZNK10GenericCAO23getAbsolutePosRotMatrixEv.exit.thread
  %i.hi = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.hj = load float, ptr %i.hi, align 8, !tbaa !49
  store float %i.hj, ptr %i.dt, align 8, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  %.sroa.0479.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i252, i64 0 ; 3 uses
  %i.hk = fcmp nsz une float %.sroa.0479.0.vec.extract, 0.000000e+00
  %.sroa.0479.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i252, i64 1 ; 3 uses
  %i.hl = fcmp nsz une float %.sroa.0479.4.vec.extract, 0.000000e+00
  %or.cond570.not574 = select i1 %i.hk, i1 true, i1 %i.hl
  %i.hm = fcmp nsz une float %.sroa.22.0.copyload.i254, 0.000000e+00
  %or.cond571 = select i1 %or.cond570.not574, i1 true, i1 %i.hm
  br i1 %or.cond571, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.ad

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.w
  %i.hn = fmul nsz float %.sroa.0479.4.vec.extract, %.sroa.0479.4.vec.extract
  %i.ho = call nsz float @llvm.fmuladd.f32(float %.sroa.0479.0.vec.extract, float %.sroa.0479.0.vec.extract, float %i.hn)
  %i.hp = call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i254, float %.sroa.22.0.copyload.i254, float %i.ho) ; 3 uses
  %i.hq = call nsz noundef float @llvm.sqrt.f32(float %i.hp)
  %i.hr = fcmp nsz oeq float %i.hp, 0.000000e+00
  br i1 %i.hr, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.x

bb.x:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread
  %i.hs = fpext nsz float %i.hp to double
  %i.ht = call nsz double @llvm.sqrt.f64(double %i.hs)
  %i.hu = fdiv nsz double 1.000000e+00, %i.ht     ; 2 uses
  %i.hv = fpext <2 x float> %.sroa.01.0.copyload.i252 to <2 x double>
  %i.hw = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = fmul nsz <2 x double> %i.hx, %i.hv
  %i.hz = fptrunc <2 x double> %i.hy to <2 x float>
  %i.ia = fpext nsz float %.sroa.22.0.copyload.i254 to double
  %i.ib = fmul nsz double %i.hu, %i.ia
  %i.ic = fptrunc nsz double %i.ib to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.x, %_ZNK4core8vector3dIfEneERKS1_.exit.thread
  %.sroa.10470.0 = phi nsz float [ %.sroa.22.0.copyload.i254, %_ZNK4core8vector3dIfEneERKS1_.exit.thread ], [ %i.ic, %bb.x ]
  %i.id = phi <2 x float> [ %.sroa.01.0.copyload.i252, %_ZNK4core8vector3dIfEneERKS1_.exit.thread ], [ %i.hz, %bb.x ]
  %i.ie = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 3.600000e+02)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.if = fpext nsz float %i.ie to double
  %i.ig = fmul nsz double %i.if, f0x3F91DF46A2529D39
  %sincos.i = call nsz { double, double } @llvm.sincos.f64(double %i.ig) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 2 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1 ; 2 uses
  %i.ih = fpext nsz float %i.hq to double         ; 2 uses
  %i.ii = fmul nsz double %sin.i, -0.000000e+00
  %i.ij = call nsz double @llvm.fmuladd.f64(double %i.ih, double %cos.i, double %i.ii)
  %i.ik = fptrunc nsz double %i.ij to float
  %i.il = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 3.600000e+02)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.im = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 3.600000e+02)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.in = fpext nsz float %i.il to double
  %i.io = fmul nsz double %i.in, f0x3F91DF46A2529D39
  %sincos.i289 = call nsz { double, double } @llvm.sincos.f64(double %i.io) ; 2 uses
  %sin.i290 = extractvalue { double, double } %sincos.i289, 0 ; 2 uses
  %cos.i291 = extractvalue { double, double } %sincos.i289, 1 ; 2 uses
  %i.ip = fmul nsz double %cos.i, 0.000000e+00
  %i.iq = call nsz double @llvm.fmuladd.f64(double %i.ih, double %sin.i, double %i.ip)
  %i.ir = fptrunc nsz double %i.iq to float
  %i.is = fpext nsz float %i.ir to double         ; 2 uses
  %i.it = fmul nsz double %cos.i291, %i.is
  %i.iu = call nsz double @llvm.fmuladd.f64(double %sin.i290, double 0.000000e+00, double %i.it)
  %i.iv = fptrunc nsz double %i.iu to float
  %i.iw = fneg nsz double %i.is
  %i.ix = fmul nsz double %sin.i290, %i.iw
  %i.iy = call nsz double @llvm.fmuladd.f64(double %cos.i291, double 0.000000e+00, double %i.ix)
  %i.iz = fptrunc nsz double %i.iy to float
  %i.ja = fpext nsz float %i.im to double
  %i.jb = fmul nsz double %i.ja, f0x3F91DF46A2529D39
  %sincos.i292 = call nsz { double, double } @llvm.sincos.f64(double %i.jb) ; 2 uses
  %sin.i293 = extractvalue { double, double } %sincos.i292, 0
  %cos.i294 = extractvalue { double, double } %sincos.i292, 1
  %i.jc = fpext nsz float %i.ik to double
  %i.jd = fpext nsz float %i.iz to double         ; 2 uses
  %i.je = fneg nsz double %i.jd
  %i.jf = fmul nsz float %.sroa.10470.0, %i.iv
  %i.jg = insertelement <2 x double> poison, double %sin.i293, i64 0
  %i.jh = insertelement <2 x double> %i.jg, double %cos.i294, i64 1 ; 2 uses
  %i.ji = insertelement <2 x double> poison, double %i.je, i64 0
  %i.jj = insertelement <2 x double> %i.ji, double %i.jd, i64 1
  %i.jk = fmul nsz <2 x double> %i.jh, %i.jj
  %i.jl = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jm = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jn = shufflevector <2 x double> %i.jh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jo = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.jn, <2 x double> %i.jk)
  %i.jp = fptrunc <2 x double> %i.jo to <2 x float>
  %i.jq = fmul nsz <2 x float> %i.id, %i.jp
  %i.jr = load <2 x float>, ptr %i.dq, align 4, !tbaa !95
  %i.js = fadd nsz <2 x float> %i.jq, %i.jr
end_hunk_0
