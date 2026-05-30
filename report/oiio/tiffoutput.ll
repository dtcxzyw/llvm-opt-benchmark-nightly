inline.NumInlined: 4473
inline.NumDeleted: 1473
begin_hunk_0_@_ZNK11OpenImageIO4v3_110TIFFOutput8supportsENS0_17basic_string_viewIcSt11char_traitsIcEEE:bb.a
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 1
  %i.e = xor i32 %i.d, 1701603700
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = xor i32 %i.h, 115
  %i.j = or i32 %i.e, %i.i
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1:  ; preds = %bb.a
  %bcmp.i2 = tail call i32 @bcmp(ptr %i.a, ptr nonnull @.str.9, i64 %i.c)
  %.not.i.i3 = icmp eq i32 %bcmp.i2, 0
  br i1 %.not.i.i3, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit40.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6:  ; preds = %bb.a
  %bcmp.i7 = tail call i32 @bcmp(ptr %i.a, ptr nonnull @.str.10, i64 %i.c)
  %.not.i.i8 = icmp eq i32 %bcmp.i7, 0
  br i1 %.not.i.i8, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit40.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %bcmp.i12 = tail call i32 @bcmp(ptr nonnull %i.a, ptr nonnull @.str.11, i64 %i.c)
  %.not.i.i13 = icmp eq i32 %bcmp.i12, 0
  br i1 %.not.i.i13, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit40.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16: ; preds = %bb.a
  %bcmp.i17 = tail call i32 @bcmp(ptr %i.a, ptr nonnull @.str.12, i64 %i.c)
  %.not.i.i18 = icmp eq i32 %bcmp.i17, 0
  br i1 %.not.i.i18, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit40.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i21: ; preds = %bb.a
  %bcmp.i22 = tail call i32 @bcmp(ptr %i.a, ptr nonnull @.str.13, i64 %i.c)
  %.not.i.i23 = icmp eq i32 %bcmp.i22, 0
  br i1 %.not.i.i23, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit40.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26: ; preds = %bb.a
  %bcmp.i27 = tail call i32 @bcmp(ptr %i.a, ptr nonnull @.str.14, i64 %i.c)
  %.not.i.i28 = icmp eq i32 %bcmp.i27, 0
  br i1 %.not.i.i28, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26
  %i.m = load i32, ptr %i.a, align 1
  %i.n = icmp ne i32 %i.m, 1668575337
  %i.o = zext i1 %i.n to i32
  %.not.i.i33 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i33, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit40.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36: ; preds = %bb.a
  %bcmp.i37 = tail call i32 @bcmp(ptr %i.a, ptr nonnull @.str.16, i64 %i.c)
  %.not.i.i38 = icmp eq i32 %bcmp.i37, 0
  br i1 %.not.i.i38, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit40.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit40.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i21, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31, %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit40.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i21, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.0 = phi i32 [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26 ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31 ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1 ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6 ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11 ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16 ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i21 ], [ 0, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit40.thread ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36 ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_110TIFFOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.153", align 16 ; 9 uses
  %9 = alloca %"struct.fmt::v12::detail::format_arg_store.152", align 16 ; 8 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 16 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 16 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"struct.OpenImageIO::v3_1::ROI", align 16 ; 3 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %18 = alloca %"struct.std::pair", align 8       ; 6 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %21 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %22 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %23 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 7 uses
  %24 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %25 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %26 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 12 uses
  %27 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %28 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %29 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %30 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %31 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %32 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %33 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %34 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %37 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %38 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %39 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %40 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %41 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %42 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %43 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %44 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %45 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %46 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %47 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %48 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %49 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %50 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %51 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %52 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %53 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %54 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %55 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %56 = alloca %struct.tm, align 8                ; 10 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %58 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %59 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %60 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %61 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %62 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %63 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %64 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %65 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %66 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %67 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %68 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %69 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %70 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %71 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %72 = alloca %"class.std::vector.31", align 8   ; 11 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %74 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 36 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %.not.i169.a = icmp eq ptr %i.g, null
  br i1 %.not.i169.a, label %_ZN11OpenImageIO4v3_110TIFFOutput8closetifEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_110TIFFOutput15write_exif_dataEv(ptr noundef nonnull align 8 dereferenceable(336) %0) ; 0 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !34
  tail call void @TIFFClose(ptr noundef %i.i)
  store ptr null, ptr %i.f, align 8, !tbaa !34
  br label %_ZN11OpenImageIO4v3_110TIFFOutput8closetifEv.exit

_ZN11OpenImageIO4v3_110TIFFOutput8closetifEv.exit: ; preds = %bb.a, %bb.b
  store <4 x i32> <i32 0, i32 1048576, i32 0, i32 1048576>, ptr %13, align 16, !tbaa !3
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 16
  store <4 x i32> <i32 0, i32 65536, i32 0, i32 65536>, ptr %i.j, align 16, !tbaa !3
  %i.k = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10check_openENS1_8OpenModeERKNS0_9ImageSpecENS0_3ROIEm(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %13, i64 noundef 0)
  br i1 %i.k, label %bb.c, label %bb.dl

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_110TIFFOutput8closetifEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 34 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !87   ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = and i32 %i.n, 15
  %.not103 = icmp eq i32 %i.o, 0
  br i1 %.not103, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !88   ; 2 uses
  %i.r = and i32 %i.q, 15
  %.not104 = icmp ne i32 %i.r, 0
  %i.s = icmp eq i32 %i.q, 0
  %or.cond150 = or i1 %i.s, %.not104
  br i1 %or.cond150, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.17, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.t)
  br label %bb.dl

bb.g:                                             ; preds = %bb.e, %bb.c
  tail call void @_ZN11OpenImageIO4v3_111ImageOutput28ioproxy_retrieve_from_configERKNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.l)
  store ptr @.str.18, ptr %14, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 12, ptr %i.u, align 8, !tbaa !22
  %i.v = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %14, i32 noundef 0)
  %i.w = icmp ne i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 289 ; 4 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !75, !range !79, !noundef !80
  %75 = zext i1 %i.w to i8
  %76 = or i8 %i.y, %75
  store i8 %76, ptr %i.x, align 1, !tbaa !75
  %i.z = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.l, i1 noundef zeroext false) #34
  %i.aa = icmp ugt i64 %i.z, 4194304000
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !75, !range !79, !noundef !80
  %77 = zext i1 %i.aa to i8
  %78 = or i8 %i.ab, %77                          ; 2 uses
  %.not105 = icmp eq i8 %78, 0
  store i8 %78, ptr %i.x, align 1, !tbaa !75
  %i.ac = icmp eq i32 %3, 1                       ; 2 uses
  %.str.19..str.20 = select i1 %i.ac, ptr @.str.19, ptr @.str.20
  %.str.21..str.22 = select i1 %i.ac, ptr @.str.21, ptr @.str.22
  %i.ad = select i1 %.not105, ptr %.str.21..str.22, ptr %.str.19..str.20 ; 2 uses
  %i.ae = call ptr @TIFFOpenOptionsAlloc()        ; 5 uses
  call void @TIFFOpenOptionsSetErrorHandlerExtR(ptr noundef %i.ae, ptr noundef nonnull @_ZN11OpenImageIO4v3_110TIFFOutput16my_error_handlerEP4tiffPvPKcS6_P13__va_list_tag, ptr noundef nonnull %0)
  call void @TIFFOpenOptionsSetWarningHandlerExtR(ptr noundef %i.ae, ptr noundef nonnull @_ZN11OpenImageIO4v3_110TIFFOutput18my_warning_handlerEP4tiffPvPKcS6_P13__va_list_tag, ptr noundef nonnull %0)
  %i.af = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ImageOutput14ioproxy_openedEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !13
  %i.ai = call noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput7ioproxyEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.aj = call ptr @TIFFClientOpenExt(ptr noundef %i.ah, ptr noundef nonnull %i.ad, ptr noundef %i.ai, ptr noundef nonnull @_ZN11OpenImageIO4v3_1L15writer_readprocEPvS1_l, ptr noundef nonnull @_ZN11OpenImageIO4v3_1L16writer_writeprocEPvS1_l, ptr noundef nonnull @_ZN11OpenImageIO4v3_1L15writer_seekprocEPvmi, ptr noundef nonnull @_ZN11OpenImageIO4v3_1L16writer_closeprocEPv, ptr noundef nonnull @_ZN11OpenImageIO4v3_1L15writer_sizeprocEPv, ptr noundef nonnull @_ZN11OpenImageIO4v3_1L14writer_mapprocEPvPS1_Pm, ptr noundef nonnull @_ZN11OpenImageIO4v3_1L16writer_unmapprocEPvS1_m, ptr noundef %i.ae)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %1, align 8, !tbaa !13
  %i.al = call ptr @TIFFOpenExt(ptr noundef %i.ak, ptr noundef nonnull %i.ad, ptr noundef %i.ae)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge326 = phi ptr [ %i.al, %bb.i ], [ %i.aj, %bb.h ]
  store ptr %storemerge326, ptr %i.f, align 8, !tbaa !34
  call void @TIFFOpenOptionsFree(ptr noundef %i.ae)
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %.not106.not = icmp eq ptr %i.am, null
  br i1 %.not106.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.23, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.dl

bb.l:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !89
  %i.ap = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.am, i32 noundef 256, i32 noundef %i.ao) ; 0 uses
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !90
  %i.at = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.aq, i32 noundef 257, i32 noundef %i.as) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.av = load i32, ptr %i.au, align 4, !tbaa !91 ; 3 uses
  %.not107.a = icmp eq i32 %i.av, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8            ; 2 uses
  %.not108.a = icmp eq i32 %i.ax, 0
  %or.cond152 = select i1 %.not107.a, i1 %.not108.a, i1 false
  br i1 %or.cond152, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load i32, ptr %i.an, align 4, !tbaa !89
  %.not109.a = icmp eq i32 %i.av, %i.ay
  br i1 %.not109.a, label %bb.n, label %._crit_edge371

._crit_edge371:                                   ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !92
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = load i32, ptr %i.ar, align 8, !tbaa !90
  %.not110.a = icmp eq i32 %i.ax, %i.az
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load i32, ptr %i.ba, align 8            ; 2 uses
  %.not111.a = icmp eq i32 %i.bb, 0
  %or.cond154 = select i1 %.not110.a, i1 %.not111.a, i1 false
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bd = load i32, ptr %i.bc, align 4
  %.not112.a = icmp eq i32 %i.bd, 0
  %or.cond156 = select i1 %or.cond154, i1 %.not112.a, i1 false
  br i1 %or.cond156, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge371, %bb.n
  %i.be = phi i32 [ %.pre, %._crit_edge371 ], [ %i.bb, %bb.n ]
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.bg = add nsw i32 %i.be, %i.av
  %i.bh = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.bf, i32 noundef 33300, i32 noundef %i.bg) ; 0 uses
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.bj = load i32, ptr %i.aw, align 8, !tbaa !93
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !94
  %i.bm = add nsw i32 %i.bl, %i.bj
  %i.bn = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.bi, i32 noundef 33301, i32 noundef %i.bm) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.l, %bb.o
  %i.bo = load i32, ptr %i.m, align 8, !tbaa !87  ; 2 uses
  %.not113.a = icmp eq i32 %i.bo, 0
  br i1 %.not113.a, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.bq = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.bp, i32 noundef 322, i32 noundef %i.bo) ; 0 uses
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !88
  %i.bu = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.br, i32 noundef 323, i32 noundef %i.bt) ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 32, ptr %i.bv, align 8, !tbaa !95
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.bx = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.bw, i32 noundef 278, i32 noundef 32) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.by = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 8 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !96
  %i.cb = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.by, i32 noundef 277, i32 noundef %i.ca) ; 0 uses
  store ptr @.str.24, ptr %15, align 8, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 11, ptr %i.cc, align 8, !tbaa !22
  %i.cd = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %15, i32 noundef 1)
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.cf = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.ce, i32 noundef 274, i32 noundef %i.cd) ; 0 uses
  store ptr @.str.25, ptr %16, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 18, ptr %i.cg, align 8, !tbaa !22
  %i.ch = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %16, i32 noundef 0) ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 16 uses
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !97
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !98
  switch i8 %i.ck, label %bb.ah [
    i8 3, label %bb.t
    i8 2, label %bb.u
    i8 5, label %bb.w
    i8 4, label %bb.x
    i8 7, label %bb.z
    i8 6, label %bb.aa
    i8 10, label %bb.ac
    i8 11, label %bb.af
    i8 12, label %bb.ag
  ]

bb.t:                                             ; preds = %bb.s
  store i32 8, ptr %i.ci, align 8, !tbaa !97
  br label %switch.lookup

bb.u:                                             ; preds = %bb.s
  %switch.tableidx = add i32 %i.ch, -1            ; 2 uses
  %i.cl = icmp ult i32 %switch.tableidx, 6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 43, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond450 = select i1 %i.cl, i1 %switch.lobit, i1 false
  br i1 %or.cond450, label %switch.lookup, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 8, ptr %i.ci, align 8, !tbaa !97
  br label %switch.lookup

bb.w:                                             ; preds = %bb.s
  store i32 16, ptr %i.ci, align 8, !tbaa !97
  br label %switch.lookup

bb.x:                                             ; preds = %bb.s
  switch i32 %i.ch, label %bb.y [
    i32 10, label %switch.lookup
    i32 12, label %switch.lookup
    i32 14, label %switch.lookup
  ]

bb.y:                                             ; preds = %bb.x
  store i32 16, ptr %i.ci, align 8, !tbaa !97
  br label %switch.lookup

bb.z:                                             ; preds = %bb.s
  store i32 32, ptr %i.ci, align 8, !tbaa !97
  br label %switch.lookup

bb.aa:                                            ; preds = %bb.s
  %.not115 = icmp eq i32 %i.ch, 24
  br i1 %.not115, label %switch.lookup, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 32, ptr %i.ci, align 8, !tbaa !97
  br label %switch.lookup

bb.ac:                                            ; preds = %bb.s
  store ptr @.str.26, ptr %17, align 8, !tbaa !20
  %i.cm = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 9, ptr %i.cm, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store ptr @.str.26, ptr %12, align 8, !tbaa !20
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 9, ptr %i.cn, align 8, !tbaa !22
  %i.co = call noundef zeroext i1 @_ZN11OpenImageIO4v3_112getattributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPv(ptr noundef nonnull dead_on_return %12, i64 263, ptr noundef nonnull %i.d)
  %i.cp = load i32, ptr %i.d, align 4
  %i.cq = select i1 %i.co, i32 %i.cp, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.cr = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull dead_on_return %17, i32 noundef %i.cq)
  %.not114 = icmp eq i32 %i.cr, 0
  br i1 %.not114, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 16, ptr %i.ci, align 8, !tbaa !97
  br label %switch.lookup
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_110TIFFOutput15write_scanlinesEiiiNS0_8TypeDescEPKvll:bb.a
  call void @_ZNSt14__basic_futureIvED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #34
  br label %.body

.body:                                            ; preds = %bb.bg, %bb.aw, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, %bb.bh
  %.pn124 = phi { ptr, i32 } [ %i.hi, %bb.bh ], [ %i.hh, %bb.bg ], [ %i.ex, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i ], [ %.pn8.i, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.cd

bb.bi:                                            ; preds = %.lr.ph252, %bb.bt
  %i.hj = phi i32 [ %i.ep, %.lr.ph252 ], [ %i.in, %bb.bt ] ; 3 uses
  %i.hk = phi i32 [ %1, %.lr.ph252 ], [ %i.io, %bb.bt ] ; 4 uses
  %.087250 = phi i64 [ 0, %.lr.ph252 ], [ %i.ip, %bb.bt ] ; 4 uses
  %i.hl = add nsw i32 %i.hj, %i.hk
  %.not119 = icmp sgt i32 %i.hl, %2
  br i1 %.not119, label %.critedge147, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hm = mul i64 %.087250, %i.dl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.hm
  %i.ho = load i32, ptr %i.o, align 4, !tbaa !267
  %i.hp = sub nsw i32 %i.hk, %i.ho
  %i.hq = sdiv i32 %i.hp, %i.hj
  invoke void @_ZN11OpenImageIO4v3_18task_set13wait_for_taskEmb(ptr noundef nonnull align 8 dereferenceable(40) %14, i64 noundef %.087250, i1 noundef zeroext false)
          to label %bb.bk unwind label %.loopexit213

bb.bk:                                            ; preds = %bb.bj
  %i.hr = load i8, ptr %i.e, align 1, !tbaa !155, !range !79, !noundef !80
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.89)
          to label %.critedge unwind label %.loopexit.split-lp214

.loopexit213:                                     ; preds = %bb.bj, %bb.bm
  %lpad.loopexit215 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.loopexit.split-lp214:                            ; preds = %bb.bl
  %lpad.loopexit.split-lp216 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bm:                                            ; preds = %bb.bk
  %i.ht = load ptr, ptr %i.eq, align 8, !tbaa !34
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.0106, i64 %.087250
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !11
  %i.hw = invoke i64 @TIFFWriteRawStrip(ptr noundef %i.ht, i32 noundef %i.hq, ptr noundef nonnull %i.hn, i64 noundef %i.hv)
          to label %bb.bn unwind label %.loopexit213

bb.bn:                                            ; preds = %bb.bm
  %i.hx = icmp slt i64 %i.hw, 0
  br i1 %i.hx, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  invoke void @_ZN11OpenImageIO4v3_110TIFFOutput20oiio_tiff_last_errorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !16
  %.not120 = icmp eq i64 %i.hz, 0
  %i.ia = load ptr, ptr %17, align 8
  %spec.select = select i1 %.not120, ptr @.str.86, ptr %i.ia
  store ptr %spec.select, ptr %i.f, align 8, !tbaa !100
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiiPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.90, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  %i.ib = load ptr, ptr %17, align 8, !tbaa !13   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bq
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !15
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %.critedge

bb.br:                                            ; preds = %bb.bo
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

bb.bs:                                            ; preds = %bb.bp
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  %i.ii = load ptr, ptr %17, align 8, !tbaa !13   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.bs
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !15
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162, %bb.br
  %.pn = phi { ptr, i32 } [ %i.ig, %bb.br ], [ %i.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162 ], [ %i.ih, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %bb.cd

bb.bt:                                            ; preds = %bb.bn
  %i.in = load i32, ptr %i.j, align 8, !tbaa !95  ; 3 uses
  %i.io = add nsw i32 %i.hk, %i.in                ; 3 uses
  store i32 %i.io, ptr %i.d, align 4, !tbaa !3
  %i.ip = add i64 %.087250, 1
  %i.iq = load i8, ptr %i.e, align 1, !tbaa !155, !range !79, !noundef !80
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %bb.bi, label %.critedge147, !llvm.loop !375

.critedge147:                                     ; preds = %bb.bi, %bb.bt, %._crit_edge
  %.085.lcssa287 = phi ptr [ %i.ha, %._crit_edge ], [ %.085.lcssa288, %bb.bt ], [ %.085.lcssa288, %bb.bi ] ; 3 uses
  %.0109.lcssa285 = phi ptr [ %i.hb, %._crit_edge ], [ %.0109.lcssa286, %bb.bt ], [ %.0109.lcssa286, %bb.bi ] ; 2 uses
  %i.is = phi i32 [ %1, %._crit_edge ], [ %i.hk, %bb.bi ], [ %i.io, %bb.bt ] ; 4 uses
  %i.it = phi i32 [ %i.hc, %._crit_edge ], [ %i.hj, %bb.bi ], [ %i.in, %bb.bt ]
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !71
  %i.iw = add nsw i32 %i.iv, %i.it
  store i32 %i.iw, ptr %i.iu, align 8, !tbaa !71
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.iy = invoke noundef double @_ZNK11OpenImageIO4v3_15TimerclEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ix)
          to label %bb.bu unwind label %.loopexit.split-lp

bb.bu:                                            ; preds = %.critedge147
  %i.iz = fcmp ogt double %i.iy, 5.000000e+00
  %i.ja = load i32, ptr %i.bf, align 4
  %i.jb = icmp eq i32 %i.ja, 7
  %or.cond150 = select i1 %i.iz, i1 true, i1 %i.jb
  %i.jc = load i32, ptr %i.iu, align 8
  %i.jd = icmp sgt i32 %i.jc, 63
  %or.cond152 = select i1 %or.cond150, i1 %i.jd, i1 false
  br i1 %or.cond152, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !34
  %i.jg = invoke i32 @TIFFCheckpointDirectory(ptr noundef %i.jf)
          to label %bb.bw unwind label %.loopexit.split-lp ; 0 uses

bb.bw:                                            ; preds = %bb.bv
  %i.jh = invoke noundef double @_ZN11OpenImageIO4v3_15Timer3lapEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ix)
          to label %bb.bx unwind label %.loopexit.split-lp ; 0 uses

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.iu, align 8, !tbaa !71
  br label %bb.by

.loopexit:                                        ; preds = %.lr.ph256
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.loopexit.split-lp:                               ; preds = %.critedge147, %bb.bv, %bb.bw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.by:                                            ; preds = %bb.bu, %bb.bx
  %i.ji = icmp sge i32 %i.is, %2
  %.not123 = icmp eq ptr %.0109.lcssa285, %.085.lcssa287
  %or.cond153 = select i1 %i.ji, i1 true, i1 %.not123
  br i1 %or.cond153, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jj = sub nsw i32 %2, %i.is
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.an, i1 noundef zeroext true) #34
  %i.jm = mul i64 %i.jl, %i.jk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.085.lcssa287, ptr align 1 %.0109.lcssa285, i64 %i.jm, i1 false)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.jn = load i8, ptr %i.e, align 1, !tbaa !155, !range !79, !noundef !80
  %i.jo = trunc nuw i8 %i.jn to i1                ; 2 uses
  %i.jp = icmp slt i32 %i.is, %2
  %i.jq = select i1 %i.jo, i1 %i.jp, i1 false
  br i1 %i.jq, label %.lr.ph256, label %.critedge

.lr.ph256:                                        ; preds = %bb.ca, %bb.cb
  %i.jr = phi i32 [ %i.jz, %bb.cb ], [ %i.is, %bb.ca ]
  %.186254 = phi ptr [ %i.jx, %bb.cb ], [ %.085.lcssa287, %bb.ca ] ; 2 uses
  %i.js = load i32, ptr %i.c, align 4, !tbaa !3
  %i.jt = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110TIFFOutput14write_scanlineEiiNS0_8TypeDescEPKvl(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %i.jr, i32 noundef %i.js, i64 256, ptr noundef %.186254, i64 noundef %i.cz)
          to label %bb.cb unwind label %.loopexit

bb.cb:                                            ; preds = %.lr.ph256
  %i.ju = load i8, ptr %i.e, align 1, !tbaa !155, !range !79, !noundef !80
  %18 = icmp ne i8 %i.ju, 0
  %i.jv = and i1 %i.jt, %18                       ; 3 uses
  %i.jw = zext i1 %i.jv to i8
  store i8 %i.jw, ptr %i.e, align 1, !tbaa !155
  %i.jx = getelementptr inbounds i8, ptr %.186254, i64 %i.dc
  %i.jy = load i32, ptr %i.d, align 4, !tbaa !3
  %i.jz = add nsw i32 %i.jy, 1                    ; 3 uses
  store i32 %i.jz, ptr %i.d, align 4, !tbaa !3
  %i.ka = icmp slt i32 %i.jz, %2
  %i.kb = select i1 %i.jv, i1 %i.ka, i1 false
  br i1 %i.kb, label %.lr.ph256, label %.critedge, !llvm.loop !376

.critedge:                                        ; preds = %bb.cb, %bb.ca, %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.3 = phi i1 [ false, %bb.bl ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jo, %bb.ca ], [ %i.jv, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @_ZN11OpenImageIO4v3_18task_setD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  %.not.i165 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i165, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit169, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %.critedge
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #36
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit169

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit169: ; preds = %.critedge, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.do) #36
  call void @_ZdaPv(ptr noundef nonnull %i.dg) #36
  %i.kc = load ptr, ptr %13, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i170 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i170, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit169
  %i.kd = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !77
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = ptrtoint ptr %i.kc to i64
  %i.kh = sub i64 %i.kf, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.kh) #36
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit169, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.cg

bb.cd:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit213, %.loopexit.split-lp214, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %.body
  %.pn124.pn = phi { ptr, i32 } [ %.pn124, %.body ], [ %lpad.loopexit.split-lp216, %.loopexit.split-lp214 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %lpad.loopexit215, %.loopexit213 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @_ZN11OpenImageIO4v3_18task_setD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  %.not.i171 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i171, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit176, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i172

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i172: ; preds = %bb.cd
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #36
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit176

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit176: ; preds = %.thread195, %bb.cd, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i172
  %.pn124.pn.pn.pn199 = phi { ptr, i32 } [ %i.dx, %.thread195 ], [ %.pn124.pn, %bb.cd ], [ %.pn124.pn, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i172 ]
  call void @_ZdaPv(ptr noundef nonnull %i.do) #36
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit179

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit179: ; preds = %bb.ab, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit176, %bb.aa
  %.pn124.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.du, %bb.aa ], [ %.pn124.pn.pn.pn199, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit176 ], [ %i.dv, %bb.ab ]
  call void @_ZdaPv(ptr noundef nonnull %i.dg) #36
  br label %bb.ce

bb.ce:                                            ; preds = %bb.z, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit179, %bb.y
  %.pn124.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.y ], [ %.pn124.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit179 ], [ %i.dt, %bb.z ]
  %i.ki = load ptr, ptr %13, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i180 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIhSaIhEED2Ev.exit181, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kj = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !77
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = ptrtoint ptr %i.ki to i64
  %i.kn = sub i64 %i.kl, %i.km
  call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %i.kn) #36
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit181

_ZNSt6vectorIhSaIhEED2Ev.exit181:                 ; preds = %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.ch

bb.cg:                                            ; preds = %.critedge145, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %.4 = phi i1 [ %.3, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %i.cl, %.critedge145 ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  ret i1 %.4

bb.ch:                                            ; preds = %bb.r, %_ZNSt6vectorIhSaIhEED2Ev.exit181, %bb.q
  %.pn124.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.q ], [ %.pn124.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit181 ], [ %i.cn, %bb.r ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  resume { ptr, i32 } %.pn124.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef dead_on_return %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = load i32, ptr @_ZN11OpenImageIO4v3_13pvt14oiio_log_timesE, align 4, !tbaa !3
  %.not2 = icmp eq i32 %i.a, 0
  store i8 0, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  br i1 %.not2, label %_ZN11OpenImageIO4v3_15TimerC2Eb.exit.thread, label %_ZN11OpenImageIO4v3_15TimerC2Eb.exit

_ZN11OpenImageIO4v3_15TimerC2Eb.exit.thread:      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !16
  store i8 0, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.g, align 8, !tbaa !377
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit

_ZN11OpenImageIO4v3_15TimerC2Eb.exit:             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.h = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #34 ; 0 uses
  %i.i = load i64, ptr %2, align 8, !tbaa !25
  %i.j = mul nsw i64 %i.i, 1000000000
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  %i.m = add nsw i64 %i.j, %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  store i64 %i.m, ptr %i.c, align 8, !tbaa !28
  store i8 1, ptr %0, align 8, !tbaa !31
  %.pre = load i32, ptr @_ZN11OpenImageIO4v3_13pvt14oiio_log_timesE, align 4, !tbaa !3
  %i.n = icmp eq i32 %.pre, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.q, align 8, !tbaa !16
  store i8 0, ptr %i.p, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.r, align 8, !tbaa !377
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_15TimerC2Eb.exit
  %i.s = load ptr, ptr %1, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !22
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !13   ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.p
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.z = load i64, ptr %i.p, align 8, !tbaa !15
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZN11OpenImageIO4v3_15TimerD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #34
  resume { ptr, i32 } %i.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit: ; preds = %_ZN11OpenImageIO4v3_15TimerC2Eb.exit.thread, %bb.b, %_ZN11OpenImageIO4v3_15TimerC2Eb.exit
  ret void
}

declare noundef ptr @_ZN11OpenImageIO4v3_119default_thread_poolEv() local_unnamed_addr #1

declare noundef i32 @_ZNK11OpenImageIO4v3_111thread_pool4sizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i32 @_ZNK11OpenImageIO4v3_111ImageOutput7threadsEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_scanlinesEiiiNS0_8TypeDescEPKvll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput19to_native_rectangleEiiiiiiNS0_8TypeDescEPKvlllRSt6vectorIhSaIhEEjiii(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #2

declare i64 @compressBound(i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14__basic_futureIvED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !355  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

end_hunk_1
