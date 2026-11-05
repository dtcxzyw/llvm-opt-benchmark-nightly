Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common?download=true
inline.NumInlined: 29984
inline.NumDeleted: 10453
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 387
loop-unroll.NumUnrolled: 433
begin_hunk_0_@_ZN10duckdb_fmt2v616visit_format_argINS0_8internal24printf_precision_handlerENS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE:bb.a
  br i1 %.0.i47, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.0.i47, label %common.resume.sink.split, label %common.resume

bb.t:                                             ; preds = %bb.r
  unreachable

_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIyTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit: ; preds = %bb.o
  %i.ac = trunc nuw nsw i64 %i.u to i32
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.u:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i64, ptr %1, align 16, !tbaa !2989
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !2989
  %i.ad = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.v:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %1, align 16, !tbaa !2989
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !2989
  %i.ae = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIN6duckdb10uhugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.w:                                             ; preds = %bb.a
  %i.af = load i8, ptr %1, align 16, !tbaa !3012, !range !3047, !noundef !3048
  %i.ag = zext nneg i8 %i.af to i32
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.x:                                             ; preds = %bb.a
  %i.ah = load i8, ptr %1, align 16, !tbaa !3012
  %i.ai = tail call i8 @llvm.smax.i8(i8 %i.ah, i8 0)
  %.sroa.speculated.i50 = zext nneg i8 %i.ai to i32
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.y:                                             ; preds = %bb.a
  %i.aj = load float, ptr %1, align 16, !tbaa !3012
  %i.ak = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIfTnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, float noundef %i.aj)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.z:                                             ; preds = %bb.a
  %i.al = load double, ptr %1, align 16, !tbaa !3012
  %i.am = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIdTnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %i.al)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.aa:                                            ; preds = %bb.a
  %i.an = load x86_fp80, ptr %1, align 16, !tbaa !3012
  %i.ao = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIeTnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, x86_fp80 noundef %i.an)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.ab:                                            ; preds = %bb.a
  %i.ap = load ptr, ptr %1, align 16, !tbaa !3012
  %i.aq = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIPKcTnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ap)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.ac:                                            ; preds = %bb.a
  %i.ar = load ptr, ptr %1, align 16, !tbaa !3012
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !3012
  %i.au = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclINS0_17basic_string_viewIcEETnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.ar, i64 %i.at)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.ad:                                            ; preds = %bb.a
  %i.av = load ptr, ptr %1, align 16, !tbaa !3012
  %i.aw = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIPKvTnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.av)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.ae:                                            ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 16, !tbaa !2990
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !2990
  %i.ax = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclINS0_16basic_format_argINS0_20basic_printf_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE6handleETnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.af:                                            ; preds = %bb.a
  %i.ay = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclINS0_9monostateETnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS6_(ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit: ; preds = %bb.c, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIyTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit, %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIxTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit, %bb.b
  %.0 = phi i32 [ %i.ay, %bb.af ], [ %i.ax, %bb.ae ], [ %i.aw, %bb.ad ], [ %.sroa.speculated.i, %bb.b ], [ %i.au, %bb.ac ], [ %.sroa.speculated.i43, %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIxTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit ], [ %i.ac, %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIyTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit ], [ %i.ad, %bb.u ], [ %i.ae, %bb.v ], [ %i.ag, %bb.w ], [ %.sroa.speculated.i50, %bb.x ], [ %i.ak, %bb.y ], [ %i.am, %bb.z ], [ %i.ao, %bb.aa ], [ %i.aq, %bb.ab ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_20printf_arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(20) %1) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 !guid !10347 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 5 uses
  %3 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 8 ; 10 uses
  %4 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 8 ; 10 uses
  %5 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 8 ; 10 uses
  %6 = alloca %"struct.duckdb_fmt::v6::internal::arg_formatter_base<duckdb_fmt::v6::buffer_range<char>>::char_spec_handler", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::int_writer.2697", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !4491
  switch i32 %i.b, label %bb.ad [
    i32 16, label %bb.ac
    i32 15, label %bb.z
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.l
    i32 10, label %bb.o
    i32 11, label %bb.r
    i32 12, label %bb.u
    i32 13, label %bb.x
    i32 14, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 16, !tbaa !3012
  %i.d = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.c), !inline_history !10334
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 16, !tbaa !3012
  %i.f = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.e), !inline_history !10335
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 16, !tbaa !3012
  %i.h = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIxTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g), !inline_history !10336
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.e:                                             ; preds = %bb.a
  %i.i = load i64, ptr %1, align 16, !tbaa !3012
  %i.j = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIyTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i), !inline_history !10337
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.f:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i64, ptr %1, align 16, !tbaa !2989 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !2989 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !4511 ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEEC2ERS5_S8_RKSA_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload, ptr noundef nonnull align 4 dereferenceable(17) %i.l), !inline_history !10338
  call void @_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tES4_EEEEvRKT_OT0_(ptr noundef nonnull align 4 dereferenceable(17) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %8), !inline_history !10338
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE13write_decimalIN6duckdb9hugeint_tEEEvT_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload), !inline_history !10339
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit: ; preds = %bb.g, %bb.h
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.i:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %1, align 16, !tbaa !2989
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !2989
  %i.m = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIN6duckdb10uhugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEESB_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload), !inline_history !10340
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.j:                                             ; preds = %bb.a
  %i.n = load i8, ptr %1, align 16, !tbaa !3012, !range !3047, !noundef !3048 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !4511 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !tbaa !4487
  %.not.not.i = icmp eq i8 %i.r, 115
  br i1 %.not.not.i, label %bb.k, label %.thread.i

.thread.i:                                        ; preds = %bb.j
  %i.s = zext nneg i8 %i.n to i32
  %i.t = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.s), !inline_history !10341
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.k:                                             ; preds = %bb.j
  %i.u = trunc nuw i8 %i.n to i1                  ; 3 uses
  store i8 0, ptr %i.q, align 4, !tbaa !4487
  %i.v = select i1 %i.u, ptr @.str.2081, ptr @.str.2082
  %i.w = select i1 %i.u, i64 4, i64 5             ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4486 ; 7 uses
  %i.z = icmp sgt i32 %i.y, -1
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = icmp samesign ugt i64 %i.w, %i.aa
  %or.cond = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond, label %.lr.ph.i.i.i.i, label %.loopexit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k
  %i.ac = icmp eq i32 %i.y, 0
  br i1 %i.ac, label %.loopexit.i, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i
  %9 = icmp ult i32 %i.y, 2
  br i1 %9, label %.loopexit.i, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %10 = icmp ult i32 %i.y, 3
  br i1 %10, label %.loopexit.i, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %11 = icmp ult i32 %i.y, 4                      ; 2 uses
  %brmerge = select i1 %11, i1 true, i1 %i.u
  %.mux = select i1 %11, i64 3, i64 %i.w
  br i1 %brmerge, label %.loopexit.i, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph.i.i.i.i.3
  %12 = icmp ult i32 %i.y, 5
  %spec.select = select i1 %12, i64 4, i64 %i.w
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %bb.k
  %.0.i.i.i = phi i64 [ %i.w, %bb.k ], [ 0, %.lr.ph.i.i.i.i ], [ %.mux, %.lr.ph.i.i.i.i.3 ], [ 1, %.lr.ph.i.i.i.i.1 ], [ %spec.select, %.lr.ph.i.i.i.i.4 ], [ 2, %.lr.ph.i.i.i.i.2 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  store ptr %i.v, ptr %7, align 8, !tbaa !4515
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.0.i.i.i, ptr %i.ad, align 8, !tbaa !4516
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %7), !inline_history !10341
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.l:                                             ; preds = %bb.a
  %i.ae = load i8, ptr %1, align 16, !tbaa !3012  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !4511 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !4487
  switch i8 %i.ai, label %bb.m [
    i8 0, label %bb.n
    i8 99, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.aj = sext i8 %i.ae to i32
  %i.ak = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.aj), !inline_history !10342
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.n:                                             ; preds = %bb.l, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 9
  store i8 2, ptr %i.al, align 1
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !4511
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  store ptr %0, ptr %6, align 8, !tbaa !4518
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.ae, ptr %i.an, align 8, !tbaa !4520
  call void @_ZN10duckdb_fmt2v68internal17handle_char_specsIcNS1_18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE17char_spec_handlerEEEvPKNS0_18basic_format_specsIT_EEOT0_(ptr noundef %i.am, ptr noundef nonnull align 8 dereferenceable(9) %6), !inline_history !10343
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  %.sroa.0.0.copyload.i.i.i.i38 = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.o:                                             ; preds = %bb.a
  %i.ao = load float, ptr %1, align 16, !tbaa !3012
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !4511 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i39, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %i.aq, i64 20, i1 false), !tbaa.struct !4521
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.q:                                             ; preds = %bb.o
  store i32 0, ptr %5, align 8, !tbaa !4485
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.ar, align 4, !tbaa !4486
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.as, align 8, !tbaa !4487
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 0, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i48 32, ptr %i.au, align 2
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 0, ptr %i.av, align 8, !tbaa !4488
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit: ; preds = %bb.p, %bb.q
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, float noundef %i.ao, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %5)
  %.sroa.0.0.copyload.i.i.i.i40 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.r:                                             ; preds = %bb.a
  %i.aw = load double, ptr %1, align 16, !tbaa !3012
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !4511 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i41, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.ay, i64 20, i1 false), !tbaa.struct !4521
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.t:                                             ; preds = %bb.r
  store i32 0, ptr %4, align 8, !tbaa !4485
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.az, align 4, !tbaa !4486
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.ba, align 8, !tbaa !4487
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 0, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i48 32, ptr %i.bc, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.bd, align 8, !tbaa !4488
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit: ; preds = %bb.s, %bb.t
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, double noundef %i.aw, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %4)
  %.sroa.0.0.copyload.i.i.i.i42 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.u:                                             ; preds = %bb.a
  %i.be = load x86_fp80, ptr %1, align 16, !tbaa !3012
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !4511 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.bg, i64 20, i1 false), !tbaa.struct !4521
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.w:                                             ; preds = %bb.u
  store i32 0, ptr %3, align 8, !tbaa !4485
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.bh, align 4, !tbaa !4486
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.bi, align 8, !tbaa !4487
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i48 32, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.bl, align 8, !tbaa !4488
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit: ; preds = %bb.v, %bb.w
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, x86_fp80 noundef %i.be, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %3)
  %.sroa.0.0.copyload.i.i.i.i44 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.x:                                             ; preds = %bb.a
  %i.bm = load ptr, ptr %1, align 16, !tbaa !3012
  %i.bn = tail call ptr @_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bm)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.y:                                             ; preds = %bb.a
  %i.bo = load ptr, ptr %1, align 16, !tbaa !3012
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !3012
  %i.br = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclENS0_17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.bo, i64 %i.bq)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.z:                                             ; preds = %bb.a
  %i.bs = load ptr, ptr %1, align 16, !tbaa !3012 ; 2 uses
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.bs), !inline_history !10344
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.ab:                                            ; preds = %bb.z
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !4511 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 0, ptr %i.bw, align 4, !tbaa !4487
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4486 ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.by, 5
  %narrow.i.i = tail call i32 @llvm.umin.i32(i32 %i.by, i32 4)
  %narrow4.i.i = select i1 %or.cond.i.i, i32 %narrow.i.i, i32 5
  %.0.i.i.i.i = zext nneg i32 %narrow4.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  store ptr @.str.2120, ptr %2, align 8, !tbaa !4515
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i.i.i.i, ptr %i.bz, align 8, !tbaa !4516
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !10345
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  %.sroa.0.0.copyload.i.i.i46 = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.ac:                                            ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 16, !tbaa !2990
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !2990
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !10349, !nonnull !3048, !align !3139 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  tail call void %.sroa.2.0.copyload(ptr noundef %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(20) %i.cc, ptr noundef nonnull align 8 dereferenceable(48) %i.cb), !inline_history !10346
  %.sroa.0.0.copyload.i.i.i47 = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.ad:                                            ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i48 = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit: ; preds = %bb.ab, %bb.aa, %bb.n, %bb.m, %.loopexit.i, %.thread.i, %bb.ad, %bb.ac, %bb.y, %bb.x, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit, %bb.i, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.037.0 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i48, %bb.ad ], [ %.sroa.0.0.copyload.i.i.i47, %bb.ac ], [ %.sroa.0.0.copyload.i.i.i.i38, %bb.n ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %.sroa.0.0.copyload.i.i.i.i, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit ], [ %i.m, %bb.i ], [ %i.br, %bb.y ], [ %i.t, %.thread.i ], [ %.sroa.0.0.copyload.i.i.i.i40, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit ], [ %.sroa.0.0.copyload.i.i.i.i42, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit ], [ %.sroa.0.0.copyload.i.i.i.i44, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit ], [ %i.bn, %bb.x ], [ %.sroa.0.0.copyload.i.i.i, %.loopexit.i ], [ %i.ak, %bb.m ], [ %i.bt, %bb.aa ], [ %.sroa.0.0.copyload.i.i.i46, %bb.ab ]
  ret ptr %.sroa.037.0
}

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE:bb.a
  %.sroa.014.0.insert.insert17 = or disjoint i64 %.sroa.8.0.insert.shift22, %.sroa.014.0.insert.ext15
  %i.bu = invoke noundef i32 @_ZN10duckdb_fmt2v68internal12format_floatIeEEiT_iNS1_11float_specsERNS1_6bufferIcEE(x86_fp80 noundef %.0, i32 noundef %spec.select82, i64 %.sroa.014.0.insert.insert17, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.s unwind label %bb.u       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.bv = and i32 %.sroa.8.2, 33554432
  %.not76 = icmp eq i32 %i.bv, 0
  br i1 %.not76, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.03.0.copyload = load ptr, ptr %i.bw, align 8, !tbaa !2990
  %i.bx = invoke noundef signext i8 @_ZN10duckdb_fmt2v68internal18decimal_point_implIcEET_NS1_10locale_refE(ptr %.sroa.03.0.copyload)
          to label %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.v:                                             ; preds = %bb.s
  %i.bz = and i32 %.sroa.8.2, 16711680
  %i.ca = icmp eq i32 %i.bz, 3014656
  %. = select i1 %i.ca, i8 44, i8 46
  br label %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit

_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit: ; preds = %bb.t, %bb.v
  %.056 = phi i8 [ %., %bb.v ], [ %i.bx, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  %i.cb = load ptr, ptr %i.as, align 8, !tbaa !3735
  %i.cc = load i64, ptr %i.au, align 8, !tbaa !3741
  %i.cd = trunc i64 %i.cc to i32                  ; 2 uses
  %.sroa.014.0.insert.ext = zext i32 %spec.select82 to i64
  %.sroa.014.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift22, %.sroa.014.0.insert.ext
  store ptr %i.cb, ptr %7, align 8, !tbaa !4739
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !4740
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.bu, ptr %i.cf, align 4, !tbaa !4741
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.014.0.insert.insert, ptr %i.cg, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 %.056, ptr %i.ch, align 8, !tbaa !4742
  %i.ci = and i32 %.sroa.8.2, 255
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit
  %i.ck = icmp sgt i32 %spec.select82, 0
  %i.cl = select i1 %i.ck, i32 %spec.select82, i32 16
  %i.cm = add nsw i32 %i.bu, %i.cd                ; 2 uses
  %i.cn = icmp slt i32 %i.cm, -3
  %.not.i = icmp sgt i32 %i.cm, %i.cl
  %or.cond.i = or i1 %i.cn, %.not.i
  br i1 %or.cond.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.co = or disjoint i32 %i.bt, 1
  store i32 %i.co, ptr %.sroa.4.0..sroa_idx.i, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %_ZN10duckdb_fmt2v68internal13decimal_pointIcEET_NS1_10locale_refE.exit
  %i.cp = invoke i64 @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %7, i64 0)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cr = and i32 %.sroa.8.2, 65280
  %.not10.i = icmp ne i32 %i.cr, 0
  %i.cs = zext i1 %.not10.i to i64
  %i.ct = add i64 %i.cp, %i.cs
  store i64 %i.ct, ptr %i.cq, align 8, !tbaa !4743
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_12float_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(33) %7)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.p
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %5, align 8, !tbaa !2992
  %i.cu = load ptr, ptr %i.as, align 8, !tbaa !3735 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cu, %i.av
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.cu) #60, !inline_history !3742
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit, %bb.e
  ret void

bb.ae:                                            ; preds = %bb.y, %bb.z
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.u, %bb.q
  %.pn80 = phi { ptr, i32 } [ %i.bj, %bb.q ], [ %i.by, %bb.u ], [ %i.cv, %bb.ae ]
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %5, align 8, !tbaa !2992
  %i.cw = load ptr, ptr %i.as, align 8, !tbaa !3735 ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.cw, %i.av
  br i1 %.not.i.i92, label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdlPv(ptr noundef %i.cw) #60, !inline_history !3742
  br label %_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93

_ZN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEED2Ev.exit93: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  resume { ptr, i32 } %.pn80
}

declare noundef i32 @_ZN10duckdb_fmt2v68internal14snprintf_floatIeEEiT_iNS1_11float_specsERNS1_6bufferIcEE(x86_fp80 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #18

declare noundef i32 @_ZN10duckdb_fmt2v68internal12format_floatIeEEiT_iNS1_11float_specsERNS1_6bufferIcEE(x86_fp80 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !11325 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2121, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.o unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.010 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !2975   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br i1 %.010, label %bb.f, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br i1 %.010, label %bb.f, label %bb.n

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #58
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #58 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !4511 ; 3 uses
  %.not14 = icmp eq ptr %i.j, null
  br i1 %.not14, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4486 ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

bb.i:                                             ; preds = %bb.h
  %i.n = zext nneg i32 %i.l to i64                ; 2 uses
  %i.o = icmp ugt i64 %i.h, %i.n
  br i1 %i.o, label %.lr.ph.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.k
  %.0918.i.i = phi i64 [ %i.s, %bb.k ], [ 0, %bb.i ] ; 3 uses
  %.01017.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.0918.i.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !3012
  %.not14.i.i = icmp slt i8 %i.q, -64
  br i1 %.not14.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.r = add i64 %.01017.i.i, 1                   ; 2 uses
  %5 = icmp ugt i64 %i.r, %i.n
  br i1 %5, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.1.i.i = phi i64 [ %i.r, %bb.j ], [ %.01017.i.i, %.lr.ph.i.i ]
  %i.s = add nuw i64 %.0918.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.s, %i.h
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %.lr.ph.i.i, !llvm.loop !171

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.h, %bb.h ], [ %i.h, %bb.i ], [ %.0918.i.i, %bb.j ], [ %i.h, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  store ptr %1, ptr %2, align 8, !tbaa !4515
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i, ptr %i.t, align 8, !tbaa !4516
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit

bb.l:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !3741 ; 3 uses
  %i.w = add i64 %i.v, %i.h                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !3736
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %bb.m, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %.sroa.0.0.copyload.i.i.i, align 8, !tbaa !2992
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i, i64 noundef %i.w), !inline_history !172
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i: ; preds = %bb.m, %bb.l
  store i64 %i.w, ptr %i.u, align 8, !tbaa !3741
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %.not9.i.i.i = icmp samesign eq i64 %i.h, 0
  br i1 %.not9.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %iter.check

iter.check:                                       ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !3735 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.v ; 6 uses
  %min.iters.check = icmp ult i64 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ag = ptrtoaddr ptr %i.ae to i64
  %i.ah = add i64 %i.v, %i.ag
  %i.ai = sub i64 %i.a, %i.ah
  %diff.check = icmp ugt i64 %i.ai, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check28 = icmp ult i64 %i.h, 32
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %i.h, 24
  %n.vec = and i64 %i.h, -32                      ; 5 uses
  %i.ak = getelementptr i8, ptr %1, i64 %n.vec
  %i.al = getelementptr i8, ptr %i.af, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.af, i64 %index ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !3012
  %wide.load30 = load <16 x i8>, ptr %i.am, align 1, !tbaa !3012
  %i.an = getelementptr i8, ptr %next.gep29, i64 16
  store <16 x i8> %wide.load, ptr %next.gep29, align 1, !tbaa !3012
  store <16 x i8> %wide.load30, ptr %i.an, align 1, !tbaa !3012
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !11321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !3273

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %i.h, -8                     ; 4 uses
  %i.ap = getelementptr i8, ptr %1, i64 %n.vec31
  %i.aq = getelementptr i8, ptr %i.af, i64 %n.vec31
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %next.gep33.a = getelementptr i8, ptr %1, i64 %index32
  %next.gep34 = getelementptr i8, ptr %i.af, i64 %index32
  %wide.load35 = load <8 x i8>, ptr %next.gep33.a, align 1, !tbaa !3012
  store <8 x i8> %wide.load35, ptr %next.gep34, align 1, !tbaa !3012
  %index.next36 = add nuw i64 %index32, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next36, %n.vec31
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11322

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %i.h, %n.vec31
  br i1 %cmp.n37, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.ak, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ] ; 3 uses
  %.0810.i.i.i.ph = phi ptr [ %i.af, %iter.check ], [ %i.af, %vector.memcheck ], [ %i.al, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ] ; 2 uses
  %i.as = add i64 %i.h, %i.a                      ; 2 uses
  %.011.i.i.i.ph39 = ptrtoaddr ptr %.011.i.i.i.ph to i64 ; 2 uses
  %i.at = sub i64 %i.as, %.011.i.i.i.ph39
  %xtraiter = and i64 %i.at, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.011.i.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i.i.prol ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i.prol ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.au = load i8, ptr %.011.i.i.i.prol, align 1, !tbaa !3012
  store i8 %i.au, ptr %.0810.i.i.i.prol, align 1, !tbaa !3012
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i.i.i.prol, i64 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !11323

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.011.i.i.i.unr = phi ptr [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.prol ]
  %.0810.i.i.i.unr = phi ptr [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.i.prol ]
  %i.ax = sub i64 %.011.i.i.i.ph39, %i.as
  %i.ay = icmp ugt i64 %i.ax, -8
  br i1 %i.ay, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i ], [ %.011.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.0810.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i ], [ %.0810.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.az = load i8, ptr %.011.i.i.i, align 1, !tbaa !3012
  store i8 %i.az, ptr %.0810.i.i.i, align 1, !tbaa !3012
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 1
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !3012
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !3012
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 2
  %i.be = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 2
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !3012
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !3012
  %i.bg = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 3
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !3012
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !3012
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 4
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !3012
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !3012
  %i.bm = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 5
  %i.bn = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 5
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !3012
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !3012
  %i.bp = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 6
  %i.bq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 6
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !3012
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !3012
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 7
  %i.bt = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 7
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !3012
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !3012
  %i.bv = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 8
  %.not.i.i.i.7 = icmp eq ptr %i.bv, %i.ac
  br i1 %.not.i.i.i.7, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %.lr.ph.i.i.i, !llvm.loop !11324

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit
  ret void

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn18 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn19, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn18

bb.o:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal24handle_cstring_type_specIcNS1_18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE20cstring_spec_handlerEEEvT_OT0_(i8 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 !guid !11328 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::pointer_writer", align 8 ; 5 uses
  %3 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 4 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  switch i8 %0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit [
    i8 115, label %bb.b
    i8 0, label %bb.b
    i8 112, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
end_hunk_1
begin_hunk_2_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedIRNS5_14pointer_writerImEEEEvRKNS0_18basic_format_specsIcEEOT_:bb.a
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = zext i32 %i.a to i64                     ; 2 uses
  %.not39 = icmp ult i32 %i.d, %i.a
  %.sroa.0.0.copyload.i.i40 = load ptr, ptr %0, align 8 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i40, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !3741 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i40, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !3736 ; 2 uses
  br i1 %.not39, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.h, %i.e                       ; 3 uses
  %i.l = icmp ugt i64 %i.k, %i.j
  br i1 %i.l, label %bb.c, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %.sroa.0.0.copyload.i.i40, align 8, !tbaa !2992
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i40, i64 noundef %i.k), !inline_history !154
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit: ; preds = %bb.b, %bb.c
  store i64 %i.k, ptr %i.g, align 8, !tbaa !3741
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i40, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3735
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 48, ptr %i.q, align 1, !tbaa !3012
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i8 120, ptr %i.r, align 1, !tbaa !3012
  %i.t = load i64, ptr %2, align 8, !tbaa !4746
  %i.u = load i32, ptr %i.b, align 8, !tbaa !4747
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit
  %.09.i.i = phi i64 [ %i.t, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit ], [ %i.ab, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.w, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit ], [ %i.aa, %bb.d ]
  %i.x = and i64 %.09.i.i, 15
  %i.y = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE10hex_digitsE, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !3012
  %i.aa = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !3012
  %i.ab = lshr i64 %.09.i.i, 4                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIPcEEvOT_.exit, label %bb.d, !llvm.loop !162

bb.e:                                             ; preds = %bb.a
  %i.ac = add i64 %i.h, %i.f                      ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, %i.j
  br i1 %i.ad, label %bb.f, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %.sroa.0.0.copyload.i.i40, align 8, !tbaa !2992
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i40, i64 noundef %i.ac), !inline_history !154
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41: ; preds = %bb.e, %bb.f
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !3741
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i40, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !3735
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.h ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !3012 ; 4 uses
  %i.al = sub nuw nsw i64 %i.f, %i.e              ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = and i8 %i.an, 15
  switch i8 %i.ao, label %bb.k [
    i8 2, label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit
    i8 3, label %bb.h
  ]

_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit:              ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ai, i8 %i.ak, i64 %i.al, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 48, ptr %i.ap, align 1, !tbaa !3012
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i8 120, ptr %i.aq, align 1, !tbaa !3012
  %i.as = load i64, ptr %2, align 8, !tbaa !4746
  %i.at = load i32, ptr %i.b, align 8, !tbaa !4747
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit
  %.09.i.i43 = phi i64 [ %i.as, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit ], [ %i.ba, %bb.g ] ; 2 uses
  %.0.i.i44 = phi ptr [ %i.av, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit ], [ %i.az, %bb.g ]
  %i.aw = and i64 %.09.i.i43, 15
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE10hex_digitsE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !3012
  %i.az = getelementptr inbounds i8, ptr %.0.i.i44, i64 -1 ; 2 uses
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !3012
  %i.ba = lshr i64 %.09.i.i43, 4                  ; 2 uses
  %.not.i.i45 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i45, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIPcEEvOT_.exit, label %bb.g, !llvm.loop !162

bb.h:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41
  %i.bb = lshr i64 %i.al, 1                       ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit47, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bb
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ai, i8 %i.ak, i64 %i.bb, i1 false)
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit47

_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit47:            ; preds = %bb.h, %bb.i
  %.0.i.i46 = phi ptr [ %i.ai, %bb.h ], [ %i.bd, %bb.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i46, i64 1
  store i8 48, ptr %.0.i.i46, align 1, !tbaa !3012
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i46, i64 2
  store i8 120, ptr %i.be, align 1, !tbaa !3012
  %i.bg = load i64, ptr %2, align 8, !tbaa !4746
  %i.bh = load i32, ptr %i.b, align 8, !tbaa !4747
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.bi ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit47
  %.09.i.i48 = phi i64 [ %i.bg, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit47 ], [ %i.bo, %bb.j ] ; 2 uses
  %.0.i.i49 = phi ptr [ %i.bj, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit47 ], [ %i.bn, %bb.j ]
  %i.bk = and i64 %.09.i.i48, 15
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE10hex_digitsE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !3012
  %i.bn = getelementptr inbounds i8, ptr %.0.i.i49, i64 -1 ; 2 uses
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !3012
  %i.bo = lshr i64 %.09.i.i48, 4                  ; 2 uses
  %.not.i.i50 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i50, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIRPcEEvOT_.exit51, label %bb.j, !llvm.loop !162

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIRPcEEvOT_.exit51: ; preds = %bb.j
  %i.bp = sub nuw nsw i64 %i.al, %i.bb
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bj, i8 %i.ak, i64 %i.bp, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIPcEEvOT_.exit

bb.k:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store i8 48, ptr %i.ai, align 1, !tbaa !3012
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store i8 120, ptr %i.bq, align 1, !tbaa !3012
  %i.bs = load i64, ptr %2, align 8, !tbaa !4746
  %i.bt = load i32, ptr %i.b, align 8, !tbaa !4747
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.09.i.i54 = phi i64 [ %i.bs, %bb.k ], [ %i.ca, %bb.l ] ; 2 uses
  %.0.i.i55 = phi ptr [ %i.bv, %bb.k ], [ %i.bz, %bb.l ]
  %i.bw = and i64 %.09.i.i54, 15
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE10hex_digitsE, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !3012
  %i.bz = getelementptr inbounds i8, ptr %.0.i.i55, i64 -1 ; 2 uses
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !3012
  %i.ca = lshr i64 %.09.i.i54, 4                  ; 2 uses
  %.not.i.i56 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i56, label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIRPcEEvOT_.exit57, label %bb.l, !llvm.loop !162

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIRPcEEvOT_.exit57: ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bv, i8 %i.ak, i64 %i.al, i1 false)
  br label %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIPcEEvOT_.exit

_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIPcEEvOT_.exit: ; preds = %bb.d, %bb.g, %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIRPcEEvOT_.exit51, %_ZNK10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE14pointer_writerImEclIRPcEEvOT_.exit57
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclENS0_17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #1 comdat align 2 !guid !11335 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %3 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 5 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4511 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !4487
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @_ZN10duckdb_fmt2v68internal22check_string_type_specIcNS1_13error_handlerEEEvT_OT0_(i8 noundef signext %i.e, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !4511 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4486 ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = icmp ugt i64 %2, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %.0918.i.i = phi i64 [ %i.o, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %.01017.i.i = phi i64 [ %.1.i.i, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.0918.i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !3012
  %.not14.i.i = icmp slt i8 %i.m, -64
  br i1 %.not14.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.n = add i64 %.01017.i.i, 1                   ; 2 uses
  %5 = icmp ugt i64 %i.n, %i.j
  br i1 %5, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.1.i.i = phi i64 [ %i.n, %bb.d ], [ %.01017.i.i, %.lr.ph.i.i ]
  %i.o = add nuw i64 %.0918.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.o, %2
  br i1 %.not.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit, label %.lr.ph.i.i, !llvm.loop !171

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit: ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %.0.i = phi i64 [ %2, %bb.b ], [ %2, %bb.c ], [ %.0918.i.i, %bb.d ], [ %2, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  store ptr %1, ptr %3, align 8, !tbaa !4515
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.0.i, ptr %i.p, align 8, !tbaa !4516
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit

bb.f:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !3741 ; 3 uses
  %i.s = add i64 %i.r, %2                         ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !3736
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.g, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %.sroa.0.0.copyload.i.i.i, align 8, !tbaa !2992
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i, i64 noundef %i.s), !inline_history !172
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i: ; preds = %bb.g, %bb.f
  store i64 %i.s, ptr %i.q, align 8, !tbaa !3741
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %.not9.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not9.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %iter.check

iter.check:                                       ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !3735 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.r ; 6 uses
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ac = ptrtoaddr ptr %i.aa to i64
  %i.ad = add i64 %i.r, %i.ac
  %i.ae = sub i64 %i.a, %i.ad
  %diff.check = icmp ugt i64 %i.ae, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %2, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 5 uses
  %i.ag = getelementptr i8, ptr %1, i64 %n.vec
  %i.ah = getelementptr i8, ptr %i.ab, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !3012
  %wide.load14 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !3012
  %i.aj = getelementptr i8, ptr %next.gep13, i64 16
  store <16 x i8> %wide.load, ptr %next.gep13, align 1, !tbaa !3012
  store <16 x i8> %wide.load14, ptr %i.aj, align 1, !tbaa !3012
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !11331

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !3273

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %2, -8                       ; 4 uses
  %i.al = getelementptr i8, ptr %1, i64 %n.vec15
  %i.am = getelementptr i8, ptr %i.ab, i64 %n.vec15
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 3 uses
  %next.gep17.a = getelementptr i8, ptr %1, i64 %index16
  %next.gep18 = getelementptr i8, ptr %i.ab, i64 %index16
  %wide.load19 = load <8 x i8>, ptr %next.gep17.a, align 1, !tbaa !3012
  store <8 x i8> %wide.load19, ptr %next.gep18, align 1, !tbaa !3012
  %index.next20 = add nuw i64 %index16, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next20, %n.vec15
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11332

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %2, %n.vec15
  br i1 %cmp.n21, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ] ; 3 uses
  %.0810.i.i.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.ab, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ] ; 2 uses
  %i.ao = add i64 %2, %i.a                        ; 2 uses
  %.011.i.i.i.ph23 = ptrtoaddr ptr %.011.i.i.i.ph to i64 ; 2 uses
  %i.ap = sub i64 %i.ao, %.011.i.i.i.ph23
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.011.i.i.i.prol = phi ptr [ %i.ar, %.lr.ph.i.i.i.prol ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i.prol ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.aq = load i8, ptr %.011.i.i.i.prol, align 1, !tbaa !3012
  store i8 %i.aq, ptr %.0810.i.i.i.prol, align 1, !tbaa !3012
  %i.ar = getelementptr inbounds nuw i8, ptr %.011.i.i.i.prol, i64 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !11333

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.011.i.i.i.unr = phi ptr [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.i.prol ]
  %.0810.i.i.i.unr = phi ptr [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.as, %.lr.ph.i.i.i.prol ]
  %i.at = sub i64 %.011.i.i.i.ph23, %i.ao
  %i.au = icmp ugt i64 %i.at, -8
  br i1 %i.au, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i ], [ %.011.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.0810.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i ], [ %.0810.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.av = load i8, ptr %.011.i.i.i, align 1, !tbaa !3012
  store i8 %i.av, ptr %.0810.i.i.i, align 1, !tbaa !3012
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 1
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !3012
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !3012
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 2
  %i.ba = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 2
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !3012
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !3012
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 3
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !3012
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !3012
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 4
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !3012
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !3012
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 5
  %i.bj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 5
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !3012
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !3012
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 6
  %i.bm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 6
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !3012
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !3012
  %i.bo = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 7
  %i.bp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 7
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !3012
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !3012
  %i.br = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 8
  %.not.i.i.i.7 = icmp eq ptr %i.br, %i.y
  br i1 %.not.i.i.i.7, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit, label %.lr.ph.i.i.i, !llvm.loop !11334

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeENS0_17basic_string_viewIcEE.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal22check_string_type_specIcNS1_13error_handlerEEEvT_OT0_(i8 noundef signext %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 !guid !11336 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  switch i8 %0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit [
    i8 115, label %bb.h
    i8 0, label %bb.h
  ]

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !3086
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1, i8 noundef signext %0)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.2109, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
end_hunk_2
