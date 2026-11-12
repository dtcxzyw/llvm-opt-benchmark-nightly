Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/cameras?download=true
inline.NumInlined: 4489
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN4pbrt18OrthographicCamera6CreateERKNS_19ParameterDictionaryERKNS_15CameraTransformENS_4FilmENS_6MediumEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE:._crit_edge.i.i
_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i76: ; preds = %bb.u
  %i.dr = load ptr, ptr %8, align 8, !tbaa !35
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.dr)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i76
  %i.ds = load ptr, ptr %8, align 8, !tbaa !35    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.dk
  br i1 %i.dt, label %_ZN4pbrt5ErrorIJEEEvPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80: ; preds = %bb.w
  %i.du = load i64, ptr %i.dk, align 8, !tbaa !25
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #31
  br label %_ZN4pbrt5ErrorIJEEEvPKcDpOT_.exit

bb.x:                                             ; preds = %_ZN4pbrt12StringPrintfIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i76
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = load ptr, ptr %8, align 8, !tbaa !35    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.dk
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i77: ; preds = %bb.x
  %i.dz = load i64, ptr %i.dk, align 8, !tbaa !25
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i78: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %.body

_ZN4pbrt5ErrorIJEEEvPKcDpOT_.exit:                ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.y

bb.y:                                             ; preds = %_ZN4pbrt5ErrorIJEEEvPKcDpOT_.exit, %_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %.sroa.12.1 = phi <2 x float> [ %.sroa.12.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %.sroa.12.0, %_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit ], [ %.sroa.12.12.vec.insert113, %bb.t ], [ %.sroa.12.0, %_ZN4pbrt5ErrorIJEEEvPKcDpOT_.exit ]
  %.sroa.089.1 = phi <2 x float> [ %.sroa.089.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %.sroa.089.0, %_ZN4pbrt7WarningIJEEEvPKcDpOT_.exit ], [ %.sroa.089.4.vec.insert100, %bb.t ], [ %.sroa.089.0, %_ZN4pbrt5ErrorIJEEEvPKcDpOT_.exit ]
  %i.eb = load ptr, ptr %5, align 8, !tbaa !73
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = invoke noundef ptr %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 1440, i64 noundef 8)
          to label %.noexc84 unwind label %bb.q, !inline_history !319 ; 20 uses

.noexc84:                                         ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(832) %6, ptr noundef nonnull align 8 dereferenceable(848) %10, i64 832, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 832
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 832
  %i.eh = load <2 x i64>, ptr %i.ef, align 8, !tbaa !51
  store <2 x i64> %i.eh, ptr %i.eg, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN4pbrt12OrthographicEff(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %7, float noundef 0.000000e+00, float noundef 1.000000e+00)
          to label %.noexc85 unwind label %bb.q

.noexc85:                                         ; preds = %.noexc84
  invoke void @_ZN4pbrt16ProjectiveCameraC2ENS_20CameraBaseParametersERKNS_9TransformENS_7Bounds2IfEEff(ptr noundef nonnull align 8 dereferenceable(1440) %i.ee, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(848) %6, ptr noundef nonnull align 4 dereferenceable(128) %7, <2 x float> %.sroa.089.1, <2 x float> %.sroa.12.1, float noundef %i.g, float noundef %i.o)
          to label %bb.z unwind label %bb.q

bb.z:                                             ; preds = %.noexc85
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 1416 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 1424
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 1428 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 1436
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 1024
  %i.en = load float, ptr %i.em, align 4, !tbaa !14 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 1028
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !14 ; 2 uses
  %i.eq = fmul float %i.ep, 0.000000e+00
  %i.er = fadd float %i.en, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.ee, i64 1032
  %i.et = load float, ptr %i.es, align 4, !tbaa !14
  %i.eu = fmul float %i.et, 0.000000e+00          ; 2 uses
  %i.ev = fadd float %i.er, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ee, i64 1040
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !14 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ee, i64 1044
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !14 ; 2 uses
  %i.fa = fmul float %i.ez, 0.000000e+00
  %i.fb = fadd float %i.ex, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 1048
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !14
  %i.fe = fmul float %i.fd, 0.000000e+00          ; 2 uses
  %i.ff = fadd float %i.fb, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ee, i64 1056
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !14 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ee, i64 1060
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !14 ; 2 uses
  %i.fk = fmul float %i.fj, 0.000000e+00
  %i.fl = fadd float %i.fh, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ee, i64 1064
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !14
  %i.fo = fmul float %i.fn, 0.000000e+00          ; 2 uses
  %i.fp = fadd float %i.fl, %i.fo
  %.sroa.046.0.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.ev, i64 0
  %.sroa.046.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.046.0.vec.insert.i.i.i.i, float %i.ff, i64 1
  store <2 x float> %.sroa.046.4.vec.insert.i.i.i.i, ptr %i.ei, align 8
  store float %i.fp, ptr %i.ej, align 8
  %i.fq = fmul float %i.en, 0.000000e+00
  %i.fr = fadd float %i.fq, %i.ep
  %i.fs = fadd float %i.fr, %i.eu
  %i.ft = fmul float %i.ex, 0.000000e+00
  %i.fu = fadd float %i.ft, %i.ez
  %i.fv = fadd float %i.fu, %i.fe
  %i.fw = fmul float %i.fh, 0.000000e+00
  %i.fx = fadd float %i.fw, %i.fj
  %i.fy = fadd float %i.fx, %i.fo
  %.sroa.046.0.vec.insert.i20.i.i.i = insertelement <2 x float> poison, float %i.fs, i64 0
  %.sroa.046.4.vec.insert.i21.i.i.i = insertelement <2 x float> %.sroa.046.0.vec.insert.i20.i.i.i, float %i.fv, i64 1
  store <2 x float> %.sroa.046.4.vec.insert.i21.i.i.i, ptr %i.ek, align 4
  store float %i.fy, ptr %i.el, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ee, i64 884 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.fz, align 4
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 892
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ee, i64 872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ga, ptr noundef nonnull align 4 dereferenceable(12) %i.fz, i64 12, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ee, i64 848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gb, ptr noundef nonnull align 8 dereferenceable(12) %i.ei, i64 12, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ee, i64 860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gc, ptr noundef nonnull align 4 dereferenceable(12) %i.ek, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.gd = load ptr, ptr %16, align 8, !tbaa !75   ; 3 uses
  %.not.i.i.i87 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorIfSaIfEED2Ev.exit88, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ge = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !76
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit88

_ZNSt6vectorIfSaIfEED2Ev.exit88:                  ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  ret ptr %i.ee

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.r, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.pn33 = phi { ptr, i32 } [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.pn33.pn.pn.pn = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %.pn33, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %.pn28.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  resume { ptr, i32 } %.pn33.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4pbrt15RealisticCamera6CreateERKNS_19ParameterDictionaryERKNS_15CameraTransformENS_4FilmENS_6MediumEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(824) %1, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %2, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %3, ptr noundef %4, ptr %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.pstd::pmr::polymorphic_allocator", align 8 ; 5 uses
  %9 = alloca %"struct.pbrt::CameraBaseParameters", align 8 ; 5 uses
  %10 = alloca %"class.pbrt::Film", align 8       ; 2 uses
  %11 = alloca %"class.pbrt::Medium", align 8     ; 2 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::vector", align 8      ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.pbrt::Image", align 8      ; 33 uses
  %24 = alloca %"class.pbrt::Image", align 8      ; 12 uses
  %25 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 12 uses
  %26 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %27 = alloca %"class.pbrt::Image", align 8      ; 7 uses
  %28 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 9 uses
  %29 = alloca %"class.std::allocator", align 1   ; 4 uses
  %30 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %31 = alloca [5 x %"class.pbrt::Point2"], align 16 ; 6 uses
  %32 = alloca %"class.pbrt::Image", align 8      ; 7 uses
  %33 = alloca %"class.pstd::array.74", align 16  ; 13 uses
  %34 = alloca %"class.pbrt::Image", align 8      ; 7 uses
  %35 = alloca %"struct.pbrt::ImageAndMetadata", align 8 ; 7 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %38 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %39 = alloca %"struct.pbrt::ImageChannelDesc", align 8 ; 8 uses
  %40 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 20 uses
  %41 = alloca %"class.std::allocator", align 1   ; 5 uses
  %42 = alloca %"class.std::allocator", align 1   ; 5 uses
  %43 = alloca %"class.std::allocator", align 1   ; 5 uses
  %44 = alloca %"class.pbrt::Image", align 8      ; 10 uses
  %45 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 9 uses
  %46 = alloca %"class.std::allocator", align 1   ; 4 uses
  %47 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %48 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 9 uses
  store ptr %5, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.f = load i64, ptr %2, align 8, !tbaa !53
  store i64 %i.f, ptr %10, align 8, !tbaa !53
  %i.g = load i64, ptr %3, align 8, !tbaa !54
  store i64 %i.g, ptr %11, align 8, !tbaa !54
  call void @_ZN4pbrt20CameraBaseParametersC2ERKNS_15CameraTransformENS_4FilmENS_6MediumERKNS_19ParameterDictionaryEPKNS_7FileLocE(ptr noundef nonnull align 8 dereferenceable(848) %9, ptr noundef nonnull align 4 dereferenceable(824) %1, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %10, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.h, ptr %14, align 8, !tbaa !31
  store i64 7308332184059667820, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 8, ptr %i.i, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i8 0, ptr %i.j, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.k, ptr %15, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !34
  store i8 0, ptr %i.k, align 8, !tbaa !25
  invoke void @_ZNK4pbrt19ParameterDictionary12GetOneStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.a unwind label %bb.f

bb.a:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN4pbrt15ResolveFilenameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nofree noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %13, align 8, !tbaa !35    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.p = load i64, ptr %i.n, align 8, !tbaa !25
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr %15, align 8, !tbaa !35    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.k
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.k, align 8, !tbaa !25
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  %i.v = load ptr, ptr %14, align 8, !tbaa !35    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.h
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259
  %i.x = load i64, ptr %i.h, align 8, !tbaa !25
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.z, ptr %16, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 16, ptr %i.b, align 8, !tbaa !51
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc265 unwind label %bb.h  ; 2 uses

.noexc265:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262
  store ptr %i.aa, ptr %16, align 8, !tbaa !35
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !51  ; 3 uses
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aa, ptr noundef nonnull align 1 dereferenceable(16) @.str.81, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !34
  %i.ad = load ptr, ptr %16, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.af = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(32) %16, float noundef 1.000000e+00)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %.noexc265
  %i.ag = load ptr, ptr %16, align 8, !tbaa !35   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.z
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %bb.c
  %i.ai = load i64, ptr %i.z, align 8, !tbaa !25
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  store float %i.af, ptr %i.c, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.ak, ptr %17, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ak, ptr noundef nonnull align 1 dereferenceable(13) @.str.82, i64 13, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 13, ptr %i.al, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 29
  store i8 0, ptr %i.am, align 1, !tbaa !25
  %i.an = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(32) %17, float noundef 1.000000e+01)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  %i.ao = load ptr, ptr %17, align 8, !tbaa !35   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ak
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274: ; preds = %bb.d
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !25
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  store float %i.an, ptr %i.d, align 4, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !34 ; 5 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef nonnull @.str.83)
          to label %bb.de unwind label %bb.k

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

bb.g:                                             ; preds = %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %13, align 8, !tbaa !35   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277: ; preds = %bb.g
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !25
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277, %bb.f
  %.pn = phi { ptr, i32 } [ %i.av, %bb.f ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277 ], [ %i.aw, %bb.g ]
  %i.bc = load ptr, ptr %15, align 8, !tbaa !35   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.k
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279
  %i.be = load i64, ptr %i.k, align 8, !tbaa !25
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  %i.bg = load ptr, ptr %14, align 8, !tbaa !35   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.h
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282
  %i.bi = load i64, ptr %i.h, align 8, !tbaa !25
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288

bb.i:                                             ; preds = %.noexc265
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %16, align 8, !tbaa !35   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.z
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i286
end_hunk_0
begin_hunk_1_@_ZN4pbrt15RealisticCamera6CreateERKNS_19ParameterDictionaryERKNS_15CameraTransformENS_4FilmENS_6MediumEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE:._crit_edge.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cq, align 8, !tbaa !34, !alias.scope !339
  store i8 0, ptr %i.cp, align 8, !tbaa !25, !alias.scope !339
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %7, ptr noundef nonnull @.str.84, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %7, align 8, !tbaa !35, !alias.scope !339 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cp
  br i1 %i.ct, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.cu = load i64, ptr %i.cp, align 8, !tbaa !25, !alias.scope !339
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #31
  br label %.body

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i: ; preds = %bb.q
  %i.cw = load ptr, ptr %7, align 8, !tbaa !35
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef %i.cw)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.cx = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cp
  br i1 %i.cy, label %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.cz = load i64, ptr %i.cp, align 8, !tbaa !25
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #31
  br label %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit

bb.t:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cp
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.t
  %i.de = load i64, ptr %i.cp, align 8, !tbaa !25
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.body

_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.db

bb.u:                                             ; preds = %.noexc.i293
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

bb.v:                                             ; preds = %bb.o
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %19, align 8, !tbaa !35   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.bw
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %bb.v
  %i.dk = load i64, ptr %i.bw, align 8, !tbaa !25
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297
  %i.dm = ptrtoint ptr %i.cn to i64
  %i.dn = ptrtoint ptr %i.cl to i64
  %i.do = sub i64 %i.dm, %i.dn                    ; 2 uses
  %i.dp = and i64 %i.do, 12
  %.not = icmp eq i64 %i.dp, 0
  br i1 %.not, label %._crit_edge.i.i309, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dq = lshr exact i64 %i.do, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.dr = trunc i64 %i.dq to i32
  store i32 %i.dr, ptr %i.e, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.ds, ptr %6, align 8, !tbaa !31, !alias.scope !340
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.dt, align 8, !tbaa !34, !alias.scope !340
  store i8 0, ptr %i.ds, align 8, !tbaa !25, !alias.scope !340
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJiEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %6, ptr noundef nonnull @.str.85, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEES6_PKcDpOT_.exit.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %6, align 8, !tbaa !35, !alias.scope !340 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.ds
  br i1 %i.dw, label %.body307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i301: ; preds = %bb.y
  %i.dx = load i64, ptr %i.ds, align 8, !tbaa !25, !alias.scope !340
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #31
  br label %.body307

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEES6_PKcDpOT_.exit.i: ; preds = %bb.x
  %i.dz = load ptr, ptr %6, align 8, !tbaa !35
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef %i.dz)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEES6_PKcDpOT_.exit.i
  %i.ea = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ds
  br i1 %i.eb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i305: ; preds = %bb.z
  %i.ec = load i64, ptr %i.ds, align 8, !tbaa !25
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i306

bb.aa:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEES6_PKcDpOT_.exit.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.ds
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.aa
  %i.eh = load i64, ptr %i.ds, align 8, !tbaa !25
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %.body307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i306: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i305
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  br label %bb.db

.body307:                                         ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i
  %eh.lpad-body308 = phi { ptr, i32 } [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i301 ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ], [ %i.du, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  br label %.body

._crit_edge.i.i309:                               ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  %i.ej = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.ej, ptr %21, align 8, !tbaa !31
  store i64 7310034288171642977, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 8, ptr %i.ek, align 8, !tbaa !34
  %i.el = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i8 0, ptr %i.el, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.em = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.em, ptr %22, align 8, !tbaa !31
  %i.en = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 0, ptr %i.en, align 8, !tbaa !34
  store i8 0, ptr %i.em, align 8, !tbaa !25
  invoke void @_ZNK4pbrt19ParameterDictionary12GetOneStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %._crit_edge.i.i309
  %i.eo = load ptr, ptr %22, align 8, !tbaa !35   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.em
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %bb.ab
  %i.eq = load i64, ptr %i.em, align 8, !tbaa !25
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %i.es = load ptr, ptr %21, align 8, !tbaa !35   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ej
  br i1 %i.et, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319
  %i.eu = load i64, ptr %i.ej, align 8, !tbaa !25
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  store i32 0, ptr %23, align 8, !tbaa !95
  %i.ew = getelementptr inbounds nuw i8, ptr %23, i64 4 ; 8 uses
  store i32 0, ptr %i.ew, align 4, !tbaa !96
  %i.ex = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  store i32 0, ptr %i.ex, align 8, !tbaa !341
  %i.ey = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ez = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #29
  %i.fa = ptrtoint ptr %i.ez to i64
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !97
  %i.fb = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.fc = getelementptr inbounds nuw i8, ptr %23, i64 56 ; 2 uses
  %i.fd = ptrtoint ptr %5 to i64                  ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fb, i8 0, i64 32, i1 false)
  store i64 %i.fd, ptr %i.fc, align 8, !tbaa !97
  %i.fe = getelementptr inbounds nuw i8, ptr %23, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i8 0, i64 24, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %23, i64 88 ; 2 uses
  store i64 %i.fd, ptr %i.ff, align 8, !tbaa !97
  %i.fg = getelementptr inbounds nuw i8, ptr %23, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i8 0, i64 24, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %23, i64 120 ; 2 uses
  store i64 %i.fd, ptr %i.fh, align 8, !tbaa !97
  %i.fi = getelementptr inbounds nuw i8, ptr %23, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i8 0, i64 24, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !34
  switch i64 %i.fk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread [
    i64 0, label %.loopexit467
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i321
  %i.fl = load ptr, ptr %20, align 8, !tbaa !35
  %i.fm = load i64, ptr %i.fl, align 1
  %i.fn = icmp ne i64 %i.fm, 7953754361492234599
  %i.fo = zext i1 %i.fn to i32
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %._crit_edge.i.i323, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread

._crit_edge.i.i323:                               ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  %i.fq = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store ptr %i.fq, ptr %25, align 8, !tbaa !31
  store i8 89, ptr %i.fq, align 8, !tbaa !25
  %i.fr = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 1, ptr %i.fr, align 8, !tbaa !34
  %i.fs = getelementptr inbounds nuw i8, ptr %25, i64 17
  store i8 0, ptr %i.fs, align 1, !tbaa !25
  store i64 0, ptr %26, align 8, !tbaa !98
  invoke void @_ZN4pbrt5ImageC1ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %24, i32 noundef 2, i64 1099511628032, ptr nonnull %25, i64 1, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %26, i64 %i.fd)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %._crit_edge.i.i323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %23, ptr noundef nonnull align 8 dereferenceable(152) %24, i64 12, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.fu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(32) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %i.ft)
          to label %.noexc327 unwind label %bb.af ; 0 uses

.noexc327:                                        ; preds = %bb.ac
  %i.fv = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.fw = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !98
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !98
  %i.fy = getelementptr inbounds nuw i8, ptr %24, i64 56
  %i.fz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %i.fy)
          to label %.noexc328 unwind label %bb.af ; 0 uses

.noexc328:                                        ; preds = %.noexc327
  %i.ga = getelementptr inbounds nuw i8, ptr %24, i64 88
  %i.gb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %i.ga)
          to label %.noexc329 unwind label %bb.af ; 0 uses

.noexc329:                                        ; preds = %.noexc328
  %i.gc = getelementptr inbounds nuw i8, ptr %24, i64 120
  %i.gd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %i.gc)
          to label %_ZN4pbrt5ImageaSEOS0_.exit unwind label %bb.af ; 0 uses

_ZN4pbrt5ImageaSEOS0_.exit:                       ; preds = %.noexc329
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %24) #29
  %i.ge = load ptr, ptr %25, align 8, !tbaa !35   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %_ZN4pbrt5ImageaSEOS0_.exit
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !25
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %_ZN4pbrt5ImageaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  %.sroa.3103.0.extract.trunc505 = load i32, ptr %i.ex, align 8
  %i.gj = icmp sgt i32 %.sroa.3103.0.extract.trunc505, 0
  br i1 %i.gj, label %.preheader483.preheader, label %.loopexit487

.preheader483.preheader:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
  %.sroa.0.0.copyload.i343500.pre = load i64, ptr %i.ew, align 4
  br label %.preheader483

.preheader483:                                    ; preds = %.preheader483.preheader, %._crit_edge
  %.sroa.0.0.copyload.i600 = phi i64 [ %.sroa.0.0.copyload.i343500.pre, %.preheader483.preheader ], [ %.sroa.0.0.copyload.i, %._crit_edge ] ; 3 uses
  %indvars.iv569.a = phi i64 [ 0, %.preheader483.preheader ], [ %indvars.iv.next570.a, %._crit_edge ] ; 3 uses
  %.sroa.096.0.extract.trunc501 = trunc i64 %.sroa.0.0.copyload.i600 to i32 ; 2 uses
  %i.gk = icmp sgt i32 %.sroa.096.0.extract.trunc501, 0
  br i1 %i.gk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader483
  %i.gl = trunc nuw nsw i64 %indvars.iv569.a to i32
  %i.gm = uitofp nneg i32 %i.gl to float
  %i.gn = fadd nnan float %i.gm, 5.000000e-01
  %i.go = fmul nnan float %i.gn, 2.000000e+00
  %.sroa.2440.0.insert.shift = shl nuw nsw i64 %indvars.iv569.a, 32
  %i.gp = insertelement <2 x float> poison, float %i.go, i64 1
  br label %bb.ah

bb.ad:                                            ; preds = %._crit_edge.i.i309
  %i.gq = landingpad { ptr, i32 }
          cleanup
  %i.gr = load ptr, ptr %22, align 8, !tbaa !35   ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.em
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334: ; preds = %bb.ad
  %i.gt = load i64, ptr %i.em, align 8, !tbaa !25
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %i.gv = load ptr, ptr %21, align 8, !tbaa !35   ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.ej
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336
  %i.gx = load i64, ptr %i.ej, align 8, !tbaa !25
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i337
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399

bb.ae:                                            ; preds = %._crit_edge.i.i323
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %.noexc329, %.noexc328, %.noexc327, %bb.ac
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %24) #29
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn231 = phi { ptr, i32 } [ %i.ha, %bb.af ], [ %i.gz, %bb.ae ]
  %i.hb = load ptr, ptr %25, align 8, !tbaa !35   ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340: ; preds = %bb.ag
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !25
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.ai, %.preheader483
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i600, %.preheader483 ], [ %.sroa.0.0.copyload.i343, %bb.ai ] ; 2 uses
  %indvars.iv.next570.a = add nuw nsw i64 %indvars.iv569.a, 1 ; 2 uses
  %i.hg = ashr i64 %.sroa.0.0.copyload.i, 32
  %i.hh = icmp slt i64 %indvars.iv.next570.a, %i.hg
  br i1 %i.hh, label %.preheader483, label %.loopexit487, !llvm.loop !326

bb.ah:                                            ; preds = %.lr.ph, %bb.ai
  %indvars.iv566.a = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next567.a, %bb.ai ] ; 3 uses
  %.sroa.096.0.extract.trunc504 = phi i32 [ %.sroa.096.0.extract.trunc501, %.lr.ph ], [ %.sroa.096.0.extract.trunc, %bb.ai ]
  %.sroa.0.0.copyload.i343503 = phi i64 [ %.sroa.0.0.copyload.i600, %.lr.ph ], [ %.sroa.0.0.copyload.i343, %bb.ai ]
  %i.hi = trunc nuw nsw i64 %indvars.iv566.a to i32
  %i.hj = uitofp nneg i32 %i.hi to float
  %i.hk = fadd nnan float %i.hj, 5.000000e-01
  %i.hl = fmul nnan float %i.hk, 2.000000e+00
  %.sroa.494.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i343503, 32
  %.sroa.494.0.extract.trunc = trunc nuw i64 %.sroa.494.0.extract.shift to i32
  %i.hm = insertelement <2 x i32> poison, i32 %.sroa.096.0.extract.trunc504, i64 0
  %i.hn = insertelement <2 x i32> %i.hm, i32 %.sroa.494.0.extract.trunc, i64 1
  %i.ho = sitofp <2 x i32> %i.hn to <2 x float>
  %i.hp = insertelement <2 x float> %i.gp, float %i.hl, i64 0
  %i.hq = fdiv <2 x float> %i.hp, %i.ho
  %i.hr = fadd <2 x float> %i.hq, splat (float -1.000000e+00) ; 2 uses
  %i.hs = fmul <2 x float> %i.hr, %i.hr           ; 2 uses
  %shift = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.hs, %shift
  %i.ht = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.hu = fneg float %i.ht
  %i.hv = call noundef float @expf(float noundef %i.hu) #29
  %i.hw = fadd float %i.hv, f0xBEBC5AB2           ; 2 uses
  %i.hx = fcmp ogt float %i.hw, 0.000000e+00
  %.sroa.speculated = select i1 %i.hx, float %i.hw, float 0.000000e+00
  %.sroa.0439.0.insert.insert = or disjoint i64 %.sroa.2440.0.insert.shift, %indvars.iv566.a
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %23, i64 %.sroa.0439.0.insert.insert, i32 noundef 0, float noundef %.sroa.speculated)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %indvars.iv.next567.a = add nuw nsw i64 %indvars.iv566.a, 1 ; 2 uses
  %.sroa.0.0.copyload.i343 = load i64, ptr %i.ew, align 4 ; 4 uses
  %.sroa.096.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i343 to i32
  %sext = shl i64 %.sroa.0.0.copyload.i343, 32
  %i.hy = ashr exact i64 %sext, 32
  %i.hz = icmp slt i64 %indvars.iv.next567.a, %i.hy
  br i1 %i.hz, label %bb.ah, label %._crit_edge, !llvm.loop !327

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i321
  %i.ia = load ptr, ptr %20, align 8, !tbaa !35   ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 1
  %i.ic = xor i32 %i.ib, 1635086707
  %i.id = getelementptr i8, ptr %i.ia, i64 4
  %i.ie = load i16, ptr %i.id, align 1
  %i.if = zext i16 %i.ie to i32
  %i.ig = xor i32 %i.if, 25970
  %i.ih = or i32 %i.ic, %i.ig
  %i.ii = icmp ne i32 %i.ih, 0
  %i.ij = zext i1 %i.ii to i32
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.aj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread

bb.aj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  store i64 0, ptr %30, align 8, !tbaa !98
  invoke void @_ZN4pbrt5ImageC1ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %27, i32 noundef 2, i64 1099511628032, ptr nonnull %28, i64 1, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %30, i64 %i.fd)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.il = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZN4pbrt5ImageaSEOS0_(ptr noundef nonnull align 8 dereferenceable(152) %23, ptr noundef nonnull align 8 dereferenceable(152) %27)
          to label %bb.am unwind label %bb.ap     ; 0 uses

bb.am:                                            ; preds = %bb.al
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %27) #29
  %i.im = load ptr, ptr %28, align 8, !tbaa !35   ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348: ; preds = %bb.am
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !25
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %.preheader488

.preheader488:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, %bb.ar
  %indvars.iv562 = phi i64 [ 64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350 ], [ %indvars.iv.next563, %bb.ar ] ; 2 uses
  %.sroa.2434.0.insert.shift = shl nuw nsw i64 %indvars.iv562, 32
  br label %bb.as

bb.an:                                            ; preds = %bb.aj
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit493

bb.ao:                                            ; preds = %bb.ak
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %27) #29
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn227 = phi { ptr, i32 } [ %i.it, %bb.ap ], [ %i.is, %bb.ao ] ; 2 uses
  %i.iu = load ptr, ptr %28, align 8, !tbaa !35   ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %.loopexit493, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351: ; preds = %bb.aq
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !25
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iy) #31
  br label %.loopexit493

.loopexit493:                                     ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351, %bb.an
end_hunk_1
begin_hunk_2_@_ZN4pbrt15RealisticCamera6CreateERKNS_19ParameterDictionaryERKNS_15CameraTransformENS_4FilmENS_6MediumEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE:._crit_edge.i.i
  %i.kv = load ptr, ptr %40, align 8, !tbaa !35   ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.1
  %i.ky = load i64, ptr %i.kw, align 8, !tbaa !25
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.kz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360.2
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  %i.la = getelementptr inbounds nuw i8, ptr %39, i64 40
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !103
  %.not466 = icmp eq i64 %i.lb, 0
  br i1 %.not466, label %bb.bs, label %bb.cb

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.2
  invoke void @_ZN4pbrt9ErrorExitIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_(ptr noundef nonnull @.str.94, ptr noundef nonnull align 8 dereferenceable(32) %20) #30
          to label %bb.bt unwind label %bb.ca

bb.bt:                                            ; preds = %bb.bs
  unreachable

bb.bu:                                            ; preds = %bb.bi
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

bb.bv:                                            ; preds = %bb.bj
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365

bb.bw:                                            ; preds = %bb.bk
  %i.le = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lf = load ptr, ptr %36, align 8, !tbaa !35   ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363: ; preds = %bb.bw
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !25
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363, %bb.bv
  %.pn201 = phi { ptr, i32 } [ %i.ld, %bb.bv ], [ %i.le, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i363 ], [ %i.le, %bb.bw ] ; 2 uses
  %i.lk = load ptr, ptr %37, align 8, !tbaa !35   ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !25
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lo) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.thread:                                          ; preds = %bb.bn
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit481.sink.split

.thread704:                                       ; preds = %bb.bo
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %.preheader480.preheader

bb.by:                                            ; preds = %bb.bq
  %i.ls = landingpad { ptr, i32 }
          cleanup
  %i.lt = getelementptr inbounds nuw i8, ptr %40, i64 64
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !35 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %40, i64 80 ; 2 uses
  %i.lw = icmp eq ptr %i.lu, %i.lv
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369: ; preds = %bb.by
  %i.lx = load i64, ptr %i.lv, align 8, !tbaa !25
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.ly) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369
  %i.lz = getelementptr inbounds nuw i8, ptr %40, i64 32
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !35 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %40, i64 48 ; 2 uses
  %i.mc = icmp eq ptr %i.ma, %i.mb
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371
  %i.md = load i64, ptr %i.mb, align 8, !tbaa !25
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.me) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369.1
  %i.mf = load ptr, ptr %40, align 8, !tbaa !35   ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %.thread710, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371.1
  %i.mi = load i64, ptr %i.mg, align 8, !tbaa !25
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mj) #31
  br label %.thread710

.thread710:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369.2
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  br label %.loopexit481.sink.split

bb.bz:                                            ; preds = %bb.bp
  %i.mk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #29
  br label %.preheader480.preheader

.preheader480.preheader:                          ; preds = %bb.bz, %.thread704
  %.pn203.pn709 = phi { ptr, i32 } [ %i.lr, %.thread704 ], [ %i.mk, %bb.bz ]
  %.0187708 = phi ptr [ %i.kh, %.thread704 ], [ %i.ki, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  br label %.preheader480

.preheader480:                                    ; preds = %.preheader480.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374
  %i.ml = phi ptr [ %i.mm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374 ], [ %.0187708, %.preheader480.preheader ] ; 2 uses
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 -32 ; 3 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !35 ; 2 uses
  %i.mo = getelementptr inbounds i8, ptr %i.ml, i64 -16 ; 2 uses
  %i.mp = icmp eq ptr %i.mn, %i.mo
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372: ; preds = %.preheader480
  %i.mq = load i64, ptr %i.mo, align 8, !tbaa !25
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374: ; preds = %.preheader480, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372
  %i.ms = icmp eq ptr %i.mm, %40
  br i1 %i.ms, label %.loopexit481, label %.preheader480

.loopexit481.sink.split:                          ; preds = %.thread, %.thread710
  %.pn203.pn.pn465.ph = phi { ptr, i32 } [ %i.ls, %.thread710 ], [ %i.lq, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  br label %.loopexit481

.loopexit481:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, %.loopexit481.sink.split
  %.pn203.pn.pn465 = phi { ptr, i32 } [ %.pn203.pn.pn465.ph, %.loopexit481.sink.split ], [ %.pn203.pn709, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  br label %bb.cs

bb.ca:                                            ; preds = %bb.bs
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.2
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #29
  %.sroa.0.0.copyload.i375 = load i64, ptr %i.ew, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %46)
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  store i64 0, ptr %47, align 8, !tbaa !98
  invoke void @_ZN4pbrt5ImageC1ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %44, i32 noundef 2, i64 %.sroa.0.0.copyload.i375, ptr nonnull %45, i64 1, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %47, i64 %i.fd)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.mu = load ptr, ptr %45, align 8, !tbaa !35   ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376: ; preds = %bb.cd
  %i.mx = load i64, ptr %i.mv, align 8, !tbaa !25
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.my) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #29
  %i.mz = getelementptr inbounds nuw i8, ptr %44, i64 4 ; 2 uses
  %49 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %.sroa.344.0.extract.trunc512 = load i32, ptr %49, align 8
  %i.na = icmp sgt i32 %.sroa.344.0.extract.trunc512, 0
  br i1 %i.na, label %.preheader474.lr.ph, label %._crit_edge518

.preheader474.lr.ph:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378
  %i.nb = getelementptr inbounds nuw i8, ptr %48, i64 40 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.nd = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.ne = getelementptr inbounds nuw i8, ptr %48, i64 32
  %.sroa.0.0.copyload.i383507.pre = load i64, ptr %i.mz, align 4
  br label %.preheader474

.preheader474:                                    ; preds = %.preheader474.lr.ph, %._crit_edge513
  %.sroa.0.0.copyload.i379603 = phi i64 [ %.sroa.0.0.copyload.i383507.pre, %.preheader474.lr.ph ], [ %.sroa.0.0.copyload.i379, %._crit_edge513 ] ; 2 uses
  %indvars.iv575 = phi i64 [ 0, %.preheader474.lr.ph ], [ %indvars.iv.next576, %._crit_edge513 ] ; 2 uses
  %.sroa.037.0.extract.trunc510 = trunc i64 %.sroa.0.0.copyload.i379603 to i32
  %i.nf = icmp sgt i32 %.sroa.037.0.extract.trunc510, 0
  br i1 %i.nf, label %.lr.ph512, label %._crit_edge513

.lr.ph512:                                        ; preds = %.preheader474
  %.sroa.2422.0.insert.shift = shl nuw nsw i64 %indvars.iv575, 32
  br label %bb.cg

._crit_edge518:                                   ; preds = %._crit_edge513, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378
  %i.ng = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZN4pbrt5ImageaSEOS0_(ptr noundef nonnull align 8 dereferenceable(152) %23, ptr noundef nonnull align 8 dereferenceable(152) %44)
          to label %bb.cp unwind label %.loopexit.split-lp476.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ce:                                            ; preds = %bb.cb
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit479

bb.cf:                                            ; preds = %bb.cc
  %i.ni = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nj = load ptr, ptr %45, align 8, !tbaa !35   ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %.loopexit479, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380: ; preds = %bb.cf
  %i.nm = load i64, ptr %i.nk, align 8, !tbaa !25
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nn) #31
  br label %.loopexit479

.loopexit479:                                     ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380, %bb.ce
  %.pn207 = phi { ptr, i32 } [ %i.nh, %bb.ce ], [ %i.ni, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380 ], [ %i.ni, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #29
  br label %bb.cq

._crit_edge513:                                   ; preds = %bb.cn, %.preheader474
  %.sroa.0.0.copyload.i379 = phi i64 [ %.sroa.0.0.copyload.i379603, %.preheader474 ], [ %.sroa.0.0.copyload.i383, %bb.cn ] ; 2 uses
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1 ; 2 uses
  %i.no = ashr i64 %.sroa.0.0.copyload.i379, 32
  %i.np = icmp slt i64 %indvars.iv.next576, %i.no
  br i1 %i.np, label %.preheader474, label %._crit_edge518, !llvm.loop !330

bb.cg:                                            ; preds = %.lr.ph512, %bb.cn
  %indvars.iv572 = phi i64 [ 0, %.lr.ph512 ], [ %indvars.iv.next573, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #29
  %.sroa.0421.0.insert.insert = or disjoint i64 %.sroa.2422.0.insert.shift, %indvars.iv572 ; 2 uses
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %48, ptr noundef nonnull align 8 dereferenceable(152) %23, i64 %.sroa.0421.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(48) %39, i64 4294967297)
          to label %bb.ch unwind label %bb.co

bb.ch:                                            ; preds = %bb.cg
  %i.nq = load i64, ptr %i.nb, align 8, !tbaa !343 ; 5 uses
  %.not.i = icmp eq i64 %i.nq, 0
  %.pre = load ptr, ptr %i.nc, align 8, !tbaa !344 ; 4 uses
  br i1 %.not.i, label %.loopexit473, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ch
  %.not.i.i.i = icmp eq ptr %.pre, null
  %i.nr = select i1 %.not.i.i.i, ptr %i.nd, ptr %.pre ; 9 uses
  %xtraiter = and i64 %i.nq, 7                    ; 3 uses
  %i.ns = icmp ult i64 %i.nq, 8
  br i1 %i.ns, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.nq, -8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.ci ] ; 9 uses
  %.057.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.ox, %bb.ci ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.ci ]
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv.i
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !14
  %i.nv = fadd float %.057.i, %i.nu
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv.i
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !14
  %i.nz = fadd float %i.nv, %i.ny
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !14
  %i.od = fadd float %i.nz, %i.oc
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv.i
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 12
  %i.og = load float, ptr %i.of, align 4, !tbaa !14
  %i.oh = fadd float %i.od, %i.og
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !14
  %i.ol = fadd float %i.oh, %i.ok
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv.i
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 20
  %i.oo = load float, ptr %i.on, align 4, !tbaa !14
  %i.op = fadd float %i.ol, %i.oo
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv.i
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.os = load float, ptr %i.or, align 4, !tbaa !14
  %i.ot = fadd float %i.op, %i.os
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv.i
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 28
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !14
  %i.ox = fadd float %i.ot, %i.ow                 ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit473.loopexit.unr-lcssa, label %bb.ci, !llvm.loop !331

.loopexit473.loopexit.unr-lcssa:                  ; preds = %bb.ci
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit473, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit473.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %.loopexit473.loopexit.unr-lcssa ]
  %.057.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ox, %.loopexit473.loopexit.unr-lcssa ]
  %lcmp.mod747 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod747)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.cj ] ; 2 uses
  %.057.i.epil = phi float [ %.057.i.epil.init, %.epil.preheader ], [ %i.pa, %bb.cj ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cj ]
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv.i.epil
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !14
  %i.pa = fadd float %.057.i.epil, %i.oz          ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit473, label %bb.cj, !llvm.loop !332

.loopexit473:                                     ; preds = %.loopexit473.loopexit.unr-lcssa, %bb.cj, %bb.ch
  %.05.lcssa.i = phi float [ 0.000000e+00, %bb.ch ], [ %i.ox, %.loopexit473.loopexit.unr-lcssa ], [ %i.pa, %bb.cj ]
  %i.pb = uitofp nneg i64 %i.nq to float
  %i.pc = fdiv float %.05.lcssa.i, %i.pb
  store i64 0, ptr %i.nb, align 8, !tbaa !343
  %.not.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %.loopexit473
  %i.pd = load i64, ptr %i.ne, align 8, !tbaa !345
  %i.pe = shl i64 %i.pd, 2
  %i.pf = load ptr, ptr %48, align 8, !tbaa !105  ; 2 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !73
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  %i.pi = load ptr, ptr %i.ph, align 8
  invoke void %i.pi(ptr noundef nonnull align 8 dereferenceable(8) %i.pf, ptr noundef nonnull %.pre, i64 noundef %i.pe, i64 noundef 4)
          to label %bb.cm unwind label %bb.cl, !inline_history !0

bb.cl:                                            ; preds = %bb.ck
  %i.pj = landingpad { ptr, i32 }
          catch ptr null
  %i.pk = extractvalue { ptr, i32 } %i.pj, 0
  call void @__clang_call_terminate(ptr %i.pk) #32
  unreachable

bb.cm:                                            ; preds = %bb.ck, %.loopexit473
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #29
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %44, i64 %.sroa.0421.0.insert.insert, i32 noundef 0, float noundef %i.pc)
          to label %bb.cn unwind label %.loopexit.split-lp476.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cn:                                            ; preds = %bb.cm
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %.sroa.0.0.copyload.i383 = load i64, ptr %i.mz, align 4 ; 2 uses
  %i.pl = shl i64 %.sroa.0.0.copyload.i383, 32
  %i.pm = ashr exact i64 %i.pl, 32
  %i.pn = icmp slt i64 %indvars.iv.next573, %i.pm
  br i1 %i.pn, label %bb.cg, label %._crit_edge513, !llvm.loop !333

bb.co:                                            ; preds = %bb.cg
  %i.po = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #29
  br label %.loopexit.split-lp476

.loopexit.split-lp476.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cm, %._crit_edge518
  %lpad.loopexit.split-lp737 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp476

bb.cp:                                            ; preds = %._crit_edge518
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %44) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #29
  call void @_ZN4pbrt16ImageChannelDescD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %39) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  br label %bb.ct

.loopexit.split-lp476:                            ; preds = %.loopexit.split-lp476.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.co
  %.pn211.pn = phi { ptr, i32 } [ %i.po, %bb.co ], [ %lpad.loopexit.split-lp737, %.loopexit.split-lp476.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %44) #29
  br label %bb.cq

bb.cq:                                            ; preds = %.loopexit.split-lp476, %.loopexit479
  %.pn211.pn.pn = phi { ptr, i32 } [ %.pn211.pn, %.loopexit.split-lp476 ], [ %.pn207, %.loopexit479 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #29
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.ca
  %.pn211.pn.pn.pn = phi { ptr, i32 } [ %.pn211.pn.pn, %bb.cq ], [ %i.mt, %bb.ca ]
  call void @_ZN4pbrt16ImageChannelDescD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %39) #29
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.loopexit481
  %.pn211.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn211.pn.pn.pn, %bb.cr ], [ %.pn203.pn.pn465, %.loopexit481 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cp, %bb.bm
  call void @_ZN4pbrt16ImageAndMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %35) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  br label %.loopexit487

bb.cu:                                            ; preds = %bb.cs, %bb.bx
  %.pn211.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn211.pn.pn.pn.pn, %bb.cs ], [ %i.lp, %bb.bx ]
  call void @_ZN4pbrt16ImageAndMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %35) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366, %bb.cu, %bb.bu
  %.pn211.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn211.pn.pn.pn.pn.pn, %bb.cu ], [ %i.lc, %bb.bu ], [ %.pn201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366 ], [ %.pn201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit365 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  br label %.loopexit.split-lp

.loopexit487:                                     ; preds = %bb.ar, %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, %bb.be, %bb.ct, %bb.ax
  %i.pp = load i32, ptr %i.ew, align 4, !tbaa !96
  %i.pq = icmp sgt i32 %i.pp, 0
  %i.pr = load i32, ptr %i.ex, align 8
  %i.ps = icmp sgt i32 %i.pr, 0
  %i.pt = select i1 %i.pq, i1 %i.ps, i1 false
  br i1 %i.pt, label %bb.cv, label %.loopexit467

bb.cv:                                            ; preds = %.loopexit487
  invoke void @_ZN4pbrt5Image5FlipYEv(ptr noundef nonnull align 8 dereferenceable(152) %23)
          to label %.preheader472 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader472:                                    ; preds = %bb.cv
  %.sroa.0.0.copyload.i384527 = load i64, ptr %i.ew, align 4 ; 2 uses
  %.sroa.330.0.extract.shift528 = lshr i64 %.sroa.0.0.copyload.i384527, 32
  %.sroa.330.0.extract.trunc529 = trunc nuw i64 %.sroa.330.0.extract.shift528 to i32 ; 2 uses
  %i.pu = icmp sgt i32 %.sroa.330.0.extract.trunc529, 0
  br i1 %i.pu, label %.preheader468, label %.loopexit467

.preheader468:                                    ; preds = %.preheader472, %._crit_edge526
  %.sroa.3.0.extract.trunc537599 = phi i32 [ %.sroa.3.0.extract.trunc537598, %._crit_edge526 ], [ %.sroa.330.0.extract.trunc529, %.preheader472 ]
  %.sroa.0.0.copyload.i384605 = phi i64 [ %.sroa.0.0.copyload.i384, %._crit_edge526 ], [ %.sroa.0.0.copyload.i384527, %.preheader472 ] ; 3 uses
  %indvars.iv589.a = phi i64 [ %indvars.iv.next590.a, %._crit_edge526 ], [ 0, %.preheader472 ] ; 2 uses
  %.0176530 = phi float [ %.1177.lcssa, %._crit_edge526 ], [ 0.000000e+00, %.preheader472 ] ; 2 uses
  %.sroa.024.0.extract.trunc522 = trunc i64 %.sroa.0.0.copyload.i384605 to i32
  %i.pv = icmp sgt i32 %.sroa.024.0.extract.trunc522, 0
  br i1 %i.pv, label %.lr.ph525, label %.preheader468.._crit_edge522_crit_edge

.preheader468.._crit_edge522_crit_edge:           ; preds = %.preheader468
  %.pre607 = lshr i64 %.sroa.0.0.copyload.i384605, 32
  %.pre608 = trunc nuw i64 %.pre607 to i32
  br label %._crit_edge526

.lr.ph525:                                        ; preds = %.preheader468
  %.sroa.2416.0.insert.shift = shl nuw nsw i64 %indvars.iv589.a, 32
  br label %bb.cw

._crit_edge532:                                   ; preds = %._crit_edge526
  %50 = icmp sgt i32 %.sroa.3.0.extract.trunc537598, 0
  %.sroa.021.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i384 to i32
  %i.pw = mul nsw i32 %.sroa.330.0.extract.trunc.pre-phi, %.sroa.021.0.extract.trunc
  %i.px = sitofp i32 %i.pw to float
  %i.py = fdiv float %.1177.lcssa, %i.px
  %i.pz = fdiv float f0x3F490FDB, %i.py
  br i1 %50, label %.preheader, label %.loopexit467

._crit_edge522.loopexit:                          ; preds = %bb.cx
  %51 = lshr i64 %.sroa.0.0.copyload.i387, 32
  %52 = trunc nuw i64 %51 to i32                  ; 2 uses
  br label %._crit_edge526

._crit_edge526:                                   ; preds = %.preheader468.._crit_edge522_crit_edge, %._crit_edge522.loopexit
  %.sroa.330.0.extract.trunc.pre-phi = phi i32 [ %.pre608, %.preheader468.._crit_edge522_crit_edge ], [ %52, %._crit_edge522.loopexit ] ; 2 uses
  %.sroa.3.0.extract.trunc537598 = phi i32 [ %.sroa.3.0.extract.trunc537599, %.preheader468.._crit_edge522_crit_edge ], [ %52, %._crit_edge522.loopexit ] ; 2 uses
  %.sroa.0.0.copyload.i384 = phi i64 [ %.sroa.0.0.copyload.i384605, %.preheader468.._crit_edge522_crit_edge ], [ %.sroa.0.0.copyload.i387, %._crit_edge522.loopexit ] ; 3 uses
  %.1177.lcssa = phi float [ %.0176530, %.preheader468.._crit_edge522_crit_edge ], [ %i.qc, %._crit_edge522.loopexit ] ; 2 uses
  %indvars.iv.next590.a = add nuw nsw i64 %indvars.iv589.a, 1 ; 2 uses
  %53 = sext i32 %.sroa.330.0.extract.trunc.pre-phi to i64
  %i.qa = icmp slt i64 %indvars.iv.next590.a, %53
  br i1 %i.qa, label %.preheader468, label %._crit_edge532, !llvm.loop !334

bb.cw:                                            ; preds = %.lr.ph525, %bb.cx
  %indvars.iv586.a = phi i64 [ 0, %.lr.ph525 ], [ %indvars.iv.next587.a, %bb.cx ] ; 2 uses
  %.1177523 = phi float [ %.0176530, %.lr.ph525 ], [ %i.qc, %bb.cx ]
  %.sroa.0415.0.insert.insert = or disjoint i64 %.sroa.2416.0.insert.shift, %indvars.iv586.a
  %i.qb = invoke noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %23, i64 %.sroa.0415.0.insert.insert, i32 noundef 0, i64 4294967297)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cw
  %i.qc = fadd float %.1177523, %i.qb             ; 2 uses
  %indvars.iv.next587.a = add nuw nsw i64 %indvars.iv586.a, 1 ; 2 uses
  %.sroa.0.0.copyload.i387 = load i64, ptr %i.ew, align 4 ; 3 uses
  %i.qd = shl i64 %.sroa.0.0.copyload.i387, 32
  %i.qe = ashr exact i64 %i.qd, 32
  %i.qf = icmp slt i64 %indvars.iv.next587.a, %i.qe
  br i1 %i.qf, label %bb.cw, label %._crit_edge522.loopexit, !llvm.loop !335

.preheader:                                       ; preds = %._crit_edge532, %._crit_edge540
  %.sroa.0.0.copyload.i389609 = phi i64 [ %.sroa.0.0.copyload.i389, %._crit_edge540 ], [ %.sroa.0.0.copyload.i384, %._crit_edge532 ] ; 2 uses
  %indvars.iv595 = phi i64 [ %indvars.iv.next596, %._crit_edge540 ], [ 0, %._crit_edge532 ] ; 2 uses
  %.sroa.0.0.extract.trunc537 = trunc i64 %.sroa.0.0.copyload.i389609 to i32
  %i.qg = icmp sgt i32 %.sroa.0.0.extract.trunc537, 0
  br i1 %i.qg, label %.lr.ph539, label %._crit_edge540

.lr.ph539:                                        ; preds = %.preheader
  %.sroa.2410.0.insert.shift = shl nuw nsw i64 %indvars.iv595, 32
  br label %bb.cy

._crit_edge540:                                   ; preds = %bb.da, %.preheader
  %.sroa.0.0.copyload.i389 = phi i64 [ %.sroa.0.0.copyload.i389609, %.preheader ], [ %.sroa.0.0.copyload.i390, %bb.da ] ; 2 uses
  %indvars.iv.next596 = add nuw nsw i64 %indvars.iv595, 1 ; 2 uses
  %i.qh = ashr i64 %.sroa.0.0.copyload.i389, 32
  %i.qi = icmp slt i64 %indvars.iv.next596, %i.qh
  br i1 %i.qi, label %.preheader, label %.loopexit467, !llvm.loop !336

bb.cy:                                            ; preds = %.lr.ph539, %bb.da
  %indvars.iv592 = phi i64 [ 0, %.lr.ph539 ], [ %indvars.iv.next593, %bb.da ] ; 2 uses
  %.sroa.0409.0.insert.insert = or disjoint i64 %.sroa.2410.0.insert.shift, %indvars.iv592 ; 2 uses
  %i.qj = invoke noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %23, i64 %.sroa.0409.0.insert.insert, i32 noundef 0, i64 4294967297)
          to label %bb.cz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cz:                                            ; preds = %bb.cy
  %i.qk = fmul float %i.pz, %i.qj
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %23, i64 %.sroa.0409.0.insert.insert, i32 noundef 0, float noundef %i.qk)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.da:                                            ; preds = %bb.cz
  %indvars.iv.next593 = add nuw nsw i64 %indvars.iv592, 1 ; 2 uses
  %.sroa.0.0.copyload.i390 = load i64, ptr %i.ew, align 4 ; 2 uses
  %i.ql = shl i64 %.sroa.0.0.copyload.i390, 32
  %i.qm = ashr exact i64 %i.ql, 32
  %i.qn = icmp slt i64 %indvars.iv.next593, %i.qm
  br i1 %i.qn, label %bb.cy, label %._crit_edge540, !llvm.loop !337

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ah, %bb.cz, %bb.cy, %bb.cw, %bb.as, %.noexc392, %.loopexit467, %bb.cv, %bb.bb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit347.thread
  %lpad.loopexit.split-lp743 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit467:                                     ; preds = %._crit_edge540, %.preheader472, %._crit_edge532, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i321, %.loopexit487
  %i.qo = load ptr, ptr %5, align 8, !tbaa !73
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.qq = load ptr, ptr %i.qp, align 8
  %i.qr = invoke noundef ptr %i.qq(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 1128, i64 noundef 8)
          to label %.noexc392 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !338 ; 2 uses

.noexc392:                                        ; preds = %.loopexit467
  invoke void @_ZN4pstd3pmr21polymorphic_allocatorISt4byteE9constructIN4pbrt15RealisticCameraEJRNS5_20CameraBaseParametersERSt6vectorIfSaIfEERfSD_NS5_5ImageERS3_EEEvPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.qr, ptr noundef nonnull align 8 dereferenceable(848) %9, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(152) %23, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt15RealisticCameraEJRNS5_20CameraBaseParametersERSt6vectorIfSaIfEERfSD_NS5_5ImageERS3_EEEPT_DpOT0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt15RealisticCameraEJRNS5_20CameraBaseParametersERSt6vectorIfSaIfEERfSD_NS5_5ImageERS3_EEEPT_DpOT0_.exit: ; preds = %.noexc392
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %23) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  %i.qs = load ptr, ptr %20, align 8, !tbaa !35   ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.qu = icmp eq ptr %i.qs, %i.qt
  br i1 %i.qu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt15RealisticCameraEJRNS5_20CameraBaseParametersERSt6vectorIfSaIfEERfSD_NS5_5ImageERS3_EEEPT_DpOT0_.exit
  %i.qv = load i64, ptr %i.qt, align 8, !tbaa !25
  %i.qw = add i64 %i.qv, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt15RealisticCameraEJRNS5_20CameraBaseParametersERSt6vectorIfSaIfEERfSD_NS5_5ImageERS3_EEEPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %bb.db

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, %bb.bh, %bb.ba, %.loopexit493, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
  %.pn239 = phi { ptr, i32 } [ %.pn211.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368 ], [ %.pn224, %bb.ba ], [ %.pn227.pn, %.loopexit493 ], [ %.pn231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342 ], [ %.pn219, %bb.bh ], [ %lpad.loopexit.split-lp743, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %23) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  %i.qx = load ptr, ptr %20, align 8, !tbaa !35   ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.qz = icmp eq ptr %i.qx, %i.qy
  br i1 %i.qz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397: ; preds = %.loopexit.split-lp
  %i.ra = load i64, ptr %i.qy, align 8, !tbaa !25
  %i.rb = add i64 %i.ra, 1
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef %i.rb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339
  %.pn239.pn.pn = phi { ptr, i32 } [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit339 ], [ %.pn239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397 ], [ %.pn239, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %.body

bb.db:                                            ; preds = %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i306
  %.0 = phi ptr [ %i.qr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396 ], [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i306 ], [ null, %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit ]
  %i.rc = load ptr, ptr %18, align 8, !tbaa !75   ; 3 uses
  %.not.i.i.i400 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i.i400, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.rd = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !76
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = ptrtoint ptr %i.rc to i64
  %i.rh = sub i64 %i.rf, %i.rg
  call void @_ZdlPvm(ptr noundef nonnull %i.rc, i64 noundef %i.rh) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.de

.body:                                            ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, %.body307
  %.pn243 = phi { ptr, i32 } [ %.pn239.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399 ], [ %eh.lpad-body308, %.body307 ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.cr, %bb.r ] ; 2 uses
  %i.ri = load ptr, ptr %18, align 8, !tbaa !75   ; 3 uses
  %.not.i.i.i401 = icmp eq ptr %i.ri, null
  br i1 %.not.i.i.i401, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, label %bb.dd

bb.dd:                                            ; preds = %.body
  %i.rj = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !76
  %i.rl = ptrtoint ptr %i.rk to i64
  %i.rm = ptrtoint ptr %i.ri to i64
  %i.rn = sub i64 %i.rl, %i.rm
  call void @_ZdlPvm(ptr noundef nonnull %i.ri, i64 noundef %i.rn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300: ; preds = %bb.v, %bb.dd, %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298, %bb.u
  %.pn243.pn = phi { ptr, i32 } [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298 ], [ %i.dg, %bb.u ], [ %.pn243, %bb.dd ], [ %.pn243, %.body ], [ %i.dh, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.df

bb.de:                                            ; preds = %bb.e, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.1 = phi ptr [ %.0, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.ro = load ptr, ptr %12, align 8, !tbaa !35   ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.rq = icmp eq ptr %i.ro, %i.rp
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %bb.de
  %i.rr = load i64, ptr %i.rp, align 8, !tbaa !25
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  ret ptr %.1

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
  %.pn246 = phi { ptr, i32 } [ %i.bv, %bb.k ], [ %.pn243.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300 ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288
  %.pn246.pn = phi { ptr, i32 } [ %.pn246, %bb.df ], [ %.pn194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.rt = load ptr, ptr %12, align 8, !tbaa !35   ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.rv = icmp eq ptr %i.rt, %i.ru
  br i1 %i.rv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406: ; preds = %bb.dg
  %i.rw = load i64, ptr %i.ru, align 8, !tbaa !25
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285
  %.pn246.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285 ], [ %.pn246.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406 ], [ %.pn246.pn, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  resume { ptr, i32 } %.pn246.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4pbrt15SphericalCamera6CreateERKNS_19ParameterDictionaryERKNS_15CameraTransformENS_4FilmENS_6MediumEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(824) %1, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %2, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %3, ptr noundef %4, ptr %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %6 = alloca %"struct.pbrt::CameraBaseParameters", align 8 ; 5 uses
  %7 = alloca %"class.pbrt::Camera", align 8      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"struct.pbrt::CameraBaseParameters", align 8 ; 6 uses
  %10 = alloca %"class.pbrt::Film", align 8       ; 2 uses
  %11 = alloca %"class.pbrt::Medium", align 8     ; 2 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::vector", align 8      ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.b = load i64, ptr %2, align 8, !tbaa !53
  store i64 %i.b, ptr %10, align 8, !tbaa !53
  %i.c = load i64, ptr %3, align 8, !tbaa !54
  store i64 %i.c, ptr %11, align 8, !tbaa !54
end_hunk_2
begin_hunk_3_@_ZNK4pbrt15RealisticCamera19TestExitPupilBoundsEv:bb.a
  %i.ct = fmul <2 x float> %.sroa.035.0.i, %i.cs  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.cu = extractelement <2 x float> %i.ct, i64 0 ; 2 uses
  %i.cv = fsub float %i.cu, %i.w
  %i.cw = insertelement <2 x float> %i.ct, float %i.cv, i64 0
  store <2 x float> %.sroa.065.4.vec.insert, ptr %1, align 8
  store float 0.000000e+00, ptr %.sroa.27.0..sroa_idx.i, align 8
  store <2 x float> %i.cw, ptr %i.ax, align 4
  store <2 x float> zeroinitializer, ptr %.sroa.23.0..sroa_idx.i, align 4
  store i64 0, ptr %i.ay, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.cx = call noundef float @_ZNK4pbrt15RealisticCamera19TraceLensesFromFilmERKNS_3RayEPS1_(ptr noundef nonnull align 8 dereferenceable(1128) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %2)
  %i.cy = fcmp une float %i.cx, 0.000000e+00
  br i1 %i.cy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4pbrt27SampleUniformDiskConcentricENS_6Point2IfEE.exit
  %i.cz = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.da = fcmp ole <4 x float> %i.cz, %i.az
  %i.db = fcmp oge <4 x float> %i.cz, %i.az
  %i.dc = shufflevector <4 x i1> %i.da, <4 x i1> %i.db, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dd = freeze <4 x i1> %i.dc
  %i.de = bitcast <4 x i1> %i.dd to i4
  %i.df = icmp eq i4 %i.de, -1
  br i1 %i.df, label %bb.n, label %_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit.thread

_ZN4pbrt6InsideIfEEbNS_6Point2IT_EERKNS_7Bounds2IS2_EE.exit.thread: ; preds = %bb.m
  %.sroa.9.12.vec.extract61 = extractelement <2 x float> %.sroa.9.0, i64 1
  %.sroa.051.4.vec.extract = extractelement <2 x float> %.sroa.051.0, i64 1
  %.sroa.9.8.vec.extract59 = extractelement <2 x float> %.sroa.9.0, i64 0
  %.sroa.051.0.vec.extract = extractelement <2 x float> %.sroa.051.0, i64 0
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !466
  %i.dh = fpext float %i.cu to double
  %i.di = extractelement <2 x float> %i.ct, i64 1
  %i.dj = fpext float %i.di to double
  %i.dk = fpext float %.sroa.051.0.vec.extract to double
  %i.dl = fpext float %.sroa.051.4.vec.extract to double
  %i.dm = fpext float %.sroa.9.8.vec.extract59 to double
  %i.dn = fpext float %.sroa.9.12.vec.extract61 to double
  %i.do = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dg, ptr noundef nonnull @.str.73, double noundef %i.dh, double noundef %i.dj, double noundef %i.dk, double noundef %i.dl, double noundef %i.dm, double noundef %i.dn) #33 ; 0 uses
  %i.dp = sitofp i32 %.sroa.speculated to float
  %i.dq = load i64, ptr %i.z, align 8, !tbaa !148
  %i.dr = uitofp i64 %i.dq to float
  %i.ds = fdiv float %i.dp, %i.dr
  %i.dt = fmul float %.0.i.i.i, %i.ds
  %i.du = fmul float %i.dt, 5.000000e-01
  call void @_ZNK4pbrt15RealisticCamera15RenderExitPupilEffPKc(ptr noundef nonnull align 8 dereferenceable(1128) %0, float noundef %i.du, float noundef 0.000000e+00, ptr noundef nonnull @.str.74)
  %i.dv = sitofp i32 %i.am to float
  %i.dw = load i64, ptr %i.z, align 8, !tbaa !148
  %i.dx = uitofp i64 %i.dw to float
  %i.dy = fdiv float %i.dv, %i.dx
  %i.dz = fmul float %.0.i.i.i, %i.dy
  %i.ea = fmul float %i.dz, 5.000000e-01
  call void @_ZNK4pbrt15RealisticCamera15RenderExitPupilEffPKc(ptr noundef nonnull align 8 dereferenceable(1128) %0, float noundef %i.ea, float noundef 0.000000e+00, ptr noundef nonnull @.str.75)
  call void @_ZNK4pbrt15RealisticCamera15RenderExitPupilEffPKc(ptr noundef nonnull align 8 dereferenceable(1128) %0, float noundef %i.w, float noundef 0.000000e+00, ptr noundef nonnull @.str.76)
  call void @exit(i32 noundef 0) #32
  unreachable

bb.n:                                             ; preds = %bb.m, %_ZN4pbrt27SampleUniformDiskConcentricENS_6Point2IfEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.eb = add nuw nsw i32 %.078, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.eb, 1000
  br i1 %exitcond.not, label %bb.g, label %bb.h, !llvm.loop !462
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt15RealisticCamera8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1128) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZNK4pbrt10CameraBase8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(896) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 912
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1096
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !31, !alias.scope !469
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !34, !alias.scope !469
  store i8 0, ptr %i.c, align 8, !tbaa !25, !alias.scope !469
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKN4pstd6vectorINS_15RealisticCamera20LensElementInterfaceENS8_3pmr21polymorphic_allocatorISB_EEEERKNS9_INS_7Bounds2IfEENSD_ISJ_EEEEEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.78, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pstd6vectorINS_15RealisticCamera20LensElementInterfaceENS7_3pmr21polymorphic_allocatorISA_EEEERKNS8_INS_7Bounds2IfEENSC_ISI_EEEEEEES6_PKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %0, align 8, !tbaa !35, !alias.scope !469 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !25, !alias.scope !469
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #31
  br label %.body

_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pstd6vectorINS_15RealisticCamera20LensElementInterfaceENS7_3pmr21polymorphic_allocatorISA_EEEERKNS8_INS_7Bounds2IfEENSC_ISI_EEEEEEES6_PKcDpOT_.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pstd6vectorINS_15RealisticCamera20LensElementInterfaceENS7_3pmr21polymorphic_allocatorISA_EEEERKNS8_INS_7Bounds2IfEENSC_ISI_EEEEEEES6_PKcDpOT_.exit
  %i.m = load i64, ptr %i.k, align 8, !tbaa !25
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4pstd6vectorINS_15RealisticCamera20LensElementInterfaceENS7_3pmr21polymorphic_allocatorISA_EEEERKNS8_INS_7Bounds2IfEENSC_ISI_EEEEEEES6_PKcDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.o = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %.body
  %i.r = load i64, ptr %i.p, align 8, !tbaa !25
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.e
}

declare void @_ZN4pbrt15ResolveFilenameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN4pbrt13ReadFloatFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(152) ptr @_ZN4pbrt5ImageaSEOS0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !98
  store i64 %i.f, ptr %i.d, align 8, !tbaa !98
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n) ; 0 uses
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN4pbrt15RealisticCamera6CreateERKNS_19ParameterDictionaryERKNS_15CameraTransformENS_4FilmENS_6MediumEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEEENK3$_0clENSC_4spanIKNS_6Point2IfEEEE"(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 12 uses
  %4 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %.fr35 = freeze i64 %2                          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !31
  store i8 89, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !25
  store i64 0, ptr %4, align 8, !tbaa !98
  %.sroa.033.0.copyload = load ptr, ptr %.8.val, align 8, !tbaa !97
  %.sroa.29.0.insert.ext = zext i32 %.0.val.0.val to i64
  %.sroa.08.0.insert.insert = mul nuw i64 %.sroa.29.0.insert.ext, 4294967297
  %i.d = ptrtoint ptr %.sroa.033.0.copyload to i64
  invoke void @_ZN4pbrt5ImageC1ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef 2, i64 %.sroa.08.0.insert.insert, ptr nonnull %3, i64 1, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 %i.d)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = load ptr, ptr %3, align 8, !tbaa !35     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !25
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %5 = getelementptr i8, ptr %0, i64 8
  %.sroa.3.0.extract.trunc30 = load i32, ptr %5, align 8
  %i.k = icmp sgt i32 %.sroa.3.0.extract.trunc30, 0
  br i1 %i.k, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = icmp eq i64 %.fr35, 0
  %.sroa.0.0.copyload.i5923.pre = load i64, ptr %i.j, align 4 ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %.not66 = icmp eq i64 %.fr35, 1
  %i.l = add i64 %.fr35, -2
  %i.m = add i64 %.fr35, -1                       ; 2 uses
  %min.iters.check = icmp ult i64 %.fr35, 33
  %n.vec = and i64 %i.m, -32                      ; 4 uses
  %ind.escape = add i64 %n.vec, -1
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge29.split.us.us
  %.sroa.0.0.copyload.i.us57 = phi i64 [ %.sroa.0.0.copyload.i5923.pre, %.preheader.us.preheader ], [ %.sroa.0.0.copyload.i.us, %._crit_edge29.split.us.us ] ; 3 uses
  %indvars.iv42 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next43, %._crit_edge29.split.us.us ] ; 3 uses
  %.sroa.022.0.extract.trunc24.us = trunc i64 %.sroa.0.0.copyload.i.us57 to i32 ; 2 uses
  %i.n = icmp sgt i32 %.sroa.022.0.extract.trunc24.us, 0
  br i1 %i.n, label %.lr.ph28.us, label %._crit_edge29.split.us.us

.lr.ph28.us:                                      ; preds = %.preheader.us
  %i.o = trunc nuw nsw i64 %indvars.iv42 to i32
  %i.p = uitofp nneg i32 %i.o to float
  %i.q = fadd nnan float %i.p, 5.000000e-01
  %i.r = fmul nnan float %i.q, 2.000000e+00
  %.sroa.2.0.insert.shift.us = shl nuw nsw i64 %indvars.iv42, 32
  %i.s = insertelement <2 x float> poison, float %i.r, i64 1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %bb.g, %.lr.ph28.us
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %bb.g ], [ 0, %.lr.ph28.us ] ; 3 uses
  %.sroa.022.0.extract.trunc27.us.us = phi i32 [ %.sroa.022.0.extract.trunc.us.us, %bb.g ], [ %.sroa.022.0.extract.trunc24.us, %.lr.ph28.us ]
  %.sroa.0.0.copyload.i5926.us.us = phi i64 [ %.sroa.0.0.copyload.i59.us.us, %bb.g ], [ %.sroa.0.0.copyload.i.us57, %.lr.ph28.us ]
  %i.t = trunc nuw nsw i64 %indvars.iv39 to i32
  %i.u = uitofp nneg i32 %i.t to float
  %i.v = fadd nnan float %i.u, 5.000000e-01
  %i.w = fmul nnan float %i.v, 2.000000e+00
  %.sroa.4.0.extract.shift.us.us = lshr i64 %.sroa.0.0.copyload.i5926.us.us, 32
  %.sroa.4.0.extract.trunc.us.us = trunc nuw i64 %.sroa.4.0.extract.shift.us.us to i32
  %i.x = insertelement <2 x i32> poison, i32 %.sroa.022.0.extract.trunc27.us.us, i64 0
  %i.y = insertelement <2 x i32> %i.x, i32 %.sroa.4.0.extract.trunc.us.us, i64 1
  %i.z = sitofp <2 x i32> %i.y to <2 x float>
  %i.aa = insertelement <2 x float> %i.s, float %i.w, i64 0
  %i.ab = fdiv <2 x float> %i.aa, %i.z
  %i.ac = fadd <2 x float> %i.ab, splat (float -1.000000e+00) ; 9 uses
  %.pre53 = load float, ptr %1, align 4, !tbaa !14
  br i1 %.not66, label %.lr.ph.us.us.._crit_edge.us.us.peel.begin_crit_edge, label %.lr.ph.us.us.split

.lr.ph.us.us.._crit_edge.us.us.peel.begin_crit_edge: ; preds = %.lr.ph.us.us
  %i.ad = load <2 x float>, ptr %1, align 4, !tbaa !14
  br label %._crit_edge.us.us.peel.begin

.lr.ph.us.us.split:                               ; preds = %.lr.ph.us.us
  %i.ae = load <2 x float>, ptr %1, align 4, !tbaa !14 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.split
  %broadcast.splat = shufflevector <2 x float> %i.ac, <2 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat73 = shufflevector <2 x float> %i.ac, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 16 uses
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1>
  %vector.recur.init74 = insertelement <8 x float> poison, float %.pre53, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vector.recur = phi <8 x float> [ %i.af, %vector.ph ], [ %strided.vec88, %vector.body ]
  %vector.recur75 = phi <8 x float> [ %vector.recur.init74, %vector.ph ], [ %strided.vec87, %vector.body ]
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.di, %vector.body ]
  %vec.phi76 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.dj, %vector.body ]
  %vec.phi77 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.dk, %vector.body ]
  %vec.phi78 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.dl, %vector.body ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 200
  %wide.vec = load <16 x float>, ptr %i.ah, align 4, !tbaa !14 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec79.a = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 5 uses
  %wide.vec80.a = load <16 x float>, ptr %i.aj, align 4, !tbaa !14 ; 2 uses
  %strided.vec81.a = shufflevector <16 x float> %wide.vec80.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec82.a = shufflevector <16 x float> %wide.vec80.a, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 5 uses
  %wide.vec83.a = load <16 x float>, ptr %i.al, align 4, !tbaa !14 ; 2 uses
  %strided.vec84.a = shufflevector <16 x float> %wide.vec83.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec85.a = shufflevector <16 x float> %wide.vec83.a, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 5 uses
  %wide.vec86 = load <16 x float>, ptr %i.an, align 4, !tbaa !14 ; 3 uses
  %strided.vec87 = shufflevector <16 x float> %wide.vec86, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec88 = shufflevector <16 x float> %wide.vec86, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 5 uses
  %i.ao = shufflevector <8 x float> %vector.recur, <8 x float> %strided.vec79.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.ap = shufflevector <8 x float> %strided.vec79.a, <8 x float> %strided.vec82.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.aq = shufflevector <8 x float> %strided.vec82.a, <8 x float> %strided.vec85.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.ar = shufflevector <8 x float> %strided.vec85.a, <8 x float> %strided.vec88, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.as = fsub <8 x float> %strided.vec79.a, %i.ao
  %i.at = fsub <8 x float> %strided.vec82.a, %i.ap
  %i.au = fsub <8 x float> %strided.vec85.a, %i.aq
  %i.av = fsub <8 x float> %strided.vec88, %i.ar
  %i.aw = fsub <8 x float> %broadcast.splat73, %i.ao
  %i.ax = fsub <8 x float> %broadcast.splat73, %i.ap
  %i.ay = fsub <8 x float> %broadcast.splat73, %i.aq
  %i.az = fsub <8 x float> %broadcast.splat73, %i.ar
  %i.ba = shufflevector <8 x float> %vector.recur75, <8 x float> %strided.vec, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.bb = shufflevector <8 x float> %strided.vec, <8 x float> %strided.vec81.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.bc = shufflevector <8 x float> %strided.vec81.a, <8 x float> %strided.vec84.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.bd = shufflevector <8 x float> %strided.vec84.a, <8 x float> %strided.vec87, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.be = fsub <8 x float> %broadcast.splat, %i.ba
  %i.bf = fsub <8 x float> %broadcast.splat, %i.bb
  %i.bg = fsub <8 x float> %broadcast.splat, %i.bc
  %i.bh = fsub <8 x float> %broadcast.splat, %i.bd
  %i.bi = fmul <8 x float> %i.be, %i.as
  %i.bj = fmul <8 x float> %i.bf, %i.at
  %i.bk = fmul <8 x float> %i.bg, %i.au
  %i.bl = fmul <8 x float> %i.bh, %i.av
  %i.bm = fsub <8 x float> %strided.vec, %i.ba
  %i.bn = fsub <8 x float> %strided.vec81.a, %i.bb
  %i.bo = fsub <8 x float> %strided.vec84.a, %i.bc
  %i.bp = fsub <8 x float> %strided.vec87, %i.bd
  %i.bq = fmul <8 x float> %i.aw, %i.bm
  %i.br = fmul <8 x float> %i.ax, %i.bn
  %i.bs = fmul <8 x float> %i.ay, %i.bo
  %i.bt = fmul <8 x float> %i.az, %i.bp
  %i.bu = fsub <8 x float> %i.bi, %i.bq           ; 2 uses
  %i.bv = fsub <8 x float> %i.bj, %i.br           ; 2 uses
  %i.bw = fsub <8 x float> %i.bk, %i.bs           ; 2 uses
  %i.bx = fsub <8 x float> %i.bl, %i.bt           ; 2 uses
  %i.by = fcmp ugt <8 x float> %i.ao, %broadcast.splat73
  %i.bz = fcmp ugt <8 x float> %i.ap, %broadcast.splat73
  %i.ca = fcmp ugt <8 x float> %i.aq, %broadcast.splat73
  %i.cb = fcmp ugt <8 x float> %i.ar, %broadcast.splat73
  %i.cc = fcmp ogt <8 x float> %strided.vec79.a, %broadcast.splat73
  %i.cd = fcmp ogt <8 x float> %strided.vec82.a, %broadcast.splat73
  %i.ce = fcmp ogt <8 x float> %strided.vec85.a, %broadcast.splat73
  %i.cf = fcmp ogt <8 x float> %strided.vec88, %broadcast.splat73
  %i.cg = fcmp ogt <8 x float> %i.bu, zeroinitializer
  %i.ch = fcmp ogt <8 x float> %i.bv, zeroinitializer
  %i.ci = fcmp ogt <8 x float> %i.bw, zeroinitializer
  %i.cj = fcmp ogt <8 x float> %i.bx, zeroinitializer
  %i.ck = select <8 x i1> %i.cc, <8 x i1> %i.cg, <8 x i1> zeroinitializer
  %i.cl = select <8 x i1> %i.cd, <8 x i1> %i.ch, <8 x i1> zeroinitializer
  %i.cm = select <8 x i1> %i.ce, <8 x i1> %i.ci, <8 x i1> zeroinitializer
  %i.cn = select <8 x i1> %i.cf, <8 x i1> %i.cj, <8 x i1> zeroinitializer
  %i.co = zext <8 x i1> %i.ck to <8 x i32>
  %i.cp = zext <8 x i1> %i.cl to <8 x i32>
  %i.cq = zext <8 x i1> %i.cm to <8 x i32>
  %i.cr = zext <8 x i1> %i.cn to <8 x i32>
  %i.cs = fcmp ole <8 x float> %strided.vec79.a, %broadcast.splat73
  %i.ct = fcmp ole <8 x float> %strided.vec82.a, %broadcast.splat73
  %i.cu = fcmp ole <8 x float> %strided.vec85.a, %broadcast.splat73
  %i.cv = fcmp ole <8 x float> %strided.vec88, %broadcast.splat73
  %i.cw = fcmp olt <8 x float> %i.bu, zeroinitializer
  %i.cx = fcmp olt <8 x float> %i.bv, zeroinitializer
  %i.cy = fcmp olt <8 x float> %i.bw, zeroinitializer
  %i.cz = fcmp olt <8 x float> %i.bx, zeroinitializer
  %i.da = select <8 x i1> %i.cs, <8 x i1> %i.cw, <8 x i1> zeroinitializer
  %i.db = select <8 x i1> %i.ct, <8 x i1> %i.cx, <8 x i1> zeroinitializer
  %i.dc = select <8 x i1> %i.cu, <8 x i1> %i.cy, <8 x i1> zeroinitializer
  %i.dd = select <8 x i1> %i.cv, <8 x i1> %i.cz, <8 x i1> zeroinitializer
  %i.de = sext <8 x i1> %i.da to <8 x i32>
  %i.df = sext <8 x i1> %i.db to <8 x i32>
  %i.dg = sext <8 x i1> %i.dc to <8 x i32>
  %i.dh = sext <8 x i1> %i.dd to <8 x i32>
  %predphi = select <8 x i1> %i.by, <8 x i32> %i.de, <8 x i32> %i.co
  %predphi89 = select <8 x i1> %i.bz, <8 x i32> %i.df, <8 x i32> %i.cp
  %predphi90 = select <8 x i1> %i.ca, <8 x i32> %i.dg, <8 x i32> %i.cq
  %predphi91 = select <8 x i1> %i.cb, <8 x i32> %i.dh, <8 x i32> %i.cr
  %i.di = add <8 x i32> %predphi, %vec.phi        ; 2 uses
  %i.dj = add <8 x i32> %predphi89, %vec.phi76    ; 2 uses
  %i.dk = add <8 x i32> %predphi90, %vec.phi77    ; 2 uses
  %i.dl = add <8 x i32> %predphi91, %vec.phi78    ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !470

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.dj, %i.di
  %bin.rdx92 = add <8 x i32> %i.dk, %bin.rdx
  %bin.rdx93 = add <8 x i32> %i.dl, %bin.rdx92
  %i.dn = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx93) ; 2 uses
  %i.do = shufflevector <16 x float> %wide.vec86, <16 x float> poison, <2 x i32> <i32 14, i32 15> ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.us.peel.begin.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.split, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us.us.split ], [ %n.vec, %middle.block ]
  %.04121.us.us.ph = phi i32 [ 0, %.lr.ph.us.us.split ], [ %i.dn, %middle.block ]
  %.ph = phi <2 x float> [ %i.ae, %.lr.ph.us.us.split ], [ %i.do, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.04121.us.us = phi i32 [ %.1.us.us, %bb.d ], [ %.04121.us.us.ph, %scalar.ph.preheader ]
  %i.dp = phi <2 x float> [ %i.dr, %bb.d ], [ %.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.dr = load <2 x float>, ptr %i.dq, align 4, !tbaa !14 ; 5 uses
  %i.ds = fsub <2 x float> %i.ac, %i.dp
  %i.dt = fsub <2 x float> %i.dr, %i.dp
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dv = fmul <2 x float> %i.ds, %i.du           ; 2 uses
  %shift = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.dv, %shift
  %i.dw = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.dx = fcmp ugt <2 x float> %i.dp, %i.ac
  %i.dy = extractelement <2 x i1> %i.dx, i64 1
  br i1 %i.dy, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.dz = fcmp ogt <2 x float> %i.dr, %i.ac
  %i.ea = extractelement <2 x i1> %i.dz, i64 1
  %i.eb = fcmp ogt float %i.dw, 0.000000e+00
  %or.cond.us.us = select i1 %i.ea, i1 %i.eb, i1 false
  %i.ec = zext i1 %or.cond.us.us to i32
  br label %bb.d

bb.c:                                             ; preds = %scalar.ph
  %i.ed = fcmp ole <2 x float> %i.dr, %i.ac
  %i.ee = extractelement <2 x i1> %i.ed, i64 1
  %i.ef = fcmp olt float %i.dw, 0.000000e+00
  %or.cond3.us.us = select i1 %i.ee, i1 %i.ef, i1 false
  %i.eg = sext i1 %or.cond3.us.us to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn20.us.us = phi i32 [ %i.ec, %bb.b ], [ %i.eg, %bb.c ]
  %.1.us.us = add nsw i32 %.pn20.us.us, %.04121.us.us ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %i.l
  br i1 %exitcond.not, label %._crit_edge.us.us.peel.begin.loopexit, label %scalar.ph, !llvm.loop !471

._crit_edge.us.us.peel.begin.loopexit:            ; preds = %bb.d, %middle.block
  %.1.us.us.lcssa = phi i32 [ %i.dn, %middle.block ], [ %.1.us.us, %bb.d ]
  %indvars.iv.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %indvars.iv, %bb.d ]
  %i.eh = phi <2 x float> [ %i.do, %middle.block ], [ %i.dr, %bb.d ]
  %i.ei = add i64 %indvars.iv.lcssa, 2
  br label %._crit_edge.us.us.peel.begin

._crit_edge.us.us.peel.begin:                     ; preds = %.lr.ph.us.us.._crit_edge.us.us.peel.begin_crit_edge, %._crit_edge.us.us.peel.begin.loopexit
  %indvars.iv.next.peel = phi i64 [ 1, %.lr.ph.us.us.._crit_edge.us.us.peel.begin_crit_edge ], [ %i.ei, %._crit_edge.us.us.peel.begin.loopexit ] ; 2 uses
  %i.ej = phi i32 [ 0, %.lr.ph.us.us.._crit_edge.us.us.peel.begin_crit_edge ], [ %.1.us.us.lcssa, %._crit_edge.us.us.peel.begin.loopexit ]
  %i.ek = phi <2 x float> [ %i.ad, %.lr.ph.us.us.._crit_edge.us.us.peel.begin_crit_edge ], [ %i.eh, %._crit_edge.us.us.peel.begin.loopexit ] ; 3 uses
  %i.el = icmp eq i64 %indvars.iv.next.peel, %.fr35
  %iv.rem.peel = select i1 %i.el, i64 0, i64 %indvars.iv.next.peel
  %i.em = fsub <2 x float> %i.ac, %i.ek
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %iv.rem.peel ; 2 uses
  %.in.i.us.us.peel = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.eo = load <2 x float>, ptr %i.en, align 4, !tbaa !14
  %i.ep = load float, ptr %.in.i.us.us.peel, align 4, !tbaa !14 ; 2 uses
  %i.eq = fsub <2 x float> %i.eo, %i.ek
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.es = fmul <2 x float> %i.em, %i.er           ; 2 uses
  %shift97 = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop98 = fsub <2 x float> %i.es, %shift97
  %i.et = extractelement <2 x float> %foldExtExtBinop98, i64 0 ; 2 uses
  %i.eu = extractelement <2 x float> %i.ac, i64 1 ; 2 uses
  %i.ev = fcmp ugt <2 x float> %i.ek, %i.ac
  %i.ew = extractelement <2 x i1> %i.ev, i64 1
  br i1 %i.ew, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.us.us.peel.begin
  %i.ex = fcmp ogt float %i.ep, %i.eu
  %i.ey = fcmp ogt float %i.et, 0.000000e+00
  %or.cond.us.us.peel = select i1 %i.ex, i1 %i.ey, i1 false
  %i.ez = zext i1 %or.cond.us.us.peel to i32
  br label %._crit_edge.us.us.peel.next

bb.f:                                             ; preds = %._crit_edge.us.us.peel.begin
  %i.fa = fcmp ole float %i.ep, %i.eu
  %i.fb = fcmp olt float %i.et, 0.000000e+00
  %or.cond3.us.us.peel = select i1 %i.fa, i1 %i.fb, i1 false
  %i.fc = sext i1 %or.cond3.us.us.peel to i32
  br label %._crit_edge.us.us.peel.next

._crit_edge.us.us.peel.next:                      ; preds = %bb.f, %bb.e
  %.pn20.us.us.peel = phi i32 [ %i.ez, %bb.e ], [ %i.fc, %bb.f ]
  %.1.us.us.peel = sub i32 0, %i.ej
  %i.fd = icmp eq i32 %.pn20.us.us.peel, %.1.us.us.peel
  %i.fe = select i1 %i.fd, float 0.000000e+00, float 1.000000e+00
  %.sroa.0.0.insert.insert.us.us = or disjoint i64 %.sroa.2.0.insert.shift.us, %indvars.iv39
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %.sroa.0.0.insert.insert.us.us, i32 noundef 0, float noundef %i.fe)
          to label %bb.g unwind label %.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %._crit_edge.us.us.peel.next
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %.sroa.0.0.copyload.i59.us.us = load i64, ptr %i.j, align 4 ; 4 uses
  %.sroa.022.0.extract.trunc.us.us = trunc i64 %.sroa.0.0.copyload.i59.us.us to i32
  %sext = shl i64 %.sroa.0.0.copyload.i59.us.us, 32
  %i.ff = ashr exact i64 %sext, 32
  %i.fg = icmp slt i64 %indvars.iv.next40, %i.ff
  br i1 %i.fg, label %.lr.ph.us.us, label %._crit_edge29.split.us.us, !llvm.loop !472

._crit_edge29.split.us.us:                        ; preds = %bb.g, %.preheader.us
  %.sroa.0.0.copyload.i.us = phi i64 [ %.sroa.0.0.copyload.i.us57, %.preheader.us ], [ %.sroa.0.0.copyload.i59.us.us, %bb.g ] ; 2 uses
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.fh = ashr i64 %.sroa.0.0.copyload.i.us, 32
  %i.fi = icmp slt i64 %indvars.iv.next43, %i.fh
  br i1 %i.fi, label %.preheader.us, label %._crit_edge, !llvm.loop !473

.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %._crit_edge.us.us.peel.next
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) #29
  br label %bb.k

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge29.split
  %.sroa.0.0.copyload.i61 = phi i64 [ %.sroa.0.0.copyload.i, %._crit_edge29.split ], [ %.sroa.0.0.copyload.i5923.pre, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %._crit_edge29.split ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.sroa.022.0.extract.trunc24 = trunc i64 %.sroa.0.0.copyload.i61 to i32
  %i.fj = icmp sgt i32 %.sroa.022.0.extract.trunc24, 0
  br i1 %i.fj, label %.lr.ph28, label %._crit_edge29.split

.lr.ph28:                                         ; preds = %.preheader
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %indvars.iv48, 32
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  %i.fl = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.h
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !25
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.k

._crit_edge29.split:                              ; preds = %bb.j, %.preheader
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i61, %.preheader ], [ %.sroa.0.0.copyload.i59, %bb.j ] ; 2 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.fq = ashr i64 %.sroa.0.0.copyload.i, 32
  %i.fr = icmp slt i64 %indvars.iv.next49, %i.fq
  br i1 %i.fr, label %.preheader, label %._crit_edge, !llvm.loop !473

bb.i:                                             ; preds = %.lr.ph28, %bb.j
  %indvars.iv45 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next46, %bb.j ] ; 2 uses
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %indvars.iv45
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %.sroa.0.0.insert.insert, i32 noundef 0, float noundef 0.000000e+00)
          to label %bb.j unwind label %.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %.sroa.0.0.copyload.i59 = load i64, ptr %i.j, align 4 ; 2 uses
  %i.fs = shl i64 %.sroa.0.0.copyload.i59, 32
  %i.ft = ashr exact i64 %i.fs, 32
  %i.fu = icmp slt i64 %indvars.iv.next46, %i.ft
  br i1 %i.fu, label %bb.i, label %._crit_edge29.split, !llvm.loop !472

._crit_edge:                                      ; preds = %._crit_edge29.split.us.us, %._crit_edge29.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.k:                                             ; preds = %.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %.pn52.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ]
  resume { ptr, i32 } %.pn52.pn
}

declare void @_ZN4pbrt5Image4ReadENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEENS_13ColorEncodingE(ptr dead_on_unwind writable sret(%"struct.pbrt::ImageAndMetadata") align 8, ptr nofree noundef align 8 dereferenceable(32), ptr, ptr nofree noundef align 8 dead_on_return dereferenceable(8)) local_unnamed_addr #2

declare void @_ZNK4pbrt5Image14GetChannelDescEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr dead_on_unwind writable sret(%"struct.pbrt::ImageChannelDesc") align 8, ptr noundef nonnull align 8 dereferenceable(152), ptr, i64) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !31, !alias.scope !476
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !34, !alias.scope !476
  store i8 0, ptr %i.a, align 8, !tbaa !25, !alias.scope !476
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !35, !alias.scope !476 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !25, !alias.scope !476
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !35
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.h) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !25
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume
}

declare void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind writable sret(%"struct.pbrt::ImageChannelValues") align 8, ptr noundef nonnull align 8 dereferenceable(152), i64, ptr noundef nonnull align 8 dereferenceable(48), i64) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt16ImageChannelDescD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.a, align 8, !tbaa !103
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !478  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIiLi4EN4pstd3pmr21polymorphic_allocatorIiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !479
  %i.f = shl i64 %i.e, 2
  %i.g = load ptr, ptr %0, align 8, !tbaa !480    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.c, i64 noundef %i.f, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIiLi4EN4pstd3pmr21polymorphic_allocatorIiEEED2Ev.exit unwind label %bb.c, !inline_history !477

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #32
  unreachable

_ZN4pbrt13InlinedVectorIiLi4EN4pstd3pmr21polymorphic_allocatorIiEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt16ImageAndMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #32
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !187
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
          to label %_ZN4pbrt13ImageMetadataD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #32
  unreachable

_ZN4pbrt13ImageMetadataD2Ev.exit:                 ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i
  tail call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) #29
  ret void
}

declare void @_ZN4pbrt5Image5FlipYEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %1, i32 noundef %2, i64 %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %4 = alloca %"class.pbrt::Point2.29", align 8   ; 5 uses
  %i.a = alloca float, align 4                    ; 6 uses
  store i64 %1, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.sroa.04.0.copyload = load i64, ptr %i.b, align 4
  %i.c = call noundef zeroext i1 @_ZN4pbrt16RemapPixelCoordsEPNS_6Point2IiEES1_NS_10WrapMode2DE(ptr noundef nonnull %4, i64 %.sroa.04.0.copyload, i64 %3)
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !95
end_hunk_3
