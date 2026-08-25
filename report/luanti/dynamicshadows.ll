Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/dynamicshadows?download=true
inline.NumInlined: 177
inline.NumDeleted: 47
begin_hunk_0_@_ZN16DirectionalLight13updateFrustumEPK6CameraP6Client:bb.a
  %i.ag = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440) %i.m)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 220
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.ah, align 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 228
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.copyload.i24 = load <2 x float>, ptr %i.ai, align 4
  %.sroa.22.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.22.0.copyload.i26 = load float, ptr %.sroa.22.0..sroa_idx.i25, align 4, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.am = load float, ptr %i.al, align 4, !tbaa !68
  tail call void @_ZN9ClientMap20updateDrawListShadowEN4core8vector3dIfEES2_ff(ptr noundef nonnull align 8 dereferenceable(656) %i.ag, <2 x float> %.sroa.01.0.copyload.i, float %.sroa.22.0.copyload.i, <2 x float> %.sroa.01.0.copyload.i24, float %.sroa.22.0.copyload.i26, float noundef %i.ak, float noundef %i.am)
  store i8 1, ptr %0, align 4, !tbaa !70
  store i8 1, ptr %i.a, align 4, !tbaa !74
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

declare noundef nonnull align 8 dereferenceable(656) ptr @_ZN17ClientEnvironment12getClientMapEv(ptr noundef nonnull align 8 dereferenceable(440)) local_unnamed_addr #2

declare void @_ZN9ClientMap20updateDrawListShadowEN4core8vector3dIfEES2_ff(ptr noundef nonnull align 8 dereferenceable(656), <2 x float>, float, <2 x float>, float, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZNK16DirectionalLight11getPositionEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(413) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 220
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.a, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 228
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !9
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.01.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.22.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN16DirectionalLight13commitFrustumEv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(413) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !74, !range !75, !noundef !76
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(168) %i.e, ptr noundef nonnull align 4 dereferenceable(168) %i.d, i64 168, i1 false), !tbaa.struct !134
  store i8 0, ptr %i.a, align 4, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN16DirectionalLight12setDirectionEN4core8vector3dIfEE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(413) initializes((40, 52)) %0, <2 x float> %1, float %2) local_unnamed_addr #9 align 2 {
bb.a:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.a = fneg nsz <2 x float> %1                  ; 2 uses
  %i.b = fneg nsz float %2                        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store <2 x float> %i.a, ptr %i.c, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store float %i.b, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !9
  %foldExtExtBinop = fmul nsz <2 x float> %1, %1
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.e = tail call nsz float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract, float %.sroa.0.0.vec.extract, float %i.d)
  %i.f = tail call nsz float @llvm.fmuladd.f32(float %2, float %2, float %i.e) ; 2 uses
  %i.g = fcmp nsz oeq float %i.f, 0.000000e+00
  br i1 %i.g, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fpext nsz float %i.f to double
  %i.i = tail call nsz double @llvm.sqrt.f64(double %i.h)
  %i.j = fdiv nsz double 1.000000e+00, %i.i       ; 2 uses
  %i.k = fpext <2 x float> %i.a to <2 x double>
  %i.l = insertelement <2 x double> poison, double %i.j, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fmul nsz <2 x double> %i.m, %i.k
  %i.o = fptrunc <2 x double> %i.n to <2 x float>
  store <2 x float> %i.o, ptr %i.c, align 4, !tbaa !9
  %i.p = fpext nsz float %i.b to double
  %i.q = fmul nsz double %i.j, %i.p
  %i.r = fptrunc nsz double %i.q to float
  store float %i.r, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !14
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZNK16DirectionalLight12getPlayerPosEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(413) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.a, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !9
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.01.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.22.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZNK16DirectionalLight18getFuturePlayerPosEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(413) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.a, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !9
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.01.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.22.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK16DirectionalLight13getViewMatrixEv(ptr nofree noundef nonnull readnone align 4 captures(ret: address, provenance) dereferenceable(413) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK16DirectionalLight19getProjectionMatrixEv(ptr nofree noundef nonnull readnone align 4 captures(ret: address, provenance) dereferenceable(413) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK16DirectionalLight19getFutureViewMatrixEv(ptr nofree noundef nonnull readnone align 4 captures(ret: address, provenance) dereferenceable(413) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK16DirectionalLight25getFutureProjectionMatrixEv(ptr nofree noundef nonnull readnone align 4 captures(ret: address, provenance) dereferenceable(413) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 260
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16DirectionalLight17getViewProjMatrixEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 4 dereferenceable(413) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 156
  tail call void @_ZNK4core8CMatrix4IfEmlERKS1_(ptr dead_on_unwind writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %i.b)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4core8CMatrix4IfEmlERKS1_(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %2, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load <4 x float>, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load <4 x float>, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = load <4 x float>, ptr %i.i, align 4
  %i.k = load <4 x float>, ptr %1, align 4, !tbaa !9 ; 4 uses
  %i.l = load <4 x float>, ptr %i.b, align 4, !tbaa !9 ; 4 uses
  %i.m = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer
  %i.n = fmul nsz <4 x float> %i.m, %i.l
  %i.o = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.p = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.o, <4 x float> %i.n)
  %i.q = load <4 x float>, ptr %i.e, align 4, !tbaa !9 ; 4 uses
  %i.r = shufflevector <4 x float> %i.g, <4 x float> poison, <4 x i32> zeroinitializer
  %i.s = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.q, <4 x float> %i.r, <4 x float> %i.p)
  %i.t = load <4 x float>, ptr %i.h, align 4, !tbaa !9 ; 4 uses
  %i.u = shufflevector <4 x float> %i.j, <4 x float> poison, <4 x i32> zeroinitializer
  %i.v = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.u, <4 x float> %i.s)
  store <4 x float> %i.v, ptr %0, align 4, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load <4 x float>, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.z = load <4 x float>, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = load <4 x float>, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ad = load <4 x float>, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = fmul nsz <4 x float> %i.l, %i.af
  %i.ah = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.ah, <4 x float> %i.ag)
  %i.aj = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ak = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.q, <4 x float> %i.aj, <4 x float> %i.ai)
  %i.al = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.al, <4 x float> %i.ak)
  store <4 x float> %i.am, ptr %i.ae, align 4, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32
  %3 = load float, ptr %i.an, align 4, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 36
  %4 = load float, ptr %i.ao, align 4, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  %5 = load float, ptr %i.ap, align 4, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 44
  %6 = load float, ptr %i.aq, align 4, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = insertelement <4 x float> poison, float %4, i64 0
  %i.as = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  %i.at = fmul nsz <4 x float> %i.l, %i.as
  %8 = insertelement <4 x float> poison, float %3, i64 0
  %i.au = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> zeroinitializer
  %i.av = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.au, <4 x float> %i.at)
  %9 = insertelement <4 x float> poison, float %5, i64 0
  %i.aw = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ax = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.q, <4 x float> %i.aw, <4 x float> %i.av)
  %10 = insertelement <4 x float> poison, float %6, i64 0
  %i.ay = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer
  %i.az = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.ay, <4 x float> %i.ax)
  store <4 x float> %i.az, ptr %i.ar, align 4, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48
  %11 = load float, ptr %i.ba, align 4, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.be = load float, ptr %i.bd, align 4, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = fmul nsz <4 x float> %i.l, %i.bj
  %12 = insertelement <4 x float> poison, float %11, i64 0
  %i.bl = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.bl, <4 x float> %i.bk)
  %i.bn = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bp = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.q, <4 x float> %i.bo, <4 x float> %i.bm)
  %i.bq = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bs = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.br, <4 x float> %i.bp)
  store <4 x float> %i.bs, ptr %i.bh, align 4, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @__cxx_global_var_init() #12 section ".text.startup" comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev, ptr nonnull @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr nonnull @__dso_handle) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !136    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit

_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #17, !inline_history !138
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tan.v2f32(<2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"_ZTSN4core8vector3dIfEE", !10, i64 0, !10, i64 4, !10, i64 8}
!13 = !{!12, !10, i64 4}
!14 = !{!12, !10, i64 8}
!15 = !{!16, !10, i64 160}
!16 = !{!"_ZTS6Camera", !17, i64 0, !17, i64 8, !19, i64 16, !20, i64 24, !21, i64 32, !22, i64 40, !23, i64 48, !10, i64 56, !12, i64 60, !12, i64 72, !24, i64 84, !26, i64 90, !26, i64 91, !10, i64 92, !10, i64 96, !26, i64 100, !10, i64 104, !10, i64 108, !27, i64 112, !27, i64 120, !27, i64 128, !27, i64 136, !27, i64 144, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !6, i64 168, !10, i64 172, !10, i64 176, !6, i64 180, !10, i64 184, !28, i64 192, !52, i64 488, !10, i64 492, !26, i64 496, !53, i64 504, !26, i64 528, !58, i64 532}
!17 = !{!"p1 _ZTSN5scene10ISceneNodeE", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"p1 _ZTSN5scene16ICameraSceneNodeE", !18, i64 0}
!20 = !{!"p1 _ZTSN5scene13ISceneManagerE", !18, i64 0}
!21 = !{!"p1 _ZTS18WieldMeshSceneNode", !18, i64 0}
!22 = !{!"p1 _ZTS14MapDrawControl", !18, i64 0}
!23 = !{!"p1 _ZTS6Client", !18, i64 0}
!24 = !{!"_ZTSN4core8vector3dIsEE", !25, i64 0, !25, i64 2, !25, i64 4}
!25 = !{!"short", !7, i64 0}
!26 = !{!"bool", !7, i64 0}
!27 = !{!"_ZTSN4core8vector2dIfEE", !10, i64 0, !10, i64 4}
!28 = !{!"_ZTS9ItemStack", !29, i64 0, !25, i64 32, !25, i64 34, !33, i64 40}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0, !32, i64 8, !7, i64 16}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!31 = !{!"p1 omnipotent char", !18, i64 0}
!32 = !{!"long", !7, i64 0}
!33 = !{!"_ZTS17ItemStackMetadata", !34, i64 0, !42, i64 72, !47, i64 192}
!34 = !{!"_ZTS14SimpleMetadata", !26, i64 8, !35, i64 16}
!35 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !36, i64 0}
!36 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !37, i64 0, !32, i64 8, !39, i64 16, !32, i64 24, !41, i64 32, !40, i64 48}
!37 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !38, i64 0}
!38 = !{!"any p2 pointer", !18, i64 0}
!39 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !40, i64 0}
!40 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !18, i64 0}
!41 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !10, i64 0, !32, i64 8}
!42 = !{!"_ZTSSt8optionalI16ToolCapabilitiesE", !43, i64 0}
!43 = !{!"_ZTSSt14_Optional_baseI16ToolCapabilitiesLb0ELb0EE", !44, i64 0}
!44 = !{!"_ZTSSt17_Optional_payloadI16ToolCapabilitiesLb0ELb0ELb0EE", !45, i64 0}
!45 = !{!"_ZTSSt17_Optional_payloadI16ToolCapabilitiesLb1ELb0ELb0EE", !46, i64 0}
!46 = !{!"_ZTSSt22_Optional_payload_baseI16ToolCapabilitiesE", !7, i64 0, !26, i64 112}
!47 = !{!"_ZTSSt8optionalI13WearBarParamsE", !48, i64 0}
!48 = !{!"_ZTSSt14_Optional_baseI13WearBarParamsLb0ELb0EE", !49, i64 0}
!49 = !{!"_ZTSSt17_Optional_payloadI13WearBarParamsLb0ELb0ELb0EE", !50, i64 0}
!50 = !{!"_ZTSSt17_Optional_payloadI13WearBarParamsLb1ELb0ELb0EE", !51, i64 0}
!51 = !{!"_ZTSSt22_Optional_payload_baseI13WearBarParamsE", !7, i64 0, !26, i64 56}
!52 = !{!"_ZTS10CameraMode", !7, i64 0}
!53 = !{!"_ZTSSt6vectorIP7NametagSaIS1_EE", !54, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIP7NametagSaIS1_EE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIP7NametagSaIS1_EE12_Vector_implE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIP7NametagSaIS1_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!57 = !{!"p2 _ZTS7Nametag", !38, i64 0}
!58 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!59 = !{!60, !10, i64 244}
!60 = !{!"_ZTS16DirectionalLight", !26, i64 0, !61, i64 4, !10, i64 20, !6, i64 24, !12, i64 28, !12, i64 40, !12, i64 52, !12, i64 64, !62, i64 76, !62, i64 244, !26, i64 412}
!61 = !{!"_ZTSN5video7SColorfE", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!62 = !{!"_ZTS13shadowFrustum", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !63, i64 16, !63, i64 80, !12, i64 144, !12, i64 156}
!63 = !{!"_ZTSN4core8CMatrix4IfEE", !7, i64 0}
!64 = !{!60, !10, i64 248}
!65 = !{!16, !19, i64 16}
!66 = !{!67, !67, i64 0}
!67 = !{!"vtable pointer", !8, i64 0}
!68 = !{!60, !10, i64 252}
!69 = !{!60, !10, i64 256}
!70 = !{!60, !26, i64 0}
!71 = !{!60, !10, i64 20}
!72 = !{!60, !6, i64 24}
!73 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9}
!74 = !{!60, !26, i64 412}
!75 = !{i8 0, i8 2}
!76 = !{}
!77 = !{!78, !22, i64 408}
!78 = !{!"_ZTS9ClientMap", !79, i64 0, !95, i64 144, !23, i64 368, !111, i64 376, !112, i64 384, !22, i64 408, !12, i64 416, !12, i64 428, !10, i64 440, !24, i64 444, !58, i64 452, !26, i64 456, !113, i64 464, !118, i64 512, !123, i64 536, !26, i64 584, !128, i64 592, !26, i64 648, !26, i64 649, !26, i64 650, !26, i64 651, !25, i64 652, !26, i64 654, !26, i64 655}
!79 = !{!"_ZTS3Map", !80, i64 8, !81, i64 16, !90, i64 64, !92, i64 120, !93, i64 128, !94, i64 136}
!80 = !{!"p1 _ZTS8IGameDef", !18, i64 0}
!81 = !{!"_ZTSSt3setIP16MapEventReceiverSt4lessIS1_ESaIS1_EE", !82, i64 0}
!82 = !{!"_ZTSSt8_Rb_treeIP16MapEventReceiverS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE", !83, i64 0}
!83 = !{!"_ZTSNSt8_Rb_treeIP16MapEventReceiverS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEE", !84, i64 0, !86, i64 8}
!84 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIP16MapEventReceiverEE", !85, i64 0}
!85 = !{!"_ZTSSt4lessIP16MapEventReceiverE"}
!86 = !{!"_ZTSSt15_Rb_tree_header", !87, i64 0, !32, i64 32}
!87 = !{!"_ZTSSt18_Rb_tree_node_base", !88, i64 0, !89, i64 8, !89, i64 16, !89, i64 24}
!88 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!89 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!90 = !{!"_ZTSSt13unordered_mapIN4core8vector2dIsEEP9MapSectorSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE", !91, i64 0}
!91 = !{!"_ZTSSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE", !37, i64 0, !32, i64 8, !39, i64 16, !32, i64 24, !41, i64 32, !40, i64 48}
!92 = !{!"p1 _ZTS9MapSector", !18, i64 0}
!93 = !{!"_ZTSN4core8vector2dIsEE", !25, i64 0, !25, i64 2}
!94 = !{!"p1 _ZTS14NodeDefManager", !18, i64 0}
!95 = !{!"_ZTSN5scene10ISceneNodeE", !96, i64 8, !63, i64 48, !12, i64 112, !12, i64 124, !12, i64 136, !101, i64 152, !107, i64 176, !17, i64 192, !20, i64 200, !6, i64 208, !25, i64 212, !25, i64 214, !26, i64 216, !26, i64 217}
!96 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !97, i64 0}
!97 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !98, i64 0}
!98 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !99, i64 0}
!99 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !100, i64 0}
!100 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !7, i64 0, !26, i64 32}
!101 = !{!"_ZTSNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EEE", !102, i64 0}
!102 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EEE", !103, i64 0}
!103 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EE10_List_implE", !104, i64 0}
!104 = !{!"_ZTSNSt8__detail17_List_node_headerE", !105, i64 0, !32, i64 16}
!105 = !{!"_ZTSNSt8__detail15_List_node_baseE", !106, i64 0, !106, i64 8}
end_hunk_0
