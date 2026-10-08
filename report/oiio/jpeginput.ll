Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jpeginput?download=true
inline.NumInlined: 3411
inline.NumDeleted: 1018
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_:bb.a
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.116", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32, !noalias !395
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !395
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !395
  %i.b = load ptr, ptr %4, align 8, !tbaa !133
  store ptr %i.b, ptr %3, align 8, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54
  store i64 %i.e, ptr %i.c, align 8, !tbaa !139
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !133    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !55
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !133    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !55
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %i.k
}

declare void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_118decode_icc_profileENS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare i32 @is_uhdr_image(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uhdr_create_decoder() local_unnamed_addr #2

declare void @uhdr_dec_set_image(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uhdr_decode(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.117", align 16 ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32, !noalias !398
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !398
  %i.b = load i32, ptr %2, align 4, !tbaa !45, !noalias !398
  %.sroa.03.0.insert.ext.i = zext i32 %i.b to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %3, align 16, !noalias !398
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 1, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !398
  %i.c = load ptr, ptr %5, align 8, !tbaa !133
  store ptr %i.c, ptr %4, align 8, !tbaa !138
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  store i64 %i.f, ptr %i.d, align 8, !tbaa !139
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %5, align 8, !tbaa !133    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !55
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %5, align 8, !tbaa !133    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !55
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJA256_cEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(256) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.118", align 16 ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32, !noalias !401
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !401
  %i.b = ptrtoint ptr %2 to i64
  store i64 %i.b, ptr %3, align 16, !noalias !401
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 12, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !401
  %i.c = load ptr, ptr %5, align 8, !tbaa !133
  store ptr %i.c, ptr %4, align 8, !tbaa !138
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  store i64 %i.f, ptr %i.d, align 8, !tbaa !139
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %5, align 8, !tbaa !133    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !55
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %5, align 8, !tbaa !133    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !55
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %i.l
}

declare void @uhdr_release_decoder(ptr noundef) local_unnamed_addr #2

declare ptr @uhdr_get_decoded_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18JpgInput20read_native_scanlineEiiiiPv(ptr noundef nonnull align 8 dereferenceable(1312) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::span.31", align 8 ; 3 uses
  %i.a = add nsw i32 %3, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i1 noundef zeroext true) #32
  store ptr %5, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.c, ptr %i.d, align 8
  %i.e = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18JpgInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(1312) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.a, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.31") align 8 %6)
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18JpgInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(1312) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly byval(%"class.OpenImageIO::v3_1::span.31") align 8 captures(none) %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %6 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 10 uses
  %7 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !45
  store i32 %4, ptr %i.b, align 4, !tbaa !45
  call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.e = load ptr, ptr %0, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %.noexc unwind label %bb.c, !inline_history !408

.noexc:                                           ; preds = %bb.a
  %i.i = icmp eq i32 %1, %i.h
  br i1 %i.i, label %bb.b, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

bb.b:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %0, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit unwind label %bb.c, !inline_history !408

_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit: ; preds = %bb.b
  %i.n = icmp eq i32 %2, %i.m
  br i1 %i.n, label %bb.d, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.h, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.q = load i8, ptr %i.p, align 4, !tbaa !149, !range !141, !noundef !142
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp slt i32 %3, 0
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.b, align 4, !tbaa !45   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.w = load i32, ptr %i.v, align 4, !tbaa !165
  %i.x = icmp sle i32 %i.t, %i.w
  %.not = icmp slt i32 %3, %i.t
  %or.cond = and i1 %.not, %i.x
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.43, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread unwind label %bb.c

bb.h:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %5, align 8, !tbaa !410    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !411
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !412 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !413
  %i.af = add nsw i32 %i.ae, %i.ac
  %i.ag = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput19valid_raw_span_sizeENS0_4spanIKSt4byteLm18446744073709551615EEERKNS0_9ImageSpecEiiiiiiii(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr %i.y, i64 %i.aa, ptr noundef nonnull align 8 dereferenceable(160) %i.ab, i32 noundef %i.ac, i32 noundef %i.af, i32 noundef %3, i32 noundef %i.t, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef -1)
          to label %bb.i unwind label %bb.c

bb.i:                                             ; preds = %bb.h
  br i1 %i.ag, label %bb.j, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !164
  %i.aj = icmp sgt i32 %i.ai, %3
  br i1 %i.aj, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1ENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %6, i64 256) #32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !128 ; 2 uses
  %.not94 = icmp eq ptr %i.al, null
  br i1 %.not94, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull align 8 dereferenceable(160) %i.al)
          to label %bb.n unwind label %bb.m       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.n:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1ENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %7, i64 256) #32
  %i.ao = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18JpgInput5closeEv(ptr noundef nonnull align 8 dereferenceable(1312) %0)
          to label %bb.o unwind label %bb.s       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aq = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18JpgInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecERKSA_(ptr noundef nonnull align 8 dereferenceable(1312) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(160) %7, ptr noundef nonnull align 8 dereferenceable(160) %6)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %i.aq, label %bb.q, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit79.thread

bb.q:                                             ; preds = %bb.p
  %i.ar = load ptr, ptr %0, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %.noexc77 unwind label %bb.s, !inline_history !408

.noexc77:                                         ; preds = %bb.q
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.r, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit79.thread

bb.r:                                             ; preds = %.noexc77
  %i.aw = load ptr, ptr %0, align 8, !tbaa !47
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit79 unwind label %bb.s, !inline_history !408

_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit79: ; preds = %bb.r
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.critedge, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit79.thread

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.t

.critedge:                                        ; preds = %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit79
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.u

_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit79.thread: ; preds = %.noexc77, %bb.p, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit79
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

bb.t:                                             ; preds = %bb.s, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.s ], [ %i.an, %bb.m ]
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.aw

bb.u:                                             ; preds = %.critedge, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !129, !range !141, !noundef !142
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !130
  %i.bh = invoke ptr @uhdr_get_decoded_image(ptr noundef %i.bg)
          to label %bb.w unwind label %bb.x       ; 3 uses

bb.w:                                             ; preds = %bb.v
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !183
  switch i32 %i.bi, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread [
    i32 3, label %bb.aa
    i32 4, label %bb.y
    i32 11, label %bb.z
  ]

bb.x:                                             ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.y:                                             ; preds = %bb.w
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.z, %bb.y
  %.058 = phi i32 [ 3, %bb.z ], [ 8, %bb.y ], [ 4, %bb.w ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !45
  %i.bm = mul i32 %i.bl, %.058
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !185
  %8 = zext nneg i32 %3 to i64
  %i.bq = mul nuw nsw i64 %8, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  %i.bs = load i32, ptr %i.b, align 4, !tbaa !45
  %i.bt = sub nsw i32 %i.bs, %3
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul nsw i64 %i.bu, %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.br, i64 %i.bv, i1 false)
  br label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

bb.ab:                                            ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.bx = call i32 @_setjmp(ptr noundef nonnull %i.bw) #36
  %.not64 = icmp eq i32 %i.bx, 0
  br i1 %.not64, label %bb.ac, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.by = load i32, ptr %i.b, align 4, !tbaa !45  ; 2 uses
  %i.bz = sub i32 %i.by, %3                       ; 8 uses
  %i.ca = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.ab, i1 noundef zeroext true) #32 ; 5 uses
  %.not65 = icmp eq i32 %i.by, %3
  br i1 %.not65, label %._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = sext i32 %i.bz to i64
  %i.cc = shl nsw i64 %i.cb, 3
  %i.cd = alloca i8, i64 %i.cc, align 16          ; 8 uses
  %i.ce = icmp sgt i32 %i.bz, 0
  br i1 %i.ce, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ad
  %i.cf = load ptr, ptr %5, align 8, !tbaa !410   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.bz to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.cg = icmp ult i32 %i.bz, 4
  br i1 %i.cg, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.af

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.af
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod138)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.ae ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ae ]
  %i.ch = mul i64 %i.ca, %indvars.iv.epil
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.epil
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !162
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.ae, !llvm.loop !402

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ae, %bb.ac, %bb.ad
  %i.ck = phi i1 [ false, %bb.ac ], [ false, %bb.ad ], [ true, %bb.ae ], [ true, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %i.cl = phi ptr [ null, %bb.ac ], [ %i.cd, %bb.ad ], [ %i.cd, %bb.ae ], [ %i.cd, %._crit_edge.loopexit.unr-lcssa ] ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 221 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !163, !range !141, !noundef !142
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.ag, label %.loopexit101

bb.af:                                            ; preds = %bb.af, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.af ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.af ]
  %i.cp = mul i64 %i.ca, %indvars.iv
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv
  store ptr %i.cq, ptr %i.cr, align 16, !tbaa !162
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cs = mul i64 %i.ca, %indvars.iv.next
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !162
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.cv = mul i64 %i.ca, %indvars.iv.next.1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next.1
  store ptr %i.cw, ptr %i.cx, align 16, !tbaa !162
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.cy = mul i64 %i.ca, %indvars.iv.next.2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next.2
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !162
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.af, !llvm.loop !403

bb.ag:                                            ; preds = %._crit_edge
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.dc = load i32, ptr %i.ad, align 4, !tbaa !413
  %i.dd = shl i32 %i.bz, 2
  %i.de = mul i32 %i.dd, %i.dc
  %i.df = sext i32 %i.de to i64
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 noundef %i.df)
          to label %.preheader100 unwind label %.loopexit.split-lp96

.preheader100:                                    ; preds = %bb.ag
  br i1 %i.ck, label %.lr.ph106, label %.loopexit101

.lr.ph106:                                        ; preds = %.preheader100
  %i.dg = load ptr, ptr %i.db, align 8, !tbaa !131 ; 5 uses
  %i.dh = load i32, ptr %i.ad, align 4, !tbaa !413
  %factor.op.mul = shl i32 %i.dh, 2               ; 5 uses
  %wide.trip.count122 = zext nneg i32 %i.bz to i64 ; 2 uses
  %xtraiter140 = and i64 %wide.trip.count122, 3   ; 3 uses
  %i.di = add i32 %i.bz, -1
  %i.dj = icmp ult i32 %i.di, 3
  br i1 %i.dj, label %.epil.preheader139, label %.lr.ph106.new

.lr.ph106.new:                                    ; preds = %.lr.ph106
  %unroll_iter144 = and i64 %wide.trip.count122, 2147483644
  br label %bb.ah

.loopexit95:                                      ; preds = %bb.aj
  %lpad.loopexit97 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp96:                             ; preds = %bb.ag, %bb.am
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ah:                                            ; preds = %bb.ah, %.lr.ph106.new
  %indvars.iv119 = phi i64 [ 0, %.lr.ph106.new ], [ %indvars.iv.next120.3, %bb.ah ] ; 6 uses
  %niter145 = phi i64 [ 0, %.lr.ph106.new ], [ %niter145.next.3, %bb.ah ]
  %i.dk = trunc nuw nsw i64 %indvars.iv119 to i32
  %.reass = mul i32 %factor.op.mul, %i.dk
  %i.dl = sext i32 %.reass to i64
  %i.dm = getelementptr inbounds i8, ptr %i.dg, i64 %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv119
  store ptr %i.dm, ptr %i.dn, align 16, !tbaa !162
  %indvars.iv.next120 = or disjoint i64 %indvars.iv119, 1 ; 2 uses
  %i.do = trunc nuw nsw i64 %indvars.iv.next120 to i32
  %.reass.1 = mul i32 %factor.op.mul, %i.do
  %i.dp = sext i32 %.reass.1 to i64
  %i.dq = getelementptr inbounds i8, ptr %i.dg, i64 %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next120
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !162
  %indvars.iv.next120.1 = or disjoint i64 %indvars.iv119, 2 ; 2 uses
  %i.ds = trunc nuw nsw i64 %indvars.iv.next120.1 to i32
  %.reass.2 = mul i32 %factor.op.mul, %i.ds
  %i.dt = sext i32 %.reass.2 to i64
  %i.du = getelementptr inbounds i8, ptr %i.dg, i64 %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next120.1
  store ptr %i.du, ptr %i.dv, align 16, !tbaa !162
  %indvars.iv.next120.2 = or disjoint i64 %indvars.iv119, 3 ; 2 uses
  %i.dw = trunc nuw nsw i64 %indvars.iv.next120.2 to i32
  %.reass.3 = mul i32 %factor.op.mul, %i.dw
  %i.dx = sext i32 %.reass.3 to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dg, i64 %i.dx
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next120.2
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !162
  %indvars.iv.next120.3 = add nuw nsw i64 %indvars.iv119, 4 ; 2 uses
  %niter145.next.3 = add i64 %niter145, 4         ; 2 uses
  %niter145.ncmp.3 = icmp eq i64 %niter145.next.3, %unroll_iter144
  br i1 %niter145.ncmp.3, label %.loopexit101.loopexit.unr-lcssa, label %bb.ah, !llvm.loop !404

.loopexit101.loopexit.unr-lcssa:                  ; preds = %bb.ah
  %lcmp.mod142.not = icmp eq i64 %xtraiter140, 0
  br i1 %lcmp.mod142.not, label %.loopexit101, label %.epil.preheader139

.epil.preheader139:                               ; preds = %.loopexit101.loopexit.unr-lcssa, %.lr.ph106
  %indvars.iv119.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next120.3, %.loopexit101.loopexit.unr-lcssa ]
  %lcmp.mod143 = icmp ne i64 %xtraiter140, 0
  call void @llvm.assume(i1 %lcmp.mod143)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader139
  %indvars.iv119.epil = phi i64 [ %indvars.iv119.epil.init, %.epil.preheader139 ], [ %indvars.iv.next120.epil, %bb.ai ] ; 3 uses
  %epil.iter141 = phi i64 [ 0, %.epil.preheader139 ], [ %epil.iter141.next, %bb.ai ]
  %i.ea = trunc nuw nsw i64 %indvars.iv119.epil to i32
  %.reass.epil = mul i32 %factor.op.mul, %i.ea
  %i.eb = sext i32 %.reass.epil to i64
  %i.ec = getelementptr inbounds i8, ptr %i.dg, i64 %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv119.epil
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !162
  %indvars.iv.next120.epil = add nuw nsw i64 %indvars.iv119.epil, 1
  %epil.iter141.next = add i64 %epil.iter141, 1   ; 2 uses
  %epil.iter141.cmp.not = icmp eq i64 %epil.iter141.next, %xtraiter140
  br i1 %epil.iter141.cmp.not, label %.loopexit101, label %bb.ai, !llvm.loop !405

.loopexit101:                                     ; preds = %.loopexit101.loopexit.unr-lcssa, %bb.ai, %.preheader100, %._crit_edge
  %i.ee = load i32, ptr %i.ah, align 8, !tbaa !164
  %i.ef = icmp slt i32 %i.ee, %3
  br i1 %i.ef, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.loopexit101
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 222
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph108, %bb.an
  %i.eh = invoke i32 @jpeg_read_scanlines(ptr noundef nonnull %i.u, ptr noundef %i.cl, i32 noundef 1)
          to label %bb.ak unwind label %.loopexit95

bb.ak:                                            ; preds = %bb.aj
  %.not67 = icmp eq i32 %i.eh, 1
  br i1 %.not67, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ei = load i8, ptr %i.eg, align 2, !tbaa !136, !range !141, !noundef !142
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %i.ek)
          to label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread unwind label %.loopexit.split-lp96

bb.an:                                            ; preds = %bb.al
  %i.el = load i32, ptr %i.ah, align 8, !tbaa !164
  %i.em = add nsw i32 %i.el, 1                    ; 2 uses
  store i32 %i.em, ptr %i.ah, align 8, !tbaa !164
  %i.en = icmp slt i32 %i.em, %3
  br i1 %i.en, label %bb.aj, label %._crit_edge109, !llvm.loop !406

._crit_edge109:                                   ; preds = %bb.an, %.loopexit101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i32 %3, ptr %i.c, align 4, !tbaa !45
  %i.eo = load i32, ptr %i.b, align 4, !tbaa !45  ; 3 uses
  %.not66110 = icmp slt i32 %3, %i.eo
  br i1 %.not66110, label %.lr.ph112, label %._crit_edge113

.lr.ph112:                                        ; preds = %._crit_edge109
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 222
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph112, %.critedge73
  %i.eq = phi i32 [ %i.eo, %.lr.ph112 ], [ %i.fc, %.critedge73 ]
  %i.er = phi i32 [ %3, %.lr.ph112 ], [ %i.fb, %.critedge73 ] ; 3 uses
  %i.es = sub nsw i32 %i.er, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.et
  %i.ev = sub nsw i32 %i.eq, %i.er
  %i.ew = invoke i32 @jpeg_read_scanlines(ptr noundef nonnull %i.u, ptr noundef %i.eu, i32 noundef %i.ev)
          to label %bb.ap unwind label %.loopexit ; 3 uses

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.ew, ptr %i.d, align 4, !tbaa !45
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ey = load i8, ptr %i.ep, align 2, !tbaa !136, !range !141, !noundef !142
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.ar, label %.critedge73

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.45, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.fa, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.at unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.ao
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %bb.aw

.critedge73:                                      ; preds = %bb.aq
  %i.fb = add nsw i32 %i.er, %i.ew                ; 3 uses
  store i32 %i.fb, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %i.fc = load i32, ptr %i.b, align 4, !tbaa !45  ; 3 uses
  %.not66 = icmp slt i32 %i.fb, %i.fc
  br i1 %.not66, label %bb.ao, label %._crit_edge113

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

._crit_edge113:                                   ; preds = %.critedge73, %._crit_edge109
  %i.fd = phi i32 [ %i.eo, %._crit_edge109 ], [ %i.fc, %.critedge73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  store i32 %i.fd, ptr %i.ah, align 8, !tbaa !164
  %i.fe = load i8, ptr %i.cm, align 1, !tbaa !163, !range !141, !noundef !142
  %i.ff = trunc nuw i8 %i.fe to i1
  %or.cond116 = and i1 %i.ck, %i.ff
  br i1 %or.cond116, label %.lr.ph115, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

.lr.ph115:                                        ; preds = %._crit_edge113
  %i.fg = load ptr, ptr %5, align 8, !tbaa !410
  %i.fh = load i64, ptr %i.z, align 8, !tbaa !411 ; 2 uses
  %wide.trip.count127 = zext nneg i32 %i.bz to i64
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph115, %bb.au
  %indvars.iv124 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next125, %bb.au ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv124
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !162
  %i.fk = load i32, ptr %i.ad, align 4, !tbaa !413 ; 2 uses
  %i.fl = shl nsw i32 %i.fk, 2
  %i.fm = sext i32 %i.fl to i64
  %i.fn = mul nsw i32 %i.fk, 3                    ; 2 uses
  %i.fo = trunc nuw nsw i64 %indvars.iv124 to i32
  %i.fp = mul nsw i32 %i.fn, %i.fo
  %i.fq = sext i32 %i.fp to i64
  %i.fr = sext i32 %i.fn to i64
  %.sroa.speculated6.i = call i64 @llvm.umin.i64(i64 %i.fh, i64 %i.fq) ; 2 uses
  %i.fs = sub i64 %i.fh, %.sroa.speculated6.i
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.fs, i64 %i.fr)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.sroa.speculated6.i
  call fastcc void @_ZN11OpenImageIO4v3_1L11cmyk_to_rgbIhhEEvNS0_4spanIKT_Lm18446744073709551615EEENS2_IT0_Lm18446744073709551615EEE(ptr %i.fj, i64 %i.fm, ptr %i.ft, i64 %.sroa.speculated.i)
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread, label %bb.au, !llvm.loop !407

_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread: ; preds = %bb.au, %.noexc, %bb.at, %bb.am, %._crit_edge113, %bb.ab, %bb.aa, %bb.w, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit79.thread, %bb.i, %bb.g, %bb.d, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit
  %.7 = phi i1 [ false, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit ], [ false, %bb.d ], [ false, %bb.i ], [ false, %bb.w ], [ false, %bb.ab ], [ false, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit79.thread ], [ false, %bb.g ], [ true, %bb.aa ], [ false, %bb.at ], [ false, %bb.am ], [ false, %.noexc ], [ true, %._crit_edge113 ], [ true, %bb.au ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.av

bb.av:                                            ; preds = %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #38
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread
  ret i1 %.7

bb.aw:                                            ; preds = %.loopexit95, %.loopexit.split-lp96, %bb.as, %bb.x, %bb.t, %bb.c
  %.pn70 = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.bj, %bb.x ], [ %.pn, %bb.t ], [ %lpad.phi, %bb.as ], [ %lpad.loopexit97, %.loopexit95 ], [ %lpad.loopexit.split-lp98, %.loopexit.split-lp96 ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit82 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #38
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit82: ; preds = %bb.aw
  resume { ptr, i32 } %.pn70
}

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18JpgInput21read_native_scanlinesEiiiiiPv(ptr noundef nonnull align 8 dereferenceable(1312) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, ptr noundef %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %7 = alloca %"class.OpenImageIO::v3_1::span.31", align 8 ; 3 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !45
  store i32 %4, ptr %i.b, align 4, !tbaa !45
  %.not = icmp slt i32 %3, %4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.42, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.c, i1 noundef zeroext true) #32
  %i.e = sub nsw i32 %4, %3
  %i.f = zext nneg i32 %i.e to i64
  %i.g = mul i64 %i.d, %i.f
  store ptr %6, ptr %7, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18JpgInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(1312) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.31") align 8 %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.119", align 16 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32, !noalias !418
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !418
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.b = load i32, ptr %2, align 4, !tbaa !45, !noalias !420
  store i32 %i.b, ptr %4, align 16, !tbaa !55, !alias.scope !419, !noalias !418
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !45, !noalias !420
  store i32 %i.d, ptr %i.c, align 16, !tbaa !55, !alias.scope !419, !noalias !418
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %1, i64 %i.a, i64 17, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !418
  %i.e = load ptr, ptr %6, align 8, !tbaa !133
  store ptr %i.e, ptr %5, align 8, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !54
  store i64 %i.h, ptr %i.f, align 8, !tbaa !139
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %6, align 8, !tbaa !133    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8, !tbaa !55
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %6, align 8, !tbaa !133    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.r = load i64, ptr %i.p, align 8, !tbaa !55
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.e = icmp eq i32 %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.j = icmp eq i32 %2, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %i.k
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput19valid_raw_span_sizeENS0_4spanIKSt4byteLm18446744073709551615EEERKNS0_9ImageSpecEiiiiiiii(ptr noundef nonnull align 8 dereferenceable(184), ptr, i64, ptr noundef nonnull align 8 dereferenceable(160), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
end_hunk_0
