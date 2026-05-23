inline.NumInlined: 3050
inline.NumDeleted: 793
begin_hunk_0_@_ZN11OpenImageIO4v3_19RLAOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE:bb.a
  %i.xq = call noundef i16 @llvm.bswap.i16(i16 %i.xp)
  store i16 %i.xq, ptr %i.xo, align 2, !tbaa !76
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 4 uses
  %i.xs = load i32, ptr %i.xr, align 8, !tbaa !3
  %i.xt = call noundef i32 @llvm.bswap.i32(i32 %i.xs)
  store i32 %i.xt, ptr %i.xr, align 8, !tbaa !3
  %i.xu = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef nonnull %i.al, i64 noundef 740, i64 noundef 1) ; 0 uses
  %i.xv = load <8 x i16>, ptr %i.al, align 8, !tbaa !76
  %i.xw = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.xv)
  store <8 x i16> %i.xw, ptr %i.al, align 8, !tbaa !76
  %i.xx = load <4 x i16>, ptr %i.cc, align 8, !tbaa !76
  %i.xy = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.xx)
  store <4 x i16> %i.xy, ptr %i.cc, align 8, !tbaa !76
  %i.xz = load i16, ptr %i.xc, align 8, !tbaa !76
  %i.ya = call noundef i16 @llvm.bswap.i16(i16 %i.xz)
  store i16 %i.ya, ptr %i.xc, align 8, !tbaa !76
  %i.yb = load i16, ptr %i.kq, align 2, !tbaa !76
  %i.yc = call noundef i16 @llvm.bswap.i16(i16 %i.yb)
  store i16 %i.yc, ptr %i.kq, align 2, !tbaa !76
  %i.yd = load i32, ptr %i.mz, align 4, !tbaa !3
  %i.ye = call noundef i32 @llvm.bswap.i32(i32 %i.yd)
  store i32 %i.ye, ptr %i.mz, align 4, !tbaa !3
  %i.yf = load i16, ptr %i.tx, align 4, !tbaa !76
  %i.yg = call noundef i16 @llvm.bswap.i16(i16 %i.yf)
  store i16 %i.yg, ptr %i.tx, align 4, !tbaa !76
  %i.yh = load <4 x i16>, ptr %i.xl, align 2, !tbaa !76
  %i.yi = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.yh)
  store <4 x i16> %i.yi, ptr %i.xl, align 2, !tbaa !76
  %i.yj = load i16, ptr %i.xo, align 2, !tbaa !76
  %i.yk = call noundef i16 @llvm.bswap.i16(i16 %i.yj)
  store i16 %i.yk, ptr %i.xo, align 2, !tbaa !76
  %i.yl = load i32, ptr %i.xr, align 8, !tbaa !3
  %i.ym = call noundef i32 @llvm.bswap.i32(i32 %i.yl)
  store i32 %i.ym, ptr %i.xr, align 8, !tbaa !3
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 3 uses
  %i.yo = load i32, ptr %i.bc, align 8, !tbaa !50
  %i.yp = sext i32 %i.yo to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  store i32 0, ptr %i.l, align 4, !tbaa !3
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !13 ; 5 uses
  %i.ys = load ptr, ptr %i.yn, align 8, !tbaa !9  ; 5 uses
  %i.yt = ptrtoint ptr %i.yr to i64
  %i.yu = ptrtoint ptr %i.ys to i64               ; 4 uses
  %i.yv = sub i64 %i.yt, %i.yu
  %i.yw = ashr exact i64 %i.yv, 2                 ; 3 uses
  %i.yx = icmp ult i64 %i.yw, %i.yp
  br i1 %i.yx, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.yy = sub nuw nsw i64 %i.yp, %i.yw
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.yn, ptr %i.yr, i64 noundef %i.yy, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %.pre306 = load ptr, ptr %i.yn, align 8, !tbaa !9 ; 2 uses
  %.pre307 = load ptr, ptr %i.yq, align 8, !tbaa !13
  %.pre308 = ptrtoint ptr %.pre306 to i64
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.yz = icmp ugt i64 %i.yw, %i.yp
  br i1 %i.yz, label %bb.di, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.di:                                            ; preds = %bb.dh
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %i.yp ; 3 uses
  %.not.i.i = icmp eq ptr %i.yr, %i.za
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.di
  store ptr %i.za, ptr %i.yq, align 8, !tbaa !13
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.dg, %bb.dh, %bb.di, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre308, %bb.dg ], [ %i.yu, %bb.dh ], [ %i.yu, %bb.di ], [ %i.yu, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ]
  %i.zb = phi ptr [ %.pre307, %bb.dg ], [ %i.yr, %bb.dh ], [ %i.yr, %bb.di ], [ %i.za, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ]
  %i.zc = phi ptr [ %.pre306, %bb.dg ], [ %i.ys, %bb.dh ], [ %i.ys, %bb.di ], [ %i.ys, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #30
  %i.zd = ptrtoint ptr %i.zb to i64
  %i.ze = sub i64 %i.zd, %.pre-phi
  %i.zf = ashr exact i64 %i.ze, 2
  %i.zg = call noundef zeroext i1 @_ZN11OpenImageIO4v3_19RLAOutput5writeIjEEbPKT_m(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef nonnull %i.zc, i64 noundef %i.zf) ; 0 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.zi = load i32, ptr %i.zh, align 8, !tbaa !19
  %.not64 = icmp eq i32 %i.zi, 0
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.zk = load i32, ptr %i.zj, align 4
  %.not65 = icmp eq i32 %i.zk, 0
  %or.cond70 = select i1 %.not64, i1 true, i1 %.not65
  br i1 %or.cond70, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.zm = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.o, i1 noundef zeroext false) #30
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.zl, i64 noundef %i.zm)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.dl

bb.dl:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread, %bb.a, %bb.dk
  %.0 = phi i1 [ true, %bb.dk ], [ false, %bb.a ], [ false, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10check_openENS1_8OpenModeERKNS0_9ImageSpecENS0_3ROIEm(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

declare void @_ZN11OpenImageIO4v3_111ImageOutput28ioproxy_retrieve_from_configERKNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput19ioproxy_use_or_openENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef dead_on_return) local_unnamed_addr #1

declare noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv() local_unnamed_addr #1

declare void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ColorConfig10equivalentENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef, ptr noundef dead_on_return, i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12istarts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_17Strutil10parse_wordERNS0_17basic_string_viewIcSt11char_traitsIcEEEb(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #2

declare noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, float noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toILm16EJfEEEvRAT__cPKcDpRKT0_(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.103", align 16 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30, !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !135
  %i.b = load i32, ptr %2, align 4, !tbaa !98, !noalias !135
  store i32 %i.b, ptr %3, align 16, !noalias !135
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 9, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !135
  %i.c = load ptr, ptr %4, align 8, !tbaa !56
  store ptr %i.c, ptr %5, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59
  store i64 %i.f, ptr %i.d, align 8, !tbaa !54
  %i.g = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %0, ptr noundef nonnull dead_on_return %5, i64 noundef 16) #30 ; 0 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !56     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !106
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

declare noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_19RLAOutput16set_chromaticityEPKNS0_10ParamValueEPcmPKc(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.102", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i, 255
  %i.c = icmp eq i64 %i.b, 11
  br i1 %i.c, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %12 = lshr i64 %.sroa.0.0.copyload.i, 8
  %trunc = trunc i64 %12 to i8
  switch i8 %trunc, label %bb.g [
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.e = load i8, ptr %i.d, align 2, !tbaa !138, !range !141, !noundef !142
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %i.f, ptr %i.h, ptr %i.g       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !143
  %i.k = load float, ptr %i.i, align 4, !tbaa !98, !noalias !146
  store float %i.k, ptr %8, align 16, !tbaa !106, !noalias !143
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.m = load float, ptr %i.j, align 4, !tbaa !98, !noalias !146
  store float %i.m, ptr %i.l, align 16, !tbaa !106, !noalias !143
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.50, i64 11, i64 153, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !143
  %i.n = load ptr, ptr %9, align 8, !tbaa !56
  store ptr %i.n, ptr %10, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !59
  store i64 %i.q, ptr %i.o, align 8, !tbaa !54
  %i.r = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef %2, ptr noundef nonnull dead_on_return %10, i64 noundef %3) #30 ; 0 uses
  %i.s = load ptr, ptr %9, align 8, !tbaa !56     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toIJffEEEvPcmPKcDpRKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.t, align 8, !tbaa !106
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #31
  br label %_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toIJffEEEvPcmPKcDpRKT_.exit

_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toIJffEEEvPcmPKcDpRKT_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.y = load i8, ptr %i.x, align 2, !tbaa !138, !range !141, !noundef !142
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = select i1 %i.z, ptr %i.ab, ptr %i.aa    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.af = load float, ptr %i.ac, align 4, !tbaa !98, !noalias !155
  store float %i.af, ptr %5, align 16, !tbaa !106, !alias.scope !152, !noalias !149
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !98, !noalias !155
  store float %i.ah, ptr %i.ag, align 16, !tbaa !106, !alias.scope !152, !noalias !149
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aj = load float, ptr %i.ae, align 4, !tbaa !98, !noalias !155
  store float %i.aj, ptr %i.ai, align 16, !tbaa !106, !alias.scope !152, !noalias !149
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.51, i64 17, i64 2457, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !149
  %i.ak = load ptr, ptr %6, align 8, !tbaa !56
  store ptr %i.ak, ptr %7, align 8, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !59
  store i64 %i.an, ptr %i.al, align 8, !tbaa !54
  %i.ao = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef %2, ptr noundef nonnull dead_on_return %7, i64 noundef %3) #30 ; 0 uses
  %i.ap = load ptr, ptr %6, align 8, !tbaa !56    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toIJfffEEEvPcmPKcDpRKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %bb.e
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !106
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toIJfffEEEvPcmPKcDpRKT_.exit

_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toIJfffEEEvPcmPKcDpRKT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.g

.critedge:                                        ; preds = %bb.a, %bb.b
  store ptr %4, ptr %11, align 8, !tbaa !51
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.au = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #30
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %.critedge, %bb.f
  %i.av = phi i64 [ %i.au, %bb.f ], [ 0, %.critedge ]
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !54
  %i.ax = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef %2, ptr noundef nonnull dead_on_return %11, i64 noundef %3) #30 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toIJffEEEvPcmPKcDpRKT_.exit, %_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toIJfffEEEvPcmPKcDpRKT_.exit, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_17Sysutil14get_local_timeEPKlP2tm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19RLAOutput5writeIjEEbPKT_m(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl i64 %2, 2                            ; 2 uses
  %i.b = alloca i8, i64 %i.a, align 16            ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 4 %1, i64 %i.a, i1 false)
  %i.c = trunc i64 %2 to i32
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = and i64 %2, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %2, 2147483640                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.e, align 16, !tbaa !3
  %wide.load10 = load <4 x i32>, ptr %i.f, align 16, !tbaa !3
  %i.g = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.h = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load10)
  store <4 x i32> %i.g, ptr %i.e, align 16, !tbaa !3
  store <4 x i32> %i.h, ptr %i.f, align 16, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  store i32 %i.l, ptr %i.j, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit, label %.lr.ph.i, !llvm.loop !159

_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a, %bb.b
  %i.m = phi ptr [ null, %bb.a ], [ %i.b, %bb.b ], [ %i.b, %middle.block ], [ %i.b, %.lr.ph.i ]
  %i.n = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.m, i64 noundef 4, i64 noundef %2)
  ret i1 %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
end_hunk_0
