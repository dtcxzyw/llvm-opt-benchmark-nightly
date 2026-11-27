Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lightsamplers?download=true
inline.NumInlined: 1988
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4pbrt15BVHLightSampler8buildBVHERSt6vectorISt4pairIiNS_11LightBoundsEESaIS4_EEiiji:bb.a
  %i.vb = load i8, ptr %i.va, align 4, !tbaa !121, !range !68, !noalias !341, !noundef !69
  %i.vc = getelementptr inbounds nuw i8, ptr %19, i64 52
  %i.vd = load i8, ptr %i.vc, align 4, !tbaa !121, !range !68, !noalias !341, !noundef !69
  %i.ve = or i8 %i.vd, %i.vb
  store <2 x float> %i.us, ptr %20, align 8, !alias.scope !341
  %.sroa.4.0..sroa_idx.i350 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store float %.sroa.speculated.i.i.i333, ptr %.sroa.4.0..sroa_idx.i350, align 8, !alias.scope !341
  %.sroa.5.0..sroa_idx.i351 = getelementptr inbounds nuw i8, ptr %20, i64 12
  store <2 x float> %i.ux, ptr %.sroa.5.0..sroa_idx.i351, align 4, !alias.scope !341
  %.sroa.6.0..sroa_idx.i352 = getelementptr inbounds nuw i8, ptr %20, i64 20
  store float %.sroa.speculated.i31.i.i346, ptr %.sroa.6.0..sroa_idx.i352, align 4, !alias.scope !341
  %i.vf = getelementptr inbounds nuw i8, ptr %20, i64 24
  store float %i.uz, ptr %i.vf, align 8, !tbaa !109, !alias.scope !341
  %i.vg = getelementptr inbounds nuw i8, ptr %20, i64 28
  %i.vh = fmul <2 x float> %i.uj, %i.uj           ; 2 uses
  %shift828 = shufflevector <2 x float> %i.vh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop829 = fadd <2 x float> %i.vh, %shift828
  %foldExtExtBinop831 = fmul <2 x float> %i.uk, %i.uk
  %foldExtExtBinop833 = fadd <2 x float> %foldExtExtBinop831, %foldExtExtBinop829
  %i.vi = extractelement <2 x float> %foldExtExtBinop833, i64 0
  %sqrt.i.i.i37.i355 = call noundef float @llvm.sqrt.f32(float %i.vi) ; 2 uses
  %i.vj = insertelement <2 x float> poison, float %sqrt.i.i.i37.i355, i64 0
  %i.vk = shufflevector <2 x float> %i.vj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vl = fdiv <2 x float> %i.uj, %i.vk
  %i.vm = fdiv float %.sroa.4.8.vec.extract.i349, %sqrt.i.i.i37.i355
  store <2 x float> %i.vl, ptr %i.vg, align 4, !alias.scope !341
  %.sroa.2.0..sroa_idx.i40.i358 = getelementptr inbounds nuw i8, ptr %20, i64 36
  store float %i.vm, ptr %.sroa.2.0..sroa_idx.i40.i358, align 4, !alias.scope !341
  %i.vn = getelementptr inbounds nuw i8, ptr %20, i64 40
  store float %.sroa.4.12.vec.extract.i322, ptr %i.vn, align 8, !tbaa !120, !alias.scope !341
  %i.vo = getelementptr inbounds nuw i8, ptr %20, i64 44
  store float %i.uq, ptr %i.vo, align 4, !tbaa !122, !alias.scope !341
  %i.vp = getelementptr inbounds nuw i8, ptr %20, i64 48
  store i8 %i.ve, ptr %i.vp, align 8, !tbaa !121, !alias.scope !341
  br label %_ZN4pbrt5UnionERKNS_11LightBoundsES2_.exit359

_ZN4pbrt5UnionERKNS_11LightBoundsES2_.exit359:    ; preds = %bb.aw, %bb.ay, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZN4pbrt18CompactLightBoundsC2ERKNS_11LightBoundsERKNS_7Bounds3IfEE(ptr noundef nonnull align 4 dereferenceable(24) %21, ptr noundef nonnull align 4 dereferenceable(49) %20, ptr noundef nonnull align 4 dereferenceable(24) %i.vq)
  %i.vr = load i32, ptr %19, align 4, !tbaa !329
  %i.vs = and i32 %i.vr, 2147483647
  %sext = shl i64 %i.rp, 32
  %i.vt = load ptr, ptr %i.ss, align 8, !tbaa !119
  %i.vu = ashr exact i64 %sext, 27
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vu ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(24) %i.vv, ptr noundef nonnull align 4 dereferenceable(24) %21, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vv, i64 24
  store i32 %i.vs, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !33
  store i32 %i.rq, ptr %0, align 4, !tbaa !329
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.vw, ptr noundef nonnull align 8 dereferenceable(52) %20, i64 52, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN4pbrt5UnionERKNS_11LightBoundsES2_.exit359, %_ZN4pstd6vectorIN4pbrt12LightBVHNodeENS_3pmr21polymorphic_allocatorIS2_EEE9push_backEOS2_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt7HashMapINS_5LightEjSt4hashIS1_EN4pstd3pmr21polymorphic_allocatorINS4_8optionalISt4pairIS1_jEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.a, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd6vectorINS_8optionalISt4pairIN4pbrt5LightEjEEENS_3pmr21polymorphic_allocatorIS6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !98
  %i.f = mul i64 %i.e, 24
  %i.g = load ptr, ptr %0, align 8, !tbaa !99     ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.c, i64 noundef %i.f, i64 noundef 8)
          to label %_ZN4pstd6vectorINS_8optionalISt4pairIN4pbrt5LightEjEEENS_3pmr21polymorphic_allocatorIS6_EEED2Ev.exit unwind label %bb.c, !inline_history !12

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZN4pstd6vectorINS_8optionalISt4pairIN4pbrt5LightEjEEENS_3pmr21polymorphic_allocatorIS6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pstd6vectorIN4pbrt12LightBVHNodeENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.a, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt12LightBVHNodeEE17deallocate_objectIS3_EEvPT_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !117
  %i.f = shl i64 %i.e, 5
  %i.g = load ptr, ptr %0, align 8, !tbaa !118    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.c, i64 noundef %i.f, i64 noundef 32)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt12LightBVHNodeEE17deallocate_objectIS3_EEvPT_m.exit unwind label %bb.c, !inline_history !343

_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt12LightBVHNodeEE17deallocate_objectIS3_EEvPT_m.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt18CompactLightBoundsC2ERKNS_11LightBoundsERKNS_7Bounds3IfEE(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(49) %1, ptr noundef nonnull align 4 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.022.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 4 uses
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.223.0.copyload = load float, ptr %.sroa.223.0..sroa_idx, align 4 ; 3 uses
  %.sroa.01.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.022.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.022.0.copyload, %.sroa.022.0.copyload
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.sroa.01.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.022.0.copyload, i64 1 ; 3 uses
  %i.c = fmul float %.sroa.01.4.vec.extract.i.i.i, %.sroa.01.4.vec.extract.i.i.i
  %i.d = fadd float %i.b, %i.c
  %i.e = fmul float %.sroa.223.0.copyload, %.sroa.223.0.copyload
  %i.f = fadd float %i.e, %i.d
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.f) ; 3 uses
  %i.g = fdiv float %.sroa.01.0.vec.extract.i.i.i, %sqrt.i.i ; 2 uses
  %i.h = fdiv float %.sroa.01.4.vec.extract.i.i.i, %sqrt.i.i ; 2 uses
  %i.i = fdiv float %.sroa.223.0.copyload, %sqrt.i.i ; 2 uses
  %i.j = tail call noundef float @llvm.fabs.f32(float %i.g)
  %i.k = tail call noundef float @llvm.fabs.f32(float %i.h)
  %i.l = fadd float %i.j, %i.k
  %i.m = tail call noundef float @llvm.fabs.f32(float %i.i)
  %i.n = fadd float %i.m, %i.l                    ; 3 uses
  %i.o = fdiv float %i.g, %i.n                    ; 3 uses
  %i.p = fdiv float %i.h, %i.n                    ; 3 uses
  %i.q = fdiv float %i.i, %i.n
  %i.r = fcmp ult float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = fadd float %i.o, 1.000000e+00
  %i.t = fmul float %i.s, 5.000000e-01            ; 3 uses
  %i.u = fcmp olt float %i.t, 0.000000e+00
  %i.v = fcmp ogt float %i.t, 1.000000e+00
  %..i.i.i = select i1 %i.v, float 1.000000e+00, float %i.t
  %i.w = fmul float %..i.i.i, 6.553500e+04
  %i.x = tail call float @llvm.round.f32(float %i.w)
  %i.y = select i1 %i.u, float 0.000000e+00, float %i.x
  br label %_ZN4pbrt16OctahedralVectorC2ENS_7Vector3IfEE.exit

bb.c:                                             ; preds = %bb.a
  %i.z = tail call noundef float @llvm.fabs.f32(float %i.p)
  %i.aa = fsub float 1.000000e+00, %i.z
  %i.ab = tail call noundef float @llvm.copysign.f32(float 1.000000e+00, float %i.o)
  %i.ac = fmul float %i.ab, %i.aa
  %i.ad = fadd float %i.ac, 1.000000e+00
  %i.ae = fmul float %i.ad, 5.000000e-01          ; 3 uses
  %i.af = fcmp olt float %i.ae, 0.000000e+00
  %i.ag = fcmp ogt float %i.ae, 1.000000e+00
  %..i.i2.i = select i1 %i.ag, float 1.000000e+00, float %i.ae
  %i.ah = fmul float %..i.i2.i, 6.553500e+04
  %i.ai = tail call float @llvm.round.f32(float %i.ah)
  %i.aj = select i1 %i.af, float 0.000000e+00, float %i.ai
  %i.ak = tail call noundef float @llvm.fabs.f32(float %i.o)
  %i.al = fsub float 1.000000e+00, %i.ak
  %i.am = tail call noundef float @llvm.copysign.f32(float 1.000000e+00, float %i.p)
  %i.an = fmul float %i.am, %i.al
  br label %_ZN4pbrt16OctahedralVectorC2ENS_7Vector3IfEE.exit

_ZN4pbrt16OctahedralVectorC2ENS_7Vector3IfEE.exit: ; preds = %bb.b, %bb.c
  %.sink33.i = phi float [ %i.an, %bb.c ], [ %i.p, %bb.b ]
  %.sink24.in.i = phi float [ %i.aj, %bb.c ], [ %i.y, %bb.b ]
  %i.ao = fadd float %.sink33.i, 1.000000e+00
  %i.ap = fmul float %i.ao, 5.000000e-01          ; 3 uses
  %i.aq = fcmp olt float %i.ap, 0.000000e+00
  %i.ar = fcmp ogt float %i.ap, 1.000000e+00
  %..i.i3.i = select i1 %i.ar, float 1.000000e+00, float %i.ap
  %i.as = fmul float %..i.i3.i, 6.553500e+04
  %i.at = tail call float @llvm.round.f32(float %i.as)
  %i.au = select i1 %i.aq, float 0.000000e+00, float %i.at
  %3 = insertelement <2 x float> poison, float %.sink24.in.i, i64 0
  %4 = insertelement <2 x float> %3, float %i.au, i64 1
  %5 = fptoui <2 x float> %4 to <2 x i16>
  store <2 x i16> %5, ptr %0, align 4, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !109
  store float %i.ax, ptr %i.av, align 4, !tbaa !347
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load float, ptr %i.az, align 4, !tbaa !120 ; 2 uses
  %i.bb = tail call float @llvm.fabs.f32(float %i.ba)
  %or.cond.i = fcmp ugt float %i.bb, 1.000000e+00
  br i1 %or.cond.i, label %bb.d, label %_ZN4pbrt18CompactLightBounds11QuantizeCosEf.exit

bb.d:                                             ; preds = %_ZN4pbrt16OctahedralVectorC2ENS_7Vector3IfEE.exit
  tail call void @_ZN4pbrt8LogFatalIJRA18_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef 207, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(18) @.str.38) #27
  unreachable

_ZN4pbrt18CompactLightBounds11QuantizeCosEf.exit: ; preds = %_ZN4pbrt16OctahedralVectorC2ENS_7Vector3IfEE.exit
  %i.bc = fadd nnan float %i.ba, 1.000000e+00
  %i.bd = fmul nnan float %i.bc, 5.000000e-01
  %i.be = fmul nnan float %i.bd, 3.276700e+04
  %i.bf = tail call noundef float @llvm.floor.f32(float %i.be)
  %i.bg = fptoui float %i.bf to i32
  %i.bh = load i32, ptr %i.ay, align 4
  %i.bi = and i32 %i.bg, 32767
  %i.bj = and i32 %i.bh, -32768
  %i.bk = or disjoint i32 %i.bj, %i.bi            ; 2 uses
  store i32 %i.bk, ptr %i.ay, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !122 ; 2 uses
  %i.bn = tail call float @llvm.fabs.f32(float %i.bm)
  %or.cond.i37 = fcmp ugt float %i.bn, 1.000000e+00
  br i1 %or.cond.i37, label %bb.e, label %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit42

bb.e:                                             ; preds = %_ZN4pbrt18CompactLightBounds11QuantizeCosEf.exit
  tail call void @_ZN4pbrt8LogFatalIJRA18_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef 207, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(18) @.str.38) #27
  unreachable

_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit42:        ; preds = %_ZN4pbrt18CompactLightBounds11QuantizeCosEf.exit
  %i.bo = fadd nnan float %i.bm, 1.000000e+00
  %i.bp = fmul nnan float %i.bo, 5.000000e-01
  %i.bq = fmul nnan float %i.bp, 3.276700e+04
  %i.br = tail call noundef float @llvm.floor.f32(float %i.bq)
  %i.bs = fptoui float %i.br to i32
  %i.bt = shl i32 %i.bs, 15
  %i.bu = and i32 %i.bt, 1073709056
  %i.bv = and i32 %i.bk, -1073709057
  %i.bw = or disjoint i32 %i.bu, %i.bv            ; 2 uses
  store i32 %i.bw, ptr %i.ay, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !121, !range !68, !noundef !69
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 30
  %i.cb = and i32 %i.bw, -1073741825
  %i.cc = or disjoint i32 %i.ca, %i.cb
  store i32 %i.cc, ptr %i.ay, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.22.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 18
  %.sroa.063.0.vec.extract = load float, ptr %1, align 4 ; 3 uses
  %.0.i3977 = load float, ptr %2, align 4, !tbaa !38 ; 4 uses
  %.0.i41 = load float, ptr %i.ce, align 4, !tbaa !38 ; 3 uses
  %i.cl = fcmp ult float %.sroa.063.0.vec.extract, %.0.i3977
  %i.cm = fcmp ugt float %.sroa.063.0.vec.extract, %.0.i41
  %or.cond.i43 = or i1 %i.cl, %i.cm
  br i1 %or.cond.i43, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit42.2, %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit42.1, %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit42
  tail call void @_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef 213, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(21) @.str.39) #27
  unreachable

bb.g:                                             ; preds = %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit42
  %i.cn = fcmp oeq float %.0.i3977, %.0.i41
  br i1 %i.cn, label %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit57, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.co = fsub float %.sroa.063.0.vec.extract, %.0.i3977
  %i.cp = fsub float %.0.i41, %.0.i3977
  %i.cq = fdiv float %i.co, %i.cp                 ; 3 uses
  %i.cr = fcmp olt float %i.cq, 0.000000e+00
  %i.cs = fcmp ogt float %i.cq, 1.000000e+00
  %..i.i = select i1 %i.cs, float 1.000000e+00, float %i.cq
  %i.ct = fmul float %..i.i, 6.553500e+04
  %i.cu = tail call float @llvm.floor.f32(float %i.ct)
  %i.cv = select i1 %i.cr, float 0.000000e+00, float %i.cu
  %i.cw = fptoui float %i.cv to i16
  br label %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit57

_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit57:        ; preds = %bb.g, %bb.h
  %.0.i44 = phi i16 [ %i.cw, %bb.h ], [ 0, %bb.g ]
  store i16 %.0.i44, ptr %i.ci, align 4, !tbaa !35
  %.sroa.0.0.vec.extract = load float, ptr %i.cj, align 4 ; 3 uses
  %.0.i5393 = load float, ptr %2, align 4, !tbaa !38 ; 4 uses
  %.0.i56 = load float, ptr %i.ce, align 4, !tbaa !38 ; 3 uses
  %i.cx = fcmp ult float %.sroa.0.0.vec.extract, %.0.i5393
  %i.cy = fcmp ugt float %.sroa.0.0.vec.extract, %.0.i56
  %or.cond.i58 = or i1 %i.cx, %i.cy
  br i1 %or.cond.i58, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit57.2, %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit57.1, %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit57
  tail call void @_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef 213, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(21) @.str.39) #27
  unreachable

bb.j:                                             ; preds = %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit57
  %i.cz = fcmp oeq float %.0.i5393, %.0.i56
  br i1 %i.cz, label %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit42.1, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = fsub float %.sroa.0.0.vec.extract, %.0.i5393
  %i.db = fsub float %.0.i56, %.0.i5393
  %i.dc = fdiv float %i.da, %i.db                 ; 3 uses
  %i.dd = fcmp olt float %i.dc, 0.000000e+00
  %i.de = fcmp ogt float %i.dc, 1.000000e+00
  %..i.i59 = select i1 %i.de, float 1.000000e+00, float %i.dc
  %i.df = fmul float %..i.i59, 6.553500e+04
  %i.dg = tail call float @llvm.ceil.f32(float %i.df)
  %i.dh = select i1 %i.dd, float 0.000000e+00, float %i.dg
  %i.di = fptoui float %i.dh to i16
  br label %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit42.1

_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit42.1:      ; preds = %bb.j, %bb.k
  %.0.i60 = phi i16 [ %i.di, %bb.k ], [ 0, %bb.j ]
  store i16 %.0.i60, ptr %i.ck, align 2, !tbaa !35
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.063.4.vec.extract.1 = load float, ptr %i.dj, align 4 ; 3 uses
  %.0.i3977.1 = load float, ptr %i.cd, align 4, !tbaa !38 ; 4 uses
  %.0.i41.1 = load float, ptr %i.cf, align 4, !tbaa !38 ; 3 uses
  %i.dk = fcmp ult float %.sroa.063.4.vec.extract.1, %.0.i3977.1
  %i.dl = fcmp ugt float %.sroa.063.4.vec.extract.1, %.0.i41.1
  %or.cond.i43.1 = or i1 %i.dk, %i.dl
  br i1 %or.cond.i43.1, label %bb.f, label %bb.l

bb.l:                                             ; preds = %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit42.1
  %i.dm = fcmp oeq float %.0.i3977.1, %.0.i41.1
  br i1 %i.dm, label %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit57.1, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dn = fsub float %.sroa.063.4.vec.extract.1, %.0.i3977.1
  %i.do = fsub float %.0.i41.1, %.0.i3977.1
  %i.dp = fdiv float %i.dn, %i.do                 ; 3 uses
  %i.dq = fcmp olt float %i.dp, 0.000000e+00
  %i.dr = fcmp ogt float %i.dp, 1.000000e+00
  %..i.i.1 = select i1 %i.dr, float 1.000000e+00, float %i.dp
  %i.ds = fmul float %..i.i.1, 6.553500e+04
  %i.dt = tail call float @llvm.floor.f32(float %i.ds)
  %i.du = select i1 %i.dq, float 0.000000e+00, float %i.dt
  %i.dv = fptoui float %i.du to i16
  br label %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit57.1

_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit57.1:      ; preds = %bb.m, %bb.l
  %.0.i44.1 = phi i16 [ %i.dv, %bb.m ], [ 0, %bb.l ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %.0.i44.1, ptr %i.dw, align 2, !tbaa !35
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.4.vec.extract.1 = load float, ptr %i.dx, align 4 ; 3 uses
  %.0.i5393.1 = load float, ptr %i.cd, align 4, !tbaa !38 ; 4 uses
  %.0.i56.1 = load float, ptr %i.cf, align 4, !tbaa !38 ; 3 uses
  %i.dy = fcmp ult float %.sroa.0.4.vec.extract.1, %.0.i5393.1
  %i.dz = fcmp ugt float %.sroa.0.4.vec.extract.1, %.0.i56.1
  %or.cond.i58.1 = or i1 %i.dy, %i.dz
  br i1 %or.cond.i58.1, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit57.1
  %i.ea = fcmp oeq float %.0.i5393.1, %.0.i56.1
  br i1 %i.ea, label %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit42.2, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = fsub float %.sroa.0.4.vec.extract.1, %.0.i5393.1
  %i.ec = fsub float %.0.i56.1, %.0.i5393.1
  %i.ed = fdiv float %i.eb, %i.ec                 ; 3 uses
  %i.ee = fcmp olt float %i.ed, 0.000000e+00
  %i.ef = fcmp ogt float %i.ed, 1.000000e+00
  %..i.i59.1 = select i1 %i.ef, float 1.000000e+00, float %i.ed
  %i.eg = fmul float %..i.i59.1, 6.553500e+04
  %i.eh = tail call float @llvm.ceil.f32(float %i.eg)
  %i.ei = select i1 %i.ee, float 0.000000e+00, float %i.eh
  %i.ej = fptoui float %i.ei to i16
  br label %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit42.2

_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit42.2:      ; preds = %bb.o, %bb.n
  %.0.i60.1 = phi i16 [ %i.ej, %bb.o ], [ 0, %bb.n ]
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %.0.i60.1, ptr %i.ek, align 4, !tbaa !35
  %.sroa.22.0.copyload.i.2 = load float, ptr %.sroa.22.0..sroa_idx.i, align 4 ; 3 uses
  %.0.i3977.2 = load float, ptr %i.cg, align 4, !tbaa !38 ; 4 uses
  %.0.i41.2 = load float, ptr %i.ch, align 4, !tbaa !38 ; 3 uses
  %i.el = fcmp ult float %.sroa.22.0.copyload.i.2, %.0.i3977.2
  %i.em = fcmp ugt float %.sroa.22.0.copyload.i.2, %.0.i41.2
  %or.cond.i43.2 = or i1 %i.el, %i.em
  br i1 %or.cond.i43.2, label %bb.f, label %bb.p

bb.p:                                             ; preds = %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit42.2
  %i.en = fcmp oeq float %.0.i3977.2, %.0.i41.2
  br i1 %i.en, label %_ZNK4pbrt6Tuple3INS_6Point3EfEixEi.exit57.2, label %bb.q

end_hunk_0
