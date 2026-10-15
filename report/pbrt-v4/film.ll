Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/film?download=true
inline.NumInlined: 4433
inline.NumDeleted: 1046
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZNK4pbrt4Film8ToStringB5cxx11Ev:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.f, align 1, !tbaa !32
  br label %"_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE11DispatchCPUIRZNKS_4Film8ToStringB5cxx11EvE3$_0EEDcOT_.exit"

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.a, 57
  %i.h = trunc nuw nsw i64 %i.g to i32
  switch i32 %i.h, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK4pbrt7RGBFilm8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %i.c)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE11DispatchCPUIRZNKS_4Film8ToStringB5cxx11EvE3$_0EEDcOT_.exit"

bb.d:                                             ; preds = %bb.b
  tail call void @_ZNK4pbrt11GBufferFilm8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(872) %i.c)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE11DispatchCPUIRZNKS_4Film8ToStringB5cxx11EvE3$_0EEDcOT_.exit"

bb.e:                                             ; preds = %bb.b
  tail call void @_ZNK4pbrt12SpectralFilm8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(180) %i.c)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE11DispatchCPUIRZNKS_4Film8ToStringB5cxx11EvE3$_0EEDcOT_.exit"

"_ZNK4pbrt13TaggedPointerIJNS_7RGBFilmENS_11GBufferFilmENS_12SpectralFilmEEE11DispatchCPUIRZNKS_4Film8ToStringB5cxx11EvE3$_0EEDcOT_.exit": ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i.i
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt4Film11GetFilenameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %.val = load i64, ptr %1, align 8, !tbaa !20    ; 2 uses
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
  %i.q = icmp eq ptr %i.p, %i.i
  %i.r = load ptr, ptr %9, align 8, !tbaa !33     ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.t = icmp eq ptr %i.r, %i.s                   ; 2 uses
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.t, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.t, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !31   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  switch i64 %i.v, label %bb.d [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.x = load i8, ptr %i.r, align 1, !tbaa !32
  store i8 %i.x, ptr %i.p, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.r, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.y = load i64, ptr %i.u, align 8, !tbaa !31   ; 2 uses
  store i64 %i.y, ptr %i.j, align 8, !tbaa !31
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.aa, align 1, !tbaa !32
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.r, ptr %i.h, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !tbaa !32
  store <2 x i64> %i.ac, ptr %i.j, align 8, !tbaa !32
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ad = load i64, ptr %i.i, align 8, !tbaa !32
  store ptr %i.r, ptr %i.h, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !tbaa !32
  store <2 x i64> %i.af, ptr %i.j, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.p, ptr %9, align 8, !tbaa !33
  store i64 %i.ad, ptr %i.s, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.s, ptr %9, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.e, %bb.f
  %i.ag = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.p, %bb.e ], [ %i.s, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !31
  store i8 0, ptr %i.ag, align 1, !tbaa !32
  %i.ai = load ptr, ptr %9, align 8, !tbaa !33    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !32
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.an = load ptr, ptr %11, align 8, !tbaa !33   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.n
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load i64, ptr %i.n, align 8, !tbaa !32
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.ar = load ptr, ptr %10, align 8, !tbaa !33   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.k
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.at = load i64, ptr %i.k, align 8, !tbaa !32
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.av = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !305 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !31
  %i.az = icmp eq i64 %i.ay, 0
  %i.ba = load i64, ptr %i.j, align 8, !tbaa !31
  %i.bb = icmp eq i64 %i.ba, 0                    ; 2 uses
  br i1 %i.az, label %bb.o, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  br i1 %i.bb, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.bc, ptr %8, align 8, !tbaa !29, !alias.scope !306
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.bd, align 8, !tbaa !31, !alias.scope !306
  store i8 0, ptr %i.bc, align 8, !tbaa !32, !alias.scope !306
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_EEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %8, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES6_PKcDpOT_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %8, align 8, !tbaa !33, !alias.scope !306 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.bc
  br i1 %i.bg, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bh = load i64, ptr %i.bc, align 8, !tbaa !32, !alias.scope !306
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #31
  br label %.body

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES6_PKcDpOT_.exit.i: ; preds = %bb.h
  %i.bj = load ptr, ptr %8, align 8, !tbaa !33
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef %i.bj)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES6_PKcDpOT_.exit.i
  %i.bk = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bc
  br i1 %i.bl, label %_ZN4pbrt7WarningIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvPKNS_7FileLocEPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.bm = load i64, ptr %i.bc, align 8, !tbaa !32
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #31
  br label %_ZN4pbrt7WarningIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvPKNS_7FileLocEPKcDpOT_.exit

bb.k:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES6_PKcDpOT_.exit.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bc
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
end_hunk_0
begin_hunk_1_@_ZN4pbrt18FilmBaseParametersC2ERKNS_19ParameterDictionaryENS_6FilterEPKNS_11PixelSensorEPKNS_7FileLocE:._crit_edge.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !313
  %i.ft = icmp eq ptr %i.fq, %i.fs
  br i1 %i.ft, label %._crit_edge.i.i292, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef nonnull @.str.10)
          to label %._crit_edge.i.i292 unwind label %bb.af

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.fu = load ptr, ptr %16, align 8, !tbaa !313  ; 6 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !313 ; 2 uses
  %i.fx = icmp eq ptr %i.fu, %i.fw
  br i1 %i.fx, label %._crit_edge.i.i292, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fu to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 2 uses
  %.not = icmp eq i64 %i.ga, 16
  br i1 %.not, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = lshr exact i64 %i.ga, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.gc = trunc i64 %i.gb to i32
  store i32 %i.gc, ptr %i.a, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.gd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.gd, ptr %7, align 8, !tbaa !29, !alias.scope !314
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ge, align 8, !tbaa !31, !alias.scope !314
  store i8 0, ptr %i.gd, align 8, !tbaa !32, !alias.scope !314
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIiJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN4pbrt12StringPrintfIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load ptr, ptr %7, align 8, !tbaa !33, !alias.scope !314 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.gd
  br i1 %i.gh, label %.body201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i195: ; preds = %bb.al
  %i.gi = load i64, ptr %i.gd, align 8, !tbaa !32, !alias.scope !314
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #31
  br label %.body201

_ZN4pbrt12StringPrintfIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.ak
  %i.gk = load ptr, ptr %7, align 8, !tbaa !33
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef %i.gk)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %_ZN4pbrt12StringPrintfIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.gl = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.gd
  br i1 %i.gm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i199: ; preds = %bb.am
  %i.gn = load i64, ptr %i.gd, align 8, !tbaa !32
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i200

bb.an:                                            ; preds = %_ZN4pbrt12StringPrintfIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.gp = landingpad { ptr, i32 }
          cleanup
  %i.gq = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.gd
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.an
  %i.gs = load i64, ptr %i.gd, align 8, !tbaa !32
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %.body201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i200: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %._crit_edge.i.i292

.body201:                                         ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %eh.lpad-body202 = phi { ptr, i32 } [ %i.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i195 ], [ %i.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.gf, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.bz

bb.ao:                                            ; preds = %bb.aj
  %i.gu = load i32, ptr %i.fu, align 4, !tbaa !52 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !52 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !52 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !52 ; 2 uses
  %.sroa.speculated4.i.i209 = call i32 @llvm.smin.i32(i32 %i.gy, i32 %i.gu) ; 3 uses
  %.sroa.speculated.i.i210 = call i32 @llvm.smin.i32(i32 %i.ha, i32 %i.gw) ; 3 uses
  %.sroa.speculated4.i14.i215 = call i32 @llvm.smax.i32(i32 %i.gu, i32 %i.gy) ; 2 uses
  %.sroa.speculated.i15.i216 = call i32 @llvm.smax.i32(i32 %i.gw, i32 %i.ha) ; 2 uses
  %.sroa.03.0.copyload.i222 = load i64, ptr %i.c, align 8, !tbaa !52 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i226 = trunc i64 %.sroa.03.0.copyload.i222 to i32
  %.sroa.3.0.extract.shift.i.i227 = lshr i64 %.sroa.03.0.copyload.i222, 32
  %.sroa.3.0.extract.trunc.i.i228 = trunc nuw i64 %.sroa.3.0.extract.shift.i.i227 to i32
  %.not.i.i253 = icmp slt i32 %.sroa.speculated4.i.i209, %.sroa.0.0.extract.trunc.i.i226
  %i.hb = icmp slt i32 %.sroa.speculated.i.i210, %.sroa.3.0.extract.trunc.i.i228
  %i.hc = select i1 %.not.i.i253, i1 true, i1 %i.hb
  br i1 %i.hc, label %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread, label %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261

_ZNK4pbrt7Bounds2IiEneERKS1_.exit261:             ; preds = %bb.ao
  %.sroa.0.0.copyload.i236 = load i64, ptr %i.d, align 8, !tbaa !52 ; 2 uses
  %.sroa.3.0.extract.shift.i13.i241 = lshr i64 %.sroa.0.0.copyload.i236, 32
  %.sroa.3.0.extract.trunc.i14.i242 = trunc nuw i64 %.sroa.3.0.extract.shift.i13.i241 to i32 ; 2 uses
  %.sroa.0.0.extract.trunc.i12.i240 = trunc i64 %.sroa.0.0.copyload.i236 to i32 ; 2 uses
  %.not.i5.i258 = icmp sgt i32 %.sroa.speculated4.i14.i215, %.sroa.0.0.extract.trunc.i12.i240
  %i.hd = icmp sgt i32 %.sroa.speculated.i15.i216, %.sroa.3.0.extract.trunc.i14.i242
  %i.he = select i1 %.not.i5.i258, i1 true, i1 %i.hd
  br i1 %i.he, label %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread, label %bb.aq

_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread:      ; preds = %bb.ao, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef nonnull @.str.9)
          to label %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread._crit_edge unwind label %bb.ap

_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread._crit_edge: ; preds = %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread
  %.sroa.03.0.copyload.i263.pre = load i64, ptr %i.c, align 8, !tbaa !52 ; 2 uses
  %.sroa.0.0.copyload.i277.pre = load i64, ptr %i.d, align 8, !tbaa !52 ; 2 uses
  %.pre526 = trunc i64 %.sroa.03.0.copyload.i263.pre to i32
  %.pre527 = lshr i64 %.sroa.03.0.copyload.i263.pre, 32
  %.pre528 = trunc nuw i64 %.pre527 to i32
  %.pre529 = trunc i64 %.sroa.0.0.copyload.i277.pre to i32
  %.pre530 = lshr i64 %.sroa.0.0.copyload.i277.pre, 32
  %.pre531 = trunc nuw i64 %.pre530 to i32
  %i.hf = call i32 @llvm.smax.i32(i32 %.sroa.speculated4.i.i209, i32 %.pre526)
  %i.hg = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i210, i32 %.pre528)
  br label %bb.aq

bb.ap:                                            ; preds = %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.aq:                                            ; preds = %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread._crit_edge, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261
  %.sroa.3.0.extract.trunc.i14.i283.pre-phi = phi i32 [ %.pre531, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread._crit_edge ], [ %.sroa.3.0.extract.trunc.i14.i242, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261 ]
  %.sroa.0.0.extract.trunc.i12.i281.pre-phi = phi i32 [ %.pre529, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread._crit_edge ], [ %.sroa.0.0.extract.trunc.i12.i240, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261 ]
  %.sroa.3.0.extract.trunc.i.i269.pre-phi = phi i32 [ %i.hg, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread._crit_edge ], [ %.sroa.speculated.i.i210, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261 ]
  %.sroa.0.0.extract.trunc.i.i267.pre-phi = phi i32 [ %i.hf, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261.thread._crit_edge ], [ %.sroa.speculated4.i.i209, %_ZNK4pbrt7Bounds2IiEneERKS1_.exit261 ]
  %.sroa.2.0.insert.ext.i.i272 = zext i32 %.sroa.3.0.extract.trunc.i.i269.pre-phi to i64
  %.sroa.2.0.insert.shift.i.i273 = shl nuw i64 %.sroa.2.0.insert.ext.i.i272, 32
  %.sroa.09.0.insert.ext.i.i274 = zext i32 %.sroa.0.0.extract.trunc.i.i267.pre-phi to i64
  %.sroa.09.0.insert.insert.i.i275 = or disjoint i64 %.sroa.2.0.insert.shift.i.i273, %.sroa.09.0.insert.ext.i.i274
  %.sroa.speculated4.i15.i284 = call i32 @llvm.smin.i32(i32 %.sroa.0.0.extract.trunc.i12.i281.pre-phi, i32 %.sroa.speculated4.i14.i215)
  %.sroa.speculated.i16.i285 = call i32 @llvm.smin.i32(i32 %.sroa.3.0.extract.trunc.i14.i283.pre-phi, i32 %.sroa.speculated.i15.i216)
  %.sroa.2.0.insert.ext.i17.i286 = zext i32 %.sroa.speculated.i16.i285 to i64
  %.sroa.2.0.insert.shift.i18.i287 = shl nuw i64 %.sroa.2.0.insert.ext.i17.i286, 32
  %.sroa.09.0.insert.ext.i19.i288 = zext i32 %.sroa.speculated4.i15.i284 to i64
  %.sroa.09.0.insert.insert.i20.i289 = or disjoint i64 %.sroa.2.0.insert.shift.i18.i287, %.sroa.09.0.insert.ext.i19.i288
  store i64 %.sroa.09.0.insert.insert.i.i275, ptr %i.c, align 8
  store i64 %.sroa.09.0.insert.insert.i20.i289, ptr %i.d, align 8
  br label %._crit_edge.i.i292

._crit_edge.i.i292:                               ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i200
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.hi = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.hi, ptr %19, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.hi, ptr noundef nonnull align 1 dereferenceable(10) @.str.12, i64 10, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 10, ptr %i.hj, align 8, !tbaa !31
  %i.hk = getelementptr inbounds nuw i8, ptr %19, i64 26
  store i8 0, ptr %i.hk, align 2, !tbaa !32
  invoke void @_ZNK4pbrt19ParameterDictionary13GetFloatArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.44") align 8 %18, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %._crit_edge.i.i292
  %i.hl = load ptr, ptr %19, align 8, !tbaa !33   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.hi
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296: ; preds = %bb.ar
  %i.hn = load i64, ptr %i.hi, align 8, !tbaa !32
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.hp = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !305 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 264
  %i.hr = load i8, ptr %i.hq, align 4, !tbaa !315, !range !46, !noundef !47
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.as, label %bb.bf

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(16) %i.ht, i64 16, i1 false)
  %.sroa.04.0.copyload.i300 = load <2 x float>, ptr %20, align 8 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.hv = fcmp olt <2 x float> %.sroa.04.0.copyload.i300, zeroinitializer
  %i.hw = select <2 x i1> %i.hv, <2 x float> zeroinitializer, <2 x float> %.sroa.04.0.copyload.i300
  %i.hx = fcmp une <2 x float> %i.hw, %.sroa.04.0.copyload.i300 ; 2 uses
  %i.hy = extractelement <2 x i1> %i.hx, i64 0
  %i.hz = extractelement <2 x i1> %i.hx, i64 1
  %i.ia = select i1 %i.hy, i1 true, i1 %i.hz
  br i1 %i.ia, label %_ZNK4pbrt7Bounds2IfEneERKS1_.exit.thread, label %_ZNK4pbrt7Bounds2IfEneERKS1_.exit

_ZNK4pbrt7Bounds2IfEneERKS1_.exit:                ; preds = %bb.as
  %.sroa.01.0.copyload.i308 = load <2 x float>, ptr %i.hu, align 8 ; 4 uses
  %i.ib = fcmp ogt <2 x float> %.sroa.01.0.copyload.i308, splat (float 1.000000e+00)
  %i.ic = select <2 x i1> %i.ib, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.01.0.copyload.i308
  %i.id = fcmp une <2 x float> %i.ic, %.sroa.01.0.copyload.i308 ; 2 uses
  %i.ie = extractelement <2 x i1> %i.id, i64 0
  %i.if = extractelement <2 x i1> %i.id, i64 1
  %i.ig = select i1 %i.ie, i1 true, i1 %i.if
  br i1 %i.ig, label %_ZNK4pbrt7Bounds2IfEneERKS1_.exit.thread, label %bb.az

_ZNK4pbrt7Bounds2IfEneERKS1_.exit.thread:         ; preds = %bb.as, %_ZNK4pbrt7Bounds2IfEneERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ih = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.ih, ptr %6, align 8, !tbaa !29, !alias.scope !316
  %i.ii = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ii, align 8, !tbaa !31, !alias.scope !316
  store i8 0, ptr %i.ih, align 8, !tbaa !32, !alias.scope !316
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNS_7Bounds2IfEEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %6, ptr noundef nonnull @.str.13, ptr noundef nonnull align 4 dereferenceable(16) %20)
          to label %_ZN4pbrt12StringPrintfIJRNS_7Bounds2IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.at

bb.at:                                            ; preds = %_ZNK4pbrt7Bounds2IfEneERKS1_.exit.thread
  %i.ij = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ik = load ptr, ptr %6, align 8, !tbaa !33, !alias.scope !316 ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.ih
  br i1 %i.il, label %.body325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i316: ; preds = %bb.at
  %i.im = load i64, ptr %i.ih, align 8, !tbaa !32, !alias.scope !316
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #31
  br label %.body325

_ZN4pbrt12StringPrintfIJRNS_7Bounds2IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %_ZNK4pbrt7Bounds2IfEneERKS1_.exit.thread
  %i.io = load ptr, ptr %6, align 8, !tbaa !33
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef %i.io)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNS_7Bounds2IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.ip = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.ih
  br i1 %i.iq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i323: ; preds = %bb.au
  %i.ir = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i324

bb.av:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNS_7Bounds2IfEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.it = landingpad { ptr, i32 }
          cleanup
  %i.iu = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.ih
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i320: ; preds = %bb.av
  %i.iw = load i64, ptr %i.ih, align 8, !tbaa !32
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i321: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i320
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.body325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i324: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.sroa.04.0.copyload.i335 = load <2 x float>, ptr %20, align 8, !tbaa !55 ; 2 uses
  %i.iy = fcmp olt <2 x float> %.sroa.04.0.copyload.i335, zeroinitializer
  %i.iz = select <2 x i1> %i.iy, <2 x float> zeroinitializer, <2 x float> %.sroa.04.0.copyload.i335 ; 2 uses
  %.sroa.01.0.copyload.i343 = load <2 x float>, ptr %i.hu, align 8, !tbaa !55 ; 2 uses
  %i.ja = fcmp ogt <2 x float> %.sroa.01.0.copyload.i343, splat (float 1.000000e+00)
  %i.jb = select <2 x i1> %i.ja, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.01.0.copyload.i343 ; 2 uses
  store <2 x float> %i.iz, ptr %20, align 8
  store <2 x float> %i.jb, ptr %i.hu, align 8
  br label %bb.az

bb.aw:                                            ; preds = %._crit_edge.i.i292
  %i.jc = landingpad { ptr, i32 }
          cleanup
  %i.jd = load ptr, ptr %19, align 8, !tbaa !33   ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.hi
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %bb.aw
  %i.jf = load i64, ptr %i.hi, align 8, !tbaa !32
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit429

bb.ax:                                            ; preds = %bb.br, %bb.bk, %bb.bh
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ay:                                            ; preds = %bb.bd, %bb.ba
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.body325

bb.az:                                            ; preds = %_ZNK4pbrt7Bounds2IfEneERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i324
  %i.jj = phi <2 x float> [ %.sroa.01.0.copyload.i308, %_ZNK4pbrt7Bounds2IfEneERKS1_.exit ], [ %i.jb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i324 ]
  %i.jk = phi <2 x float> [ %.sroa.04.0.copyload.i300, %_ZNK4pbrt7Bounds2IfEneERKS1_.exit ], [ %i.iz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i324 ]
  %i.jl = load <2 x i32>, ptr %0, align 8, !tbaa !52
  %i.jm = sitofp <2 x i32> %i.jl to <2 x float>   ; 2 uses
  %i.jn = fmul <2 x float> %i.jk, %i.jm
  %i.jo = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.jn) ; 2 uses
  %i.jp = extractelement <2 x float> %i.jo, i64 0
  %i.jq = fptosi float %i.jp to i32               ; 2 uses
  %i.jr = extractelement <2 x float> %i.jo, i64 1
  %i.js = fptosi float %i.jr to i32               ; 2 uses
  %i.jt = fmul <2 x float> %i.jj, %i.jm
  %i.ju = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.jt)
  %i.jv = fptosi <2 x float> %i.ju to <2 x i32>   ; 2 uses
  %i.jw = shufflevector <2 x i32> %i.jv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jx = insertelement <2 x i32> <i32 poison, i32 -2147483648>, i32 %i.jq, i64 0
  %i.jy = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jw, <2 x i32> %i.jx)
  %i.jz = insertelement <2 x i32> <i32 2147483647, i32 poison>, i32 %i.jq, i64 1
  %i.ka = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.jy, <2 x i32> %i.jz)
  %i.kb = shufflevector <2 x i32> %i.jv, <2 x i32> poison, <2 x i32> <i32 1, i32 1>
  %i.kc = insertelement <2 x i32> <i32 poison, i32 -2147483648>, i32 %i.js, i64 0
  %i.kd = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.kb, <2 x i32> %i.kc)
  %i.ke = insertelement <2 x i32> <i32 2147483647, i32 poison>, i32 %i.js, i64 1
  %i.kf = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.kd, <2 x i32> %i.ke)
  %i.kg = zext <2 x i32> %i.kf to <2 x i64>
  %i.kh = shl nuw <2 x i64> %i.kg, splat (i64 32)
  %i.ki = zext <2 x i32> %i.ka to <2 x i64>
  %i.kj = or disjoint <2 x i64> %i.kh, %i.ki
  %i.kk = shufflevector <2 x i64> %i.kj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.kk, ptr %i.c, align 8
  %i.kl = load ptr, ptr %18, align 8, !tbaa !57
  %i.km = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !57
  %i.ko = icmp eq ptr %i.kl, %i.kn
  br i1 %i.ko, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef nonnull @.str.14)
          to label %bb.bb unwind label %bb.ay

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.kp = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !305
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 284
  %i.kr = load i8, ptr %i.kq, align 4, !tbaa !53, !range !46, !noundef !47
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kt = load ptr, ptr %16, align 8, !tbaa !313
  %i.ku = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !313
  %i.kw = icmp eq ptr %i.kt, %i.kv
  br i1 %i.kw, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef nonnull @.str.10)
          to label %bb.be unwind label %bb.ay

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.bq

.body325:                                         ; preds = %bb.at, %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i316
  %.pn70 = phi { ptr, i32 } [ %i.ji, %bb.ay ], [ %i.it, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i321 ], [ %i.ij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i316 ], [ %i.ij, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.bx

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298
  %i.kx = load ptr, ptr %18, align 8, !tbaa !57   ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !57 ; 2 uses
  %i.la = icmp eq ptr %i.kx, %i.kz
  br i1 %i.la, label %bb.bq, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lb = getelementptr inbounds nuw i8, ptr %i.hp, i64 284
  %i.lc = load i8, ptr %i.lb, align 4, !tbaa !53, !range !46, !noundef !47
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef nonnull @.str.15)
          to label %bb.bq unwind label %bb.ax

bb.bi:                                            ; preds = %bb.bg
  %i.le = ptrtoint ptr %i.kz to i64
  %i.lf = ptrtoint ptr %i.kx to i64
  %i.lg = sub i64 %i.le, %i.lf                    ; 2 uses
  %i.lh = icmp eq i64 %i.lg, 16
  br i1 %i.lh, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.li = load ptr, ptr %16, align 8, !tbaa !313
  %i.lj = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !313
  %i.ll = icmp eq ptr %i.li, %i.lk
  br i1 %i.ll, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef nonnull @.str.10)
          to label %._crit_edge unwind label %bb.ax

._crit_edge:                                      ; preds = %bb.bk
  %.pre517 = load ptr, ptr %18, align 8, !tbaa !318
  br label %bb.bl

bb.bl:                                            ; preds = %._crit_edge, %bb.bj
  %i.lm = phi ptr [ %.pre517, %._crit_edge ], [ %i.kx, %bb.bj ]
  %i.ln = load <4 x float>, ptr %i.lm, align 4, !tbaa !55 ; 4 uses
  %i.lo = shufflevector <4 x float> %i.ln, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.lp = fcmp olt <4 x float> %i.ln, %i.lo
  %i.lq = shufflevector <4 x float> %i.ln, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.lr = shufflevector <4 x float> %i.ln, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ls = select <4 x i1> %i.lp, <4 x float> %i.lq, <4 x float> %i.lr ; 4 uses
  %i.lt = fcmp olt <4 x float> %i.ls, zeroinitializer ; 3 uses
  %i.lu = extractelement <4 x float> %i.ls, i64 0 ; 2 uses
  %i.lv = fcmp ogt float %i.lu, 1.000000e+00
  %..i377 = select i1 %i.lv, float 1.000000e+00, float %i.lu
  %i.lw = extractelement <4 x i1> %i.lt, i64 0
  %.0.i378 = select i1 %i.lw, float 0.000000e+00, float %..i377
  %i.lx = extractelement <4 x float> %i.ls, i64 2 ; 2 uses
  %i.ly = fcmp ogt float %i.lx, 1.000000e+00
  %..i383 = select i1 %i.ly, float 1.000000e+00, float %i.lx
  %i.lz = extractelement <4 x i1> %i.lt, i64 2
  %.0.i384 = select i1 %i.lz, float 0.000000e+00, float %..i383
  %i.ma = shufflevector <4 x float> %i.ls, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mb = fcmp ogt <2 x float> %i.ma, splat (float 1.000000e+00)
  %i.mc = select <2 x i1> %i.mb, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ma
  %i.md = shufflevector <4 x i1> %i.lt, <4 x i1> poison, <2 x i32> <i32 1, i32 3>
  %i.me = select <2 x i1> %i.md, <2 x float> zeroinitializer, <2 x float> %i.mc
  %i.mf = load <2 x i32>, ptr %0, align 8, !tbaa !52
  %i.mg = sitofp <2 x i32> %i.mf to <2 x float>   ; 3 uses
  %i.mh = fmul <2 x float> %i.me, %i.mg
  %i.mi = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.mh) ; 2 uses
  %i.mj = extractelement <2 x float> %i.mi, i64 0
  %i.mk = fptosi float %i.mj to i32               ; 2 uses
  %i.ml = extractelement <2 x float> %i.mi, i64 1
  %i.mm = fptosi float %i.ml to i32               ; 2 uses
  %i.mn = extractelement <2 x float> %i.mg, i64 0
  %i.mo = fmul float %.0.i378, %i.mn
  %i.mp = call noundef float @llvm.ceil.f32(float %i.mo)
  %i.mq = extractelement <2 x float> %i.mg, i64 1
  %i.mr = fmul float %.0.i384, %i.mq
  %i.ms = call noundef float @llvm.ceil.f32(float %i.mr)
  %i.mt = fptosi float %i.mp to i32               ; 2 uses
  %i.mu = fptosi float %i.ms to i32               ; 2 uses
  %.sroa.speculated4.i.i391 = call i32 @llvm.smin.i32(i32 %i.mt, i32 %i.mk)
  %.sroa.speculated.i.i392 = call i32 @llvm.smin.i32(i32 %i.mu, i32 %i.mm)
  %.sroa.2.0.insert.ext.i.i393 = zext i32 %.sroa.speculated.i.i392 to i64
  %.sroa.2.0.insert.shift.i.i394 = shl nuw i64 %.sroa.2.0.insert.ext.i.i393, 32
  %.sroa.09.0.insert.ext.i.i395 = zext i32 %.sroa.speculated4.i.i391 to i64
  %.sroa.09.0.insert.insert.i.i396 = or disjoint i64 %.sroa.2.0.insert.shift.i.i394, %.sroa.09.0.insert.ext.i.i395
  %.sroa.speculated4.i14.i397 = call i32 @llvm.smax.i32(i32 %i.mk, i32 %i.mt)
  %.sroa.speculated.i15.i398 = call i32 @llvm.smax.i32(i32 %i.mm, i32 %i.mu)
  %.sroa.2.0.insert.ext.i16.i399 = zext i32 %.sroa.speculated.i15.i398 to i64
  %.sroa.2.0.insert.shift.i17.i400 = shl nuw i64 %.sroa.2.0.insert.ext.i16.i399, 32
  %.sroa.09.0.insert.ext.i18.i401 = zext i32 %.sroa.speculated4.i14.i397 to i64
  %.sroa.09.0.insert.insert.i19.i402 = or disjoint i64 %.sroa.2.0.insert.shift.i17.i400, %.sroa.09.0.insert.ext.i18.i401
  store i64 %.sroa.09.0.insert.insert.i.i396, ptr %i.c, align 8
  store i64 %.sroa.09.0.insert.insert.i19.i402, ptr %i.d, align 8
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bi
  %i.mv = lshr exact i64 %i.lg, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.mw = trunc i64 %i.mv to i32
  store i32 %i.mw, ptr %i.b, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.mx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.mx, ptr %5, align 8, !tbaa !29, !alias.scope !319
  %i.my = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_1
begin_hunk_2_@_ZN4pbrt18FilmBaseParametersC2ERKNS_19ParameterDictionaryENS_6FilterEPKNS_11PixelSensorEPKNS_7FileLocE:._crit_edge.i.i
bb.by:                                            ; preds = %bb.bx
  %i.ov = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !320
  %i.ox = ptrtoint ptr %i.ow to i64
  %i.oy = ptrtoint ptr %i.ou to i64
  %i.oz = sub i64 %i.ox, %i.oy
  call void @_ZdlPvm(ptr noundef nonnull %i.ou, i64 noundef %i.oz) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit429

_ZNSt6vectorIfSaIfEED2Ev.exit429:                 ; preds = %bb.by, %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355
  %.pn74.pn = phi { ptr, i32 } [ %i.jc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355 ], [ %.pn74, %bb.bx ], [ %.pn74, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ap, %bb.af, %_ZNSt6vectorIfSaIfEED2Ev.exit429, %.body201
  %.pn74.pn.pn = phi { ptr, i32 } [ %.pn74.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit429 ], [ %i.hh, %bb.ap ], [ %eh.lpad-body202, %.body201 ], [ %i.fp, %bb.af ] ; 2 uses
  %i.pa = load ptr, ptr %16, align 8, !tbaa !322  ; 3 uses
  %.not.i.i.i430 = icmp eq ptr %i.pa, null
  br i1 %.not.i.i.i430, label %_ZNSt6vectorIiSaIiEED2Ev.exit431, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.pb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !323
  %i.pd = ptrtoint ptr %i.pc to i64
  %i.pe = ptrtoint ptr %i.pa to i64
  %i.pf = sub i64 %i.pd, %i.pe
  call void @_ZdlPvm(ptr noundef nonnull %i.pa, i64 noundef %i.pf) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit431

_ZNSt6vectorIiSaIiEED2Ev.exit431:                 ; preds = %bb.ca, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %.pn74.pn.pn.pn = phi { ptr, i32 } [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %.pn74.pn.pn, %bb.bz ], [ %.pn74.pn.pn, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %.body

.body:                                            ; preds = %bb.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNSt6vectorIiSaIiEED2Ev.exit431, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %.pn74.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit431 ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.db, %bb.t ], [ %.pn51.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %i.cc, %bb.m ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ], [ %i.be, %bb.i ]
  %i.pg = load ptr, ptr %i.h, align 8, !tbaa !33  ; 2 uses
  %i.ph = icmp eq ptr %i.pg, %i.i
  br i1 %i.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432: ; preds = %.body
  %i.pi = load i64, ptr %i.i, align 8, !tbaa !32
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432
  resume { ptr, i32 } %.pn74.pn.pn.pn.pn
}

declare void @_ZNK4pbrt19ParameterDictionary12GetOneStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare i64 @_ZN4pbrt3GUI13GetResolutionEv() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare noundef i32 @_ZNK4pbrt19ParameterDictionary9GetOneIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

declare void @_ZNK4pbrt19ParameterDictionary11GetIntArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZNK4pbrt19ParameterDictionary13GetFloatArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::vector.44") align 8, ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRNS_7Bounds2IiEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !29, !alias.scope !326
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !31, !alias.scope !326
  store i8 0, ptr %i.a, align 8, !tbaa !32, !alias.scope !326
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNS_7Bounds2IiEEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
          to label %_ZN4pbrt12StringPrintfIJRNS_7Bounds2IiEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !33, !alias.scope !326 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !32, !alias.scope !326
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRNS_7Bounds2IiEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !33
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef %0, ptr noundef %i.h) #32
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNS_7Bounds2IiEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNS_7Bounds2IiEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !33     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !32
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %common.resume
}

declare noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32), float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt8FilmBase12SampleBoundsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36
  %i.c = and i64 %i.b, 144115188075855871
  %i.d = inttoptr i64 %i.c to ptr
  %.sroa.0.0.i.i.i = load <2 x float>, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.g = load <4 x i32>, ptr %i.e, align 8, !tbaa !52
  %i.h = sitofp <4 x i32> %i.g to <4 x float>     ; 2 uses
  %i.i = fadd <4 x float> %i.f, %i.h
  %i.j = fsub <4 x float> %i.h, %i.f
  %i.k = shufflevector <4 x float> %i.j, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.l = fadd <4 x float> %i.k, <float 5.000000e-01, float 5.000000e-01, float -5.000000e-01, float -5.000000e-01> ; 4 uses
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.n = fcmp olt <4 x float> %i.l, %i.m
  %i.o = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.p = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.q = select <4 x i1> %i.n, <4 x float> %i.o, <4 x float> %i.p ; 2 uses
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.s = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.r, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.s, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt8FilmBase12BaseToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !29, !alias.scope !329
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !31, !alias.scope !329
  store i8 0, ptr %i.e, align 8, !tbaa !32, !alias.scope !329
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_6Point2IiEEJRKfRKNS_6FilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7Bounds2IiEEEEEvPSG_PKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.19, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d)
          to label %_ZN4pbrt12StringPrintfIJRKNS_6Point2IiEERKfRKNS_6FilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7Bounds2IiEEEEESF_PKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %0, align 8, !tbaa !33, !alias.scope !329 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.e, align 8, !tbaa !32, !alias.scope !329
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.g

_ZN4pbrt12StringPrintfIJRKNS_6Point2IiEERKfRKNS_6FilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7Bounds2IiEEEEESF_PKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4pbrt14VisibleSurfaceC2ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(89) initializes((0, 89)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1, <2 x float> %2, <2 x float> %3, ptr nofree nonnull readnone align 4 captures(none) %4) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store <2 x float> %2, ptr %i.j, align 4
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %3, ptr %.sroa.241.0..sroa_idx, align 4, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.k, align 4, !tbaa !70
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.l = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.m = load <4 x float>, ptr %1, align 8
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.o = fadd <2 x float> %i.l, %i.n
  %i.p = fmul <2 x float> %i.o, splat (float 5.000000e-01)
  %i.q = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.r = fmul float %i.q, 5.000000e-01
  store <2 x float> %i.p, ptr %0, align 4
  store float %i.r, ptr %i.a, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.024.0.copyload = load <2 x float>, ptr %i.s, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.020.0.copyload = load <2 x float>, ptr %i.t, align 8 ; 4 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.221.0.copyload = load float, ptr %.sroa.221.0..sroa_idx, align 8 ; 4 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.020.0.copyload, i64 0
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.sroa.024.0.copyload, i64 0 ; 2 uses
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.020.0.copyload, i64 1
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %.sroa.024.0.copyload, i64 1 ; 2 uses
  %i.u = fmul float %.sroa.5.0.copyload, %.sroa.221.0.copyload ; 2 uses
  %i.v = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i, float %.sroa.01.4.vec.extract.i.i, float %i.u)
  %i.w = fneg float %i.u
  %i.x = tail call noundef float @llvm.fma.f32(float %.sroa.221.0.copyload, float %.sroa.5.0.copyload, float %i.w)
  %i.y = fadd float %i.v, %i.x
  %i.z = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i, float %.sroa.01.0.vec.extract.i.i, float %i.y)
  %i.aa = fcmp olt float %i.z, 0.000000e+00       ; 2 uses
  %i.ab = fneg <2 x float> %.sroa.020.0.copyload
  %i.ac = fneg float %.sroa.221.0.copyload
  %.sroa.0.4.vec.insert.i.pn.i = select i1 %i.aa, <2 x float> %i.ab, <2 x float> %.sroa.020.0.copyload
  %.pn.i = select i1 %i.aa, float %i.ac, float %.sroa.221.0.copyload
  store <2 x float> %.sroa.0.4.vec.insert.i.pn.i, ptr %i.b, align 4
  store float %.pn.i, ptr %i.c, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.ad, align 8 ; 4 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 8 ; 4 uses
  %.sroa.04.0.vec.extract.i.i42 = extractelement <2 x float> %.sroa.07.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i44 = extractelement <2 x float> %.sroa.07.0.copyload, i64 1
  %i.ae = fmul float %.sroa.5.0.copyload, %.sroa.28.0.copyload ; 2 uses
  %i.af = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i44, float %.sroa.01.4.vec.extract.i.i, float %i.ae)
  %i.ag = fneg float %i.ae
  %i.ah = tail call noundef float @llvm.fma.f32(float %.sroa.28.0.copyload, float %.sroa.5.0.copyload, float %i.ag)
  %i.ai = fadd float %i.af, %i.ah
  %i.aj = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i42, float %.sroa.01.0.vec.extract.i.i, float %i.ai)
  %i.ak = fcmp olt float %i.aj, 0.000000e+00      ; 2 uses
  %i.al = fneg <2 x float> %.sroa.07.0.copyload
  %i.am = fneg float %.sroa.28.0.copyload
  %.sroa.0.4.vec.insert.i.pn.i48 = select i1 %i.ak, <2 x float> %i.al, <2 x float> %.sroa.07.0.copyload
  %.pn.i49 = select i1 %i.ak, float %i.am, float %.sroa.28.0.copyload
  store <2 x float> %.sroa.0.4.vec.insert.i.pn.i48, ptr %i.d, align 4
  store float %.pn.i49, ptr %i.e, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ao = load i64, ptr %i.an, align 4
  store i64 %i.ao, ptr %i.f, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !338
  store float %i.aq, ptr %i.g, align 4, !tbaa !71
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.ar, i64 12, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 220
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.as, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt14VisibleSurface8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(89) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !29, !alias.scope !341
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !31, !alias.scope !341
  store i8 0, ptr %i.h, align 8, !tbaa !32, !alias.scope !341
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKbJRKNS_6Point3IfEERKNS_7Normal3IfEESB_RKNS_7Vector3IfEESF_RKfRKNS_15SampledSpectrumEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g)
          to label %_ZN4pbrt12StringPrintfIJRKbRKNS_6Point3IfEERKNS_7Normal3IfEESA_RKNS_7Vector3IfEESE_RKfRKNS_15SampledSpectrumEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %0, align 8, !tbaa !33, !alias.scope !341 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.h, align 8, !tbaa !32, !alias.scope !341
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.j

_ZN4pbrt12StringPrintfIJRKbRKNS_6Point3IfEERKNS_7Normal3IfEESA_RKNS_7Vector3IfEESE_RKfRKNS_15SampledSpectrumEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4pbrt11PixelSensor6CreateERKNS_19ParameterDictionaryEPKNS_13RGBColorSpaceEfPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, float noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %5 = alloca %"class.pbrt::Spectrum", align 8    ; 4 uses
  %6 = alloca %"class.pbrt::Spectrum", align 8    ; 4 uses
  %7 = alloca %"class.pbrt::Spectrum", align 8    ; 4 uses
  %8 = alloca %"class.pbrt::Spectrum", align 8    ; 4 uses
  %9 = alloca %"class.pbrt::Spectrum", align 8    ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.pbrt::DenselySampledSpectrum", align 8 ; 10 uses
  %16 = alloca %"class.pbrt::Spectrum", align 8   ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.pbrt::Spectrum", align 8   ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.pbrt::Spectrum", align 8   ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.21, i64 3, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 19
  store i8 0, ptr %i.c, align 1, !tbaa !32
  %i.d = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(32) %10, float noundef 1.000000e+02)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = load ptr, ptr %10, align 8, !tbaa !33    ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !32
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.i, ptr %11, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull align 1 dereferenceable(12) @.str.22, i64 12, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 12, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i8 0, ptr %i.k, align 4, !tbaa !32
  %i.l = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(32) %11, float noundef 0.000000e+00)
          to label %bb.b unwind label %bb.f       ; 2 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = load ptr, ptr %11, align 8, !tbaa !33    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.i
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.b
  %i.o = load i64, ptr %i.i, align 8, !tbaa !32
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.q, ptr %13, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.q, ptr noundef nonnull align 1 dereferenceable(6) @.str.23, i64 6, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 6, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i8 0, ptr %i.s, align 2, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.t, ptr %14, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.t, ptr noundef nonnull align 1 dereferenceable(7) @.str.24, i64 7, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 7, ptr %i.u, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 23
  store i8 0, ptr %i.v, align 1, !tbaa !32
  invoke void @_ZNK4pbrt19ParameterDictionary12GetOneStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
end_hunk_2
begin_hunk_3_@_ZNK4pbrt7RGBFilm8ToStringB5cxx11Ev:bb.a
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4pbrt7RGBFilm6CreateERKNS_19ParameterDictionaryEfNS_6FilterEPKNS_13RGBColorSpaceEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(108) %0, float noundef %1, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.pstd::pmr::polymorphic_allocator.59", align 8 ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"struct.pbrt::FilmBaseParameters", align 8 ; 9 uses
  %10 = alloca %"class.pbrt::Filter", align 8     ; 2 uses
  store ptr %5, ptr %6, align 8
  store ptr %3, ptr %i.b, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 17, ptr %i.a, align 8, !tbaa !34
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.f, ptr %7, align 8, !tbaa !33
  %i.g = load i64, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.f, ptr noundef nonnull align 1 dereferenceable(17) @.str.66, i64 17, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !31
  %i.i = load ptr, ptr %7, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 0, ptr %i.j, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.k = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, float noundef +inf)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc
  %i.l = load ptr, ptr %7, align 8, !tbaa !33     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.e
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.n = load i64, ptr %i.e, align 8, !tbaa !32
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  store float %i.k, ptr %i.c, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.p, ptr %8, align 8, !tbaa !29
  store i64 3905025936998162803, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.r, align 8, !tbaa !32
  %i.s = invoke noundef zeroext i1 @_ZNK4pbrt19ParameterDictionary10GetOneBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load ptr, ptr %8, align 8, !tbaa !33     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.p
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.b
  %i.v = load i64, ptr %i.p, align 8, !tbaa !32
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.x = zext i1 %i.s to i8
  store i8 %i.x, ptr %i.d, align 1, !tbaa !148
  %i.y = call noundef ptr @_ZN4pbrt11PixelSensor6CreateERKNS_19ParameterDictionaryEPKNS_13RGBColorSpaceEfPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %3, float noundef %1, ptr noundef %4, ptr %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.z = load i64, ptr %2, align 8, !tbaa !36
  store i64 %i.z, ptr %10, align 8, !tbaa !36
  call void @_ZN4pbrt18FilmBaseParametersC2ERKNS_19ParameterDictionaryENS_6FilterEPKNS_11PixelSensorEPKNS_7FileLocE(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %10, ptr noundef %i.y, ptr noundef %4)
  %i.aa = load ptr, ptr %5, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 168, i64 noundef 8)
          to label %.noexc26 unwind label %bb.f, !inline_history !411 ; 2 uses

.noexc26:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  invoke void @_ZN4pstd3pmr21polymorphic_allocatorISt4byteE9constructIN4pbrt7RGBFilmEJRNS5_18FilmBaseParametersERPKNS5_13RGBColorSpaceERfRbRS3_EEEvPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt7RGBFilmEJRNS5_18FilmBaseParametersERPKNS5_13RGBColorSpaceERfRbRS3_EEEPT_DpOT0_.exit unwind label %bb.f

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt7RGBFilmEJRNS5_18FilmBaseParametersERPKNS5_13RGBColorSpaceERfRbRS3_EEEPT_DpOT0_.exit: ; preds = %.noexc26
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4pbrt18FilmBaseParametersD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt7RGBFilmEJRNS5_18FilmBaseParametersERPKNS5_13RGBColorSpaceERfRbRS3_EEEPT_DpOT0_.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !32
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #31
  br label %_ZN4pbrt18FilmBaseParametersD2Ev.exit

_ZN4pbrt18FilmBaseParametersD2Ev.exit:            ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt7RGBFilmEJRNS5_18FilmBaseParametersERPKNS5_13RGBColorSpaceERfRbRS3_EEEPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  ret ptr %i.ad

bb.c:                                             ; preds = %.noexc.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.d:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.d
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !32
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.c ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.al, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.h

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.p
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.e
  %i.at = load i64, ptr %i.p, align 8, !tbaa !32
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.g

bb.f:                                             ; preds = %.noexc26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN4pbrt18FilmBaseParametersD2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.f
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !32
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #31
  br label %_ZN4pbrt18FilmBaseParametersD2Ev.exit36

_ZN4pbrt18FilmBaseParametersD2Ev.exit36:          ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.g

bb.g:                                             ; preds = %_ZN4pbrt18FilmBaseParametersD2Ev.exit36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn16 = phi { ptr, i32 } [ %i.av, %_ZN4pbrt18FilmBaseParametersD2Ev.exit36 ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %bb.g ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  resume { ptr, i32 } %.pn16.pn
}

declare noundef zeroext i1 @_ZNK4pbrt19ParameterDictionary10GetOneBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(108), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt11GBufferFilm9AddSampleENS_6Point2IiEENS_15SampledSpectrumERKNS_18SampledWavelengthsEPKNS_14VisibleSurfaceEf(ptr noundef nonnull align 8 dereferenceable(872) %0, i64 %1, <2 x float> %2, <2 x float> %3, ptr noundef nonnull align 4 dereferenceable(32) %4, ptr nofree noundef readonly captures(address_is_null) %5, float noundef %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i.i:
  %7 = alloca %"class.pbrt::Transform", align 4   ; 5 uses
  %8 = alloca %"class.pbrt::Transform", align 4   ; 5 uses
  %9 = alloca %"class.pbrt::Transform", align 8   ; 9 uses
  %10 = alloca %"class.pbrt::Transform", align 8  ; 9 uses
  %11 = alloca %"class.pbrt::SampledSpectrum", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load <4 x float>, ptr %i.c, align 4      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load float, ptr %i.e, align 8, !tbaa !114 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.i = extractvalue { <2 x float>, <2 x float> } %i.h, 0
  %i.j = extractvalue { <2 x float>, <2 x float> } %i.h, 1 ; 2 uses
  %.sroa.8.12.vec.extract.i.i = extractelement <2 x float> %i.j, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.l = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.l, 0
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.l, 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.p = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.q = extractvalue { <2 x float>, <2 x float> } %i.p, 0
  %i.r = extractvalue { <2 x float>, <2 x float> } %i.p, 1
  %i.s = fcmp une <4 x float> %i.d, zeroinitializer
  %i.t = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.u = fdiv <4 x float> %i.t, %i.d
  %i.v = select <4 x i1> %i.s, <4 x float> %i.u, <4 x float> zeroinitializer ; 5 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.x = fmul <2 x float> %i.w, %i.i              ; 2 uses
  %i.y = extractelement <4 x float> %i.v, i64 3
  %i.z = fmul float %i.y, %.sroa.8.12.vec.extract.i.i
  %i.aa = shufflevector <2 x float> %i.m, <2 x float> %i.n, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ab = fmul <4 x float> %i.v, %i.aa            ; 4 uses
  %i.ac = shufflevector <2 x float> %i.q, <2 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ad = fmul <4 x float> %i.v, %i.ac            ; 4 uses
  %shift = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.ad, %shift
  %shift402 = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop403 = fadd <4 x float> %shift402, %foldExtExtBinop
  %shift405 = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop406 = fadd <4 x float> %shift405, %foldExtExtBinop403
  %i.ae = extractelement <4 x float> %foldExtExtBinop406, i64 0
  %i.af = fmul float %i.ae, 2.500000e-01
  %shift408 = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop409 = fadd <2 x float> %i.x, %shift408
  %i.ag = shufflevector <4 x float> %i.v, <4 x float> %i.ab, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.ah = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> %i.ab, <2 x i32> <i32 0, i32 5> ; 2 uses
  %i.aj = fmul <2 x float> %i.ag, %i.ai
  %i.ak = fadd <2 x float> %i.ag, %i.ai
  %i.al = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <2 x i32> <i32 0, i32 3>
  %i.am = shufflevector <4 x float> %i.ab, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.an = shufflevector <2 x float> %foldExtExtBinop409, <2 x float> %i.am, <2 x i32> <i32 0, i32 3>
  %i.ao = fadd <2 x float> %i.an, %i.al
  %i.ap = shufflevector <4 x float> %i.ab, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.aq = insertelement <2 x float> %i.ap, float %i.z, i64 0
  %i.ar = fadd <2 x float> %i.aq, %i.ao
  %i.as = fmul <2 x float> %i.ar, splat (float 2.500000e-01)
  %i.at = insertelement <2 x float> poison, float %i.f, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %i.au, %i.as           ; 4 uses
  %i.aw = fmul float %i.f, %i.af                  ; 4 uses
  %i.ax = extractelement <2 x float> %i.av, i64 0 ; 2 uses
  %i.ay = extractelement <2 x float> %i.av, i64 1 ; 2 uses
  %i.az = fcmp olt float %i.ax, %i.ay
  %i.ba = select i1 %i.az, float %i.ay, float %i.ax ; 2 uses
  %i.bb = fcmp olt float %i.ba, %i.aw
  %.sroa.speculated = select i1 %i.bb, float %i.aw, float %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !155 ; 2 uses
  %i.be = fcmp ogt float %.sroa.speculated, %i.bd ; 2 uses
  %i.bf = fdiv float %i.bd, %.sroa.speculated     ; 2 uses
  %i.bg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.av, %i.bh
  %i.bj = fmul float %i.aw, %i.bf
  %.sroa.13.0 = select i1 %i.be, float %i.bj, float %i.aw ; 3 uses
  %.sroa.0355.0 = select i1 %i.be, <2 x float> %i.bi, <2 x float> %i.av ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 784
  %.sroa.0.0.extract.trunc.i = trunc i64 %1 to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !107 ; 2 uses
  %i.bm = sub i32 %.sroa.0.0.extract.trunc.i, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !109
  %i.bp = sub nsw i32 %.sroa.4.0.extract.trunc.i, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !156
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !107
  %i.bu = sub nsw i32 %i.bt, %i.bl
  %i.bv = mul nsw i32 %i.bu, %i.bp
  %i.bw = add nsw i32 %i.bm, %i.bv
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [192 x i8], ptr %i.br, i64 %i.bx ; 29 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %_ZN4pbrt3RGBixEi.exit350.2, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !70, !range !46, !noundef !47
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_ZN4pbrt3RGBixEi.exit.2, label %_ZN4pbrt3RGBixEi.exit350.2

_ZN4pbrt3RGBixEi.exit.2:                          ; preds = %bb.a
  %i.cc = fpext float %6 to double
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 32 ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !159
  %i.cf = fadd double %i.ce, %i.cc
  store double %i.cf, ptr %i.cd, align 8, !tbaa !159
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 144 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 152 ; 2 uses
  %i.ci = load float, ptr %i.cg, align 8, !tbaa !412
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 148 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !413
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 160 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 168
  %i.cn = load float, ptr %i.cl, align 8, !tbaa !412
  %i.co = tail call <3 x i64> @llvm.masked.load.v3i64.p0(ptr nonnull align 8 %i.ch, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i64> poison), !tbaa !161
  %i.cp = shufflevector <3 x i64> %i.co, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.cq = add nsw <2 x i64> %i.cp, splat (i64 1)  ; 3 uses
  %i.cr = extractelement <2 x i64> %i.cq, i64 0
  store i64 %i.cr, ptr %i.ch, align 8, !tbaa !161
  %i.cs = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cn, i64 1 ; 2 uses
  %i.cu = fsub <2 x float> %.sroa.0355.0, %i.ct   ; 3 uses
  %i.cv = sitofp <2 x i64> %i.cq to <2 x float>
  %i.cw = fdiv <2 x float> %i.cu, %i.cv
  %i.cx = fadd <2 x float> %i.ct, %i.cw           ; 3 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 0
  store float %i.cy, ptr %i.cg, align 8, !tbaa !412
  %i.cz = fsub <2 x float> %.sroa.0355.0, %i.cx   ; 2 uses
  %foldExtExtBinop411 = fmul <2 x float> %i.cu, %i.cz
  %i.da = extractelement <2 x float> %foldExtExtBinop411, i64 0
  %i.db = fadd float %i.ck, %i.da
  store float %i.db, ptr %i.cj, align 4, !tbaa !413
  %i.dc = extractelement <2 x i64> %i.cq, i64 1
  store i64 %i.dc, ptr %i.cm, align 8, !tbaa !161
  %i.dd = extractelement <2 x float> %i.cx, i64 1
  store float %i.dd, ptr %i.cl, align 8, !tbaa !412
  %foldExtExtBinop413 = fmul <2 x float> %i.cu, %i.cz
  %i.de = extractelement <2 x float> %foldExtExtBinop413, i64 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.by, i64 164 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !413
  %i.dh = fadd float %i.dg, %i.de
  store float %i.dh, ptr %i.df, align 4, !tbaa !413
  %i.di = getelementptr inbounds nuw i8, ptr %i.by, i64 176 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.by, i64 184 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !161
  %i.dl = add nsw i64 %i.dk, 1                    ; 2 uses
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !161
  %i.dm = load float, ptr %i.di, align 8, !tbaa !412 ; 2 uses
  %i.dn = fsub float %.sroa.13.0, %i.dm           ; 2 uses
  %i.do = sitofp i64 %i.dl to float
  %i.dp = fdiv float %i.dn, %i.do
  %i.dq = fadd float %i.dm, %i.dp                 ; 2 uses
  store float %i.dq, ptr %i.di, align 8, !tbaa !412
  %i.dr = fsub float %.sroa.13.0, %i.dq
  %i.ds = fmul float %i.dn, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.by, i64 180 ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !413
  %i.dv = fadd float %i.du, %i.ds
  store float %i.dv, ptr %i.dt, align 4, !tbaa !413
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !162, !range !46, !noundef !47
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 12 uses
  %.sroa.0172.0.copyload = load <2 x float>, ptr %5, align 4 ; 2 uses
  %.sroa.2173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2173.0.copyload = load float, ptr %.sroa.2173.0..sroa_idx, align 4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 9 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !71 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.by, i64 72 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %.sroa.2151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  br i1 %i.dy, label %bb.b, label %bb.i

bb.b:                                             ; preds = %_ZN4pbrt3RGBixEi.exit.2
  %i.ef = tail call { <2 x float>, float } @_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_6Point3IfEEf(ptr noundef nonnull align 4 dereferenceable(696) %i.dz, <2 x float> %.sroa.0172.0.copyload, float %.sroa.2173.0.copyload, float noundef %i.eb) ; 2 uses
  %.fca.0.extract166 = extractvalue { <2 x float>, float } %i.ef, 0
  %.fca.1.extract167 = extractvalue { <2 x float>, float } %i.ef, 1
  %i.eg = fmul float %6, %.fca.1.extract167
  %i.eh = insertelement <2 x float> poison, float %6, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ej = fmul <2 x float> %i.ei, %.fca.0.extract166
  %i.ek = load <2 x float>, ptr %i.ec, align 8, !tbaa !55
  %i.el = fadd <2 x float> %i.ek, %i.ej
  store <2 x float> %i.el, ptr %i.ec, align 8, !tbaa !55
  %i.em = load float, ptr %i.ed, align 8, !tbaa !163
  %i.en = fadd float %i.eg, %i.em
  store float %i.en, ptr %i.ed, align 8, !tbaa !163
  %.sroa.0150.0.copyload = load <2 x float>, ptr %i.ee, align 4 ; 8 uses
  %.sroa.2151.0.copyload = load float, ptr %.sroa.2151.0..sroa_idx, align 4 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !164, !range !46, !noundef !47
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.012.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0150.0.copyload, i64 0
  %.sroa.012.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0150.0.copyload, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_3
begin_hunk_4_@_ZN4pbrt11GBufferFilm9AddSampleENS_6Point2IiEENS_15SampledSpectrumERKNS_18SampledWavelengthsEPKNS_14VisibleSurfaceEf:.lr.ph.i.i
_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Normal3IfEEf.exit281: ; preds = %bb.e, %bb.f
  %i.jb = phi i1 [ %i.ja, %bb.f ], [ false, %bb.e ]
  %.sroa.045.4.vec.insert.i26.pn.i273 = phi <2 x float> [ %i.io, %bb.f ], [ %i.ho, %bb.e ]
  %.pn29.i274 = phi float [ %i.iz, %bb.f ], [ %i.hz, %bb.e ]
  %i.jc = fmul float %6, %.pn29.i274
  %i.jd = getelementptr inbounds nuw i8, ptr %i.by, i64 96 ; 2 uses
  %i.je = fmul <2 x float> %i.ei, %.sroa.045.4.vec.insert.i26.pn.i273
  %i.jf = load <2 x float>, ptr %i.jd, align 8, !tbaa !55
  %i.jg = fadd <2 x float> %i.je, %i.jf
  store <2 x float> %i.jg, ptr %i.jd, align 8, !tbaa !55
  %i.jh = getelementptr inbounds nuw i8, ptr %i.by, i64 104 ; 2 uses
  %i.ji = load float, ptr %i.jh, align 8, !tbaa !165
  %i.jj = fadd float %i.jc, %i.ji
  store float %i.jj, ptr %i.jh, align 8, !tbaa !165
  %i.jk = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.0110.0.copyload = load <2 x float>, ptr %i.jk, align 4 ; 2 uses
  %.sroa.2111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.2111.0.copyload = load float, ptr %.sroa.2111.0..sroa_idx, align 4 ; 2 uses
  br i1 %i.jb, label %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit, label %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit.thread

_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit.thread: ; preds = %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Normal3IfEEf.exit281
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.jm = load <2 x float>, ptr %i.jl, align 8, !tbaa !55
  %i.jn = fmul <2 x float> %.sroa.0110.0.copyload, %i.jm ; 2 uses
  %shift415 = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop416 = fadd <2 x float> %i.jn, %shift415
  %i.jo = extractelement <2 x float> %foldExtExtBinop416, i64 0
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.jq = load float, ptr %i.jp, align 8, !tbaa !55
  %i.jr = fmul float %.sroa.2111.0.copyload, %i.jq
  %i.js = fadd float %i.jo, %i.jr
  %i.jt = fmul float %6, %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.by, i64 76 ; 2 uses
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !414
  %i.jw = fadd float %i.jv, %i.jt
  store float %i.jw, ptr %i.ju, align 4, !tbaa !414
  %i.jx = getelementptr inbounds nuw i8, ptr %5, i64 60
  %.sroa.0100.0.copyload393 = load <2 x float>, ptr %i.jx, align 4
  %.sroa.2101.0..sroa_idx394 = getelementptr inbounds nuw i8, ptr %5, i64 68
  %.sroa.2101.0.copyload395 = load float, ptr %.sroa.2101.0..sroa_idx394, align 4
  br label %bb.g

_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit: ; preds = %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Normal3IfEEf.exit281
  %i.jy = load float, ptr %i.ea, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @_ZNK4pbrt17AnimatedTransform11InterpolateEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %8, ptr noundef nonnull align 4 dereferenceable(696) %i.dz, float noundef %i.jy)
  %i.jz = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ka = load <2 x float>, ptr %i.jz, align 4, !tbaa !55
  %i.kb = fmul <2 x float> %.sroa.0110.0.copyload, %i.ka ; 2 uses
  %shift418 = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop419 = fadd <2 x float> %i.kb, %shift418
  %i.kc = extractelement <2 x float> %foldExtExtBinop419, i64 0
  %i.kd = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !55
  %i.kf = fmul float %.sroa.2111.0.copyload, %i.ke
  %i.kg = fadd float %i.kc, %i.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %.pre390 = load i8, ptr %i.eo, align 8, !tbaa !164, !range !46
  %i.kh = trunc nuw i8 %.pre390 to i1
  %i.ki = fmul float %6, %i.kg
  %i.kj = getelementptr inbounds nuw i8, ptr %i.by, i64 76 ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !414
  %i.kl = fadd float %i.kk, %i.ki
  store float %i.kl, ptr %i.kj, align 4, !tbaa !414
  %i.km = getelementptr inbounds nuw i8, ptr %5, i64 60
  %.sroa.0100.0.copyload = load <2 x float>, ptr %i.km, align 4 ; 2 uses
  %.sroa.2101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 68
  %.sroa.2101.0.copyload = load float, ptr %.sroa.2101.0..sroa_idx, align 4 ; 2 uses
  br i1 %i.kh, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit.thread, %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit
  %.sroa.2101.0.copyload397 = phi float [ %.sroa.2101.0.copyload395, %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit.thread ], [ %.sroa.2101.0.copyload, %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit ]
  %.sroa.0100.0.copyload396 = phi <2 x float> [ %.sroa.0100.0.copyload393, %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit.thread ], [ %.sroa.0100.0.copyload, %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit ]
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ko = load <2 x float>, ptr %i.kn, align 8, !tbaa !55
  %i.kp = fmul <2 x float> %.sroa.0100.0.copyload396, %i.ko ; 2 uses
  %shift421 = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop422 = fadd <2 x float> %i.kp, %shift421
  %i.kq = extractelement <2 x float> %foldExtExtBinop422, i64 0
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ks = load float, ptr %i.kr, align 8, !tbaa !55
  %i.kt = fmul float %.sroa.2101.0.copyload397, %i.ks
  %i.ku = fadd float %i.kq, %i.kt
  br label %_ZN4pbrt3RGBixEi.exit348.2

bb.h:                                             ; preds = %_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_7Vector3IfEEf.exit
  %i.kv = load float, ptr %i.ea, align 4, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @_ZNK4pbrt17AnimatedTransform11InterpolateEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %7, ptr noundef nonnull align 4 dereferenceable(696) %i.dz, float noundef %i.kv)
  %i.kw = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.kx = load <2 x float>, ptr %i.kw, align 4, !tbaa !55
  %i.ky = fmul <2 x float> %.sroa.0100.0.copyload, %i.kx ; 2 uses
  %shift424 = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop425 = fadd <2 x float> %i.ky, %shift424
  %i.kz = extractelement <2 x float> %foldExtExtBinop425, i64 0
  %i.la = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.lb = load float, ptr %i.la, align 4, !tbaa !55
  %i.lc = fmul float %.sroa.2101.0.copyload, %i.lb
  %i.ld = fadd float %i.kz, %i.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZN4pbrt3RGBixEi.exit348.2

bb.i:                                             ; preds = %_ZN4pbrt3RGBixEi.exit.2
  %i.le = tail call { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_6Point3IfEEf(ptr noundef nonnull align 4 dereferenceable(696) %i.dz, <2 x float> %.sroa.0172.0.copyload, float %.sroa.2173.0.copyload, float noundef %i.eb) ; 2 uses
  %.fca.0.extract80 = extractvalue { <2 x float>, float } %i.le, 0
  %.fca.1.extract81 = extractvalue { <2 x float>, float } %i.le, 1
  %i.lf = fmul float %6, %.fca.1.extract81
  %i.lg = insertelement <2 x float> poison, float %6, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.li = fmul <2 x float> %i.lh, %.fca.0.extract80
  %i.lj = load <2 x float>, ptr %i.ec, align 8, !tbaa !55
  %i.lk = fadd <2 x float> %i.lj, %i.li
  store <2 x float> %i.lk, ptr %i.ec, align 8, !tbaa !55
  %i.ll = load float, ptr %i.ed, align 8, !tbaa !163
  %i.lm = fadd float %i.lf, %i.ll
  store float %i.lm, ptr %i.ed, align 8, !tbaa !163
  %.sroa.064.0.copyload = load <2 x float>, ptr %i.ee, align 4
  %.sroa.265.0.copyload = load float, ptr %.sroa.2151.0..sroa_idx, align 4
  %i.ln = load float, ptr %i.ea, align 4, !tbaa !71
  %i.lo = tail call { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_7Normal3IfEEf(ptr noundef nonnull align 4 dereferenceable(696) %i.dz, <2 x float> %.sroa.064.0.copyload, float %.sroa.265.0.copyload, float noundef %i.ln) ; 2 uses
  %.fca.0.extract58 = extractvalue { <2 x float>, float } %i.lo, 0
  %.fca.1.extract59 = extractvalue { <2 x float>, float } %i.lo, 1
  %i.lp = fmul float %6, %.fca.1.extract59
  %i.lq = getelementptr inbounds nuw i8, ptr %i.by, i64 84 ; 2 uses
  %i.lr = fmul <2 x float> %i.lh, %.fca.0.extract58
  %i.ls = load <2 x float>, ptr %i.lq, align 4, !tbaa !55
  %i.lt = fadd <2 x float> %i.ls, %i.lr
  store <2 x float> %i.lt, ptr %i.lq, align 4, !tbaa !55
  %i.lu = getelementptr inbounds nuw i8, ptr %i.by, i64 92 ; 2 uses
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !165
  %i.lw = fadd float %i.lp, %i.lv
  store float %i.lw, ptr %i.lu, align 4, !tbaa !165
  %i.lx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.043.0.copyload = load <2 x float>, ptr %i.lx, align 4
  %.sroa.244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.244.0.copyload = load float, ptr %.sroa.244.0..sroa_idx, align 4
  %i.ly = load float, ptr %i.ea, align 4, !tbaa !71
  %i.lz = tail call { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_7Normal3IfEEf(ptr noundef nonnull align 4 dereferenceable(696) %i.dz, <2 x float> %.sroa.043.0.copyload, float %.sroa.244.0.copyload, float noundef %i.ly) ; 2 uses
  %.fca.0.extract37 = extractvalue { <2 x float>, float } %i.lz, 0
  %.fca.1.extract38 = extractvalue { <2 x float>, float } %i.lz, 1
  %i.ma = fmul float %6, %.fca.1.extract38
  %i.mb = getelementptr inbounds nuw i8, ptr %i.by, i64 96 ; 2 uses
  %i.mc = fmul <2 x float> %i.lh, %.fca.0.extract37
  %i.md = load <2 x float>, ptr %i.mb, align 8, !tbaa !55
  %i.me = fadd <2 x float> %i.md, %i.mc
  store <2 x float> %i.me, ptr %i.mb, align 8, !tbaa !55
  %i.mf = getelementptr inbounds nuw i8, ptr %i.by, i64 104 ; 2 uses
  %i.mg = load float, ptr %i.mf, align 8, !tbaa !165
  %i.mh = fadd float %i.ma, %i.mg
  store float %i.mh, ptr %i.mf, align 8, !tbaa !165
  %i.mi = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.mi, align 4
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.226.0.copyload = load float, ptr %.sroa.226.0..sroa_idx, align 4
  %i.mj = load float, ptr %i.ea, align 4, !tbaa !71
  %i.mk = tail call { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_7Vector3IfEEf(ptr noundef nonnull align 4 dereferenceable(696) %i.dz, <2 x float> %.sroa.025.0.copyload, float %.sroa.226.0.copyload, float noundef %i.mj)
  %.fca.1.extract20 = extractvalue { <2 x float>, float } %i.mk, 1
  %i.ml = fmul float %6, %.fca.1.extract20
  %i.mm = getelementptr inbounds nuw i8, ptr %i.by, i64 76 ; 2 uses
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !414
  %i.mo = fadd float %i.mn, %i.ml
  store float %i.mo, ptr %i.mm, align 4, !tbaa !414
  %i.mp = getelementptr inbounds nuw i8, ptr %5, i64 60
  %.sroa.016.0.copyload = load <2 x float>, ptr %i.mp, align 4
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 68
  %.sroa.217.0.copyload = load float, ptr %.sroa.217.0..sroa_idx, align 4
  %i.mq = load float, ptr %i.ea, align 4, !tbaa !71
  %i.mr = tail call { <2 x float>, float } @_ZNK4pbrt17AnimatedTransformclENS_7Vector3IfEEf(ptr noundef nonnull align 4 dereferenceable(696) %i.dz, <2 x float> %.sroa.016.0.copyload, float %.sroa.217.0.copyload, float noundef %i.mq)
  %.fca.1.extract11 = extractvalue { <2 x float>, float } %i.mr, 1
  br label %_ZN4pbrt3RGBixEi.exit348.2

_ZN4pbrt3RGBixEi.exit348.2:                       ; preds = %bb.h, %bb.g, %bb.i
  %.pn29.i307.sink = phi float [ %.fca.1.extract11, %bb.i ], [ %i.ld, %bb.h ], [ %i.ku, %bb.g ]
  %i.ms = fmul float %6, %.pn29.i307.sink
  %i.mt = getelementptr inbounds nuw i8, ptr %i.by, i64 80 ; 2 uses
  %i.mu = load float, ptr %i.mt, align 8, !tbaa !415
  %i.mv = fadd float %i.mu, %i.ms
  store float %i.mv, ptr %i.mt, align 8, !tbaa !415
  %i.mw = getelementptr inbounds nuw i8, ptr %5, i64 36
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.mw, align 4, !tbaa !55
  %i.mx = getelementptr inbounds nuw i8, ptr %i.by, i64 108 ; 2 uses
  %i.my = insertelement <2 x float> poison, float %6, i64 0
  %i.mz = shufflevector <2 x float> %i.my, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.na = fmul <2 x float> %i.mz, %.sroa.08.0.copyload
  %i.nb = load <2 x float>, ptr %i.mx, align 4, !tbaa !55
  %i.nc = fadd <2 x float> %i.nb, %i.na
  store <2 x float> %i.nc, ptr %i.mx, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.nd = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !166
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  %i.nh = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ng, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.ni = extractvalue { <2 x float>, <2 x float> } %i.nh, 0
  %i.nj = extractvalue { <2 x float>, <2 x float> } %i.nh, 1
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.nd, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !32
  %i.nk = fmul <2 x float> %.sroa.0.0.copyload4.i, %i.ni
  %i.nl = fmul <2 x float> %i.nj, %.sroa.8.0.copyload.i
  store <2 x float> %i.nk, ptr %11, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %i.nl, ptr %12, align 8
  %i.nm = load ptr, ptr %i.ne, align 8, !tbaa !166
  %i.nn = call { <2 x float>, float } @_ZNK4pbrt15SampledSpectrum5ToRGBERKNS_18SampledWavelengthsERKNS_13RGBColorSpaceE(ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(152) %i.nm) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.nn, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.nn, 1
  %i.no = getelementptr inbounds nuw i8, ptr %i.by, i64 120 ; 2 uses
  %i.np = fmul <2 x float> %i.mz, %.fca.0.extract
  %i.nq = fpext <2 x float> %i.np to <2 x double>
  %i.nr = load <2 x double>, ptr %i.no, align 8, !tbaa !167
  %i.ns = fadd <2 x double> %i.nr, %i.nq
  store <2 x double> %i.ns, ptr %i.no, align 8, !tbaa !167
  %i.nt = fmul float %6, %.fca.1.extract
  %i.nu = fpext float %i.nt to double
  %i.nv = getelementptr inbounds nuw i8, ptr %i.by, i64 136 ; 2 uses
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !167
  %i.nx = fadd double %i.nw, %i.nu
  store double %i.nx, ptr %i.nv, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %_ZN4pbrt3RGBixEi.exit350.2

_ZN4pbrt3RGBixEi.exit350.2:                       ; preds = %.lr.ph.i.i, %bb.a, %_ZN4pbrt3RGBixEi.exit348.2
  %i.ny = insertelement <4 x float> poison, float %6, i64 0
  %i.nz = shufflevector <4 x float> %i.ny, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oa = shufflevector <2 x float> %.sroa.0355.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ob = insertelement <4 x float> %i.oa, float 1.000000e+00, i64 3
  %i.oc = insertelement <4 x float> %i.ob, float %.sroa.13.0, i64 2
  %i.od = fmul <4 x float> %i.nz, %i.oc
  %i.oe = fpext <4 x float> %i.od to <4 x double>
  %i.of = load <4 x double>, ptr %i.by, align 8, !tbaa !167
  %i.og = fadd <4 x double> %i.of, %i.oe
  store <4 x double> %i.og, ptr %i.by, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt17AnimatedTransform12ApplyInverseENS_6Point3IfEEf(ptr noundef nonnull align 4 dereferenceable(696) %0, <2 x float> %1, float %2, float noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.pbrt::Transform", align 4   ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load i8, ptr %i.e, align 4, !tbaa !164, !range !46, !noundef !47
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load float, ptr %i.j, align 4, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load float, ptr %i.l, align 4, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load <2 x float>, ptr %i.n, align 4, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !55
  %i.s = load <6 x float>, ptr %i.p, align 4, !tbaa !55 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load <2 x float>, ptr %i.t, align 4, !tbaa !55
  %i.v = fmul <2 x float> %1, %i.u                ; 2 uses
  %shift = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.v, %shift
  %i.w = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load float, ptr %i.x, align 4, !tbaa !55
  %i.z = fmul float %2, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !55
  %i.ac = fadd float %i.z, %i.ab
  %i.ad = fadd float %i.w, %i.ac                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store float %i.ad, ptr %i.c, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i32 0, ptr %i.d, align 4, !tbaa !52
  %i.ae = fcmp une float %i.ad, 0.000000e+00
  br i1 %i.ae, label %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4pbrt8LogFatalIJRA3_KcRA2_S1_S3_RfS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.141, i32 noundef 393, ptr noundef nonnull @.str.142, ptr noundef nonnull align 1 dereferenceable(3) @.str.143, ptr noundef nonnull align 1 dereferenceable(2) @.str.129, ptr noundef nonnull align 1 dereferenceable(3) @.str.143, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.129, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #32
  unreachable

_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit: ; preds = %bb.b
  %i.af = fmul <2 x float> %1, %i.r               ; 2 uses
  %i.ag = insertelement <2 x float> poison, float %2, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = shufflevector <6 x float> %i.s, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.aj = fmul <2 x float> %i.ah, %i.ai
  %i.ak = fmul <2 x float> %1, %i.o               ; 2 uses
  %i.al = fmul <2 x float> %1, %i.i               ; 2 uses
  %shift36 = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop37 = fadd <2 x float> %i.al, %shift36
  %i.am = extractelement <2 x float> %foldExtExtBinop37, i64 0
  %i.an = fmul float %2, %i.k
  %i.ao = fadd float %i.an, %i.m
  %i.ap = fadd float %i.am, %i.ao                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.aq = fcmp oeq float %i.ad, 1.000000e+00      ; 3 uses
  %i.ar = fdiv float %i.ap, %i.ad
  %i.as = shufflevector <2 x float> %i.ak, <2 x float> %i.af, <2 x i32> <i32 0, i32 2>
  %i.at = shufflevector <2 x float> %i.ak, <2 x float> %i.af, <2 x i32> <i32 1, i32 3>
  %i.au = fadd <2 x float> %i.as, %i.at
  %i.av = shufflevector <6 x float> %i.s, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.aw = fadd <2 x float> %i.aj, %i.av
  %i.ax = fadd <2 x float> %i.au, %i.aw           ; 3 uses
  %i.ay = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fdiv <2 x float> %i.ax, %i.az           ; 2 uses
  %.sink94.i = select i1 %i.aq, float %i.ap, float %i.ar
  %i.bb = extractelement <2 x float> %i.ba, i64 0
  %i.bc = extractelement <2 x float> %i.ax, i64 0
  %.sink.i = select i1 %i.aq, float %i.bc, float %i.bb
  %i.bd = extractelement <2 x float> %i.ba, i64 1
  %i.be = extractelement <2 x float> %i.ax, i64 1
  %.sroa.493.0.i = select i1 %i.aq, float %i.be, float %i.bd
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %.sink94.i, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %.sink.i, i64 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZNK4pbrt17AnimatedTransform11InterpolateEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %4, ptr noundef nonnull align 4 dereferenceable(696) %0, float noundef %3)
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bg = load <2 x float>, ptr %i.bf, align 4, !tbaa !55
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !55
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !55
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bm = load <2 x float>, ptr %i.bl, align 4, !tbaa !55
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bp = load <2 x float>, ptr %i.bo, align 4, !tbaa !55
  %i.bq = load <6 x float>, ptr %i.bn, align 4, !tbaa !55 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.bs = load <2 x float>, ptr %i.br, align 4, !tbaa !55
  %i.bt = fmul <2 x float> %1, %i.bs              ; 2 uses
  %shift39 = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop40 = fadd <2 x float> %i.bt, %shift39
  %i.bu = extractelement <2 x float> %foldExtExtBinop40, i64 0
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !55
  %i.bx = fmul float %2, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.bz = load float, ptr %i.by, align 4, !tbaa !55
  %i.ca = fadd float %i.bx, %i.bz
  %i.cb = fadd float %i.bu, %i.ca                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store float %i.cb, ptr %i.a, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !52
  %i.cc = fcmp une float %i.cb, 0.000000e+00
  br i1 %i.cc, label %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit32, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4pbrt8LogFatalIJRA3_KcRA2_S1_S3_RfS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.141, i32 noundef 393, ptr noundef nonnull @.str.142, ptr noundef nonnull align 1 dereferenceable(3) @.str.143, ptr noundef nonnull align 1 dereferenceable(2) @.str.129, ptr noundef nonnull align 1 dereferenceable(3) @.str.143, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.129, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #32
  unreachable

_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit32: ; preds = %bb.d
  %i.cd = fmul <2 x float> %1, %i.bp              ; 2 uses
  %i.ce = insertelement <2 x float> poison, float %2, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <6 x float> %i.bq, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ch = fmul <2 x float> %i.cf, %i.cg
  %i.ci = fmul <2 x float> %1, %i.bm              ; 2 uses
  %i.cj = fmul <2 x float> %1, %i.bg              ; 2 uses
  %shift42 = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop43 = fadd <2 x float> %i.cj, %shift42
  %i.ck = extractelement <2 x float> %foldExtExtBinop43, i64 0
  %i.cl = fmul float %2, %i.bi
  %i.cm = fadd float %i.cl, %i.bk
  %i.cn = fadd float %i.ck, %i.cm                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.co = fcmp oeq float %i.cb, 1.000000e+00      ; 3 uses
  %i.cp = fdiv float %i.cn, %i.cb
  %i.cq = shufflevector <2 x float> %i.ci, <2 x float> %i.cd, <2 x i32> <i32 0, i32 2>
  %i.cr = shufflevector <2 x float> %i.ci, <2 x float> %i.cd, <2 x i32> <i32 1, i32 3>
  %i.cs = fadd <2 x float> %i.cq, %i.cr
  %i.ct = shufflevector <6 x float> %i.bq, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.cu = fadd <2 x float> %i.ch, %i.ct
  %i.cv = fadd <2 x float> %i.cs, %i.cu           ; 3 uses
  %i.cw = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fdiv <2 x float> %i.cv, %i.cx           ; 2 uses
  %.sink94.i25 = select i1 %i.co, float %i.cn, float %i.cp
  %i.cz = extractelement <2 x float> %i.cy, i64 0
  %i.da = extractelement <2 x float> %i.cv, i64 0
  %.sink.i26 = select i1 %i.co, float %i.da, float %i.cz
  %i.db = extractelement <2 x float> %i.cy, i64 1
  %i.dc = extractelement <2 x float> %i.cv, i64 1
  %.sroa.493.0.i27 = select i1 %i.co, float %i.dc, float %i.db
  %.sroa.0.0.vec.insert.i.i28 = insertelement <2 x float> poison, float %.sink94.i25, i64 0
  %.sroa.0.4.vec.insert.i.i29 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i28, float %.sink.i26, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit32, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit
end_hunk_4
