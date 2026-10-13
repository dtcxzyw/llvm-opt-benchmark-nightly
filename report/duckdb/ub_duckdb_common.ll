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
  call void @_ZdlPv(ptr noundef %i.z) #60, !inline_history !5292
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
  switch i32 %i.b, label %bb.af [
    i32 16, label %bb.ae
    i32 15, label %bb.ab
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.n
    i32 10, label %bb.q
    i32 11, label %bb.t
    i32 12, label %bb.w
    i32 13, label %bb.z
    i32 14, label %bb.aa
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 16, !tbaa !254
  %i.d = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.c), !inline_history !5293
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 16, !tbaa !254
  %i.f = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.e), !inline_history !5294
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 16, !tbaa !254
  %i.h = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIxTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g), !inline_history !5295
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.e:                                             ; preds = %bb.a
  %i.i = load i64, ptr %1, align 16, !tbaa !254
  %i.j = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIyTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i), !inline_history !5296
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
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEEC2ERS5_S8_RKSA_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload, ptr noundef nonnull align 4 dereferenceable(17) %i.l), !inline_history !5297
  call void @_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tES4_EEEEvRKT_OT0_(ptr noundef nonnull align 4 dereferenceable(17) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %8), !inline_history !5297
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE13write_decimalIN6duckdb9hugeint_tEEEvT_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload), !inline_history !5298
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit: ; preds = %bb.g, %bb.h
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.i:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %1, align 16, !tbaa !231
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !231
  %i.m = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIN6duckdb10uhugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEESB_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload), !inline_history !5299
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
  %i.t = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.s), !inline_history !5300
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.k:                                             ; preds = %bb.j
  %i.u = trunc nuw i8 %i.n to i1                  ; 3 uses
  store i8 0, ptr %i.q, align 4, !tbaa !1729
  %i.v = select i1 %i.u, ptr @.str.2081, ptr @.str.2082 ; 6 uses
  %i.w = select i1 %i.u, i64 4, i64 5             ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1728 ; 3 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %bb.k
  %i.aa = zext nneg i32 %i.y to i64               ; 5 uses
  %i.ab = icmp samesign ugt i64 %i.w, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %.loopexit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !254
  %.not14.i.i.i.i = icmp slt i8 %i.ac, -64
  br i1 %.not14.i.i.i.i, label %.lr.ph.i.i.i.i.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = icmp eq i32 %i.y, 0
  br i1 %i.ad, label %.loopexit.i, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i, %bb.m
  %.1.i.i.i.i = phi i64 [ 1, %bb.m ], [ 0, %.lr.ph.i.i.i.i ] ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !254
  %.not14.i.i.i.i.1 = icmp slt i8 %10, -64
  br i1 %.not14.i.i.i.i.1, label %.lr.ph.i.i.i.i.2, label %.lr.ph.i.i.i.i.2.a

.lr.ph.i.i.i.i.2.a:                               ; preds = %.lr.ph.i.i.i.i.1
  %i.ae = add nuw nsw i64 %.1.i.i.i.i, 1
  %.not = icmp samesign ult i64 %.1.i.i.i.i, %i.aa
  br i1 %.not, label %.lr.ph.i.i.i.i.2, label %.loopexit.i

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2.a
  %.1.i.i.i.i.1 = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.2.a ], [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.1 ] ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !254
  %.not14.i.i.i.i.2 = icmp slt i8 %12, -64
  br i1 %.not14.i.i.i.i.2, label %.lr.ph.i.i.i.i.3, label %13

13:                                               ; preds = %.lr.ph.i.i.i.i.2
  %14 = add nsw i64 %.1.i.i.i.i.1, 1              ; 2 uses
  %15 = icmp ugt i64 %14, %i.aa
  br i1 %15, label %.loopexit.i, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2, %13
  %.1.i.i.i.i.2 = phi i64 [ %14, %13 ], [ %.1.i.i.i.i.1, %.lr.ph.i.i.i.i.2 ] ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !254
  %.not14.i.i.i.i.3 = icmp slt i8 %17, -64
  br i1 %.not14.i.i.i.i.3, label %21, label %18

18:                                               ; preds = %.lr.ph.i.i.i.i.3
  %19 = add nsw i64 %.1.i.i.i.i.2, 1              ; 2 uses
  %20 = icmp ugt i64 %19, %i.aa
  br i1 %20, label %.loopexit.i, label %21

21:                                               ; preds = %18, %.lr.ph.i.i.i.i.3
  %.1.i.i.i.i.3 = phi i64 [ %19, %18 ], [ %.1.i.i.i.i.2, %.lr.ph.i.i.i.i.3 ]
  br i1 %i.u, label %.loopexit.i, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %21
  %22 = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %23 = load i8, ptr %22, align 1, !tbaa !254
  %.not14.i.i.i.i.4 = icmp sge i8 %23, -64
  %i.af = add i64 %.1.i.i.i.i.3, 1
  %i.ag = icmp ugt i64 %i.af, %i.aa
  %or.cond = select i1 %.not14.i.i.i.i.4, i1 %i.ag, i1 false
  %spec.select = select i1 %or.cond, i64 4, i64 %i.w
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.4, %bb.m, %.lr.ph.i.i.i.i.2.a, %13, %18, %21, %bb.l, %bb.k
  %.0.i.i.i = phi i64 [ %i.w, %bb.k ], [ %i.w, %bb.l ], [ 0, %bb.m ], [ 3, %18 ], [ 1, %.lr.ph.i.i.i.i.2.a ], [ %spec.select, %.lr.ph.i.i.i.i.4 ], [ 2, %13 ], [ %i.w, %21 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  store ptr %i.v, ptr %7, align 8, !tbaa !1757
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.0.i.i.i, ptr %i.ah, align 8, !tbaa !1758
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %7), !inline_history !5300
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.n:                                             ; preds = %bb.a
  %i.ai = load i8, ptr %1, align 16, !tbaa !254   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1753 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i8, ptr %i.al, align 4, !tbaa !1729
  switch i8 %i.am, label %bb.o [
    i8 0, label %bb.p
    i8 99, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.an = sext i8 %i.ai to i32
  %i.ao = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.an), !inline_history !5301
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.p:                                             ; preds = %bb.n, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 9
  store i8 2, ptr %i.ap, align 1
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !1753
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  store ptr %0, ptr %6, align 8, !tbaa !1760
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.ai, ptr %i.ar, align 8, !tbaa !1762
  call void @_ZN10duckdb_fmt2v68internal17handle_char_specsIcNS1_18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE17char_spec_handlerEEEvPKNS0_18basic_format_specsIT_EEOT0_(ptr noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(9) %6), !inline_history !5302
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  %.sroa.0.0.copyload.i.i.i.i38 = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.q:                                             ; preds = %bb.a
  %i.as = load float, ptr %1, align 16, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1753 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.au, null
  br i1 %.not.i.i39, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %i.au, i64 20, i1 false), !tbaa.struct !1763
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.s:                                             ; preds = %bb.q
  store i32 0, ptr %5, align 8, !tbaa !1727
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.av, align 4, !tbaa !1728
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.aw, align 8, !tbaa !1729
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 0, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i48 32, ptr %i.ay, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 0, ptr %i.az, align 8, !tbaa !1730
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit: ; preds = %bb.r, %bb.s
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, float noundef %i.as, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %5)
  %.sroa.0.0.copyload.i.i.i.i40 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.t:                                             ; preds = %bb.a
  %i.ba = load double, ptr %1, align 16, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1753 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i41, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.bc, i64 20, i1 false), !tbaa.struct !1763
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.v:                                             ; preds = %bb.t
  store i32 0, ptr %4, align 8, !tbaa !1727
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.bd, align 4, !tbaa !1728
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.be, align 8, !tbaa !1729
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 0, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i48 32, ptr %i.bg, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.bh, align 8, !tbaa !1730
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit: ; preds = %bb.u, %bb.v
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, double noundef %i.ba, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %4)
  %.sroa.0.0.copyload.i.i.i.i42 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.w:                                             ; preds = %bb.a
  %i.bi = load x86_fp80, ptr %1, align 16, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1753 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i43, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.bk, i64 20, i1 false), !tbaa.struct !1763
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.y:                                             ; preds = %bb.w
  store i32 0, ptr %3, align 8, !tbaa !1727
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.bl, align 4, !tbaa !1728
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.bm, align 8, !tbaa !1729
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i48 32, ptr %i.bo, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.bp, align 8, !tbaa !1730
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit: ; preds = %bb.x, %bb.y
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, x86_fp80 noundef %i.bi, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %3)
  %.sroa.0.0.copyload.i.i.i.i44 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.z:                                             ; preds = %bb.a
  %i.bq = load ptr, ptr %1, align 16, !tbaa !254
  %i.br = tail call ptr @_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bq)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.aa:                                            ; preds = %bb.a
  %i.bs = load ptr, ptr %1, align 16, !tbaa !254
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !254
  %i.bv = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclENS0_17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.bs, i64 %i.bu)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.ab:                                            ; preds = %bb.a
  %i.bw = load ptr, ptr %1, align 16, !tbaa !254  ; 2 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.bw), !inline_history !5303
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1753 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 0, ptr %i.ca, align 4, !tbaa !1729
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1728 ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.cc, 5
  %narrow.i.i = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 4)
  %narrow4.i.i = select i1 %or.cond.i.i, i32 %narrow.i.i, i32 5
  %.0.i.i.i.i = zext nneg i32 %narrow4.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  store ptr @.str.2120, ptr %2, align 8, !tbaa !1757
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i.i.i.i, ptr %i.cd, align 8, !tbaa !1758
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !5304
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  %.sroa.0.0.copyload.i.i.i46 = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.ae:                                            ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 16, !tbaa !232
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !232
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !5307, !nonnull !290, !align !381 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  tail call void %.sroa.2.0.copyload(ptr noundef %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(20) %i.cg, ptr noundef nonnull align 8 dereferenceable(48) %i.cf), !inline_history !5305
  %.sroa.0.0.copyload.i.i.i47 = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.af:                                            ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i48 = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit: ; preds = %bb.ad, %bb.ac, %bb.p, %bb.o, %.loopexit.i, %.thread.i, %bb.af, %bb.ae, %bb.aa, %bb.z, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit, %bb.i, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.037.0 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i48, %bb.af ], [ %.sroa.0.0.copyload.i.i.i47, %bb.ae ], [ %.sroa.0.0.copyload.i.i.i.i38, %bb.p ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %.sroa.0.0.copyload.i.i.i.i, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit ], [ %i.m, %bb.i ], [ %i.bv, %bb.aa ], [ %i.t, %.thread.i ], [ %.sroa.0.0.copyload.i.i.i.i40, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit ], [ %.sroa.0.0.copyload.i.i.i.i42, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit ], [ %.sroa.0.0.copyload.i.i.i.i44, %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit ], [ %i.br, %bb.z ], [ %.sroa.0.0.copyload.i.i.i, %.loopexit.i ], [ %i.ao, %bb.o ], [ %i.bx, %bb.ac ], [ %.sroa.0.0.copyload.i.i.i46, %bb.ad ]
  ret ptr %.sroa.037.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE11parse_flagsERNS0_18basic_format_specsIcEERPKcSC_(ptr noundef nonnull align 4 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !230    ; 2 uses
  %.not12 = icmp eq ptr %i.a, %2
end_hunk_0
