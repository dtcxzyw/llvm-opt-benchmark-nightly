inline.NumInlined: 3125
inline.NumDeleted: 881
begin_hunk_0_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a
  %1 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v12::detail::file_print_buffer", align 8 ; 10 uses
  %7 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %8 = alloca %"class.fmt::v12::detail::file_print_buffer", align 8 ; 10 uses
  %9 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %10 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %11 = alloca %"struct.fmt::v12::detail::format_arg_store.117", align 16 ; 6 uses
  %12 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a

.lr.ph765:                                        ; preds = %.preheader730
  %i.kj = add nsw i32 %i.kf, 1
  %.sroa.5569.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %9, i64 4
  %.sroa.6570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.7571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 12
  %.sroa.8572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.kk = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.kl = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.km = getelementptr inbounds nuw i8, ptr %i.c, i64 3
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a
  %i.li = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.lk = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 4 uses
  %64 = insertelement <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>, i32 %i.kf, i64 0
  %65 = insertelement <4 x i32> %64, i32 %i.kj, i64 1
  br label %bb.ce

bb.cb:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit386
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a
  %i.lu = add i32 %.0154761, 1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %.0154761, ptr %9, align 8
  store i32 %i.lu, ptr %.sroa.5569.0..sroa_idx.a, align 4
  store i32 %.0153764, ptr %.sroa.6570.0..sroa_idx, align 8
  store i32 %i.lr, ptr %.sroa.7571.0..sroa_idx, align 4
  store <4 x i32> %65, ptr %.sroa.8572.0..sroa_idx, align 8
  %i.lv = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf10get_pixelsENS0_3ROIENS0_8TypeDescENS0_4spanISt4byteLm18446744073709551615EEEPvlll(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %9, i64 258, ptr nonnull %i.c, i64 6, ptr noundef nonnull %i.c, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
          to label %bb.cj unwind label %bb.cw     ; 0 uses

end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a

.lr.ph760:                                        ; preds = %.preheader733
  %i.pq = add nsw i32 %i.pm, 1
  %.sroa.5553.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.6554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.7555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.8556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.pr = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ps = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.pt = getelementptr inbounds nuw i8, ptr %55, i64 8
end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a
  %i.qe = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.qf = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.qg = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 4 uses
  %66 = insertelement <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>, i32 %i.pm, i64 0
  %67 = insertelement <4 x i32> %66, i32 %i.pq, i64 1
  br label %bb.dj

bb.dg:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit418
end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a
  %i.qq = add i32 %.0156756, 1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 %.0156756, ptr %7, align 8
  store i32 %i.qq, ptr %.sroa.5553.0..sroa_idx.a, align 4
  store i32 %.0155759, ptr %.sroa.6554.0..sroa_idx, align 8
  store i32 %i.qn, ptr %.sroa.7555.0..sroa_idx, align 4
  store <4 x i32> %67, ptr %.sroa.8556.0..sroa_idx, align 8
  %i.qr = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf10get_pixelsENS0_3ROIENS0_8TypeDescENS0_4spanISt4byteLm18446744073709551615EEEPvlll(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i64 258, ptr nonnull %i.d, i64 3, ptr noundef nonnull %i.d, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
          to label %bb.do unwind label %bb.du     ; 0 uses

end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a

.lr.ph755:                                        ; preds = %.preheader736
  %i.tk = add nsw i32 %i.tg, 1
  %.sroa.3532.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.4533.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5534.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.6535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.7536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %60, i64 8
  %.sroa.8537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.tl = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.tm = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 4 uses
  %68 = insertelement <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>, i32 %i.tg, i64 0
  %69 = insertelement <4 x i32> %68, i32 %i.tk, i64 1
  br label %bb.eg

bb.ed:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit451
end_hunk_7
begin_hunk_8_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a
._crit_edge:                                      ; preds = %bb.el, %.preheader735
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #33
  store ptr @.str.27, ptr %60, align 8, !tbaa !7
  store i64 7, ptr %.sroa.7536.0..sroa_idx, align 8, !tbaa !12
  invoke void @_ZNK11OpenImageIO4v3_17Sysutil4Term4ansiB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %59, ptr noundef nonnull align 1 dereferenceable(1) %44, ptr noundef nonnull dead_on_return %60)
          to label %.noexc237 unwind label %bb.eq

end_hunk_8
begin_hunk_9_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a
  %i.tx = add i32 %.0158753, 1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 %.0158753, ptr %5, align 8
  store i32 %i.tx, ptr %.sroa.3532.0..sroa_idx.a, align 4
  store i32 %.0157754, ptr %.sroa.4533.0..sroa_idx.a, align 8
  store i32 %i.tt, ptr %.sroa.5534.0..sroa_idx.a, align 4
  store <4 x i32> %69, ptr %.sroa.6535.0..sroa_idx, align 8
  %i.ty = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf10get_pixelsENS0_3ROIENS0_8TypeDescENS0_4spanISt4byteLm18446744073709551615EEEPvlll(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %5, i64 267, ptr nonnull %58, i64 16, ptr noundef nonnull %58, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
          to label %.noexc262 unwind label %bb.em ; 0 uses

end_hunk_9
begin_hunk_10_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a
.noexc237:                                        ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #33
  %i.vl = load ptr, ptr %59, align 8, !tbaa !32
  %i.vm = load i64, ptr %.sroa.8537.0..sroa_idx, align 8, !tbaa !34
  store ptr %i.vl, ptr %25, align 16, !tbaa !33
  store i64 %i.vm, ptr %i.tl, align 8, !tbaa !33
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.26, i64 3, i64 13, ptr nonnull %25)
          to label %bb.ep unwind label %bb.er

bb.ep:                                            ; preds = %.noexc237
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  %i.vn = load ptr, ptr %59, align 8, !tbaa !32   ; 2 uses
  %i.vo = icmp eq ptr %i.vn, %i.tm
  br i1 %i.vo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454: ; preds = %bb.ep
  %i.vp = load i64, ptr %i.tm, align 8, !tbaa !33
  %i.vq = add i64 %i.vp, 1
  call void @_ZdlPvm(ptr noundef %i.vn, i64 noundef %i.vq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456
end_hunk_10
begin_hunk_11_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a
  %i.vt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vu = load ptr, ptr %59, align 8, !tbaa !32   ; 2 uses
  %i.vv = icmp eq ptr %i.vu, %i.tm
  br i1 %i.vv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457: ; preds = %bb.er
  %i.vw = load i64, ptr %i.tm, align 8, !tbaa !33
  %i.vx = add i64 %i.vw, 1
  call void @_ZdlPvm(ptr noundef %i.vu, i64 noundef %i.vx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459
end_hunk_11
begin_hunk_12_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a

.lr.ph772:                                        ; preds = %.preheader727
  %i.we = add nsw i32 %i.wa, 1
  %.sroa.3.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5.0..sroa_idx515.a = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %63, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.wf = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.wg = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 4 uses
  %70 = insertelement <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>, i32 %i.wa, i64 0
  %71 = insertelement <4 x i32> %70, i32 %i.we, i64 1
  br label %bb.ey

bb.ev:                                            ; preds = %bb.es
end_hunk_12
begin_hunk_13_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a
._crit_edge770:                                   ; preds = %bb.fd, %.preheader726
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #33
  store ptr @.str.27, ptr %63, align 8, !tbaa !7
  store i64 7, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !12
  invoke void @_ZNK11OpenImageIO4v3_17Sysutil4Term4ansiB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %62, ptr noundef nonnull align 1 dereferenceable(1) %44, ptr noundef nonnull dead_on_return %63)
          to label %.noexc unwind label %bb.fi

end_hunk_13
begin_hunk_14_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a
  %i.wq = add i32 %.0149768, 1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 %.0149768, ptr %4, align 8
  store i32 %i.wq, ptr %.sroa.3.0..sroa_idx.a, align 4
  store i32 %.0151771, ptr %.sroa.4.0..sroa_idx.a, align 8
  store i32 %i.wn, ptr %.sroa.5.0..sroa_idx515.a, align 4
  store <4 x i32> %71, ptr %.sroa.6.0..sroa_idx, align 8
  %i.wr = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf10get_pixelsENS0_3ROIENS0_8TypeDescENS0_4spanISt4byteLm18446744073709551615EEEPvlll(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %4, i64 267, ptr nonnull %61, i64 16, ptr noundef nonnull %61, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
          to label %.noexc260 unwind label %bb.fe ; 0 uses

end_hunk_14
begin_hunk_15_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a
.noexc:                                           ; preds = %._crit_edge770
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #33
  %i.ya = load ptr, ptr %62, align 8, !tbaa !32
  %i.yb = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !34
  store ptr %i.ya, ptr %26, align 16, !tbaa !33
  store i64 %i.yb, ptr %i.wf, align 8, !tbaa !33
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %spec.select, ptr nonnull @.str.26, i64 3, i64 13, ptr nonnull %26)
          to label %bb.fh unwind label %bb.fj

bb.fh:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  %i.yc = load ptr, ptr %62, align 8, !tbaa !32   ; 2 uses
  %i.yd = icmp eq ptr %i.yc, %i.wg
  br i1 %i.yd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i477

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i477: ; preds = %bb.fh
  %i.ye = load i64, ptr %i.wg, align 8, !tbaa !33
  %i.yf = add i64 %i.ye, 1
  call void @_ZdlPvm(ptr noundef %i.yc, i64 noundef %i.yf) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479
end_hunk_15
begin_hunk_16_@_ZN11OpenImageIO4v3_18term_pvt10TermOutput6outputEv:bb.a
  %i.yi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yj = load ptr, ptr %62, align 8, !tbaa !32   ; 2 uses
  %i.yk = icmp eq ptr %i.yj, %i.wg
  br i1 %i.yk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i480

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i480: ; preds = %bb.fj
  %i.yl = load i64, ptr %i.wg, align 8, !tbaa !33
  %i.ym = add i64 %i.yl, 1
  call void @_ZdlPvm(ptr noundef %i.yj, i64 noundef %i.ym) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482
end_hunk_16
