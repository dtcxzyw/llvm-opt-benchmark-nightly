Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_string?download=true
inline.NumInlined: 11296
inline.NumDeleted: 2901
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZN10duckdb_fmt2v616visit_format_argINS0_8internal24printf_precision_handlerENS0_20basic_printf_contextISt20back_insert_iteratorINS2_6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE:bb.a
    i32 8, label %bb.h
    i32 9, label %bb.i
    i32 10, label %bb.j
    i32 11, label %bb.k
    i32 12, label %bb.l
    i32 13, label %bb.m
    i32 14, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 16, !tbaa !138
  %.sroa.speculated.i = tail call noundef i32 @llvm.smax.i32(i32 %i.c, i32 0)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 16, !tbaa !138
  %i.e = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.d)
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 16, !tbaa !138
  %i.g = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIxTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %i.f)
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 16, !tbaa !138
  %i.i = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIyTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %i.h)
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i64, ptr %1, align 16, !tbaa !156
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !156
  %i.j = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload)
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %1, align 16, !tbaa !156
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !156
  %i.k = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIN6duckdb10uhugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload)
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  %i.l = load i8, ptr %1, align 16, !tbaa !138, !range !202, !noundef !203
  %i.m = zext nneg i8 %i.l to i32
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.n = load i8, ptr %1, align 16, !tbaa !138
  %i.o = tail call i8 @llvm.smax.i8(i8 %i.n, i8 0)
  %.sroa.speculated.i37 = zext nneg i8 %i.o to i32
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  %i.p = load float, ptr %1, align 16, !tbaa !138
  %i.q = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIfTnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, float noundef %i.p)
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.r = load double, ptr %1, align 16, !tbaa !138
  %i.s = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIdTnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %i.r)
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.t = load x86_fp80, ptr %1, align 16, !tbaa !138
  %i.u = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIeTnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, x86_fp80 noundef %i.t)
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %1, align 16, !tbaa !138
  %i.w = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIPKcTnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.v)
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %1, align 16, !tbaa !138
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !138
  %i.aa = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclINS0_17basic_string_viewIcEETnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.x, i64 %i.z)
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %1, align 16, !tbaa !138
  %i.ac = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclIPKvTnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ab)
  br label %bb.r

bb.p:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 16, !tbaa !87
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !87
  %i.ad = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclINS0_16basic_format_argINS0_20basic_printf_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE6handleETnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  %i.ae = tail call noundef i32 @_ZN10duckdb_fmt2v68internal24printf_precision_handlerclINS0_9monostateETnNSt9enable_ifIXntsr11is_integralIT_EE5valueEiE4typeELi0EEEiS6_(ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.ae, %bb.q ], [ %i.ad, %bb.p ], [ %i.ac, %bb.o ], [ %.sroa.speculated.i, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.k, %bb.g ], [ %i.m, %bb.h ], [ %.sroa.speculated.i37, %bb.i ], [ %i.q, %bb.j ], [ %i.s, %bb.k ], [ %i.u, %bb.l ], [ %i.w, %bb.m ], [ %i.aa, %bb.n ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_20printf_arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(20) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 5 uses
  %3 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 8 ; 10 uses
  %4 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 8 ; 10 uses
  %5 = alloca %"struct.duckdb_fmt::v6::basic_format_specs", align 8 ; 10 uses
  %6 = alloca %"struct.duckdb_fmt::v6::internal::arg_formatter_base<duckdb_fmt::v6::buffer_range<char>>::char_spec_handler", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::int_writer.305", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !327
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
  %i.c = load i32, ptr %1, align 16, !tbaa !138
  %i.d = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.c)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 16, !tbaa !138
  %i.f = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIjTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.e)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 16, !tbaa !138
  %i.h = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIxTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.e:                                             ; preds = %bb.a
  %i.i = load i64, ptr %1, align 16, !tbaa !138
  %i.j = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIyTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.f:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i64, ptr %1, align 16, !tbaa !156 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !156 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !347  ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEEC2ERS5_S8_RKSA_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload, ptr noundef nonnull align 4 dereferenceable(17) %i.l)
  call void @_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tES4_EEEEvRKT_OT0_(ptr noundef nonnull align 4 dereferenceable(17) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE13write_decimalIN6duckdb9hugeint_tEEEvT_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES9_.exit: ; preds = %bb.g, %bb.h
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.i:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %1, align 16, !tbaa !156
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !156
  %i.m = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIN6duckdb10uhugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEESB_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.j:                                             ; preds = %bb.a
  %i.n = load i8, ptr %1, align 16, !tbaa !138, !range !202, !noundef !203 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !347  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !tbaa !323
  %.not.not.i = icmp eq i8 %i.r, 115
  br i1 %.not.not.i, label %bb.k, label %.thread.i

.thread.i:                                        ; preds = %bb.j
  %i.s = zext nneg i8 %i.n to i32
  %i.t = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.s)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.k:                                             ; preds = %bb.j
  %i.u = trunc nuw i8 %i.n to i1                  ; 3 uses
  store i8 0, ptr %i.q, align 4, !tbaa !323
  %i.v = select i1 %i.u, ptr @.str.76, ptr @.str.77 ; 2 uses
  %i.w = select i1 %i.u, i64 4, i64 5             ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !322  ; 3 uses
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %bb.k
  %i.aa = zext nneg i32 %i.y to i64               ; 5 uses
  %i.ab = icmp samesign ugt i64 %i.w, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %.loopexit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !138
  %.not14.i.i.i.i = icmp slt i8 %i.ac, -64
  br i1 %.not14.i.i.i.i, label %.lr.ph.i.i.i.i.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = icmp eq i32 %i.y, 0
  br i1 %i.ad, label %.loopexit.i, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %bb.m, %.lr.ph.i.i.i.i
  %.1.i.i.i.i = phi i64 [ 2, %bb.m ], [ 1, %.lr.ph.i.i.i.i ] ; 3 uses
  %9 = icmp samesign ugt i64 %.1.i.i.i.i, %i.aa
  br i1 %9, label %.loopexit.i, label %.lr.ph.i.i.i.i.2.a

.lr.ph.i.i.i.i.2.a:                               ; preds = %.lr.ph.i.i.i.i.1
  %i.ae = add nuw nsw i64 %.1.i.i.i.i, 1
  %.not = icmp samesign ult i64 %.1.i.i.i.i, %i.aa
  br i1 %.not, label %.lr.ph.i.i.i.i.3, label %.loopexit.i

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2.a
  %10 = add i64 %i.ae, 1                          ; 2 uses
  %11 = icmp ugt i64 %10, %i.aa                   ; 2 uses
  %brmerge = select i1 %11, i1 true, i1 %i.u
  %.mux = select i1 %11, i64 3, i64 %i.w
  br i1 %brmerge, label %.loopexit.i, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph.i.i.i.i.3
  %i.af = add i64 %10, 1
  %i.ag = icmp ugt i64 %i.af, %i.aa
  %spec.select = select i1 %i.ag, i64 4, i64 %i.w
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.4, %bb.m, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2.a, %.lr.ph.i.i.i.i.3, %bb.l, %bb.k
  %.0.i.i.i = phi i64 [ %i.w, %bb.k ], [ %i.w, %bb.l ], [ 0, %bb.m ], [ %.mux, %.lr.ph.i.i.i.i.3 ], [ 1, %.lr.ph.i.i.i.i.1 ], [ %spec.select, %.lr.ph.i.i.i.i.4 ], [ 2, %.lr.ph.i.i.i.i.2.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.v, ptr %7, align 8, !tbaa !351
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.0.i.i.i, ptr %i.ah, align 8, !tbaa !352
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.n:                                             ; preds = %bb.a
  %i.ai = load i8, ptr %1, align 16, !tbaa !138   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !347 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i8, ptr %i.al, align 4, !tbaa !323
  switch i8 %i.am, label %bb.o [
    i8 0, label %bb.p
    i8 99, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.an = sext i8 %i.ai to i32
  %i.ao = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.an)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.p:                                             ; preds = %bb.n, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 9
  store i8 2, ptr %i.ap, align 1
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %0, ptr %6, align 8, !tbaa !354
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.ai, ptr %i.ar, align 8, !tbaa !356
  call void @_ZN10duckdb_fmt2v68internal17handle_char_specsIcNS1_18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE17char_spec_handlerEEEvPKNS0_18basic_format_specsIT_EEOT0_(ptr noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.sroa.0.0.copyload.i.i.i.i38 = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.q:                                             ; preds = %bb.a
  %i.as = load float, ptr %1, align 16, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !347 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.au, null
  br i1 %.not.i.i39, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %i.au, i64 20, i1 false), !tbaa.struct !357
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.s:                                             ; preds = %bb.q
  store i32 0, ptr %5, align 8, !tbaa !321
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.av, align 4, !tbaa !322
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.aw, align 8, !tbaa !323
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 0, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i48 32, ptr %i.ay, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 0, ptr %i.az, align 8, !tbaa !324
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit: ; preds = %bb.r, %bb.s
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, float noundef %i.as, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %5)
  %.sroa.0.0.copyload.i.i.i.i40 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.t:                                             ; preds = %bb.a
  %i.ba = load double, ptr %1, align 16, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !347 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i41, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.bc, i64 20, i1 false), !tbaa.struct !357
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.v:                                             ; preds = %bb.t
  store i32 0, ptr %4, align 8, !tbaa !321
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.bd, align 4, !tbaa !322
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.be, align 8, !tbaa !323
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 0, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i48 32, ptr %i.bg, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.bh, align 8, !tbaa !324
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit: ; preds = %bb.u, %bb.v
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, double noundef %i.ba, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %4)
  %.sroa.0.0.copyload.i.i.i.i42 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.w:                                             ; preds = %bb.a
  %i.bi = load x86_fp80, ptr %1, align 16, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !347 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i43, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.bk, i64 20, i1 false), !tbaa.struct !357
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.y:                                             ; preds = %bb.w
  store i32 0, ptr %3, align 8, !tbaa !321
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.bl, align 4, !tbaa !322
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.bm, align 8, !tbaa !323
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i48 32, ptr %i.bo, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.bp, align 8, !tbaa !324
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit: ; preds = %bb.x, %bb.y
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, x86_fp80 noundef %i.bi, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %3)
  %.sroa.0.0.copyload.i.i.i.i44 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.z:                                             ; preds = %bb.a
  %i.bq = load ptr, ptr %1, align 16, !tbaa !138
  %i.br = tail call ptr @_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bq)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.aa:                                            ; preds = %bb.a
  %i.bs = load ptr, ptr %1, align 16, !tbaa !138
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !138
  %i.bv = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclENS0_17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.bs, i64 %i.bu)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.ab:                                            ; preds = %bb.a
  %i.bw = load ptr, ptr %1, align 16, !tbaa !138  ; 2 uses
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.bw)
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !347 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 0, ptr %i.ca, align 4, !tbaa !323
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !322 ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.cc, 5
  %narrow.i.i = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 4)
  %narrow4.i.i = select i1 %or.cond.i.i, i32 %narrow.i.i, i32 5
  %.0.i.i.i.i = zext nneg i32 %narrow4.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr @.str.86, ptr %2, align 8, !tbaa !351
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i.i.i.i, ptr %i.cd, align 8, !tbaa !352
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.sroa.0.0.copyload.i.i.i46 = load ptr, ptr %0, align 8
  br label %_ZN10duckdb_fmt2v620printf_arg_formatterINS0_12buffer_rangeIcEEEclIbTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS0_8internal6bufferIcEEES7_.exit

bb.ae:                                            ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 16, !tbaa !87
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !87
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2645, !nonnull !203, !align !217 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  tail call void %.sroa.2.0.copyload(ptr noundef %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(20) %i.cg, ptr noundef nonnull align 8 dereferenceable(48) %i.cf), !inline_history !2643
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
define linkonce_odr void @_ZN10duckdb_fmt2v620basic_printf_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE11parse_flagsERNS0_18basic_format_specsIcEERPKcSC_(ptr noundef nonnull align 4 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !199    ; 2 uses
  %.not12 = icmp eq ptr %i.a, %2
end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE:bb.a
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !156
  %i.m = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIN6duckdb10uhugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEESB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload)
  br label %bb.ab

bb.j:                                             ; preds = %bb.a
  %i.n = load i8, ptr %1, align 16, !tbaa !138, !range !202, !noundef !203
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %i.o)
  br label %bb.ab

bb.k:                                             ; preds = %bb.a
  %i.q = load i8, ptr %1, align 16, !tbaa !138
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %0, ptr %6, align 8, !tbaa !354
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.q, ptr %i.t, align 8, !tbaa !356
  call void @_ZN10duckdb_fmt2v68internal17handle_char_specsIcNS1_18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE17char_spec_handlerEEEvPKNS0_18basic_format_specsIT_EEOT0_(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.sroa.0.0.copyload.i.i.i38 = load ptr, ptr %0, align 8
  br label %bb.ab

bb.l:                                             ; preds = %bb.a
  %i.u = load float, ptr %1, align 16, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !347  ; 2 uses
  %.not.i39 = icmp eq ptr %i.w, null
  br i1 %.not.i39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %i.w, i64 20, i1 false), !tbaa.struct !357
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit

bb.n:                                             ; preds = %bb.l
  store i32 0, ptr %5, align 8, !tbaa !321
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.x, align 4, !tbaa !322
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.y, align 8, !tbaa !323
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 0, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i48 32, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 0, ptr %i.ab, align 8, !tbaa !324
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit: ; preds = %bb.m, %bb.n
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %i.u, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %5)
  %.sroa.0.0.copyload.i.i.i40 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.ab

bb.o:                                             ; preds = %bb.a
  %i.ac = load double, ptr %1, align 16, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !347 ; 2 uses
  %.not.i41 = icmp eq ptr %i.ae, null
  br i1 %.not.i41, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.ae, i64 20, i1 false), !tbaa.struct !357
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit

bb.q:                                             ; preds = %bb.o
  store i32 0, ptr %4, align 8, !tbaa !321
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.af, align 4, !tbaa !322
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !323
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 0, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i48 32, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.aj, align 8, !tbaa !324
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit: ; preds = %bb.p, %bb.q
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %i.ac, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %4)
  %.sroa.0.0.copyload.i.i.i42 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ab

bb.r:                                             ; preds = %bb.a
  %i.ak = load x86_fp80, ptr %1, align 16, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !347 ; 2 uses
  %.not.i43 = icmp eq ptr %i.am, null
  br i1 %.not.i43, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.am, i64 20, i1 false), !tbaa.struct !357
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit

bb.t:                                             ; preds = %bb.r
  store i32 0, ptr %3, align 8, !tbaa !321
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.an, align 4, !tbaa !322
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.ao, align 8, !tbaa !323
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i48 32, ptr %i.aq, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.ar, align 8, !tbaa !324
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit: ; preds = %bb.s, %bb.t
  tail call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, x86_fp80 noundef %i.ak, ptr noundef nonnull byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %3)
  %.sroa.0.0.copyload.i.i.i44 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.ab

bb.u:                                             ; preds = %bb.a
  %i.as = load ptr, ptr %1, align 16, !tbaa !138  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !347 ; 2 uses
  %.not.i45 = icmp eq ptr %i.au, null
  br i1 %.not.i45, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.as)
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKc.exit

bb.w:                                             ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !323
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %0, ptr %2, align 8, !tbaa !354
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !364
  call void @_ZN10duckdb_fmt2v68internal24handle_cstring_type_specIcNS1_18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE20cstring_spec_handlerEEEvT_OT0_(i8 noundef signext %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKc.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKc.exit: ; preds = %bb.v, %bb.w
  %.sroa.0.0.i = load ptr, ptr %0, align 8
  br label %bb.ab

bb.x:                                             ; preds = %bb.a
  %i.ay = load ptr, ptr %1, align 16, !tbaa !138
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !138
  %i.bb = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclENS0_17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ay, i64 %i.ba)
  br label %bb.ab

bb.y:                                             ; preds = %bb.a
  %i.bc = load ptr, ptr %1, align 16, !tbaa !138
  %i.bd = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.bc)
  br label %bb.ab

bb.z:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 16, !tbaa !87
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !87
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !598
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3482, !nonnull !203, !align !217
  tail call void %.sroa.2.0.copyload(ptr noundef %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(20) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.bh), !inline_history !3481
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !3482, !nonnull !203, !align !217
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bi, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i46 = load ptr, ptr %0, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKc.exit, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit, %bb.k, %bb.j, %bb.i, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEESB_.exit, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.037.0 = phi ptr [ %.sroa.0.0.copyload.i.i.i46, %bb.aa ], [ %.sroa.0.0.copyload.i.i, %bb.z ], [ %i.bd, %bb.y ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %.sroa.0.0.copyload.i.i.i, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEESB_.exit ], [ %i.m, %bb.i ], [ %i.p, %bb.j ], [ %.sroa.0.0.copyload.i.i.i38, %bb.k ], [ %.sroa.0.0.copyload.i.i.i40, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIfTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit ], [ %.sroa.0.0.copyload.i.i.i42, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit ], [ %.sroa.0.0.copyload.i.i.i44, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIeTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_.exit ], [ %.sroa.0.0.i, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEPKc.exit ], [ %i.bb, %bb.x ]
  ret ptr %.sroa.037.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !323
  %.not2 = icmp eq i8 %i.d, 0
  br i1 %.not2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i1 %1 to i32
  %i.f = tail call ptr @_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEEclIiTnNSt9enable_ifIXsr11is_integralIT_EE5valueEiE4typeELi0EEESt20back_insert_iteratorINS1_6bufferIcEEES9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.e)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.g = select i1 %1, ptr @.str.76, ptr @.str.77 ; 2 uses
  %i.h = select i1 %1, i64 4, i64 5               ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !322  ; 3 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.e, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %i.j to i64                ; 5 uses
  %i.m = icmp samesign ugt i64 %i.h, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.n = load i8, ptr %i.g, align 1, !tbaa !138
  %.not14.i.i.i = icmp slt i8 %i.n, -64
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.o = icmp eq i32 %i.j, 0
  br i1 %i.o, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.f, %.lr.ph.i.i.i
  %.1.i.i.i = phi i64 [ 2, %bb.f ], [ 1, %.lr.ph.i.i.i ] ; 3 uses
  %3 = icmp samesign ugt i64 %.1.i.i.i, %i.l
  br i1 %3, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i, label %.lr.ph.i.i.i.2.a

.lr.ph.i.i.i.2.a:                                 ; preds = %.lr.ph.i.i.i.1
  %i.p = add nuw nsw i64 %.1.i.i.i, 1
  %.not11 = icmp samesign ult i64 %.1.i.i.i, %i.l
  br i1 %.not11, label %.lr.ph.i.i.i.3, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2.a
  %4 = add i64 %i.p, 1                            ; 2 uses
  %5 = icmp ugt i64 %4, %i.l                      ; 2 uses
  %brmerge = or i1 %5, %1
  %.mux = select i1 %5, i64 3, i64 %i.h
  br i1 %brmerge, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.i.i.i.3
  %i.q = add i64 %4, 1
  %i.r = icmp ugt i64 %i.q, %i.l
  %spec.select = select i1 %i.r, i64 4, i64 %i.h
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i: ; preds = %.lr.ph.i.i.i.4, %bb.f, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2.a, %.lr.ph.i.i.i.3, %bb.e, %bb.d
  %.0.i.i = phi i64 [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %.mux, %.lr.ph.i.i.i.3 ], [ 0, %bb.f ], [ 1, %.lr.ph.i.i.i.1 ], [ %spec.select, %.lr.ph.i.i.i.4 ], [ 2, %.lr.ph.i.i.i.2.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.g, ptr %2, align 8, !tbaa !351
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i.i, ptr %i.s, align 8, !tbaa !352
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit

bb.g:                                             ; preds = %bb.a
  %i.t = select i1 %1, ptr @.str.76, ptr @.str.77 ; 2 uses
  %i.u = select i1 %1, i64 4, i64 5               ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !313  ; 2 uses
  %i.x = add i64 %i.w, %i.u                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !307
  %i.aa = icmp ugt i64 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !133
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.x), !inline_history !3483
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i: ; preds = %bb.h, %bb.g
  store i64 %i.x, ptr %i.v, align 8, !tbaa !313
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %6 = load ptr, ptr %i.ae, align 8, !tbaa !306
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 %i.w ; 5 uses
  %i.ag = load i8, ptr %i.t, align 1, !tbaa !138
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !138
  %7 = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @.str.76, i64 1), ptr getelementptr inbounds nuw (i8, ptr @.str.77, i64 1) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %7, %i.ad
  br i1 %.not.i.i.i.i, label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i
  %8 = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %9 = load i8, ptr %7, align 1, !tbaa !138
  store i8 %9, ptr %8, align 1, !tbaa !138
  %10 = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @.str.76, i64 2), ptr getelementptr inbounds nuw (i8, ptr @.str.77, i64 2) ; 2 uses
  %.not.i.i.i.i.1 = icmp eq ptr %10, %i.ad
  br i1 %.not.i.i.i.i.1, label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %11 = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %12 = load i8, ptr %10, align 1, !tbaa !138
  store i8 %12, ptr %11, align 1, !tbaa !138
  %13 = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @.str.76, i64 3), ptr getelementptr inbounds nuw (i8, ptr @.str.77, i64 3) ; 2 uses
  %.not.i.i.i.i.2 = icmp eq ptr %13, %i.ad
  br i1 %.not.i.i.i.i.2, label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %14 = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %15 = load i8, ptr %13, align 1, !tbaa !138
  store i8 %15, ptr %14, align 1, !tbaa !138
  %16 = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @.str.76, i64 4), ptr getelementptr inbounds nuw (i8, ptr @.str.77, i64 4) ; 2 uses
  %.not.i.i.i.i.3 = icmp eq ptr %16, %i.ad
  br i1 %.not.i.i.i.i.3, label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph.i.i.i.i.3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ai = load i8, ptr %16, align 1, !tbaa !138
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !138
  br label %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit

_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit: ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIcEEvNS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIcEE.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit, %bb.c
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ %.sroa.0.0.copyload.i.i, %_ZN10duckdb_fmt2v68internal18arg_formatter_baseINS0_12buffer_rangeIcEENS1_13error_handlerEE5writeEb.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEEEEiRPKT_SL_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !199    ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !138   ; 2 uses
  %i.e = icmp eq i8 %i.d, 48
  br i1 %i.e, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.f, ptr %0, align 8, !tbaa !199
  br label %bb.j

.preheader:                                       ; preds = %bb.a, %bb.d
  %i.g = phi i8 [ %i.o, %bb.d ], [ %i.d, %bb.a ]
  %i.h = phi ptr [ %i.n, %bb.d ], [ %i.c, %bb.a ]
  %.017 = phi i32 [ %i.m, %bb.d ], [ 0, %bb.a ]   ; 2 uses
  %i.i = icmp ugt i32 %.017, 214748364
  br i1 %i.i, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.j = mul nuw nsw i32 %.017, 10
  %i.k = sext i8 %i.g to i32
  %i.l = add nsw i32 %i.j, -48
  %i.m = add i32 %i.l, %i.k                       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !199
  %.not = icmp eq ptr %i.n, %1
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.n, align 1, !tbaa !138   ; 2 uses
  %i.p = add i8 %i.o, -48
  %or.cond = icmp ult i8 %i.p, 10
  br i1 %or.cond, label %.preheader, label %.critedge, !llvm.loop !3484

.critedge:                                        ; preds = %bb.d, %bb.c
  %i.q = icmp slt i32 %i.m, 0
  br i1 %i.q, label %.critedge.thread, label %bb.j

.critedge.thread:                                 ; preds = %.preheader, %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 17, ptr %i.b, align 8, !tbaa !156
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !184
  %i.t = load i64, ptr %i.b, align 8, !tbaa !156  ; 3 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.s, ptr noundef nonnull align 1 dereferenceable(17) @.str.60, i64 17, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !181
  %i.v = load ptr, ptr %4, align 8, !tbaa !184
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.x = load ptr, ptr %2, align 8, !tbaa !600, !nonnull !203, !align !361
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !180
  %i.z = load ptr, ptr %4, align 8, !tbaa !184    ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !181 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !156
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.critedge.thread
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc22 unwind label %bb.i   ; 2 uses

.noexc22:                                         ; preds = %.noexc.i.i
  store ptr %i.ac, ptr %3, align 8, !tbaa !184
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !156
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !138
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc22, %.critedge.thread
  %i.ae = phi ptr [ %i.ac, %.noexc22 ], [ %i.y, %.critedge.thread ] ; 2 uses
  switch i64 %i.aa, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.af = load i8, ptr %i.z, align 1, !tbaa !138
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !138
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.z, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !156 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !181
  %i.ai = load ptr, ptr %3, align 8, !tbaa !184
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull %3) #27
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  unreachable

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !184   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.y
  br i1 %i.am, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.al) #29
  br label %.body

bb.i:                                             ; preds = %.noexc.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ak, %bb.h ]
  %i.ao = load ptr, ptr %4, align 8, !tbaa !184   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.r
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  resume { ptr, i32 } %eh.lpad-body

bb.j:                                             ; preds = %.critedge, %bb.b
  %.018 = phi i32 [ 0, %bb.b ], [ %i.m, %.critedge ]
  ret i32 %.018
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argENS0_17basic_string_viewIcEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb_fmt::v6::basic_format_arg.355") align 16 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE4initERKNS0_17basic_format_argsIS8_EE(ptr noundef nonnull align 8 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3500)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !588, !noalias !3500 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !589, !noalias !3500 ; 2 uses
  %i.i = zext i32 %i.h to i64
  %.idx.i = mul nuw nsw i64 %i.i, 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not14.i = icmp eq i32 %i.h, 0
  br i1 %.not14.i, label %_ZNK10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE4findENS0_17basic_string_viewIcEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN10duckdb_fmt2v6eqENS0_17basic_string_viewIcEES2_.exit.thread.i
  %.015.i = phi ptr [ %i.n, %_ZN10duckdb_fmt2v6eqENS0_17basic_string_viewIcEES2_.exit.thread.i ], [ %i.f, %bb.a ] ; 4 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !156, !noalias !3500 ; 3 uses
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.22.0.copyload.i, i64 %3) ; 2 uses
  %i.k = icmp eq i64 %..i.i.i, 0
  br i1 %i.k, label %_ZN10duckdb_fmt2v6eqENS0_17basic_string_viewIcEES2_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %.lr.ph.i
  %.sroa.01.0.copyload.i = load ptr, ptr %.015.i, align 16, !tbaa !199, !noalias !3500
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload.i, ptr %2, i64 %..i.i.i), !noalias !3500
  %i.l = icmp eq i32 %bcmp.i.i, 0
  %i.m = icmp eq i64 %.sroa.22.0.copyload.i, %3
  %or.cond.i = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond.i, label %_ZNK10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE4findENS0_17basic_string_viewIcEE.exit, label %_ZN10duckdb_fmt2v6eqENS0_17basic_string_viewIcEES2_.exit.thread.i

_ZN10duckdb_fmt2v6eqENS0_17basic_string_viewIcEES2_.exit.i: ; preds = %.lr.ph.i
  %.old.i = icmp eq i64 %.sroa.22.0.copyload.i, %3
  br i1 %.old.i, label %_ZNK10duckdb_fmt2v68internal7arg_mapINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE4findENS0_17basic_string_viewIcEE.exit, label %_ZN10duckdb_fmt2v6eqENS0_17basic_string_viewIcEES2_.exit.thread.i

end_hunk_1
