Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/particles?download=true
inline.NumInlined: 2466
inline.NumDeleted: 1098
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN8Particle4stepEfP17ClientEnvironment:bb.a

bb.p:                                             ; preds = %bb.c, %bb.d
  %i.dl = load float, ptr %6, align 8, !tbaa !192
  %i.dm = fdiv nsz float %i.dl, 1.000000e+01
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.do = load <2 x float>, ptr %i.dn, align 4, !tbaa !53
  %i.dp = fdiv nsz <2 x float> %i.do, splat (float 1.000000e+01) ; 2 uses
  %.sroa.0.0.vec.insert.i172 = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.dq = shufflevector <2 x float> %.sroa.0.0.vec.insert.i172, <2 x float> %i.dp, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.dq, ptr %i.e, align 4, !tbaa !53
  %i.dr = extractelement <2 x float> %i.dp, i64 1
  store float %i.dr, ptr %i.g, align 4, !tbaa !53
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.h, %bb.l, %bb.o, %bb.n, %bb.j, %bb.f
  %i.ds = load float, ptr %5, align 8, !tbaa !192
  %i.dt = fdiv nsz float %i.ds, 1.000000e+01
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.dv = load <2 x float>, ptr %i.du, align 4, !tbaa !53
  %i.dw = fdiv nsz <2 x float> %i.dv, splat (float 1.000000e+01) ; 2 uses
  %.sroa.0.0.vec.insert.i176 = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dx = shufflevector <2 x float> %.sroa.0.0.vec.insert.i176, <2 x float> %i.dw, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.dx, ptr %i.be, align 8, !tbaa !53
  %i.dy = extractelement <2 x float> %i.dw, i64 1
  store float %i.dy, ptr %i.bh, align 8, !tbaa !53
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !467 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i, label %_ZN19collisionMoveResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !471
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #28
  br label %_ZN19collisionMoveResultD2Ev.exit

_ZN19collisionMoveResultD2Ev.exit:                ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.u

bb.s:                                             ; preds = %bb.g
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !471
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.cl to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.ek) #28
  br label %_ZN19collisionMoveResultD2Ev.exit181

_ZN19collisionMoveResultD2Ev.exit181:             ; preds = %bb.g, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.cj

bb.t:                                             ; preds = %bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ep = load <1 x float>, ptr %i.eo, align 8
  %i.eq = load <4 x float>, ptr %i.el, align 8    ; 2 uses
  %i.er = insertelement <4 x float> %i.eq, float 1.000000e+00, i64 3
  %i.es = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 2 uses
  %i.et = insertelement <4 x float> %i.es, float -0.000000e+00, i64 3
  %i.eu = insertelement <4 x float> %i.et, float %i.av, i64 2
  %i.ev = load <4 x float>, ptr %i.en, align 8
  %i.ew = shufflevector <1 x float> %i.ep, <1 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ex = shufflevector <4 x float> %i.es, <4 x float> %i.ew, <4 x i32> <i32 poison, i32 poison, i32 6, i32 3>
  %i.ey = shufflevector <4 x float> %i.ev, <4 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ez = load <2 x float>, ptr %i.em, align 4, !tbaa !53 ; 2 uses
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fb = shufflevector <4 x float> %i.er, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fc = fmul nsz <4 x float> %i.fb, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>
  %i.fd = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fe = insertelement <2 x float> %i.fd, float %1, i64 0 ; 2 uses
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fg = fmul <4 x float> %i.ff, %i.fc
  %i.fh = fadd <4 x float> %i.fg, %i.eu
  %i.fi = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fj = fmul nsz <4 x float> %i.fi, %i.fh
  %i.fk = fmul nsz <2 x float> %i.ae, %i.ez
  %i.fl = fadd nsz <4 x float> %i.fj, %i.ey
  store <4 x float> %i.fl, ptr %i.en, align 8, !tbaa !53
  %i.fm = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fn = insertelement <2 x float> %i.fm, float %i.av, i64 1
  %i.fo = fadd nsz <2 x float> %i.fk, %i.fn
  store <2 x float> %i.fo, ptr %i.f, align 8, !tbaa !53
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN19collisionMoveResultD2Ev.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !193
  %.not = icmp eq i8 %i.fq, 0
  br i1 %.not, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.fs = load float, ptr %i.fr, align 8, !tbaa !99
  %i.ft = fadd nsz float %1, %i.fs
  store float %i.ft, ptr %i.fr, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4, !tbaa !93
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !194
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 80
  %i.fx = load i64, ptr %i.fw, align 4
  call void @_ZNK19TileAnimationParams15determineParamsEN4core8vector2dIjEEPiS3_PS2_(ptr noundef nonnull align 4 dereferenceable(16) %i.fp, i64 %i.fx, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null)
  %i.fy = load i32, ptr %i.a, align 4, !tbaa !93
  %i.fz = sitofp nsz i32 %i.fy to double
  %i.ga = fdiv nsz double %i.fz, 1.000000e+03
  %i.gb = fptrunc nsz double %i.ga to float       ; 3 uses
  %.promoted = load float, ptr %i.fr, align 8, !tbaa !99 ; 2 uses
  %i.gc = fcmp nsz ogt float %.promoted, %i.gb
  br i1 %i.gc, label %.lr.ph, label %bb.x

.lr.ph:                                           ; preds = %bb.v
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  %.promoted260 = load i32, ptr %i.gd, align 4, !tbaa !100
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.w
  %i.ge = phi i32 [ %.promoted260, %.lr.ph ], [ %i.gg, %bb.w ]
  %i.gf = phi float [ %.promoted, %.lr.ph ], [ %i.gh, %bb.w ]
  %i.gg = add nsw i32 %i.ge, 1                    ; 2 uses
  %i.gh = fsub nsz float %i.gf, %i.gb             ; 3 uses
  %i.gi = fcmp nsz ogt float %i.gh, %i.gb
  br i1 %i.gi, label %bb.w, label %._crit_edge, !llvm.loop !456

._crit_edge:                                      ; preds = %bb.w
  store i32 %i.gg, ptr %i.gd, align 4, !tbaa !100
  store float %i.gh, ptr %i.fr, align 8, !tbaa !99
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !196 ; 2 uses
  %.not119 = icmp eq ptr %i.gk, null
  br i1 %.not119, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load float, ptr %i.b, align 4, !tbaa !90
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.go = load float, ptr %i.gn, align 8, !tbaa !92
  %i.gp = fadd nsz float %i.go, 1.000000e-01
  %i.gq = fdiv nsz float %i.gm, %i.gp
  call void @_ZNK18ParticleParamTypes16TweenedParameterINS_9ParameterIfLm1EEEE5blendEf(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::Parameter") align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %i.gl, float noundef %i.gq)
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.gt = fmul nsz float %i.gs, 2.550000e+02
  %i.gu = fptoui float %i.gt to i32
  %i.gv = shl i32 %i.gu, 24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0 = phi i32 [ %i.gv, %bb.z ], [ -16777216, %bb.y ]
  %i.gw = call i32 @_ZN8Particle11updateLightEP17ClientEnvironment(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %2)
  %i.gx = and i32 %i.gw, 16777215
  %i.gy = or disjoint i32 %i.gx, %.0
  call void @_ZN8Particle14updateVerticesEP17ClientEnvironmentN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull %2, i32 %i.gy)
  ret void
}

declare void @_ZNK18ParticleParamTypes15RangedParameterINS_15VectorParameterIN4core8vector3dIfEELm3EEEE10pickWithinEv(ptr dead_on_unwind writable sret(%"struct.ParticleParamTypes::VectorParameter.7") align 8, ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #6

declare void @_Z19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpMode(ptr dead_on_unwind writable sret(%struct.collisionMoveResult) align 8, ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(24), float noundef, float noundef, ptr noundef, ptr noundef, <2 x float>, float, ptr noundef, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

declare void @_ZNK18ParticleParamTypes15RangedParameterINS_9ParameterIfLm1EEEE10pickWithinEv(ptr dead_on_unwind writable sret(%"struct.ParticleParamTypes::Parameter") align 8, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #6

declare void @_ZNK19TileAnimationParams15determineParamsEN4core8vector2dIjEEPiS3_PS2_(ptr noundef nonnull align 4 dereferenceable(16), i64, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZNK18ParticleParamTypes16TweenedParameterINS_9ParameterIfLm1EEEE5blendEf(ptr dead_on_unwind writable sret(%"struct.ParticleParamTypes::Parameter") align 8, ptr noundef nonnull align 8 dereferenceable(40), float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local range(i32 -16777216, 0) i32 @_ZN8Particle11updateLightEP17ClientEnvironment(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr noundef nonnull %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load float, ptr %i.b, align 8, !tbaa !197
  %i.d = fpext nsz float %i.c to double
  %i.e = fadd nsz double %i.d, 5.000000e-01
  %i.f = tail call nsz double @llvm.floor.f64(double %i.e)
  %i.g = fptosi double %i.f to i16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !53
  %i.j = fpext <2 x float> %i.i to <2 x double>
  %i.k = fadd nsz <2 x double> %i.j, splat (double 5.000000e-01) ; 2 uses
  %i.l = extractelement <2 x double> %i.k, i64 0
  %i.m = tail call nsz double @llvm.floor.f64(double %i.l)
  %i.n = fptosi double %i.m to i16
  %i.o = extractelement <2 x double> %i.k, i64 1
  %i.p = tail call nsz double @llvm.floor.f64(double %i.o)
  %i.q = fptosi double %i.p to i16
  %i.r = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %1)
  %.sroa.513.0.insert.ext = zext i16 %i.q to i48
  %.sroa.513.0.insert.shift = shl nuw i48 %.sroa.513.0.insert.ext, 32
  %.sroa.412.0.insert.ext = zext i16 %i.n to i48
  %.sroa.412.0.insert.shift = shl nuw nsw i48 %.sroa.412.0.insert.ext, 16
  %.sroa.412.0.insert.insert = or disjoint i48 %.sroa.513.0.insert.shift, %.sroa.412.0.insert.shift
  %.sroa.011.0.insert.ext = zext i16 %i.g to i48
  %.sroa.011.0.insert.insert = or disjoint i48 %.sroa.412.0.insert.insert, %.sroa.011.0.insert.ext
  %i.s = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.r, i48 %.sroa.011.0.insert.insert, ptr noundef nonnull %i.a) ; 2 uses
  %.sroa.4.0.extract.shift = lshr i32 %i.s, 16
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8 ; 2 uses
  %i.t = load i8, ptr %i.a, align 1, !tbaa !198, !range !142, !noundef !143
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = call noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88) %1) ; 3 uses
  br i1 %i.u, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !191
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y), !inline_history !2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 336
  %i.ae = and i32 %i.s, 65535
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.ag, align 1, !tbaa !64 ; 3 uses
  %i.ah = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i, label %bb.c

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i: ; preds = %bb.b
  %i.ai = and i8 %.sroa.0.0.copyload.i.i, 15      ; 2 uses
  br label %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit

bb.c:                                             ; preds = %bb.b
  %i.aj = and i8 %.sroa.4.0.extract.trunc, 15
  %i.ak = and i8 %.sroa.0.0.copyload.i.i, 15      ; 2 uses
  %i.al = call noundef i8 @llvm.umax.i8(i8 %i.ak, i8 %i.aj)
  %i.am = lshr i8 %.sroa.4.0.extract.trunc, 4
  %i.an = call i8 @llvm.umax.i8(i8 %i.ak, i8 %i.am)
  br label %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit

_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit: ; preds = %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i, %bb.c
  %i.ao = phi i8 [ %i.al, %bb.c ], [ %i.ai, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i ]
  %i.ap = phi i8 [ %i.an, %bb.c ], [ %i.ai, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.thread.i ]
  %i.aq = zext nneg i8 %i.ao to i32
  %i.ar = mul i32 %i.v, %i.aq
  %i.as = sub i32 1000, %i.v
  %i.at = zext nneg i8 %i.ap to i32
  %i.au = mul i32 %i.as, %i.at
  %i.av = add i32 %i.au, %i.ar
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.aw = mul i32 %i.v, 15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit
  %.sink19 = phi i32 [ %i.aw, %bb.d ], [ %i.av, %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit ]
  %i.ax = udiv i32 %.sink19, 1000
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.ax, i32 15)
  %.0 = trunc nuw nsw i32 %spec.store.select.i to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !199
  %i.ba = add i8 %i.az, %.0
  %spec.store.select.i10 = call i8 @llvm.umin.i8(i8 %i.ba, i8 15)
  %i.bb = load ptr, ptr @light_decode_table, align 8, !tbaa !200
  %i.bc = zext nneg i8 %spec.store.select.i10 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !64
  %i.bf = zext i8 %i.be to i32                    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !139 ; 3 uses
  %i.bi = lshr i32 %i.bh, 16
  %i.bj = and i32 %i.bi, 255
  %i.bk = mul nuw nsw i32 %i.bj, %i.bf
  %.lhs.trunc = trunc nuw i32 %i.bk to i16
  %i.bl = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.bl to i32
  %i.bm = lshr i32 %i.bh, 8
  %i.bn = and i32 %i.bm, 255
  %i.bo = mul nuw nsw i32 %i.bn, %i.bf
  %.lhs.trunc15 = trunc nuw i32 %i.bo to i16
  %i.bp = udiv i16 %.lhs.trunc15, 255
  %.zext16 = zext nneg i16 %i.bp to i32
  %i.bq = and i32 %i.bh, 255
  %i.br = mul nuw nsw i32 %i.bq, %i.bf
  %.lhs.trunc17 = trunc nuw i32 %i.br to i16
  %i.bs = udiv i16 %.lhs.trunc17, 255
  %.zext18 = zext nneg i16 %i.bs to i32
  %i.bt = shl nuw nsw i32 %.zext, 16
  %i.bu = shl nuw nsw i32 %.zext16, 8
  %i.bv = and i32 %i.bu, 65280
  %i.bw = or disjoint i32 %i.bv, %i.bt
  %i.bx = add nuw nsw i32 %i.bw, %.zext18
  %i.by = or i32 %i.bx, -16777216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %i.by
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8Particle14updateVerticesEP17ClientEnvironmentN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.ParticleParamTypes::VectorParameter", align 8 ; 4 uses
  %4 = alloca %"class.core::vector2d.246", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !89     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  %i.e = load i16, ptr %i.d, align 4, !tbaa !138
  %.not.i = icmp ult i16 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %_ZN14ParticleBuffer11getVerticesEt.exit

bb.c:                                             ; preds = %bb.b
  %i.f = zext i16 %i.c to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 262
  store i8 1, ptr %i.g, align 2, !tbaa !201
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !106  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !inline_history !472 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(28) %i.m), !inline_history !472
  %.idx.i = mul nuw nsw i64 %i.f, 160
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i
  br label %_ZN14ParticleBuffer11getVerticesEt.exit

_ZN14ParticleBuffer11getVerticesEt.exit:          ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.r, %bb.c ], [ null, %bb.b ] ; 40 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !196  ; 2 uses
  %.not73 = icmp eq ptr %i.t, null
  br i1 %.not73, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN14ParticleBuffer11getVerticesEt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load float, ptr %i.v, align 4, !tbaa !90
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load float, ptr %i.x, align 8, !tbaa !92
  %i.z = fadd nsz float %i.y, 1.000000e-01
  %i.aa = fdiv nsz float %i.w, %i.z
  call void @_ZNK18ParticleParamTypes16TweenedParameterINS_15VectorParameterIN4core8vector2dIfEELm2EEEE5blendEf(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::VectorParameter") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %i.u, float noundef %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.ab, align 8, !tbaa !53
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
  store i32 0, ptr %4, align 8, !tbaa !474
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.aj, align 4, !tbaa !475
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !100
  %i.am = call nsz <2 x float> @_ZNK19TileAnimationParams16getTextureCoordsEN4core8vector2dIjEEi(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 %i.ah, i32 noundef %i.al)
  call void @_ZNK19TileAnimationParams15determineParamsEN4core8vector2dIjEEPiS3_PS2_(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 %i.ah, ptr noundef null, ptr noundef null, ptr noundef nonnull %4)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = trunc i64 %i.ah to i32
  %i.aq = trunc nuw i64 %i.ai to i32
  %i.ar = load <2 x i32>, ptr %4, align 8, !tbaa !93
  %i.as = uitofp <2 x i32> %i.ar to <2 x float>
  %i.at = uitofp nsz i32 %i.ap to float
  %i.au = uitofp nsz i32 %i.aq to float
  %i.av = insertelement <2 x float> poison, float %i.at, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.au, i64 1
  %i.ax = fdiv nsz <2 x float> %i.as, %i.aw
  %i.ay = load <2 x float>, ptr %i.an, align 8, !tbaa !53
  %i.az = fadd nsz <2 x float> %i.am, %i.ay       ; 2 uses
  %i.ba = load <2 x float>, ptr %i.ao, align 8, !tbaa !53
  %i.bb = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.ba, <2 x float> %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = load <2 x float>, ptr %i.bc, align 8, !tbaa !53 ; 2 uses
  %i.bf = load <2 x float>, ptr %i.bd, align 8, !tbaa !53
  %i.bg = fadd nsz <2 x float> %i.be, %i.bf
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bh = phi <2 x float> [ %i.bb, %bb.f ], [ %i.bg, %bb.g ] ; 3 uses
  %i.bi = phi <2 x float> [ %i.az, %bb.f ], [ %i.be, %bb.g ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !476
  %i.bl = fmul nsz float %i.bk, 5.000000e-01      ; 2 uses
  %.sroa.0173.0.vec.extract = extractelement <2 x float> %.sroa.0173.0, i64 0
  %i.bm = fmul nsz float %.sroa.0173.0.vec.extract, %i.bl ; 5 uses
  %.sroa.0173.4.vec.extract = extractelement <2 x float> %.sroa.0173.0, i64 1
  %i.bn = fmul nsz float %.sroa.0173.4.vec.extract, %i.bl ; 5 uses
  %i.bo = fneg nsz float %i.bm                    ; 2 uses
  %i.bp = fneg nsz float %i.bn                    ; 3 uses
  store float %i.bo, ptr %.0.i, align 4, !tbaa !53
  %.sroa.4143.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 4 uses
  store float %i.bp, ptr %.sroa.4143.0..0.i.sroa_idx, align 4, !tbaa !53
  %.sroa.5144.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  %.sroa.9148.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5144.0..0.i.sroa_idx, i8 0, i64 16, i1 false)
  store i32 %2, ptr %.sroa.9148.0..0.i.sroa_idx, align 4, !tbaa !93
  %.sroa.10149.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.bq = extractelement <2 x float> %i.bi, i64 0
  store float %i.bq, ptr %.sroa.10149.0..0.i.sroa_idx, align 4, !tbaa !53
  %.sroa.11150.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.br = extractelement <2 x float> %i.bh, i64 1
  store float %i.br, ptr %.sroa.11150.0..0.i.sroa_idx, align 4, !tbaa !53
  %.sroa.12151.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  store i16 0, ptr %.sroa.12151.0..0.i.sroa_idx, align 4, !tbaa !107
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i, i64 40 ; 5 uses
  store float %i.bm, ptr %i.bs, align 4, !tbaa !53
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 44
  store float %i.bp, ptr %.sroa.4132.0..sroa_idx, align 4, !tbaa !53
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %.sroa.9137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5133.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 %2, ptr %.sroa.9137.0..sroa_idx, align 4, !tbaa !93
  %.sroa.10138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 68
  store <2 x float> %i.bh, ptr %.sroa.10138.0..sroa_idx, align 4, !tbaa !53
  %.sroa.12140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 76
  store i16 0, ptr %.sroa.12140.0..sroa_idx, align 4, !tbaa !107
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i, i64 80 ; 7 uses
  store float %i.bm, ptr %i.bt, align 4, !tbaa !53
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 84
  store float %i.bn, ptr %.sroa.4121.0..sroa_idx, align 4, !tbaa !53
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 88
  %.sroa.9126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5122.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 %2, ptr %.sroa.9126.0..sroa_idx, align 4, !tbaa !93
  %.sroa.10127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 108
  %i.bu = extractelement <2 x float> %i.bh, i64 0
  store float %i.bu, ptr %.sroa.10127.0..sroa_idx, align 4, !tbaa !53
  %.sroa.11128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 112
  %i.bv = extractelement <2 x float> %i.bi, i64 1
  store float %i.bv, ptr %.sroa.11128.0..sroa_idx, align 4, !tbaa !53
  %.sroa.12129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 116
  store i16 0, ptr %.sroa.12129.0..sroa_idx, align 4, !tbaa !107
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i, i64 120 ; 7 uses
  store float %i.bo, ptr %i.bw, align 4, !tbaa !53
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 124
  store float %i.bn, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !53
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 128
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5118.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 %2, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !93
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 148
  store <2 x float> %i.bi, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !53
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 156
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !107
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !477 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.sroa.0.0.copyload.i79 = load i48, ptr %i.bz, align 8, !tbaa !107 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !478, !range !142, !noundef !143
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i79, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.cf = bitcast i48 %.sroa.0.0.copyload.i79 to <3 x i16>
  %i.cg = shufflevector <3 x i16> %i.cf, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.ch = sitofp <2 x i16> %i.cg to <2 x float>
  %i.ci = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.cj = fmul nnan nsz <2 x float> %i.ch, splat (float 1.000000e+01) ; 9 uses
  %i.ck = fmul nnan nsz float %i.ci, 1.000000e+01 ; 8 uses
  br i1 %i.cc, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.h
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 612 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 604 ; 4 uses
  %.sroa.22.0.copyload.i.us = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !53
  %.sroa.0115.0.vec.extract.us = load float, ptr %i.cl, align 4, !tbaa !53
  %i.cm = fdiv nsz float %.sroa.0115.0.vec.extract.us, 1.000000e+01
  %i.cn = fdiv nsz float %.sroa.22.0.copyload.i.us, 1.000000e+01
  %i.co = load float, ptr %i.ce, align 8, !tbaa !479
  %i.cp = fsub nsz float %i.cn, %i.co
  %i.cq = load float, ptr %i.cd, align 8, !tbaa !197
  %i.cr = fsub nsz float %i.cm, %i.cq
  %i.cs = call nsz noundef float @llvm.atan2.f32(float %i.cp, float %i.cr)
  %i.ct = fdiv nsz float %i.cs, f0x3C8EFA35
  %i.cu = fadd nsz float %i.ct, 9.000000e+01
  %i.cv = fpext nsz float %i.cu to double
  %i.cw = fmul nsz double %i.cv, f0x3F91DF46A2529D39
  %sincos.i.us = call nsz { double, double } @llvm.sincos.f64(double %i.cw) ; 2 uses
  %sin.i.us = extractvalue { double, double } %sincos.i.us, 0
  %cos.i.us = extractvalue { double, double } %sincos.i.us, 1
  %i.cx = load float, ptr %.0.i, align 4, !tbaa !192
  %i.cy = fpext nsz float %i.cx to double
  %i.cz = insertelement <2 x double> poison, double %cos.i.us, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %sin.i.us, i64 1 ; 2 uses
  %i.db = fmul nsz <2 x double> %i.da, <double 0.000000e+00, double -0.000000e+00>
  %i.dc = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.df = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.de, <2 x double> %i.db) ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 1
  %i.dh = fptrunc nsz double %i.dg to float       ; 2 uses
  %i.di = extractelement <2 x double> %i.df, i64 0
  %i.dj = fptrunc nsz double %i.di to float       ; 2 uses
  store float %i.dh, ptr %.0.i, align 4, !tbaa !192
  store float %i.dj, ptr %.sroa.5144.0..0.i.sroa_idx, align 4, !tbaa !141
  %i.dk = load float, ptr %i.ce, align 8, !tbaa !141
  %i.dl = fmul nsz float %i.dk, 1.000000e+01
  %i.dm = fsub nsz float %i.dl, %i.ck
  %i.dn = load float, ptr %.sroa.4143.0..0.i.sroa_idx, align 4, !tbaa !202
  %i.do = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.dp = fmul nsz <2 x float> %i.do, splat (float 1.000000e+01)
  %i.dq = fsub nsz <2 x float> %i.dp, %i.cj
  %i.dr = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dn, i64 1
  %i.dt = fadd nsz <2 x float> %i.dq, %i.ds
  store <2 x float> %i.dt, ptr %.0.i, align 4, !tbaa !53
  %i.du = fadd nsz float %i.dm, %i.dj
  store float %i.du, ptr %.sroa.5144.0..0.i.sroa_idx, align 4, !tbaa !141
  %.sroa.22.0.copyload.i.us.1 = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !53
  %.sroa.0115.0.vec.extract.us.1 = load float, ptr %i.cl, align 4, !tbaa !53
  %i.dv = fdiv nsz float %.sroa.0115.0.vec.extract.us.1, 1.000000e+01
  %i.dw = fdiv nsz float %.sroa.22.0.copyload.i.us.1, 1.000000e+01
  %i.dx = load float, ptr %i.ce, align 8, !tbaa !479
  %i.dy = fsub nsz float %i.dw, %i.dx
  %i.dz = load float, ptr %i.cd, align 8, !tbaa !197
  %i.ea = fsub nsz float %i.dv, %i.dz
  %i.eb = call nsz noundef float @llvm.atan2.f32(float %i.dy, float %i.ea)
  %i.ec = fdiv nsz float %i.eb, f0x3C8EFA35
  %i.ed = fadd nsz float %i.ec, 9.000000e+01
  %i.ee = fpext nsz float %i.ed to double
  %i.ef = fmul nsz double %i.ee, f0x3F91DF46A2529D39
  %sincos.i.us.1 = call nsz { double, double } @llvm.sincos.f64(double %i.ef) ; 2 uses
  %sin.i.us.1 = extractvalue { double, double } %sincos.i.us.1, 0
  %cos.i.us.1 = extractvalue { double, double } %sincos.i.us.1, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.eh = fpext nsz float %i.bm to double
  %i.ei = insertelement <2 x double> poison, double %cos.i.us.1, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %sin.i.us.1, i64 1 ; 2 uses
  %i.ek = fmul nsz <2 x double> %i.ej, <double 0.000000e+00, double -0.000000e+00>
  %i.el = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eo = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.en, <2 x double> %i.ek) ; 2 uses
  %i.ep = extractelement <2 x double> %i.eo, i64 1
  %i.eq = fptrunc nsz double %i.ep to float       ; 2 uses
  %i.er = extractelement <2 x double> %i.eo, i64 0
  %i.es = fptrunc nsz double %i.er to float       ; 2 uses
  store float %i.eq, ptr %i.bs, align 4, !tbaa !192
  store float %i.es, ptr %i.eg, align 4, !tbaa !141
  %i.et = load float, ptr %i.ce, align 8, !tbaa !141
  %i.eu = fmul nsz float %i.et, 1.000000e+01
  %i.ev = fsub nsz float %i.eu, %i.ck
  %i.ew = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.ex = fmul nsz <2 x float> %i.ew, splat (float 1.000000e+01)
  %i.ey = fsub nsz <2 x float> %i.ex, %i.cj       ; 2 uses
  %i.ez = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %i.bn, i64 1 ; 2 uses
  %i.fb = fadd nsz <2 x float> %i.ey, %i.fa
  %i.fc = fsub nsz <2 x float> %i.ey, %i.fa
  %i.fd = shufflevector <2 x float> %i.fb, <2 x float> %i.fc, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.fd, ptr %i.bs, align 4, !tbaa !53
  %i.fe = fadd nsz float %i.ev, %i.es
  store float %i.fe, ptr %i.eg, align 4, !tbaa !141
  %.sroa.22.0.copyload.i.us.2 = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !53
  %.sroa.0115.0.vec.extract.us.2 = load float, ptr %i.cl, align 4, !tbaa !53
  %i.ff = fdiv nsz float %.sroa.0115.0.vec.extract.us.2, 1.000000e+01
  %i.fg = fdiv nsz float %.sroa.22.0.copyload.i.us.2, 1.000000e+01
  %i.fh = load float, ptr %i.ce, align 8, !tbaa !479
  %i.fi = fsub nsz float %i.fg, %i.fh
  %i.fj = load float, ptr %i.cd, align 8, !tbaa !197
  %i.fk = fsub nsz float %i.ff, %i.fj
  %i.fl = call nsz noundef float @llvm.atan2.f32(float %i.fi, float %i.fk)
  %i.fm = fdiv nsz float %i.fl, f0x3C8EFA35
  %i.fn = fadd nsz float %i.fm, 9.000000e+01
  %i.fo = fpext nsz float %i.fn to double
  %i.fp = fmul nsz double %i.fo, f0x3F91DF46A2529D39
  %sincos.i.us.2 = call nsz { double, double } @llvm.sincos.f64(double %i.fp) ; 2 uses
  %sin.i.us.2 = extractvalue { double, double } %sincos.i.us.2, 0
  %cos.i.us.2 = extractvalue { double, double } %sincos.i.us.2, 1
  %i.fq = load float, ptr %i.bt, align 4, !tbaa !192
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i, i64 88 ; 3 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !141
  %i.ft = fpext nsz float %i.fq to double
  %i.fu = insertelement <2 x double> poison, double %cos.i.us.2, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %sin.i.us.2, i64 1 ; 2 uses
  %i.fw = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i, i64 84
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !202
  %i.gb = load float, ptr %i.bw, align 4, !tbaa !192
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i, i64 128 ; 3 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !141
  %i.ge = fpext nsz float %i.gb to double
  %i.gf = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.gg = insertelement <2 x float> %i.gf, float %i.gd, i64 1
  %i.gh = fpext <2 x float> %i.gg to <2 x double> ; 3 uses
  %i.gi = fneg nsz <2 x double> %i.gh             ; 2 uses
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> %i.gh, <2 x i32> <i32 2, i32 0>
  %i.gk = fmul nsz <2 x double> %i.fv, %i.gj
  %i.gl = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.fy, <2 x double> %i.gk) ; 2 uses
  %i.gm = extractelement <2 x double> %i.gl, i64 1
  %i.gn = fptrunc nsz double %i.gm to float       ; 2 uses
  %i.go = extractelement <2 x double> %i.gl, i64 0
  %i.gp = fptrunc nsz double %i.go to float       ; 2 uses
  store float %i.gn, ptr %i.bt, align 4, !tbaa !192
  store float %i.gp, ptr %i.fr, align 4, !tbaa !141
  %i.gq = load float, ptr %i.ce, align 8, !tbaa !141
  %i.gr = fmul nsz float %i.gq, 1.000000e+01
  %i.gs = fsub nsz float %i.gr, %i.ck
  %i.gt = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.gu = fmul nsz <2 x float> %i.gt, splat (float 1.000000e+01)
  %i.gv = fsub nsz <2 x float> %i.gu, %i.cj
  %i.gw = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gx = insertelement <2 x float> %i.gw, float %i.ga, i64 1
  %i.gy = fadd nsz <2 x float> %i.gv, %i.gx
  store <2 x float> %i.gy, ptr %i.bt, align 4, !tbaa !53
  %i.gz = fadd nsz float %i.gs, %i.gp
  store float %i.gz, ptr %i.fr, align 4, !tbaa !141
  %.sroa.22.0.copyload.i.us.3 = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !53
  %.sroa.0115.0.vec.extract.us.3 = load float, ptr %i.cl, align 4, !tbaa !53
  %i.ha = fdiv nsz float %.sroa.0115.0.vec.extract.us.3, 1.000000e+01
  %i.hb = fdiv nsz float %.sroa.22.0.copyload.i.us.3, 1.000000e+01
  %i.hc = load float, ptr %i.ce, align 8, !tbaa !479
  %i.hd = fsub nsz float %i.hb, %i.hc
  %i.he = load float, ptr %i.cd, align 8, !tbaa !197
  %i.hf = fsub nsz float %i.ha, %i.he
  %i.hg = call nsz noundef float @llvm.atan2.f32(float %i.hd, float %i.hf)
  %i.hh = fdiv nsz float %i.hg, f0x3C8EFA35
  %i.hi = fadd nsz float %i.hh, 9.000000e+01
  %i.hj = fpext nsz float %i.hi to double
  %i.hk = fmul nsz double %i.hj, f0x3F91DF46A2529D39
  %sincos.i.us.3 = call nsz { double, double } @llvm.sincos.f64(double %i.hk) ; 2 uses
  %sin.i.us.3 = extractvalue { double, double } %sincos.i.us.3, 0
  %cos.i.us.3 = extractvalue { double, double } %sincos.i.us.3, 1
  %i.hl = insertelement <2 x double> poison, double %cos.i.us.3, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %sin.i.us.3, i64 1 ; 2 uses
  %i.hn = shufflevector <2 x double> %i.gi, <2 x double> %i.gh, <2 x i32> <i32 3, i32 1>
  %i.ho = fmul nsz <2 x double> %i.hm, %i.hn
  %i.hp = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hs = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> %i.hr, <2 x double> %i.ho) ; 2 uses
  %i.ht = extractelement <2 x double> %i.hs, i64 1
  %i.hu = fptrunc nsz double %i.ht to float       ; 2 uses
  %i.hv = extractelement <2 x double> %i.hs, i64 0
  %i.hw = fptrunc nsz double %i.hv to float       ; 2 uses
  store float %i.hu, ptr %i.bw, align 4, !tbaa !192
  store float %i.hw, ptr %i.gc, align 4, !tbaa !141
  %i.hx = load float, ptr %i.ce, align 8, !tbaa !141
  %i.hy = fmul nsz float %i.hx, 1.000000e+01
  %i.hz = fsub nsz float %i.hy, %i.ck
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i, i64 124
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !202
  %i.ic = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.id = fmul nsz <2 x float> %i.ic, splat (float 1.000000e+01)
  %i.ie = fsub nsz <2 x float> %i.id, %i.cj
  %i.if = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.ib, i64 1
  %i.ih = fadd nsz <2 x float> %i.ie, %i.ig
  store <2 x float> %i.ih, ptr %i.bw, align 4, !tbaa !53
  %i.ii = fadd nsz float %i.hz, %i.hw
  store float %i.ii, ptr %i.gc, align 4, !tbaa !141
  br label %.loopexit

.split:                                           ; preds = %bb.h
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ik = getelementptr inbounds nuw i8, ptr %i.by, i64 712
  %i.il = load <2 x float>, ptr %.0.i, align 4, !tbaa !53
  %i.im = fpext <2 x float> %i.il to <2 x double> ; 3 uses
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.io = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ip = insertelement <2 x float> %i.io, float %i.ck, i64 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.ir = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.is = insertelement <2 x float> %i.ir, float %i.bp, i64 1
  %i.it = fpext <2 x float> %i.is to <2 x double> ; 3 uses
  %i.iu = load <2 x float>, ptr %i.ik, align 8, !tbaa !53
  %i.iv = fpext <2 x float> %i.iu to <2 x double>
  %i.iw = fmul nsz <2 x double> %i.iv, splat (double f0x3F91DF46A2529D39)
  %i.ix = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.iw) ; 2 uses
  %i.iy = extractvalue { <2 x double>, <2 x double> } %i.ix, 0 ; 9 uses
  %i.iz = extractelement <2 x double> %i.iy, i64 1 ; 2 uses
  %i.ja = extractvalue { <2 x double>, <2 x double> } %i.ix, 1 ; 9 uses
  %i.jb = extractelement <2 x double> %i.iy, i64 0 ; 3 uses
  %i.jc = extractelement <2 x double> %i.ja, i64 1 ; 2 uses
  %i.jd = fmul nsz double %i.jc, 0.000000e+00     ; 2 uses
  %i.je = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jf = shufflevector <2 x double> %i.iy, <2 x double> %i.ja, <2 x i32> <i32 1, i32 2>
  %i.jg = shufflevector <2 x double> %i.ja, <2 x double> %i.iy, <2 x i32> <i32 1, i32 2>
  %i.jh = extractelement <2 x double> %i.ja, i64 0 ; 2 uses
  %i.ji = shufflevector <2 x double> %i.im, <2 x double> %i.it, <2 x i32> <i32 1, i32 3>
  %i.jj = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.jk = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jl = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ji, <2 x double> %i.je, <2 x double> %i.jk)
  %i.jm = fptrunc <2 x double> %i.jl to <2 x float>
  %i.jn = fpext <2 x float> %i.jm to <2 x double> ; 3 uses
  %i.jo = shufflevector <2 x double> <double -0.000000e+00, double poison>, <2 x double> %i.jn, <2 x i32> <i32 0, i32 2>
  %i.jp = fmul nsz <2 x double> %i.jf, %i.jo      ; 2 uses
  %i.jq = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.in, <2 x double> %i.jg, <2 x double> %i.jp)
  %i.jr = fptrunc <2 x double> %i.jq to <2 x float> ; 2 uses
  store <2 x float> %i.jr, ptr %.sroa.4143.0..0.i.sroa_idx, align 4, !tbaa !53
  %i.js = fneg nsz <2 x double> %i.jn             ; 2 uses
  %i.jt = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ju = shufflevector <2 x double> %i.js, <2 x double> <double -0.000000e+00, double poison>, <2 x i32> <i32 1, i32 2>
  %i.jv = fmul nsz <2 x double> %i.iy, %i.ju
  %i.jw = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.it, <2 x double> %i.ja, <2 x double> %i.jv)
  %i.jx = fptrunc <2 x double> %i.jw to <2 x float> ; 2 uses
  %i.jy = shufflevector <2 x double> %i.iy, <2 x double> %i.ja, <2 x i32> <i32 0, i32 2>
  %i.jz = shufflevector <2 x double> %i.js, <2 x double> %i.jn, <2 x i32> <i32 0, i32 3>
  %i.ka = fmul nsz <2 x double> %i.jy, %i.jz
  %i.kb = shufflevector <2 x double> %i.im, <2 x double> %i.it, <2 x i32> <i32 0, i32 2>
  %i.kc = shufflevector <2 x double> %i.ja, <2 x double> %i.iy, <2 x i32> <i32 0, i32 2>
  %i.kd = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> %i.kc, <2 x double> %i.ka)
  %i.ke = fptrunc <2 x double> %i.kd to <2 x float> ; 3 uses
  %i.kf = extractelement <2 x float> %i.ke, i64 0
  store float %i.kf, ptr %.0.i, align 4, !tbaa !192
  %i.kg = load <2 x float>, ptr %i.cd, align 8
  %i.kh = load <2 x float>, ptr %i.ij, align 4, !tbaa !53
  %i.ki = fmul nsz <2 x float> %i.kh, splat (float 1.000000e+01)
  %i.kj = fsub nsz <2 x float> %i.ki, %i.ip
  %i.kk = fadd nsz <2 x float> %i.kj, %i.jr
  store <2 x float> %i.kk, ptr %.sroa.4143.0..0.i.sroa_idx, align 4, !tbaa !53
  store <2 x float> %i.jx, ptr %i.bs, align 4, !tbaa !53
  %i.kl = extractelement <2 x float> %i.ke, i64 1
  store float %i.kl, ptr %i.iq, align 4, !tbaa !141
  %i.km = load float, ptr %i.ce, align 8, !tbaa !141
  %i.kn = insertelement <2 x float> %i.kg, float %i.km, i64 1
  %i.ko = fmul nsz <2 x float> %i.kn, splat (float 1.000000e+01)
  %i.kp = insertelement <2 x float> %i.cj, float %i.ck, i64 1
  %i.kq = fsub nsz <2 x float> %i.ko, %i.kp
  %i.kr = fadd nsz <2 x float> %i.kq, %i.ke       ; 2 uses
  %i.ks = extractelement <2 x float> %i.kr, i64 0
  store float %i.ks, ptr %.0.i, align 4, !tbaa !192
  %i.kt = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.ku = fmul nsz <2 x float> %i.kt, splat (float 1.000000e+01)
  %i.kv = fsub nsz <2 x float> %i.ku, %i.cj
  %i.kw = fadd nsz <2 x float> %i.kv, %i.jx
  store <2 x float> %i.kw, ptr %i.bs, align 4, !tbaa !53
  %i.kx = extractelement <2 x float> %i.kr, i64 1
  store float %i.kx, ptr %i.iq, align 4, !tbaa !141
  %i.ky = getelementptr inbounds nuw i8, ptr %.0.i, i64 88 ; 2 uses
  %i.kz = load float, ptr %i.bt, align 4, !tbaa !192
  %i.la = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.lb = insertelement <2 x float> %i.la, float %i.bn, i64 1
  %i.lc = fpext <2 x float> %i.lb to <2 x double> ; 3 uses
  %i.ld = extractelement <2 x double> %i.lc, i64 1
  %i.le = call nsz double @llvm.fmuladd.f64(double %i.ld, double %i.iz, double %i.jd)
  %i.lf = fptrunc nsz double %i.le to float
  %i.lg = fpext nsz float %i.lf to double         ; 2 uses
  %i.lh = fneg nsz double %i.lg
  %i.li = fmul nsz double %i.jb, %i.lh
  %i.lj = insertelement <2 x double> %i.jt, double %i.li, i64 0
  %i.lk = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lc, <2 x double> %i.ja, <2 x double> %i.lj)
  %i.ll = fptrunc <2 x double> %i.lk to <2 x float> ; 2 uses
  %i.lm = fmul nsz double %i.jh, %i.lg
  %i.ln = extractelement <2 x double> %i.lc, i64 0
  %i.lo = call nsz double @llvm.fmuladd.f64(double %i.ln, double %i.jb, double %i.lm)
  %i.lp = fptrunc nsz double %i.lo to float       ; 2 uses
  store <2 x float> %i.ll, ptr %i.bt, align 4, !tbaa !53
  store float %i.lp, ptr %i.ky, align 4, !tbaa !141
  %i.lq = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.lr = fmul nsz <2 x float> %i.lq, splat (float 1.000000e+01)
  %i.ls = load float, ptr %i.ce, align 8, !tbaa !141
  %i.lt = fmul nsz float %i.ls, 1.000000e+01
  %i.lu = fsub nsz <2 x float> %i.lr, %i.cj
  %i.lv = fsub nsz float %i.lt, %i.ck
  %i.lw = fadd nsz <2 x float> %i.lu, %i.ll
  store <2 x float> %i.lw, ptr %i.bt, align 4, !tbaa !53
  %i.lx = fadd nsz float %i.lv, %i.lp
  store float %i.lx, ptr %i.ky, align 4, !tbaa !141
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i, i64 128 ; 3 uses
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !141
  %i.ma = fpext nsz float %i.lz to double         ; 2 uses
  %i.mb = fmul nsz double %i.jc, %i.ma
  %i.mc = load <2 x float>, ptr %i.bw, align 4, !tbaa !53
  %i.md = fpext <2 x float> %i.mc to <2 x double> ; 3 uses
  %i.me = extractelement <2 x double> %i.md, i64 1
  %i.mf = call nsz double @llvm.fmuladd.f64(double %i.me, double %i.iz, double %i.mb)
  %i.mg = fptrunc nsz double %i.mf to float
  %i.mh = fpext nsz float %i.mg to double         ; 2 uses
  %i.mi = insertelement <2 x double> poison, double %i.mh, i64 0
  %i.mj = insertelement <2 x double> %i.mi, double %i.ma, i64 1
  %i.mk = fneg nsz <2 x double> %i.mj
  %i.ml = fmul nsz <2 x double> %i.iy, %i.mk
  %i.mm = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> %i.ja, <2 x double> %i.ml)
  %i.mn = fptrunc <2 x double> %i.mm to <2 x float> ; 2 uses
  %i.mo = fmul nsz double %i.jh, %i.mh
  %i.mp = extractelement <2 x double> %i.md, i64 0
  %i.mq = call nsz double @llvm.fmuladd.f64(double %i.mp, double %i.jb, double %i.mo)
  %i.mr = fptrunc nsz double %i.mq to float       ; 2 uses
  store <2 x float> %i.mn, ptr %i.bw, align 4, !tbaa !53
  store float %i.mr, ptr %i.ly, align 4, !tbaa !141
  %i.ms = load <2 x float>, ptr %i.cd, align 8, !tbaa !53
  %i.mt = fmul nsz <2 x float> %i.ms, splat (float 1.000000e+01)
  %i.mu = load float, ptr %i.ce, align 8, !tbaa !141
  %i.mv = fmul nsz float %i.mu, 1.000000e+01
  %i.mw = fsub nsz <2 x float> %i.mt, %i.cj
  %i.mx = fsub nsz float %i.mv, %i.ck
  %i.my = fadd nsz <2 x float> %i.mw, %i.mn
  store <2 x float> %i.my, ptr %i.bw, align 4, !tbaa !53
  %i.mz = fadd nsz float %i.mx, %i.mr
  store float %i.mz, ptr %i.ly, align 4, !tbaa !141
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
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.b = load i16, ptr %i.a, align 4, !tbaa !138
  %.not = icmp ult i16 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i16 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 262
  store i8 1, ptr %i.d, align 2, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !106  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !inline_history !1 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(28) %i.j), !inline_history !1
  %.idx = mul nuw nsw i64 %i.c, 160
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @_ZNK18ParticleParamTypes16TweenedParameterINS_15VectorParameterIN4core8vector2dIfEELm2EEEE5blendEf(ptr dead_on_unwind writable sret(%"struct.ParticleParamTypes::VectorParameter") align 8, ptr noundef nonnull align 8 dereferenceable(40), float noundef) local_unnamed_addr #6

declare <2 x float> @_ZNK19TileAnimationParams16getTextureCoordsEN4core8vector2dIjEEi(ptr noundef nonnull align 4 dereferenceable(16), i64, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15ParticleSpawnerC2EP11LocalPlayerRK25ParticleSpawnerParameterstOSt6vectorI21ClientParticleTextureSaIS6_EEP15ParticleManager(ptr noundef nonnull align 8 dereferenceable(1482) initializes((0, 20), (24, 32)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1400) %2, i16 noundef zeroext %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i:
  store i64 0, ptr %0, align 8, !tbaa !224
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %5, ptr %i.a, align 8, !tbaa !225
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !226
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @_ZN25ParticleSpawnerParametersC2ERKS_(ptr noundef nonnull align 8 dereferenceable(1400) %i.d, ptr noundef nonnull align 8 dereferenceable(1400) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 2 uses
  %i.f = load <2 x ptr>, ptr %4, align 8, !tbaa !102
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !228
  store ptr %i.i, ptr %i.g, align 8, !tbaa !228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i16 %3, ptr %i.k, align 8, !tbaa !229
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 202 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !230
  %i.n = zext i16 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 2 uses
  %i.r = shl nuw nsw i64 %i.o, 2
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #31
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc20:                                         ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !231  ; 4 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !232
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %bb.a, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

bb.a:                                             ; preds = %.noexc20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 4 %i.t, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i: ; preds = %bb.a, %.noexc20
  %.not.i8.i = icmp eq ptr %i.t, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !233
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ab) #28
  br label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZNSt6vectorIfSaIfEE7reserveEm.exit:              ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i, %bb.b
  store ptr %i.s, ptr %i.j, align 8, !tbaa !231
  store ptr %i.s, ptr %i.q, align 8, !tbaa !232
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.o
  store ptr %i.ac, ptr %i.p, align 8, !tbaa !233
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.af = load float, ptr %i.ad, align 4, !tbaa !234 ; 2 uses
  %i.ag = fcmp nsz une float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.k, label %bb.l

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %.01230 = phi i16 [ 0, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %i.bg, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ]
  %i.ah = invoke noundef float @_Z12myrand_floatv()
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.ai = load float, ptr %i.ad, align 4, !tbaa !234
  %i.aj = fmul nsz float %i.ah, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !232 ; 4 uses
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !233
  %.not.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store float %i.aj, ptr %i.ak, align 4, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store ptr %i.am, ptr %i.ae, align 8, !tbaa !232
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !231 ; 4 uses
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 5 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775804
  br i1 %i.ar, label %bb.h, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #29
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.as = ashr exact i64 %i.aq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 2305843009213693951)
  %i.aw = select i1 %i.au, i64 2305843009213693951, i64 %i.av ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #31
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc22:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store float %i.aj, ptr %i.az, align 4, !tbaa !53
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.i, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc22
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 4 %i.an, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
end_hunk_0
begin_hunk_1_@_ZN15ParticleSpawner13spawnParticleEP17ClientEnvironmentfPKN4core8CMatrix4IfEE:bb.a
  %.sroa.01.0.copyload.i262 = load <2 x float>, ptr %i.eg, align 8, !tbaa !53
  %.sroa.22.0..sroa_idx.i263 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %.sroa.22.0.copyload.i264 = load float, ptr %.sroa.22.0..sroa_idx.i263, align 8, !tbaa !53
  %i.eh = getelementptr inbounds nuw i8, ptr %20, i64 196 ; 3 uses
  store <2 x float> %.sroa.01.0.copyload.i262, ptr %i.eh, align 4, !tbaa !53
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 204 ; 2 uses
  store float %.sroa.22.0.copyload.i264, ptr %.sroa.5113.0..sroa_idx, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  invoke void @_ZNK18ParticleParamTypes15RangedParameterINS_15VectorParameterIN4core8vector3dIfEELm3EEEE10pickWithinEv(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::VectorParameter.7") align 8 %23, ptr noundef nonnull align 8 dereferenceable(52) %8)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ei = getelementptr inbounds nuw i8, ptr %23, i64 8
  %.sroa.01.0.copyload.i267 = load <2 x float>, ptr %i.ei, align 8, !tbaa !53
  %.sroa.22.0..sroa_idx.i268 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %.sroa.22.0.copyload.i269 = load float, ptr %.sroa.22.0..sroa_idx.i268, align 8, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %20, i64 208
  store <2 x float> %.sroa.01.0.copyload.i267, ptr %i.ej, align 8, !tbaa !53
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 216
  store float %.sroa.22.0.copyload.i269, ptr %.sroa.5107.0..sroa_idx, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dy, ptr noundef nonnull align 8 dereferenceable(12) %i.ek, i64 12, i1 false), !tbaa.struct !96
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.eb, ptr noundef nonnull align 8 dereferenceable(12) %i.el, i64 12, i1 false), !tbaa.struct !96
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.en = load float, ptr %i.em, align 8, !tbaa !98
  store float %i.en, ptr %i.ed, align 8, !tbaa !98
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !49
  store float %i.ep, ptr %i.dt, align 8, !tbaa !49
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.er = load float, ptr %i.eq, align 8, !tbaa !49
  store float %i.er, ptr %i.dv, align 8, !tbaa !49
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.et = load float, ptr %i.es, align 8, !tbaa !97
  store float %i.et, ptr %i.dw, align 8, !tbaa !97
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ew = load <2 x float>, ptr %3, align 4, !tbaa !53 ; 2 uses
  %i.ex = load <2 x float>, ptr %i.eu, align 4, !tbaa !53 ; 2 uses
  %i.ey = load <2 x float>, ptr %i.ev, align 4, !tbaa !53 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !53
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !53
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !53
  %i.ff = load <2 x float>, ptr %i.ef, align 8, !tbaa !53 ; 4 uses
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fh = fmul nsz <2 x float> %i.fg, %i.ex
  %i.fi = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.ew, <2 x float> %i.fh)
  %i.fk = load <4 x float>, ptr %.sroa.5121.0..sroa_idx, align 8, !tbaa !141 ; 3 uses
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.fm = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fn = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.ey, <2 x float> %i.fj)
  store <2 x float> %i.fn, ptr %i.ef, align 8, !tbaa !53
  %i.fo = load <2 x float>, ptr %i.eh, align 4, !tbaa !53 ; 4 uses
  %i.fp = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = shufflevector <2 x float> %i.ff, <2 x float> %i.fo, <2 x i32> <i32 1, i32 3>
  %i.fs = fmul nsz <2 x float> %i.fq, %i.fr
  %i.ft = shufflevector <2 x float> %i.ff, <2 x float> %i.fo, <2 x i32> <i32 0, i32 2>
  %i.fu = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fv, <2 x float> %i.fs)
  %i.fx = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.fy, <2 x float> %i.fw) ; 2 uses
  %i.ga = extractelement <2 x float> %i.fz, i64 0
  store float %i.ga, ptr %.sroa.5121.0..sroa_idx, align 8, !tbaa !53
  %i.gb = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gc = fmul nsz <2 x float> %i.ex, %i.gb
  %i.gd = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.ew, <2 x float> %i.gc)
  %i.gf = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.gg = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.ey, <2 x float> %i.ge)
  store <2 x float> %i.gg, ptr %i.eh, align 4, !tbaa !53
  %i.gh = extractelement <2 x float> %i.fz, i64 1
  store float %i.gh, ptr %.sroa.5113.0..sroa_idx, align 4, !tbaa !53
  br label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.bz

bb.l:                                             ; preds = %bb.g
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.bz

bb.m:                                             ; preds = %bb.h
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.bz

bb.n:                                             ; preds = %bb.j, %bb.i
  %.not203 = icmp eq ptr %.0.i, null
  br i1 %.not203, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gl = invoke { <2 x float>, float } @_ZNK10GenericCAO11getPositionEv(ptr noundef nonnull align 8 dereferenceable(1076) %.0.i)
          to label %bb.p unwind label %bb.aa      ; 2 uses

bb.p:                                             ; preds = %bb.o
  %.fca.0.extract86 = extractvalue { <2 x float>, float } %i.gl, 0
  %.fca.1.extract87 = extractvalue { <2 x float>, float } %i.gl, 1
  %i.gm = fdiv nsz float %.fca.1.extract87, 1.000000e+01
  %i.gn = fdiv nsz <2 x float> %.fca.0.extract86, splat (float 1.000000e+01)
  %i.go = fadd nsz <2 x float> %.sroa.01.0.copyload.i, %i.gn
  %i.gp = fadd nsz float %.sroa.22.0.copyload.i, %i.gm
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.0535.0 = phi nsz <2 x float> [ %.sroa.01.0.copyload.i, %bb.n ], [ %i.go, %bb.p ] ; 5 uses
  %.sroa.20.0 = phi nsz float [ %.sroa.22.0.copyload.i, %bb.n ], [ %i.gp, %bb.p ] ; 5 uses
  %.not204 = icmp eq ptr %.0.i238, null
  br i1 %.not204, label %_ZNK10GenericCAO23getAbsolutePosRotMatrixEv.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.i238, i64 496
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !322 ; 3 uses
  %.not.i = icmp eq ptr %i.gr, null
  br i1 %.not.i, label %_ZNK10GenericCAO23getAbsolutePosRotMatrixEv.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !48
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 80
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = invoke noundef nonnull align 4 dereferenceable(64) ptr %i.gu(ptr noundef nonnull align 8 dereferenceable(218) %i.gr)
          to label %bb.t unwind label %bb.aa, !inline_history !4 ; 6 uses

bb.t:                                             ; preds = %bb.s
  %.sroa.0525.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i233, i64 0
  %.sroa.0525.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i233, i64 1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.gy = load <2 x float>, ptr %i.gv, align 4, !tbaa !53
  %i.gz = load <2 x float>, ptr %i.gw, align 4, !tbaa !53
  %i.ha = shufflevector <2 x float> %.sroa.01.0.copyload.i233, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hb = fmul nsz <2 x float> %i.ha, %i.gz
  %i.hc = shufflevector <2 x float> %.sroa.01.0.copyload.i233, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hd = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.gy, <2 x float> %i.hb)
  %i.he = load <2 x float>, ptr %i.gx, align 4, !tbaa !53
  %i.hf = insertelement <2 x float> poison, float %.sroa.22.0.copyload.i235, i64 0
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.he, <2 x float> %i.hd)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !53
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !53
  %i.hm = fmul nsz float %.sroa.0525.4.vec.extract, %i.hl
  %i.hn = call nsz float @llvm.fmuladd.f32(float %.sroa.0525.0.vec.extract, float %i.hj, float %i.hm)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !53
  %i.hq = call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i235, float %i.hp, float %i.hn)
  br label %_ZNK10GenericCAO23getAbsolutePosRotMatrixEv.exit.thread

_ZNK10GenericCAO23getAbsolutePosRotMatrixEv.exit.thread: ; preds = %bb.r, %bb.t, %bb.q
  %.sroa.0525.0 = phi nsz <2 x float> [ %.sroa.01.0.copyload.i233, %bb.q ], [ %i.hh, %bb.t ], [ %.sroa.01.0.copyload.i233, %bb.r ] ; 10 uses
  %.sroa.11534.0 = phi nsz float [ %.sroa.22.0.copyload.i235, %bb.q ], [ %i.hq, %bb.t ], [ %.sroa.22.0.copyload.i235, %bb.r ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  invoke void @_ZNK18ParticleParamTypes15RangedParameterINS_9ParameterIfLm1EEEE10pickWithinEv(ptr dead_on_unwind nonnull writable sret(%"struct.ParticleParamTypes::Parameter") align 8 %24, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %_ZNK10GenericCAO23getAbsolutePosRotMatrixEv.exit.thread
  %i.hr = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.hs = load float, ptr %i.hr, align 8, !tbaa !49
  store float %i.hs, ptr %i.dr, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  %.sroa.0479.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i252, i64 0 ; 3 uses
  %i.ht = fcmp nsz une float %.sroa.0479.0.vec.extract, 0.000000e+00
  %.sroa.0479.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i252, i64 1 ; 3 uses
  %i.hu = fcmp nsz une float %.sroa.0479.4.vec.extract, 0.000000e+00
  %or.cond570.not574 = select i1 %i.ht, i1 true, i1 %i.hu
  %i.hv = fcmp nsz une float %.sroa.22.0.copyload.i254, 0.000000e+00
  %or.cond571 = select i1 %or.cond570.not574, i1 true, i1 %i.hv
  br i1 %or.cond571, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.ab

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.u
  %i.hw = fmul nsz float %.sroa.0479.4.vec.extract, %.sroa.0479.4.vec.extract
  %i.hx = call nsz float @llvm.fmuladd.f32(float %.sroa.0479.0.vec.extract, float %.sroa.0479.0.vec.extract, float %i.hw)
  %i.hy = call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i254, float %.sroa.22.0.copyload.i254, float %i.hx) ; 3 uses
  %i.hz = call nsz noundef float @llvm.sqrt.f32(float %i.hy)
  %i.ia = fcmp nsz oeq float %i.hy, 0.000000e+00
  br i1 %i.ia, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread
  %i.ib = fpext nsz float %i.hy to double
  %i.ic = call nsz double @llvm.sqrt.f64(double %i.ib)
  %i.id = fdiv nsz double 1.000000e+00, %i.ic     ; 2 uses
  %i.ie = fpext <2 x float> %.sroa.01.0.copyload.i252 to <2 x double>
  %i.if = insertelement <2 x double> poison, double %i.id, i64 0
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = fmul nsz <2 x double> %i.ig, %i.ie
  %i.ii = fptrunc <2 x double> %i.ih to <2 x float>
  %i.ij = fpext nsz float %.sroa.22.0.copyload.i254 to double
  %i.ik = fmul nsz double %i.id, %i.ij
  %i.il = fptrunc nsz double %i.ik to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.v, %_ZNK4core8vector3dIfEneERKS1_.exit.thread
  %.sroa.10470.0 = phi nsz float [ %.sroa.22.0.copyload.i254, %_ZNK4core8vector3dIfEneERKS1_.exit.thread ], [ %i.il, %bb.v ]
  %i.im = phi <2 x float> [ %.sroa.01.0.copyload.i252, %_ZNK4core8vector3dIfEneERKS1_.exit.thread ], [ %i.ii, %bb.v ]
  %i.in = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 3.600000e+02)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.io = fpext nsz float %i.in to double
  %i.ip = fmul nsz double %i.io, f0x3F91DF46A2529D39
  %sincos.i = call nsz { double, double } @llvm.sincos.f64(double %i.ip) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 2 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1 ; 2 uses
  %i.iq = fpext nsz float %i.hz to double         ; 2 uses
  %i.ir = fmul nsz double %sin.i, -0.000000e+00
  %i.is = call nsz double @llvm.fmuladd.f64(double %i.iq, double %cos.i, double %i.ir)
  %i.it = fptrunc nsz double %i.is to float
  %i.iu = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 3.600000e+02)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.iv = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 3.600000e+02)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.iw = fpext nsz float %i.iu to double
  %i.ix = fmul nsz double %i.iw, f0x3F91DF46A2529D39
  %sincos.i289 = call nsz { double, double } @llvm.sincos.f64(double %i.ix) ; 2 uses
  %sin.i290 = extractvalue { double, double } %sincos.i289, 0 ; 2 uses
  %cos.i291 = extractvalue { double, double } %sincos.i289, 1 ; 2 uses
  %i.iy = fmul nsz double %cos.i, 0.000000e+00
  %i.iz = call nsz double @llvm.fmuladd.f64(double %i.iq, double %sin.i, double %i.iy)
  %i.ja = fptrunc nsz double %i.iz to float
  %i.jb = fpext nsz float %i.ja to double         ; 2 uses
  %i.jc = fmul nsz double %cos.i291, %i.jb
  %i.jd = call nsz double @llvm.fmuladd.f64(double %sin.i290, double 0.000000e+00, double %i.jc)
  %i.je = fptrunc nsz double %i.jd to float
  %i.jf = fneg nsz double %i.jb
  %i.jg = fmul nsz double %sin.i290, %i.jf
  %i.jh = call nsz double @llvm.fmuladd.f64(double %cos.i291, double 0.000000e+00, double %i.jg)
  %i.ji = fptrunc nsz double %i.jh to float
  %i.jj = fpext nsz float %i.iv to double
  %i.jk = fmul nsz double %i.jj, f0x3F91DF46A2529D39
  %sincos.i292 = call nsz { double, double } @llvm.sincos.f64(double %i.jk) ; 2 uses
  %sin.i293 = extractvalue { double, double } %sincos.i292, 0
  %cos.i294 = extractvalue { double, double } %sincos.i292, 1
  %i.jl = fpext nsz float %i.it to double
  %i.jm = fpext nsz float %i.ji to double         ; 2 uses
  %i.jn = fneg nsz double %i.jm
  %i.jo = fmul nsz float %.sroa.10470.0, %i.je
  %i.jp = insertelement <2 x double> poison, double %sin.i293, i64 0
  %i.jq = insertelement <2 x double> %i.jp, double %cos.i294, i64 1 ; 2 uses
  %i.jr = insertelement <2 x double> poison, double %i.jn, i64 0
  %i.js = insertelement <2 x double> %i.jr, double %i.jm, i64 1
  %i.jt = fmul nsz <2 x double> %i.jq, %i.js
  %i.ju = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.jv = shufflevector <2 x double> %i.ju, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jw = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jx = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jv, <2 x double> %i.jw, <2 x double> %i.jt)
  %i.jy = fptrunc <2 x double> %i.jx to <2 x float>
  %i.jz = fmul nsz <2 x float> %i.im, %i.jy
  %i.ka = load <2 x float>, ptr %i.do, align 4, !tbaa !53
  %i.kb = fadd nsz <2 x float> %i.jz, %i.ka
  store <2 x float> %i.kb, ptr %i.do, align 4, !tbaa !53
  %i.kc = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !141
  %i.kd = fadd nsz float %i.jo, %i.kc
  store float %i.kd, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !141
  br label %bb.ab

bb.z:                                             ; preds = %_ZNK10GenericCAO23getAbsolutePosRotMatrixEv.exit.thread
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %bb.bz

bb.aa:                                            ; preds = %bb.s, %bb.au, %bb.o, %bb.x, %bb.w, %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ab:                                            ; preds = %bb.u, %bb.y
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.kh = load i8, ptr %i.kg, align 8, !tbaa !493 ; 2 uses
  %.not211 = icmp eq i8 %i.kh, 0
  br i1 %.not211, label %bb.au, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ki = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.kj = load float, ptr %i.ki, align 8, !tbaa !49 ; 3 uses
  %i.kk = fcmp nsz une float %i.kj, 0.000000e+00
  br i1 %i.kk, label %bb.ad, label %bb.au

bb.ad:                                            ; preds = %bb.ac
  switch i8 %i.kh, label %bb.ap [
    i8 3, label %bb.ak
    i8 1, label %bb.ae
    i8 2, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.kl = load <2 x float>, ptr %i.do, align 4, !tbaa !53
  %i.km = fsub nsz <2 x float> %i.kl, %.sroa.0535.0 ; 5 uses
  %i.kn = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !141
  %i.ko = fsub nsz float %i.kn, %.sroa.20.0       ; 4 uses
  %foldExtExtBinop609 = fmul nsz <2 x float> %i.km, %i.km
  %i.kp = extractelement <2 x float> %foldExtExtBinop609, i64 1
  %i.kq = extractelement <2 x float> %i.km, i64 0 ; 2 uses
  %i.kr = call nsz float @llvm.fmuladd.f32(float %i.kq, float %i.kq, float %i.kp)
  %i.ks = call nsz float @llvm.fmuladd.f32(float %i.ko, float %i.ko, float %i.kr) ; 3 uses
  %i.kt = call nsz noundef float @llvm.sqrt.f32(float %i.ks) ; 2 uses
  %i.ku = fcmp nsz oeq float %i.ks, 0.000000e+00
  br i1 %i.ku, label %bb.ap, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kv = fpext nsz float %i.ks to double
  %i.kw = call nsz double @llvm.sqrt.f64(double %i.kv)
  %i.kx = fdiv nsz double 1.000000e+00, %i.kw     ; 2 uses
  %i.ky = fpext <2 x float> %i.km to <2 x double>
  %i.kz = insertelement <2 x double> poison, double %i.kx, i64 0
  %i.la = shufflevector <2 x double> %i.kz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lb = fmul nsz <2 x double> %i.la, %i.ky
  %i.lc = fptrunc <2 x double> %i.lb to <2 x float>
  %i.ld = fpext nsz float %i.ko to double
  %i.le = fmul nsz double %i.kx, %i.ld
  %i.lf = fptrunc nsz double %i.le to float
  br label %bb.ap

bb.ag:                                            ; preds = %bb.ad
  %.sroa.0525.0.vec.extract529 = extractelement <2 x float> %.sroa.0525.0, i64 0 ; 2 uses
  %foldExtExtBinop611 = fmul nsz <2 x float> %.sroa.0525.0, %.sroa.0525.0
  %i.lg = extractelement <2 x float> %foldExtExtBinop611, i64 1
  %i.lh = call nsz float @llvm.fmuladd.f32(float %.sroa.0525.0.vec.extract529, float %.sroa.0525.0.vec.extract529, float %i.lg)
  %i.li = call nsz float @llvm.fmuladd.f32(float %.sroa.11534.0, float %.sroa.11534.0, float %i.lh) ; 2 uses
  %i.lj = fcmp nsz oeq float %i.li, 0.000000e+00
  br i1 %i.lj, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lk = fpext nsz float %i.li to double
  %i.ll = call nsz double @llvm.sqrt.f64(double %i.lk)
  %i.lm = fdiv nsz double 1.000000e+00, %i.ll     ; 2 uses
  %i.ln = fpext <2 x float> %.sroa.0525.0 to <2 x double>
  %i.lo = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.lp = shufflevector <2 x double> %i.lo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lq = fmul nsz <2 x double> %i.lp, %i.ln
  %i.lr = fptrunc <2 x double> %i.lq to <2 x float>
  %i.ls = fpext nsz float %.sroa.11534.0 to double
  %i.lt = fmul nsz double %i.lm, %i.ls
  %i.lu = fptrunc nsz double %i.lt to float
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.sroa.12.0 = phi nsz float [ %.sroa.11534.0, %bb.ag ], [ %i.lu, %bb.ah ] ; 2 uses
  %i.lv = phi <2 x float> [ %.sroa.0525.0, %bb.ag ], [ %i.lr, %bb.ah ] ; 3 uses
  %i.lw = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !141 ; 3 uses
  %i.lx = fsub nsz float %i.lw, %.sroa.20.0
  %i.ly = load <2 x float>, ptr %i.do, align 4, !tbaa !53 ; 4 uses
  %i.lz = fsub nsz <2 x float> %i.ly, %.sroa.0535.0 ; 2 uses
  %foldExtExtBinop613 = fmul nsz <2 x float> %i.lv, %i.lz
  %i.ma = extractelement <2 x float> %foldExtExtBinop613, i64 1
  %i.mb = extractelement <2 x float> %i.lv, i64 0
  %i.mc = extractelement <2 x float> %i.lz, i64 0
  %i.md = call nsz float @llvm.fmuladd.f32(float %i.mc, float %i.mb, float %i.ma)
  %i.me = call nsz noundef float @llvm.fmuladd.f32(float %i.lx, float %.sroa.12.0, float %i.md) ; 2 uses
  %i.mf = insertelement <2 x float> poison, float %i.me, i64 0
  %i.mg = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mh = fmul nsz <2 x float> %i.lv, %i.mg
  %i.mi = fmul nsz float %.sroa.12.0, %i.me
  %i.mj = fadd nsz <2 x float> %.sroa.0535.0, %i.mh ; 3 uses
  %i.mk = fadd nsz float %.sroa.20.0, %i.mi       ; 2 uses
  %foldExtExtBinop615 = fsub nsz <2 x float> %i.ly, %i.mj
  %i.ml = extractelement <2 x float> %foldExtExtBinop615, i64 0 ; 2 uses
  %foldExtExtBinop617 = fsub nsz <2 x float> %i.ly, %i.mj ; 2 uses
  %i.mm = fsub nsz float %i.lw, %i.mk             ; 2 uses
  %foldExtExtBinop619 = fmul nsz <2 x float> %foldExtExtBinop617, %foldExtExtBinop617
  %i.mn = extractelement <2 x float> %foldExtExtBinop619, i64 1
  %i.mo = call nsz float @llvm.fmuladd.f32(float %i.ml, float %i.ml, float %i.mn)
  %i.mp = call nsz float @llvm.fmuladd.f32(float %i.mm, float %i.mm, float %i.mo)
  %i.mq = call nsz noundef float @llvm.sqrt.f32(float %i.mp)
  %i.mr = fsub nsz <2 x float> %i.mj, %i.ly       ; 5 uses
  %i.ms = fsub nsz float %i.mk, %i.lw             ; 4 uses
  %foldExtExtBinop621 = fmul nsz <2 x float> %i.mr, %i.mr
  %i.mt = extractelement <2 x float> %foldExtExtBinop621, i64 1
  %i.mu = extractelement <2 x float> %i.mr, i64 0 ; 2 uses
  %i.mv = call nsz float @llvm.fmuladd.f32(float %i.mu, float %i.mu, float %i.mt)
  %i.mw = call nsz float @llvm.fmuladd.f32(float %i.ms, float %i.ms, float %i.mv) ; 2 uses
  %i.mx = fcmp nsz oeq float %i.mw, 0.000000e+00
  br i1 %i.mx, label %_ZN4core8vector3dIfE9normalizeEv.exit321, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.my = fpext nsz float %i.mw to double
  %i.mz = call nsz double @llvm.sqrt.f64(double %i.my)
  %i.na = fdiv nsz double 1.000000e+00, %i.mz     ; 2 uses
  %i.nb = fpext <2 x float> %i.mr to <2 x double>
  %i.nc = insertelement <2 x double> poison, double %i.na, i64 0
  %i.nd = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ne = fmul nsz <2 x double> %i.nd, %i.nb
  %i.nf = fptrunc <2 x double> %i.ne to <2 x float>
  %i.ng = fpext nsz float %i.ms to double
  %i.nh = fmul nsz double %i.na, %i.ng
  %i.ni = fptrunc nsz double %i.nh to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit321

_ZN4core8vector3dIfE9normalizeEv.exit321:         ; preds = %bb.aj, %bb.ai
  %.sroa.28.3 = phi nsz float [ %i.ms, %bb.ai ], [ %i.ni, %bb.aj ]
  %.sroa.0401.3 = phi nsz <2 x float> [ %i.mr, %bb.ai ], [ %i.nf, %bb.aj ]
  %i.nj = fneg nsz <2 x float> %.sroa.0401.3
  %i.nk = fneg nsz float %.sroa.28.3
  br label %bb.ap

bb.ak:                                            ; preds = %bb.ad
  %.sroa.0525.0.vec.extract527 = extractelement <2 x float> %.sroa.0525.0, i64 0 ; 2 uses
  %foldExtExtBinop623 = fmul nsz <2 x float> %.sroa.0525.0, %.sroa.0525.0
  %i.nl = extractelement <2 x float> %foldExtExtBinop623, i64 1
  %i.nm = call nsz float @llvm.fmuladd.f32(float %.sroa.0525.0.vec.extract527, float %.sroa.0525.0.vec.extract527, float %i.nl)
  %i.nn = call nsz float @llvm.fmuladd.f32(float %.sroa.11534.0, float %.sroa.11534.0, float %i.nm) ; 2 uses
  %i.no = fcmp nsz oeq float %i.nn, 0.000000e+00
  br i1 %i.no, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.np = fpext nsz float %i.nn to double
  %i.nq = call nsz double @llvm.sqrt.f64(double %i.np)
  %i.nr = fdiv nsz double 1.000000e+00, %i.nq     ; 2 uses
  %i.ns = fpext <2 x float> %.sroa.0525.0 to <2 x double>
  %i.nt = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.nu = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nv = fmul nsz <2 x double> %i.nu, %i.ns
  %i.nw = fptrunc <2 x double> %i.nv to <2 x float>
  %i.nx = fpext nsz float %.sroa.11534.0 to double
  %i.ny = fmul nsz double %i.nr, %i.nx
  %i.nz = fptrunc nsz double %i.ny to float
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.sroa.15.0 = phi nsz float [ %.sroa.11534.0, %bb.ak ], [ %i.nz, %bb.al ] ; 4 uses
  %i.oa = phi <2 x float> [ %.sroa.0525.0, %bb.ak ], [ %i.nw, %bb.al ] ; 4 uses
  %.sroa.0535.0.vec.extract546 = extractelement <2 x float> %.sroa.0535.0, i64 0 ; 2 uses
  %i.ob = load float, ptr %i.do, align 4, !tbaa !192 ; 2 uses
  %i.oc = fsub nsz float %.sroa.0535.0.vec.extract546, %i.ob
  %.sroa.0535.4.vec.extract559 = extractelement <2 x float> %.sroa.0535.0, i64 1 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %20, i64 176
  %i.oe = load float, ptr %i.od, align 8, !tbaa !202 ; 2 uses
  %i.of = fsub nsz float %.sroa.0535.4.vec.extract559, %i.oe
  %i.og = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !141 ; 2 uses
  %i.oh = fsub nsz float %.sroa.20.0, %i.og
  %i.oi = extractelement <2 x float> %i.oa, i64 1 ; 2 uses
  %i.oj = fmul nsz float %i.oi, %i.of
  %i.ok = extractelement <2 x float> %i.oa, i64 0 ; 2 uses
  %i.ol = call nsz float @llvm.fmuladd.f32(float %i.ok, float %i.oc, float %i.oj)
  %i.om = call nsz noundef float @llvm.fmuladd.f32(float %.sroa.15.0, float %i.oh, float %i.ol) ; 2 uses
  %i.on = fcmp nsz oeq float %i.om, 0.000000e+00
  br i1 %i.on, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.oo = fcmp nsz olt float %i.om, 0.000000e+00
  %i.op = select i1 %i.oo, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.oq = insertelement <2 x float> poison, float %i.op, i64 0
  %i.or = shufflevector <2 x float> %i.oq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.os = fmul nsz <2 x float> %i.oa, %i.or
  %i.ot = fmul nsz float %.sroa.15.0, %i.op
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.sroa.28.0 = phi nsz float [ %i.ot, %bb.an ], [ %.sroa.15.0, %bb.am ]
  %i.ou = phi <2 x float> [ %i.os, %bb.an ], [ %i.oa, %bb.am ]
  %i.ov = fsub nsz float %i.ob, %.sroa.0535.0.vec.extract546
  %i.ow = fsub nsz float %i.oe, %.sroa.0535.4.vec.extract559
  %i.ox = fsub nsz float %i.og, %.sroa.20.0
  %i.oy = fmul nsz float %i.oi, %i.ow
  %i.oz = call nsz float @llvm.fmuladd.f32(float %i.ok, float %i.ov, float %i.oy)
  %i.pa = call nsz noundef float @llvm.fmuladd.f32(float %.sroa.15.0, float %i.ox, float %i.oz) ; 3 uses
  %i.pb = fcmp nsz olt float %i.pa, 0.000000e+00
  %i.pc = fneg nsz float %i.pa
  %i.pd = select nsz i1 %i.pb, float %i.pc, float %i.pa
  %i.pe = fneg nsz <2 x float> %i.ou
  %i.pf = fneg nsz float %.sroa.28.0
  br label %bb.ap

bb.ap:                                            ; preds = %bb.af, %bb.ae, %bb.ao, %_ZN4core8vector3dIfE9normalizeEv.exit321, %bb.ad
  %.sroa.28.1 = phi nsz float [ 0.000000e+00, %bb.ad ], [ %i.pf, %bb.ao ], [ %i.nk, %_ZN4core8vector3dIfE9normalizeEv.exit321 ], [ %i.ko, %bb.ae ], [ %i.lf, %bb.af ]
  %.sroa.0401.1 = phi nsz <2 x float> [ zeroinitializer, %bb.ad ], [ %i.pe, %bb.ao ], [ %i.nj, %_ZN4core8vector3dIfE9normalizeEv.exit321 ], [ %i.km, %bb.ae ], [ %i.lc, %bb.af ]
  %.0191 = phi nsz float [ 0.000000e+00, %bb.ad ], [ %i.pd, %bb.ao ], [ %i.mq, %_ZN4core8vector3dIfE9normalizeEv.exit321 ], [ %i.kt, %bb.ae ], [ %i.kt, %bb.af ] ; 2 uses
  %.sink.i = call float @llvm.fabs.f32(float %i.kj)
  %i.pg = fmul nsz float %.sink.i, %.0191         ; 4 uses
  %i.ph = insertelement <2 x float> poison, float %i.pg, i64 0
  %i.pi = shufflevector <2 x float> %i.ph, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pj = fmul nsz <2 x float> %.sroa.0401.1, %i.pi ; 2 uses
  %i.pk = fmul nsz float %.sroa.28.1, %i.pg       ; 2 uses
  %i.pl = fcmp nsz ogt float %i.kj, 0.000000e+00
  %i.pm = fcmp nsz ogt float %i.pg, 0.000000e+00
  %or.cond = and i1 %i.pl, %i.pm
  br i1 %or.cond, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.pn = fneg nsz <2 x float> %i.pj              ; 3 uses
  %i.po = fneg nsz float %i.pk                    ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %i.pq = load i8, ptr %i.pp, align 4, !tbaa !494, !range !142, !noundef !143
  %i.pr = trunc nuw i8 %i.pq to i1
  br i1 %i.pr, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ps = fdiv nsz float %.0191, %i.pg            ; 2 uses
  %i.pt = load float, ptr %i.dr, align 8, !tbaa !91
  %i.pu = fcmp nsz olt float %i.ps, %i.pt
  br i1 %i.pu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store float %i.ps, ptr %i.dr, align 8, !tbaa !91
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq, %bb.ap
  %.sroa.10.0 = phi nsz float [ %i.po, %bb.as ], [ %i.po, %bb.ar ], [ %i.po, %bb.aq ], [ %i.pk, %bb.ap ]
  %.sroa.0352.0 = phi nsz <2 x float> [ %i.pn, %bb.as ], [ %i.pn, %bb.ar ], [ %i.pn, %bb.aq ], [ %i.pj, %bb.ap ]
  %i.pv = load <2 x float>, ptr %i.ef, align 8, !tbaa !53
  %i.pw = fadd nsz <2 x float> %.sroa.0352.0, %i.pv
  store <2 x float> %i.pw, ptr %i.ef, align 8, !tbaa !53
  %i.px = load float, ptr %.sroa.5121.0..sroa_idx, align 8, !tbaa !141
  %i.py = fadd nsz float %.sroa.10.0, %i.px
  store float %i.py, ptr %.sroa.5121.0..sroa_idx, align 8, !tbaa !141
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ac, %bb.ab
  %i.pz = load <4 x i8>, ptr %i.a, align 8, !tbaa !198
  store <4 x i8> %i.pz, ptr %20, align 8, !tbaa !198
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.cq, ptr noundef nonnull align 8 dereferenceable(136) %i.qa, i64 20, i1 false)
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qc = load i64, ptr %i.qb, align 8
  store i64 %i.qc, ptr %i.ct, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.qe = load float, ptr %i.qd, align 8, !tbaa !49
  store float %i.qe, ptr %i.cx, align 8, !tbaa !49
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.qg = load float, ptr %i.qf, align 8, !tbaa !49
  store float %i.qg, ptr %i.cz, align 8, !tbaa !49
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qi = load i64, ptr %i.qh, align 8
  store i64 %i.qi, ptr %i.da, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !53
  store i64 %i.qk, ptr %i.de, align 8, !tbaa !53
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !53
  store i64 %i.qm, ptr %i.dg, align 8, !tbaa !53
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %i.qn)
          to label %bb.av unwind label %bb.aa

bb.av:                                            ; preds = %bb.au
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %i.qo, i64 16, i1 false), !tbaa.struct !496
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.qq = load i8, ptr %i.qp, align 8, !tbaa !199
  store i8 %i.qq, ptr %i.dl, align 8, !tbaa !199
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 4            ; 2 uses
  store i32 %i.qs, ptr %i.dn, align 4
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.qu = load i8, ptr %i.qt, align 8, !tbaa !272 ; 2 uses
  store i8 %i.qu, ptr %i.dm, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  %i.qv = getelementptr inbounds nuw i8, ptr %26, i64 4
  store <2 x float> zeroinitializer, ptr %26, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  %i.qw = getelementptr inbounds nuw i8, ptr %27, i64 4
  store <2 x float> zeroinitializer, ptr %27, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  store i32 -1, ptr %28, align 4, !tbaa !139
  %i.qx = and i32 %i.qs, 65535
  %.not223 = icmp eq i32 %i.qx, 127
  br i1 %.not223, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !191
  %i.ra = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.rb = invoke noundef zeroext i1 @_ZN15ParticleManager21getNodeParticleParamsEP6ClientRK7MapNodeR18ParticleParametersPPN5video8ITextureERN4core8vector2dIfEESE_PNS7_6SColorEh(ptr noundef %i.qz, ptr noundef nonnull align 4 dereferenceable(4) %i.qr, ptr noundef nonnull align 8 dereferenceable(328) %20, ptr noundef nonnull %i.ra, ptr noundef nonnull align 4 dereferenceable(8) %26, ptr noundef nonnull align 4 dereferenceable(8) %27, ptr noundef nonnull %28, i8 noundef zeroext %i.qu)
          to label %bb.ax unwind label %bb.bx

bb.ax:                                            ; preds = %bb.aw
  %i.rc = load ptr, ptr %i.ra, align 8
  %.not224 = icmp ne ptr %i.rc, null
  %or.cond232.not = select i1 %i.rb, i1 %.not224, i1 false
  br i1 %or.cond232.not, label %bb.bd, label %_ZNSt10unique_ptrI8ParticleSt14default_deleteIS0_EED2Ev.exit

bb.ay:                                            ; preds = %bb.av
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !323 ; 2 uses
  %i.rg = load ptr, ptr %i.rd, align 8, !tbaa !235 ; 2 uses
  %i.rh = icmp eq ptr %i.rf, %i.rg
  br i1 %i.rh, label %_ZNSt10unique_ptrI8ParticleSt14default_deleteIS0_EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ri = ptrtoint ptr %i.rf to i64
  %i.rj = ptrtoint ptr %i.rg to i64
  %i.rk = sub i64 %i.ri, %i.rj
  %i.rl = sdiv exact i64 %i.rk, 112
  %i.rm = trunc i64 %i.rl to i32
  %i.rn = add i32 %i.rm, -1
  %i.ro = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef 0, i32 noundef %i.rn)
          to label %bb.ba unwind label %bb.bx

bb.ba:                                            ; preds = %bb.az
  %i.rp = sext i32 %i.ro to i64
  %i.rq = load ptr, ptr %i.rd, align 8, !tbaa !235
  %i.rr = getelementptr inbounds nuw [112 x i8], ptr %i.rq, i64 %i.rp ; 4 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 104
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !57 ; 2 uses
  store ptr %i.rr, ptr %25, align 8, !tbaa !94
  %.sroa.5.0..sroa_idx351 = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %i.rt, ptr %.sroa.5.0..sroa_idx351, align 8, !tbaa !95
  store i32 0, ptr %26, align 8, !tbaa !53
  store i32 0, ptr %i.qv, align 4, !tbaa !53
  store i32 1065353216, ptr %27, align 8, !tbaa !53
  store i32 1065353216, ptr %i.qw, align 4, !tbaa !53
  %i.ru = load i8, ptr %i.rr, align 8, !tbaa !41, !range !142, !noundef !143
  %i.rv = trunc nuw i8 %i.ru to i1
  br i1 %i.rv, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rr, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 4 dereferenceable(16) %i.rw, i64 16, i1 false), !tbaa.struct !496
  br label %bb.bc

end_hunk_1
begin_hunk_2_@_ZN15ParticleManager18addParticleSpawnerEmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EE:bb.a
  tail call void @_ZNKSt14default_deleteI15ParticleSpawnerEclEPS0_(ptr noundef nonnull align 8 dereferenceable(8) %.1.i.i, ptr noundef nonnull %i.bt)
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.v, %bb.u, %bb.m, %.noexc18
  %i.bu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #27 ; 0 uses
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

declare void @_ZNK11NodeVisuals8getColorEhPN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(1288), i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15ParticleManager19addDiggingParticlesEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef readonly captures(none) %1, i48 %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef readonly captures(none) %1, i48 %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %5 = alloca %struct.ParticleParameters, align 8 ; 52 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %6 = alloca %"class.core::vector2d", align 8    ; 6 uses
  %7 = alloca %"class.core::vector2d", align 8    ; 6 uses
  %8 = alloca %"class.video::SColor", align 4     ; 6 uses
  %9 = alloca %"class.std::unique_ptr.496", align 8 ; 4 uses
  %10 = alloca %struct.ClientParticleTexRef, align 8 ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i48 %2 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 0, ptr %i.c, align 1, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.d, align 4, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 0, ptr %i.e, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 34
  store i32 0, ptr %5, align 8
  store i16 1, ptr %i.f, align 2, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 36
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes9ParameterIfLm1EEE, i64 16), ptr %i.h, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes9ParameterIfLm1EEE, i64 16), ptr %i.j, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 64
  store float 1.000000e+00, ptr %i.k, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i8 0, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 74
  store i16 1, ptr %i.m, align 2, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 76
  store float 0.000000e+00, ptr %i.n, align 4, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 88
  store <2 x float> splat (float 1.000000e+00), ptr %i.p, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector2dIfEELm2EEE, i64 16), ptr %i.o, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 104
  store <2 x float> splat (float 1.000000e+00), ptr %i.r, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector2dIfEELm2EEE, i64 16), ptr %i.q, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 6 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 0, ptr %i.u, align 8, !tbaa !63
  store i8 0, ptr %i.t, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i8 0, ptr %i.w, align 8, !tbaa !199
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i8 0, ptr %i.x, align 8, !tbaa !272
  store i8 0, ptr %i.v, align 8, !tbaa !193
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 164
  store i16 127, ptr %i.y, align 4, !tbaa !273
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 172 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 220
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.z, i8 0, i64 48, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 224
  store <2 x float> splat (float 1.000000e+00), ptr %i.aa, align 4, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 232
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes9ParameterIfLm1EEE, i64 16), ptr %i.ac, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 240
  store float 0.000000e+00, ptr %i.ad, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 248
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes9ParameterIfLm1EEE, i64 16), ptr %i.ae, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 256
  store float 0.000000e+00, ptr %i.af, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 264
  store float 0.000000e+00, ptr %i.ag, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 280
  store <2 x float> zeroinitializer, ptr %i.ai, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 288
  store float 0.000000e+00, ptr %i.aj, align 8, !tbaa !141
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector3dIfEELm3EEE, i64 16), ptr %i.ah, align 8, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 296
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 304
  store <2 x float> zeroinitializer, ptr %i.al, align 8, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 312
  store float 0.000000e+00, ptr %i.am, align 8, !tbaa !141
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector3dIfEELm3EEE, i64 16), ptr %i.ak, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 320
  store float 0.000000e+00, ptr %i.an, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store i32 0, ptr %8, align 4, !tbaa !139
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !271
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !191
  %i.as = invoke noundef zeroext i1 @_ZN15ParticleManager21getNodeParticleParamsEP6ClientRK7MapNodeR18ParticleParametersPPN5video8ITextureERN4core8vector2dIfEESE_PNS7_6SColorEh(ptr noundef %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(328) %5, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull %8, i8 noundef zeroext 0)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  br i1 %i.as, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.at = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef 0, i32 noundef 100)
          to label %bb.d unwind label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.au = sitofp nsz i32 %i.at to float
  %i.av = fdiv nsz float %i.au, 1.000000e+02
  store float %i.av, ptr %i.ab, align 8, !tbaa !91
  %i.aw = invoke noundef float @_Z12myrand_rangeff(float noundef -1.500000e+00, float noundef 1.500000e+00)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.ax = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 3.000000e+00)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.ay = invoke noundef float @_Z12myrand_rangeff(float noundef -1.500000e+00, float noundef 1.500000e+00)
          to label %bb.g unwind label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 184
  store float %i.aw, ptr %i.az, align 8, !tbaa !53
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 188
  store float %i.ax, ptr %.sroa.515.0..sroa_idx, align 4, !tbaa !53
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 192
  store float %i.ay, ptr %.sroa.616.0..sroa_idx, align 8, !tbaa !53
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !647
  %i.bc = fneg nsz float %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.be = load float, ptr %i.bd, align 8, !tbaa !648
  %i.bf = fmul nsz float %i.be, %i.bc
  %i.bg = fdiv nsz float %i.bf, 1.000000e+01
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 196
  store float 0.000000e+00, ptr %i.bh, align 4, !tbaa !53
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 200
  store float %i.bg, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !53
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 204
  store float 0.000000e+00, ptr %.sroa.513.0..sroa_idx, align 4, !tbaa !53
  %i.bi = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 5.000000e-01)
          to label %bb.h unwind label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.bj = sitofp nsz i16 %.sroa.0.0.extract.trunc to float
  %i.bk = fadd nsz float %i.bi, %i.bj
  %i.bl = fadd nsz float %i.bk, -2.500000e-01
  %i.bm = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 5.000000e-01)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.bn = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 5.000000e-01)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.bo = bitcast i48 %2 to <3 x i16>
  %i.bp = shufflevector <3 x i16> %i.bo, <3 x i16> poison, <2 x i32> <i32 1, i32 2>
  %i.bq = sitofp <2 x i16> %i.bp to <2 x float>
  store float %i.bl, ptr %i.z, align 4, !tbaa !53
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.br = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bn, i64 1
  %i.bt = fadd nsz <2 x float> %i.bs, %i.bq
  %i.bu = fadd nsz <2 x float> %i.bt, splat (float -2.500000e-01)
  store <2 x float> %i.bu, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !95
  store ptr null, ptr %10, align 8, !tbaa !649
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !339
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bx = invoke noalias noundef nonnull dereferenceable(448) ptr @_Znwm(i64 noundef 448) #31
          to label %.noexc unwind label %bb.u     ; 3 uses

.noexc:                                           ; preds = %bb.j
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %6, align 8, !tbaa !53, !noalias !650
  %.sroa.02.0.copyload.i = load <2 x float>, ptr %7, align 8, !tbaa !53, !noalias !650
  %.sroa.0.0.copyload.i = load i32, ptr %8, align 4, !tbaa !93, !noalias !650
  store ptr null, ptr %4, align 8, !tbaa !325, !noalias !650
  invoke void @_ZN8ParticleC2ERK18ParticleParametersRK20ClientParticleTexRefN4core8vector2dIfEES8_N5video6SColorEP15ParticleSpawnerSt10unique_ptrI21ClientParticleTextureSt14default_deleteISE_EE(ptr noundef nonnull align 8 dereferenceable(448) %i.bx, ptr noundef nonnull align 8 dereferenceable(328) %5, ptr noundef nonnull align 8 dereferenceable(16) %10, <2 x float> %.sroa.03.0.copyload.i, <2 x float> %.sroa.02.0.copyload.i, i32 %.sroa.0.0.copyload.i, ptr noundef null, ptr noundef nonnull align 8 %4)
          to label %bb.k unwind label %bb.l, !noalias !650

bb.k:                                             ; preds = %.noexc
  store ptr %i.bx, ptr %9, align 8, !tbaa !247, !alias.scope !650
  %i.by = load ptr, ptr %4, align 8, !tbaa !102, !noalias !650 ; 2 uses
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %bb.m, label %_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i.i

_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i.i: ; preds = %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 112) #28, !noalias !650
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %4, align 8, !tbaa !102, !noalias !650 ; 2 uses
  %.not.i9.i = icmp eq ptr %i.ca, null
  br i1 %.not.i9.i, label %_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit11.i, label %_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i10.i

_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i10.i: ; preds = %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef 112) #28, !noalias !650
  br label %_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit11.i

_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit11.i: ; preds = %_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i10.i, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 448) #28, !noalias !650
  br label %.body

bb.m:                                             ; preds = %_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cb = invoke noundef zeroext i1 @_ZN15ParticleManager11addParticleESt10unique_ptrI8ParticleSt14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 %9)
          to label %bb.n unwind label %bb.v       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.cc = load ptr, ptr %9, align 8, !tbaa !247   ; 7 uses
  %.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI8ParticleSt14default_deleteIS0_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load i16, ptr %i.ce, align 8, !tbaa !103
  invoke void @_ZN14ParticleBuffer7releaseEt(ptr noundef nonnull align 8 dereferenceable(263) %i.cd, i16 noundef zeroext %i.cf)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 440
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !102 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i.i.i.i

_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i.i.i.i: ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 112) #28
  br label %_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteI21ClientParticleTextureEclEPS0_.exit.i.i.i.i, %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !65 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 224 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNKSt14default_deleteI8ParticleEclEPS0_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit.i.i.i
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !64
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #28
  br label %_ZNKSt14default_deleteI8ParticleEclEPS0_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #30
  unreachable

_ZNKSt14default_deleteI8ParticleEclEPS0_.exit.i:  ; preds = %_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 448) #28
  br label %_ZNSt10unique_ptrI8ParticleSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI8ParticleSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.n, %_ZNKSt14default_deleteI8ParticleEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %_ZNSt10unique_ptrI8ParticleSt14default_deleteIS0_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.cq = load ptr, ptr %i.s, align 8, !tbaa !65  ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.t
  br i1 %i.cr, label %_ZN20CommonParticleParamsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  %i.cs = load i64, ptr %i.t, align 8, !tbaa !64
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #28
  br label %_ZN20CommonParticleParamsD2Ev.exit

_ZN20CommonParticleParamsD2Ev.exit:               ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.t:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.a, %bb.c, %bb.i, %bb.h, %bb.g
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.u:                                             ; preds = %bb.j
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.m
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI8ParticleSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #27
  br label %.body

.body:                                            ; preds = %bb.u, %_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit11.i, %bb.v
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.v ], [ %i.cv, %bb.u ], [ %i.bz, %_ZNSt10unique_ptrI21ClientParticleTextureSt14default_deleteIS0_EED2Ev.exit11.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.w

bb.w:                                             ; preds = %.body, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cu, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.cx = load ptr, ptr %i.s, align 8, !tbaa !65  ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.t
  br i1 %i.cy, label %_ZN20CommonParticleParamsD2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9: ; preds = %bb.w
  %i.cz = load i64, ptr %i.t, align 8, !tbaa !64
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #28
  br label %_ZN20CommonParticleParamsD2Ev.exit11

_ZN20CommonParticleParamsD2Ev.exit11:             ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN15ParticleManager22getMaterialForParticleEPK8Particle(ptr dead_on_unwind noalias nofree writable sret(%"class.video::SMaterial") align 8 captures(none) initializes((0, 8), (10, 14), (16, 32), (34, 38), (40, 56), (58, 62), (64, 80), (82, 86), (88, 127)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %0, align 8, !tbaa !330
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, -4096
  store i16 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.h = load i16, ptr %i.g, align 8
  %i.i = and i16 %i.h, -4096
  store i16 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, -4096
  store i16 %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.r = load i16, ptr %i.q, align 8
  %i.s = and i16 %i.r, -4096
  store i16 %i.s, ptr %i.q, align 8
end_hunk_2
begin_hunk_3_@_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE:bb.a
  %i.di = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.db, <2 x float> %i.df)
  %i.dj = load <2 x float>, ptr %i.bf, align 8, !tbaa !53
  %i.dk = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dj, <2 x float> %i.di)
  %i.dn = load <2 x float>, ptr %i.bg, align 8, !tbaa !53
  %i.do = fadd nsz <2 x float> %i.dm, %i.dn
  %i.dp = load float, ptr %i.bh, align 8, !tbaa !53
  %i.dq = load float, ptr %i.bi, align 8, !tbaa !53
  %i.dr = fmul nsz float %i.cz, %i.dq
  %i.ds = tail call nsz float @llvm.fmuladd.f32(float %i.cy, float %i.dp, float %i.dr)
  %i.dt = load float, ptr %i.bj, align 8, !tbaa !53
  %i.du = tail call nsz float @llvm.fmuladd.f32(float %i.da, float %i.dt, float %i.ds)
  %i.dv = load float, ptr %i.bk, align 8, !tbaa !53
  %i.dw = fadd nsz float %i.dv, %i.du
  store <2 x float> %i.do, ptr %i.x, align 4, !tbaa !53
  store float %i.dw, ptr %i.cx, align 4, !tbaa !53
  %i.dx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 44 ; 2 uses
  %i.dz = load float, ptr %i.aa, align 4, !tbaa !192 ; 2 uses
  %i.ea = load float, ptr %i.dx, align 4, !tbaa !202 ; 2 uses
  %i.eb = load float, ptr %i.dy, align 4, !tbaa !141 ; 2 uses
  %i.ec = load <2 x float>, ptr %i.bd, align 8, !tbaa !53
  %i.ed = load <2 x float>, ptr %i.be, align 8, !tbaa !53
  %i.ee = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul nsz <2 x float> %i.ef, %i.ed
  %i.eh = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ec, <2 x float> %i.eg)
  %i.ek = load <2 x float>, ptr %i.bf, align 8, !tbaa !53
  %i.el = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.ek, <2 x float> %i.ej)
  %i.eo = load <2 x float>, ptr %i.bg, align 8, !tbaa !53
  %i.ep = fadd nsz <2 x float> %i.en, %i.eo
  %i.eq = load float, ptr %i.bh, align 8, !tbaa !53
  %i.er = load float, ptr %i.bi, align 8, !tbaa !53
  %i.es = fmul nsz float %i.ea, %i.er
  %i.et = tail call nsz float @llvm.fmuladd.f32(float %i.dz, float %i.eq, float %i.es)
  %i.eu = load float, ptr %i.bj, align 8, !tbaa !53
  %i.ev = tail call nsz float @llvm.fmuladd.f32(float %i.eb, float %i.eu, float %i.et)
  %i.ew = load float, ptr %i.bk, align 8, !tbaa !53
  %i.ex = fadd nsz float %i.ew, %i.ev
  store <2 x float> %i.ep, ptr %i.aa, align 4, !tbaa !53
  store float %i.ex, ptr %i.dy, align 4, !tbaa !53
  %i.ey = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.fa = load float, ptr %i.ad, align 4, !tbaa !192 ; 2 uses
  %i.fb = load float, ptr %i.ey, align 4, !tbaa !202 ; 2 uses
  %i.fc = load float, ptr %i.ez, align 4, !tbaa !141 ; 2 uses
  %i.fd = load <2 x float>, ptr %i.bd, align 8, !tbaa !53
  %i.fe = load <2 x float>, ptr %i.be, align 8, !tbaa !53
  %i.ff = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fmul nsz <2 x float> %i.fg, %i.fe
  %i.fi = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.fd, <2 x float> %i.fh)
  %i.fl = load <2 x float>, ptr %i.bf, align 8, !tbaa !53
  %i.fm = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fl, <2 x float> %i.fk)
  %i.fp = load <2 x float>, ptr %i.bg, align 8, !tbaa !53
  %i.fq = fadd nsz <2 x float> %i.fo, %i.fp
  %i.fr = load float, ptr %i.bh, align 8, !tbaa !53
  %i.fs = load float, ptr %i.bi, align 8, !tbaa !53
  %i.ft = fmul nsz float %i.fb, %i.fs
  %i.fu = tail call nsz float @llvm.fmuladd.f32(float %i.fa, float %i.fr, float %i.ft)
  %i.fv = load float, ptr %i.bj, align 8, !tbaa !53
  %i.fw = tail call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.fv, float %i.fu)
  %i.fx = load float, ptr %i.bk, align 8, !tbaa !53
  %i.fy = fadd nsz float %i.fx, %i.fw
  store <2 x float> %i.fq, ptr %i.ad, align 4, !tbaa !53
  store float %i.fy, ptr %i.ez, align 4, !tbaa !53
  %i.fz = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.o, i64 68 ; 2 uses
  %i.gb = load float, ptr %i.ae, align 4, !tbaa !192 ; 2 uses
  %i.gc = load float, ptr %i.fz, align 4, !tbaa !202 ; 2 uses
  %i.gd = load float, ptr %i.ga, align 4, !tbaa !141 ; 2 uses
  %i.ge = load <2 x float>, ptr %i.bd, align 8, !tbaa !53
  %i.gf = load <2 x float>, ptr %i.be, align 8, !tbaa !53
  %i.gg = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fmul nsz <2 x float> %i.gh, %i.gf
  %i.gj = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.ge, <2 x float> %i.gi)
  %i.gm = load <2 x float>, ptr %i.bf, align 8, !tbaa !53
  %i.gn = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gm, <2 x float> %i.gl)
  %i.gq = load <2 x float>, ptr %i.bg, align 8, !tbaa !53
  %i.gr = fadd nsz <2 x float> %i.gp, %i.gq
  %i.gs = load float, ptr %i.bh, align 8, !tbaa !53
  %i.gt = load float, ptr %i.bi, align 8, !tbaa !53
  %i.gu = fmul nsz float %i.gc, %i.gt
  %i.gv = tail call nsz float @llvm.fmuladd.f32(float %i.gb, float %i.gs, float %i.gu)
  %i.gw = load float, ptr %i.bj, align 8, !tbaa !53
  %i.gx = tail call nsz float @llvm.fmuladd.f32(float %i.gd, float %i.gw, float %i.gv)
  %i.gy = load float, ptr %i.bk, align 8, !tbaa !53
  %i.gz = fadd nsz float %i.gy, %i.gx
  store <2 x float> %i.gr, ptr %i.ae, align 4, !tbaa !53
  store float %i.gz, ptr %i.ga, align 4, !tbaa !53
  %i.ha = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  %i.hb = getelementptr inbounds nuw i8, ptr %i.o, i64 80 ; 2 uses
  %i.hc = load float, ptr %i.af, align 4, !tbaa !192 ; 2 uses
  %i.hd = load float, ptr %i.ha, align 4, !tbaa !202 ; 2 uses
  %i.he = load float, ptr %i.hb, align 4, !tbaa !141 ; 2 uses
  %i.hf = load <2 x float>, ptr %i.bd, align 8, !tbaa !53
  %i.hg = load <2 x float>, ptr %i.be, align 8, !tbaa !53
  %i.hh = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fmul nsz <2 x float> %i.hi, %i.hg
  %i.hk = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %i.hf, <2 x float> %i.hj)
  %i.hn = load <2 x float>, ptr %i.bf, align 8, !tbaa !53
  %i.ho = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.hn, <2 x float> %i.hm)
  %i.hr = load <2 x float>, ptr %i.bg, align 8, !tbaa !53
  %i.hs = fadd nsz <2 x float> %i.hq, %i.hr
  %i.ht = load float, ptr %i.bh, align 8, !tbaa !53
  %i.hu = load float, ptr %i.bi, align 8, !tbaa !53
  %i.hv = fmul nsz float %i.hd, %i.hu
  %i.hw = tail call nsz float @llvm.fmuladd.f32(float %i.hc, float %i.ht, float %i.hv)
  %i.hx = load float, ptr %i.bj, align 8, !tbaa !53
  %i.hy = tail call nsz float @llvm.fmuladd.f32(float %i.he, float %i.hx, float %i.hw)
  %i.hz = load float, ptr %i.bk, align 8, !tbaa !53
  %i.ia = fadd nsz float %i.hz, %i.hy
  store <2 x float> %i.hs, ptr %i.af, align 4, !tbaa !53
  store float %i.ia, ptr %i.hb, align 4, !tbaa !53
  %i.ib = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.ic = getelementptr inbounds nuw i8, ptr %i.o, i64 92 ; 2 uses
  %i.id = load float, ptr %i.az, align 4, !tbaa !192 ; 2 uses
  %i.ie = load float, ptr %i.ib, align 4, !tbaa !202 ; 2 uses
  %i.if = load float, ptr %i.ic, align 4, !tbaa !141 ; 2 uses
  %i.ig = load <2 x float>, ptr %i.bd, align 8, !tbaa !53
  %i.ih = load <2 x float>, ptr %i.be, align 8, !tbaa !53
  %i.ii = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = fmul nsz <2 x float> %i.ij, %i.ih
  %i.il = insertelement <2 x float> poison, float %i.id, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.im, <2 x float> %i.ig, <2 x float> %i.ik)
  %i.io = load <2 x float>, ptr %i.bf, align 8, !tbaa !53
  %i.ip = insertelement <2 x float> poison, float %i.if, i64 0
  %i.iq = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ir = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iq, <2 x float> %i.io, <2 x float> %i.in)
  %i.is = load <2 x float>, ptr %i.bg, align 8, !tbaa !53
  %i.it = fadd nsz <2 x float> %i.ir, %i.is
  %i.iu = load float, ptr %i.bh, align 8, !tbaa !53
  %i.iv = load float, ptr %i.bi, align 8, !tbaa !53
  %i.iw = fmul nsz float %i.ie, %i.iv
  %i.ix = tail call nsz float @llvm.fmuladd.f32(float %i.id, float %i.iu, float %i.iw)
  %i.iy = load float, ptr %i.bj, align 8, !tbaa !53
  %i.iz = tail call nsz float @llvm.fmuladd.f32(float %i.if, float %i.iy, float %i.ix)
  %i.ja = load float, ptr %i.bk, align 8, !tbaa !53
  %i.jb = fadd nsz float %i.ja, %i.iz
  store <2 x float> %i.it, ptr %i.az, align 4, !tbaa !53
  store float %i.jb, ptr %i.ic, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.g = load float, ptr %i.f, align 4, !tbaa !141
  %i.h = fmul nsz float %i.g, f0x3C8EFA35
  %i.i = fpext nsz float %i.h to double
  %sincos39.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.i) ; 2 uses
  %sin40.i.i = extractvalue { double, double } %sincos39.i.i, 0 ; 4 uses
  %cos41.i.i = extractvalue { double, double } %sincos39.i.i, 1 ; 5 uses
  %i.j = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.k = insertelement <2 x double> %i.j, double %sin40.i.i, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = fneg nsz double %sin40.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = fneg nsz double %cos41.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load <2 x float>, ptr %i.e, align 4, !tbaa !53
  %i.t = fmul nsz <2 x float> %i.s, splat (float f0x3C8EFA35)
  %i.u = fpext <2 x float> %i.t to <2 x double>
  %i.v = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.u) ; 2 uses
  %i.w = extractvalue { <2 x double>, <2 x double> } %i.v, 0 ; 5 uses
  %i.x = extractvalue { <2 x double>, <2 x double> } %i.v, 1 ; 5 uses
  %i.y = extractelement <2 x double> %i.x, i64 0  ; 2 uses
  %i.z = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aa = fmul nsz <2 x double> %i.z, %i.k
  %i.ab = fptrunc <2 x double> %i.aa to <2 x float> ; 5 uses
  store <2 x float> %i.ab, ptr %0, align 4, !tbaa !53
  %i.ac = extractelement <2 x double> %i.w, i64 1
  %i.ad = fptrunc nsz double %i.ac to float
  %i.ae = fneg nsz float %i.ad                    ; 4 uses
  store float %i.ae, ptr %i.l, align 4, !tbaa !53
  %i.af = shufflevector <2 x double> %i.w, <2 x double> %i.x, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul nsz <2 x double> %i.af, %i.w       ; 3 uses
  %i.ah = fmul nsz double %i.y, %i.m
  %i.ai = extractelement <2 x double> %i.ag, i64 0
  %i.aj = tail call nsz double @llvm.fmuladd.f64(double %i.ai, double %cos41.i.i, double %i.ah)
  %i.ak = fptrunc nsz double %i.aj to float       ; 3 uses
  store float %i.ak, ptr %i.n, align 4, !tbaa !53
  %i.al = fmul nsz double %i.y, %cos41.i.i
  %i.am = extractelement <2 x double> %i.w, i64 0 ; 2 uses
  %i.an = fmul nsz double %i.am, %sin40.i.i
  %i.ao = extractelement <2 x double> %i.ag, i64 1
  %i.ap = tail call nsz double @llvm.fmuladd.f64(double %i.ao, double %cos41.i.i, double %i.an)
  %i.aq = fptrunc nsz double %i.ap to float       ; 3 uses
  store float %i.aq, ptr %i.p, align 4, !tbaa !53
  %i.ar = fmul nsz double %i.am, %i.q
  %i.as = insertelement <2 x double> poison, double %sin40.i.i, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x double> poison, double %i.al, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.ar, i64 1
  %i.aw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.at, <2 x double> %i.av) ; 2 uses
  %i.ax = shufflevector <2 x double> %i.x, <2 x double> %i.w, <2 x i32> <i32 1, i32 2>
  %i.ay = fmul nsz <2 x double> %i.x, %i.ax       ; 2 uses
  %i.az = shufflevector <2 x double> %i.aw, <2 x double> %i.ay, <2 x i32> <i32 0, i32 3>
  %i.ba = fptrunc <2 x double> %i.az to <2 x float> ; 4 uses
  store <2 x float> %i.ba, ptr %i.d, align 4, !tbaa !53
  %i.bb = shufflevector <2 x double> %i.aw, <2 x double> %i.ay, <2 x i32> <i32 1, i32 2>
  %i.bc = fptrunc <2 x double> %i.bb to <2 x float> ; 4 uses
  store <2 x float> %i.bc, ptr %i.r, align 4, !tbaa !53
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bf = load <2 x float>, ptr %i.bd, align 8, !tbaa !53 ; 5 uses
  store <2 x float> %i.bf, ptr %i.be, align 4, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !141 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store float %i.bh, ptr %i.bi, align 4, !tbaa !53
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !192 ; 4 uses
  %i.bl = fcmp nsz oeq float %i.bk, 1.000000e+00
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !202 ; 2 uses
  %i.bo = fcmp nsz oeq float %i.bn, 1.000000e+00
  %or.cond = select i1 %i.bl, i1 %i.bo, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !141
  %i.br = fcmp nsz une float %i.bq, 1.000000e+00
  br i1 %i.br, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.bs = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.bn, %bb.a ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !141 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.4788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bv = fmul nsz float %i.ak, 0.000000e+00      ; 2 uses
  %i.bw = fmul nsz <2 x float> %i.ba, zeroinitializer ; 3 uses
  %i.bx = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ca = insertelement <2 x float> %i.bz, float %i.bv, i64 0
  %i.cb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.by, <2 x float> %i.ca)
  %i.cc = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cd = insertelement <2 x float> %i.cc, float %i.aq, i64 0 ; 3 uses
  %i.ce = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer, <2 x float> %i.cb)
  %i.cf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> zeroinitializer, <2 x float> %i.ce)
  store <2 x float> %i.cf, ptr %0, align 4, !tbaa !53
  %i.cg = extractelement <2 x float> %i.bw, i64 1
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.bk, float %i.cg)
  %i.ci = extractelement <2 x float> %i.bc, i64 1 ; 3 uses
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float 0.000000e+00, float %i.ch)
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.cj)
  store float %i.ck, ptr %i.l, align 4, !tbaa !53
  %i.cl = fmul nsz float %i.bk, 0.000000e+00
  store float %i.cl, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !53
  %i.cm = extractelement <2 x float> %i.ab, i64 0
  %i.cn = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cq = insertelement <2 x float> %i.cp, float %i.ak, i64 0
  %i.cr = fmul nsz <2 x float> %i.co, %i.cq
  %i.cs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> zeroinitializer, <2 x float> %i.cr)
  %i.ct = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer, <2 x float> %i.cs)
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> zeroinitializer, <2 x float> %i.ct)
  store <2 x float> %i.cu, ptr %i.n, align 4, !tbaa !53
  %i.cv = extractelement <2 x float> %i.ba, i64 1
  %i.cw = fmul nsz float %i.bs, %i.cv
  %i.cx = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.cw)
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float 0.000000e+00, float %i.cx)
  %i.cz = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.cy)
  store float %i.cz, ptr %i.o, align 4, !tbaa !53
  %i.da = fmul nsz float %i.bs, 0.000000e+00
  store float %i.da, ptr %.sroa.3172.0..sroa_idx, align 4, !tbaa !53
  %i.db = tail call nsz float @llvm.fmuladd.f32(float %i.cm, float 0.000000e+00, float %i.bv) ; 2 uses
  %i.dc = fmul nsz float %i.bu, 0.000000e+00
  store float %i.dc, ptr %.sroa.4788.0..sroa_idx, align 4, !tbaa !53
  %i.dd = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float 0.000000e+00, float %i.db)
  %i.de = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.df = insertelement <2 x float> %i.de, float %i.ae, i64 1
  %i.dg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> zeroinitializer, <2 x float> %i.bw) ; 3 uses
  %i.dh = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dk = insertelement <2 x float> %i.dj, float %i.db, i64 0
  %i.dl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.di, <2 x float> %i.dk)
  %i.dm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> zeroinitializer, <2 x float> %i.dl)
  store <2 x float> %i.dm, ptr %i.p, align 4, !tbaa !53
  %i.dn = extractelement <2 x float> %i.dg, i64 1
  %i.do = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float %i.bu, float %i.dn)
  %i.dp = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.do)
  store float %i.dp, ptr %i.c, align 4, !tbaa !53
  %i.dq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> zeroinitializer, <2 x float> %i.dg) ; 2 uses
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ds = insertelement <2 x float> %i.dr, float %i.dd, i64 0
  %i.dt = fadd nsz <2 x float> %i.bf, %i.ds
  store <2 x float> %i.dt, ptr %i.be, align 4, !tbaa !53
  %i.du = extractelement <2 x float> %i.dq, i64 1
  %i.dv = fadd nsz float %i.du, %i.bh
  store float %i.dv, ptr %i.bi, align 4, !tbaa !53
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !53
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !393, !range !142, !noundef !143
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !393, !range !142, !noundef !143
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !388  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !393
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !390
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !390
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !389  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !389
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !347
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !347
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !412
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
end_hunk_3
