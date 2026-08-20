inline.NumInlined: 4471
inline.NumDeleted: 1472
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_110TIFFOutput13put_parameterERKNS0_10ParamValueE:bb.a
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !34
  %i.mo = load i8, ptr %i.b, align 2, !tbaa !127, !range !79, !noundef !80
  %i.mp = trunc nuw i8 %i.mo to i1
  %i.mq = load ptr, ptr %i.e, align 8
  %i.mr = select i1 %i.mp, ptr %i.mq, ptr %i.e
  %i.ms = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.mn, i32 noundef 33305, ptr noundef %i.mr) ; 0 uses
  br label %bb.cn

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit172.thread: ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit171
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  br i1 %.not.i.i, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit175, label %bb.ci

bb.ci:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit172.thread
  %i.mt = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -24
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !170, !noalias !232
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit175

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit175: ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit172.thread, %bb.ci
  %.0.i.i174 = phi i64 [ %i.mu, %bb.ci ], [ 0, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit172.thread ]
  store ptr %.sroa.0.0.copyload.i, ptr %57, align 8, !tbaa !20, !alias.scope !232
  %i.mv = getelementptr inbounds nuw i8, ptr %57, i64 8
  store i64 %.0.i.i174, ptr %i.mv, align 8, !tbaa !22, !alias.scope !232
  store ptr @.str.51, ptr %58, align 8, !tbaa !20
  %i.mw = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i64 11, ptr %i.mw, align 8, !tbaa !22
  %i.mx = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %57, ptr noundef nonnull dead_on_return %58)
  br i1 %i.mx, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit175
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !34
  %i.na = call noundef float @_ZNK11OpenImageIO4v3_110ParamValue9get_floatEf(ptr noundef nonnull align 8 dereferenceable(39) %1, float noundef 0.000000e+00)
  %i.nb = fpext float %i.na to double
  %i.nc = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.mz, i32 noundef 282, double noundef %i.nb) ; 0 uses
  br label %bb.cn

bb.ck:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit175
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  br i1 %.not.i.i, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit178, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nd = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -24
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !170, !noalias !235
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit178

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit178: ; preds = %bb.ck, %bb.cl
  %.0.i.i177 = phi i64 [ %i.ne, %bb.cl ], [ 0, %bb.ck ]
  store ptr %.sroa.0.0.copyload.i, ptr %59, align 8, !tbaa !20, !alias.scope !235
  %i.nf = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i64 %.0.i.i177, ptr %i.nf, align 8, !tbaa !22, !alias.scope !235
  store ptr @.str.52, ptr %60, align 8, !tbaa !20
  %i.ng = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 11, ptr %i.ng, align 8, !tbaa !22
  %i.nh = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %59, ptr noundef nonnull dead_on_return %60)
  br i1 %i.nh, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit178
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !34
  %i.nk = call noundef float @_ZNK11OpenImageIO4v3_110ParamValue9get_floatEf(ptr noundef nonnull align 8 dereferenceable(39) %1, float noundef 0.000000e+00)
  %i.nl = fpext float %i.nk to double
  %i.nm = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.nj, i32 noundef 283, double noundef %i.nl) ; 0 uses
  br label %bb.cn

bb.cn:                                            ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %bb.ba, %bb.az, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit178, %bb.a, %bb.c, %bb.cm, %bb.cj, %bb.ch, %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.2 = phi i1 [ false, %bb.c ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ true, %bb.z ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ true, %bb.ap ], [ false, %bb.a ], [ false, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit178 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ true, %bb.bs ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ true, %bb.cf ], [ true, %bb.ch ], [ true, %bb.cj ], [ true, %bb.cm ], [ true, %bb.ba ], [ false, %bb.az ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ true, %bb.au ]
  ret i1 %.2

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ %i.it, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %i.jn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.kq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ]
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_115encode_iptc_iimERKNS0_9ImageSpecERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_110encode_xmpB5cxx11ERKNS0_9ImageSpecEb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #1

declare i32 @TIFFCheckpointDirectory(ptr noundef) local_unnamed_addr #1

declare void @_ZNK11OpenImageIO4v3_110ParamValue10get_stringB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(39), i32 noundef) local_unnamed_addr #1

declare noundef float @_ZNK11OpenImageIO4v3_110ParamValue9get_floatEf(ptr noundef nonnull align 8 dereferenceable(39), float noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK11OpenImageIO4v3_110ParamValue7get_intEi(ptr noundef nonnull align 8 dereferenceable(39), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN11OpenImageIO4v3_115resunit_to_codeENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return %0) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  store ptr %i.a, ptr %1, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  store i64 %i.d, ptr %i.b, align 8, !tbaa !22
  store ptr @.str.55, ptr %2, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.e, align 8, !tbaa !22
  %i.f = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !20
  store ptr %i.g, ptr %3, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.c, align 8, !tbaa !22
  store i64 %i.i, ptr %i.h, align 8, !tbaa !22
  store ptr @.str.160, ptr %4, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.j, align 8, !tbaa !22
  %i.k = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4)
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !20
  store ptr %i.l, ptr %5, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load i64, ptr %i.c, align 8, !tbaa !22
  store i64 %i.n, ptr %i.m, align 8, !tbaa !22
  store ptr @.str.161, ptr %6, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 4, ptr %i.o, align 8, !tbaa !22
  %i.p = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %5, ptr noundef nonnull dead_on_return %6)
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %0, align 8, !tbaa !20
  store ptr %i.q, ptr %7, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = load i64, ptr %i.c, align 8, !tbaa !22
  store i64 %i.s, ptr %i.r, align 8, !tbaa !22
  store ptr @.str.162, ptr %8, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 2, ptr %i.t, align 8, !tbaa !22
  %i.u = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8)
  %. = select i1 %i.u, i32 3, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 2, %bb.b ], [ 1, %bb.a ], [ %., %bb.d ], [ 2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_110TIFFOutput15write_exif_dataEv(ptr noundef nonnull align 8 dereferenceable(336) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v12::detail::format_arg_store.152", align 16 ; 4 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.77, ptr %10, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 15, ptr %i.i, align 8, !tbaa !22
  %i.j = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.h, ptr noundef nonnull dead_on_return %10, i32 noundef 1)
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !238  ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !239  ; 2 uses
  %.not334 = icmp eq ptr %i.n, %i.o
  br i1 %.not334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv i64 %i.r, 40
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %umax = call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.074331 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %bb.f ] ; 2 uses
  %sext = shl i64 %.074331, 32
  %i.u = ashr exact i64 %sext, 32
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !239
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !100 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !170, !noalias !240
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi i64 [ %i.y, %bb.d ], [ 0, %bb.c ]
  store ptr %.sroa.0.0.copyload.i, ptr %11, align 8, !tbaa !20, !alias.scope !240
  store i64 %.0.i.i, ptr %i.t, align 8, !tbaa !22, !alias.scope !240
  %i.z = call noundef zeroext i1 @_ZN11OpenImageIO4v3_115exif_tag_lookupENS0_17basic_string_viewIcSt11char_traitsIcEEERiS5_S5_(ptr noundef nonnull dead_on_return %11, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.aa = load i32, ptr %i.b, align 4
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !3
  switch i32 %i.ad, label %.thread243 [
    i32 37395, label %bb.f
    i32 37394, label %bb.f
    i32 34855, label %bb.f
  ]

.thread243:                                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 12 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.ag = call i32 @TIFFWriteDirectory(ptr noundef %i.af)
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.ah = add nuw i64 %.074331, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %umax
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !243

bb.g:                                             ; preds = %.thread243
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.78)
  br label %.loopexit

bb.h:                                             ; preds = %.thread243
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.aj = call i32 @TIFFCreateEXIFDirectory(ptr noundef %i.ai)
  %.not85 = icmp eq i32 %i.aj, 0
  br i1 %.not85, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.79)
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !238 ; 2 uses
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !239 ; 2 uses
  %.not335 = icmp eq ptr %i.ak, %i.al
  br i1 %.not335, label %._crit_edge, label %.lr.ph333

.lr.ph333:                                        ; preds = %bb.j
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv i64 %i.ao, 40
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %umax336 = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  br label %bb.k

._crit_edge:                                      ; preds = %.critedge21, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  store i64 0, ptr %i.g, align 8, !tbaa !11
  %i.bk = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.bl = call i32 @TIFFWriteCustomDirectory(ptr noundef %i.bk, ptr noundef nonnull %i.g)
  %.not86 = icmp ne i32 %i.bl, 0                  ; 2 uses
  br i1 %.not86, label %bb.bl, label %bb.bk

bb.k:                                             ; preds = %.lr.ph333, %.critedge21
  %.071332 = phi i64 [ 0, %.lr.ph333 ], [ %i.hd, %.critedge21 ] ; 2 uses
  %sext326 = shl i64 %.071332, 32
  %i.bm = ashr exact i64 %sext326, 32
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !239
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %i.bn, i64 %i.bm ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %.sroa.0.0.copyload.i92 = load ptr, ptr %i.bo, align 8, !tbaa !100 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %.not.i.i93 = icmp eq ptr %.sroa.0.0.copyload.i92, null
  br i1 %.not.i.i93, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit95, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i92, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !170, !noalias !244
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit95

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit95: ; preds = %bb.k, %bb.l
  %.0.i.i94 = phi i64 [ %i.bq, %bb.l ], [ 0, %bb.k ]
  store ptr %.sroa.0.0.copyload.i92, ptr %12, align 8, !tbaa !20, !alias.scope !244
  store i64 %.0.i.i94, ptr %i.aq, align 8, !tbaa !22, !alias.scope !244
  %i.br = call noundef zeroext i1 @_ZN11OpenImageIO4v3_115exif_tag_lookupENS0_17basic_string_viewIcSt11char_traitsIcEEERiS5_S5_(ptr noundef nonnull dead_on_return %12, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.bs = load i32, ptr %i.e, align 4             ; 2 uses
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %i.bu, label %bb.m, label %.critedge21

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit95
  %i.bv = load i32, ptr %i.d, align 4, !tbaa !3   ; 4 uses
  switch i32 %i.bv, label %.critedge.thread [
    i32 37395, label %.critedge21
    i32 37394, label %.critedge21
    i32 34855, label %.critedge21
    i32 296, label %bb.n
    i32 40960, label %bb.v
    i32 36864, label %bb.v
  ]

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.0.0.copyload.i96 = load i64, ptr %i.bw, align 8
  %i.bx = and i64 %.sroa.0.0.copyload.i96, -4278190081
  %or.cond300 = icmp eq i64 %i.bx, 269
  br i1 %or.cond300, label %bb.o, label %.critedge.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @_ZNK11OpenImageIO4v3_110ParamValue10get_stringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(39) %i.bo, i32 noundef 64)
  %i.by = load ptr, ptr %13, align 8, !tbaa !13   ; 4 uses
  %i.bz = load i64, ptr %i.av, align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.by, ptr %2, align 8, !tbaa !20
  store i64 %i.bz, ptr %i.aw, align 8, !tbaa !22
  store ptr @.str.55, ptr %3, align 8, !tbaa !20
  store i64 4, ptr %i.ax, align 8, !tbaa !22
  %i.ca = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.o
  br i1 %i.ca, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.noexc
  store ptr %i.by, ptr %4, align 8, !tbaa !20
  store i64 %i.bz, ptr %i.ay, align 8, !tbaa !22
  store ptr @.str.160, ptr %5, align 8, !tbaa !20
  store i64 2, ptr %i.az, align 8, !tbaa !22
  %i.cb = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5)
          to label %.noexc97 unwind label %bb.u

.noexc97:                                         ; preds = %bb.p
  br i1 %i.cb, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.noexc97
  store ptr %i.by, ptr %6, align 8, !tbaa !20
  store i64 %i.bz, ptr %i.ba, align 8, !tbaa !22
  store ptr @.str.161, ptr %7, align 8, !tbaa !20
  store i64 4, ptr %i.bb, align 8, !tbaa !22
  %i.cc = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7)
          to label %.noexc98 unwind label %bb.u

.noexc98:                                         ; preds = %bb.q
  br i1 %i.cc, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc98
  store ptr %i.by, ptr %8, align 8, !tbaa !20
  store i64 %i.bz, ptr %i.bc, align 8, !tbaa !22
  store ptr @.str.162, ptr %9, align 8, !tbaa !20
  store i64 2, ptr %i.bd, align 8, !tbaa !22
  %i.cd = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9)
          to label %.noexc99 unwind label %bb.u

.noexc99:                                         ; preds = %bb.r
  %..i = select i1 %i.cd, i32 3, i32 0
  br label %bb.s

bb.s:                                             ; preds = %.noexc99, %.noexc98, %.noexc97, %.noexc
  %.0.i = phi i32 [ 2, %.noexc97 ], [ 1, %.noexc ], [ %..i, %.noexc99 ], [ 2, %.noexc98 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ce = load ptr, ptr %13, align 8, !tbaa !13   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.be
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.cg = load i64, ptr %i.be, align 8, !tbaa !15
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %.not90 = icmp eq i32 %.0.i, 0
  br i1 %.not90, label %.critedge21, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ci = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.cj = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.ci, i32 noundef 296, i32 noundef %.0.i) ; 0 uses
  br label %.critedge21

bb.u:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %13, align 8, !tbaa !13   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.be
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.u
  %i.cn = load i64, ptr %i.be, align 8, !tbaa !15
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.bj

bb.v:                                             ; preds = %bb.m, %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.0.0.copyload.i103 = load i64, ptr %i.cp, align 8 ; 4 uses
  %.sroa.0220.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i103 to i8
  %.sroa.4221.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i103, 8
  %.sroa.4221.0.extract.trunc = trunc i64 %.sroa.4221.0.extract.shift to i8 ; 2 uses
  %.sroa.5222.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i103, 16
  %.sroa.5222.0.extract.trunc = trunc i64 %.sroa.5222.0.extract.shift to i8 ; 2 uses
  %.sroa.6224.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i103, 32 ; 2 uses
  switch i8 %.sroa.0220.0.extract.trunc, label %.critedge21 [
    i8 13, label %bb.w
    i8 7, label %bb.ab
  ]

bb.w:                                             ; preds = %bb.v
  %i.cq = icmp eq i8 %.sroa.4221.0.extract.trunc, 1
  %i.cr = icmp eq i8 %.sroa.5222.0.extract.trunc, 0
  %or.cond301 = and i1 %i.cq, %i.cr
  %i.cs = icmp eq i64 %.sroa.6224.0.extract.shift, 0
  %or.cond302 = and i1 %i.cs, %or.cond301
  br i1 %or.cond302, label %bb.x, label %.critedge21

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZNK11OpenImageIO4v3_110ParamValue10get_stringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(39) %i.bo, i32 noundef 64)
  %i.ct = load i64, ptr %i.at, align 8, !tbaa !16
  %i.cu = icmp ugt i64 %i.ct, 3
  br i1 %i.cu, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.cw = load i32, ptr %i.d, align 4, !tbaa !3
  %i.cx = load ptr, ptr %14, align 8, !tbaa !13
  %i.cy = invoke i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.cv, i32 noundef %i.cw, ptr noundef %i.cx)
          to label %bb.aa unwind label %bb.z      ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_110TIFFOutput15write_exif_dataEv:bb.a
  %or.cond312 = and i1 %i.ez, %or.cond311
  br i1 %or.cond312, label %bb.ao, label %.critedge21

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %i.fa = load i32, ptr %i.f, align 4, !tbaa !3
  %i.fb = icmp eq i32 %i.fa, 1
  br i1 %i.fb, label %bb.ap, label %.critedge21

bb.ap:                                            ; preds = %bb.ao
  %i.fc = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.fd = call noundef i32 @_ZNK11OpenImageIO4v3_110ParamValue7get_intEi(ptr noundef nonnull align 8 dereferenceable(39) %i.bo, i32 noundef 0)
  %i.fe = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.fc, i32 noundef %i.bv, i32 noundef %i.fd) ; 0 uses
  br label %.critedge21

bb.aq:                                            ; preds = %bb.aj
  %i.ff = icmp eq i8 %.sroa.5211.0.extract.trunc, 1
  %i.fg = icmp eq i8 %.sroa.6212.0.extract.trunc, 0
  %or.cond313 = and i1 %i.ff, %i.fg
  br i1 %or.cond313, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit134, label %.critedge21

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit134:  ; preds = %bb.aq
  %i.fh = icmp eq i64 %.sroa.7214.0.extract.shift, 0
  %i.fi = load i32, ptr %i.f, align 4
  %i.fj = icmp eq i32 %i.fi, 1
  %i.fk = select i1 %i.fh, i1 %i.fj, i1 false
  br i1 %i.fk, label %bb.ar, label %.critedge21

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit134
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  call void @_ZNK11OpenImageIO4v3_110ParamValue10get_stringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(39) %i.bo, i32 noundef 64)
  %i.fl = load ptr, ptr %17, align 8, !tbaa !13
  store ptr %i.fl, ptr %18, align 8, !tbaa !20
  %i.fm = load i64, ptr %i.bg, align 8, !tbaa !16
  store i64 %i.fm, ptr %i.bf, align 8, !tbaa !22
  %i.fn = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil13string_is_intENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %18)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %bb.ar
  br i1 %i.fn, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.fo = load ptr, ptr %17, align 8, !tbaa !13
  store ptr %i.fo, ptr %19, align 8, !tbaa !20
  %i.fp = load i64, ptr %i.bg, align 8, !tbaa !16
  store i64 %i.fp, ptr %i.bh, align 8, !tbaa !22
  %i.fq = invoke noundef i32 @_ZN11OpenImageIO4v3_17Strutil4stoiENS0_17basic_string_viewIcSt11char_traitsIcEEEPmi(ptr noundef nonnull dead_on_return %19, ptr noundef null, i32 noundef 10)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.fr = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.fs = load i32, ptr %i.d, align 4, !tbaa !3
  %i.ft = invoke i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.fr, i32 noundef %i.fs, i32 noundef %i.fq)
          to label %bb.ax unwind label %bb.aw     ; 0 uses

bb.av:                                            ; preds = %bb.ar
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au, %bb.as
  %i.fw = load ptr, ptr %17, align 8, !tbaa !13   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.bi
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.ax
  %i.fy = load i64, ptr %i.bi, align 8, !tbaa !15
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %.critedge21

bb.ay:                                            ; preds = %bb.aw, %bb.av
  %.pn = phi { ptr, i32 } [ %i.fv, %bb.aw ], [ %i.fu, %bb.av ]
  %i.ga = load ptr, ptr %17, align 8, !tbaa !13   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.bi
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.ay
  %i.gc = load i64, ptr %i.bi, align 8, !tbaa !15
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %bb.bj

bb.az:                                            ; preds = %.critedge.thread, %.critedge.thread
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.0.0.copyload.i141 = load i64, ptr %i.ge, align 8 ; 5 uses
  %.sroa.0186.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i141 to i8 ; 2 uses
  %.sroa.5187.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i141, 8
  %.sroa.5187.0.extract.trunc = trunc i64 %.sroa.5187.0.extract.shift to i8 ; 4 uses
  %.sroa.6188.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i141, 16
  %.sroa.6188.0.extract.trunc = trunc i64 %.sroa.6188.0.extract.shift to i8 ; 7 uses
  %.sroa.7190.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i141, 32 ; 2 uses
  %i.gf = icmp eq i8 %.sroa.0186.0.extract.trunc, 11
  br i1 %i.gf, label %bb.ba, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit142.thread

bb.ba:                                            ; preds = %bb.az
  %i.gg = icmp eq i8 %.sroa.5187.0.extract.trunc, 1
  br i1 %i.gg, label %bb.bb, label %.critedge21

bb.bb:                                            ; preds = %bb.ba
  %i.gh = icmp eq i8 %.sroa.6188.0.extract.trunc, 0
  %i.gi = icmp eq i64 %.sroa.7190.0.extract.shift, 0
  %or.cond314 = and i1 %i.gi, %i.gh
  br i1 %or.cond314, label %bb.bh, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit142.thread

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit142.thread: ; preds = %bb.az, %bb.bb
  %i.gj = and i64 %.sroa.0.0.copyload.i141, 255
  %i.gk = icmp eq i64 %i.gj, 12
  %i.gl = icmp eq i8 %.sroa.5187.0.extract.trunc, 1 ; 5 uses
  %.not.i = icmp eq i64 %.sroa.7190.0.extract.shift, 0 ; 7 uses
  %i.gm = and i1 %i.gk, %.not.i
  %or.cond315 = and i1 %i.gm, %i.gl
  br i1 %or.cond315, label %bb.bh, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit142.thread
  switch i8 %.sroa.0186.0.extract.trunc, label %.critedge21 [
    i8 4, label %bb.bc
    i8 6, label %bb.bd
    i8 5, label %bb.be
    i8 7, label %bb.bf
  ]

bb.bc:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.gn = icmp eq i8 %.sroa.6188.0.extract.trunc, 0
  %i.go = and i1 %.not.i, %i.gn
  %or.cond317 = and i1 %i.gl, %i.go
  br i1 %or.cond317, label %bb.bh, label %.critedge21

bb.bd:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.gp = icmp eq i8 %.sroa.6188.0.extract.trunc, 0
  %or.cond318 = and i1 %i.gl, %i.gp
  br i1 %or.cond318, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit147, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit153.thread.thread296

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit147:  ; preds = %bb.bd
  br i1 %.not.i, label %bb.bh, label %.critedge21

bb.be:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.gq = icmp eq i8 %.sroa.6188.0.extract.trunc, 0
  %i.gr = and i1 %.not.i, %i.gq
  %or.cond320 = and i1 %i.gl, %i.gr
  br i1 %or.cond320, label %bb.bh, label %.critedge21

bb.bf:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  br i1 %i.gl, label %bb.bg, label %.thread275

bb.bg:                                            ; preds = %bb.bf
  %i.gs = icmp eq i8 %.sroa.6188.0.extract.trunc, 0
  %or.cond321 = and i1 %.not.i, %i.gs
  br i1 %or.cond321, label %bb.bh, label %.critedge21

.thread275:                                       ; preds = %bb.bf
  %i.gt = icmp eq i8 %.sroa.5187.0.extract.trunc, 2
  %i.gu = icmp eq i8 %.sroa.6188.0.extract.trunc, 7
  %or.cond322 = and i1 %i.gt, %i.gu
  %or.cond323 = and i1 %.not.i, %or.cond322
  br i1 %or.cond323, label %bb.bh, label %.critedge21

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit153.thread.thread296: ; preds = %bb.bd
  %i.gv = icmp eq i8 %.sroa.5187.0.extract.trunc, 2
  %i.gw = icmp eq i8 %.sroa.6188.0.extract.trunc, 7
  %or.cond324 = and i1 %i.gv, %i.gw
  %or.cond325 = and i1 %.not.i, %or.cond324
  br i1 %or.cond325, label %bb.bh, label %.critedge21

bb.bh:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit153.thread.thread296, %.thread275, %bb.bg, %bb.be, %bb.bc, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit142.thread, %bb.bb, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit147
  %i.gx = load i32, ptr %i.f, align 4, !tbaa !3
  %i.gy = icmp eq i32 %i.gx, 1
  br i1 %i.gy, label %bb.bi, label %.critedge21

bb.bi:                                            ; preds = %bb.bh
  %i.gz = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.ha = call noundef float @_ZNK11OpenImageIO4v3_110ParamValue9get_floatEf(ptr noundef nonnull align 8 dereferenceable(39) %i.bo, float noundef 0.000000e+00)
  %i.hb = fpext float %i.ha to double
  %i.hc = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.gz, i32 noundef %i.bv, double noundef %i.hb) ; 0 uses
  br label %.critedge21

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn88 = phi { ptr, i32 } [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  resume { ptr, i32 } %.pn88

.critedge21:                                      ; preds = %.critedge.thread, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit147, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread, %bb.aj, %bb.v, %bb.m, %bb.m, %bb.m, %bb.bg, %bb.be, %.thread275, %bb.bc, %bb.ba, %bb.ak, %bb.al, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit153.thread.thread296, %bb.am, %bb.an, %bb.ao, %bb.aq, %bb.w, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %bb.ap, %bb.bi, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  %i.hd = add nuw i64 %.071332, 1                 ; 2 uses
  %exitcond337.not = icmp eq i64 %i.hd, %umax336
  br i1 %exitcond337.not, label %._crit_edge, label %bb.k, !llvm.loop !250

bb.bk:                                            ; preds = %._crit_edge
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.81)
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge
  %i.he = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.hf = call i32 @TIFFSetDirectory(ptr noundef %i.he, i32 noundef 0) ; 0 uses
  %i.hg = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.hh = load i64, ptr %i.g, align 8, !tbaa !11
  %i.hi = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.hg, i32 noundef 34665, i64 noundef %i.hh) ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.g, %bb.i, %bb.bm, %bb.a
  %.280 = phi i1 [ true, %bb.a ], [ false, %bb.i ], [ %.not86, %bb.bm ], [ false, %bb.g ], [ true, %bb.b ], [ true, %bb.f ]
  ret i1 %.280
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_115exif_tag_lookupENS0_17basic_string_viewIcSt11char_traitsIcEEERiS5_S5_(ptr noundef dead_on_return, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare i32 @TIFFWriteDirectory(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.75", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34, !noalias !251
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !251
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !251
  %i.b = load ptr, ptr %4, align 8, !tbaa !13
  store ptr %i.b, ptr %3, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16
  store i64 %i.e, ptr %i.c, align 8, !tbaa !22
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !13     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !13     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !15
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %i.k
}

declare i32 @TIFFCreateEXIFDirectory(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil13string_is_intENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #1

declare noundef i32 @_ZN11OpenImageIO4v3_17Strutil4stoiENS0_17basic_string_viewIcSt11char_traitsIcEEEPmi(ptr noundef dead_on_return, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @TIFFWriteCustomDirectory(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @TIFFSetDirectory(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.c = load i32, ptr %i.b, align 4, !tbaa !106
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.e = load i8, ptr %i.d, align 1, !tbaa !130
  %i.f = zext i8 %i.e to i64
  %i.g = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.a) #34
  %i.h = mul i64 %i.g, %i.f
  %i.i = trunc i64 %i.h to i32
  %i.j = mul i32 %narrow.i.i, %i.i                ; 4 uses
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.preheader26.lr.ph, label %._crit_edge32.split

.preheader26.lr.ph:                               ; preds = %bb.a
  %i.l = icmp slt i32 %2, 1
  %i.m = icmp slt i32 %i.j, 1
  %brmerge = select i1 %i.l, i1 true, i1 %i.m
  br i1 %brmerge, label %._crit_edge32.split, label %.preheader26.preheader

.preheader26.preheader:                           ; preds = %.preheader26.lr.ph
  %i.n = zext nneg i32 %i.j to i64                ; 13 uses
  %i.o = zext nneg i32 %1 to i64                  ; 3 uses
  %i.p = zext nneg i32 %2 to i64                  ; 4 uses
  %i.q = add nsw i64 %i.p, -1
  %i.r = mul nsw i64 %i.q, %i.o
  %i.s = add i64 %i.r, 1
  %i.t = mul nuw nsw i64 %i.p, %i.n               ; 2 uses
  %i.u = getelementptr i8, ptr %3, i64 %i.t
  %min.iters.check = icmp ult i32 %i.j, 4
  %min.iters.check54 = icmp ult i32 %i.j, 32
  %i.v = and i64 %i.n, 28
  %n.vec = and i64 %i.n, 2147483616               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.n
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  %n.vec56 = and i64 %i.n, 2147483644             ; 3 uses
  %cmp.n60 = icmp eq i64 %n.vec56, %i.n
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader26

.preheader26:                                     ; preds = %.preheader26.preheader, %._crit_edge29
  %indvars.iv42 = phi i64 [ 0, %.preheader26.preheader ], [ %indvars.iv.next43, %._crit_edge29 ] ; 6 uses
  %i.w = mul i64 %indvars.iv42, %i.n
  %scevgep = getelementptr i8, ptr %4, i64 %i.w
  %i.x = add i64 %i.s, %indvars.iv42
  %i.y = mul i64 %i.x, %i.n
  %scevgep51 = getelementptr i8, ptr %4, i64 %i.y
  %i.z = mul i64 %i.t, %indvars.iv42              ; 2 uses
  %scevgep52 = getelementptr i8, ptr %3, i64 %i.z
  %scevgep53 = getelementptr i8, ptr %i.u, i64 %i.z
  %i.aa = mul nuw nsw i64 %indvars.iv42, %i.p
  %bound0 = icmp ult ptr %scevgep, %scevgep53
  %bound1 = icmp ult ptr %scevgep52, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

._crit_edge32.split:                              ; preds = %._crit_edge29, %.preheader26.lr.ph, %bb.a
  ret void

iter.check:                                       ; preds = %.preheader26, %._crit_edge
  %indvars.iv37 = phi i64 [ 0, %.preheader26 ], [ %indvars.iv.next38, %._crit_edge ] ; 3 uses
  %i.ab = add nuw nsw i64 %indvars.iv37, %i.aa
  %i.ac = mul nuw nsw i64 %i.ab, %i.n
  %i.ad = mul nuw nsw i64 %indvars.iv37, %i.o
  %i.ae = add nuw nsw i64 %i.ad, %indvars.iv42
  %i.af = mul nuw nsw i64 %i.ae, %i.n
  %invariant.gep = getelementptr inbounds nuw i8, ptr %3, i64 %i.ac ; 7 uses
  %invariant.gep49 = getelementptr inbounds nuw i8, ptr %4, i64 %i.af ; 7 uses
  %brmerge61 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge61, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <16 x i8>, ptr %i.ag, align 1, !tbaa !15, !alias.scope !254
  %wide.load55 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !15, !alias.scope !254
  %i.ai = getelementptr inbounds nuw i8, ptr %invariant.gep49, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <16 x i8> %wide.load, ptr %i.ai, align 1, !tbaa !15, !alias.scope !257, !noalias !254
  store <16 x i8> %wide.load55, ptr %i.aj, align 1, !tbaa !15, !alias.scope !257, !noalias !254
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !259

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !260

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index57
  %wide.load58 = load <4 x i8>, ptr %i.al, align 1, !tbaa !15, !alias.scope !254
  %i.am = getelementptr inbounds nuw i8, ptr %invariant.gep49, i64 %index57
  store <4 x i8> %wide.load58, ptr %i.am, align 1, !tbaa !15, !alias.scope !257, !noalias !254
end_hunk_1
