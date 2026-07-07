inline.NumInlined: 3258
inline.NumDeleted: 981
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN3fmt3v126detail15write_codepointILm8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SH_cj:bb.a
bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.af, align 8, !tbaa !183
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bs), !inline_history !775
  %.pre.i.i.i.i.4 = load i64, ptr %i.ad, align 8, !tbaa !190 ; 2 uses
  %.pre2.i.i.i.i.4 = add i64 %.pre.i.i.i.i.4, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4: ; preds = %bb.n, %bb.o
  %.pre-phi.i.i.i.i.4 = phi i64 [ %i.bs, %bb.n ], [ %.pre2.i.i.i.i.4, %bb.o ]
  %i.bw = phi i64 [ %i.br, %bb.n ], [ %.pre.i.i.i.i.4, %bb.o ]
  %i.bx = load ptr, ptr %0, align 8, !tbaa !185
  store i64 %.pre-phi.i.i.i.i.4, ptr %i.ad, align 8, !tbaa !190
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 %i.bq, ptr %i.by, align 1, !tbaa !16
  %.07.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.bz = load i8, ptr %.07.i.ptr.5, align 1, !tbaa !16
  %.not.i.i11.5 = icmp eq i64 %.sroa.4.1, 5
  br i1 %.not.i.i11.5, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.p

bb.p:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4
  %i.ca = load i64, ptr %i.ad, align 8, !tbaa !190 ; 2 uses
  %i.cb = add i64 %i.ca, 1                        ; 3 uses
  %i.cc = load i64, ptr %i.ae, align 8, !tbaa !186
  %i.cd = icmp ugt i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.q, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

bb.q:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %i.af, align 8, !tbaa !183
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb), !inline_history !775
  %.pre.i.i.i.i.5 = load i64, ptr %i.ad, align 8, !tbaa !190 ; 2 uses
  %.pre2.i.i.i.i.5 = add i64 %.pre.i.i.i.i.5, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5: ; preds = %bb.p, %bb.q
  %.pre-phi.i.i.i.i.5 = phi i64 [ %i.cb, %bb.p ], [ %.pre2.i.i.i.i.5, %bb.q ]
  %i.cf = phi i64 [ %i.ca, %bb.p ], [ %.pre.i.i.i.i.5, %bb.q ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !185
  store i64 %.pre-phi.i.i.i.i.5, ptr %i.ad, align 8, !tbaa !190
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 %i.bz, ptr %i.ch, align 1, !tbaa !16
  %.07.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ci = load i8, ptr %.07.i.ptr.6, align 2, !tbaa !16
  %.not.i.i11.6 = icmp eq i64 %.sroa.4.1, 6
  br i1 %.not.i.i11.6, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.r

bb.r:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5
  %i.cj = load i64, ptr %i.ad, align 8, !tbaa !190 ; 2 uses
  %i.ck = add i64 %i.cj, 1                        ; 3 uses
  %i.cl = load i64, ptr %i.ae, align 8, !tbaa !186
  %i.cm = icmp ugt i64 %i.ck, %i.cl
  br i1 %i.cm, label %bb.s, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %i.af, align 8, !tbaa !183
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ck), !inline_history !775
  %.pre.i.i.i.i.6 = load i64, ptr %i.ad, align 8, !tbaa !190 ; 2 uses
  %.pre2.i.i.i.i.6 = add i64 %.pre.i.i.i.i.6, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6: ; preds = %bb.r, %bb.s
  %.pre-phi.i.i.i.i.6 = phi i64 [ %i.ck, %bb.r ], [ %.pre2.i.i.i.i.6, %bb.s ]
  %i.co = phi i64 [ %i.cj, %bb.r ], [ %.pre.i.i.i.i.6, %bb.s ]
  %i.cp = load ptr, ptr %0, align 8, !tbaa !185
  store i64 %.pre-phi.i.i.i.i.6, ptr %i.ad, align 8, !tbaa !190
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 %i.ci, ptr %i.cq, align 1, !tbaa !16
  %.07.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.cr = load i8, ptr %.07.i.ptr.7, align 1, !tbaa !16
  %.not.i.i11.7 = icmp eq i64 %.sroa.4.1, 7
  br i1 %.not.i.i11.7, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.t

bb.t:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %i.cs = load i64, ptr %i.ad, align 8, !tbaa !190 ; 2 uses
  %i.ct = add i64 %i.cs, 1                        ; 3 uses
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !186
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.u, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

bb.u:                                             ; preds = %bb.t
  %i.cw = load ptr, ptr %i.af, align 8, !tbaa !183
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ct), !inline_history !775
  %.pre.i.i.i.i.7 = load i64, ptr %i.ad, align 8, !tbaa !190 ; 2 uses
  %.pre2.i.i.i.i.7 = add i64 %.pre.i.i.i.i.7, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7:    ; preds = %bb.u, %bb.t
  %.pre-phi.i.i.i.i.7 = phi i64 [ %i.ct, %bb.t ], [ %.pre2.i.i.i.i.7, %bb.u ]
  %i.cx = phi i64 [ %i.cs, %bb.t ], [ %.pre.i.i.i.i.7, %bb.u ]
  %i.cy = load ptr, ptr %0, align 8, !tbaa !185
  store i64 %.pre-phi.i.i.i.i.7, ptr %i.ad, align 8, !tbaa !190
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 %i.cr, ptr %i.cz, align 1, !tbaa !16
  %i.da = add i64 %.sroa.4.1, -8
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7: ; preds = %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %.sroa.3.1.i.7 = phi i64 [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6 ], [ %i.da, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i ], [ 0, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.3.1.i.7, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #26

declare ptr @png_get_io_ptr(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @png_chunk_error(ptr noundef, ptr noundef) local_unnamed_addr #12

declare void @_ZNK11OpenImageIO4v3_110ImageInput8geterrorB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(184), i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_110ImageInput9has_errorEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

declare void @png_read_info(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_set_expand(ptr noundef) local_unnamed_addr #1

declare void @png_set_swap(ptr noundef) local_unnamed_addr #1

declare void @png_read_update_info(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @png_get_IHDR(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @png_get_channels(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @png_get_sRGB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

declare i32 @png_get_gAMA(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_127set_colorspace_rec709_gammaERNS0_9ImageSpecEf(ptr noundef nonnull align 8 dereferenceable(160), float noundef) local_unnamed_addr #1

declare i32 @png_get_valid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @png_get_iCCP(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_118decode_icc_profileENS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare i32 @png_get_tIME(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @png_get_text(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110decode_xmpENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_9ImageSpecE(ptr noundef dead_on_return, ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

declare i32 @png_get_x_offset_pixels(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @png_get_y_offset_pixels(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @png_get_pHYs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @png_get_pixel_aspect_ratio(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_17PNG_pvt14get_backgroundERP14png_struct_defRP12png_info_defRNS0_9ImageSpecERiPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !99
  %i.c = call ptr @png_set_longjmp_fn(ptr noundef %i.b, ptr noundef nonnull @longjmp, i64 noundef 200)
  %i.d = call i32 @_setjmp(ptr noundef %i.c) #32
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !99
  %i.f = load ptr, ptr %1, align 8, !tbaa !101
  %i.g = call i32 @png_get_valid(ptr noundef %i.e, ptr noundef %i.f, i32 noundef 32)
  %.not27 = icmp eq i32 %i.g, 0
  br i1 %.not27, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.h = load ptr, ptr %0, align 8, !tbaa !99
  %i.i = load ptr, ptr %1, align 8, !tbaa !101
  %i.j = call i32 @png_get_bKGD(ptr noundef %i.h, ptr noundef %i.i, ptr noundef nonnull %i.a) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.l = load i8, ptr %i.k, align 8, !tbaa !776
  %i.m = icmp eq i8 %i.l, 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 65
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 1
  %or.cond.i = select i1 %i.m, i1 %i.p, i1 false
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.r = load i32, ptr %i.q, align 4, !tbaa !171
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.d, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !777  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !779
  %i.v = uitofp i16 %i.u to float
  %i.w = fdiv float %i.v, 6.553500e+04
  store float %i.w, ptr %4, align 4, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %7 = load <2 x i16>, ptr %i.x, align 2, !tbaa !121
  %8 = uitofp <2 x i16> %7 to <2 x float>
  %9 = fdiv <2 x float> %8, splat (float 6.553500e+04) ; 2 uses
  %10 = extractelement <2 x float> %9, i64 0
  store float %10, ptr %5, align 4, !tbaa !132
  %11 = extractelement <2 x float> %9, i64 1
  store float %11, ptr %6, align 4, !tbaa !132
  br label %bb.k

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.c, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.z = load i32, ptr %i.y, align 4, !tbaa !105
  %i.aa = icmp slt i32 %i.z, 3
  br i1 %i.aa, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.ab = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 8
  br i1 %i.ac, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !777
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !781 ; 3 uses
  switch i32 %i.ab, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %.not28 = icmp ne i16 %i.af, 0
  %i.ag = uitofp i1 %.not28 to float              ; 3 uses
  store float %i.ag, ptr %6, align 4, !tbaa !132
  store float %i.ag, ptr %5, align 4, !tbaa !132
  store float %i.ag, ptr %4, align 4, !tbaa !132
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ah = uitofp i16 %i.af to float
  %i.ai = fdiv float %i.ah, 3.000000e+00          ; 3 uses
  store float %i.ai, ptr %6, align 4, !tbaa !132
  store float %i.ai, ptr %5, align 4, !tbaa !132
  store float %i.ai, ptr %4, align 4, !tbaa !132
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.aj = uitofp i16 %i.af to float
  %i.ak = fdiv float %i.aj, 1.500000e+01          ; 3 uses
  store float %i.ak, ptr %6, align 4, !tbaa !132
  store float %i.ak, ptr %5, align 4, !tbaa !132
  store float %i.ak, ptr %4, align 4, !tbaa !132
  br label %bb.k

bb.j:                                             ; preds = %bb.e, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !777 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !779
  %i.ao = uitofp i16 %i.an to float
  %i.ap = fdiv float %i.ao, 2.550000e+02
  store float %i.ap, ptr %4, align 4, !tbaa !132
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %12 = load <2 x i16>, ptr %i.aq, align 2, !tbaa !121
  %13 = uitofp <2 x i16> %12 to <2 x float>
  %14 = fdiv <2 x float> %13, splat (float 2.550000e+02) ; 2 uses
  %15 = extractelement <2 x float> %14, i64 0
  store float %15, ptr %5, align 4, !tbaa !132
  %16 = extractelement <2 x float> %14, i64 1
  store float %16, ptr %6, align 4, !tbaa !132
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.i, %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.k
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.k ], [ false, %bb.b ]
  ret i1 %.0
}

declare zeroext i8 @png_get_interlace_type(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @png_get_cICP(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv() local_unnamed_addr #1

declare void @_ZNK11OpenImageIO4v3_111ColorConfig20get_color_interop_idEPKi(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare i32 @png_get_eXIf_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111decode_exifENS0_4spanIKhLm18446744073709551615EEERNS0_9ImageSpecE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_112getattributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPv(ptr noundef dead_on_return, i64, ptr noundef) local_unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_13pvt12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_17Strutil15skip_whitespaceERNS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12parse_prefixERNS0_17basic_string_viewIcSt11char_traitsIcEEES5_b(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil9parse_intERNS0_17basic_string_viewIcSt11char_traitsIcEEERib(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isxdigit(i32 noundef) local_unnamed_addr #27

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12istarts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111decode_exifENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_9ImageSpecE(ptr noundef dead_on_return, ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #27

declare i32 @png_get_bKGD(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_read_image(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_read_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

declare void @_ZN11OpenImageIO4v3_110ImageInput13ioproxy_clearEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

declare void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { nounwind returns_twice }
attributes #33 = { noreturn }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !15, i64 8}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !15, i64 8, !5, i64 16}
!15 = !{!"long", !5, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !4, i64 248}
!18 = !{!"_ZTSN11OpenImageIO4v3_18ICOInputE", !19, i64 0, !14, i64 184, !48, i64 216, !50, i64 224, !4, i64 248, !4, i64 252, !4, i64 256, !4, i64 260, !4, i64 264, !54, i64 272, !55, i64 280, !4, i64 288, !4, i64 292, !56, i64 296}
!19 = !{!"_ZTSN11OpenImageIO4v3_110ImageInputE", !20, i64 8, !39, i64 168}
!20 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !21, i64 64, !22, i64 72, !27, i64 96, !4, i64 120, !4, i64 124, !32, i64 128, !33, i64 136}
!21 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!22 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !23, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !24, i64 0}
end_hunk_0
begin_hunk_1_@llvm.round.v2f32
!581 = !{!579, !11, i64 16}
!582 = !{!579, !300, i64 24}
!583 = !{!579, !540, i64 32}
!584 = !{!579, !300, i64 40}
!585 = distinct !{!585, !65, !140, !141}
!586 = distinct !{!586, !65, !140, !141}
!587 = distinct !{!587, !243}
!588 = distinct !{!588, !65, !140}
!589 = distinct !{null, null, null, null}
!590 = distinct !{null, null, null, null}
!591 = distinct !{!591, !65}
!592 = !{!226, !224, i64 0}
!593 = distinct !{!593, !65}
!594 = !{!595, !15, i64 8}
!595 = !{!"_ZTSN3fmt3v126detail15named_arg_valueIcEE", !596, i64 0, !15, i64 8}
!596 = !{!"p1 _ZTSN3fmt3v126detail14named_arg_infoIcEE", !12, i64 0}
!597 = !{!595, !596, i64 0}
!598 = distinct !{!598, !65}
!599 = !{!600, !11, i64 0}
!600 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIcEE", !11, i64 0, !4, i64 8}
!601 = !{!600, !4, i64 8}
!602 = !{!603, !605}
!603 = distinct !{!603, !604, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!604 = distinct !{!604, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!605 = distinct !{!605, !606, !"_ZNK3fmt3v127context3argEi: argument 0"}
!606 = distinct !{!606, !"_ZNK3fmt3v127context3argEi"}
!607 = distinct !{null}
!608 = !{!609}
!609 = distinct !{!609, !610, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!610 = distinct !{!610, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!611 = !{!612, !455, i64 0}
!612 = !{!"_ZTSN3fmt3v126detail13write_int_argIoEE", !455, i64 0, !4, i64 16}
!613 = !{!612, !4, i64 16}
!614 = !{!615}
!615 = distinct !{!615, !616, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!616 = distinct !{!616, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!617 = distinct !{!617, !65}
!618 = !{!619, !621}
!619 = distinct !{!619, !620, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!620 = distinct !{!620, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!621 = distinct !{!621, !622, !"_ZNK3fmt3v127context3argEi: argument 0"}
!622 = distinct !{!622, !"_ZNK3fmt3v127context3argEi"}
!623 = !{!624, !626}
!624 = distinct !{!624, !625, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE: argument 0"}
!625 = distinct !{!625, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE"}
!626 = distinct !{!626, !627, !"_ZNK3fmt3v127context3argENS0_17basic_string_viewIcEE: argument 0"}
!627 = distinct !{!627, !"_ZNK3fmt3v127context3argENS0_17basic_string_viewIcEE"}
!628 = !{!629, !629, i64 0}
!629 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !5, i64 0}
!630 = !{!631, !631, i64 0}
!631 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !12, i64 0}
!632 = !{!633, !633, i64 0}
!633 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !12, i64 0}
!634 = !{!635, !633, i64 8}
!635 = !{!"_ZTSN3fmt3v126detail20dynamic_spec_handlerIcEE", !631, i64 0, !633, i64 8, !12, i64 16}
!636 = !{!635, !12, i64 16}
!637 = !{!635, !631, i64 0}
!638 = distinct !{!638, !65}
!639 = distinct !{!639, !65}
!640 = distinct !{null, null, null, null}
!641 = distinct !{null, null, null, null, null}
!642 = distinct !{null, null, null}
!643 = distinct !{null, null, null, null}
!644 = distinct !{!644, !65}
!645 = distinct !{!645, !65}
!646 = distinct !{null, null, null, null}
!647 = distinct !{null, null, null, null, null}
!648 = distinct !{null, null, null}
!649 = distinct !{null, null, null, null}
!650 = distinct !{!650, !65}
!651 = distinct !{!651, !65}
!652 = distinct !{!652, !65, !140, !141}
!653 = distinct !{!653, !65, !140, !141}
!654 = distinct !{!654, !243}
!655 = distinct !{!655, !65, !140}
!656 = distinct !{!656, !65}
!657 = !{!658, !658, i64 0}
!658 = !{!"char32_t", !5, i64 0}
!659 = distinct !{!659, !65}
!660 = distinct !{!660, !65}
!661 = distinct !{!661, !65}
!662 = !{!663, !359, i64 0}
!663 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !359, i64 0, !364, i64 4, !4, i64 12, !5, i64 16, !4, i64 20, !5, i64 24, !4, i64 28}
!664 = !{!663, !4, i64 12}
!665 = !{!663, !5, i64 16}
!666 = !{!663, !4, i64 20}
!667 = !{!663, !5, i64 24}
!668 = !{!663, !4, i64 28}
!669 = distinct !{null, null, null, null}
!670 = distinct !{null}
!671 = distinct !{null}
!672 = distinct !{null, null, null, null}
!673 = !{!663, !4, i64 4}
!674 = !{!675, !12, i64 0}
!675 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !12, i64 0, !366, i64 8, !300, i64 16, !300, i64 24, !11, i64 32, !302, i64 40, !300, i64 48}
!676 = distinct !{null, null, null, null}
!677 = !{!675, !366, i64 8}
!678 = !{!675, !300, i64 16}
!679 = !{!675, !300, i64 24}
!680 = !{!675, !11, i64 32}
!681 = !{!675, !302, i64 40}
!682 = !{!675, !300, i64 48}
!683 = distinct !{null, null, null, null, null}
!684 = !{!685, !12, i64 0}
!685 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E1_", !12, i64 0, !372, i64 8, !11, i64 16, !300, i64 24, !366, i64 32, !300, i64 40}
!686 = !{!685, !372, i64 8}
!687 = !{!685, !11, i64 16}
!688 = !{!685, !300, i64 24}
!689 = !{!685, !366, i64 32}
!690 = !{!685, !300, i64 40}
!691 = !{!692, !359, i64 0}
!692 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !359, i64 0, !410, i64 8, !4, i64 24, !5, i64 28, !4, i64 32, !5, i64 36, !4, i64 40}
!693 = !{i64 0, i64 8, !100, i64 8, i64 4, !3}
!694 = !{!692, !4, i64 24}
!695 = !{!692, !5, i64 28}
!696 = !{!692, !4, i64 32}
!697 = !{!692, !5, i64 36}
!698 = !{!692, !4, i64 40}
!699 = distinct !{null, null, null, null}
!700 = distinct !{null}
!701 = distinct !{null}
!702 = distinct !{null, null, null, null}
!703 = !{!692, !15, i64 8}
!704 = !{!705, !12, i64 0}
!705 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !12, i64 0, !412, i64 8, !300, i64 16, !300, i64 24, !11, i64 32, !302, i64 40, !300, i64 48}
!706 = distinct !{null, null, null, null}
!707 = !{!705, !412, i64 8}
!708 = !{!705, !300, i64 16}
!709 = !{!705, !300, i64 24}
!710 = !{!705, !11, i64 32}
!711 = !{!705, !302, i64 40}
!712 = !{!705, !300, i64 48}
!713 = distinct !{null, null, null, null, null}
!714 = !{!715, !12, i64 0}
!715 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E1_", !12, i64 0, !372, i64 8, !11, i64 16, !300, i64 24, !412, i64 32, !300, i64 40}
!716 = !{!715, !372, i64 8}
!717 = !{!715, !11, i64 16}
!718 = !{!715, !300, i64 24}
!719 = !{!715, !412, i64 32}
!720 = !{!715, !300, i64 40}
!721 = distinct !{null, null, null}
!722 = distinct !{!722, !65, !140, !141}
!723 = distinct !{!723, !65, !140, !141}
!724 = distinct !{!724, !243}
!725 = distinct !{!725, !65, !140}
!726 = !{!727, !727, i64 0}
!727 = !{!"p1 long", !12, i64 0}
!728 = !{!729, !729, i64 0}
!729 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !12, i64 0}
!730 = !{!731, !32, i64 0}
!731 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEUlS4_E_", !32, i64 0, !15, i64 8, !198, i64 16}
!732 = !{!731, !15, i64 8}
!733 = !{i64 0, i64 8, !109, i64 8, i64 8, !100}
!734 = !{!735}
!735 = distinct !{!735, !736, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!736 = distinct !{!736, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!737 = distinct !{!737, !65, !140, !141}
!738 = distinct !{!738, !65, !140, !141}
!739 = distinct !{!739, !243}
!740 = distinct !{!740, !65, !140}
!741 = distinct !{!741, !65}
!742 = !{i64 0, i64 8, !371, i64 8, i64 8, !726, i64 16, i64 8, !726, i64 24, i64 8, !726, i64 32, i64 8, !728}
!743 = distinct !{!743, !65}
!744 = distinct !{!744, !65, !140, !141}
!745 = distinct !{!745, !65, !140, !141}
!746 = distinct !{!746, !243}
!747 = distinct !{!747, !65, !140}
!748 = distinct !{!748, !65}
!749 = distinct !{null, null, null}
!750 = distinct !{!750, !65, !140, !141}
!751 = distinct !{!751, !65, !140, !141}
!752 = distinct !{!752, !243}
!753 = distinct !{!753, !65, !140}
!754 = distinct !{!754, !65}
!755 = distinct !{!755, !65, !140, !141}
!756 = distinct !{!756, !65, !140, !141}
!757 = distinct !{!757, !243}
!758 = distinct !{!758, !65, !140}
!759 = distinct !{!759, !65}
!760 = !{!761, !372, i64 0}
!761 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEUljNSA_IcEEE_", !372, i64 0, !727, i64 8, !727, i64 16, !727, i64 24, !729, i64 32}
!762 = !{!763, !15, i64 288}
!763 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !184, i64 0, !5, i64 32, !15, i64 288}
!764 = !{!761, !727, i64 8}
!765 = !{!761, !727, i64 16}
!766 = !{!761, !727, i64 24}
!767 = !{!761, !729, i64 32}
!768 = distinct !{null, null, null, null}
!769 = !{!770}
!770 = distinct !{!770, !771, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!771 = distinct !{!771, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!772 = distinct !{null, null, null, null, null}
!773 = distinct !{!773, !65}
!774 = distinct !{!774, !65}
!775 = distinct !{null, null, null, null, null}
!776 = !{!21, !5, i64 0}
!777 = !{!778, !778, i64 0}
!778 = !{!"p1 _ZTS19png_color_16_struct", !12, i64 0}
!779 = !{!780, !49, i64 2}
!780 = !{!"_ZTS19png_color_16_struct", !5, i64 0, !49, i64 2, !49, i64 4, !49, i64 6, !49, i64 8}
!781 = !{!780, !49, i64 8}
end_hunk_1
