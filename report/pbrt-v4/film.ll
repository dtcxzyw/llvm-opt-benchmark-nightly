Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/film?download=true
inline.NumInlined: 4433
inline.NumDeleted: 1046
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZNK4pbrt4Film11GetFilenameB5cxx11Ev:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.d = and i64 %.val, 144115188075855871
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = lshr i64 %.val, 57
  %i.g = trunc nuw nsw i64 %i.f to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.h = getelementptr i8, ptr %i.e, i64 48
  %.val9.i.i = load ptr, ptr %i.h, align 8, !tbaa !33, !noalias !286 ; 6 uses
  %i.i = getelementptr i8, ptr %i.e, i64 56
  %.val10.i.i = load i64, ptr %i.i, align 8, !tbaa !31, !noalias !286 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.k = icmp ugt i64 %.val10.i.i, 15             ; 3 uses
  switch i32 %i.g, label %bb.h [
    i32 1, label %bb.b
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  store ptr %i.j, ptr %0, align 8, !tbaa !29, !alias.scope !289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30, !noalias !289
  store i64 %.val10.i.i, ptr %i.c, align 8, !tbaa !34, !noalias !289
  br i1 %i.k, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !33, !alias.scope !289
  %i.m = load i64, ptr %i.c, align 8, !tbaa !34, !noalias !289
  store i64 %i.m, ptr %i.j, align 8, !tbaa !32, !alias.scope !289
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i.i.i, %bb.b
  %i.n = phi ptr [ %i.l, %.noexc.i.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  switch i64 %.val10.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %"_ZZNK4pbrt4Film11GetFilenameB5cxx11EvENK3$_0clIPKNS_7RGBFilmEEEDaT_.exit.i.i"
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.o = load i8, ptr %.val9.i.i, align 1, !tbaa !32, !noalias !287
  store i8 %i.o, ptr %i.n, align 1, !tbaa !32
  br label %"_ZZNK4pbrt4Film11GetFilenameB5cxx11EvENK3$_0clIPKNS_7RGBFilmEEEDaT_.exit.i.i"

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr readonly align 1 %.val9.i.i, i64 %.val10.i.i, i1 false)
  br label %"_ZZNK4pbrt4Film11GetFilenameB5cxx11EvENK3$_0clIPKNS_7RGBFilmEEEDaT_.exit.i.i"

"_ZZNK4pbrt4Film11GetFilenameB5cxx11EvENK3$_0clIPKNS_7RGBFilmEEEDaT_.exit.i.i": ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i.i
  %i.p = load i64, ptr %i.c, align 8, !tbaa !34, !noalias !289 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !31, !alias.scope !289
  %i.r = load ptr, ptr %0, align 8, !tbaa !33, !alias.scope !289
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30, !noalias !289
  br label %"_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE11DispatchCPUIRZNKS_4Film11GetFilenameB5cxx11EvE3$_0EEDcOT_.exit"

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  store ptr %i.j, ptr %0, align 8, !tbaa !29, !alias.scope !292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !292
  store i64 %.val10.i.i, ptr %i.b, align 8, !tbaa !34, !noalias !292
  br i1 %i.k, label %.noexc.i.i.i12.i.i, label %._crit_edge.i.i.i.i11.i.i

.noexc.i.i.i12.i.i:                               ; preds = %bb.e
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !33, !alias.scope !292
  %i.u = load i64, ptr %i.b, align 8, !tbaa !34, !noalias !292
  store i64 %i.u, ptr %i.j, align 8, !tbaa !32, !alias.scope !292
  br label %._crit_edge.i.i.i.i11.i.i

._crit_edge.i.i.i.i11.i.i:                        ; preds = %.noexc.i.i.i12.i.i, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc.i.i.i12.i.i ], [ %i.j, %bb.e ] ; 2 uses
  switch i64 %.val10.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %"_ZZNK4pbrt4Film11GetFilenameB5cxx11EvENK3$_0clIPKNS_11GBufferFilmEEEDaT_.exit.i.i"
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i11.i.i
  %i.w = load i8, ptr %.val9.i.i, align 1, !tbaa !32, !noalias !290
  store i8 %i.w, ptr %i.v, align 1, !tbaa !32
  br label %"_ZZNK4pbrt4Film11GetFilenameB5cxx11EvENK3$_0clIPKNS_11GBufferFilmEEEDaT_.exit.i.i"

bb.g:                                             ; preds = %._crit_edge.i.i.i.i11.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr readonly align 1 %.val9.i.i, i64 %.val10.i.i, i1 false)
  br label %"_ZZNK4pbrt4Film11GetFilenameB5cxx11EvENK3$_0clIPKNS_11GBufferFilmEEEDaT_.exit.i.i"

"_ZZNK4pbrt4Film11GetFilenameB5cxx11EvENK3$_0clIPKNS_11GBufferFilmEEEDaT_.exit.i.i": ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i11.i.i
  %i.x = load i64, ptr %i.b, align 8, !tbaa !34, !noalias !292 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !31, !alias.scope !292
  %i.z = load ptr, ptr %0, align 8, !tbaa !33, !alias.scope !292
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !292
  br label %"_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE11DispatchCPUIRZNKS_4Film11GetFilenameB5cxx11EvE3$_0EEDcOT_.exit"

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  store ptr %i.j, ptr %0, align 8, !tbaa !29, !alias.scope !295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !295
  store i64 %.val10.i.i, ptr %i.a, align 8, !tbaa !34, !noalias !295
  br i1 %i.k, label %.noexc.i.i.i14.i.i, label %._crit_edge.i.i.i.i13.i.i

.noexc.i.i.i14.i.i:                               ; preds = %bb.h
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !33, !alias.scope !295
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !34, !noalias !295
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !32, !alias.scope !295
  br label %._crit_edge.i.i.i.i13.i.i

._crit_edge.i.i.i.i13.i.i:                        ; preds = %.noexc.i.i.i14.i.i, %bb.h
  %i.ad = phi ptr [ %i.ab, %.noexc.i.i.i14.i.i ], [ %i.j, %bb.h ] ; 2 uses
  switch i64 %.val10.i.i, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %"_ZZNK4pbrt4Film11GetFilenameB5cxx11EvENK3$_0clIPKNS_12SpectralFilmEEEDaT_.exit.i.i"
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i13.i.i
  %i.ae = load i8, ptr %.val9.i.i, align 1, !tbaa !32, !noalias !293
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !32
  br label %"_ZZNK4pbrt4Film11GetFilenameB5cxx11EvENK3$_0clIPKNS_12SpectralFilmEEEDaT_.exit.i.i"

bb.j:                                             ; preds = %._crit_edge.i.i.i.i13.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr readonly align 1 %.val9.i.i, i64 %.val10.i.i, i1 false)
  br label %"_ZZNK4pbrt4Film11GetFilenameB5cxx11EvENK3$_0clIPKNS_12SpectralFilmEEEDaT_.exit.i.i"

"_ZZNK4pbrt4Film11GetFilenameB5cxx11EvENK3$_0clIPKNS_12SpectralFilmEEEDaT_.exit.i.i": ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i13.i.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !34, !noalias !295 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !31, !alias.scope !295
  %i.ah = load ptr, ptr %0, align 8, !tbaa !33, !alias.scope !295
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !295
  br label %"_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE11DispatchCPUIRZNKS_4Film11GetFilenameB5cxx11EvE3$_0EEDcOT_.exit"

"_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE11DispatchCPUIRZNKS_4Film11GetFilenameB5cxx11EvE3$_0EEDcOT_.exit": ; preds = %"_ZZNK4pbrt4Film11GetFilenameB5cxx11EvENK3$_0clIPKNS_7RGBFilmEEEDaT_.exit.i.i", %"_ZZNK4pbrt4Film11GetFilenameB5cxx11EvENK3$_0clIPKNS_11GBufferFilmEEEDaT_.exit.i.i", %"_ZZNK4pbrt4Film11GetFilenameB5cxx11EvENK3$_0clIPKNS_12SpectralFilmEEEDaT_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt18FilmBaseParametersC2ERKNS_19ParameterDictionaryENS_6FilterEPKNS_11PixelSensorEPKNS_7FileLocE(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 32), (40, 48)) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::vector", align 8      ; 16 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %18 = alloca %"class.std::vector.44", align 8   ; 13 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.pbrt::Bounds2.49", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <4 x i64> <i64 0, i64 9223372034707292159, i64 -9223372034707292160, i64 0>, ptr %0, align 8
  %i.f = load i64, ptr %2, align 8, !tbaa !36
  store i64 %i.f, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.g, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store i64 0, ptr %i.j, align 8, !tbaa !31
  store i8 0, ptr %i.i, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.k, ptr %10, align 8, !tbaa !29
  store i64 7308604897068083558, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 8, ptr %i.l, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i8 0, ptr %i.m, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.n, ptr %11, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !31
  store i8 0, ptr %i.n, align 8, !tbaa !32
  invoke void @_ZNK4pbrt19ParameterDictionary12GetOneStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.a unwind label %bb.l

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !33   ; 6 uses
  %22 = icmp eq ptr %i.p, %i.i
  %i.q = load ptr, ptr %9, align 8, !tbaa !33     ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.s = icmp eq ptr %i.q, %i.r                   ; 2 uses
  br i1 %22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.s, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.s, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  switch i64 %i.u, label %bb.d [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.w = load i8, ptr %i.q, align 1, !tbaa !32
  store i8 %i.w, ptr %i.p, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.q, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.x = load i64, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  store i64 %i.x, ptr %i.j, align 8, !tbaa !31
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 0, ptr %i.z, align 1, !tbaa !32
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.q, ptr %i.h, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ab = load <2 x i64>, ptr %i.aa, align 8, !tbaa !32
  store <2 x i64> %i.ab, ptr %i.j, align 8, !tbaa !32
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !32
  store ptr %i.q, ptr %i.h, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ae = load <2 x i64>, ptr %i.ad, align 8, !tbaa !32
  store <2 x i64> %i.ae, ptr %i.j, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.p, ptr %9, align 8, !tbaa !33
  store i64 %i.ac, ptr %i.r, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.r, ptr %9, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.e, %bb.f
  %i.af = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.p, %bb.e ], [ %i.r, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !31
  store i8 0, ptr %i.af, align 1, !tbaa !32
  %i.ah = load ptr, ptr %9, align 8, !tbaa !33    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !32
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.am = load ptr, ptr %11, align 8, !tbaa !33   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.n
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.n, align 8, !tbaa !32
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.aq = load ptr, ptr %10, align 8, !tbaa !33   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.k
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.as = load i64, ptr %i.k, align 8, !tbaa !32
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.au = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !305 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !31
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = load i64, ptr %i.j, align 8, !tbaa !31
  %i.ba = icmp eq i64 %i.az, 0                    ; 2 uses
  br i1 %i.ay, label %bb.o, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  br i1 %i.ba, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.bb, ptr %8, align 8, !tbaa !29, !alias.scope !306
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !31, !alias.scope !306
  store i8 0, ptr %i.bb, align 8, !tbaa !32, !alias.scope !306
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_EEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %8, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES6_PKcDpOT_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %8, align 8, !tbaa !33, !alias.scope !306 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.bb
  br i1 %i.bf, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bg = load i64, ptr %i.bb, align 8, !tbaa !32, !alias.scope !306
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #31
  br label %.body

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES6_PKcDpOT_.exit.i: ; preds = %bb.h
  %i.bi = load ptr, ptr %8, align 8, !tbaa !33
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef %i.bi)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES6_PKcDpOT_.exit.i
  %i.bj = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.bb
  br i1 %i.bk, label %_ZN4pbrt7WarningIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvPKNS_7FileLocEPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.bl = load i64, ptr %i.bb, align 8, !tbaa !32
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #31
  br label %_ZN4pbrt7WarningIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvPKNS_7FileLocEPKcDpOT_.exit

bb.k:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES6_PKcDpOT_.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bb
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.k
  %i.bq = load i64, ptr %i.bb, align 8, !tbaa !32
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.body

_ZN4pbrt7WarningIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvPKNS_7FileLocEPKcDpOT_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %.pre = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !305
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load ptr, ptr %11, align 8, !tbaa !33   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.n
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.l
  %i.bv = load i64, ptr %i.n, align 8, !tbaa !32
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.bx = load ptr, ptr %10, align 8, !tbaa !33   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.k
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.bz = load i64, ptr %i.k, align 8, !tbaa !32
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.body

bb.m:                                             ; preds = %bb.p, %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZN4pbrt7WarningIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvPKNS_7FileLocEPKcDpOT_.exit, %bb.g
  %i.cc = phi ptr [ %.pre, %_ZN4pbrt7WarningIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvPKNS_7FileLocEPKcDpOT_.exit ], [ %i.au, %bb.g ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.cd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.m

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  br i1 %i.ba, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.p:                                             ; preds = %bb.o
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.p, %bb.n, %bb.o
  %i.cf = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !305
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 13
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !309, !range !46, !noundef !47
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.q, label %._crit_edge.i.i118

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.cj = invoke i64 @_ZN4pbrt3GUI13GetResolutionEv()
          to label %._crit_edge.i.i98 unwind label %bb.t

._crit_edge.i.i98:                                ; preds = %bb.q
  store i64 %i.cj, ptr %0, align 8
end_hunk_0
