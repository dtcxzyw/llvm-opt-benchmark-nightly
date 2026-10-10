Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/imgtool?download=true
inline.NumInlined: 9676
inline.NumDeleted: 2116
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 216
begin_hunk_0_@_Z5bloomSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE:bb.a
  %i.aau = ptrtoint ptr %i.aat to i64
  %i.aav = ptrtoint ptr %i.aar to i64
  %i.aaw = sub i64 %i.aau, %i.aav
  call void @_ZdlPvm(ptr noundef nonnull %i.aar, i64 noundef %i.aaw) #38
  br label %_ZNSt6vectorIN4pbrt5ImageESaIS1_EED2Ev.exit444

_ZNSt6vectorIN4pbrt5ImageESaIS1_EED2Ev.exit444:   ; preds = %_ZSt8_DestroyIPN4pbrt5ImageES1_EvT_S3_RSaIT0_E.exit.i442, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  %i.aax = getelementptr inbounds nuw i8, ptr %17, i64 408
  %i.aay = getelementptr inbounds nuw i8, ptr %17, i64 424
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !54
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.aax, ptr noundef %i.aaz)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i.i445 unwind label %bb.ec

bb.ec:                                            ; preds = %_ZNSt6vectorIN4pbrt5ImageESaIS1_EED2Ev.exit444
  %i.aba = landingpad { ptr, i32 }
          catch ptr null
  %i.abb = extractvalue { ptr, i32 } %i.aba, 0
  call void @__clang_call_terminate(ptr %i.abb) #40
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i.i445: ; preds = %_ZNSt6vectorIN4pbrt5ImageESaIS1_EED2Ev.exit444
  %i.abc = getelementptr inbounds nuw i8, ptr %17, i64 360
  %i.abd = getelementptr inbounds nuw i8, ptr %17, i64 376
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !54
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.abc, ptr noundef %i.abe)
          to label %_ZN4pbrt16ImageAndMetadataD2Ev.exit446 unwind label %bb.ed

bb.ed:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i.i445
  %i.abf = landingpad { ptr, i32 }
          catch ptr null
  %i.abg = extractvalue { ptr, i32 } %i.abf, 0
  call void @__clang_call_terminate(ptr %i.abg) #40
  unreachable

_ZN4pbrt16ImageAndMetadataD2Ev.exit446:           ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i.i445
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(456) %17) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295, %_ZN4pbrt16ImageAndMetadataD2Ev.exit446, %bb.bx
  %.pn181.pn.pn.pn = phi { ptr, i32 } [ %.pn181.pn.pn, %_ZN4pbrt16ImageAndMetadataD2Ev.exit446 ], [ %i.oa, %bb.bx ], [ %i.ob, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295 ], [ %i.ob, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.ee

bb.ee:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %bb.aq, %bb.ap
  %.pn198.pn = phi { ptr, i32 } [ %.pn198, %bb.ap ], [ %.pn181.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ], [ %i.ff, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  %i.abh = load ptr, ptr %4, align 8, !tbaa !48   ; 2 uses
  %i.abi = icmp eq ptr %i.abh, %i.n
  br i1 %i.abi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447: ; preds = %bb.ee
  %i.abj = load i64, ptr %i.n, align 8, !tbaa !46
  %i.abk = add i64 %i.abj, 1
  call void @_ZdlPvm(ptr noundef %i.abh, i64 noundef %i.abk) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.abl = load ptr, ptr %3, align 8, !tbaa !48   ; 2 uses
  %i.abm = icmp eq ptr %i.abl, %i.l
  br i1 %i.abm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449
  %i.abn = load i64, ptr %i.l, align 8, !tbaa !46
  %i.abo = add i64 %i.abn, 1
  call void @_ZdlPvm(ptr noundef %i.abl, i64 noundef %i.abo) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn198.pn
}

declare void @_ZNK4pbrt5Image14GaussianFilterERKNS_16ImageChannelDescEif(ptr dead_on_unwind writable sret(%"class.pbrt::Image") align 8, ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z7convertSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE(ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = alloca float, align 4                    ; 6 uses
  %i.e = alloca float, align 4                    ; 6 uses
  %i.f = alloca float, align 4                    ; 6 uses
  %i.g = alloca float, align 4                    ; 6 uses
  %i.h = alloca float, align 4                    ; 6 uses
  %1 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 13 uses
  %i.i = ptrtoaddr ptr %1 to i64
  %2 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 16 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %3 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 11 uses
  %i.k = ptrtoaddr ptr %3 to i64
  %4 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 13 uses
  %i.l = ptrtoaddr ptr %4 to i64
  %5 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 13 uses
  %i.m = ptrtoaddr ptr %5 to i64
  %6 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 13 uses
  %i.n = ptrtoaddr ptr %6 to i64
  %7 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 13 uses
  %i.o = ptrtoaddr ptr %7 to i64
  %8 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 13 uses
  %i.p = ptrtoaddr ptr %8 to i64
  %9 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 13 uses
  %i.q = ptrtoaddr ptr %9 to i64
  %10 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 11 uses
  %11 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 9 uses
  %12 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 10 uses
  %13 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 9 uses
  %14 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 12 uses
  %i.r = alloca float, align 4                    ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.s = alloca i64, align 8                      ; 6 uses
  %i.t = alloca float, align 4                    ; 6 uses
  %i.u = alloca float, align 4                    ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.v = alloca i64, align 8                      ; 6 uses
  %i.w = alloca i64, align 8                      ; 6 uses
  %i.x = alloca i8, align 1                       ; 7 uses
  %i.y = alloca float, align 4                    ; 9 uses
  %i.z = alloca float, align 4                    ; 8 uses
  %i.aa = alloca i32, align 4                     ; 11 uses
  %i.ab = alloca i8, align 1                      ; 6 uses
  %i.ac = alloca i8, align 1                      ; 7 uses
  %i.ad = alloca float, align 4                   ; 7 uses
  %i.ae = alloca float, align 4                   ; 7 uses
  %i.af = alloca i8, align 1                      ; 7 uses
  %i.ag = alloca i8, align 1                      ; 6 uses
  %i.ah = alloca i8, align 1                      ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"struct.std::array", align 4      ; 11 uses
  %i.ai = alloca float, align 4                   ; 7 uses
  %26 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 24 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::function", align 8    ; 8 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::function", align 8    ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::function", align 8    ; 8 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::function", align 8    ; 8 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.std::function", align 8    ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::function", align 8    ; 8 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.std::function", align 8    ; 8 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %42 = alloca %"class.std::function", align 8    ; 8 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.std::function", align 8    ; 8 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.std::function", align 8    ; 8 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.std::function", align 8    ; 8 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %50 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %51 = alloca %"class.std::function", align 8    ; 8 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %53 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %54 = alloca %"class.std::function", align 8    ; 8 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %56 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %57 = alloca %"class.std::function", align 8    ; 8 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %59 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %60 = alloca %"class.std::function", align 8    ; 8 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %62 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %63 = alloca %"class.std::function", align 8    ; 8 uses
  %64 = alloca %"struct.pbrt::ImageAndMetadata", align 8 ; 50 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %66 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %67 = alloca %"class.pbrt::Image", align 8      ; 64 uses
  %68 = alloca %"struct.pbrt::ImageMetadata", align 8 ; 48 uses
  %69 = alloca %"struct.pbrt::ImageMetadata", align 8 ; 34 uses
  %70 = alloca %"class.std::vector", align 8      ; 7 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %73 = alloca %"class.std::vector", align 8      ; 10 uses
  %74 = alloca %"struct.pbrt::ImageChannelDesc", align 8 ; 10 uses
  %75 = alloca %"class.pbrt::Image", align 8      ; 12 uses
  %76 = alloca %"class.pbrt::Bounds2", align 8    ; 15 uses
  %77 = alloca %"class.pbrt::Point2", align 8     ; 7 uses
  %78 = alloca %"class.pbrt::Image", align 8      ; 12 uses
  %79 = alloca %"class.pbrt::Image", align 8      ; 12 uses
  %80 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %82 = alloca %"struct.pbrt::ImageChannelDesc", align 8 ; 11 uses
  %83 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 28 uses
  %84 = alloca %"class.pbrt::SquareMatrix", align 16 ; 9 uses
  %85 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 12 uses
  %i.aj = alloca [3 x float], align 8             ; 6 uses
  %86 = alloca %"class.pbrt::Image", align 8      ; 8 uses
  %87 = alloca %"class.std::vector.162", align 8  ; 14 uses
  %88 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 16 uses
  %89 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 9 uses
  %90 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 13 uses
  %i.ak = ptrtoaddr ptr %90 to i64
  %91 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 13 uses
  %92 = alloca %"class.pbrt::Image", align 8      ; 13 uses
  %93 = alloca %"class.std::vector", align 8      ; 10 uses
  %94 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %95 = alloca %"class.pbrt::Image", align 8      ; 12 uses
  %96 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #37
  store i8 0, ptr %i.x, align 1, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #37
  store float 1.000000e+00, ptr %i.y, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #37
  store float 1.000000e+00, ptr %i.z, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #37
  store i32 1, ptr %i.aa, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #37
  store i8 0, ptr %i.ab, align 1, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #37
  store i8 0, ptr %i.ac, align 1, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #37
  store float 1.000000e+00, ptr %i.ad, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #37
  store float +inf, ptr %i.ae, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #37
  store i8 0, ptr %i.af, align 1, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #37
  store i8 0, ptr %i.ag, align 1, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #37
  store i8 0, ptr %i.ah, align 1, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  %i.al = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.al, ptr %21, align 8, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  store i64 0, ptr %i.am, align 8, !tbaa !45
  store i8 0, ptr %i.al, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37
  %i.an = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.an, ptr %22, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  store i64 0, ptr %i.ao, align 8, !tbaa !45
  store i8 0, ptr %i.an, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  %i.ap = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.ap, ptr %23, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !45
  store i8 0, ptr %i.ap, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37
  %i.ar = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.ar, ptr %24, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store i64 0, ptr %i.as, align 8, !tbaa !45
  store i8 0, ptr %i.ar, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef nonnull align 4 dereferenceable(16) @__const._Z7convertSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE.cropWindow, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #37
  store float +inf, ptr %i.ai, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #37
  %i.at = load ptr, ptr %0, align 8, !tbaa !62    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  store ptr %i.at, ptr %26, align 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !62 ; 2 uses
  %.not31734328 = icmp eq ptr %i.at, %i.av
  br i1 %.not31734328, label %._crit_edge.thread, label %._crit_edge.i.i.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  br label %bb.eb

._crit_edge.i.i.lr.ph:                            ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %38, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %40, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %46, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %48, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %54, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %57, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %60, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %63, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %27, i64 26
  %i.de = getelementptr inbounds nuw i8, ptr %29, i64 18
  %i.df = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %33, i64 21
  %i.dh = getelementptr inbounds nuw i8, ptr %35, i64 26
  %i.di = getelementptr inbounds nuw i8, ptr %37, i64 20
  %i.dj = getelementptr inbounds nuw i8, ptr %39, i64 23
  %i.dk = getelementptr inbounds nuw i8, ptr %41, i64 20
  %i.dl = getelementptr inbounds nuw i8, ptr %43, i64 21
  %i.dm = getelementptr inbounds nuw i8, ptr %45, i64 21
  %i.dn = getelementptr inbounds nuw i8, ptr %47, i64 28
  br label %._crit_edge.i.i

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.pre = load float, ptr %i.ad, align 4, !tbaa !66
  %i.do = fcmp ugt float %.pre, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  br i1 %i.do, label %bb.eb, label %.invoke

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.dp = phi ptr [ %i.av, %._crit_edge.i.i.lr.ph ], [ %i.qi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #37
  store ptr %i.aw, ptr %27, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.aw, ptr noundef nonnull align 1 dereferenceable(10) @.str.172, i64 10, i1 false)
  store i64 10, ptr %i.ax, align 8, !tbaa !45
  store i8 0, ptr %i.dd, align 2, !tbaa !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %28, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZ7convertSt6vectorIS5_SaIS5_EEE3$_0E9_M_invokeERKSt9_Any_dataOS5_", ptr %i.az, align 8, !tbaa !70
  store ptr @"_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZ7convertSt6vectorIS5_SaIS5_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.ay, align 8, !tbaa !71
  %i.dq = invoke noundef zeroext i1 @_ZN4pbrt8ParseArgIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEPbEEbPT_SF_RKS8_T0_St8functionIFvS8_EE(ptr noundef nonnull %26, ptr %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull %i.x, ptr nofree noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.b unwind label %bb.bg

bb.b:                                             ; preds = %._crit_edge.i.i
  br i1 %i.dq, label %.critedge811, label %._crit_edge.i.i820

._crit_edge.i.i820:                               ; preds = %bb.b
  %i.dr = load ptr, ptr %i.au, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #37
  store ptr %i.ba, ptr %29, align 8, !tbaa !42
  store i16 30562, ptr %i.ba, align 8
  store i64 2, ptr %i.bb, align 8, !tbaa !45
  store i8 0, ptr %i.de, align 2, !tbaa !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZ7convertSt6vectorIS5_SaIS5_EEE3$_0E9_M_invokeERKSt9_Any_dataOS5_", ptr %i.bd, align 8, !tbaa !70
  store ptr @"_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZ7convertSt6vectorIS5_SaIS5_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.bc, align 8, !tbaa !71
  %i.ds = invoke noundef zeroext i1 @_ZN4pbrt8ParseArgIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEPbEEbPT_SF_RKS8_T0_St8functionIFvS8_EE(ptr noundef nonnull %26, ptr %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull %i.ag, ptr nofree noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.c unwind label %bb.bh

bb.c:                                             ; preds = %._crit_edge.i.i820
  br i1 %i.ds, label %.critedge808, label %._crit_edge.i.i824

._crit_edge.i.i824:                               ; preds = %bb.c
  %i.dt = load ptr, ptr %i.au, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37
  store ptr %i.be, ptr %31, align 8, !tbaa !42
  store i64 8317134136819148899, ptr %i.be, align 8
  store i64 8, ptr %i.bf, align 8, !tbaa !45
  store i8 0, ptr %i.df, align 8, !tbaa !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZ7convertSt6vectorIS5_SaIS5_EEE3$_0E9_M_invokeERKSt9_Any_dataOS5_", ptr %i.bh, align 8, !tbaa !70
  store ptr @"_ZNSt17_Function_handlerIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZ7convertSt6vectorIS5_SaIS5_EEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.bg, align 8, !tbaa !71
  %i.du = invoke noundef zeroext i1 @_ZN4pbrt8ParseArgIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEES9_EEbPT_SE_RKS8_T0_St8functionIFvS8_EE(ptr noundef nonnull %26, ptr %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull %24, ptr nofree noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.d unwind label %bb.bi

bb.d:                                             ; preds = %._crit_edge.i.i824
end_hunk_0
begin_hunk_1_@_Z7convertSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE:bb.a
  br i1 %i.aoy, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1209: ; preds = %bb.ib
  %i.aoz = load i64, ptr %i.ano, align 8, !tbaa !46
  %i.apa = add i64 %i.aoz, 1
  call void @_ZdlPvm(ptr noundef %i.aox, i64 noundef %i.apa) #38
  br label %.body

._crit_edge.i.i1212:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #37
  %i.apb = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 2 uses
  store ptr %i.apb, ptr %83, align 8, !tbaa !42
  store i8 82, ptr %i.apb, align 8, !tbaa !46
  %i.apc = getelementptr inbounds nuw i8, ptr %83, i64 8
  store i64 1, ptr %i.apc, align 8, !tbaa !45
  %i.apd = getelementptr inbounds nuw i8, ptr %83, i64 17
  store i8 0, ptr %i.apd, align 1, !tbaa !46
  %i.ape = getelementptr inbounds nuw i8, ptr %83, i64 32
  %i.apf = getelementptr inbounds nuw i8, ptr %83, i64 48 ; 2 uses
  store ptr %i.apf, ptr %i.ape, align 8, !tbaa !42
  store i8 71, ptr %i.apf, align 8, !tbaa !46
  %i.apg = getelementptr inbounds nuw i8, ptr %83, i64 40
  store i64 1, ptr %i.apg, align 8, !tbaa !45
  %i.aph = getelementptr inbounds nuw i8, ptr %83, i64 49
  store i8 0, ptr %i.aph, align 1, !tbaa !46
  %i.api = getelementptr inbounds nuw i8, ptr %83, i64 64
  %i.apj = getelementptr inbounds nuw i8, ptr %83, i64 80 ; 2 uses
  store ptr %i.apj, ptr %i.api, align 8, !tbaa !42
  store i8 66, ptr %i.apj, align 8, !tbaa !46
  %i.apk = getelementptr inbounds nuw i8, ptr %83, i64 72
  store i64 1, ptr %i.apk, align 8, !tbaa !45
  %i.apl = getelementptr inbounds nuw i8, ptr %83, i64 81
  store i8 0, ptr %i.apl, align 1, !tbaa !46
  invoke void @_ZNK4pbrt5Image14GetChannelDescEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelDesc") align 8 %82, ptr noundef nonnull align 8 dereferenceable(152) %67, ptr nonnull %83, i64 3)
          to label %bb.ic unwind label %bb.ih

bb.ic:                                            ; preds = %._crit_edge.i.i1212
  %i.apm = getelementptr inbounds nuw i8, ptr %83, i64 64
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !48 ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %83, i64 80 ; 2 uses
  %i.app = icmp eq ptr %i.apn, %i.apo
  br i1 %i.app, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1224: ; preds = %bb.ic
  %i.apq = load i64, ptr %i.apo, align 8, !tbaa !46
  %i.apr = add i64 %i.apq, 1
  call void @_ZdlPvm(ptr noundef %i.apn, i64 noundef %i.apr) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1226: ; preds = %bb.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1224
  %i.aps = getelementptr inbounds nuw i8, ptr %83, i64 32
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !48 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %83, i64 48 ; 2 uses
  %i.apv = icmp eq ptr %i.apt, %i.apu
  br i1 %i.apv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1226.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1224.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1224.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1226
  %i.apw = load i64, ptr %i.apu, align 8, !tbaa !46
  %i.apx = add i64 %i.apw, 1
  call void @_ZdlPvm(ptr noundef %i.apt, i64 noundef %i.apx) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1226.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1226.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1224.1
  %i.apy = load ptr, ptr %83, align 8, !tbaa !48  ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 2 uses
  %i.aqa = icmp eq ptr %i.apy, %i.apz
  br i1 %i.aqa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1226.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1224.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1224.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1226.1
  %i.aqb = load i64, ptr %i.apz, align 8, !tbaa !46
  %i.aqc = add i64 %i.aqb, 1
  call void @_ZdlPvm(ptr noundef %i.apy, i64 noundef %i.aqc) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1226.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1226.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1226.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1224.2
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #37
  %i.aqd = getelementptr inbounds nuw i8, ptr %82, i64 40 ; 2 uses
  %i.aqe = load i64, ptr %i.aqd, align 8, !tbaa !187
  %.not3183 = icmp eq i64 %i.aqe, 0               ; 2 uses
  br i1 %.not3183, label %bb.id, label %bb.ii

bb.id:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1226.2
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  %i.aqf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  store ptr %i.aqf, ptr %15, align 8, !tbaa !42, !alias.scope !1152
  %i.aqg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.aqg, align 8, !tbaa !45, !alias.scope !1152
  store i8 0, ptr %i.aqf, align 8, !tbaa !46, !alias.scope !1152
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %15, ptr noundef nonnull @.str.117, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i1231 unwind label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aqh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aqi = load ptr, ptr %15, align 8, !tbaa !48, !alias.scope !1152 ; 2 uses
  %i.aqj = icmp eq ptr %i.aqi, %i.aqf
  br i1 %i.aqj, label %.body1237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1227: ; preds = %bb.ie
  %i.aqk = load i64, ptr %i.aqf, align 8, !tbaa !46, !alias.scope !1152
  %i.aql = add i64 %i.aqk, 1
  call void @_ZdlPvm(ptr noundef %i.aqi, i64 noundef %i.aql) #38
  br label %.body1237

_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i1231: ; preds = %bb.id
  %i.aqm = load ptr, ptr %15, align 8, !tbaa !48
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.aqm)
          to label %bb.if unwind label %bb.ig

bb.if:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i1231
  %i.aqn = load ptr, ptr %15, align 8, !tbaa !48  ; 2 uses
  %i.aqo = icmp eq ptr %i.aqn, %i.aqf
  br i1 %i.aqo, label %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_.exit1239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1235: ; preds = %bb.if
  %i.aqp = load i64, ptr %i.aqf, align 8, !tbaa !46
  %i.aqq = add i64 %i.aqp, 1
  call void @_ZdlPvm(ptr noundef %i.aqn, i64 noundef %i.aqq) #38
  br label %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_.exit1239

bb.ig:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i1231
  %i.aqr = landingpad { ptr, i32 }
          cleanup
  %i.aqs = load ptr, ptr %15, align 8, !tbaa !48  ; 2 uses
  %i.aqt = icmp eq ptr %i.aqs, %i.aqf
  br i1 %i.aqt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1232: ; preds = %bb.ig
  %i.aqu = load i64, ptr %i.aqf, align 8, !tbaa !46
  %i.aqv = add i64 %i.aqu, 1
  call void @_ZdlPvm(ptr noundef %i.aqs, i64 noundef %i.aqv) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1233: ; preds = %bb.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1232
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %.body1237

_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_.exit1239: ; preds = %bb.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1235
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.iu

bb.ih:                                            ; preds = %._crit_edge.i.i1212
  %i.aqw = landingpad { ptr, i32 }
          cleanup
  %i.aqx = getelementptr inbounds nuw i8, ptr %83, i64 64
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !48 ; 2 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %83, i64 80 ; 2 uses
  %i.ara = icmp eq ptr %i.aqy, %i.aqz
  br i1 %i.ara, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1240: ; preds = %bb.ih
  %i.arb = load i64, ptr %i.aqz, align 8, !tbaa !46
  %i.arc = add i64 %i.arb, 1
  call void @_ZdlPvm(ptr noundef %i.aqy, i64 noundef %i.arc) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242: ; preds = %bb.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1240
  %i.ard = getelementptr inbounds nuw i8, ptr %83, i64 32
  %i.are = load ptr, ptr %i.ard, align 8, !tbaa !48 ; 2 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %83, i64 48 ; 2 uses
  %i.arg = icmp eq ptr %i.are, %i.arf
  br i1 %i.arg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1240.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1240.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242
  %i.arh = load i64, ptr %i.arf, align 8, !tbaa !46
  %i.ari = add i64 %i.arh, 1
  call void @_ZdlPvm(ptr noundef %i.are, i64 noundef %i.ari) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1240.1
  %i.arj = load ptr, ptr %83, align 8, !tbaa !48  ; 2 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 2 uses
  %i.arl = icmp eq ptr %i.arj, %i.ark
  br i1 %i.arl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1240.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1240.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242.1
  %i.arm = load i64, ptr %i.ark, align 8, !tbaa !46
  %i.arn = add i64 %i.arm, 1
  call void @_ZdlPvm(ptr noundef %i.arj, i64 noundef %i.arn) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1240.2
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #37
  br label %bb.iy

bb.ii:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1226.2
  %i.aro = invoke noundef ptr @_ZNK4pbrt13ImageMetadata13GetColorSpaceEv(ptr noundef nonnull align 8 dereferenceable(304) %68)
          to label %bb.ij unwind label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #37
  invoke void @_ZN4pbrt20ConvertRGBColorSpaceERKNS_13RGBColorSpaceES2_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::SquareMatrix") align 4 %84, ptr noundef nonnull align 8 dereferenceable(152) %i.aro, ptr noundef nonnull align 8 dereferenceable(152) %i.anz)
          to label %.preheader3256 unwind label %bb.il

.preheader3256:                                   ; preds = %bb.ij
  br i1 %i.aij, label %.preheader3255.lr.ph, label %._crit_edge4349.split

.preheader3255.lr.ph:                             ; preds = %.preheader3256
  %i.arp = icmp sgt i32 %.sroa.0196.1, 0
  %.sroa.gep2486.a = getelementptr inbounds nuw i8, ptr %85, i64 8 ; 2 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %85, i64 16
  %i.arr = getelementptr inbounds nuw i8, ptr %85, i64 20
  %i.ars = getelementptr inbounds nuw i8, ptr %85, i64 24
  %i.art = getelementptr inbounds nuw i8, ptr %84, i64 16
  %i.aru = getelementptr inbounds nuw i8, ptr %84, i64 24
  %i.arv = getelementptr inbounds nuw i8, ptr %84, i64 28
  %i.arw = getelementptr inbounds nuw i8, ptr %84, i64 32
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ary = getelementptr inbounds nuw i8, ptr %85, i64 40
  %i.arz = getelementptr inbounds nuw i8, ptr %85, i64 32
  br i1 %i.arp, label %.preheader3255.preheader, label %._crit_edge4349.split

.preheader3255.preheader:                         ; preds = %.preheader3255.lr.ph
  %wide.trip.count4599 = and i64 %.sroa.18.1.in.in, 2147483647
  br label %.preheader3255

.preheader3255:                                   ; preds = %.preheader3255.preheader, %._crit_edge4347
  %indvars.iv4601 = phi i64 [ 0, %.preheader3255.preheader ], [ %indvars.iv.next4602, %._crit_edge4347 ] ; 2 uses
  %.sroa.22484.0.insert.shift = shl nuw nsw i64 %indvars.iv4601, 32
  br label %bb.im

bb.ik:                                            ; preds = %bb.ii
  %i.asa = landingpad { ptr, i32 }
          cleanup
  br label %.body1237

bb.il:                                            ; preds = %bb.ij
  %i.asb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ix

._crit_edge4347:                                  ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %indvars.iv.next4602 = add nuw nsw i64 %indvars.iv4601, 1 ; 2 uses
  %exitcond4605.not = icmp eq i64 %indvars.iv.next4602, %.sroa.18.1.in
  br i1 %exitcond4605.not, label %._crit_edge4349.split, label %.preheader3255, !llvm.loop !854

bb.im:                                            ; preds = %.preheader3255, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %indvars.iv4596 = phi i64 [ 0, %.preheader3255 ], [ %indvars.iv.next4597, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #37
  %.sroa.02483.0.insert.insert = or disjoint i64 %.sroa.22484.0.insert.shift, %indvars.iv4596 ; 2 uses
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %85, ptr noundef nonnull align 8 dereferenceable(152) %67, i64 %.sroa.02483.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(48) %82, i64 4294967297)
          to label %bb.in unwind label %bb.ir

bb.in:                                            ; preds = %bb.im
  %i.asc = load ptr, ptr %.sroa.gep2486.a, align 8, !tbaa !192 ; 4 uses
  %.not.i.i.i1248 = icmp eq ptr %i.asc, null      ; 3 uses
  %i.asd = select i1 %.not.i.i.i1248, ptr %i.arq, ptr %i.asc
  %i.ase = load float, ptr %i.asd, align 4, !tbaa !66 ; 2 uses
  %.sroa.gep2485 = getelementptr inbounds nuw i8, ptr %i.asc, i64 4
  %.sroa.sel = select i1 %.not.i.i.i1248, ptr %i.arr, ptr %.sroa.gep2485
  %i.asf = load float, ptr %.sroa.sel, align 4, !tbaa !66 ; 2 uses
  %.sroa.gep2485.a = getelementptr inbounds nuw i8, ptr %i.asc, i64 8
  %.sroa.sel.a = select i1 %.not.i.i.i1248, ptr %i.ars, ptr %.sroa.gep2485.a
  %i.asg = load float, ptr %.sroa.sel.a, align 4, !tbaa !66 ; 2 uses
  %i.ash = load float, ptr %i.aru, align 8, !tbaa !66
  %98 = fmul float %i.ase, %i.ash
  %99 = fadd float %98, 0.000000e+00
  %i.asi = load float, ptr %i.arv, align 4, !tbaa !66
  %i.asj = fmul float %i.asf, %i.asi
  %i.ask = fadd float %i.asj, %99
  %i.asl = load float, ptr %i.arw, align 16, !tbaa !66
  %i.asm = fmul float %i.asg, %i.asl
  %i.asn = fadd float %i.asm, %i.ask
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #37
  %100 = load <4 x float>, ptr %84, align 16, !tbaa !66 ; 3 uses
  %101 = insertelement <2 x float> poison, float %i.ase, i64 0
  %102 = shufflevector <2 x float> %101, <2 x float> poison, <2 x i32> zeroinitializer
  %103 = shufflevector <4 x float> %100, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %104 = fmul <2 x float> %102, %103
  %105 = fadd <2 x float> %104, zeroinitializer
  %106 = load <4 x float>, ptr %i.art, align 16   ; 2 uses
  %107 = insertelement <2 x float> poison, float %i.asf, i64 0
  %108 = shufflevector <2 x float> %107, <2 x float> poison, <2 x i32> zeroinitializer
  %109 = shufflevector <4 x float> %100, <4 x float> %106, <2 x i32> <i32 1, i32 4>
  %110 = fmul <2 x float> %108, %109
  %111 = fadd <2 x float> %105, %110
  %112 = insertelement <2 x float> poison, float %i.asg, i64 0
  %113 = shufflevector <2 x float> %112, <2 x float> poison, <2 x i32> zeroinitializer
  %114 = shufflevector <4 x float> %100, <4 x float> %106, <2 x i32> <i32 2, i32 5>
  %115 = fmul <2 x float> %113, %114
  %116 = fadd <2 x float> %111, %115
  store <2 x float> %116, ptr %i.aj, align 8, !tbaa !66
  store float %i.asn, ptr %i.arx, align 8, !tbaa !66
  invoke void @_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_16ImageChannelDescEN4pstd4spanIKfEE(ptr noundef nonnull align 8 dereferenceable(152) %67, i64 %.sroa.02483.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(48) %82, ptr nonnull %i.aj, i64 3)
          to label %bb.io unwind label %bb.is

bb.io:                                            ; preds = %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #37
  store i64 0, ptr %i.ary, align 8, !tbaa !193
  %i.aso = load ptr, ptr %.sroa.gep2486.a, align 8, !tbaa !192 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aso, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.asp = load i64, ptr %i.arz, align 8, !tbaa !194
  %i.asq = shl i64 %i.asp, 2
  %i.asr = load ptr, ptr %85, align 8, !tbaa !120 ; 2 uses
  %i.ass = load ptr, ptr %i.asr, align 8, !tbaa !122
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 24
  %i.asu = load ptr, ptr %i.ast, align 8
  invoke void %i.asu(ptr noundef nonnull align 8 dereferenceable(8) %i.asr, ptr noundef nonnull %i.aso, i64 noundef %i.asq, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit unwind label %bb.iq, !inline_history !3

bb.iq:                                            ; preds = %bb.ip
  %i.asv = landingpad { ptr, i32 }
          catch ptr null
  %i.asw = extractvalue { ptr, i32 } %i.asv, 0
  call void @__clang_call_terminate(ptr %i.asw) #40
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit: ; preds = %bb.io, %bb.ip
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #37
  %indvars.iv.next4597 = add nuw nsw i64 %indvars.iv4596, 1 ; 2 uses
  %exitcond4600.not = icmp eq i64 %indvars.iv.next4597, %wide.trip.count4599
  br i1 %exitcond4600.not, label %._crit_edge4347, label %bb.im, !llvm.loop !855

bb.ir:                                            ; preds = %bb.im
  %i.asx = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.is:                                            ; preds = %bb.in
  %i.asy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #37
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %85) #37
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  %.pn660.pn = phi { ptr, i32 } [ %i.asy, %bb.is ], [ %i.asx, %bb.ir ]
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #37
  br label %bb.ix

._crit_edge4349.split:                            ; preds = %._crit_edge4347, %.preheader3255.lr.ph, %.preheader3256
  store ptr %i.anz, ptr %i.wx, align 8, !tbaa !84
  store i8 1, ptr %i.wm, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #37
  br label %bb.iu

bb.iu:                                            ; preds = %_ZN4pbrt5ErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_.exit1239, %._crit_edge4349.split
  store i64 0, ptr %i.aqd, align 8, !tbaa !187
  %i.asz = getelementptr inbounds nuw i8, ptr %82, i64 8
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !188 ; 2 uses
  %.not.i.i.i.i.i1251 = icmp eq ptr %i.ata, null
  br i1 %.not.i.i.i.i.i1251, label %_ZN4pbrt16ImageChannelDescD2Ev.exit1252, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.atb = getelementptr inbounds nuw i8, ptr %82, i64 32
  %i.atc = load i64, ptr %i.atb, align 8, !tbaa !189
  %i.atd = shl i64 %i.atc, 2
  %i.ate = load ptr, ptr %82, align 8, !tbaa !190 ; 2 uses
  %i.atf = load ptr, ptr %i.ate, align 8, !tbaa !122
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 24
  %i.ath = load ptr, ptr %i.atg, align 8
  invoke void %i.ath(ptr noundef nonnull align 8 dereferenceable(8) %i.ate, ptr noundef nonnull %i.ata, i64 noundef %i.atd, i64 noundef 4)
          to label %_ZN4pbrt16ImageChannelDescD2Ev.exit1252 unwind label %bb.iw, !inline_history !9

bb.iw:                                            ; preds = %bb.iv
  %i.ati = landingpad { ptr, i32 }
          catch ptr null
  %i.atj = extractvalue { ptr, i32 } %i.ati, 0
  call void @__clang_call_terminate(ptr %i.atj) #40
  unreachable

_ZN4pbrt16ImageChannelDescD2Ev.exit1252:          ; preds = %bb.iu, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #37
  br i1 %.not3183, label %bb.wt, label %bb.iz

bb.ix:                                            ; preds = %bb.it, %bb.il
  %.pn660.pn.pn = phi { ptr, i32 } [ %.pn660.pn, %bb.it ], [ %i.asb, %bb.il ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #37
  br label %.body1237

.body1237:                                        ; preds = %bb.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1227, %bb.ik, %bb.ix
  %.pn660.pn.pn.pn.pn = phi { ptr, i32 } [ %i.asa, %bb.ik ], [ %.pn660.pn.pn, %bb.ix ], [ %i.aqh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1227 ], [ %i.aqr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1233 ], [ %i.aqh, %bb.ie ]
  call void @_ZN4pbrt16ImageChannelDescD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %82) #37
  br label %bb.iy

bb.iy:                                            ; preds = %.body1237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242.2
  %.pn660.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn660.pn.pn.pn.pn, %.body1237 ], [ %i.aqw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #37
  br label %.body

bb.iz:                                            ; preds = %_ZN4pbrt16ImageChannelDescD2Ev.exit1252, %.loopexit3271
  %i.atk = load i8, ptr %i.ag, align 1, !tbaa !283, !range !161, !noundef !162
  %i.atl = trunc nuw i8 %i.atk to i1
  %or.cond4525 = select i1 %i.atl, i1 %i.aij, i1 false
  br i1 %or.cond4525, label %.preheader3252.lr.ph, label %.loopexit3254

.preheader3252.lr.ph:                             ; preds = %bb.iz
  %i.atm = icmp sgt i32 %.sroa.0196.1, 0
  %i.atn = icmp sgt i32 %i.adf, 0
  %i.ato = sitofp i32 %i.adf to float
  br i1 %i.atm, label %.preheader3252.preheader, label %.loopexit3254

.preheader3252.preheader:                         ; preds = %.preheader3252.lr.ph
  %wide.trip.count4615 = and i64 %.sroa.18.1.in.in, 2147483647
  %wide.trip.count4609 = and i64 %.fr, 2147483647
  br label %.preheader3252

.preheader3252:                                   ; preds = %.preheader3252.preheader, %._crit_edge4359
  %indvars.iv4617 = phi i64 [ 0, %.preheader3252.preheader ], [ %indvars.iv.next4618, %._crit_edge4359 ] ; 4 uses
  %.sroa.22472.0.insert.shift = shl nuw nsw i64 %indvars.iv4617, 32
  br i1 %i.atn, label %.preheader3246.us.preheader, label %._crit_edge4359

.preheader3246.us.preheader:                      ; preds = %.preheader3252
  %i.atp = trunc nuw nsw i64 %indvars.iv4617 to i32 ; 2 uses
  br label %.preheader3246.us

.preheader3246.us:                                ; preds = %.preheader3246.us.preheader, %._crit_edge4357.us
  %indvars.iv4612 = phi i64 [ 0, %.preheader3246.us.preheader ], [ %indvars.iv.next4613, %._crit_edge4357.us ] ; 4 uses
  %i.atq = trunc nuw nsw i64 %indvars.iv4612 to i32 ; 2 uses
  br label %.preheader.preheader.i1651.us

.preheader.preheader.i1651.us:                    ; preds = %.preheader3246.us, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1277.us
  %indvars.iv4606 = phi i64 [ 0, %.preheader3246.us ], [ %indvars.iv.next4607, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1277.us ] ; 4 uses
  %.04504350.us = phi float [ 0.000000e+00, %.preheader3246.us ], [ %i.avz, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1277.us ]
  %.sroa.04.0.copyload.i1254.us = load i64, ptr %i.add, align 4 ; 4 uses
  %.sroa.0.0.extract.trunc.i1645.us = trunc i64 %.sroa.04.0.copyload.i1254.us to i32 ; 4 uses
  %.sroa.9.0.extract.shift.i1646.us = lshr i64 %.sroa.04.0.copyload.i1254.us, 32
  %.sroa.9.0.extract.trunc.i1647.us = trunc nuw i64 %.sroa.9.0.extract.shift.i1646.us to i32
  %sext5196 = shl i64 %.sroa.04.0.copyload.i1254.us, 32
  %i.atr = ashr exact i64 %sext5196, 32
  %i.ats = icmp slt i64 %indvars.iv4612, %i.atr
  %i.att = add nsw i32 %.sroa.0.0.extract.trunc.i1645.us, -1
  %..i.i1654.us = call i32 @llvm.smin.i32(i32 %i.atq, i32 %i.att)
  %.sroa.02586.0.us = select i1 %i.ats, i32 %i.atq, i32 %..i.i1654.us ; 3 uses
  %i.atu = ashr i64 %.sroa.04.0.copyload.i1254.us, 32
  %i.atv = icmp slt i64 %indvars.iv4617, %i.atu
  %i.atw = add nsw i32 %.sroa.9.0.extract.trunc.i1647.us, -1
  %..i.1.i1660.us = call i32 @llvm.smin.i32(i32 %i.atp, i32 %i.atw)
  %.sroa.142594.2.us = select i1 %i.atv, i32 %i.atp, i32 %..i.1.i1660.us ; 3 uses
  %i.atx = load i32, ptr %67, align 8, !tbaa !150
  switch i32 %i.atx, label %.split.us [
    i32 0, label %bb.jf
    i32 1, label %bb.jb
    i32 2, label %bb.ja
  ]

bb.ja:                                            ; preds = %.preheader.preheader.i1651.us
  %i.aty = load i64, ptr %i.ro, align 8, !tbaa !138
  %i.atz = trunc i64 %i.aty to i32
  %i.aua = mul nsw i32 %.sroa.142594.2.us, %.sroa.0.0.extract.trunc.i1645.us
  %i.aub = add nsw i32 %i.aua, %.sroa.02586.0.us
  %i.auc = mul nsw i32 %i.aub, %i.atz
  %i.aud = sext i32 %i.auc to i64
  %i.aue = load ptr, ptr %i.sr, align 8, !tbaa !118
  %i.auf = getelementptr [4 x i8], ptr %i.aue, i64 %i.aud
  %i.aug = getelementptr [4 x i8], ptr %i.auf, i64 %indvars.iv4606
  %i.auh = load float, ptr %i.aug, align 4, !tbaa !66
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit1277.us

bb.jb:                                            ; preds = %.preheader.preheader.i1651.us
  %i.aui = load i64, ptr %i.ro, align 8, !tbaa !138
  %i.auj = trunc i64 %i.aui to i32
  %i.auk = mul nsw i32 %.sroa.142594.2.us, %.sroa.0.0.extract.trunc.i1645.us
  %i.aul = add nsw i32 %i.auk, %.sroa.02586.0.us
  %i.aum = mul nsw i32 %i.aul, %i.auj
  %i.aun = sext i32 %i.aum to i64
  %i.auo = load ptr, ptr %i.si, align 8, !tbaa !127
  %i.aup = getelementptr [2 x i8], ptr %i.auo, i64 %i.aun
  %i.auq = getelementptr [2 x i8], ptr %i.aup, i64 %indvars.iv4606
  %i.aur = load i16, ptr %i.auq, align 2, !tbaa !173 ; 2 uses
  %i.aus = zext i16 %i.aur to i32
  %i.aut = shl nuw nsw i32 %i.aus, 13             ; 4 uses
  %i.auu = and i32 %i.aut, 260046848              ; 2 uses
  %i.auv = icmp eq i32 %i.auu, 260046848
  br i1 %i.auv, label %bb.je, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.auw = and i32 %i.aut, 268427264
  %i.aux = add nuw nsw i32 %i.auw, 939524096
  %i.auy = icmp eq i32 %i.auu, 0
  br i1 %i.auy, label %bb.jd, label %_ZNK4pbrt4HalfcvfEv.exit.i1264.us

bb.jd:                                            ; preds = %bb.jc
  %i.auz = or i32 %i.aut, 947912704
  %i.ava = bitcast i32 %i.auz to float
  %i.avb = fadd float %i.ava, f0xB8800000
  %i.avc = bitcast float %i.avb to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i1264.us

bb.je:                                            ; preds = %bb.jb
  %i.avd = or i32 %i.aut, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i1264.us

_ZNK4pbrt4HalfcvfEv.exit.i1264.us:                ; preds = %bb.je, %bb.jd, %bb.jc
  %.sroa.0.0.i.i1265.us = phi i32 [ %i.avd, %bb.je ], [ %i.avc, %bb.jd ], [ %i.aux, %bb.jc ]
  %.signext.i.i1266.us = sext i16 %i.aur to i32
  %i.ave = and i32 %.signext.i.i1266.us, -2147483648
end_hunk_1
