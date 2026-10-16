Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common?download=true
inline.NumInlined: 29986
inline.NumDeleted: 10454
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 387
loop-unroll.NumUnrolled: 433
begin_hunk_0_@_ZN10duckdb_fmt2v616visit_format_argINS0_8internal24printf_precision_handlerENS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE:bb.a
  br label %common.resume.sink.split

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i47 = phi i1 [ false, %bb.r ], [ true, %bb.q ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !217    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.z) #60, !inline_history !5305
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
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
  %.sroa.03.0.copyload = load i64, ptr %1, align 16, !tbaa !231
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !231
  %i.ad = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.v:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %1, align 16, !tbaa !231
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !231
  %i.ae = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIN6duckdb10uhugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.w:                                             ; preds = %bb.a
  %i.af = load i8, ptr %1, align 16, !tbaa !254, !range !289, !noundef !290
  %i.ag = zext nneg i8 %i.af to i32
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.x:                                             ; preds = %bb.a
  %i.ah = load i8, ptr %1, align 16, !tbaa !254
  %i.ai = tail call i8 @llvm.smax.i8(i8 %i.ah, i8 0)
  %.sroa.speculated.i50 = zext nneg i8 %i.ai to i32
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.y:                                             ; preds = %bb.a
  %i.aj = load float, ptr %1, align 16, !tbaa !254
  %i.ak = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIfTnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, float noundef %i.aj)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.z:                                             ; preds = %bb.a
  %i.al = load double, ptr %1, align 16, !tbaa !254
  %i.am = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIdTnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %i.al)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.aa:                                            ; preds = %bb.a
  %i.an = load x86_fp80, ptr %1, align 16, !tbaa !254
  %i.ao = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIeTnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, x86_fp80 noundef %i.an)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.ab:                                            ; preds = %bb.a
  %i.ap = load ptr, ptr %1, align 16, !tbaa !254
  %i.aq = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIPKcTnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ap)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.ac:                                            ; preds = %bb.a
  %i.ar = load ptr, ptr %1, align 16, !tbaa !254
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !254
  %i.au = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclINS0_17basic_string_viewIcEETnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.ar, i64 %i.at)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.ad:                                            ; preds = %bb.a
  %i.av = load ptr, ptr %1, align 16, !tbaa !254
  %i.aw = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIPKvTnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.av)
  br label %_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_.exit

bb.ae:                                            ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 16, !tbaa !232
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !232
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
define linkonce_odr ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_20printf_arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(20) %1) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 5 uses
  %3 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 8 ; 10 uses
  %4 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 8 ; 10 uses
  %5 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 8 ; 10 uses
  %6 = alloca %"struct.duckdb_fmt::v6::internal::arg_formatter_base<duckdb_fmt::v6::buffer_range<char>>::char_spec_handler", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::int_writer.2697", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !1733
  switch i32 %i.b, label %bb.ae [
    i32 16, label %bb.ad
    i32 15, label %bb.aa
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.m
    i32 10, label %bb.p
    i32 11, label %bb.s
    i32 12, label %bb.v
    i32 13, label %bb.y
    i32 14, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 16, !tbaa !254
  %i.d = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.c), !inline_history !5306
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 16, !tbaa !254
  %i.f = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.e), !inline_history !5307
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 16, !tbaa !254
  %i.h = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIxTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g), !inline_history !5308
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.e:                                             ; preds = %bb.a
  %i.i = load i64, ptr %1, align 16, !tbaa !254
  %i.j = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIyTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i), !inline_history !5309
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.f:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i64, ptr %1, align 16, !tbaa !231 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !231 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1753 ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEEC2ERS5_S8_RKSA_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload, ptr noundef nonnull align 4 dereferenceable(17) %i.l), !inline_history !5310
  call void @_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tES4_EEEEvRKT_OT0_(ptr noundef nonnull align 4 dereferenceable(17) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %8), !inline_history !5310
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE13write_decimalIN6duckdb9hugeint_tEEEvT_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload), !inline_history !5311
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit: ; preds = %bb.g, %bb.h
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.i:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %1, align 16, !tbaa !231
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !231
  %i.m = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIN6duckdb10uhugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEESB_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload), !inline_history !5312
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.j:                                             ; preds = %bb.a
  %i.n = load i8, ptr %1, align 16, !tbaa !254, !range !289, !noundef !290 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1753 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !tbaa !1729
  %.not.not.i = icmp eq i8 %i.r, 115
  br i1 %.not.not.i, label %bb.k, label %.thread.i

.thread.i:                                        ; preds = %bb.j
  %i.s = zext nneg i8 %i.n to i32
  %i.t = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.s), !inline_history !5313
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.k:                                             ; preds = %bb.j
  %i.u = trunc nuw i8 %i.n to i1                  ; 3 uses
  store i8 0, ptr %i.q, align 4, !tbaa !1729
  %i.v = select i1 %i.u, ptr @.str.2081, ptr @.str.2082
  %i.w = select i1 %i.u, i64 4, i64 5             ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1728 ; 7 uses
  %i.z = icmp sgt i32 %i.y, -1
  %9 = zext nneg i32 %i.y to i64
  %10 = icmp samesign ugt i64 %i.w, %9
  %or.cond = select i1 %i.z, i1 %10, i1 false
  br i1 %or.cond, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %bb.k
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %bb.l
  %11 = icmp ult i32 %i.y, 2
  br i1 %11, label %.loopexit.i, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %.not = icmp ult i32 %i.y, 3
  br i1 %.not, label %.loopexit.i, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %12 = icmp ult i32 %i.y, 4                      ; 2 uses
  %brmerge = select i1 %12, i1 true, i1 %i.u
  %.mux = select i1 %12, i64 3, i64 %i.w
  br i1 %brmerge, label %.loopexit.i, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph.i.i.i.i.3
  %13 = icmp ult i32 %i.y, 5
  %spec.select = select i1 %13, i64 4, i64 %i.w
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.4, %bb.l, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %bb.k
  %.0.i.i.i = phi i64 [ %i.w, %bb.k ], [ 0, %bb.l ], [ %.mux, %.lr.ph.i.i.i.i.3 ], [ 1, %.lr.ph.i.i.i.i.1 ], [ %spec.select, %.lr.ph.i.i.i.i.4 ], [ 2, %.lr.ph.i.i.i.i.2 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  store ptr %i.v, ptr %7, align 8, !tbaa !1757
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.0.i.i.i, ptr %i.ab, align 8, !tbaa !1758
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %7), !inline_history !5313
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.m:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %1, align 16, !tbaa !254   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1753 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !1729
  switch i8 %i.ag, label %bb.n [
    i8 0, label %bb.o
    i8 99, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ah = sext i8 %i.ac to i32
  %i.ai = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ah), !inline_history !5314
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.o:                                             ; preds = %bb.m, %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  store i8 2, ptr %i.aj, align 1
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !1753
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  store ptr %0, ptr %6, align 8, !tbaa !1760
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.ac, ptr %i.al, align 8, !tbaa !1762
  call void @_ZN10duckdb_fmt2v68internal17handle_char_specsIcNS1_18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE17char_spec_handlerEEEvPKNS0_18basic_format_specsIT_EEOT0_(ptr noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(9) %6), !inline_history !5315
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  %.sroa.0.0.copyload.i.i.i.i38 = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.p:                                             ; preds = %bb.a
  %i.am = load float, ptr %1, align 16, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1753 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i39, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %i.ao, i64 20, i1 false), !tbaa.struct !1763
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.r:                                             ; preds = %bb.p
  store i32 0, ptr %5, align 8, !tbaa !1727
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.ap, align 4, !tbaa !1728
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.aq, align 8, !tbaa !1729
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 0, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i48 32, ptr %i.as, align 2
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 0, ptr %i.at, align 8, !tbaa !1730
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit: ; preds = %bb.q, %bb.r
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, float noundef %i.am, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %5)
  %.sroa.0.0.copyload.i.i.i.i40 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.s:                                             ; preds = %bb.a
  %i.au = load double, ptr %1, align 16, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1753 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i41, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.aw, i64 20, i1 false), !tbaa.struct !1763
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.u:                                             ; preds = %bb.s
  store i32 0, ptr %4, align 8, !tbaa !1727
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.ax, align 4, !tbaa !1728
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.ay, align 8, !tbaa !1729
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 0, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i48 32, ptr %i.ba, align 2
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.bb, align 8, !tbaa !1730
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit: ; preds = %bb.t, %bb.u
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, double noundef %i.au, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %4)
  %.sroa.0.0.copyload.i.i.i.i42 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.v:                                             ; preds = %bb.a
  %i.bc = load x86_fp80, ptr %1, align 16, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1753 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.be, null
  br i1 %.not.i.i43, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.be, i64 20, i1 false), !tbaa.struct !1763
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.x:                                             ; preds = %bb.v
  store i32 0, ptr %3, align 8, !tbaa !1727
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.bf, align 4, !tbaa !1728
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.bg, align 8, !tbaa !1729
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i48 32, ptr %i.bi, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.bj, align 8, !tbaa !1730
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit: ; preds = %bb.w, %bb.x
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, x86_fp80 noundef %i.bc, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %3)
  %.sroa.0.0.copyload.i.i.i.i44 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.y:                                             ; preds = %bb.a
  %i.bk = load ptr, ptr %1, align 16, !tbaa !254
  %i.bl = tail call ptr @_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bk)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.z:                                             ; preds = %bb.a
  %i.bm = load ptr, ptr %1, align 16, !tbaa !254
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !254
  %i.bp = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclENS0_17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.bm, i64 %i.bo)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.aa:                                            ; preds = %bb.a
  %i.bq = load ptr, ptr %1, align 16, !tbaa !254  ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.bq), !inline_history !5316
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1753 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i8 0, ptr %i.bu, align 4, !tbaa !1729
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !1728 ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.bw, 5
  %narrow.i.i = tail call i32 @llvm.umin.i32(i32 %i.bw, i32 4)
  %narrow4.i.i = select i1 %or.cond.i.i, i32 %narrow.i.i, i32 5
  %.0.i.i.i.i = zext nneg i32 %narrow4.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  store ptr @.str.2120, ptr %2, align 8, !tbaa !1757
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i.i.i.i, ptr %i.bx, align 8, !tbaa !1758
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !5317
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  %.sroa.0.0.copyload.i.i.i46 = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.ad:                                            ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 16, !tbaa !232
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !232
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !5320, !nonnull !290, !align !381 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  tail call void %.sroa.2.0.copyload(ptr noundef %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(20) %i.ca, ptr noundef nonnull align 8 dereferenceable(48) %i.bz), !inline_history !5318
  %.sroa.0.0.copyload.i.i.i47 = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.ae:                                            ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i48 = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit: ; preds = %bb.ac, %bb.ab, %bb.o, %bb.n, %.loopexit.i, %.thread.i, %bb.ae, %bb.ad, %bb.z, %bb.y, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit, %bb.i, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.037.0 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i48, %bb.ae ], [ %.sroa.0.0.copyload.i.i.i47, %bb.ad ], [ %.sroa.0.0.copyload.i.i.i.i38, %bb.o ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %.sroa.0.0.copyload.i.i.i.i, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit ], [ %i.m, %bb.i ], [ %i.bp, %bb.z ], [ %i.t, %.thread.i ], [ %.sroa.0.0.copyload.i.i.i.i40, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit ], [ %.sroa.0.0.copyload.i.i.i.i42, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit ], [ %.sroa.0.0.copyload.i.i.i.i44, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit ], [ %i.bl, %bb.y ], [ %.sroa.0.0.copyload.i.i.i, %.loopexit.i ], [ %i.ai, %bb.n ], [ %i.br, %bb.ab ], [ %.sroa.0.0.copyload.i.i.i46, %bb.ac ]
  ret ptr %.sroa.037.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE11parse_flagsERNS0_18basic_format_specsIcEERPKcSC_(ptr noundef nonnull align 4 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !230    ; 2 uses
  %.not12 = icmp eq ptr %i.a, %2
end_hunk_0
