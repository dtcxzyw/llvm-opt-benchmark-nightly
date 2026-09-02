Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CSceneManager?download=true
inline.NumInlined: 1657
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN5scene10ISceneNode9setParentEPS0_:bb.a
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !86   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.t, ptr %i.q, align 8, !tbaa !86
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.f, label %_ZNK17IReferenceCounted4dropEv.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(12) %i.p) #33, !inline_history !2
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode22updateAbsolutePositionEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.core::CMatrix4", align 16   ; 7 uses
  %2 = alloca %"class.core::CMatrix4", align 4    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(218) %i.b) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.g = load ptr, ptr %0, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.core::CMatrix4") align 4 %1, ptr noundef nonnull align 8 dereferenceable(218) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load <4 x float>, ptr %1, align 16, !tbaa !19, !noalias !243 ; 4 uses
  %i.r = load <4 x float>, ptr %i.f, align 4, !tbaa !19, !noalias !243 ; 4 uses
  %i.s = load <4 x float>, ptr %i.j, align 4, !tbaa !19, !noalias !243 ; 4 uses
  %i.t = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.u = fmul <4 x float> %i.t, %i.s
  %i.v = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.v, <4 x float> %i.u)
  %i.x = load <4 x float>, ptr %i.k, align 4, !tbaa !19, !noalias !243 ; 4 uses
  %i.y = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.z = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.y, <4 x float> %i.w)
  %i.aa = load <4 x float>, ptr %i.l, align 4, !tbaa !19, !noalias !243 ; 4 uses
  %i.ab = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ac = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.ab, <4 x float> %i.z)
  store <4 x float> %i.ac, ptr %i.p, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load <4 x float>, ptr %i.m, align 16, !tbaa !19, !noalias !243 ; 4 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.af = fmul <4 x float> %i.s, %i.ae
  %i.ag = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.ag, <4 x float> %i.af)
  %i.ai = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.ai, <4 x float> %i.ah)
  %i.ak = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.al = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.ak, <4 x float> %i.aj)
  store <4 x float> %i.al, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = load <4 x float>, ptr %i.n, align 16, !tbaa !19, !noalias !243 ; 4 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ao = fmul <4 x float> %i.s, %i.an
  %i.ap = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.ap, <4 x float> %i.ao)
  %i.ar = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.as = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.ar, <4 x float> %i.aq)
  %i.at = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.au = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.at, <4 x float> %i.as)
  store <4 x float> %i.au, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.av = load <4 x float>, ptr %i.o, align 16, !tbaa !19, !noalias !243 ; 4 uses
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ax = fmul <4 x float> %i.s, %i.aw
  %i.ay = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> zeroinitializer
  %i.az = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.ay, <4 x float> %i.ax)
  %i.ba = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.ba, <4 x float> %i.az)
  %i.bc = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.bc, <4 x float> %i.bb)
  store <4 x float> %i.bd, ptr %.sroa.15.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.be = load ptr, ptr %0, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr dead_on_unwind nonnull writable sret(%"class.core::CMatrix4") align 4 %2, ptr noundef nonnull align 8 dereferenceable(218) %0)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bh, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !148
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene10ISceneNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 1852534389
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5scene10ISceneNode5cloneEPS0_PNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5scene10ISceneNode15getSceneManagerEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene10ISceneNodeD1Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #36
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene10ISceneNodeD0Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #36
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene13CSceneManager18setGlobalDebugDataEtt(ptr noundef nonnull align 8 dereferenceable(504) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = xor i16 %2, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i16 %i.a, ptr %i.b, align 8, !tbaa !168
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 482
  store i16 %1, ptr %i.c, align 2, !tbaa !169
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene13CSceneManager20getCurrentRenderPassEv(ptr noundef nonnull align 8 dereferenceable(504) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.b = load i32, ptr %i.a, align 4, !tbaa !167
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene13CSceneManager20setCurrentRenderPassENS_24E_SCENE_NODE_RENDER_PASSE(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 484
  store i32 %1, ptr %i.a, align 4, !tbaa !167
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene13CSceneManager7getTypeEv(ptr noundef nonnull align 8 dereferenceable(504) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 1735290227
}

; Function Attrs: uwtable
define linkonce_odr noundef i32 @_ZThn8_NK5scene13CSceneManager7getTypeEv(ptr noundef %0) unnamed_addr #19 comdat align 2 {
bb.a:
  ret i32 1735290227
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #21

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK4core8CMatrix4IfE14transformPlaneERNS_7plane3dIfEE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %2 = alloca %"class.core::CMatrix4", align 8    ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !145
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load <3 x float>, ptr %1, align 4, !tbaa !19
  %i.i = load <2 x float>, ptr %0, align 4, !tbaa !19
  %i.j = load <2 x float>, ptr %i.e, align 4, !tbaa !19
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !19
  %i.l = load <2 x float>, ptr %i.g, align 4, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load float, ptr %i.o, align 4, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load float, ptr %i.q, align 4, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load float, ptr %i.s, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.u = call noundef zeroext i1 @_ZNK4core8CMatrix4IfE10getInverseERS1_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %2)
  br i1 %i.u, label %bb.b, label %_ZN4core8CMatrix4IfEC2ERKS1_NS1_12eConstructorE.exit

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = load float, ptr %i.w, align 8, !tbaa !19, !noalias !246
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.z = load float, ptr %i.y, align 4, !tbaa !19, !noalias !246
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load <4 x float>, ptr %i.aa, align 8
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !19, !noalias !246
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.af = load <2 x float>, ptr %2, align 8, !tbaa !19
  %4 = load <4 x float>, ptr %3, align 4
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ag = load <2 x float>, ptr %i.v, align 8, !tbaa !19
  %.pre16 = load float, ptr %.phi.trans.insert, align 4, !tbaa !19
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre18 = load float, ptr %.phi.trans.insert17, align 8, !tbaa !19
  %i.ah = insertelement <2 x float> %i.ac, float %i.ae, i64 1
  %i.ai = shufflevector <2 x float> %i.af, <2 x float> %i.ag, <2 x i32> <i32 0, i32 2>
  %6 = insertelement <2 x float> %5, float %.pre16, i64 1
  br label %_ZN4core8CMatrix4IfEC2ERKS1_NS1_12eConstructorE.exit

_ZN4core8CMatrix4IfEC2ERKS1_NS1_12eConstructorE.exit: ; preds = %bb.a, %bb.b
  %i.aj = phi float [ %.pre18, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.ak = phi float [ %i.z, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.al = phi float [ %i.x, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.am = phi <2 x float> [ %i.ah, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.an = phi <2 x float> [ %i.ai, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.ao = phi <2 x float> [ %6, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.ap = load float, ptr %i.c, align 4, !tbaa !140 ; 2 uses
  %i.aq = load float, ptr %1, align 4, !tbaa !139 ; 2 uses
  %i.ar = load float, ptr %i.d, align 4, !tbaa !141 ; 2 uses
  %i.as = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %i.at, %i.ao
  %i.av = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.an, <2 x float> %i.au)
  %i.ay = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.am, <2 x float> %i.ax) ; 5 uses
  %i.bb = fmul float %i.ap, %i.ak
  %i.bc = call float @llvm.fmuladd.f32(float %i.aq, float %i.al, float %i.bb)
  %i.bd = call float @llvm.fmuladd.f32(float %i.ar, float %i.aj, float %i.bc) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ba, %i.ba
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bf = extractelement <2 x float> %i.ba, i64 0 ; 2 uses
  %i.bg = call float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.be)
  %i.bh = call float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.bg) ; 2 uses
  %i.bi = fcmp oeq float %i.bh, 0.000000e+00
  br i1 %i.bi, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4core8CMatrix4IfEC2ERKS1_NS1_12eConstructorE.exit
  %i.bj = fpext float %i.bh to double
  %sqrt.i = call double @llvm.sqrt.f64(double %i.bj)
  %i.bk = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.bl = fpext <2 x float> %i.ba to <2 x double>
  %i.bm = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x double> %i.bn, %i.bl
  %i.bp = fptrunc <2 x double> %i.bo to <2 x float>
  %i.bq = fpext float %i.bd to double
  %i.br = fmul double %i.bk, %i.bq
  %i.bs = fptrunc double %i.br to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %_ZN4core8CMatrix4IfEC2ERKS1_NS1_12eConstructorE.exit, %bb.c
  %.sroa.8.0 = phi float [ %i.bd, %_ZN4core8CMatrix4IfEC2ERKS1_NS1_12eConstructorE.exit ], [ %i.bs, %bb.c ] ; 2 uses
  %.sroa.0.0 = phi <2 x float> [ %i.ba, %_ZN4core8CMatrix4IfEC2ERKS1_NS1_12eConstructorE.exit ], [ %i.bp, %bb.c ] ; 3 uses
  %i.bt = fneg float %i.b
  %i.bu = insertelement <3 x float> poison, float %i.bt, i64 0
  %i.bv = shufflevector <3 x float> %i.bu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bw = fmul <3 x float> %i.h, %i.bv            ; 6 uses
  %i.bx = extractelement <3 x float> %i.bw, i64 1
  %i.by = fmul float %i.bx, %i.p
  %i.bz = extractelement <3 x float> %i.bw, i64 0
  %i.ca = call float @llvm.fmuladd.f32(float %i.bz, float %i.n, float %i.by)
  %i.cb = extractelement <3 x float> %i.bw, i64 2
  %i.cc = call float @llvm.fmuladd.f32(float %i.cb, float %i.r, float %i.ca)
  %i.cd = fadd float %i.t, %i.cc
  %i.ce = shufflevector <3 x float> %i.bw, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cf = fmul <2 x float> %i.ce, %i.j
  %i.cg = shufflevector <3 x float> %i.bw, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ch = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.i, <2 x float> %i.cf)
  %i.ci = shufflevector <3 x float> %i.bw, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.k, <2 x float> %i.ch)
  %i.ck = fadd <2 x float> %i.l, %i.cj            ; 2 uses
  store <2 x float> %.sroa.0.0, ptr %1, align 4
  store float %.sroa.8.0, ptr %i.d, align 4, !tbaa !19
  %i.cl = extractelement <2 x float> %.sroa.0.0, i64 0
  %foldExtExtBinop23 = fmul <2 x float> %i.ck, %.sroa.0.0
  %i.cm = extractelement <2 x float> %foldExtExtBinop23, i64 1
  %i.cn = extractelement <2 x float> %i.ck, i64 0
  %i.co = call float @llvm.fmuladd.f32(float %i.cn, float %i.cl, float %i.cm)
  %i.cp = call noundef float @llvm.fmuladd.f32(float %i.cd, float %.sroa.8.0, float %i.co)
  %i.cq = fneg float %i.cp
  store float %i.cq, ptr %i.a, align 4, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5scene12SViewFrustum22recalculateBoundingBoxEv(ptr noundef nonnull align 4 dereferenceable(280) %0) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %1 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %2 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %3 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %4 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %5 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %6 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %7 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %8 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !141
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.f = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %8) ; 0 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %8, align 8 ; 2 uses
  %.sroa.2.0.copyload.i = load float, ptr %i.b, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 15 uses
  store <2 x float> %.sroa.0.0.copyload.i, ptr %i.g, align 4
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 15 uses
  store float %.sroa.2.0.copyload.i, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !19
  store <2 x float> %.sroa.0.0.copyload.i, ptr %i.a, align 4
  %.sroa.577.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 15 uses
  store float %.sroa.2.0.copyload.i, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !141
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.j = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %7) ; 0 uses
  %.sroa.0.0.copyload.i29 = load <2 x float>, ptr %7, align 8 ; 2 uses
  %.sroa.2.0.copyload.i30 = load float, ptr %i.h, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.073.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i29, i64 0 ; 4 uses
  %.sroa.073.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i29, i64 1 ; 4 uses
  %i.k = load float, ptr %i.g, align 4, !tbaa !133
  %i.l = fcmp ogt float %.sroa.073.0.vec.extract, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %.sroa.073.0.vec.extract, ptr %i.g, align 4, !tbaa !133
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 14 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !134
  %i.o = fcmp ogt float %.sroa.073.4.vec.extract, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %.sroa.073.4.vec.extract, ptr %i.m, align 4, !tbaa !134
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load float, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !135
  %i.q = fcmp ogt float %.sroa.2.0.copyload.i30, %i.p
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %.sroa.2.0.copyload.i30, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !135
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = load float, ptr %i.a, align 4, !tbaa !136
  %i.s = fcmp olt float %.sroa.073.0.vec.extract, %i.r
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store float %.sroa.073.0.vec.extract, ptr %i.a, align 4, !tbaa !136
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 14 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !137
  %i.v = fcmp olt float %.sroa.073.4.vec.extract, %i.u
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %.sroa.073.4.vec.extract, ptr %i.t, align 4, !tbaa !137
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = load float, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !138
  %i.x = fcmp olt float %.sroa.2.0.copyload.i30, %i.w
  br i1 %i.x, label %bb.l, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit

bb.l:                                             ; preds = %bb.k
  store float %.sroa.2.0.copyload.i30, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !138
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.y, align 8, !tbaa !141
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.aa = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %6) ; 0 uses
  %.sroa.0.0.copyload.i33 = load <2 x float>, ptr %6, align 8 ; 2 uses
  %.sroa.2.0.copyload.i34 = load float, ptr %i.y, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.sroa.071.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i33, i64 0 ; 4 uses
  %.sroa.071.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i33, i64 1 ; 4 uses
  %i.ab = load float, ptr %i.g, align 4, !tbaa !133
  %i.ac = fcmp ogt float %.sroa.071.0.vec.extract, %i.ab
  br i1 %i.ac, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit
  store float %.sroa.071.0.vec.extract, ptr %i.g, align 4, !tbaa !133
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit
  %i.ad = load float, ptr %i.m, align 4, !tbaa !134
  %i.ae = fcmp ogt float %.sroa.071.4.vec.extract, %i.ad
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float %.sroa.071.4.vec.extract, ptr %i.m, align 4, !tbaa !134
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.af = load float, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !135
  %i.ag = fcmp ogt float %.sroa.2.0.copyload.i34, %i.af
end_hunk_0
