Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CCameraSceneNode?download=true
inline.NumInlined: 900
inline.NumDeleted: 216
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5scene16CCameraSceneNodeC1EPNS_10ISceneNodeEPNS_13ISceneManagerEiRKN4core8vector3dIfEES9_:bb.a
bb.k:                                             ; preds = %.thread
  %i.bu = fcmp une float %i.bm, %i.bl
  br i1 %i.bu, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 1247, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core8CMatrix4IfE37buildProjectionMatrixPerspectiveFovLHEffffb) #27
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bv = fdiv double 1.000000e+00, %i.bs         ; 2 uses
  %i.bw = fpext float %i.bk to double
  %i.bx = fdiv double %i.bv, %i.bw
  %i.by = fptrunc double %i.bx to float
  store float %i.by, ptr %.ptr5.1.i, align 8, !tbaa !13
  %i.bz = fptrunc double %i.bv to float
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float %i.bz, ptr %i.aa, align 4, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 540
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.cb, align 4, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 548
  store float 0.000000e+00, ptr %i.cc, align 4, !tbaa !13
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !13
  %i.cd = fsub float %i.bm, %i.bl
  %i.ce = fmul float %i.bm, 2.000000e+00
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = fadd float %i.bl, %i.bm
  %i.ch = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.cf, i64 1
  %i.cj = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.cd, i64 1
  %i.cl = fdiv <2 x float> %i.ci, %i.ck           ; 2 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0
  store float %i.cm, ptr %i.z, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.co = extractelement <2 x float> %i.cl, i64 1
  store float %i.co, ptr %i.cn, align 8, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.cp, align 8, !tbaa !59
  invoke void @_ZN5scene16CCameraSceneNode19recalculateViewAreaEv(ptr noundef nonnull align 8 dereferenceable(646) %0)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5scene16CCameraSceneNode23setInputReceiverEnabledEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(646) initializes((644, 645)) %0, i1 noundef zeroext %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 644
  store i8 %i.a, ptr %i.b, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5scene16CCameraSceneNode22isInputReceiverEnabledEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(646) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.b = load i8, ptr %i.a, align 4, !tbaa !50, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5scene16CCameraSceneNode19setProjectionMatrixERKN4core8CMatrix4IfEEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(646) initializes((232, 233), (496, 560)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, i1 noundef zeroext %2) unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 %i.a, ptr %i.b, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene16CCameraSceneNode19getProjectionMatrixEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(646) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene16CCameraSceneNode13getViewMatrixEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(646) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5scene16CCameraSceneNode21setViewMatrixAffectorERKN4core8CMatrix4IfEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(646) initializes((580, 644)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 580
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene16CCameraSceneNode21getViewMatrixAffectorEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(646) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 580
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN5scene16CCameraSceneNode7OnEventERK6SEvent(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZThn224_N5scene16CCameraSceneNode7OnEventERK6SEvent(ptr nofree readnone captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene16CCameraSceneNode9setTargetERKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(646) initializes((260, 272)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 645
  %i.c = load i8, ptr %i.b, align 1, !tbaa !51, !range !72, !noundef !73
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call { <2 x float>, float } %i.g(ptr noundef nonnull align 8 dereferenceable(218) %0) ; 2 uses
  %.fca.0.extract5 = extractvalue { <2 x float>, float } %i.h, 0 ; 2 uses
  %.fca.1.extract6 = extractvalue { <2 x float>, float } %i.h, 1
  %i.i = load float, ptr %i.a, align 4, !tbaa !82
  %.sroa.013.0.vec.extract = extractelement <2 x float> %.fca.0.extract5, i64 0
  %i.j = fsub float %i.i, %.sroa.013.0.vec.extract ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = load float, ptr %i.k, align 8, !tbaa !83
  %.sroa.013.4.vec.extract = extractelement <2 x float> %.fca.0.extract5, i64 1
  %i.m = fsub float %i.l, %.sroa.013.4.vec.extract
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.o = load float, ptr %i.n, align 4, !tbaa !15
  %i.p = fsub float %i.o, %.fca.1.extract6        ; 3 uses
  %i.q = fpext float %i.j to double
  %i.r = fpext float %i.p to double
  %i.s = tail call double @atan2(double noundef %i.q, double noundef %i.r) #26
  %i.t = fmul double %i.s, f0x404CA5DC1A63C1F8
  %i.u = fmul float %i.p, %i.p
  %i.v = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.u)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.v)
  %i.w = fpext float %sqrt.i to double
  %i.x = fpext float %i.m to double
  %i.y = tail call double @atan2(double noundef %i.w, double noundef %i.x) #26
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double f0x404CA5DC1A63C1F8, double -9.000000e+01)
  %i.aa = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.t, i64 1 ; 2 uses
  %i.ac = fptrunc <2 x double> %i.ab to <2 x float> ; 2 uses
  %i.ad = fcmp olt <2 x double> %i.ab, splat (double f0xB690000000000000)
  %i.ae = fadd <2 x float> %i.ac, splat (float 3.600000e+02)
  %i.af = select <2 x i1> %i.ad, <2 x float> %i.ae, <2 x float> %i.ac ; 3 uses
  %i.ag = fcmp ult <2 x float> %i.af, splat (float 3.600000e+02)
  %i.ah = fadd <2 x float> %i.af, splat (float -3.600000e+02)
  %i.ai = select <2 x i1> %i.ag, <2 x float> %i.af, <2 x float> %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 124
  store <2 x float> %i.ai, ptr %i.aj, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode11setRotationERKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene16CCameraSceneNode11setRotationERKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(646) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 645
  %i.b = load i8, ptr %i.a, align 1, !tbaa !51, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call { <2 x float>, float } %i.f(ptr noundef nonnull align 8 dereferenceable(218) %0) ; 2 uses
  %.fca.0.extract5 = extractvalue { <2 x float>, float } %i.g, 0
  %.fca.1.extract6 = extractvalue { <2 x float>, float } %i.g, 1
  %i.h = load float, ptr %1, align 4, !tbaa !82
  %i.i = fpext float %i.h to double
  %i.j = fmul double %i.i, f0x3F91DF46A2529D39    ; 2 uses
  %i.k = tail call double @cos(double noundef %i.j) #26 ; 2 uses
  %i.l = tail call double @sin(double noundef %i.j) #26 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !83
  %i.o = fpext float %i.n to double
  %i.p = fmul double %i.o, f0x3F91DF46A2529D39    ; 2 uses
  %i.q = tail call double @cos(double noundef %i.p) #26 ; 3 uses
  %i.r = tail call double @sin(double noundef %i.p) #26 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !15
  %i.u = fpext float %i.t to double
  %i.v = fmul double %i.u, f0x3F91DF46A2529D39    ; 2 uses
  %i.w = tail call double @cos(double noundef %i.v) #26 ; 2 uses
  %i.x = tail call double @sin(double noundef %i.v) #26 ; 2 uses
  %i.y = fneg double %i.r
  %i.z = fneg double %i.x
  %i.aa = fmul double %i.l, %i.q
  %i.ab = fneg double %i.w
  %i.ac = fmul double %i.k, %i.q
  %i.ad = fmul double %i.aa, 0.000000e+00
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.y, double 0.000000e+00, double %i.ad)
  %i.af = fadd double %i.ac, %i.ae
  %i.ag = fptrunc double %i.af to float
  %2 = insertelement <2 x double> poison, double %i.k, i64 0 ; 2 uses
  %3 = insertelement <2 x double> %2, double %i.l, i64 1 ; 2 uses
  %i.ah = insertelement <2 x double> poison, double %i.r, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = fmul <2 x double> %3, %i.ai                ; 2 uses
  %i.aj = insertelement <2 x double> poison, double %i.q, i64 0
  %5 = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = insertelement <2 x double> poison, double %i.w, i64 0
  %6 = insertelement <2 x double> %i.ak, double %i.x, i64 1 ; 4 uses
  %7 = fmul <2 x double> %5, %6
  %8 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.al = insertelement <2 x double> %9, double %i.z, i64 0
  %10 = fmul <2 x double> %8, %i.al
  %11 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %12 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> %6, <2 x double> %10)
  %13 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.am = insertelement <2 x double> %9, double %i.ab, i64 1
  %i.an = fmul <2 x double> %13, %i.am
  %i.ao = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %6, <2 x double> %i.an)
  %i.aq = fmul <2 x double> %12, zeroinitializer
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> zeroinitializer, <2 x double> %i.aq)
  %i.as = fadd <2 x double> %i.ap, %i.ar
  %i.at = fptrunc <2 x double> %i.as to <2 x float>
  %i.au = fadd <2 x float> %.fca.0.extract5, %i.at
  %i.av = fadd float %.fca.1.extract6, %i.ag
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 260
  store <2 x float> %i.au, ptr %i.aw, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 268
  store float %i.av, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ax, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 4 dereferenceable(12) ptr @_ZNK5scene16CCameraSceneNode9getTargetEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(646) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 260
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5scene16CCameraSceneNode11setUpVectorERKN4core8vector3dIfEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(646) initializes((272, 284)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 4 dereferenceable(12) ptr @_ZNK5scene16CCameraSceneNode11getUpVectorEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(646) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZNK5scene16CCameraSceneNode12getNearValueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(646) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.b = load float, ptr %i.a, align 4, !tbaa !56
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZNK5scene16CCameraSceneNode11getFarValueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(646) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load float, ptr %i.a, align 8, !tbaa !47
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZNK5scene16CCameraSceneNode14getAspectRatioEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(646) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load float, ptr %i.a, align 8, !tbaa !55
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_ZNK5scene16CCameraSceneNode6getFOVEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(646) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.b = load float, ptr %i.a, align 4, !tbaa !58
  ret float %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5scene16CCameraSceneNode12setNearValueEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(646) initializes((292, 296)) %0, float noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 292
  store float %1, ptr %i.a, align 4, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.c = load float, ptr %i.b, align 4, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.e = load float, ptr %i.d, align 8, !tbaa !55 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load float, ptr %i.f, align 8, !tbaa !47 ; 4 uses
  %i.h = fpext float %i.c to double
  %i.i = fmul double %i.h, 5.000000e-01
  %i.j = tail call double @tan(double noundef %i.i) #26
  %i.k = fcmp une float %i.e, 0.000000e+00
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 1244, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core8CMatrix4IfE37buildProjectionMatrixPerspectiveFovLHEffffb) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = fcmp une float %1, %i.g
  br i1 %i.l, label %_ZN5scene16CCameraSceneNode27recalculateProjectionMatrixEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 1247, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core8CMatrix4IfE37buildProjectionMatrixPerspectiveFovLHEffffb) #27
  unreachable

_ZN5scene16CCameraSceneNode27recalculateProjectionMatrixEv.exit: ; preds = %bb.c
  %i.m = fdiv double 1.000000e+00, %i.j           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.o = fpext float %i.e to double
  %i.p = fdiv double %i.m, %i.o
  %i.q = fptrunc double %i.p to float
  store float %i.q, ptr %i.n, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.s = fptrunc double %i.m to float
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 516
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float %i.s, ptr %i.t, align 4, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 540
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.v, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 548
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 556
  store float 0.000000e+00, ptr %i.x, align 4, !tbaa !13
  %i.y = insertelement <2 x float> poison, float %i.g, i64 0
  %i.z = insertelement <2 x float> %i.y, float %1, i64 1 ; 2 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ab = fsub <2 x float> %i.aa, %i.z            ; 2 uses
  %i.ac = fmul float %1, 2.000000e+00
  %i.ad = fmul float %i.ac, %i.g
  %i.ae = fadd float %1, %i.g
  %i.af = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.ae, i64 1
  %i.ah = fdiv <2 x float> %i.ag, %i.ab           ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.aj = extractelement <2 x float> %i.ah, i64 1
  store float %i.aj, ptr %i.ai, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.al = extractelement <2 x float> %i.ah, i64 0
  store float %i.al, ptr %i.ak, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.am, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.ao = extractelement <2 x float> %i.ab, i64 1
  store float %i.ao, ptr %i.an, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5scene16CCameraSceneNode11setFarValueEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(646) initializes((296, 300)) %0, float noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  store float %1, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.c = load float, ptr %i.b, align 4, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.e = load float, ptr %i.d, align 8, !tbaa !55 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.g = load float, ptr %i.f, align 4, !tbaa !56 ; 4 uses
  %i.h = fpext float %i.c to double
  %i.i = fmul double %i.h, 5.000000e-01
  %i.j = tail call double @tan(double noundef %i.i) #26
  %i.k = fcmp une float %i.e, 0.000000e+00
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 1244, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core8CMatrix4IfE37buildProjectionMatrixPerspectiveFovLHEffffb) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = fcmp une float %i.g, %1
  br i1 %i.l, label %_ZN5scene16CCameraSceneNode27recalculateProjectionMatrixEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 1247, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core8CMatrix4IfE37buildProjectionMatrixPerspectiveFovLHEffffb) #27
  unreachable

_ZN5scene16CCameraSceneNode27recalculateProjectionMatrixEv.exit: ; preds = %bb.c
  %i.m = fdiv double 1.000000e+00, %i.j           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.o = fpext float %i.e to double
  %i.p = fdiv double %i.m, %i.o
  %i.q = fptrunc double %i.p to float
  store float %i.q, ptr %i.n, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.s = fptrunc double %i.m to float
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 516
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float %i.s, ptr %i.t, align 4, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 540
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.v, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 548
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 556
  store float 0.000000e+00, ptr %i.x, align 4, !tbaa !13
  %i.y = insertelement <2 x float> poison, float %1, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.g, i64 1 ; 2 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ab = fsub <2 x float> %i.aa, %i.z            ; 2 uses
  %i.ac = fmul float %i.g, 2.000000e+00
  %i.ad = fadd float %1, %i.g
  %i.ae = fmul float %1, %i.ac
  %i.af = insertelement <2 x float> poison, float %i.ae, i64 0
end_hunk_0
